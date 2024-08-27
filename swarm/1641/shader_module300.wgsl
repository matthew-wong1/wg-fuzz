struct Struct_1 {
    a: vec2<u32>,
    b: vec3<i32>,
}

struct Struct_2 {
    a: i32,
    b: vec2<u32>,
    c: Struct_1,
    d: f32,
    e: vec4<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: u32,
    d: vec4<i32>,
    e: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: Struct_1,
    c: f32,
}

struct Struct_5 {
    a: Struct_3,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 17>;

var<private> global1: vec3<bool> = vec3<bool>(true, false, true);

var<private> global2: f32;

var<private> global3: Struct_3 = Struct_3(Struct_1(vec2<u32>(33925u, 10554u), vec3<i32>(-1i, 1i, 40077i)), Struct_2(-1i, vec2<u32>(36041u, 4294967295u), Struct_1(vec2<u32>(4294967295u, 28731u), vec3<i32>(5574i, 2147483647i, -9640i)), -269f, vec4<f32>(-605f, -125f, 1679f, -528f)), 85158u, vec4<i32>(2147483647i, -26117i, -1i, -6061i), Struct_1(vec2<u32>(52901u, 0u), vec3<i32>(0i, 20841i, 93195i)));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: Struct_4) -> i32 {
    var var_0 = Struct_3(Struct_1(global3.b.c.a, arg_0.b.b), global3.b, abs(~global3.c), global3.d, global3.a);
    var var_1 = arg_0.b.b | -global3.b.c.b;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.b.d, 912f))) * global3.b.e.x), _wgslsmith_f_op_f32(1000f * arg_0.c))) * -519f);
    global3 = Struct_3(Struct_1(~global3.e.a, ~arg_0.b.b), Struct_2(2147483647i, firstTrailingBit(~global3.e.a), Struct_1(min(arg_0.b.a << (vec2<u32>(arg_0.b.a.x, var_0.c) % vec2<u32>(32u)), _wgslsmith_sub_vec2_u32(vec2<u32>(arg_0.b.a.x, 75053u), vec2<u32>(arg_0.b.a.x, 1u))), firstTrailingBit(-global3.e.b)), _wgslsmith_f_op_f32(-var_2), global3.b.e), max(abs(arg_0.b.a.x), ~_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(14501u, global3.b.c.a.x, 66226u, 0u), vec4<u32>(15552u, 39735u, 4294967295u, 0u)), vec4<u32>(5753u, 33188u, 10655u, arg_0.b.a.x) << (vec4<u32>(var_0.c, arg_0.b.a.x, arg_0.b.a.x, global3.a.a.x) % vec4<u32>(32u)))), vec4<i32>(select(~_wgslsmith_mult_i32(var_1.x, arg_0.b.b.x), _wgslsmith_sub_i32(global3.e.b.x, _wgslsmith_sub_i32(46337i, var_1.x)), all(!vec4<bool>(true, false, global1.x, global1.x))), -2147483647i, -reverseBits(global3.a.b.x), var_1.x), Struct_1(vec2<u32>(countOneBits(1u), var_0.c | 7451u) & global3.a.a, var_0.d.wyz ^ _wgslsmith_clamp_vec3_i32(global3.d.wwy >> (vec3<u32>(var_0.c, 1u, 4294967295u) % vec3<u32>(32u)), global3.b.c.b, vec3<i32>(var_0.a.b.x, 43215i, global3.d.x))));
    var var_3 = -vec2<i32>(countOneBits(-5663i), -2147483647i);
    return i32(-1i) * -_wgslsmith_mod_i32(var_0.e.b.x, var_3.x);
}

fn func_2(arg_0: u32) -> Struct_4 {
    global3 = Struct_3(Struct_1(reverseBits(global3.b.b), global3.d.xwz), global3.b, arg_0, global3.d, global3.a);
    var var_0 = global3.d.x;
    let var_1 = global3.b;
    global0 = array<bool, 17>();
    let var_2 = vec2<i32>(reverseBits(func_3(Struct_4(var_1.a, Struct_1(vec2<u32>(global3.b.c.a.x, 4294967295u), var_1.c.b), global3.b.e.x))), _wgslsmith_div_i32(-2147483647i, countOneBits(-(~global3.d.x))));
    return Struct_4(firstTrailingBit(max(var_2.x, 21599i)), var_1.c, global3.b.e.x);
}

fn func_4(arg_0: vec3<bool>, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: Struct_4) -> Struct_1 {
    let var_0 = vec3<u32>(~64271u, abs(_wgslsmith_add_u32(1u, min(~arg_3.b.a.x, 1u))), 0u);
    var var_1 = arg_3.a;
    var var_2 = ~arg_2.a;
    var_2 = _wgslsmith_div_vec2_u32(reverseBits(min(arg_3.b.a, global3.e.a)), vec2<u32>(~firstLeadingBit(4294967295u), _wgslsmith_dot_vec2_u32(~(~vec2<u32>(0u, 33237u)), arg_3.b.a)));
    var_2 = vec2<u32>(~(~_wgslsmith_add_u32(1u, _wgslsmith_sub_u32(global3.b.b.x, 31840u))), arg_3.b.a.x);
    return func_2(42528u).b;
}

fn func_1(arg_0: f32, arg_1: bool) -> Struct_4 {
    var var_0 = vec4<bool>(!arg_1, false, arg_1, false);
    let var_1 = Struct_3(func_4(!var_0.xyz, ~_wgslsmith_clamp_vec2_i32(vec2<i32>(-1i, global3.b.c.b.x), _wgslsmith_sub_vec2_i32(vec2<i32>(global3.e.b.x, -5241i), global3.d.wy), -global3.e.b.zz), global3.e, func_2(_wgslsmith_mult_u32(global3.a.a.x >> (global3.e.a.x % 32u), _wgslsmith_mult_u32(global3.b.b.x, 11481u)))), global3.b, func_4(vec3<bool>(true || any(vec3<bool>(true, global1.x, global1.x)), true, !global0[_wgslsmith_index_u32(4294967295u, 17u)]), global3.d.yw, global3.e, func_2(global3.b.b.x)).a.x, _wgslsmith_div_vec4_i32(-vec4<i32>(global3.a.b.x, global3.b.a, 2147483647i, global3.e.b.x) & global3.d, global3.d), Struct_1(global3.b.c.a, global3.a.b >> (~vec3<u32>(1u, 4294967295u, global3.b.b.x) % vec3<u32>(32u))));
    global0 = array<bool, 17>();
    let var_2 = any(vec2<bool>(all(select(!vec2<bool>(false, var_0.x), global1.yy, !vec2<bool>(var_0.x, true))), select(select(var_0.x, global1.x, global1.x), true, all(var_0.xx)) && (var_1.b.d < _wgslsmith_f_op_f32(abs(1401f)))));
    global0 = array<bool, 17>();
    return Struct_4(var_1.d.x, var_1.b.c, _wgslsmith_f_op_f32(global3.b.e.x * _wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(334f + _wgslsmith_div_f32(global3.b.e.x, -942f)))));
}

fn func_5(arg_0: Struct_4, arg_1: vec2<u32>, arg_2: Struct_2, arg_3: u32) -> i32 {
    var var_0 = Struct_2(countOneBits(u_input.a), abs(arg_2.c.a), arg_0.b, _wgslsmith_f_op_f32(ceil(arg_0.c)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -151f)), global3.b.d, -391f, 1473f));
    global3 = Struct_3(global3.e, Struct_2(1i, vec2<u32>(_wgslsmith_add_u32(global3.a.a.x, global3.e.a.x), _wgslsmith_dot_vec2_u32(arg_1, arg_1)) << (~arg_0.b.a % vec2<u32>(32u)), var_0.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(854f + _wgslsmith_div_f32(global3.b.d, -401f)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-var_0.d))), vec4<f32>(_wgslsmith_f_op_f32(ceil(arg_0.c)), arg_2.d, _wgslsmith_f_op_f32(arg_0.c + var_0.e.x), var_0.e.x)), _wgslsmith_sub_u32(11218u, arg_1.x), -_wgslsmith_div_vec4_i32(global3.d, global3.d), arg_0.b);
    global0 = array<bool, 17>();
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(sign(global3.b.e.x)), -284f, _wgslsmith_f_op_f32(-arg_0.c));
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_2.e.x, _wgslsmith_f_op_f32(-1038f - -535f))) * _wgslsmith_div_f32(-331f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(495f - var_0.e.x), _wgslsmith_f_op_f32(-arg_2.e.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1397f * -1323f) + arg_0.c)))));
    return -(~19747i);
}

fn func_6(arg_0: f32, arg_1: i32, arg_2: vec4<i32>, arg_3: Struct_5) -> Struct_5 {
    global3 = arg_3.a;
    var var_0 = arg_3.a.b.c;
    var var_1 = global3.a;
    var var_2 = arg_3.a;
    var var_3 = abs(~select(~vec4<u32>(0u, 44484u, var_0.a.x, 1u) & vec4<u32>(arg_3.a.c, 4294967295u, 79422u, global3.e.a.x), _wgslsmith_mult_vec4_u32(~vec4<u32>(4294967295u, 70261u, 6330u, var_0.a.x), ~vec4<u32>(98560u, 55561u, arg_3.a.a.a.x, 10761u)), true));
    return arg_3;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -1247f;
    let var_1 = func_6(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global3.b.e.x * global3.b.e.x))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global3.b.e.x))))), -(-2147483647i >> (~countOneBits(global3.e.a.x) % 32u)), vec4<i32>(4992i, func_5(func_1(global3.b.e.x, false), global3.b.c.a, Struct_2(2147483647i, ~global3.a.a, func_4(vec3<bool>(global1.x, false, true), vec2<i32>(-1i, global3.e.b.x), global3.a, Struct_4(global3.e.b.x, Struct_1(global3.a.a, global3.e.b), -165f)), -946f, global3.b.e), global3.b.b.x), firstTrailingBit(firstLeadingBit(firstTrailingBit(18639i))), _wgslsmith_div_i32(_wgslsmith_sub_i32(-2147483647i, func_4(vec3<bool>(false, true, global1.x), vec2<i32>(1i, u_input.a), global3.e, Struct_4(-22316i, global3.a, -1266f)).b.x), func_5(Struct_4(global3.d.x, Struct_1(global3.a.a, vec3<i32>(-1i, u_input.a, global3.a.b.x)), global3.b.d), global3.e.a, Struct_2(u_input.a, global3.b.b, global3.a, global3.b.d, global3.b.e), 44022u))), Struct_5(Struct_3(global3.a, global3.b, abs(global3.e.a.x), vec4<i32>(func_5(Struct_4(global3.d.x, global3.e, global3.b.e.x), vec2<u32>(global3.a.a.x, global3.e.a.x), global3.b, 4294967295u), 25783i, global3.b.a ^ -1i, 0i), global3.a)));
    var var_2 = global3.b.c;
    global1 = vec3<bool>(reverseBits(43021u) < firstTrailingBit(func_6(var_1.a.b.d, firstTrailingBit(-1i), ~vec4<i32>(2147483647i, var_1.a.d.x, var_2.b.x, var_1.a.e.b.x), var_1).a.c), global1.x, global0[_wgslsmith_index_u32(var_2.a.x, 17u)]);
    let var_3 = Struct_4(max(var_1.a.a.b.x, select(-2147483647i ^ u_input.a, var_1.a.e.b.x, false) >> (var_2.a.x % 32u)), func_6(var_1.a.b.d, global3.e.b.x, vec4<i32>(-57619i, -13617i, ~func_2(35970u).b.b.x, func_6(var_1.a.b.d, _wgslsmith_sub_i32(global3.d.x, var_1.a.d.x), var_1.a.d, var_1).a.d.x), func_6(-1726f, ~1i, max(-vec4<i32>(2147483647i, global3.b.a, 33578i, -2147483647i), vec4<i32>(var_1.a.a.b.x, global3.b.c.b.x, u_input.a, u_input.a)), var_1)).a.b.c, 285f);
    let var_4 = func_6(-1341f, _wgslsmith_add_i32(reverseBits(-1i), -2147483647i), global3.d, var_1);
    var_2 = Struct_1(global3.a.a, vec3<i32>(~global3.d.x, _wgslsmith_add_i32(-var_3.b.b.x, min(var_1.a.d.x, 1i)), u_input.a ^ _wgslsmith_clamp_i32(var_1.a.d.x, var_2.b.x, u_input.a)) | (min(var_2.b, vec3<i32>(var_4.a.b.a, -8668i, -1i)) | -vec3<i32>(var_4.a.d.x, 37343i, 21188i)));
    global1 = vec3<bool>(!global0[_wgslsmith_index_u32(func_2(3568u).b.a.x, 17u)], false, false);
    let x = u_input.a;
    s_output = StorageBuffer(~func_6(_wgslsmith_f_op_f32(var_4.a.b.e.x + _wgslsmith_f_op_f32(-var_4.a.b.e.x)), func_2(_wgslsmith_dot_vec2_u32(var_2.a, vec2<u32>(5157u, global3.e.a.x))).a, vec4<i32>(1i, 1i, func_1(-1619f, true).a, -29861i), Struct_5(func_6(-1000f, var_1.a.a.b.x, vec4<i32>(-1i, 11314i, -1352i, var_3.b.b.x), Struct_5(Struct_3(Struct_1(vec2<u32>(var_4.a.a.a.x, var_3.b.a.x), var_4.a.b.c.b), var_4.a.b, var_1.a.c, vec4<i32>(13836i, var_3.b.b.x, var_2.b.x, var_1.a.e.b.x), var_1.a.e))).a)).a.b.b.x, global3.e.b, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(sign(var_4.a.b.e.yz)), vec2<f32>(func_2(global3.c).c, _wgslsmith_f_op_f32(f32(-1f) * -713f)))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1509f, var_3.c, global0[_wgslsmith_index_u32(14996u, 17u)])) + _wgslsmith_f_op_f32(-2038f * var_1.a.b.d)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_3.c))))));
}

