struct Struct_1 {
    a: vec3<f32>,
    b: vec3<u32>,
    c: u32,
    d: i32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: bool,
    c: i32,
    d: vec2<bool>,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec3<i32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec4<bool>(false, true, false, true), true, -1i, vec2<bool>(false, false), vec3<u32>(0u, 0u, 13501u));

var<private> global1: bool;

var<private> global2: array<bool, 30> = array<bool, 30>(false, true, false, false, true, true, false, false, true, false, true, false, true, false, true, true, true, true, true, false, true, false, false, true, false, false, true, true, false, true);

var<private> global3: f32 = -349f;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> u32 {
    global3 = -976f;
    let var_0 = false | !select((4294967295u | global0.e.x) < (global0.e.x & 0u), true, !any(vec4<bool>(false, global0.d.x, true, global2[_wgslsmith_index_u32(70367u, 30u)])));
    var var_1 = _wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(~_wgslsmith_mod_vec4_u32(vec4<u32>(global0.e.x, 57724u, global0.e.x, global0.e.x), select(vec4<u32>(global0.e.x, 9346u, 1u, global0.e.x), vec4<u32>(global0.e.x, 99116u, global0.e.x, 44803u), global0.a)), _wgslsmith_mult_vec4_u32(~_wgslsmith_add_vec4_u32(vec4<u32>(63669u, global0.e.x, global0.e.x, global0.e.x), vec4<u32>(global0.e.x, 4294967295u, global0.e.x, 1u)), ~vec4<u32>(39507u, 13393u, global0.e.x, global0.e.x))), vec4<u32>(select(reverseBits(46726u), global0.e.x, any(select(vec4<bool>(var_0, false, global2[_wgslsmith_index_u32(46215u, 30u)], global0.a.x), vec4<bool>(true, true, global0.b, true), global0.a))), global0.e.x, global0.e.x, _wgslsmith_add_u32(abs(select(global0.e.x, global0.e.x, global0.a.x)), _wgslsmith_dot_vec4_u32(vec4<u32>(global0.e.x, global0.e.x, 57545u, 39586u), ~vec4<u32>(global0.e.x, 1u, 4294967295u, global0.e.x)))));
    global1 = _wgslsmith_f_op_f32(trunc(513f)) <= -1246f;
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(-736f + -810f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1562f, -870f)) + _wgslsmith_div_f32(-1987f, 1279f)), _wgslsmith_f_op_f32(f32(-1f) * -661f)))), reverseBits(vec3<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.x, global0.e.x, 5455u), var_1.xwy), global0.e.x, global0.e.x ^ 1u)), ~max(25909u, _wgslsmith_sub_u32(var_1.x, _wgslsmith_mod_u32(71593u, global0.e.x))), -656i);
    return 0u | var_2.b.x;
}

fn func_4(arg_0: vec2<bool>, arg_1: f32, arg_2: Struct_2) -> f32 {
    var var_0 = 10314u;
    let var_1 = arg_2;
    let var_2 = 0i;
    let var_3 = _wgslsmith_f_op_f32(ceil(1000f));
    global3 = arg_1;
    return arg_1;
}

fn func_2(arg_0: Struct_2) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(!arg_0.a.xy, _wgslsmith_f_op_f32(f32(-1f) * -621f), Struct_2(arg_0.a, true, ~arg_0.c, arg_0.d, vec3<u32>(arg_0.e.x, func_3(), 37771u)))));
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1056f, -143f, 1673f)), _wgslsmith_div_vec3_f32(vec3<f32>(1641f, 1000f, -1082f), vec3<f32>(285f, 712f, 1000f)))))))), _wgslsmith_mod_vec3_u32(~min(~arg_0.e, global0.e), firstLeadingBit(vec3<u32>(_wgslsmith_dot_vec3_u32(global0.e, arg_0.e), _wgslsmith_mult_u32(58898u, 27767u), ~91615u))), global0.e.x, -abs(min(firstTrailingBit(-2147483647i), reverseBits(u_input.a.x))));
    var var_2 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -518f), _wgslsmith_f_op_f32(floor(var_1.a.x)), _wgslsmith_f_op_f32(var_1.a.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1285f, 552f)) - _wgslsmith_f_op_f32(f32(-1f) * -1108f)))), max(vec3<u32>(max(select(68485u, 35465u, global0.b), 0u), ~(~25860u), _wgslsmith_dot_vec4_u32(abs(vec4<u32>(56177u, var_1.b.x, 20328u, 36296u)), ~vec4<u32>(global0.e.x, var_1.c, 4294967295u, 64913u))), arg_0.e), 23986u, u_input.a.x);
    var var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1000f, -883f, var_1.a.x))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(var_2.a + var_2.a), vec3<f32>(var_2.a.x, var_1.a.x, var_1.a.x))))), _wgslsmith_add_vec3_u32(~(reverseBits(var_2.b) << (_wgslsmith_clamp_vec3_u32(var_2.b, arg_0.e, var_2.b) % vec3<u32>(32u))), _wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(32277u, global0.e.x, 5924u), vec3<u32>(45533u, var_2.c, var_1.c)), var_1.b & vec3<u32>(62735u, 1u, 1u)) << (~_wgslsmith_mult_vec3_u32(var_2.b, var_2.b) % vec3<u32>(32u))), 4294967295u, 0i);
    let var_4 = min(u_input.a.wx, ~(-firstLeadingBit(vec2<i32>(global0.c, 0i)) >> (countOneBits(firstTrailingBit(vec2<u32>(arg_0.e.x, var_2.c))) % vec2<u32>(32u))));
    return Struct_2(select(vec4<bool>(all(vec2<bool>(true, global0.a.x)), true, var_3.a.x <= _wgslsmith_f_op_f32(-821f - 265f), false), global0.a, !(!(global0.a.x && true))), (!(!arg_0.a.x) == (all(global0.a.yxy) | arg_0.a.x)) == true, 12705i, !(!select(vec2<bool>(false, global0.a.x), select(vec2<bool>(global2[_wgslsmith_index_u32(20831u, 30u)], global2[_wgslsmith_index_u32(4294967295u, 30u)]), vec2<bool>(global2[_wgslsmith_index_u32(0u, 30u)], global2[_wgslsmith_index_u32(90349u, 30u)]), arg_0.a.yy), select(vec2<bool>(arg_0.a.x, global2[_wgslsmith_index_u32(var_1.b.x, 30u)]), arg_0.a.ww, arg_0.a.x))), _wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(var_2.b, vec3<u32>(global0.e.x, 1u, 3449u)), vec3<u32>(1323u, global0.e.x, 14367u)), var_3.c << (arg_0.e.x % 32u), _wgslsmith_dot_vec2_u32(var_1.b.xz, var_3.b.yz)), select(arg_0.e << (vec3<u32>(var_2.c, var_1.b.x, 4294967295u) % vec3<u32>(32u)), _wgslsmith_mult_vec3_u32(vec3<u32>(var_3.b.x, 4294967295u, var_3.b.x), vec3<u32>(21116u, 14042u, 0u)), select(vec3<bool>(global0.a.x, global0.b, global0.a.x), arg_0.a.wzz, false)) | vec3<u32>(var_3.c, abs(var_1.c), 33918u)));
}

fn func_5(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: Struct_2, arg_3: Struct_2) -> f32 {
    let var_0 = 22805u;
    global3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(-553f, arg_1.x)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(633f)))))));
    global3 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_4(select(!func_2(arg_0).d, arg_0.a.xz, true), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(1176f, _wgslsmith_div_f32(862f, arg_1.x), any(vec3<bool>(arg_3.b, true, true)))))), Struct_2(select(!vec4<bool>(global2[_wgslsmith_index_u32(arg_2.e.x, 30u)], true, false, global0.b), arg_3.a, arg_0.a), global2[_wgslsmith_index_u32(abs(_wgslsmith_mult_u32(arg_2.e.x, 0u)), 30u)], ~(~u_input.a.x), vec2<bool>(false, arg_0.b), arg_3.e)))));
    global2 = array<bool, 30>();
    let var_1 = func_2(arg_0);
    return 563f;
}

fn func_6(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: vec2<u32>) -> Struct_2 {
    var var_0 = ~_wgslsmith_sub_i32(arg_1.d, abs(~global0.c));
    let var_1 = global2[_wgslsmith_index_u32(max(1u, 106993u), 30u)];
    return Struct_2(select(!(!select(global0.a, global0.a, true)), global0.a, any(select(func_2(Struct_2(vec4<bool>(arg_0.x, true, global0.a.x, arg_0.x), false, -2147483647i, arg_0.zx, arg_1.b)).a, select(global0.a, global0.a, global0.a), vec4<bool>(arg_0.x, global2[_wgslsmith_index_u32(4294967295u, 30u)], false, arg_0.x)))), true, 1i, global0.a.xy, ((_wgslsmith_mult_vec3_u32(global0.e, global0.e) & (vec3<u32>(arg_2.x, arg_2.x, 0u) | vec3<u32>(arg_1.c, 4294967295u, arg_1.b.x))) | ~firstLeadingBit(global0.e)) ^ global0.e);
}

fn func_1() -> Struct_1 {
    var var_0 = true;
    global1 = global0.b;
    let var_1 = 43328u;
    let var_2 = func_6(!select(vec3<bool>(true, global0.c <= -1i, any(global0.a.yzx)), !vec3<bool>(true, global0.b, false), false), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(func_5(func_2(Struct_2(global0.a, false, 9463i, global0.a.wy, vec3<u32>(39234u, global0.e.x, var_1))), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-131f, -407f))), Struct_2(vec4<bool>(global2[_wgslsmith_index_u32(1u, 30u)], true, true, global2[_wgslsmith_index_u32(37302u, 30u)]), global0.b, u_input.a.x, vec2<bool>(false, global2[_wgslsmith_index_u32(var_1, 30u)]), global0.e), func_2(Struct_2(global0.a, global0.d.x, u_input.a.x, vec2<bool>(true, false), global0.e)))), -274f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1301f)))), global0.e >> (vec3<u32>(~global0.e.x, global0.e.x, _wgslsmith_dot_vec2_u32(vec2<u32>(37990u, 64272u), vec2<u32>(var_1, 17502u))) % vec3<u32>(32u)), global0.e.x ^ ~13700u, ~u_input.a.x), _wgslsmith_mult_vec2_u32(global0.e.zx, _wgslsmith_add_vec2_u32(firstTrailingBit(abs(vec2<u32>(1u, 124718u))), global0.e.yx)));
    let var_3 = ~global0.e;
    return Struct_1(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -728f) * _wgslsmith_f_op_f32(func_4(select(vec2<bool>(false, global0.b), global0.a.yw, false), _wgslsmith_f_op_f32(-1415f - -1042f), Struct_2(global0.a, false, var_2.c, vec2<bool>(var_2.d.x, false), var_3)))), 896f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_4(global0.a.zw, 578f, var_2)))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(271f * 1000f), _wgslsmith_div_f32(1114f, -1058f)))), max(firstLeadingBit((var_2.e << (var_3 % vec3<u32>(32u))) & ~var_2.e), vec3<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(var_3.yy, var_2.e.yx), select(vec2<u32>(4294967295u, 39909u), var_3.xz, global0.a.zx)), 1u, func_6(var_2.a.wzw, Struct_1(vec3<f32>(-1000f, 396f, -939f), vec3<u32>(var_1, 8134u, 21784u), var_2.e.x, -7475i), ~vec2<u32>(var_1, var_1)).e.x)), max(firstLeadingBit(0u), 1u), -max(-43006i, select(_wgslsmith_add_i32(-1i, var_2.c), reverseBits(global0.c), global0.d.x == false)));
}

fn func_7(arg_0: bool, arg_1: Struct_1, arg_2: Struct_2) -> Struct_2 {
    var var_0 = func_2(Struct_2(!(!vec4<bool>(true, global2[_wgslsmith_index_u32(123915u, 30u)], true, arg_0)), all(vec2<bool>(true, true)), 13905i, !select(global0.a.xy, func_6(vec3<bool>(true, arg_2.a.x, arg_2.a.x), arg_1, arg_1.b.yy).a.xz, !arg_2.a.xx), firstTrailingBit(vec3<u32>(4294967295u, 37429u, 1u)) << (((arg_1.b << (arg_2.e % vec3<u32>(32u))) << (firstTrailingBit(global0.e) % vec3<u32>(32u))) % vec3<u32>(32u))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1759f - func_1().a.x));
    let var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a.x, arg_1.a.x, arg_1.a.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_1.a.x)))))));
    global2 = array<bool, 30>();
    global2 = array<bool, 30>();
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_7(global0.d.x, func_1(), Struct_2(global0.a, true, i32(-1i) * -global0.c, global0.a.xy, select(vec3<u32>(~45478u, global0.e.x & global0.e.x, 1u), ~(global0.e & global0.e), vec3<bool>(true, true, true))));
    var var_1 = func_1();
    let var_2 = vec3<u32>(_wgslsmith_add_u32(43344u, 1u), _wgslsmith_dot_vec4_u32(~(~vec4<u32>(4294967295u, 59016u, var_0.e.x, 4294967295u)), min(vec4<u32>(var_1.c, var_0.e.x, 0u, 4294967295u), ~vec4<u32>(4294967295u, var_1.c, 51583u, var_0.e.x))), var_1.b.x) >> (vec3<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(global0.e.x, 35466u, var_0.e.x, var_1.b.x), vec4<u32>(17690u, 1u, var_1.b.x, global0.e.x), vec4<u32>(30671u, var_1.b.x, 4294967295u, 1u)), _wgslsmith_div_vec4_u32(vec4<u32>(var_0.e.x, global0.e.x, var_0.e.x, 70924u), vec4<u32>(var_0.e.x, 24838u, global0.e.x, 35393u))), ~select(vec4<u32>(54606u, 4294967295u, var_1.b.x, global0.e.x), vec4<u32>(var_0.e.x, 0u, 4294967295u, global0.e.x), var_0.d.x)), select(var_0.e.x, var_0.e.x, global2[_wgslsmith_index_u32(24878u, 30u)]), 1u) % vec3<u32>(32u));
    global0 = func_2(Struct_2(!global0.a, false, -(_wgslsmith_mult_i32(var_1.d, var_0.c) ^ ~(-1538i)), var_0.a.wx, _wgslsmith_div_vec3_u32(var_2, global0.e)));
    global1 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_u32(func_3() ^ var_0.e.x, abs(12124u), ~var_0.e.x), vec2<i32>(firstLeadingBit(_wgslsmith_mult_i32(var_0.c, var_0.c)) >> (var_1.c % 32u), _wgslsmith_clamp_i32(var_0.c, _wgslsmith_sub_i32(0i, func_7(true, Struct_1(var_1.a, var_0.e, 4900u, global0.c), Struct_2(vec4<bool>(true, global2[_wgslsmith_index_u32(global0.e.x, 30u)], true, global0.b), global0.b, var_1.d, var_0.a.zw, var_2)).c), var_0.c)), u_input.a.xwz, abs(_wgslsmith_add_vec3_u32(vec3<u32>(1u, ~1u, var_1.c), countOneBits(_wgslsmith_clamp_vec3_u32(vec3<u32>(1519u, var_1.c, 5416u), var_0.e, var_1.b)))));
}

