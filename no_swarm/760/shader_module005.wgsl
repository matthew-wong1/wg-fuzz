struct Struct_1 {
    a: bool,
    b: vec2<f32>,
}

struct Struct_2 {
    a: f32,
    b: bool,
    c: i32,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<u32>) -> f32 {
    let var_0 = Struct_4(!arg_0.b);
    let var_1 = var_0;
    let var_2 = reverseBits(reverseBits(-vec3<i32>(u_input.a, 14544i, -2147483647i) | abs(vec3<i32>(u_input.a, u_input.a, 38867i)))) << (arg_1 % vec3<u32>(32u));
    let var_3 = select(vec4<bool>(true, false, true, !select(true, true & var_0.a, arg_0.b)), !select(!(!vec4<bool>(true, var_0.a, true, var_1.a)), select(vec4<bool>(var_1.a, arg_0.b, true, var_0.a), select(vec4<bool>(false, arg_0.b, arg_0.b, var_0.a), vec4<bool>(arg_0.b, arg_0.b, arg_0.b, var_0.a), vec4<bool>(var_0.a, false, true, var_1.a)), select(vec4<bool>(arg_0.b, true, false, false), vec4<bool>(var_1.a, true, true, false), vec4<bool>(false, true, arg_0.b, true))), all(!vec2<bool>(var_1.a, false))), !any(vec2<bool>(true, true)));
    var var_4 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1704f))));
    return _wgslsmith_f_op_f32(f32(-1f) * -538f);
}

fn func_2() -> Struct_3 {
    var var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1776f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1259f, -650f) * _wgslsmith_f_op_f32(f32(-1f) * -573f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1487f * -213f), -1364f)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1940f, 764f, -1719f))), vec3<f32>(_wgslsmith_f_op_f32(-512f - -1429f), -868f, -559f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-748f, -2270f, -1524f), vec3<f32>(1f, 1f, 1f)))));
    var_0 = vec3<f32>(var_0.x, _wgslsmith_f_op_f32(1030f * var_0.x), _wgslsmith_f_op_f32(abs(1347f)));
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(floor(var_0.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_3(Struct_2(var_0.x, true, u_input.a), ~vec3<u32>(22686u, 25834u, 1u))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1028f * _wgslsmith_f_op_f32(-var_0.x)))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(757f)) - _wgslsmith_div_f32(_wgslsmith_div_f32(var_0.x, -217f), -1124f)))));
    let var_1 = select(select(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true)), any(vec2<bool>(true, false))), select(vec4<bool>(true, all(vec2<bool>(true, true)), select(true, false, false), true), vec4<bool>(true, true, false, true), select(select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true), false), vec4<bool>(true, true, true, true), any(vec4<bool>(true, false, true, true)))), select(select(vec4<bool>(true, true, false, false), select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, true)), vec4<bool>(false, false, false, false)), vec4<bool>(true, true, true, true), vec4<bool>(2147483647i >= u_input.a, true, true, any(vec2<bool>(true, false))))), vec4<bool>(all(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))), true, any(vec4<bool>(true, true, all(vec4<bool>(true, false, false, false)), true)), false), !vec4<bool>(!select(false, true, true), !all(vec2<bool>(false, false)), true, true));
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.x))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(var_0.x)), _wgslsmith_f_op_f32(min(-637f, var_0.x)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1297f) + _wgslsmith_f_op_f32(var_0.x + var_0.x)), 969f), -1153f);
    return Struct_3(_wgslsmith_f_op_f32(1774f * _wgslsmith_f_op_f32(-579f + var_0.x)));
}

fn func_1(arg_0: vec3<f32>) -> Struct_3 {
    let var_0 = ((_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0.x))) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_0.x, 402f)))) && !(true | all(vec4<bool>(false, false, true, true)))) && false;
    var var_1 = func_2();
    let var_2 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(988f, var_1.a), _wgslsmith_f_op_f32(var_1.a + -275f)) * vec2<f32>(_wgslsmith_f_op_f32(floor(var_1.a)), _wgslsmith_f_op_f32(-var_1.a))) + _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(arg_0.xy - arg_0.xz)))))), vec2<f32>(var_1.a, var_1.a), select(vec2<bool>(any(vec4<bool>(true, true, true, true)), true | !var_0), !vec2<bool>(var_0, var_0), select(!select(vec2<bool>(var_0, var_0), vec2<bool>(var_0, true), vec2<bool>(var_0, var_0)), !select(vec2<bool>(var_0, var_0), vec2<bool>(var_0, false), vec2<bool>(true, false)), var_0))));
    var var_3 = u_input.a;
    var_3 = u_input.a;
    return func_2();
}

fn func_4(arg_0: Struct_3) -> Struct_2 {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_0.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-830f + -259f), _wgslsmith_f_op_f32(trunc(1935f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.a, arg_0.a)))));
    var var_1 = Struct_1(false, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(314f, 1000f))))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_0.a)) + arg_0.a), _wgslsmith_f_op_f32(arg_0.a + 1f)))));
    var var_2 = _wgslsmith_mult_vec3_u32(vec3<u32>(_wgslsmith_div_u32(_wgslsmith_mult_u32(_wgslsmith_add_u32(0u, 1u), 1u), 32774u), min(4294967295u, ~firstTrailingBit(4446u)), ~(~1232u)), vec3<u32>(1u, 1u, 1u));
    var var_3 = select(select(vec4<bool>(any(!vec3<bool>(var_1.a, var_1.a, var_1.a)), (0i ^ u_input.a) <= -u_input.a, all(!vec2<bool>(var_1.a, true)), any(vec2<bool>(true, true))), !(!(!vec4<bool>(true, false, false, var_1.a))), !vec4<bool>(!var_1.a, var_1.a, any(vec4<bool>(false, true, var_1.a, true)), select(var_1.a, false, var_1.a))), select(select(vec4<bool>(arg_0.a > -1290f, true, !var_1.a, all(vec2<bool>(var_1.a, var_1.a))), vec4<bool>(var_1.a && true, select(false, true, false), !var_1.a, select(var_1.a, true, var_1.a)), vec4<bool>(false, var_1.a, u_input.a <= u_input.a, true)), select(!(!vec4<bool>(var_1.a, var_1.a, false, true)), select(!vec4<bool>(false, true, false, var_1.a), !vec4<bool>(false, var_1.a, true, false), var_1.a), !var_1.a), select(!(!vec4<bool>(var_1.a, true, false, false)), select(vec4<bool>(var_1.a, true, true, var_1.a), select(vec4<bool>(var_1.a, false, true, var_1.a), vec4<bool>(var_1.a, false, true, true), true), select(vec4<bool>(var_1.a, false, var_1.a, false), vec4<bool>(true, true, var_1.a, var_1.a), true)), all(select(vec4<bool>(false, true, var_1.a, true), vec4<bool>(var_1.a, var_1.a, false, var_1.a), var_1.a)))), select(!(!vec4<bool>(var_1.a, true, false, var_1.a)), select(vec4<bool>(select(false, true, true), var_1.a, false, var_1.a), !(!vec4<bool>(false, false, var_1.a, var_1.a)), var_1.a), select(select(vec4<bool>(var_1.a, true, var_1.a, false), !vec4<bool>(var_1.a, var_1.a, true, var_1.a), select(vec4<bool>(var_1.a, true, var_1.a, var_1.a), vec4<bool>(var_1.a, var_1.a, var_1.a, false), var_1.a)), vec4<bool>(true, true, false, all(vec4<bool>(var_1.a, var_1.a, var_1.a, var_1.a))), all(select(vec4<bool>(var_1.a, false, var_1.a, var_1.a), vec4<bool>(var_1.a, var_1.a, var_1.a, false), vec4<bool>(var_1.a, true, false, var_1.a))))));
    var var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(max(-1776f, -1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1863f + -1000f) + _wgslsmith_f_op_f32(floor(var_1.b.x))), _wgslsmith_f_op_f32(trunc(746f))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_1.b.x, _wgslsmith_f_op_f32(-var_1.b.x), _wgslsmith_f_op_f32(select(arg_0.a, arg_0.a, var_1.a)))))));
    return Struct_2(_wgslsmith_f_op_f32(-963f + _wgslsmith_f_op_f32(min(var_1.b.x, var_1.b.x))), false, 167i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 441f;
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -796f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -347f))))));
    var var_1 = func_4(func_1(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1409f, -1000f, -640f)))))));
    var_1 = func_4(func_2());
    var var_2 = var_1.c;
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(max(170f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-390f))))), var_1.a, _wgslsmith_div_f32(-136f, -712f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a)));
    let x = u_input.a;
    s_output = StorageBuffer(~countOneBits(319u));
}

