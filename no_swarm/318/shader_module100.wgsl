struct Struct_1 {
    a: f32,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> vec4<u32> {
    var var_0 = select(~vec3<i32>(_wgslsmith_dot_vec2_i32(select(vec2<i32>(u_input.b, -32009i), vec2<i32>(u_input.b, u_input.b), vec2<bool>(true, false)), vec2<i32>(1i, u_input.b) << (vec2<u32>(u_input.a, 7231u) % vec2<u32>(32u))), u_input.b ^ u_input.b, abs(2750i)), _wgslsmith_mult_vec3_i32(-(vec3<i32>(u_input.b, -3461i, u_input.b) >> ((vec3<u32>(u_input.c.x, 39436u, 0u) ^ vec3<u32>(43504u, 1u, 1u)) % vec3<u32>(32u))), _wgslsmith_div_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(u_input.b, u_input.b, u_input.b), vec3<i32>(_wgslsmith_div_i32(u_input.b, 2147483647i), -1i | u_input.b, _wgslsmith_dot_vec3_i32(vec3<i32>(-52381i, -2147483647i, u_input.b), vec3<i32>(u_input.b, u_input.b, u_input.b))))), _wgslsmith_dot_vec3_u32(select(max(vec3<u32>(29182u, 29011u, 33299u), vec3<u32>(u_input.c.x, u_input.c.x, 9155u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, 29861u, u_input.c.x), vec3<u32>(u_input.c.x, 37248u, 43035u), vec3<u32>(30025u, u_input.a, u_input.c.x)), true), reverseBits(vec3<u32>(u_input.c.x, u_input.c.x, 1u)) & vec3<u32>(u_input.c.x, u_input.a, 88965u)) == u_input.c.x);
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), vec4<u32>(firstTrailingBit(max(_wgslsmith_dot_vec2_u32(u_input.c, vec2<u32>(1u, 0u)), _wgslsmith_sub_u32(u_input.c.x, 1u))), _wgslsmith_dot_vec3_u32(vec3<u32>(~u_input.c.x, select(u_input.c.x, u_input.c.x, true), ~u_input.a), ~select(vec3<u32>(1u, u_input.a, u_input.c.x), vec3<u32>(u_input.c.x, 20015u, u_input.c.x), false)), ~u_input.a, abs(_wgslsmith_add_u32(22816u, u_input.a)) & ~(~4294967295u)));
    var_1 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(386f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-2022f)) * var_1.a) + var_1.a)), ~(~var_1.b));
    var var_2 = _wgslsmith_add_vec3_i32(vec3<i32>(-u_input.b, firstLeadingBit(_wgslsmith_mod_i32(abs(var_0.x), -2147483647i)), var_0.x), vec3<i32>(_wgslsmith_sub_i32(u_input.b >> (0u % 32u), -1i << (_wgslsmith_dot_vec4_u32(var_1.b, vec4<u32>(u_input.c.x, u_input.c.x, var_1.b.x, var_1.b.x)) % 32u)), -1i, ~_wgslsmith_dot_vec2_i32(reverseBits(var_0.xz), vec2<i32>(-2147483647i, u_input.b))));
    var var_3 = 1i;
    return (_wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c.x, u_input.c.x, u_input.a, var_1.b.x), reverseBits(var_1.b)), vec4<u32>(min(u_input.a, 98251u), var_1.b.x, ~u_input.a, 1587u)) >> ((var_1.b ^ var_1.b) % vec4<u32>(32u))) ^ _wgslsmith_div_vec4_u32(vec4<u32>(~(~var_1.b.x), 0u, min(max(u_input.a, u_input.a), abs(59026u)), ~56704u), _wgslsmith_clamp_vec4_u32(vec4<u32>(0u, _wgslsmith_sub_u32(var_1.b.x, 43895u), 1u, _wgslsmith_mult_u32(4294967295u, var_1.b.x)), max(var_1.b, var_1.b) ^ select(var_1.b, var_1.b, false), var_1.b));
}

fn func_2(arg_0: f32, arg_1: i32, arg_2: u32, arg_3: vec4<i32>) -> vec4<i32> {
    var var_0 = (u_input.c.x <= _wgslsmith_mod_u32(select(_wgslsmith_div_u32(arg_2, 4294967295u), ~u_input.a, false), ~u_input.a)) | any(!vec2<bool>(true, all(vec4<bool>(false, false, true, false))));
    var_0 = false && !(!(-2529f == arg_0));
    var var_1 = _wgslsmith_div_i32(-42775i, arg_1);
    var_0 = !(!all(select(select(vec2<bool>(true, true), vec2<bool>(true, true), false), vec2<bool>(true, true), false)));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-arg_0), ~(~func_3()) ^ firstLeadingBit(~vec4<u32>(arg_2, u_input.c.x, 0u, 1u)));
    return vec4<i32>(6953i, u_input.b, -arg_3.x, 51744i);
}

fn func_1(arg_0: bool, arg_1: bool, arg_2: vec2<i32>, arg_3: vec4<f32>) -> f32 {
    let var_0 = arg_1;
    var var_1 = vec4<i32>(1i, ~_wgslsmith_clamp_i32(1i, ~u_input.b, abs(-14964i)) << ((4294967295u << (u_input.a % 32u)) % 32u), u_input.b, arg_2.x);
    var var_2 = _wgslsmith_f_op_f32(arg_3.x * arg_3.x);
    var_1 = vec4<i32>(-1i, u_input.b, u_input.b >> (u_input.a % 32u), _wgslsmith_mult_i32(_wgslsmith_add_i32(-u_input.b, _wgslsmith_clamp_i32(_wgslsmith_add_i32(var_1.x, 1i), 41778i, arg_2.x ^ 32984i)), -28869i));
    var_1 = func_2(784f, ~0i, u_input.a, vec4<i32>(~(-abs(2147483647i)), var_1.x, 0i, 16763i));
    return _wgslsmith_f_op_f32(abs(arg_3.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(false, true, vec2<i32>(29972i, 1i), vec4<f32>(-571f, 769f, 676f, -867f)))))), vec4<u32>(reverseBits(u_input.c.x << (~u_input.a % 32u)), ((u_input.c.x | 12941u) & _wgslsmith_add_u32(11776u, u_input.a)) << ((~u_input.a >> (_wgslsmith_clamp_u32(0u, 1u, u_input.a) % 32u)) % 32u), 0u, ~52402u));
    let var_1 = _wgslsmith_f_op_f32(ceil(-1470f));
    let var_2 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1553f, var_1, var_0.a) - vec3<f32>(-1225f, -187f, 1213f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a, -920f, var_0.a))), vec3<f32>(507f, var_0.a, -1467f)))))));
    var var_3 = Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_1(true, all(vec2<bool>(true, false)), ~vec2<i32>(u_input.b, 2147483647i), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a, var_2.x, 968f, var_1) + vec4<f32>(var_1, 1129f, 1800f, var_0.a)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1 * _wgslsmith_f_op_f32(min(-818f, -1549f))) + _wgslsmith_f_op_f32(func_1(false, all(vec4<bool>(false, true, true, true)), _wgslsmith_add_vec2_i32(vec2<i32>(u_input.b, u_input.b), vec2<i32>(2147483647i, u_input.b)), vec4<f32>(345f, var_1, 167f, var_1)))))), max(var_0.b, firstLeadingBit(abs(~vec4<u32>(var_0.b.x, 21420u, 10396u, 0u)))));
    let var_4 = countOneBits(select(countOneBits(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b, 38324i, u_input.b, 11967i), vec4<i32>(u_input.b, u_input.b, 0i, 33856i))), ~firstLeadingBit(vec4<i32>(6421i, 1i, -52259i, 2147483647i)), !select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, false), false)) << (var_3.b % vec4<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a);
}

