struct Struct_1 {
    a: bool,
    b: vec3<i32>,
    c: vec3<i32>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: i32,
    b: i32,
    c: vec2<u32>,
}

struct Struct_4 {
    a: Struct_1,
    b: f32,
}

struct Struct_5 {
    a: vec2<u32>,
    b: i32,
    c: Struct_1,
    d: f32,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
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

var<private> global0: i32;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool, arg_1: u32, arg_2: vec4<i32>, arg_3: f32) -> u32 {
    global0 = ~(~(-2147483647i));
    let var_0 = _wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(arg_1, ~_wgslsmith_div_u32(u_input.b, u_input.b), ~(~26950u), _wgslsmith_dot_vec4_u32(~vec4<u32>(arg_1, 40870u, arg_1, u_input.b), select(vec4<u32>(4294967295u, arg_1, u_input.b, 1u), vec4<u32>(arg_1, arg_1, u_input.b, arg_1), arg_0))), _wgslsmith_mod_vec4_u32(firstLeadingBit(vec4<u32>(u_input.b, u_input.b, u_input.b, arg_1)), _wgslsmith_mod_vec4_u32(vec4<u32>(11944u, arg_1, arg_1, 0u), vec4<u32>(0u, u_input.b, arg_1, 1u))) ^ (_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b, 1u, 1u, u_input.b), vec4<u32>(1u, 3292u, arg_1, 6065u)) >> (reverseBits(vec4<u32>(1u, 51769u, arg_1, 58735u)) % vec4<u32>(32u)))), _wgslsmith_mult_vec4_u32(vec4<u32>(~arg_1, ~max(u_input.b, arg_1), reverseBits(7252u), ~(arg_1 | 4294967295u)), ~vec4<u32>(~u_input.b, 78212u, arg_1, ~u_input.b)));
    var var_1 = _wgslsmith_div_i32(_wgslsmith_add_i32(arg_2.x & (-2099i | u_input.c), _wgslsmith_mult_i32(0i, abs(arg_2.x))), ~(arg_2.x ^ (u_input.c ^ u_input.c))) >= arg_2.x;
    global0 = u_input.c;
    let var_2 = Struct_3(i32(-1i) * -55674i, max(firstTrailingBit(-reverseBits(arg_2.x)), u_input.c), _wgslsmith_sub_vec2_u32((vec2<u32>(4294967295u, var_0.x) << (~vec2<u32>(59092u, var_0.x) % vec2<u32>(32u))) | vec2<u32>(u_input.b ^ u_input.b, 4294967295u), ~var_0.xz));
    return ~var_2.c.x;
}

fn func_2() -> vec3<bool> {
    let var_0 = max(func_3(true, 36022u, ~reverseBits(vec4<i32>(u_input.a.x, u_input.c, u_input.c, 6929i) & vec4<i32>(0i, u_input.a.x, u_input.a.x, u_input.a.x)), -2092f), min(1u, _wgslsmith_mod_u32(~firstTrailingBit(24615u), ~countOneBits(u_input.b))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(765f, 451f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-117f - 526f))))) - -527f);
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-953f - 1004f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2137f - 1239f) * -1680f))));
    global0 = -2147483647i;
    let var_2 = _wgslsmith_dot_vec2_u32(~(firstLeadingBit(vec2<u32>(20616u, 6068u)) << (min(vec2<u32>(24188u, u_input.b), ~vec2<u32>(0u, u_input.b)) % vec2<u32>(32u))), ~(~(~_wgslsmith_clamp_vec2_u32(vec2<u32>(var_0, 4294967295u), vec2<u32>(0u, var_0), vec2<u32>(u_input.b, 86040u)))));
    return !vec3<bool>(true, _wgslsmith_clamp_u32(19570u, var_2, firstTrailingBit(1u)) < var_2, true);
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: vec2<f32>) -> Struct_5 {
    global0 = i32(-1i) * -38355i;
    let var_0 = 0u;
    let var_1 = func_2();
    var var_2 = ~(~(~firstLeadingBit(vec4<u32>(var_0, 1u, 0u, u_input.b)) ^ vec4<u32>(u_input.b, u_input.b, arg_1.d.x >> (arg_1.d.x % 32u), ~u_input.b)));
    let var_3 = Struct_2(firstLeadingBit(~_wgslsmith_mult_i32(~1i, arg_0.x)));
    return Struct_5(_wgslsmith_sub_vec2_u32(arg_1.d.yz, min(arg_1.d.zx, ~(~var_2.wy))), firstTrailingBit(~_wgslsmith_div_i32(-2147483647i, firstTrailingBit(var_3.a))), Struct_1(true, vec3<i32>(~(~0i), -31999i, ~u_input.a.x), arg_0.wxy, vec3<u32>(~arg_1.d.x, 32183u, ~reverseBits(var_0))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1017f) + _wgslsmith_f_op_f32(min(-218f, -371f)))))), min(u_input.a, select(_wgslsmith_sub_vec3_i32(arg_0.xwx, arg_0.xzw), vec3<i32>(countOneBits(1i), abs(-26346i), -26248i), !all(vec4<bool>(false, true, false, arg_1.a)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(abs(-_wgslsmith_div_vec4_i32(firstTrailingBit(vec4<i32>(u_input.c, u_input.c, 32743i, u_input.c)), -vec4<i32>(u_input.a.x, u_input.c, 1i, u_input.a.x))), Struct_1(!all(vec4<bool>(true, true, true, true)), u_input.a, ~firstTrailingBit(vec3<i32>(1i, u_input.a.x, 2147483647i)), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b, u_input.b, 47767u) | ~vec3<u32>(u_input.b, u_input.b, u_input.b), select(vec3<u32>(u_input.b, u_input.b, 9015u), vec3<u32>(u_input.b, 1u, 1u), vec3<bool>(false, false, true)) ^ vec3<u32>(u_input.b, 0u, 71084u), vec3<u32>(_wgslsmith_clamp_u32(u_input.b, 1161u, u_input.b), ~u_input.b, u_input.b))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(192f - -654f)) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-2036f - 1598f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * 745f)) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(1265f, 1699f) * _wgslsmith_div_f32(-416f, -1057f)))));
    let var_1 = select(func_2().yy, !vec2<bool>((u_input.b | var_0.c.d.x) <= u_input.b, !(var_0.c.a == var_0.c.a)), _wgslsmith_sub_u32(select(select(u_input.b, var_0.c.d.x, false), ~u_input.b, true), ~(u_input.b & var_0.c.d.x)) < _wgslsmith_mult_u32(4294967295u << (firstTrailingBit(9555u) % 32u), 1u));
    global0 = -22943i;
    let var_2 = Struct_1(!var_0.c.a, _wgslsmith_sub_vec3_i32(~var_0.c.b, _wgslsmith_div_vec3_i32(countOneBits(vec3<i32>(13515i, var_0.c.b.x, u_input.c)), func_1(vec4<i32>(-1292i, var_0.b, var_0.b, 2957i), var_0.c, vec2<f32>(1000f, -446f)).c.c)) & (vec3<i32>(var_0.b << (0u % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 963i, 21516i, var_0.c.b.x), vec4<i32>(0i, -34874i, -35135i, 15481i)), abs(var_0.b)) >> (~var_0.c.d % vec3<u32>(32u))), vec3<i32>(0i, _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(21114i, u_input.a.x, 1i, var_0.e.x) | vec4<i32>(u_input.c, 5549i, -11016i, 1i), abs(vec4<i32>(30915i, u_input.c, u_input.c, var_0.e.x))), select(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c, -2147483647i, 2147483647i, u_input.a.x), vec4<i32>(0i, u_input.c, -1i, u_input.a.x)), countOneBits(vec4<i32>(u_input.c, 7473i, -2147483647i, u_input.a.x)), var_0.d > var_0.d)), _wgslsmith_sub_i32(firstLeadingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(6755i, -43931i, 1i, u_input.c), vec4<i32>(10422i, u_input.a.x, u_input.c, 1i))), -13445i)), var_0.c.d);
    let var_3 = _wgslsmith_dot_vec4_u32(vec4<u32>(1u >> (reverseBits(var_2.d.x) % 32u), func_3(any(var_1), u_input.b, _wgslsmith_sub_vec4_i32(vec4<i32>(-53738i, -2147483647i, var_0.b, u_input.a.x), vec4<i32>(-1i, var_0.c.c.x, u_input.a.x, 0i)), 964f), _wgslsmith_add_u32(1u, 22670u), firstTrailingBit(74085u)), ~(~(~vec4<u32>(var_0.c.d.x, var_2.d.x, 0u, 28888u)))) >> (_wgslsmith_div_u32(1u, var_2.d.x) % 32u);
    let var_4 = var_0.c.d.x;
    var var_5 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-746f, -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.d + var_0.d)), _wgslsmith_f_op_f32(var_0.d * var_0.d)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1381f, _wgslsmith_div_f32(var_0.d, var_0.d), -1000f, -2481f))));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.d);
}

