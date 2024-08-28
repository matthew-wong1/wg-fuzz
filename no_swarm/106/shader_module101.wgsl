struct Struct_1 {
    a: vec4<f32>,
    b: vec2<i32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: f32,
    c: vec2<bool>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<f32>,
    c: Struct_2,
    d: vec4<f32>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_1,
    d: vec4<f32>,
    e: vec4<bool>,
}

struct Struct_5 {
    a: vec4<u32>,
    b: vec3<bool>,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> u32 {
    let var_0 = abs(firstLeadingBit(vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(9050i, u_input.a) >> (vec2<u32>(15923u, 35093u) % vec2<u32>(32u)), vec2<i32>(0i, u_input.a)), _wgslsmith_clamp_i32(firstLeadingBit(u_input.a), 0i, _wgslsmith_dot_vec2_i32(vec2<i32>(13540i, u_input.a), vec2<i32>(u_input.a, u_input.a))), 2147483647i)));
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(138f)), 630f, _wgslsmith_f_op_f32(select(387f, _wgslsmith_f_op_f32(sign(887f)), any(vec2<bool>(true, false)))), _wgslsmith_f_op_f32(f32(-1f) * -1465f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) - vec4<f32>(_wgslsmith_f_op_f32(1187f - 918f), _wgslsmith_f_op_f32(1356f - 592f), _wgslsmith_f_op_f32(step(1713f, -767f)), -956f))), (-var_0.zx | abs(reverseBits(var_0.zy))) | reverseBits(vec2<i32>(abs(u_input.a), _wgslsmith_div_i32(var_0.x, -55932i))));
    return ~(~_wgslsmith_clamp_u32(max(~4294967295u, abs(0u)), ~reverseBits(0u), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), ~vec3<u32>(0u, 59153u, 4294967295u))));
}

fn func_2(arg_0: u32, arg_1: i32) -> vec2<f32> {
    var var_0 = Struct_5(vec4<u32>(arg_0, arg_0, _wgslsmith_clamp_u32(_wgslsmith_sub_u32(~0u, _wgslsmith_div_u32(arg_0, arg_0)), ~32796u, _wgslsmith_div_u32(arg_0, func_3())), 0u), vec3<bool>(any(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))), !(false & all(vec3<bool>(true, true, false))), 1u > _wgslsmith_mod_u32(min(0u, arg_0), 1u)), vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(1496f, -1181f)), _wgslsmith_f_op_f32(-1572f - -1556f)))), -333f));
    var_0 = Struct_5(max(reverseBits(select(var_0.a, vec4<u32>(4294967295u, 0u, var_0.a.x, arg_0), vec4<bool>(var_0.b.x, true, false, var_0.b.x))) & vec4<u32>(36361u ^ arg_0, ~14235u, _wgslsmith_sub_u32(var_0.a.x, 31243u), var_0.a.x), var_0.a), select(!vec3<bool>(all(vec2<bool>(var_0.b.x, var_0.b.x)), all(vec2<bool>(false, false)), var_0.b.x), var_0.b, select(var_0.b, vec3<bool>(true, any(vec3<bool>(var_0.b.x, true, false)), var_0.b.x), false)), vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-643f - _wgslsmith_f_op_f32(step(var_0.c.x, 162f))))), 440f));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(206f, -1441f, var_0.c.x, var_0.c.x)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0.c.x, var_0.c.x, 607f, var_0.c.x))) - vec4<f32>(var_0.c.x, -922f, var_0.c.x, -277f))))));
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1763f, 215f, _wgslsmith_f_op_f32(abs(var_1.x)), 363f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(var_1.x, 265f, var_0.b.x)), 1000f, _wgslsmith_f_op_f32(var_1.x - var_0.c.x), _wgslsmith_f_op_f32(round(-163f))))), abs(vec2<i32>(~(-31981i), u_input.a | -17760i) >> (abs(var_0.a.xx) % vec2<u32>(32u))));
    var var_3 = var_2.a.x;
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-var_2.a.yx))) - _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_1.x, var_2.a.x))))));
}

fn func_1(arg_0: u32) -> vec2<f32> {
    return _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_2(arg_0, u_input.a))) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-970f, 3837f), _wgslsmith_f_op_vec2_f32(func_2(1u, u_input.a)), select(vec2<bool>(true, false), vec2<bool>(true, false), false)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1f, 1f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<u32>(1u, max(_wgslsmith_clamp_u32(1u, 21387u, select(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 0u, 59429u, 266u), vec4<u32>(4294967295u, 55754u, 4294967295u, 0u)), 29299u, true)), abs(~_wgslsmith_add_u32(36195u, 18156u))), select(1u, abs(~(~94669u)), true), 49534u);
    let var_1 = ~max(~(~_wgslsmith_sub_vec2_u32(var_0.xy, var_0.xy)), (~vec2<u32>(88114u, var_0.x) >> (~vec2<u32>(var_0.x, 0u) % vec2<u32>(32u))) | vec2<u32>(116872u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, var_0.x, var_0.x, var_0.x), var_0)));
    var var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1831f)))))));
    var var_3 = u_input.a;
    var var_4 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(func_1(1u)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-120f, 413f)), true))), vec2<f32>(1f, 1f))), vec2<f32>(-1006f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(702f + 1254f), _wgslsmith_f_op_f32(115f + -1115f), true)))));
    var_2 = -613f;
    let var_5 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(-381f, var_4.x, true)))), _wgslsmith_f_op_f32(var_4.x * _wgslsmith_f_op_f32(-var_4.x)))), -958f)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -180f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(-848f)))), _wgslsmith_f_op_f32(trunc(1524f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_5 + -1789f) - _wgslsmith_f_op_f32(var_4.x + -1647f)))), var_0.yzw);
}

