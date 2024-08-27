struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: bool,
    d: u32,
    e: i32,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: f32,
    d: vec3<u32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec4<i32> {
    var var_0 = Struct_1(~(~vec4<u32>(4294967295u, u_input.a.x & u_input.a.x, _wgslsmith_mult_u32(u_input.a.x, u_input.a.x), 0u)), true, true, ~max(u_input.a.x ^ _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 0u), u_input.a.xx), ~4294967295u), -_wgslsmith_mod_i32(u_input.b.x << (abs(727u) % 32u), (u_input.b.x ^ u_input.b.x) << (~u_input.a.x % 32u)));
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(301f, -674f, 1774f))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-349f, -1063f, 947f) - vec3<f32>(261f, -396f, -1085f)))) * vec3<f32>(_wgslsmith_f_op_f32(-235f + -1125f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-265f)), _wgslsmith_f_op_f32(f32(-1f) * -1576f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -125f) * -369f))) + _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-775f, -861f, -1257f))))));
    var var_2 = Struct_1(~(~(~_wgslsmith_div_vec4_u32(var_0.a, var_0.a))), var_0.c, false, ~_wgslsmith_dot_vec3_u32(var_0.a.wwz, _wgslsmith_mult_vec3_u32(var_0.a.yxz, vec3<u32>(40680u, 34771u, var_0.a.x))), reverseBits(~(-(i32(-1i) * -80346i))));
    var var_3 = reverseBits(u_input.b.x);
    var var_4 = 55475u;
    return -max(-vec4<i32>(var_2.e, var_0.e, 1i, -var_2.e), vec4<i32>(~firstLeadingBit(var_2.e), u_input.b.x, var_2.e, u_input.b.x));
}

fn func_2(arg_0: vec3<u32>, arg_1: vec4<bool>, arg_2: vec3<f32>) -> vec2<u32> {
    let var_0 = Struct_3(u_input.a.zy, _wgslsmith_mult_vec4_i32(func_3(), reverseBits((vec4<i32>(u_input.b.x, u_input.b.x, -2147483647i, u_input.b.x) << (vec4<u32>(arg_0.x, 25499u, 101663u, arg_0.x) % vec4<u32>(32u))) << (vec4<u32>(14787u, u_input.a.x, arg_0.x, 1u) % vec4<u32>(32u)))));
    var var_1 = Struct_1(~(vec4<u32>(4294967295u, 48376u, ~var_0.a.x, 51972u) ^ ~vec4<u32>(60435u, 4294967295u, 4294967295u, var_0.a.x)), all(!vec3<bool>(false, false & arg_1.x, true)), arg_1.x, 1192u, -34032i);
    var_1 = Struct_1(vec4<u32>(1u, 1u, ~(~(~0u)), _wgslsmith_div_u32(var_1.a.x, _wgslsmith_dot_vec4_u32(var_1.a, vec4<u32>(1u, 34429u, var_0.a.x, u_input.a.x)) << (0u % 32u))), select(true, all(select(!arg_1.zw, arg_1.wx, true)), min(var_1.e, var_0.b.x) < var_0.b.x), arg_2.x <= -1703f, arg_0.x >> (_wgslsmith_mod_u32(32925u, ~7405u) % 32u), firstTrailingBit(_wgslsmith_clamp_i32(-1093i, ~_wgslsmith_add_i32(var_1.e, -35138i), 1i)));
    let var_2 = Struct_3(~countOneBits(_wgslsmith_div_vec2_u32(abs(vec2<u32>(arg_0.x, 2542u)), u_input.a.xx)), _wgslsmith_sub_vec4_i32(var_0.b, var_0.b) & _wgslsmith_add_vec4_i32(-countOneBits(var_0.b), -vec4<i32>(67425i, u_input.b.x, var_0.b.x, -1i)));
    var var_3 = countOneBits(var_1.a);
    return ~vec2<u32>(_wgslsmith_dot_vec2_u32(countOneBits(var_3.yw), vec2<u32>(87723u, 3429u) ^ arg_0.zy), firstLeadingBit(var_3.x & 0u) >> (var_1.d % 32u));
}

fn func_1() -> f32 {
    let var_0 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -797f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(674f))), 290f))));
    let var_1 = Struct_3(firstLeadingBit(func_2(u_input.a, select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-199f, var_0.a.x, -1082f))) << (~abs(vec2<u32>(u_input.a.x, u_input.a.x)) % vec2<u32>(32u))), func_3());
    var var_2 = vec4<u32>(u_input.a.x, var_1.a.x, u_input.a.x & ~u_input.a.x, reverseBits(var_1.a.x)) | vec4<u32>(~4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(~1u, 4294967295u), ~(u_input.a.zy & vec2<u32>(u_input.a.x, 7650u))), 131245u, max(_wgslsmith_add_u32(4068u, ~24691u), _wgslsmith_sub_u32(func_2(vec3<u32>(u_input.a.x, 0u, var_1.a.x), vec4<bool>(false, true, true, false), vec3<f32>(-1000f, var_0.a.x, var_0.a.x)).x, u_input.a.x)));
    var_2 = min(~vec4<u32>(abs(169u), _wgslsmith_sub_u32(u_input.a.x ^ u_input.a.x, 4294967295u ^ u_input.a.x), 4294967295u, u_input.a.x), _wgslsmith_mod_vec4_u32(firstTrailingBit(~abs(vec4<u32>(u_input.a.x, 31423u, 22162u, var_2.x))), _wgslsmith_sub_vec4_u32(~(~vec4<u32>(u_input.a.x, var_2.x, var_2.x, var_2.x)), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, var_2.x, 71948u, 4503u), ~vec4<u32>(var_2.x, u_input.a.x, 21613u, u_input.a.x)))));
    var_2 = vec4<u32>(4294967295u, ~(~(~var_2.x)), var_1.a.x, _wgslsmith_mod_u32(~(~1u), u_input.a.x));
    return _wgslsmith_f_op_f32(-1390f + -711f);
}

fn func_4(arg_0: bool, arg_1: f32, arg_2: vec2<u32>) -> vec2<u32> {
    var var_0 = max(arg_2, _wgslsmith_clamp_vec2_u32(u_input.a.yx, vec2<u32>(30474u, u_input.a.x), ~_wgslsmith_mod_vec2_u32(~arg_2, _wgslsmith_clamp_vec2_u32(vec2<u32>(66216u, arg_2.x), arg_2, vec2<u32>(4294967295u, 42073u)))));
    let var_1 = Struct_2(vec2<f32>(_wgslsmith_div_f32(-208f, _wgslsmith_f_op_f32(-248f * _wgslsmith_f_op_f32(ceil(arg_1)))), _wgslsmith_f_op_f32(func_1())));
    var var_2 = !(true == !all(select(vec2<bool>(arg_0, false), vec2<bool>(true, arg_0), vec2<bool>(arg_0, arg_0))));
    var var_3 = Struct_3(~firstLeadingBit(u_input.a.zx), abs(vec4<i32>(-15417i, ~firstTrailingBit(u_input.b.x), _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, 0i, 1i, u_input.b.x), vec4<i32>(u_input.b.x, 8013i, -12378i, u_input.b.x)), _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, u_input.b.x, u_input.b.x, u_input.b.x), vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, -2665i))), -2147483647i)));
    let var_4 = all(select(vec2<bool>(arg_0, arg_0), !vec2<bool>(true, all(vec4<bool>(arg_0, arg_0, arg_0, arg_0))), !(!any(vec3<bool>(arg_0, arg_0, false)))));
    return u_input.a.zx;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(func_4(true, _wgslsmith_f_op_f32(func_1()), u_input.a.zx), ~(max(~vec4<i32>(3693i, -23707i, 1332i, u_input.b.x), -vec4<i32>(-41503i, 1i, u_input.b.x, u_input.b.x)) << (vec4<u32>(countOneBits(u_input.a.x), _wgslsmith_sub_u32(u_input.a.x, 1u), 4294967295u, u_input.a.x) % vec4<u32>(32u))));
    var var_1 = Struct_1(~(~(_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 1u, u_input.a.x, var_0.a.x), vec4<u32>(56211u, 18249u, u_input.a.x, 4294967295u)) >> (~vec4<u32>(1u, 2751u, u_input.a.x, u_input.a.x) % vec4<u32>(32u)))), _wgslsmith_dot_vec2_u32(~_wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, 43296u), vec2<u32>(u_input.a.x, 0u)), max(_wgslsmith_div_vec2_u32(vec2<u32>(4775u, 53487u), vec2<u32>(u_input.a.x, u_input.a.x)), var_0.a)) > (abs(~var_0.a.x) >> (abs(~0u) % 32u)), true, u_input.a.x, -15687i);
    let var_2 = vec3<bool>(var_1.c, true == var_1.b, all(!(!select(vec3<bool>(var_1.b, var_1.c, var_1.c), vec3<bool>(false, true, var_1.b), vec3<bool>(var_1.b, var_1.b, true)))));
    let var_3 = abs(~abs(vec3<u32>(1u, _wgslsmith_div_u32(var_1.d, var_1.a.x), abs(var_0.a.x))));
    let var_4 = ~var_1.a.x << (countOneBits(_wgslsmith_sub_u32(var_1.a.x, _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 4294967295u), var_1.a.yw), var_3.x, 58234u))) % 32u);
    let var_5 = Struct_3(var_3.zz, -vec4<i32>(u_input.b.x, firstTrailingBit(_wgslsmith_add_i32(u_input.b.x, var_1.e)), -_wgslsmith_mod_i32(u_input.b.x, 0i), _wgslsmith_clamp_i32(~var_1.e, _wgslsmith_mult_i32(u_input.b.x, 2147483647i), 1i >> (1u % 32u))));
    var_1 = Struct_1(vec4<u32>(~var_3.x, var_3.x, firstTrailingBit(41063u) >> (~(u_input.a.x & 15229u) % 32u), 15680u), abs(var_1.e) >= var_1.e, _wgslsmith_dot_vec3_i32(firstLeadingBit(_wgslsmith_clamp_vec3_i32(vec3<i32>(2147483647i, u_input.b.x, var_1.e), vec3<i32>(u_input.b.x, var_1.e, var_5.b.x), vec3<i32>(u_input.b.x, -5483i, var_5.b.x))), -vec3<i32>(var_0.b.x, 30397i, var_0.b.x)) < _wgslsmith_dot_vec2_i32(-vec2<i32>(1i, u_input.b.x), vec2<i32>(-46959i, 2147483647i)), 1u, var_0.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(select(var_0.b.xyz, -firstTrailingBit(~vec3<i32>(1i, var_0.b.x, 38843i)), var_1.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -306f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-501f + 1375f))) * -142f), -790f, select(min(vec3<u32>(1u, firstTrailingBit(27216u), 1u), ~var_3), var_3, any(select(!var_2.xx, vec2<bool>(false, true), var_2.zy))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1046f, 1018f)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(165f, -194f)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-239f, 317f), vec2<f32>(880f, -1539f), var_2.yz)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-215f, -149f), vec2<f32>(372f, 170f), var_1.c)) * _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(898f, 360f)))))));
}

