struct Struct_1 {
    a: i32,
    b: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
    d: vec3<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_1() -> f32 {
    return -2016f;
}

fn func_3() -> f32 {
    var var_0 = Struct_1(-u_input.a.x, !(!select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(true, true), all(vec2<bool>(true, false)))));
    var var_1 = Struct_1(0i << (((~u_input.b | _wgslsmith_dot_vec4_u32(vec4<u32>(37381u, 74632u, u_input.b, 4294967295u), vec4<u32>(4294967295u, u_input.b, u_input.b, u_input.c))) & 43822u) % 32u), var_0.b);
    var var_2 = _wgslsmith_clamp_i32(21441i, 2147483647i, _wgslsmith_add_i32(1i, -10278i ^ u_input.a.x));
    var_1 = Struct_1(~var_1.a, !var_1.b);
    let var_3 = ~abs(-82065i);
    return -1015f;
}

fn func_2(arg_0: f32, arg_1: vec2<u32>) -> f32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, 721f, 1411f, arg_0)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_0, -1450f, arg_0, -201f))), vec4<bool>(true, true, true, true))))) - _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, _wgslsmith_f_op_f32(-arg_0), -1551f, _wgslsmith_f_op_f32(round(arg_0))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-347f, -1286f, 493f, arg_0) * vec4<f32>(1844f, arg_0, -267f, arg_0)))))));
    let var_1 = _wgslsmith_f_op_f32(676f * arg_0);
    var var_2 = abs(arg_1.x);
    var_0 = vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-714f * -338f)), _wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(f32(-1f) * -608f)))))), _wgslsmith_f_op_f32(365f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(295f, -855f) * arg_0) + var_1)), var_0.x, var_1);
    var var_3 = u_input.a;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(657f + -2021f)) + _wgslsmith_f_op_f32(func_3()))) * 135f);
}

fn func_4(arg_0: vec3<bool>, arg_1: f32, arg_2: Struct_2, arg_3: Struct_2) -> Struct_1 {
    var var_0 = Struct_1(arg_2.a.a << (((~arg_2.d & ~0u) ^ ~_wgslsmith_dot_vec2_u32(u_input.e, vec2<u32>(6547u, u_input.c))) % 32u), vec2<bool>(!arg_2.a.b.x, !all(select(vec4<bool>(arg_0.x, true, true, true), vec4<bool>(false, true, arg_0.x, arg_0.x), vec4<bool>(true, false, true, true)))));
    let var_1 = !select(!select(vec4<bool>(true, false, var_0.b.x, false), !vec4<bool>(arg_0.x, var_0.b.x, var_0.b.x, false), !vec4<bool>(true, true, arg_3.a.b.x, arg_3.a.b.x)), vec4<bool>(false, !(var_0.b.x || true), arg_3.a.b.x, !arg_2.b.b.x), vec4<bool>(true, 716f <= _wgslsmith_f_op_f32(-arg_1), all(!arg_0), all(select(vec4<bool>(arg_0.x, false, true, arg_2.a.b.x), vec4<bool>(arg_0.x, true, false, arg_3.b.b.x), arg_3.b.b.x))));
    let var_2 = var_1.zyx;
    var var_3 = arg_3.a;
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.c + arg_1) * arg_1);
    return Struct_1(_wgslsmith_sub_i32(var_0.a, -1i) | u_input.a.x, var_2.zx);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.c;
    var var_1 = _wgslsmith_f_op_f32(949f - _wgslsmith_f_op_f32(func_1()));
    var_1 = -1911f;
    let var_2 = func_4(vec3<bool>(!(true & any(vec4<bool>(true, true, false, false))), false, true && all(vec3<bool>(true, true, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(-1518f, vec2<u32>(u_input.d.x, ~24610u)))), Struct_2(Struct_1((u_input.a.x << (0u % 32u)) << (_wgslsmith_clamp_u32(1u, 103315u, var_0) % 32u), vec2<bool>(true, true)), Struct_1(_wgslsmith_dot_vec2_i32(-u_input.a.zz, u_input.a.xy >> (u_input.e % vec2<u32>(32u))), select(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true)), select(vec2<bool>(true, false), vec2<bool>(true, false), true), select(false, true, false))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-693f + 167f) - -245f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -648f))))), abs(4294967295u)), Struct_2(Struct_1(u_input.a.x, vec2<bool>(true, true)), Struct_1(_wgslsmith_clamp_i32(firstLeadingBit(u_input.a.x), -1i, -2147483647i), vec2<bool>(true, true)), -1218f, _wgslsmith_mod_u32(u_input.e.x, firstTrailingBit(~u_input.c))));
    let var_3 = i32(-1i) * -1i;
    var_1 = 438f;
    let var_4 = any(vec3<bool>(!var_2.b.x, var_2.b.x, any(vec3<bool>(func_4(vec3<bool>(false, true, true), 1446f, Struct_2(var_2, var_2, 1886f, 4294967295u), Struct_2(Struct_1(0i, vec2<bool>(false, var_2.b.x)), Struct_1(var_2.a, vec2<bool>(var_2.b.x, var_2.b.x)), -614f, 1u)).b.x, false, false))));
    var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-331f + -109f) - -669f)))), -1805f));
    var var_5 = u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(-(i32(-1i) * -23660i), vec4<i32>(u_input.a.x, -1i, -54230i, var_3));
}

