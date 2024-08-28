struct Struct_1 {
    a: vec3<u32>,
    b: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec3<i32>) -> vec3<u32> {
    return min(_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, 18679u, _wgslsmith_dot_vec3_u32(vec3<u32>(34745u, u_input.a, u_input.a) ^ vec3<u32>(1u, 56308u, u_input.a), vec3<u32>(u_input.a, 0u, u_input.a))), _wgslsmith_div_vec3_u32(reverseBits(vec3<u32>(1u, u_input.a, u_input.a)), vec3<u32>(1u, 1u, 1u) >> (vec3<u32>(u_input.a, 5713u, 1u) % vec3<u32>(32u))) & abs(vec3<u32>(u_input.a, 31517u, 1u) >> (vec3<u32>(72425u, 4294967295u, 23972u) % vec3<u32>(32u)))), vec3<u32>(_wgslsmith_clamp_u32(abs(4294967295u), _wgslsmith_mult_u32(~10352u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 71691u, u_input.a, u_input.a), vec4<u32>(u_input.a, u_input.a, u_input.a, 28914u))), u_input.a), 1u, ~1u));
}

fn func_2() -> i32 {
    let var_0 = vec2<bool>(!(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -110f) + _wgslsmith_f_op_f32(step(-1804f, -317f))) == 142f), firstLeadingBit(u_input.a) >= 1274u);
    var var_1 = Struct_1(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, ~firstTrailingBit(u_input.a), _wgslsmith_add_u32(u_input.a & u_input.a, 41123u)), vec3<u32>(u_input.a, ~u_input.a >> (59295u % 32u), 0u)), ~vec3<u32>(u_input.a, u_input.a, u_input.a));
    var var_2 = 1u;
    var_1 = Struct_1(_wgslsmith_sub_vec3_u32(func_3(vec3<i32>(u_input.b.x, -1i >> (u_input.a % 32u), u_input.b.x)), ~vec3<u32>(var_1.b.x, 61898u, 12922u) & select(~var_1.a, countOneBits(vec3<u32>(u_input.a, u_input.a, var_1.b.x)), select(var_0.x, false, true))), ~_wgslsmith_sub_vec3_u32(~firstLeadingBit(vec3<u32>(1u, var_1.b.x, u_input.a)), var_1.a << (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u))));
    let var_3 = ~var_1.b.x > max(~u_input.a | (1u >> (var_1.b.x % 32u)), _wgslsmith_clamp_u32(firstTrailingBit(var_1.a.x), ~var_1.b.x, select(33853u, 95835u, true)) >> (~4294967295u % 32u));
    return -2147483647i;
}

fn func_1() -> vec3<f32> {
    let var_0 = _wgslsmith_sub_i32(~_wgslsmith_add_i32(32466i, u_input.b.x), func_2());
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(-454f, -650f, 829f) - vec3<f32>(-1000f, 421f, 121f)), vec3<f32>(-119f, -1000f, -102f))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1427f, 809f, 684f))))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -363f), -861f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)))) * vec3<f32>(-1321f, -799f, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(427f, 2523f), _wgslsmith_div_f32(359f, 1104f))))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(796f, _wgslsmith_div_f32(-171f, _wgslsmith_f_op_f32(-731f + 1168f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1173f)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1583f, 543f, -351f))) * vec3<f32>(1f, 1f, 1f))));
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, -376f, -1608f) + vec3<f32>(var_0.x, -331f, var_0.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1())))), vec3<f32>(639f, _wgslsmith_f_op_f32(f32(-1f) * -614f), var_0.x), vec3<bool>(select(any(vec2<bool>(true, false)), true, true), any(vec2<bool>(true, true)), true))));
    var_0 = _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1907f, 544f, _wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(var_0.x - -357f)))));
    var var_1 = countOneBits(select(~_wgslsmith_mod_vec3_u32(~vec3<u32>(4294967295u, u_input.a, 148u), countOneBits(vec3<u32>(u_input.a, u_input.a, 4294967295u))), ~(~_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, 11179u, 1u), vec3<u32>(u_input.a, u_input.a, 0u))), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(false, any(vec2<bool>(true, false)), true))));
    var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(-311f + 732f), var_0.x, 1000f), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, var_0.x)), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -557f), -669f, 334f))))) - vec3<f32>(-372f, _wgslsmith_f_op_f32(sign(var_0.x)), 704f));
    var_1 = countOneBits(countOneBits(~vec3<u32>(var_1.x, _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.x, u_input.a, 64177u, 4294967295u), vec4<u32>(u_input.a, var_1.x, u_input.a, var_1.x)), _wgslsmith_clamp_u32(24845u, u_input.a, 19614u))));
    var var_2 = Struct_2(Struct_1(vec3<u32>(4294967295u, u_input.a, 155315u >> (0u % 32u)) | firstTrailingBit(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, u_input.a, 25789u), vec3<u32>(4294967295u, 2953u, u_input.a))), ~min(vec3<u32>(4294967295u, 0u, 1u), reverseBits(vec3<u32>(1u, 1u, var_1.x)))), _wgslsmith_div_u32(var_1.x, abs(~min(u_input.a, var_1.x))), firstTrailingBit(4294967295u));
    let x = u_input.a;
    s_output = StorageBuffer(i32(-1i) * -1725i, var_0.x, 6750i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(621f)))));
}

