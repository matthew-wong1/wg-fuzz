struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec4<i32>,
    d: vec2<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_1, arg_1: f32) -> vec3<bool> {
    var var_0 = select(vec2<bool>(all(vec4<bool>(all(vec2<bool>(true, arg_0.a)), false, !arg_0.a, true)), arg_0.a), !(!vec2<bool>(select(arg_0.a, arg_0.a, false), arg_0.a)), true);
    var_0 = !vec2<bool>(!any(select(vec4<bool>(true, false, false, false), vec4<bool>(var_0.x, arg_0.a, true, true), vec4<bool>(false, false, true, false))), false);
    var var_1 = select(select(vec3<bool>(arg_0.a, all(!vec2<bool>(arg_0.a, arg_0.a)), arg_0.a), select(!(!vec3<bool>(false, var_0.x, false)), !(!vec3<bool>(true, var_0.x, var_0.x)), !(!vec3<bool>(var_0.x, false, var_0.x))), vec3<bool>(true, true, firstLeadingBit(0u) <= u_input.e.x)), select(select(select(vec3<bool>(true, true, false), select(vec3<bool>(true, false, arg_0.a), vec3<bool>(arg_0.a, arg_0.a, arg_0.a), vec3<bool>(true, true, var_0.x)), select(vec3<bool>(arg_0.a, false, arg_0.a), vec3<bool>(true, arg_0.a, true), false)), vec3<bool>(true, arg_1 > arg_1, arg_0.a), !arg_0.a), vec3<bool>(max(19615u, u_input.e.x) <= _wgslsmith_add_u32(u_input.e.x, u_input.e.x), true, -u_input.b.x < _wgslsmith_mult_i32(-40840i, 1i)), !vec3<bool>(false || var_0.x, true, true)), select(!vec3<bool>(any(vec4<bool>(false, false, arg_0.a, false)), false, u_input.e.x >= u_input.e.x), vec3<bool>(select(arg_0.a, arg_0.a, true) && arg_0.a, select(!arg_0.a, all(vec3<bool>(false, false, arg_0.a)), false), true), !(arg_1 <= _wgslsmith_f_op_f32(-348f + arg_1))));
    var_0 = vec2<bool>(~u_input.e.x < u_input.e.x, select(all(!(!vec2<bool>(arg_0.a, false))), u_input.e.x != firstTrailingBit(u_input.e.x), false));
    var_0 = select(var_1.xx, select(!(!(!vec2<bool>(arg_0.a, arg_0.a))), vec2<bool>(!(!var_0.x), !all(var_1.xz)), true), !(!select(var_1.yy, select(vec2<bool>(false, true), var_1.yy, var_1.xz), !var_1.x)));
    return vec3<bool>(all(vec3<bool>((39922u | u_input.e.x) == u_input.e.x, true, select(true, all(vec4<bool>(arg_0.a, false, false, false)), var_0.x & true))), var_1.x, false);
}

fn func_2(arg_0: f32, arg_1: vec4<bool>) -> Struct_1 {
    let var_0 = Struct_1(true);
    var var_1 = vec4<bool>(any(func_3(var_0, _wgslsmith_f_op_f32(sign(-1124f)))), !var_0.a, true, true);
    var_1 = arg_1;
    var_1 = vec4<bool>(all(var_1.zxz), all(arg_1) & false, any(vec2<bool>(!var_0.a, !var_0.a)), false);
    var var_2 = arg_0;
    return var_0;
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: Struct_1) -> f32 {
    var var_0 = vec4<i32>(u_input.b.x, -u_input.c.x, ~39957i, u_input.c.x);
    var var_1 = _wgslsmith_f_op_f32(336f - arg_0);
    var_1 = _wgslsmith_f_op_f32(trunc(-1555f));
    let var_2 = Struct_1(false);
    var var_3 = var_2;
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_0)));
}

fn func_1(arg_0: vec2<u32>, arg_1: vec3<u32>, arg_2: i32, arg_3: vec2<u32>) -> f32 {
    var var_0 = false;
    var_0 = true;
    var var_1 = Struct_1(_wgslsmith_dot_vec3_i32(vec3<i32>(-arg_2, ~arg_2, -2147483647i), u_input.c.zyy) <= ~(-_wgslsmith_div_i32(-2147483647i, u_input.d.x)));
    let var_2 = _wgslsmith_f_op_f32(-160f * -409f);
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-969f - var_2), var_2)), func_2(_wgslsmith_f_op_f32(sign(var_2)), vec4<bool>(var_1.a, var_1.a, true, var_1.a)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2, 2039f, 1643f) * vec3<f32>(var_2, 1013f, 1000f))), func_2(-481f, !vec4<bool>(var_1.a, var_1.a, var_1.a, var_1.a)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-106f * var_2) * _wgslsmith_f_op_f32(sign(-990f))) - _wgslsmith_f_op_f32(196f * _wgslsmith_f_op_f32(-var_2)))), -1719f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2 - _wgslsmith_f_op_f32(min(var_2, _wgslsmith_f_op_f32(step(-713f, var_2))))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(411f - var_2)) - var_2)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1094f, _wgslsmith_f_op_f32(f32(-1f) * -466f)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_u32(u_input.e.x, 0u);
    let var_1 = u_input.c.yw;
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1316f, 1000f)) - 1291f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-528f - 404f), 875f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_1(u_input.e.yz, u_input.e, -1i, vec2<u32>(4294967295u, u_input.e.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(498f * 1000f)))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(905f - -757f), _wgslsmith_f_op_f32(-781f * -1118f), _wgslsmith_f_op_f32(f32(-1f) * -923f), _wgslsmith_f_op_f32(round(834f))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(1650f, -390f, 225f, 290f) + vec4<f32>(525f, 554f, -1795f, -166f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(190f, -1014f, -610f, -195f), vec4<f32>(222f, 250f, 124f, -297f), vec4<bool>(false, false, true, true))), true))), vec4<f32>(_wgslsmith_f_op_f32(step(-1000f, 1f)), _wgslsmith_f_op_f32(-555f - -880f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(-719f, -538f)))), _wgslsmith_f_op_f32(ceil(-413f)))));
    var_0 = 1u;
    var_0 = ~(~(~47327u));
    let var_3 = u_input.c.x;
    let var_4 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1307f, var_2.x))) + _wgslsmith_div_f32(_wgslsmith_div_f32(var_2.x, var_2.x), _wgslsmith_div_f32(var_2.x, var_2.x)))), !select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), false), !select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), false), vec4<bool>(true, true, true, true)));
    var_0 = u_input.e.x;
    var var_5 = var_4;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.e, ~(~u_input.e) >> (~vec3<u32>(u_input.e.x, ~u_input.e.x, reverseBits(1u)) % vec3<u32>(32u)));
}

