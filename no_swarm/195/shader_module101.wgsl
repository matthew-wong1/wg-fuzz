struct Struct_1 {
    a: vec4<u32>,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: vec4<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32, arg_1: bool, arg_2: vec3<i32>) -> vec2<u32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(827f, 326f), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1793f, 597f))))))), !(!vec2<bool>(arg_1, arg_1)))) - vec2<f32>(-1828f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(-994f))))))));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.x, -1682f, var_0.x), vec3<f32>(var_0.x, 1793f, var_0.x), vec3<bool>(true, false, arg_1)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_0.x, 792f, 465f), vec3<f32>(var_0.x, 636f, 319f)))))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1028f), _wgslsmith_f_op_f32(1155f * var_0.x), _wgslsmith_f_op_f32(min(var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -362f)))), !(any(vec3<bool>(arg_1, arg_1, arg_1)) && arg_1))));
    var var_2 = Struct_1(~vec4<u32>(60700u, ~(~72269u), ~(u_input.a << (u_input.d % 32u)), countOneBits(u_input.d)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(628f * _wgslsmith_f_op_f32(-var_1.x))), _wgslsmith_div_f32(1411f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.x, var_0.x))))));
    let var_3 = Struct_1(abs(var_2.a) | vec4<u32>(var_2.a.x, var_2.a.x, ~reverseBits(u_input.d), _wgslsmith_mult_u32(firstTrailingBit(u_input.a), 0u)), -145f);
    var var_4 = abs(vec2<i32>(_wgslsmith_sub_i32(~_wgslsmith_sub_i32(arg_2.x, -3043i), arg_0), arg_2.x));
    return countOneBits(~abs(vec2<u32>(u_input.a, ~0u)));
}

fn func_2(arg_0: vec3<f32>, arg_1: bool) -> i32 {
    var var_0 = countOneBits(vec2<u32>(~(56138u << (abs(0u) % 32u)), 4294967295u));
    var_0 = vec2<u32>(69643u >> (_wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(1u, 1u)), vec2<u32>(u_input.d, _wgslsmith_mod_u32(var_0.x, u_input.a))) % 32u), ~(~var_0.x));
    var_0 = _wgslsmith_sub_vec2_u32(~_wgslsmith_add_vec2_u32(func_3(1i, arg_1, u_input.e.yxw), ~vec2<u32>(u_input.d, 45033u)) | ~firstTrailingBit(select(vec2<u32>(21558u, var_0.x), vec2<u32>(0u, var_0.x), vec2<bool>(false, arg_1))), min(vec2<u32>(countOneBits(_wgslsmith_div_u32(u_input.a, 4294967295u)), ~var_0.x), vec2<u32>(u_input.a, _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d, var_0.x), vec2<u32>(u_input.d, 40049u)), firstTrailingBit(u_input.a), 1u))));
    var_0 = vec2<u32>(~(~319u), _wgslsmith_div_u32(_wgslsmith_mult_u32(firstLeadingBit(23356u) & u_input.d, _wgslsmith_mult_u32(31603u, u_input.d)), _wgslsmith_mult_u32(u_input.d, var_0.x)));
    let var_1 = ~countOneBits(1u);
    return -1919i;
}

fn func_1(arg_0: bool) -> Struct_1 {
    let var_0 = u_input.e.x;
    var var_1 = _wgslsmith_mult_vec4_i32(_wgslsmith_clamp_vec4_i32(~u_input.e, countOneBits(vec4<i32>(-47329i, -24210i, u_input.b, 0i)), u_input.e) | _wgslsmith_mod_vec4_i32(vec4<i32>(var_0, func_2(vec3<f32>(-184f, -431f, 372f), arg_0), -2147483647i, _wgslsmith_mult_i32(u_input.c, 9227i)), select(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b, var_0, u_input.c, 12937i), vec4<i32>(u_input.b, -24223i, -12903i, var_0)), ~vec4<i32>(u_input.b, var_0, u_input.e.x, u_input.e.x), vec4<bool>(arg_0, false, true, arg_0))), _wgslsmith_sub_vec4_i32(vec4<i32>(~(-40465i), _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -1i, -1i, u_input.b), vec4<i32>(-5655i, var_0, u_input.c, var_0)), max(u_input.b, 2147483647i), var_0) | vec4<i32>(reverseBits(-8359i), firstTrailingBit(1i), select(37147i, var_0, true), abs(1i)), _wgslsmith_mod_vec4_i32(u_input.e, abs(~u_input.e))));
    var_1 = ~min(u_input.e, u_input.e >> (countOneBits(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.d, u_input.a, u_input.a, u_input.a), vec4<u32>(4294967295u, 1u, 1u, u_input.d))) % vec4<u32>(32u)));
    var_1 = -u_input.e;
    var_1 = ~reverseBits(u_input.e & vec4<i32>(-2147483647i, _wgslsmith_sub_i32(u_input.c, var_1.x), ~(-1291i), -var_1.x));
    return Struct_1(~vec4<u32>(u_input.d, 1u, u_input.d, _wgslsmith_mult_u32(29848u, u_input.d)) << (vec4<u32>(u_input.d, reverseBits(1u), ~_wgslsmith_mod_u32(66791u, u_input.a), _wgslsmith_mult_u32(func_3(1i, arg_0, u_input.e.yxy).x, 7380u)) % vec4<u32>(32u)), _wgslsmith_div_f32(-1298f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-237f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1127f - 556f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(!select(!(u_input.e.x < 2147483647i), true, true));
    let var_1 = Struct_1(_wgslsmith_sub_vec4_u32(~_wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 53697u, 4294967295u, var_0.a.x), var_0.a), vec4<u32>(var_0.a.x, 4730u, u_input.a, 4294967295u)), _wgslsmith_sub_vec4_u32(func_1(true).a, firstTrailingBit(vec4<u32>(155155u, 20578u, 76365u, u_input.d)) & (var_0.a << (vec4<u32>(var_0.a.x, var_0.a.x, var_0.a.x, 0u) % vec4<u32>(32u))))), _wgslsmith_f_op_f32(-var_0.b));
    var var_2 = min(u_input.e, vec4<i32>(-1i, _wgslsmith_clamp_i32(u_input.e.x >> (~1u % 32u), _wgslsmith_div_i32(abs(-36808i), 1i), 42745i), -23360i, u_input.c));
    var_2 = select(u_input.e, ~(-abs(select(u_input.e, vec4<i32>(-10881i, 27528i, -9720i, 1i), vec4<bool>(false, true, false, false)))), !select(select(select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false), true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false))), -2148f >= _wgslsmith_f_op_f32(var_1.b + var_1.b)));
    let var_3 = vec3<bool>(true, true, true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -630f)), u_input.e, var_0.a, var_0.b);
}

