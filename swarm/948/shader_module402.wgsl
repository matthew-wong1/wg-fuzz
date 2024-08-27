struct Struct_1 {
    a: vec4<bool>,
    b: vec4<f32>,
    c: f32,
    d: f32,
    e: vec3<bool>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: i32,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec3<u32>,
    c: vec3<f32>,
    d: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1(arg_0: Struct_1) -> bool {
    let var_0 = u_input.b.yw;
    let var_1 = countOneBits(~(~(u_input.b ^ firstLeadingBit(u_input.b))));
    var var_2 = arg_0;
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -587f), arg_0.c, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_2.c))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1422f + 1162f)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_0.b)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1816f, var_2.b.x, -265f, -178f))))));
    var var_4 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(-549f, var_3.x), _wgslsmith_f_op_f32(select(-1917f, var_3.x, var_2.a.x))), 1672f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.x - 443f) * _wgslsmith_f_op_f32(round(var_2.d))) + 1f)));
    return true | any(vec4<bool>(var_2.e.x, arg_0.e.x, _wgslsmith_mult_u32(0u, u_input.b.x) < 101543u, !(!arg_0.a.x)));
}

fn func_2(arg_0: Struct_3, arg_1: vec2<bool>, arg_2: vec4<f32>, arg_3: u32) -> f32 {
    var var_0 = select(~vec2<u32>(~reverseBits(10767u), arg_3), arg_0.b.yy, vec2<bool>(arg_0.a.x || false, !(arg_0.a.x & true)));
    var_0 = ~vec2<u32>(u_input.b.x, _wgslsmith_div_u32(44145u, ~u_input.b.x));
    let var_1 = 0u;
    var_0 = _wgslsmith_clamp_vec2_u32(~vec2<u32>(min(u_input.a.x, arg_3), 0u), _wgslsmith_mod_vec2_u32(vec2<u32>(~(arg_3 >> (u_input.a.x % 32u)), arg_3 << (1u % 32u)), max(vec2<u32>(73408u, arg_3), select(vec2<u32>(u_input.a.x, 40826u), vec2<u32>(52654u, arg_3), true)) ^ _wgslsmith_div_vec2_u32(vec2<u32>(var_1, u_input.a.x), vec2<u32>(1u, 1u) | vec2<u32>(7145u, arg_0.b.x))), ~vec2<u32>(~4114u, var_1));
    var_0 = vec2<u32>((arg_0.b.x | ~4294967295u) ^ ~4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(var_1, u_input.b.x, 40659u), vec3<u32>(~1u, 39354u, u_input.b.x)));
    return 625f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(!vec4<bool>(true, false, all(vec4<bool>(false, true, false, true)), select(false, true, true) & func_1(Struct_1(vec4<bool>(true, false, true, true), vec4<f32>(-692f, -840f, 215f, 395f), 1071f, -1398f, vec3<bool>(true, true, false)))), ~(~(vec3<u32>(u_input.b.x, u_input.a.x, 0u) ^ ~u_input.b.wyy)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-639f, _wgslsmith_f_op_f32(-2702f * _wgslsmith_f_op_f32(min(1016f, 1495f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(Struct_3(vec4<bool>(false, true, true, true), u_input.b.wyy, vec3<f32>(-281f, -736f, -1907f), 1815f), vec2<bool>(true, true), vec4<f32>(-181f, -1000f, -1350f, 1000f), u_input.b.x)))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1975f, -388f, -1000f)))), (1u == (13592u << (u_input.a.x % 32u))) != any(vec3<bool>(true, true, true)))), _wgslsmith_f_op_f32(trunc(1f)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(1u, u_input.b.x ^ 1u, 0u));
}

