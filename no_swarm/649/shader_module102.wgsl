struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec4<i32>,
    d: i32,
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

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: u32, arg_1: u32) -> vec3<i32> {
    var var_0 = Struct_2(vec3<i32>(-1i, firstLeadingBit(max(~u_input.a, u_input.a << (u_input.b % 32u))), ~(countOneBits(u_input.a) ^ (i32(-1i) * -2147483647i))));
    return var_0.a;
}

fn func_2(arg_0: vec2<bool>, arg_1: vec3<i32>) -> vec2<u32> {
    var var_0 = 3084i < u_input.a;
    let var_1 = Struct_2(_wgslsmith_add_vec3_i32(func_3(~1u, ~0u), arg_1));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1036f)) - _wgslsmith_f_op_f32(abs(928f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-289f * 419f), _wgslsmith_f_op_f32(sign(563f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(801f * -229f)))))));
    let var_3 = ~vec2<u32>(~0u, _wgslsmith_mod_u32(u_input.b, ~u_input.b)) ^ vec2<u32>(u_input.b, u_input.b);
    var_0 = arg_0.x;
    return ~var_3;
}

fn func_1() -> bool {
    var var_0 = func_2(vec2<bool>(all(vec2<bool>(true, true)), true), _wgslsmith_mod_vec3_i32(vec3<i32>(-73148i, ~10550i, -32584i), ~vec3<i32>(u_input.a, 9671i, 0i)) | -(_wgslsmith_mult_vec3_i32(vec3<i32>(-2147483647i, u_input.a, u_input.a), vec3<i32>(13381i, u_input.a, 2147483647i)) | vec3<i32>(u_input.a, u_input.a, u_input.a)));
    var_0 = select(vec2<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(var_0.x, 25168u, var_0.x, 0u) << (~vec4<u32>(1u, 0u, var_0.x, var_0.x) % vec4<u32>(32u)), vec4<u32>(select(var_0.x, 8813u, false), var_0.x ^ var_0.x, u_input.b & 1u, 0u)), _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(4294967295u, u_input.b), u_input.b, ~u_input.b), _wgslsmith_mult_vec3_u32(vec3<u32>(36021u, 1u, 12047u), vec3<u32>(66250u, 4294967295u, 7039u) >> (vec3<u32>(4294967295u, var_0.x, 0u) % vec3<u32>(32u))))), countOneBits(vec2<u32>(45312u, 4358u)), vec2<bool>(true, true));
    let var_1 = Struct_2(_wgslsmith_clamp_vec3_i32(select(vec3<i32>(8185i, u_input.a, 29997i), ~vec3<i32>(u_input.a, u_input.a, 0i), all(vec4<bool>(true, false, true, false))) ^ firstTrailingBit(vec3<i32>(u_input.a, u_input.a, 2147483647i)), ~reverseBits(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(-2147483647i, u_input.a, u_input.a), vec3<i32>(-24635i, u_input.a, u_input.a))), vec3<i32>(u_input.a, -_wgslsmith_div_i32(-2147483647i, u_input.a), abs(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, 7292i))))));
    var_0 = select((_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, u_input.b), vec2<u32>(var_0.x, var_0.x) & vec2<u32>(u_input.b, 0u)) | vec2<u32>(var_0.x, var_0.x)) | min(~(vec2<u32>(0u, 1u) ^ vec2<u32>(var_0.x, 25627u)), vec2<u32>(reverseBits(1u), func_2(vec2<bool>(false, false), vec3<i32>(var_1.a.x, u_input.a, u_input.a)).x)), vec2<u32>(_wgslsmith_div_u32(var_0.x ^ ~0u, ~75970u), abs(u_input.b)), select(!select(vec2<bool>(false, false), vec2<bool>(false, true), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false))), vec2<bool>(true, true), !(all(vec4<bool>(true, false, false, false)) && all(vec3<bool>(false, true, true)))));
    let var_2 = var_1;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -27055i;
    var var_1 = u_input.b;
    var_1 = _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(~(~(vec2<u32>(4294967295u, u_input.b) << (vec2<u32>(u_input.b, 85756u) % vec2<u32>(32u)))), vec2<u32>(~(~u_input.b), ~(~u_input.b))), vec2<u32>(u_input.b, u_input.b));
    var var_2 = true;
    var var_3 = Struct_1(_wgslsmith_f_op_f32(sign(-584f)));
    var var_4 = Struct_2(-max(_wgslsmith_div_vec3_i32(vec3<i32>(var_0, var_0, 0i), vec3<i32>(u_input.a, 1i, 4412i)) ^ firstTrailingBit(vec3<i32>(u_input.a, u_input.a, 35352i)), vec3<i32>(1i, 0i, 1i)));
    let var_5 = Struct_2(var_4.a);
    var var_6 = !(true & func_1()) & (-17107i != ~(~var_0 << (u_input.b % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mod_vec2_i32(-firstLeadingBit(var_5.a.yx), var_5.a.yz), vec2<u32>(u_input.b, u_input.b), -min(_wgslsmith_sub_vec4_i32(-vec4<i32>(0i, 26756i, -32054i, var_4.a.x), ~vec4<i32>(u_input.a, var_0, u_input.a, var_5.a.x)), _wgslsmith_div_vec4_i32(~vec4<i32>(u_input.a, var_4.a.x, u_input.a, u_input.a), vec4<i32>(var_4.a.x, -2147483647i, 0i, u_input.a))), u_input.a);
}

