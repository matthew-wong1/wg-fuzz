struct Struct_1 {
    a: u32,
    b: u32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: f32,
    e: vec3<f32>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: bool,
    c: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: u32,
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

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec2<u32>, arg_1: i32) -> f32 {
    var var_0 = Struct_1(arg_0.x, ~_wgslsmith_clamp_u32(~66460u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 4294967295u), _wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, u_input.b), arg_0)), ~reverseBits(arg_0.x)));
    var var_1 = vec2<f32>(-308f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -553f)))));
    let var_2 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_1.x), var_1.x, true)) + -989f)), Struct_1(1u, arg_0.x), Struct_1(abs(4294967295u), ~1u), _wgslsmith_f_op_f32(abs(var_1.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(1534f, -878f, -1000f), vec3<f32>(478f, 285f, var_1.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-844f, -1400f, var_1.x) - vec3<f32>(var_1.x, -528f, -149f)), true)))) + vec3<f32>(_wgslsmith_f_op_f32(step(1040f, _wgslsmith_f_op_f32(var_1.x - var_1.x))), var_1.x, _wgslsmith_div_f32(var_1.x, -608f))));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_1.x)) + -941f) == var_2.d;
    var var_4 = Struct_2(_wgslsmith_f_op_f32(var_2.e.x * _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_div_f32(-830f, var_1.x), -263f)))), var_2.b, Struct_1(_wgslsmith_dot_vec2_u32(~(arg_0 & vec2<u32>(52812u, u_input.b)), ~firstTrailingBit(arg_0)), _wgslsmith_div_u32(~4294967295u, 1u)), 797f, var_2.e);
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(-411f))));
}

fn func_2() -> f32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, _wgslsmith_f_op_f32(func_3(~(vec2<u32>(u_input.b, u_input.b) >> (vec2<u32>(40657u, 124164u) % vec2<u32>(32u))), ~(~u_input.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_3(vec2<u32>(u_input.b, u_input.b), 36257i)))) - -1066f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * 340f) + _wgslsmith_f_op_f32(f32(-1f) * -597f))))));
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(var_0.x + var_0.x), _wgslsmith_f_op_f32(-695f + var_0.x), _wgslsmith_div_f32(var_0.x, var_0.x), _wgslsmith_f_op_f32(f32(-1f) * -988f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1151f, 286f, 430f, var_0.x) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, -1690f, var_0.x))))));
    var var_1 = Struct_1(u_input.b, ~_wgslsmith_mod_u32(~abs(u_input.b), countOneBits(~9645u)));
    var var_2 = Struct_2(-500f, Struct_1(0u, u_input.b), Struct_1(3368u, ~(~(~var_1.b))), _wgslsmith_f_op_f32(112f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-737f + -773f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(var_0.zwx, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1729f, 1000f, 146f) + vec3<f32>(508f, var_0.x, -983f)) - vec3<f32>(var_0.x, -1044f, -984f)), true)) * var_0.wzx));
    let var_3 = !(all(vec3<bool>(true, true, true)) && true) & !all(vec2<bool>(true, true));
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_2.e.x), var_2.a));
}

fn func_1() -> f32 {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -600f) - -1365f))), _wgslsmith_div_f32(-1717f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_2())))))), Struct_1(~firstLeadingBit(u_input.b), ~(u_input.b & u_input.b) << (4294967295u % 32u)), Struct_1(u_input.b & u_input.b, countOneBits(~u_input.b)), -1000f, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, _wgslsmith_f_op_f32(min(543f, 371f)), _wgslsmith_f_op_f32(f32(-1f) * -992f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1643f, 867f, 260f)))))));
    var_0 = Struct_2(-334f, Struct_1(~u_input.b, 95569u | _wgslsmith_dot_vec3_u32(vec3<u32>(9350u, var_0.c.a, var_0.b.a) & vec3<u32>(1848u, 1u, var_0.c.a), ~vec3<u32>(4294967295u, u_input.b, var_0.b.a))), Struct_1(_wgslsmith_mult_u32(1u | _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.b), vec2<u32>(1u, var_0.b.b)), ~(~4294967295u)), abs(abs(1u))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) * _wgslsmith_f_op_f32(select(var_0.a, 2334f, true))) * var_0.a))), vec3<f32>(var_0.e.x, 1607f, var_0.d));
    var_0 = Struct_2(var_0.e.x, Struct_1(u_input.b, ~var_0.b.a), var_0.b, var_0.e.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.e + _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(174f, var_0.a, var_0.e.x)))))));
    var var_1 = ~u_input.a.x;
    var var_2 = Struct_3(max(vec4<u32>(~(var_0.b.a ^ 19444u), 11641u, _wgslsmith_dot_vec2_u32(~vec2<u32>(1u, 0u), ~vec2<u32>(var_0.b.b, var_0.c.a)), _wgslsmith_sub_u32(~24615u, firstLeadingBit(var_0.c.b))), min(vec4<u32>(u_input.b, abs(4294967295u), ~var_0.b.a, 1u), countOneBits(vec4<u32>(u_input.b, 12672u, 1u, var_0.c.a)) << (~vec4<u32>(u_input.b, 1u, var_0.c.b, var_0.b.b) % vec4<u32>(32u)))), all(vec3<bool>(true, true, true)), ~(~min(2147483647i, u_input.a.x)) >> (~u_input.b % 32u));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.e.x), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(var_0.d)), -1475f))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<u32>(4294967295u, 10858u, ~u_input.b);
    var var_1 = _wgslsmith_add_u32(73922u << (_wgslsmith_add_u32(var_0.x, 24329u) % 32u), abs(abs(_wgslsmith_mod_u32(107254u, 2453u) & (0u & var_0.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1()), 977f))), -342f, _wgslsmith_sub_u32(reverseBits(~17320u | (u_input.b << (u_input.b % 32u))), u_input.b | 1u));
}

