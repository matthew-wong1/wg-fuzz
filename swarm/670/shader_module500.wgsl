struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: vec4<i32>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec4<bool>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
    c: Struct_2,
    d: bool,
}

struct Struct_5 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: u32,
    d: vec2<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec3<bool>(true, false, true), vec4<bool>(false, true, false, false));

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: i32, arg_1: u32, arg_2: f32, arg_3: vec3<bool>) -> f32 {
    let var_0 = u_input.a.x;
    global0 = Struct_3(global0.a, !select(select(global0.b, vec4<bool>(true, global0.a.x, arg_3.x, false), false), vec4<bool>(true, any(vec4<bool>(arg_3.x, false, arg_3.x, global0.b.x)), global0.b.x, true), vec4<bool>(false, !global0.a.x, any(global0.b), !global0.b.x)));
    let var_1 = vec4<i32>(-2147483647i, -1i, _wgslsmith_div_i32(arg_0, arg_0), min(~(-2147483647i), ~_wgslsmith_div_i32(u_input.b << (arg_1 % 32u), arg_0)));
    let var_2 = Struct_2(_wgslsmith_f_op_f32(min(-764f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2 + _wgslsmith_f_op_f32(arg_2 + -1668f)) - arg_2))), _wgslsmith_f_op_f32(241f + arg_2), countOneBits(vec4<i32>(min(u_input.c.x, _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.x, var_1.x, -2147483647i, 16223i), var_1)), 1i << (arg_1 % 32u), _wgslsmith_add_i32(~u_input.c.x, arg_0 << (13198u % 32u)), ~8227i)));
    global0 = Struct_3(!select(!select(vec3<bool>(false, true, false), vec3<bool>(global0.a.x, arg_3.x, global0.b.x), arg_3), vec3<bool>(false, false, var_2.c.x >= u_input.c.x), arg_3), select(global0.b, select(global0.b, !(!global0.b), vec4<bool>(true, !global0.a.x, arg_3.x, any(global0.a.xy))), vec4<bool>(true, !arg_3.x, !arg_3.x, global0.b.x)));
    return _wgslsmith_f_op_f32(f32(-1f) * -1176f);
}

fn func_2() -> vec4<i32> {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-818f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(702f, -359f))))) - _wgslsmith_f_op_f32(-1638f + _wgslsmith_f_op_f32(max(-1447f, _wgslsmith_f_op_f32(-2096f * _wgslsmith_f_op_f32(min(-175f, -627f)))))));
    var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(-1i, 1u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-367f - -833f)), global0.a)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1065f - 1837f) - _wgslsmith_f_op_f32(334f - 300f)))), _wgslsmith_f_op_f32(ceil(-615f)));
    return vec4<i32>(~(~_wgslsmith_clamp_i32(~u_input.b, 69534i, u_input.b)), u_input.b, _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(select(_wgslsmith_mult_vec4_i32(vec4<i32>(13976i, u_input.b, -1i, 1i), vec4<i32>(39844i, -15580i, u_input.c.x, 5832i)), select(vec4<i32>(-65078i, u_input.c.x, 2147483647i, u_input.b), vec4<i32>(-66406i, u_input.b, 2147483647i, 8360i), vec4<bool>(false, true, true, false)), !vec4<bool>(global0.a.x, false, false, true)), vec4<i32>(-1i) * -vec4<i32>(-15299i, u_input.c.x, -2147483647i, u_input.c.x)), -min(~vec4<i32>(u_input.b, 26921i, 0i, -1i), vec4<i32>(0i, -2147483647i, 1i, u_input.c.x))), u_input.c.x);
}

fn func_4(arg_0: vec3<i32>, arg_1: vec4<i32>, arg_2: i32, arg_3: Struct_2) -> Struct_3 {
    var var_0 = Struct_3(vec3<bool>(any(select(!global0.b, !vec4<bool>(global0.b.x, global0.a.x, global0.a.x, global0.b.x), global0.b)), _wgslsmith_f_op_f32(select(arg_3.a, _wgslsmith_f_op_f32(arg_3.a * arg_3.b), true)) > _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-200f, 138f))), false), global0.b);
    let var_1 = Struct_4(Struct_3(global0.b.wzw, global0.b), arg_3, arg_3, false);
    var var_2 = true & (var_1.b.c.x != ~_wgslsmith_add_i32(u_input.c.x, u_input.c.x));
    let var_3 = u_input.a.x;
    var_0 = var_1.a;
    return var_1.a;
}

fn func_5(arg_0: Struct_3) -> vec4<f32> {
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1031f, _wgslsmith_f_op_f32(1f * -918f), -113f, _wgslsmith_f_op_f32(func_3(-u_input.b, 1u | u_input.a.x, 908f, !global0.b.yzy))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-238f, 1083f, -926f, -1768f)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-915f, 935f, -567f, -1324f) + vec4<f32>(-338f, -610f, 2405f, -797f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(106f, -239f, -579f, -856f))))) * _wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(155f + -286f), -218f, -229f, -579f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-232f, 1000f, -965f, 1000f)))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(719f, -1000f, 632f, -722f)))))));
}

fn func_1(arg_0: f32, arg_1: Struct_5) -> f32 {
    var var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_5(func_4(u_input.c, func_2(), -2147483647i, Struct_2(960f, -389f, vec4<i32>(-2147483647i, -8449i, u_input.b, -32882i))))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, _wgslsmith_f_op_f32(step(-223f, 219f)), 643f, _wgslsmith_f_op_f32(799f - 2502f)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, arg_0, arg_0, arg_0) - vec4<f32>(-1722f, 168f, arg_0, -558f)) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(425f, arg_0, -1292f, arg_0), vec4<f32>(arg_0, -668f, arg_0, arg_0), true))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1567f, 916f, 1000f, -1356f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, -1462f, arg_0, -1436f))))));
    var var_1 = abs(-2147483647i) ^ abs(u_input.c.x);
    let var_2 = vec4<f32>(-1899f, var_0.x, var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 - 196f)) + arg_0)));
    global0 = Struct_3(!vec3<bool>(_wgslsmith_f_op_f32(ceil(var_2.x)) == _wgslsmith_f_op_f32(1100f - var_0.x), all(!vec4<bool>(false, true, false, arg_1.a.x)), !global0.a.x), vec4<bool>(all(select(global0.b, vec4<bool>(true, false, false, true), vec4<bool>(true, true, arg_1.a.x, true))), var_2.x < _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(var_2.x)))), all(global0.b), all(!select(global0.a.xx, vec2<bool>(arg_1.a.x, false), false))));
    let var_3 = _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(643f)) + _wgslsmith_f_op_f32(496f + 1166f)) + _wgslsmith_f_op_f32(-var_2.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * 670f))))));
    return _wgslsmith_f_op_f32(276f - arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<bool>(_wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_f32(-328f - _wgslsmith_f_op_f32(1000f - 751f)), Struct_5(select(vec4<bool>(global0.b.x, global0.a.x, false, false), vec4<bool>(true, global0.a.x, global0.a.x, true), true)))) < _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -323f), -143f))), false);
    global0 = Struct_3(global0.b.yxx, vec4<bool>(true, all(!vec3<bool>(global0.a.x, false, true)) || global0.b.x, all(global0.b), global0.b.x));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(596f, -100f)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1465f, -1935f) + vec2<f32>(1138f, -1050f)), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-2181f, -1024f))))) * _wgslsmith_f_op_vec2_f32(round(vec2<f32>(487f, 800f))))));
    global0 = Struct_3(global0.b.wyz, global0.b);
    global0 = Struct_3(vec3<bool>(!any(!global0.a), true, func_4(-u_input.c, ~vec4<i32>(-25475i, u_input.c.x, u_input.c.x, -37070i), _wgslsmith_dot_vec2_i32(u_input.c.xx, vec2<i32>(-2147483647i, u_input.c.x)), Struct_2(var_1.x, -1952f, vec4<i32>(1i, 0i, u_input.b, u_input.b))).b.x | all(select(global0.b.wxz, global0.b.xxz, global0.b.xxy))), vec4<bool>(!(~u_input.a.x > 19173u), !var_0.x, var_0.x, true));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec4_f32(func_5(Struct_3(!(!global0.a), global0.b))).wzw);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(ceil(1077f)), _wgslsmith_mult_u32(4294967295u, u_input.a.x), u_input.a.x, -u_input.c.zz | u_input.c.zy, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-638f - 1431f)))));
}

