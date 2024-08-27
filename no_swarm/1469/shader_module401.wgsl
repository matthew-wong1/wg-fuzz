struct Struct_1 {
    a: vec2<bool>,
    b: vec2<bool>,
    c: bool,
    d: vec4<u32>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: bool,
    c: Struct_2,
    d: u32,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<bool>,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<f32>,
    c: u32,
    d: f32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_3) -> u32 {
    var var_0 = vec4<bool>(arg_0.b, !arg_0.c.a.c, select(arg_0.c.a.b.x, _wgslsmith_mod_u32(u_input.b >> (u_input.b % 32u), select(70746u, arg_0.c.a.d.x, arg_0.b)) >= 1u, true), arg_0.b);
    var var_1 = ~arg_0.c.a.e.x;
    var var_2 = select(select(select(select(select(vec4<bool>(arg_0.c.a.c, arg_0.b, true, false), vec4<bool>(false, false, true, arg_0.c.a.a.x), vec4<bool>(arg_0.c.a.a.x, false, arg_0.b, true)), !vec4<bool>(arg_0.b, false, arg_0.b, arg_0.c.a.a.x), select(vec4<bool>(arg_0.b, false, true, var_0.x), vec4<bool>(arg_0.b, true, arg_0.b, true), vec4<bool>(true, var_0.x, arg_0.c.a.b.x, var_0.x))), vec4<bool>(true, arg_0.a >= arg_0.c.a.d.x, any(var_0.wyx), true), select(select(vec4<bool>(false, false, true, arg_0.b), vec4<bool>(var_0.x, false, false, false), arg_0.b), !vec4<bool>(true, false, false, arg_0.c.a.a.x), !vec4<bool>(false, true, false, arg_0.c.a.b.x))), vec4<bool>(all(var_0.wz) != (arg_0.d < u_input.b), any(!var_0.zzw), true, true), var_0.x), select(select(select(!vec4<bool>(arg_0.b, var_0.x, true, true), !vec4<bool>(true, var_0.x, var_0.x, arg_0.c.a.b.x), !vec4<bool>(arg_0.c.a.b.x, true, var_0.x, var_0.x)), select(select(vec4<bool>(true, true, arg_0.c.a.a.x, arg_0.c.a.a.x), vec4<bool>(false, true, var_0.x, true), vec4<bool>(arg_0.c.a.a.x, false, var_0.x, false)), select(vec4<bool>(arg_0.c.a.c, var_0.x, false, var_0.x), vec4<bool>(true, true, true, true), vec4<bool>(var_0.x, arg_0.c.a.c, true, true)), true), _wgslsmith_clamp_u32(0u, arg_0.c.a.d.x, 1u) == (44181u | u_input.b)), select(!select(vec4<bool>(var_0.x, true, true, var_0.x), vec4<bool>(false, arg_0.b, true, var_0.x), vec4<bool>(var_0.x, arg_0.b, var_0.x, true)), vec4<bool>(arg_0.b, var_0.x, arg_0.c.a.c || false, false), any(!var_0.yww)), select(select(vec4<bool>(var_0.x, arg_0.b, false, var_0.x), vec4<bool>(arg_0.b, true, false, false), select(vec4<bool>(arg_0.c.a.b.x, false, arg_0.c.a.c, arg_0.c.a.c), vec4<bool>(arg_0.b, var_0.x, true, var_0.x), false)), !vec4<bool>(var_0.x, var_0.x, false, var_0.x), false)), all(var_0.xxx));
    var_2 = !(!(!(!select(vec4<bool>(true, var_2.x, var_2.x, false), vec4<bool>(true, var_2.x, false, var_2.x), arg_0.c.a.b.x))));
    var var_3 = countOneBits(-32335i);
    return _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 150441u, 5946u, max(arg_0.c.a.d.x, u_input.b) & _wgslsmith_mod_u32(arg_0.c.a.d.x, arg_0.a & arg_0.a)), arg_0.c.a.d);
}

fn func_4(arg_0: f32, arg_1: vec4<u32>, arg_2: f32, arg_3: Struct_4) -> f32 {
    let var_0 = u_input.a.x << (~24440u % 32u);
    var var_1 = arg_3.a;
    return arg_2;
}

fn func_2(arg_0: i32, arg_1: Struct_2, arg_2: Struct_1, arg_3: Struct_4) -> f32 {
    var var_0 = arg_3;
    var var_1 = arg_3.a;
    var_0 = Struct_4(arg_3.a, arg_1.a.a, arg_1.a.b);
    var_0 = arg_3;
    var var_2 = 48950u != u_input.b;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(664f - 1088f))), vec4<u32>(~31368u, 31803u, func_3(arg_3.a), _wgslsmith_clamp_u32(1u, arg_2.d.x, 4294967295u)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1000f * 495f), _wgslsmith_f_op_f32(round(1000f)))), arg_3))));
}

fn func_1(arg_0: vec3<u32>) -> u32 {
    var var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1550f, -123f, -1799f))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1440f), _wgslsmith_f_op_f32(ceil(-1179f)), _wgslsmith_f_op_f32(-992f * 573f)), select(select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, true, false)), vec3<bool>(true, true, true), true))), _wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) + vec3<f32>(1f, 1f, 1f)))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(trunc(1713f)), _wgslsmith_f_op_f32(floor(-136f)), -676f), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -419f), _wgslsmith_f_op_f32(step(-102f, 629f)), -295f) - vec3<f32>(_wgslsmith_f_op_f32(func_2(12021i, Struct_2(Struct_1(vec2<bool>(false, true), vec2<bool>(true, true), false, vec4<u32>(arg_0.x, u_input.b, arg_0.x, arg_0.x), vec3<i32>(u_input.d.x, u_input.c, u_input.a.x))), Struct_1(vec2<bool>(true, true), vec2<bool>(false, false), false, vec4<u32>(u_input.b, arg_0.x, u_input.b, 4294967295u), vec3<i32>(u_input.c, u_input.c, u_input.a.x)), Struct_4(Struct_3(u_input.b, true, Struct_2(Struct_1(vec2<bool>(true, true), vec2<bool>(false, false), true, vec4<u32>(43696u, arg_0.x, 4294967295u, u_input.b), u_input.d)), 4294967295u), vec2<bool>(true, true), vec2<bool>(false, true)))), _wgslsmith_f_op_f32(417f + 1707f), _wgslsmith_f_op_f32(func_4(-1295f, vec4<u32>(4294967295u, 1u, arg_0.x, 4294967295u), 619f, Struct_4(Struct_3(57955u, false, Struct_2(Struct_1(vec2<bool>(false, false), vec2<bool>(true, false), false, vec4<u32>(arg_0.x, u_input.b, arg_0.x, u_input.b), vec3<i32>(-2147483647i, u_input.a.x, 2147483647i))), arg_0.x), vec2<bool>(false, false), vec2<bool>(false, true)))))), true)));
    let var_1 = true;
    let var_2 = select(select(vec2<bool>(true, true), vec2<bool>(true, _wgslsmith_f_op_f32(-var_0.x) <= _wgslsmith_f_op_f32(trunc(var_0.x))), all(select(select(vec4<bool>(false, false, true, var_1), vec4<bool>(var_1, true, var_1, var_1), vec4<bool>(true, var_1, var_1, var_1)), !vec4<bool>(var_1, false, false, false), !vec4<bool>(var_1, false, var_1, true)))), !select(select(!vec2<bool>(var_1, false), select(vec2<bool>(var_1, var_1), vec2<bool>(false, var_1), var_1), !var_1), !(!vec2<bool>(var_1, false)), vec2<bool>(var_1, !var_1)), !select(vec2<bool>(true, var_1 || var_1), select(!vec2<bool>(true, var_1), select(vec2<bool>(false, var_1), vec2<bool>(var_1, var_1), vec2<bool>(false, var_1)), false), !vec2<bool>(var_1, true)));
    var var_3 = _wgslsmith_f_op_vec2_f32(exp2(var_0.zy));
    let var_4 = Struct_2(Struct_1(vec2<bool>(var_2.x, !(-1681f <= var_3.x)), var_2, select(74678i >= abs(u_input.c), true, any(vec2<bool>(var_2.x, var_1))), _wgslsmith_mult_vec4_u32(~vec4<u32>(arg_0.x, arg_0.x, 0u, 5418u) << (~vec4<u32>(arg_0.x, arg_0.x, 1u, u_input.b) % vec4<u32>(32u)), min(vec4<u32>(u_input.b, arg_0.x, arg_0.x, 13773u) | vec4<u32>(4294967295u, arg_0.x, 61748u, 0u), vec4<u32>(2352u, u_input.b, u_input.b, arg_0.x))), u_input.a.xyy));
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~u_input.b;
    let var_1 = true;
    var var_2 = -2147483647i;
    var var_3 = ~reverseBits(func_1(abs(~vec3<u32>(1u, u_input.b, 1u))));
    let var_4 = Struct_4(Struct_3(u_input.b, false, Struct_2(Struct_1(!vec2<bool>(var_1, false), select(vec2<bool>(var_1, true), vec2<bool>(true, var_1), var_1), var_1, abs(vec4<u32>(u_input.b, u_input.b, 120438u, u_input.b)), -u_input.a.zxy)), 1u), !select(select(!vec2<bool>(var_1, var_1), !vec2<bool>(var_1, var_1), u_input.b > 16502u), select(vec2<bool>(false, true), select(vec2<bool>(var_1, true), vec2<bool>(false, true), vec2<bool>(var_1, true)), select(vec2<bool>(true, false), vec2<bool>(var_1, false), var_1)), !vec2<bool>(true, var_1)), select(select(!vec2<bool>(var_1, var_1), !select(vec2<bool>(var_1, true), vec2<bool>(var_1, var_1), vec2<bool>(var_1, var_1)), vec2<bool>(true, true)), vec2<bool>(all(!vec4<bool>(true, true, var_1, var_1)), var_1), vec2<bool>(select(true, all(vec3<bool>(true, false, var_1)), u_input.c >= u_input.d.x), true)));
    let var_5 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -111f), -614f)))), _wgslsmith_f_op_f32(1f + 270f));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(12515i, min(_wgslsmith_dot_vec2_i32(vec2<i32>(14132i, -81559i), max(vec2<i32>(-1i, var_4.a.c.a.e.x), vec2<i32>(-1i, var_4.a.c.a.e.x))), 1i), 9921i, _wgslsmith_dot_vec2_i32(-_wgslsmith_mod_vec2_i32(vec2<i32>(-1i, 2147483647i), vec2<i32>(-19224i, var_4.a.c.a.e.x)), u_input.a.zy)), _wgslsmith_f_op_vec2_f32(abs(var_5)), 5122u, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-653f * _wgslsmith_f_op_f32(max(-754f, var_5.x))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_5.x, var_5.x, var_5.x) - vec3<f32>(714f, -339f, var_5.x)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(310f, var_5.x, var_5.x), vec3<f32>(var_5.x, var_5.x, var_5.x), vec3<bool>(true, var_1, false))), !vec3<bool>(true, var_4.a.c.a.c, false))))));
}

