struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: u32,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: Struct_2,
}

struct Struct_5 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 30>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: bool) -> i32 {
    global0 = array<bool, 30>();
    let var_0 = min(u_input.c, -2147483647i);
    let var_1 = !vec4<bool>(true, all(vec2<bool>(true, true)), any(select(vec4<bool>(true, true, false, false), vec4<bool>(arg_0, false, true, global0[_wgslsmith_index_u32(u_input.a.x, 30u)]), global0[_wgslsmith_index_u32(abs(u_input.a.x), 30u)])), all(vec4<bool>(any(vec3<bool>(global0[_wgslsmith_index_u32(0u, 30u)], true, arg_0)), true, u_input.c != var_0, all(vec3<bool>(arg_0, true, global0[_wgslsmith_index_u32(u_input.e, 30u)])))));
    let var_2 = !global0[_wgslsmith_index_u32(~1u, 30u)];
    let var_3 = ~(~(~_wgslsmith_mult_vec3_i32(~vec3<i32>(21749i, -31199i, 56232i), _wgslsmith_mult_vec3_i32(vec3<i32>(var_0, 19213i, u_input.c), vec3<i32>(2113i, u_input.c, 2147483647i)))));
    return min(min(countOneBits(0i ^ _wgslsmith_dot_vec4_i32(vec4<i32>(-4687i, u_input.d, 1i, 1075i), vec4<i32>(var_0, var_3.x, var_0, u_input.d))), u_input.c), u_input.c);
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_5(vec4<i32>(_wgslsmith_mult_i32(u_input.d, func_3(false)) ^ -2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(-39849i, countOneBits(u_input.b), _wgslsmith_div_i32(u_input.d, u_input.c), _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 56097i, 2147483647i), vec3<i32>(u_input.c, -1i, u_input.d))), max(vec4<i32>(u_input.d, 0i, u_input.c, 1i), vec4<i32>(u_input.b, 0i, -19892i, u_input.c)) ^ vec4<i32>(u_input.c, 14388i, 2147483647i, u_input.d)), -(~u_input.b) ^ -1i, u_input.d << (_wgslsmith_dot_vec2_u32(select(u_input.a.yx, vec2<u32>(u_input.e, u_input.a.x), global0[_wgslsmith_index_u32(31890u, 30u)]), abs(vec2<u32>(u_input.a.x, 4294967295u))) % 32u)));
    var var_1 = max(var_0.a, -var_0.a);
    var var_2 = Struct_3(!select(vec4<bool>(any(vec2<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 30u)])), !global0[_wgslsmith_index_u32(u_input.e, 30u)], global0[_wgslsmith_index_u32(4294967295u, 30u)] & global0[_wgslsmith_index_u32(u_input.e, 30u)], global0[_wgslsmith_index_u32(32994u, 30u)]), select(!vec4<bool>(false, global0[_wgslsmith_index_u32(32527u, 30u)], false, global0[_wgslsmith_index_u32(36602u, 30u)]), select(vec4<bool>(global0[_wgslsmith_index_u32(26208u, 30u)], global0[_wgslsmith_index_u32(76370u, 30u)], true, true), vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 30u)], global0[_wgslsmith_index_u32(u_input.a.x, 30u)], global0[_wgslsmith_index_u32(u_input.e, 30u)], true), true), select(vec4<bool>(false, global0[_wgslsmith_index_u32(1u, 30u)], global0[_wgslsmith_index_u32(4294967295u, 30u)], global0[_wgslsmith_index_u32(u_input.a.x, 30u)]), vec4<bool>(false, global0[_wgslsmith_index_u32(33791u, 30u)], false, global0[_wgslsmith_index_u32(u_input.e, 30u)]), vec4<bool>(true, true, false, global0[_wgslsmith_index_u32(81437u, 30u)]))), true | global0[_wgslsmith_index_u32(~u_input.e, 30u)]), _wgslsmith_dot_vec2_u32(u_input.a.xz, vec2<u32>(u_input.e, 65517u)));
    let var_3 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -810f) + -1008f), -671f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-630f - -1604f), -1157f) + 598f), _wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(f32(-1f) * -973f), all(var_2.a.yw)))), vec4<f32>(_wgslsmith_div_f32(414f, _wgslsmith_f_op_f32(trunc(-820f))), _wgslsmith_f_op_f32(round(1564f)), -192f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1631f * -671f))))));
    var var_4 = var_3.yw;
    return Struct_2(Struct_1(-var_0.a, true, 10613i));
}

fn func_1(arg_0: Struct_4) -> Struct_1 {
    global0 = array<bool, 30>();
    global0 = array<bool, 30>();
    let var_0 = vec2<bool>(true, true);
    var var_1 = vec4<u32>(~arg_0.a.b, 0u, 31209u, ~1u) << (firstTrailingBit(vec4<u32>(~55867u, ~81936u, ~_wgslsmith_clamp_u32(u_input.e, arg_0.a.b, 4294967295u), arg_0.a.b)) % vec4<u32>(32u));
    let var_2 = func_2();
    return Struct_1(vec4<i32>(var_2.a.a.x, -1i, abs(min(u_input.d, var_2.a.c)), var_2.a.a.x) | -vec4<i32>(arg_0.c.a.c | 1i, u_input.d, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d, 0i, 0i, u_input.d), arg_0.b.a), arg_0.b.c), global0[_wgslsmith_index_u32(~(((arg_0.a.b << (var_1.x % 32u)) ^ arg_0.a.b) >> ((u_input.e ^ 1u) % 32u)), 30u)], var_2.a.a.x);
}

fn func_4(arg_0: Struct_4) -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-441f, -831f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1494f, 1325f) + vec2<f32>(2269f, 648f))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-797f, 417f), vec2<f32>(1251f, 1000f), true)) * _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(455f, 766f))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-116f, -956f)))))));
    var var_1 = arg_0;
    var var_2 = 0u;
    var_1 = arg_0;
    var var_3 = var_1.b.a.zxw;
    return select(vec2<bool>(firstLeadingBit(reverseBits(0i)) <= var_1.b.a.x, any(var_1.a.a.zy)), vec2<bool>(all(arg_0.a.a.zz), all(arg_0.a.a.xw)), false);
}

fn func_5(arg_0: vec2<bool>, arg_1: Struct_3, arg_2: bool) -> f32 {
    global0 = array<bool, 30>();
    global0 = array<bool, 30>();
    global0 = array<bool, 30>();
    var var_0 = _wgslsmith_mod_vec4_i32(~vec4<i32>(22325i >> (_wgslsmith_div_u32(0u, 4294967295u) % 32u), 1i, -1i, _wgslsmith_mod_i32(u_input.c << (u_input.a.x % 32u), u_input.c)), vec4<i32>(_wgslsmith_sub_i32(u_input.b, -1i) ^ _wgslsmith_mod_i32(2147483647i, -1093i >> (0u % 32u)), -7780i, 2147483647i, ~(_wgslsmith_add_i32(1i, u_input.c) | u_input.b)));
    let var_1 = 182f;
    return 1850f;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 30>();
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_5(func_4(Struct_4(Struct_3(vec4<bool>(global0[_wgslsmith_index_u32(15053u, 30u)], global0[_wgslsmith_index_u32(u_input.e, 30u)], true, global0[_wgslsmith_index_u32(u_input.e, 30u)]), u_input.a.x), func_1(Struct_4(Struct_3(vec4<bool>(global0[_wgslsmith_index_u32(64710u, 30u)], global0[_wgslsmith_index_u32(130209u, 30u)], false, true), u_input.e), Struct_1(vec4<i32>(u_input.b, 11966i, u_input.b, u_input.c), false, 1i), Struct_2(Struct_1(vec4<i32>(u_input.c, -26644i, 0i, 1968i), true, u_input.b)))), func_2())), Struct_3(select(vec4<bool>(true, true, global0[_wgslsmith_index_u32(u_input.e, 30u)], false), !vec4<bool>(global0[_wgslsmith_index_u32(1u, 30u)], global0[_wgslsmith_index_u32(4294967295u, 30u)], global0[_wgslsmith_index_u32(1u, 30u)], false), global0[_wgslsmith_index_u32(1u, 30u)]), u_input.e), global0[_wgslsmith_index_u32(~u_input.e, 30u)])) + 182f);
    var var_1 = ~func_2().a.c == ((~10848i & u_input.c) | max(_wgslsmith_mult_i32(0i, _wgslsmith_add_i32(-39317i, u_input.c)), u_input.d));
    let var_2 = Struct_2(Struct_1(abs(firstTrailingBit(vec4<i32>(-1788i, u_input.c, u_input.b, u_input.c))) & min(countOneBits(vec4<i32>(u_input.c, u_input.c, u_input.d, 0i)), firstLeadingBit(vec4<i32>(84734i, u_input.b, -2147483647i, -1i))), false, max(0i, 21645i)));
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(710f, 2020f), vec2<f32>(-755f, -764f)), vec2<f32>(-602f, 635f), global0[_wgslsmith_index_u32(u_input.e, 30u)])))) * _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(146f, 259f)) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1000f, 786f), vec2<f32>(313f, 509f), global0[_wgslsmith_index_u32(u_input.a.x, 30u)])))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1189f, 1158f), _wgslsmith_f_op_vec2_f32(vec2<f32>(785f, 363f) + vec2<f32>(-739f, 922f))))) * _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(570f, -1430f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(197f, 325f))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-1431f * -612f))))));
    let var_4 = 359f;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a.a, -reverseBits(abs(var_2.a.a.yw)) << (~(~vec2<u32>(37168u, 4294967295u) | abs(u_input.a.yy)) % vec2<u32>(32u)));
}

