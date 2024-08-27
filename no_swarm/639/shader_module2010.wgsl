struct Struct_1 {
    a: u32,
    b: bool,
    c: u32,
    d: i32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec3<u32>,
    c: u32,
    d: f32,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: f32,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> f32 {
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1f, 1f))) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-309f, -381f))))));
}

fn func_2(arg_0: i32, arg_1: vec2<u32>) -> vec4<i32> {
    let var_0 = any(vec2<bool>(!(arg_0 > 1i), all(vec2<bool>(true, true))));
    let var_1 = Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -528f));
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(340f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.a - var_1.a), -1393f)) * vec2<f32>(_wgslsmith_f_op_f32(func_3()), var_1.a)));
    let var_3 = ~(~vec3<u32>(~40035u, u_input.a, 72000u));
    let var_4 = ~_wgslsmith_add_u32(0u, _wgslsmith_div_u32(~4294967295u, firstLeadingBit(~u_input.a)));
    return -(~_wgslsmith_mod_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_0, 0i, 0i, arg_0), vec4<i32>(arg_0, arg_0, arg_0, 2147483647i), vec4<i32>(arg_0, arg_0, arg_0, 13416i)) >> (~vec4<u32>(0u, var_4, arg_1.x, 0u) % vec4<u32>(32u)), vec4<i32>(14354i, arg_0, arg_0, -3717i) >> (vec4<u32>(arg_1.x, var_4, u_input.a, 1u) % vec4<u32>(32u))));
}

fn func_1(arg_0: Struct_4) -> vec4<bool> {
    var var_0 = _wgslsmith_mod_i32(-34957i, 2147483647i);
    let var_1 = _wgslsmith_mult_vec4_i32(max(vec4<i32>(_wgslsmith_mod_i32(2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(-27660i, 1i, -35720i, 1i), vec4<i32>(0i, -47251i, -2147483647i, -16309i))), 1i, -19004i, 55717i), _wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_add_i32(10460i, 1i), reverseBits(-10778i), 22106i, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -32694i, -7367i), vec3<i32>(-14670i, 42370i, -27330i))), vec4<i32>(_wgslsmith_sub_i32(1i, -21971i), 1i, ~(-2147483647i), select(38758i, -15439i, true)))), ~(vec4<i32>(1i, 1i, 1i, 1i) | -func_2(2147483647i, vec2<u32>(u_input.a, 0u))));
    var var_2 = _wgslsmith_mult_vec2_u32(vec2<u32>(0u, reverseBits(0u)), (_wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(47523u, 53127u), vec2<u32>(u_input.a, 16220u)), ~vec2<u32>(u_input.a, 6280u)) & _wgslsmith_div_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(0u, 70375u)), _wgslsmith_clamp_vec2_u32(vec2<u32>(30908u, u_input.a), vec2<u32>(u_input.a, 28063u), vec2<u32>(0u, 25178u)))) ^ countOneBits(vec2<u32>(~u_input.a, 0u)));
    var var_3 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(578f, 530f, arg_0.a.a, arg_0.a.a)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_0.a.a, arg_0.a.a, 1145f, arg_0.a.a), vec4<f32>(348f, arg_0.a.a, -1434f, arg_0.a.a))) + vec4<f32>(arg_0.a.a, -1791f, -170f, arg_0.a.a))))), vec3<u32>(_wgslsmith_add_u32(~4294967295u << (0u % 32u), ~abs(1u)), var_2.x, reverseBits(~14478u)), _wgslsmith_mod_u32(~u_input.a, 1u ^ ~var_2.x) >> (~0u % 32u), arg_0.a.a);
    var_3 = Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -510f), _wgslsmith_div_f32(arg_0.a.a, 1219f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(-401f)), _wgslsmith_f_op_f32(-var_3.a.x), true)), -678f)), vec3<u32>(~var_3.c, var_2.x, var_2.x), u_input.a >> (~40338u % 32u), _wgslsmith_f_op_f32(var_3.a.x + arg_0.a.a));
    return vec4<bool>(!any(vec2<bool>(true, true)), (true || any(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false), true))) && all(vec4<bool>(var_1.x > var_1.x, any(vec3<bool>(false, true, true)), true, any(vec3<bool>(false, true, false)))), true, true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!all(func_1(Struct_4(Struct_3(467f)))));
    var var_1 = firstTrailingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i) << (abs(firstTrailingBit(vec2<u32>(u_input.a, 1u))) % vec2<u32>(32u)), abs(vec2<i32>(i32(-1i) * -2147483647i, ~(-2147483647i)))));
    var_1 = 23783i;
    var_1 = reverseBits(_wgslsmith_add_i32(1i, -min(2147483647i, -1i)));
    var_1 = _wgslsmith_mult_i32(-2147483647i, _wgslsmith_sub_i32(select(_wgslsmith_div_i32(0i, -2147483647i), i32(-1i) * -43732i, var_0), firstTrailingBit(firstLeadingBit(-6037i)))) >> (_wgslsmith_dot_vec2_u32(vec2<u32>(26560u, _wgslsmith_mult_u32(0u, u_input.a)), ~select(vec2<u32>(13977u, 36266u), vec2<u32>(u_input.a, u_input.a), false) | select(~vec2<u32>(u_input.a, 25830u), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(22193u, u_input.a)), vec2<bool>(false, true))) % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(-vec2<i32>(~abs(26654i), -16229i));
}

