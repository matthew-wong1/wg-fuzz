struct Struct_1 {
    a: u32,
    b: f32,
    c: f32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 567f;

var<private> global1: vec2<bool> = vec2<bool>(true, true);

var<private> global2: f32;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_2, arg_1: f32, arg_2: Struct_1, arg_3: Struct_2) -> u32 {
    var var_0 = 1i;
    return 31093u;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool) -> bool {
    var var_0 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(arg_1.b - arg_0.b), _wgslsmith_f_op_f32(floor(arg_0.c)), _wgslsmith_f_op_f32(arg_1.c + 1072f)))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_1.b, -330f, 267f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(424f, arg_1.b, arg_0.c)) + vec3<f32>(-758f, -1561f, arg_0.b))))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(205f, arg_1.b, -1000f))))));
    var var_1 = var_0.yz;
    let var_2 = Struct_1(63741u, var_0.x, 1311f);
    var_1 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(trunc(264f)), arg_1.c) * var_0.yx), vec2<f32>(-1000f, _wgslsmith_f_op_f32(var_2.b * -1000f))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.xx) * vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 588f)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.c)), _wgslsmith_f_op_f32(select(arg_1.b, _wgslsmith_f_op_f32(f32(-1f) * -1141f), global1.x))))), vec2<bool>(!global1.x, all(select(vec4<bool>(false, arg_2, arg_2, global1.x), !vec4<bool>(false, global1.x, false, true), false)))));
    var_1 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(2092f, 1009f))), 1000f) + _wgslsmith_f_op_vec2_f32(var_0.zz + _wgslsmith_f_op_vec2_f32(-var_0.xz)))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_1.x))) * _wgslsmith_div_f32(var_2.c, _wgslsmith_f_op_f32(f32(-1f) * -303f))) >= 1926f;
}

fn func_2(arg_0: vec3<f32>, arg_1: u32) -> Struct_1 {
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x - arg_0.x)))));
    global1 = !vec2<bool>(true || global1.x, true);
    global0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(arg_0.x, _wgslsmith_f_op_f32(f32(-1f) * -1468f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-989f * 1797f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(603f * arg_0.x), _wgslsmith_f_op_f32(-arg_0.x))) * 140f)), global1.x));
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(arg_0.x)))));
    global1 = !vec2<bool>(func_4(Struct_1(17974u & arg_1, _wgslsmith_f_op_f32(step(-990f, -575f)), arg_0.x), Struct_1(func_3(Struct_2(619f, Struct_1(46061u, -402f, -1350f), global1.x), arg_0.x, Struct_1(u_input.a, 1368f, arg_0.x), Struct_2(arg_0.x, Struct_1(u_input.a, arg_0.x, arg_0.x), global1.x)), 1950f, _wgslsmith_f_op_f32(-arg_0.x)), -281f < arg_0.x), all(select(!vec4<bool>(global1.x, false, global1.x, global1.x), vec4<bool>(global1.x, global1.x, global1.x, false), select(vec4<bool>(global1.x, false, global1.x, false), vec4<bool>(false, global1.x, global1.x, global1.x), true))));
    return Struct_1(1u, arg_0.x, arg_0.x);
}

fn func_1(arg_0: vec2<u32>, arg_1: f32) -> f32 {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(ceil(500f)), func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-714f, 315f, -1000f)))), ~(~arg_0.x) & ~4294967295u), select(!(true & any(vec2<bool>(true, true))), global1.x, global1.x | !any(vec3<bool>(global1.x, true, global1.x))));
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0.a, _wgslsmith_div_f32(-2503f, -553f))) + arg_1))), _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_1, 2083f, var_0.b.c)))), _wgslsmith_sub_u32(6032u ^ u_input.a, 25519u)).b * arg_1)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(func_1(~(~(~(vec2<u32>(86605u, 41649u) & vec2<u32>(u_input.a, 1u)))), _wgslsmith_f_op_f32(-1818f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2165f)))));
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1f)) - _wgslsmith_f_op_f32(select(-140f, 1019f, func_4(Struct_1(func_2(vec3<f32>(999f, -241f, -1253f), u_input.a).a, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -596f)), func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1432f, -1019f, -1567f)), u_input.a), false))));
    var var_1 = vec3<bool>(any(!(!vec2<bool>(global1.x, global1.x))), true, global1.x);
    var_1 = !(!select(!(!vec3<bool>(false, global1.x, true)), vec3<bool>(false, true, func_4(Struct_1(u_input.a, 2290f, var_0), Struct_1(u_input.a, -1000f, 338f), var_1.x)), select(select(vec3<bool>(var_1.x, false, global1.x), vec3<bool>(global1.x, global1.x, true), true), vec3<bool>(false, false, global1.x), true)));
    global2 = var_0;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0))));
    var var_3 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(var_0, var_0)))) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -818f), var_0)))), func_2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2, var_2, -143f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, -1000f, var_0)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2, -593f, -602f)), any(select(vec3<bool>(var_1.x, true, false), vec3<bool>(global1.x, global1.x, var_1.x), true)))), 83881u), all(!(!vec3<bool>(true, var_1.x, true))));
    var_3 = Struct_2(_wgslsmith_f_op_f32(var_3.a - _wgslsmith_f_op_f32(-var_0)), Struct_1(~(~_wgslsmith_add_u32(u_input.a, u_input.a)), var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2, var_3.a)))), true);
    var var_4 = Struct_2(_wgslsmith_div_f32(func_2(vec3<f32>(550f, var_0, _wgslsmith_f_op_f32(max(var_2, var_2))), ~var_3.b.a).b, 1000f), Struct_1(_wgslsmith_clamp_u32(~(u_input.a | u_input.a), _wgslsmith_add_u32(u_input.a, u_input.a), 1u), 1542f, -847f), var_1.x);
    let x = u_input.a;
    s_output = StorageBuffer(45552u, 18318i, vec3<u32>(u_input.a, firstLeadingBit(14271u), ~reverseBits(var_4.b.a)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.b.b + _wgslsmith_f_op_f32(ceil(var_0)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-436f, 716f)))));
}

