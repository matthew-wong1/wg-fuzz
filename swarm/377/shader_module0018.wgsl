struct Struct_1 {
    a: u32,
    b: f32,
    c: vec4<bool>,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: bool,
    c: f32,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec2<u32>(32240u, 4294967295u), Struct_2(Struct_1(19770u, -685f, vec4<bool>(false, false, false, false), 4294967295u), Struct_1(4294967295u, 130f, vec4<bool>(false, true, true, false), 4294967295u)));

var<private> global1: array<Struct_1, 22>;

var<private> global2: bool;

var<private> global3: array<i32, 29> = array<i32, 29>(1i, 69429i, -11069i, -12668i, 2147483647i, -30916i, 2147483647i, -58084i, 21193i, 0i, 0i, -1i, 1i, 2147483647i, 12065i, 0i, -21268i, 1i, 1i, -1715i, 1i, 0i, 88327i, -17580i, -28284i, 1i, i32(-2147483648), -14523i, 2147483647i);

var<private> global4: array<i32, 21>;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2() -> vec4<u32> {
    let var_0 = false;
    global3 = array<i32, 29>();
    let var_1 = _wgslsmith_add_i32(1i, _wgslsmith_add_i32(~(~firstLeadingBit(global3[_wgslsmith_index_u32(u_input.c, 29u)])), global4[_wgslsmith_index_u32(0u, 21u)]));
    let var_2 = global0.b.b;
    var var_3 = global1[_wgslsmith_index_u32(~1u << (0u % 32u), 22u)];
    return ~(vec4<u32>(~global0.b.a.a, 1u, _wgslsmith_mod_u32(0u, 49611u), ~u_input.c) | (_wgslsmith_mult_vec4_u32(vec4<u32>(var_3.d, u_input.c, u_input.c, var_3.d), vec4<u32>(44532u, 37394u, u_input.c, var_2.a)) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(var_2.d, 12477u, 10740u, 4294967295u), vec4<u32>(u_input.c, 2012u, var_3.a, u_input.c)) % vec4<u32>(32u)))) ^ vec4<u32>(global0.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(~u_input.c, 1u, countOneBits(var_3.a)), select(~vec3<u32>(32108u, 1u, 7472u), _wgslsmith_mult_vec3_u32(vec3<u32>(var_2.a, 4294967295u, u_input.c), vec3<u32>(4294967295u, 0u, 1u)), vec3<bool>(var_2.c.x, false, var_0))), u_input.c, (52989u << (_wgslsmith_sub_u32(var_3.a, var_3.d) % 32u)) << (~firstLeadingBit(75208u) % 32u));
}

fn func_3() -> u32 {
    global4 = array<i32, 21>();
    var var_0 = global0.b.b.b;
    let var_1 = reverseBits(1736u);
    var var_2 = all(vec4<bool>(false, true, !(any(vec4<bool>(global0.b.a.c.x, global0.b.b.c.x, global0.b.b.c.x, global0.b.b.c.x)) & (global0.b.b.c.x == false)), !(global0.a.x <= reverseBits(global0.b.b.d))));
    global4 = array<i32, 21>();
    return _wgslsmith_div_u32(abs(global0.b.b.d), 63594u);
}

fn func_4(arg_0: Struct_3, arg_1: i32, arg_2: vec3<u32>) -> bool {
    let var_0 = arg_0.b.a.c.yzz;
    global4 = array<i32, 21>();
    global0 = Struct_3(_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, u_input.c), vec2<u32>(arg_0.a.x, 0u)), Struct_2(Struct_1(0u & arg_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1931f - arg_0.b.b.b)), vec4<bool>(false, select(global0.b.a.c.x, false, true), !global0.b.a.c.x, select(false, false, true)), _wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(global0.a.x, 1u, 1u, 0u)), countOneBits(vec4<u32>(0u, 4294967295u, 29809u, arg_2.x)))), global1[_wgslsmith_index_u32(global0.b.a.d, 22u)]));
    let var_1 = -21551i;
    global0 = arg_0;
    return !(-2147483647i != (~(~0i) >> (~abs(arg_0.b.a.d) % 32u)));
}

fn func_1(arg_0: f32, arg_1: Struct_4, arg_2: Struct_1) -> Struct_3 {
    var var_0 = global0.a.x;
    global1 = array<Struct_1, 22>();
    global2 = all(arg_2.c.wy);
    let var_1 = select(min(~(~_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 0u, 9602u, arg_2.d), vec4<u32>(global0.b.b.d, global0.a.x, 43067u, 29830u))), ~vec4<u32>(u_input.c, select(arg_2.d, 11330u, arg_1.b), _wgslsmith_div_u32(35171u, arg_1.a.a.x), reverseBits(arg_1.a.a.x))), ~firstLeadingBit(select(reverseBits(vec4<u32>(global0.b.b.a, arg_1.a.b.b.a, 4294967295u, arg_2.d)), func_2(), !vec4<bool>(global0.b.b.c.x, false, false, false))), !func_4(Struct_3(_wgslsmith_mod_vec2_u32(vec2<u32>(2538u, 19327u), arg_1.a.a), Struct_2(arg_2, arg_1.a.b.b)), global4[_wgslsmith_index_u32(arg_2.d, 21u)], vec3<u32>(func_3(), 41150u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, 2571u, 1143u), vec3<u32>(9903u, arg_1.a.a.x, 50995u)))));
    let var_2 = ~_wgslsmith_sub_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 25386u, arg_2.d, 0u), vec4<u32>(var_1.x, arg_2.d, arg_1.a.b.b.a, u_input.c)), abs(1709u));
    return Struct_3(global0.a, Struct_2(Struct_1(_wgslsmith_sub_u32(min(u_input.c, 1u), firstTrailingBit(var_1.x)), arg_0, select(global0.b.b.c, vec4<bool>(false, false, global0.b.a.c.x, arg_2.c.x), arg_2.c), 1u), global0.b.a));
}

fn func_5(arg_0: vec3<bool>, arg_1: vec3<u32>, arg_2: Struct_3) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1000f - 630f), _wgslsmith_f_op_f32(-global0.b.b.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(642f * -2280f), -340f))))) + 379f);
    global2 = any(select(vec4<bool>(arg_2.b.a.c.x, any(vec4<bool>(false, false, arg_2.b.a.c.x, arg_0.x)), func_1(var_0, Struct_4(Struct_3(vec2<u32>(4294967295u, 10253u), global0.b), arg_0.x, -1555f, vec2<f32>(-831f, var_0)), func_1(global0.b.b.b, Struct_4(Struct_3(vec2<u32>(global0.a.x, u_input.c), Struct_2(arg_2.b.a, Struct_1(u_input.c, var_0, arg_2.b.a.c, 0u))), false, var_0, vec2<f32>(var_0, 659f)), Struct_1(1u, -200f, global0.b.a.c, global0.a.x)).b.a).b.b.c.x, arg_0.x), !(!(!arg_2.b.b.c)), select(vec4<bool>(func_4(arg_2, global3[_wgslsmith_index_u32(global0.b.a.a, 29u)], vec3<u32>(arg_1.x, 11836u, 59711u)), !arg_0.x, !arg_0.x, arg_0.x), vec4<bool>(false, arg_2.b.b.c.x, global0.b.a.b < -1000f, arg_2.b.a.c.x && true), !select(vec4<bool>(true, arg_2.b.a.c.x, true, true), arg_2.b.b.c, arg_2.b.b.c))));
    let var_1 = Struct_2(func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-452f * global0.b.a.b) * _wgslsmith_f_op_f32(-1470f * 1000f))), Struct_4(func_1(_wgslsmith_f_op_f32(-840f - 349f), Struct_4(arg_2, arg_2.b.b.c.x, 273f, vec2<f32>(1462f, 1000f)), arg_2.b.a), global0.b.a.c.x || !global0.b.b.c.x, func_1(_wgslsmith_f_op_f32(f32(-1f) * -1441f), Struct_4(arg_2, global0.b.a.c.x, global0.b.a.b, vec2<f32>(955f, arg_2.b.b.b)), arg_2.b.a).b.b.b, _wgslsmith_f_op_vec2_f32(-vec2<f32>(2211f, 1309f))), global0.b.b).b.a, Struct_1(~arg_1.x, _wgslsmith_div_f32(_wgslsmith_div_f32(-1237f, _wgslsmith_f_op_f32(exp2(var_0))), arg_2.b.a.b), global0.b.a.c, ~arg_1.x));
    var var_2 = vec4<bool>(min(max(global4[_wgslsmith_index_u32(~1u, 21u)], max(global4[_wgslsmith_index_u32(4294967295u, 21u)], global3[_wgslsmith_index_u32(arg_2.a.x, 29u)])), global4[_wgslsmith_index_u32(firstTrailingBit(~arg_1.x), 21u)]) != max(-global4[_wgslsmith_index_u32(61116u, 21u)], 13317i), true, true, !(any(!vec2<bool>(true, global0.b.b.c.x)) | true));
    let var_3 = all(!select(select(vec4<bool>(arg_0.x, arg_0.x, false, global0.b.a.c.x), vec4<bool>(arg_0.x, var_1.b.c.x, false, false), vec4<bool>(arg_2.b.a.c.x, arg_2.b.b.c.x, false, var_2.x)), select(select(arg_2.b.a.c, vec4<bool>(global0.b.b.c.x, false, false, false), global0.b.b.c.x), global0.b.a.c, !var_2.x), false));
    return Struct_2(var_1.b, Struct_1(_wgslsmith_div_u32(abs(~u_input.c), ~min(4294967295u, global0.b.a.d)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(arg_2.b.a.b)), -218f, true)))), !select(arg_2.b.a.c, func_1(arg_2.b.a.b, Struct_4(Struct_3(arg_1.xz, Struct_2(Struct_1(arg_1.x, arg_2.b.b.b, var_1.a.c, 1u), global1[_wgslsmith_index_u32(4294967295u, 22u)])), arg_2.b.a.c.x, -1507f, vec2<f32>(641f, 1749f)), Struct_1(global0.b.b.a, -1473f, vec4<bool>(global0.b.a.c.x, var_1.a.c.x, true, arg_0.x), 4294967295u)).b.b.c, var_3), min(_wgslsmith_mod_u32(arg_1.x, func_1(-945f, Struct_4(Struct_3(global0.a, var_1), false, var_1.a.b, vec2<f32>(var_1.b.b, global0.b.b.b)), arg_2.b.a).a.x), firstTrailingBit(~arg_2.b.a.d))));
}

fn func_6(arg_0: Struct_2) -> vec2<u32> {
    global2 = !arg_0.a.c.x;
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1249f * _wgslsmith_f_op_f32(-524f * global0.b.b.b))), arg_0.b.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(arg_0.a.b, global0.b.a.b)), 1016f)))));
    let var_1 = true;
    let var_2 = Struct_4(func_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1000f + arg_0.b.b))), Struct_4(Struct_3(global0.a, global0.b), any(!arg_0.a.c.xxx), arg_0.b.b, var_0.yx), func_1(102f, Struct_4(func_1(-675f, Struct_4(Struct_3(vec2<u32>(arg_0.b.d, 12703u), Struct_2(global0.b.a, Struct_1(32225u, global0.b.b.b, arg_0.b.c, global0.a.x))), false, var_0.x, var_0.yz), global0.b.b), true, -347f, vec2<f32>(global0.b.b.b, arg_0.a.b)), func_5(vec3<bool>(arg_0.a.c.x, false, arg_0.b.c.x), vec3<u32>(4294967295u, 14827u, 0u), func_1(-1223f, Struct_4(Struct_3(global0.a, global0.b), arg_0.b.c.x, global0.b.a.b, vec2<f32>(global0.b.b.b, arg_0.a.b)), Struct_1(u_input.c, arg_0.b.b, global0.b.b.c, 29593u))).b).b.b), false, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_0.a.b)) * arg_0.a.b), _wgslsmith_f_op_f32(f32(-1f) * -603f)), arg_0.b.b)), vec2<f32>(arg_0.b.b, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-957f, -165f)), 925f))));
    var var_3 = func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b.a.b - var_2.a.b.b.b)))), var_2, Struct_1(func_5(vec3<bool>(!global0.b.a.c.x, arg_0.b.c.x, !arg_0.a.c.x), ~(vec3<u32>(var_2.a.b.b.d, arg_0.a.a, 4294967295u) << (vec3<u32>(1u, global0.b.a.a, var_2.a.a.x) % vec3<u32>(32u))), func_1(_wgslsmith_f_op_f32(var_0.x + -538f), Struct_4(Struct_3(var_2.a.a, var_2.a.b), var_2.b, -1118f, vec2<f32>(var_2.a.b.b.b, 631f)), func_5(var_2.a.b.b.c.yzy, vec3<u32>(arg_0.b.a, 5750u, var_2.a.a.x), Struct_3(vec2<u32>(13239u, 1u), Struct_2(Struct_1(0u, 1878f, var_2.a.b.b.c, u_input.c), Struct_1(4294967295u, var_2.c, var_2.a.b.b.c, var_2.a.a.x)))).b)).b.a, -969f, select(arg_0.b.c, global0.b.a.c, var_1), ~global0.b.b.d));
    return _wgslsmith_mod_vec2_u32(func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(-1311f)), _wgslsmith_f_op_f32(step(-1000f, arg_0.a.b))))), var_2, func_1(var_2.d.x, var_2, func_1(218f, var_2, Struct_1(global0.b.a.d, 404f, var_2.a.b.a.c, 3970u)).b.b).b.b).a, ~vec2<u32>(_wgslsmith_add_u32(~global0.a.x, _wgslsmith_mult_u32(var_2.a.b.a.a, var_2.a.b.b.d)), u_input.c));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_3(_wgslsmith_mod_vec2_u32(vec2<u32>(~u_input.c, u_input.c), func_6(func_5(global0.b.a.c.wwz, ~vec3<u32>(40124u, u_input.c, 1u), func_1(834f, Struct_4(Struct_3(vec2<u32>(18011u, 21268u), global0.b), global0.b.b.c.x, -1292f, vec2<f32>(-1410f, global0.b.b.b)), global0.b.b)))), func_1(global0.b.a.b, Struct_4(func_1(global0.b.b.b, Struct_4(Struct_3(global0.a, Struct_2(Struct_1(global0.a.x, -430f, vec4<bool>(global0.b.b.c.x, global0.b.b.c.x, global0.b.a.c.x, false), global0.a.x), global1[_wgslsmith_index_u32(u_input.c, 22u)])), false, global0.b.b.b, vec2<f32>(-101f, global0.b.a.b)), func_1(global0.b.b.b, Struct_4(Struct_3(vec2<u32>(global0.b.b.a, global0.b.b.a), global0.b), true, 261f, vec2<f32>(global0.b.a.b, global0.b.a.b)), Struct_1(u_input.c, -917f, vec4<bool>(false, false, global0.b.a.c.x, true), u_input.c)).b.b), true, 706f, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.b.b.b, global0.b.b.b)), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global0.b.a.b, global0.b.a.b)))))), Struct_1(~u_input.c, 160f, global0.b.b.c, ~4294967295u << (u_input.c % 32u))).b);
    let var_0 = ~countOneBits(_wgslsmith_sub_vec4_u32(vec4<u32>(32433u, _wgslsmith_mult_u32(1u, global0.b.a.d), 1419u, _wgslsmith_div_u32(86657u, 4294967295u)), ~vec4<u32>(4294967295u, global0.a.x, 18145u, global0.b.b.a)));
    let var_1 = _wgslsmith_mult_vec3_i32(u_input.b.zyx, min(vec3<i32>(global4[_wgslsmith_index_u32(u_input.c, 21u)], global3[_wgslsmith_index_u32(func_2().x, 29u)], ~abs(35220i)), vec3<i32>(16246i, global3[_wgslsmith_index_u32(~0u, 29u)], reverseBits(i32(-1i) * -2147483647i))));
    global1 = array<Struct_1, 22>();
    let var_2 = _wgslsmith_div_vec2_u32(var_0.xx, ~(~vec2<u32>(30391u, u_input.c) << (var_0.yy % vec2<u32>(32u)))) >> (vec2<u32>(var_0.x >> (~func_2().x % 32u), ~6722u) % vec2<u32>(32u));
    global3 = array<i32, 29>();
    let var_3 = _wgslsmith_dot_vec4_u32(~min(vec4<u32>(u_input.c, var_2.x, abs(419u), 0u & var_0.x), firstLeadingBit(vec4<u32>(44037u, 1u, 75698u, 82835u))), var_0);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -486f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-785f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global0.b.a.b * global0.b.a.b), global0.b.a.b)), -199f)));
}

