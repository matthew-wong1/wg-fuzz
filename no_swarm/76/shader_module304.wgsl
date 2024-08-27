struct Struct_1 {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3() -> f32 {
    var var_0 = Struct_1(_wgslsmith_mod_vec2_u32(~vec2<u32>(firstLeadingBit(4294967295u), countOneBits(456u)), u_input.a), vec3<u32>(u_input.a.x, ~max(57151u, u_input.a.x) ^ _wgslsmith_sub_u32(0u, countOneBits(u_input.a.x)), _wgslsmith_clamp_u32(10932u, ~u_input.a.x, abs(_wgslsmith_dot_vec3_u32(vec3<u32>(60132u, u_input.a.x, 4294967295u), vec3<u32>(u_input.a.x, 62831u, 44451u))))), vec2<f32>(1f, 1f));
    var var_1 = abs(abs(~(~vec4<u32>(var_0.b.x, u_input.a.x, 4294967295u, var_0.a.x))) >> (firstLeadingBit(vec4<u32>(0u, _wgslsmith_sub_u32(0u, u_input.a.x), 24741u, ~12934u)) % vec4<u32>(32u)));
    var_0 = Struct_1(_wgslsmith_mult_vec2_u32(vec2<u32>(min(u_input.a.x, _wgslsmith_add_u32(var_1.x, var_0.a.x)), ~0u), var_0.a), ~(var_1.wzy | min(vec3<u32>(0u, 78260u, u_input.a.x), ~var_0.b)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_0.c.x, var_0.c.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.c + var_0.c) - _wgslsmith_f_op_vec2_f32(-var_0.c)))));
    let var_2 = ~(~vec4<u32>(u_input.a.x, ~u_input.a.x, ~1u, 14058u));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.x));
}

fn func_2() -> vec3<bool> {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(-1548f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1333f)) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(-568f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(745f))))))));
    let var_1 = Struct_1(u_input.a >> (u_input.a % vec2<u32>(32u)), _wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_dot_vec3_u32(max(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<u32>(18622u, u_input.a.x, u_input.a.x)), vec3<u32>(u_input.a.x, 26205u, 3722u) | vec3<u32>(4294967295u, 40511u, u_input.a.x)), 4294967295u, _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a.x, u_input.a.x, 18357u), ~vec3<u32>(u_input.a.x, 1u, 30106u))), vec3<u32>(69872u, abs(73218u), 38140u) >> (select(vec3<u32>(13091u, 1u, 111431u) & vec3<u32>(u_input.a.x, 31715u, u_input.a.x), vec3<u32>(42123u, 4294967295u, 1u), select(false, true, false)) % vec3<u32>(32u))), var_0.zx);
    let var_2 = false;
    let var_3 = ~_wgslsmith_mod_u32(var_1.a.x, 62969u) | u_input.a.x;
    let var_4 = vec4<f32>(var_0.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.c.x) - 594f))), 135f, _wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(-2142f + -191f))));
    return select(select(select(!select(vec3<bool>(true, true, true), vec3<bool>(var_2, false, true), false), vec3<bool>(var_2, false, any(vec2<bool>(var_2, false))), select(!vec3<bool>(false, true, var_2), select(vec3<bool>(var_2, var_2, var_2), vec3<bool>(true, var_2, true), true), true)), !select(!vec3<bool>(true, var_2, var_2), select(vec3<bool>(var_2, var_2, true), vec3<bool>(false, false, true), vec3<bool>(true, true, false)), !vec3<bool>(var_2, true, true)), !(!select(vec3<bool>(var_2, var_2, false), vec3<bool>(false, var_2, var_2), vec3<bool>(true, var_2, false)))), !(!select(vec3<bool>(var_2, true, true), vec3<bool>(true, false, var_2), !var_2)), vec3<bool>(11286i >= min(i32(-1i) * -33193i, 2147483647i >> (var_3 % 32u)), all(!(!vec2<bool>(var_2, true))), var_2));
}

fn func_1() -> Struct_1 {
    let var_0 = any(select(func_2(), vec3<bool>(true, ~u_input.a.x <= ~1u, false), true));
    var var_1 = Struct_1(u_input.a, min(firstLeadingBit((vec3<u32>(0u, u_input.a.x, u_input.a.x) ^ vec3<u32>(0u, 34294u, u_input.a.x)) & ~vec3<u32>(50108u, u_input.a.x, u_input.a.x)), vec3<u32>(1u, 1u, 1u) & reverseBits(~vec3<u32>(u_input.a.x, 10143u, 35843u))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1602f, -182f) + vec2<f32>(1163f, 2151f)))))));
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_1.c.x + 495f))), _wgslsmith_div_f32(337f, -309f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(705f * _wgslsmith_f_op_f32(func_3())) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.c.x), -1672f))), var_1.c.x);
    let var_3 = Struct_1(vec2<u32>(~(var_1.a.x << (select(48009u, 0u, var_0) % 32u)), _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.a.x, ~39937u, firstLeadingBit(var_1.b.x), 1764u), ~vec4<u32>(65113u, var_1.a.x, 4294967295u, u_input.a.x) ^ max(vec4<u32>(u_input.a.x, 0u, 64728u, 1u), vec4<u32>(u_input.a.x, u_input.a.x, 1u, u_input.a.x)))), ~var_1.b >> (var_1.b % vec3<u32>(32u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(118f, var_1.c.x), var_1.c) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1190f, -158f))))));
    let var_4 = ~(~(vec2<u32>(var_1.a.x, 1u) | (vec2<u32>(u_input.a.x, var_1.b.x) ^ max(var_3.a, vec2<u32>(u_input.a.x, u_input.a.x)))));
    return Struct_1(_wgslsmith_sub_vec2_u32(~u_input.a, abs(vec2<u32>(var_1.a.x, 43004u)) & _wgslsmith_div_vec2_u32(_wgslsmith_clamp_vec2_u32(var_1.a, var_3.b.yz, var_3.b.yy), vec2<u32>(var_3.b.x, 1u) >> (vec2<u32>(37196u, var_1.a.x) % vec2<u32>(32u)))), ~var_3.b, _wgslsmith_f_op_vec2_f32(var_1.c * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.c.x, var_2.x)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -1777f;
    let var_1 = func_1();
    let var_2 = vec2<f32>(var_1.c.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(var_1.c.x, _wgslsmith_f_op_f32(f32(-1f) * -1000f))))), _wgslsmith_f_op_f32(-var_0)));
    var var_3 = Struct_1(u_input.a, _wgslsmith_div_vec3_u32(var_1.b, vec3<u32>(_wgslsmith_mod_u32(u_input.a.x, _wgslsmith_mult_u32(var_1.a.x, u_input.a.x)), ~var_1.b.x ^ var_1.a.x, _wgslsmith_sub_u32(var_1.a.x, ~u_input.a.x))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.c.x, _wgslsmith_f_op_f32(2433f * _wgslsmith_f_op_f32(-var_0)))));
    let var_4 = _wgslsmith_mult_u32(u_input.a.x, u_input.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(-1772f, _wgslsmith_mod_u32(~(~abs(u_input.a.x)), var_4 << (var_4 % 32u)));
}

