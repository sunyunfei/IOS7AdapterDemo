//
//  TableViewCell.m
//  IOS7AdapterDemo
//
//  Created by 孙云 on 15/10/15.
//  Copyright © 2015年 haidai. All rights reserved.
//

#import "TableViewCell.h"

@implementation TableViewCell

- (void)awakeFromNib {
   self.name.text = @"适配你学会了吗";
    self.intro.text = @"最近在做一个新的项目，因为现在的app都还是需要支持iOS7的。所以在适配这一块就会有一些问题，特别是表的单元格的适配。大家都知道从iOS8开始苹果给了很方便的适配属性这个我就不再这里讨论了，现在只说的是iOS7的适配。";
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
