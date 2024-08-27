struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec4<u32>,
    c: vec4<i32>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
    c: bool,
}

struct Struct_5 {
    a: Struct_4,
    b: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 30> = array<vec2<i32>, 30>(vec2<i32>(2324i, 1i), vec2<i32>(1i, i32(-2147483648)), vec2<i32>(0i, -1i), vec2<i32>(-47371i, 61065i), vec2<i32>(-6730i, 30450i), vec2<i32>(-37510i, -54773i), vec2<i32>(-1i, -14990i), vec2<i32>(2147483647i, 2147483647i), vec2<i32>(6372i, i32(-2147483648)), vec2<i32>(0i, -12506i), vec2<i32>(2147483647i, 1i), vec2<i32>(1i, 0i), vec2<i32>(i32(-2147483648), -1i), vec2<i32>(14631i, 22003i), vec2<i32>(i32(-2147483648), -1i), vec2<i32>(-19656i, 17908i), vec2<i32>(1i, -20922i), vec2<i32>(-1i, -40072i), vec2<i32>(-1i, -1i), vec2<i32>(2147483647i, 38638i), vec2<i32>(0i, 1i), vec2<i32>(47949i, -12585i), vec2<i32>(-4059i, 0i), vec2<i32>(i32(-2147483648), 15289i), vec2<i32>(-25953i, i32(-2147483648)), vec2<i32>(-1i, 17651i), vec2<i32>(i32(-2147483648), -1i), vec2<i32>(2147483647i, 0i), vec2<i32>(25601i, 23544i), vec2<i32>(0i, 82982i));

var<private> global1: array<f32, 15> = array<f32, 15>(-1000f, 152f, 1173f, 1000f, 832f, -582f, -759f, 1839f, 432f, 922f, 239f, -654f, 949f, 387f, -214f);

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_1(arg_0: Struct_2) -> vec2<bool> {
    var var_0 = arg_0.c.a;
    var var_1 = false;
    global1 = array<f32, 15>();
    var_1 = arg_0.b | arg_0.b;
    var_1 = true;
    return vec2<bool>(min(u_input.b, reverseBits(~58402u)) <= (u_input.b & ~u_input.b), arg_0.b);
}

fn func_3(arg_0: vec3<f32>, arg_1: u32, arg_2: Struct_4) -> bool {
    var var_0 = select(!vec3<bool>(false, all(select(vec3<bool>(false, arg_2.c, true), vec3<bool>(true, arg_2.c, arg_2.c), true)), arg_2.a.b), select(select(select(!vec3<bool>(true, true, arg_2.a.b), vec3<bool>(false, false, true), !vec3<bool>(true, false, arg_2.a.b)), !vec3<bool>(true, arg_2.a.b, true), !arg_2.c), vec3<bool>(!arg_2.a.b, _wgslsmith_f_op_f32(round(global1[_wgslsmith_index_u32(arg_1, 15u)])) < 223f, !any(vec4<bool>(arg_2.c, arg_2.c, arg_2.a.b, false))), vec3<bool>(func_1(arg_2.a).x, 14966u == _wgslsmith_sub_u32(64929u, arg_2.b.b.x), any(func_1(Struct_2(arg_2.a.c, true, arg_2.a.a, arg_2.a.c))))), vec3<bool>(all(vec2<bool>(false, false)) | true, true, !(!arg_2.a.b)));
    let var_1 = i32(-1i) * -u_input.a;
    return true;
}

fn func_4(arg_0: Struct_2, arg_1: f32, arg_2: u32, arg_3: vec4<u32>) -> vec4<u32> {
    let var_0 = ~(~arg_3.zzx);
    global1 = array<f32, 15>();
    let var_1 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, -565f) * vec2<f32>(350f, arg_0.c.a)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(486f, -1686f))))))));
    let var_2 = ~(~var_0);
    return ~arg_3;
}

fn func_2(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: vec2<bool>, arg_3: u32) -> u32 {
    var var_0 = !(!select(!vec4<bool>(true, arg_2.x, arg_2.x, arg_2.x), vec4<bool>(arg_2.x, any(vec2<bool>(arg_2.x, false)), arg_2.x, false), vec4<bool>(arg_2.x, 2812u < arg_3, arg_2.x, -20023i >= u_input.a)));
    let var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.x, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(1u, 15u)]), 1000f)) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(694f, 253f, arg_1.x)), vec3<f32>(-345f, global1[_wgslsmith_index_u32(21028u, 15u)], _wgslsmith_f_op_f32(-arg_1.x)))), select(func_4(Struct_2(Struct_1(arg_1.x), func_3(vec3<f32>(558f, -1131f, global1[_wgslsmith_index_u32(4294967295u, 15u)]), arg_3, Struct_4(Struct_2(arg_0, false, arg_0, Struct_1(arg_0.a)), Struct_3(vec3<f32>(arg_0.a, arg_0.a, arg_0.a), vec4<u32>(0u, 1u, 10074u, 1u), vec4<i32>(6163i, -1i, -9193i, -4710i)), var_0.x)), arg_0, arg_0), _wgslsmith_f_op_f32(-102f - _wgslsmith_f_op_f32(max(-735f, arg_1.x))), u_input.b, ~vec4<u32>(4294967295u, 1u, 1u, 31338u)), _wgslsmith_add_vec4_u32(~vec4<u32>(u_input.b, u_input.b, arg_3, arg_3), vec4<u32>(_wgslsmith_mult_u32(u_input.b, u_input.b), u_input.b, 1u, arg_3)), !(!select(vec4<bool>(false, arg_2.x, arg_2.x, true), vec4<bool>(var_0.x, var_0.x, false, true), var_0.x))), abs(max(vec4<i32>(firstLeadingBit(0i), min(-2147483647i, -20002i), ~u_input.a, countOneBits(u_input.a)), _wgslsmith_mod_vec4_i32(-vec4<i32>(14302i, u_input.a, u_input.a, 7855i), vec4<i32>(u_input.a, 733i, 30967i, 7728i)))));
    global1 = array<f32, 15>();
    var_0 = vec4<bool>(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(var_1.b.x, 12705u, var_1.b.x), vec3<u32>(4294967295u, 1u, 47846u)), var_1.b.wxw) <= select(min(u_input.b, 35627u) << (arg_3 % 32u), 1u ^ (arg_3 | arg_3), false), all(select(vec4<bool>(true, any(vec4<bool>(arg_2.x, true, false, true)), all(vec4<bool>(false, arg_2.x, true, arg_2.x)), true), select(select(vec4<bool>(var_0.x, var_0.x, var_0.x, true), vec4<bool>(var_0.x, arg_2.x, arg_2.x, false), arg_2.x), vec4<bool>(false, var_0.x, arg_2.x, true), select(vec4<bool>(true, false, false, var_0.x), vec4<bool>(var_0.x, var_0.x, arg_2.x, var_0.x), arg_2.x)), select(all(arg_2), var_0.x, all(vec3<bool>(false, true, true))))), var_1.c.x >= _wgslsmith_add_i32(-1i, 0i), arg_2.x);
    var var_2 = Struct_2(arg_0, !arg_2.x, Struct_1(837f), arg_0);
    return ~arg_3;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~1u & firstLeadingBit(func_2(Struct_1(-705f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(1u, 15u)], global1[_wgslsmith_index_u32(u_input.b, 15u)])), select(func_1(Struct_2(Struct_1(-831f), true, Struct_1(989f), Struct_1(global1[_wgslsmith_index_u32(0u, 15u)]))), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true)), func_1(Struct_2(Struct_1(global1[_wgslsmith_index_u32(7412u, 15u)]), false, Struct_1(136f), Struct_1(-664f)))), ~(~u_input.b)));
    global1 = array<f32, 15>();
    var var_1 = all(!select(select(func_1(Struct_2(Struct_1(-770f), false, Struct_1(global1[_wgslsmith_index_u32(u_input.b, 15u)]), Struct_1(-1239f))), vec2<bool>(true, true), all(vec2<bool>(false, false))), vec2<bool>(any(vec4<bool>(false, true, true, true)), func_3(vec3<f32>(-1842f, 705f, global1[_wgslsmith_index_u32(u_input.b, 15u)]), 45031u, Struct_4(Struct_2(Struct_1(-209f), true, Struct_1(-289f), Struct_1(global1[_wgslsmith_index_u32(u_input.b, 15u)])), Struct_3(vec3<f32>(global1[_wgslsmith_index_u32(u_input.b, 15u)], global1[_wgslsmith_index_u32(u_input.b, 15u)], global1[_wgslsmith_index_u32(u_input.b, 15u)]), vec4<u32>(u_input.b, u_input.b, 70518u, 4294967295u), vec4<i32>(2147483647i, u_input.a, 4495i, u_input.a)), true))), true));
    let var_2 = Struct_2(Struct_1(global1[_wgslsmith_index_u32(u_input.b, 15u)]), true, Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -687f)), Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1061f - _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.b, 15u)] * 1776f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.b, 15u)] - -1000f))))));
    var_0 = abs(0u);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(-685f, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1090f + global1[_wgslsmith_index_u32(1u, 15u)]), 1312f))), _wgslsmith_f_op_f32(-var_2.c.a), _wgslsmith_f_op_f32(-var_2.d.a)), u_input.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -707f))) + var_2.d.a));
}

