struct Struct_1 {
    a: vec4<f32>,
    b: f32,
    c: vec4<f32>,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: bool) -> u32 {
    var var_0 = u_input.b.x;
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1826f, 1180f, 1000f, 471f), vec4<f32>(294f, 143f, -2254f, 923f)))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-264f, _wgslsmith_f_op_f32(372f - -575f))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + -655f) - -1168f) - 333f), 1345f, -558f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-687f, -1591f) - _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(round(-1107f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(2898f, 935f)) * -2010f))) + -714f));
    var var_2 = var_1;
    let var_3 = Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(var_1.a, var_1.a), _wgslsmith_f_op_vec4_f32(min(var_1.a, vec4<f32>(-1499f, var_2.b, 1000f, var_1.a.x))))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_2.a), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.d, 414f, -114f, -1609f)))), _wgslsmith_f_op_vec4_f32(var_2.a - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(136f, var_2.b, var_2.a.x, var_2.c.x) + vec4<f32>(-616f, var_2.b, 132f, -1329f))))), _wgslsmith_f_op_f32(-var_2.c.x), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a.x, var_1.c.x, var_2.d, var_1.c.x) + vec4<f32>(var_2.b, 393f, -1371f, 835f))), vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_2.d))), _wgslsmith_f_op_f32(select(-1282f, -1059f, any(vec3<bool>(arg_0, arg_0, false)))), var_2.d, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-715f - var_1.c.x))))), -1000f);
    let var_4 = firstTrailingBit(u_input.b.x) ^ ~2147483647i;
    return max(~u_input.d, _wgslsmith_dot_vec4_u32(abs((vec4<u32>(u_input.d, u_input.d, 1u, 1u) ^ vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.d)) | ~vec4<u32>(u_input.d, 24316u, 0u, u_input.d)), vec4<u32>(u_input.d, 38510u, abs(41948u) >> (~4294967295u % 32u), ~(u_input.c << (21971u % 32u)))));
}

fn func_2(arg_0: Struct_1, arg_1: bool, arg_2: f32, arg_3: vec3<f32>) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1065f - arg_0.b), 124f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.x + arg_0.a.x))))) - -1411f);
    var var_1 = min(vec4<u32>(1u, _wgslsmith_dot_vec2_u32(~vec2<u32>(35462u, u_input.d), vec2<u32>(u_input.d, u_input.c)), u_input.c, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, u_input.c, 12206u, u_input.c) >> (vec4<u32>(1832u, 1u, u_input.d, 4294967295u) % vec4<u32>(32u)), abs(vec4<u32>(u_input.c, u_input.d, 27532u, u_input.d)))) & vec4<u32>(~(~3450u), 85467u ^ func_3(arg_1), max(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, 27466u, u_input.c, 4294967295u), vec4<u32>(u_input.c, 4294967295u, u_input.d, u_input.c)), 0u), ~countOneBits(1u)), select(~vec4<u32>(~u_input.c, abs(49810u), 34728u, ~0u), vec4<u32>(u_input.c, u_input.c, 29298u, ~reverseBits(u_input.c)), vec4<bool>(false, true, all(select(vec3<bool>(false, true, arg_1), vec3<bool>(arg_1, true, true), vec3<bool>(true, arg_1, true))), arg_1)));
    let var_2 = vec4<i32>(~1i, -91376i, -2147483647i, ~u_input.a ^ -(~_wgslsmith_clamp_i32(u_input.b.x, u_input.a, u_input.b.x)));
    var_1 = vec4<u32>(u_input.c, var_1.x, 20225u >> (_wgslsmith_sub_u32(_wgslsmith_add_u32(7050u, ~var_1.x), _wgslsmith_add_u32(1u, 0u >> (u_input.c % 32u))) % 32u), 4294967295u);
    var_1 = _wgslsmith_mult_vec4_u32(~abs(vec4<u32>(var_1.x, 4294967295u, u_input.d, u_input.c) & min(vec4<u32>(0u, 4294967295u, 13164u, 0u), vec4<u32>(var_1.x, 1u, var_1.x, 1u))), vec4<u32>(17096u, var_1.x, 80132u, ~(30356u & func_3(arg_1))));
    return _wgslsmith_add_u32(u_input.c, func_3(true));
}

fn func_1(arg_0: bool) -> Struct_1 {
    var var_0 = ~vec4<u32>(u_input.d, reverseBits(~reverseBits(0u)), firstTrailingBit(_wgslsmith_div_u32(func_2(Struct_1(vec4<f32>(-1000f, 272f, -870f, -165f), 1048f, vec4<f32>(259f, -948f, -1000f, -485f), 501f), false, 1000f, vec3<f32>(203f, -1000f, 331f)), firstLeadingBit(u_input.c))), 4294967295u);
    let var_1 = select(vec2<bool>(arg_0, all(!select(vec4<bool>(false, arg_0, arg_0, false), vec4<bool>(false, false, arg_0, arg_0), vec4<bool>(arg_0, true, arg_0, false)))), select(vec2<bool>(arg_0, true), !select(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(true, true), true && arg_0), select(select(!vec2<bool>(arg_0, true), vec2<bool>(true, true), vec2<bool>(arg_0, false)), select(!vec2<bool>(arg_0, arg_0), !vec2<bool>(true, arg_0), vec2<bool>(false, false)), !(!arg_0))), vec2<bool>(all(select(vec3<bool>(true, false, false), select(vec3<bool>(true, false, arg_0), vec3<bool>(false, arg_0, false), vec3<bool>(arg_0, false, arg_0)), false && arg_0)), any(select(vec3<bool>(arg_0, false, arg_0), vec3<bool>(arg_0, true, arg_0), true))));
    var var_2 = -2147483647i;
    let var_3 = countOneBits(-firstLeadingBit(~countOneBits(vec4<i32>(2147483647i, -1i, -1i, 33512i))));
    var var_4 = vec2<i32>(_wgslsmith_dot_vec2_i32(~var_3.yy, -vec2<i32>(u_input.a, var_3.x) | _wgslsmith_sub_vec2_i32(vec2<i32>(var_3.x, 2147483647i), -vec2<i32>(-12208i, -6691i))), abs(-var_3.x | _wgslsmith_sub_i32(var_3.x << (4294967295u % 32u), i32(-1i) * -54154i)));
    return Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1314f, 674f, -237f, -544f), vec4<f32>(-1195f, -1241f, 1111f, 1254f)))) + vec4<f32>(_wgslsmith_f_op_f32(518f * 1000f), -1083f, -1000f, _wgslsmith_f_op_f32(1564f * -1000f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-2243f, _wgslsmith_div_f32(-474f, _wgslsmith_f_op_f32(1788f + 289f)))) + _wgslsmith_f_op_f32(f32(-1f) * -472f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1233f, 767f, -1510f, -1598f))))) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-895f, _wgslsmith_f_op_f32(-503f * 2117f), _wgslsmith_f_op_f32(f32(-1f) * -451f), _wgslsmith_f_op_f32(595f + 785f)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(vec4<f32>(574f, -337f, -1633f, 2986f), vec4<f32>(304f, 308f, -1138f, -1000f)))), false))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1830f + 1548f) + _wgslsmith_f_op_f32(f32(-1f) * -709f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(true);
    var var_1 = all(vec2<bool>(false, !all(select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true)))));
    let var_2 = -65050i;
    var_1 = true;
    var var_3 = _wgslsmith_f_op_vec4_f32(abs(var_0.c));
    var_1 = false & (select(abs(u_input.b.x) < countOneBits(17133i), !(u_input.d <= u_input.c), ~u_input.c > _wgslsmith_div_u32(0u, 4294967295u)) || true);
    var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(var_0.c, _wgslsmith_f_op_vec4_f32(-var_0.a), true)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(floor(var_0.a)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.x, 523f, 1637f, 291f)))))) - var_0.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(~(vec3<u32>(u_input.c, 0u, u_input.d) << (vec3<u32>(u_input.d, 4294967295u, 0u) % vec3<u32>(32u))), ~(vec3<u32>(1u, u_input.d, 0u) << (vec3<u32>(u_input.d, 29376u, u_input.d) % vec3<u32>(32u)))), min(vec3<u32>(u_input.d, 5277u, abs(u_input.c)), vec3<u32>(~1u, ~u_input.c, 1u))), _wgslsmith_dot_vec4_i32(countOneBits(_wgslsmith_add_vec4_i32(~vec4<i32>(0i, -2147483647i, u_input.a, var_2), vec4<i32>(26461i, 8950i, -52437i, 0i))), ~reverseBits(~vec4<i32>(u_input.b.x, -59947i, -36459i, u_input.a))));
}

