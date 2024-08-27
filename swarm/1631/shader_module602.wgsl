struct Struct_1 {
    a: vec3<i32>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: i32,
    e: vec3<i32>,
}

struct Struct_3 {
    a: bool,
    b: vec3<u32>,
}

struct Struct_4 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec3<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: i32,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
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

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> u32 {
    var var_0 = !(!select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), true), select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, false), true))));
    var_0 = select(vec2<bool>(true, all(select(vec3<bool>(false, true, var_0.x), vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(false, false, true))) || (u_input.e == 2147483647i)), !(!(!(!vec2<bool>(false, var_0.x)))), any(select(vec2<bool>(true, select(true, var_0.x, true)), select(select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(false, var_0.x), true), vec2<bool>(var_0.x, var_0.x), var_0.x), select(vec2<bool>(true, false), vec2<bool>(true, var_0.x), select(true, false, var_0.x)))));
    let var_1 = -1000f;
    var_0 = !select(select(select(select(vec2<bool>(var_0.x, false), vec2<bool>(var_0.x, var_0.x), var_0.x), select(vec2<bool>(true, var_0.x), vec2<bool>(var_0.x, var_0.x), var_0.x), select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(var_0.x, false), vec2<bool>(true, var_0.x))), vec2<bool>(true, !var_0.x), vec2<bool>(all(vec4<bool>(var_0.x, false, false, false)), var_0.x)), select(!select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(var_0.x, var_0.x), vec2<bool>(false, true)), vec2<bool>(true, true), true), true);
    let var_2 = Struct_4(select(firstLeadingBit(_wgslsmith_sub_vec4_i32(~vec4<i32>(u_input.b.x, -1i, u_input.e, 40689i), _wgslsmith_clamp_vec4_i32(vec4<i32>(-28751i, 26319i, u_input.e, 21247i), vec4<i32>(18162i, u_input.b.x, 2147483647i, -4962i), vec4<i32>(-18521i, u_input.e, -11274i, 2147483647i)))), min(-(vec4<i32>(u_input.e, u_input.b.x, -9306i, 2147483647i) | vec4<i32>(u_input.b.x, 1i, 2147483647i, u_input.e)), vec4<i32>(-u_input.e, -u_input.b.x, 64831i, 5804i)), !(firstTrailingBit(23329u) > 4294967295u)));
    return ~(~max(1u ^ u_input.d, reverseBits(u_input.a)));
}

fn func_2() -> Struct_3 {
    let var_0 = Struct_1(u_input.b, countOneBits(~abs(~vec4<u32>(u_input.a, u_input.d, u_input.a, u_input.d))));
    var var_1 = Struct_3(!(!(var_0.b.x < var_0.b.x)), vec3<u32>(~(~4294967295u), u_input.c.x, _wgslsmith_mult_u32(u_input.d, 3405u)));
    var var_2 = Struct_2(Struct_1(vec3<i32>(1i, var_0.a.x, max(_wgslsmith_add_i32(-2147483647i, var_0.a.x), var_0.a.x)), select(~var_0.b, var_0.b, var_1.a)), Struct_1(select(u_input.b | var_0.a, -var_0.a, select(vec3<bool>(var_1.a, var_1.a, var_1.a), !vec3<bool>(var_1.a, var_1.a, var_1.a), select(vec3<bool>(var_1.a, true, var_1.a), vec3<bool>(false, var_1.a, false), vec3<bool>(var_1.a, true, false)))), var_0.b), Struct_1(vec3<i32>(max(abs(var_0.a.x), _wgslsmith_sub_i32(-19068i, 0i)), max(~var_0.a.x, u_input.b.x), i32(-1i) * -var_0.a.x), vec4<u32>(select(_wgslsmith_mult_u32(4294967295u, u_input.d), ~u_input.d, !var_1.a), 4294967295u, 4294967295u, _wgslsmith_mult_u32(firstLeadingBit(49664u), ~var_0.b.x))), u_input.b.x, abs(var_0.a));
    var var_3 = Struct_4(-vec4<i32>(0i, _wgslsmith_sub_i32(var_2.b.a.x ^ var_0.a.x, -var_0.a.x), _wgslsmith_sub_i32(-2147483647i, ~u_input.e), -(u_input.b.x & var_0.a.x)));
    let var_4 = vec2<i32>(u_input.b.x, ~(-_wgslsmith_clamp_i32(27130i, var_2.d | 0i, ~0i)));
    return Struct_3(true, ~max(~_wgslsmith_mult_vec3_u32(var_0.b.zyw, vec3<u32>(4294967295u, 0u, 9594u)), vec3<u32>(12322u, func_3(), reverseBits(0u))));
}

fn func_4(arg_0: Struct_3, arg_1: i32, arg_2: f32) -> f32 {
    var var_0 = Struct_1(-vec3<i32>(i32(-1i) * -u_input.b.x, -45510i, _wgslsmith_mod_i32(~23051i, i32(-1i) * -6022i)), vec4<u32>(_wgslsmith_div_u32(arg_0.b.x, max(arg_0.b.x ^ u_input.a, 50899u)), _wgslsmith_div_u32(4294967295u, u_input.c.x), u_input.d & 48431u, 19466u | arg_0.b.x));
    var var_1 = _wgslsmith_f_op_f32(arg_2 + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_2))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2 + 1223f))), arg_0.a | arg_0.a)));
    var var_2 = Struct_1(vec3<i32>(firstTrailingBit(firstTrailingBit(var_0.a.x | -11758i)), _wgslsmith_dot_vec4_i32(max(-vec4<i32>(u_input.e, 1i, -4015i, 2147483647i), -vec4<i32>(2147483647i, u_input.e, -12127i, -2147483647i)), abs(vec4<i32>(2147483647i, 7223i, 0i, var_0.a.x))), arg_1), vec4<u32>(var_0.b.x, u_input.d, firstTrailingBit(_wgslsmith_add_u32(~var_0.b.x, ~14314u)), firstLeadingBit(10301u)));
    let var_3 = Struct_1(_wgslsmith_add_vec3_i32(firstLeadingBit(max(u_input.b, var_2.a) | vec3<i32>(var_2.a.x, u_input.e, arg_1)), vec3<i32>(-_wgslsmith_sub_i32(var_2.a.x, u_input.e), 112i, -23067i)), abs(~vec4<u32>(~4294967295u, ~var_2.b.x, _wgslsmith_sub_u32(var_0.b.x, var_2.b.x), 39062u)));
    var_2 = var_3;
    return _wgslsmith_f_op_f32(arg_2 * 1f);
}

fn func_1(arg_0: vec3<bool>, arg_1: vec4<u32>, arg_2: Struct_1) -> f32 {
    let var_0 = true;
    let var_1 = Struct_2(arg_2, Struct_1(~arg_2.a, arg_1), Struct_1(vec3<i32>(u_input.e, arg_2.a.x, 1i), ~_wgslsmith_sub_vec4_u32(arg_2.b, _wgslsmith_mult_vec4_u32(arg_1, arg_2.b))), select(~arg_2.a.x, _wgslsmith_div_i32(arg_2.a.x, -23727i), arg_0.x), arg_2.a);
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(func_4(func_2(), 1i, -530f))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1032f, -1000f)))))));
    var var_3 = Struct_3(var_0 || var_0, var_1.a.b.zyy);
    var var_4 = Struct_1(var_1.a.a, vec4<u32>(_wgslsmith_dot_vec4_u32(~(~arg_1), ~var_1.a.b), reverseBits(4294967295u) >> ((u_input.d | arg_2.b.x) % 32u), 4294967295u, arg_2.b.x));
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2 - var_2)) + _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-485f, 1276f), _wgslsmith_f_op_f32(-var_2), true && (arg_2.b.x > 4294967295u)))), _wgslsmith_f_op_f32(-1288f - _wgslsmith_f_op_f32(-var_2))));
}

fn func_5(arg_0: i32, arg_1: Struct_2, arg_2: vec4<f32>, arg_3: Struct_2) -> StorageBuffer {
    let var_0 = false;
    let var_1 = Struct_4(vec4<i32>(~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.e, 2147483647i, 0i, u_input.b.x) ^ vec4<i32>(-8882i, arg_0, 45405i, 2147483647i), select(vec4<i32>(arg_1.d, 11609i, -13377i, u_input.e), vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, -2147483647i), var_0)), 0i, _wgslsmith_sub_i32(13417i, u_input.b.x), arg_3.b.a.x));
    let var_2 = Struct_4(select(vec4<i32>(u_input.e, _wgslsmith_mod_i32(arg_0, u_input.b.x), 0i, abs(-22017i)) & firstTrailingBit(var_1.a), var_1.a, !var_0));
    var var_3 = any(!(!(!select(vec3<bool>(var_0, false, var_0), vec3<bool>(false, false, false), vec3<bool>(var_0, false, var_0)))));
    var var_4 = arg_1;
    return StorageBuffer(_wgslsmith_mult_vec4_i32(abs(var_1.a) ^ -(var_1.a ^ vec4<i32>(-2147483647i, 0i, -1i, arg_3.b.a.x)), _wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(arg_3.c.a.x, arg_3.b.a.x), arg_1.c.a.x, select(-19617i, var_1.a.x, true), arg_0), vec4<i32>(-1i << (arg_3.a.b.x % 32u), -59742i, -12921i, 89166i))), _wgslsmith_clamp_vec3_u32(~arg_3.a.b.wzw, vec3<u32>(1u, 60445u, 1u), vec3<u32>(_wgslsmith_sub_u32(15584u | arg_3.c.b.x, max(22709u, arg_1.c.b.x)), 9233u, ~var_4.c.b.x | arg_1.b.b.x)), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, -1i, ~arg_0, -u_input.e << (1u % 32u)), ~var_1.a), ~(-16816i), ~(~(62673u << (arg_1.c.b.x % 32u))) ^ var_4.a.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_5(u_input.e, Struct_2(Struct_1((vec3<i32>(u_input.e, u_input.e, 39116i) << (u_input.c % vec3<u32>(32u))) | -vec3<i32>(u_input.b.x, 18847i, -2147483647i), vec4<u32>(u_input.d, 41319u, _wgslsmith_mult_u32(u_input.d, 31935u), u_input.c.x)), Struct_1(-u_input.b, vec4<u32>(u_input.c.x, 40296u, ~16475u, _wgslsmith_div_u32(u_input.c.x, u_input.c.x))), Struct_1(vec3<i32>(~(-1i), u_input.e, firstLeadingBit(42876i)), vec4<u32>(~u_input.d, firstLeadingBit(u_input.a), ~8055u, _wgslsmith_clamp_u32(u_input.a, u_input.a, u_input.c.x))), _wgslsmith_add_i32(u_input.e, -_wgslsmith_sub_i32(u_input.b.x, 40741i)), abs(vec3<i32>(abs(1i), ~0i, u_input.b.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -107f))), _wgslsmith_f_op_f32(func_1(vec3<bool>(true, true, false), vec4<u32>(44720u, 34681u, u_input.a, u_input.d), Struct_1(u_input.b, vec4<u32>(14281u, 0u, u_input.a, u_input.a)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-324f + 1000f)), _wgslsmith_div_f32(-850f, -1804f)) * _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_div_f32(-284f, -306f), _wgslsmith_f_op_f32(func_1(vec3<bool>(true, false, true), vec4<u32>(u_input.d, u_input.a, 4294967295u, 2276u), Struct_1(u_input.b, vec4<u32>(u_input.a, 33743u, u_input.a, u_input.c.x)))), _wgslsmith_f_op_f32(f32(-1f) * -975f), -1390f)))), Struct_2(Struct_1(_wgslsmith_add_vec3_i32(select(u_input.b, vec3<i32>(-11251i, -2147483647i, u_input.b.x), true), u_input.b), select(vec4<u32>(u_input.c.x, u_input.d, u_input.c.x, 43233u), vec4<u32>(5151u, 1u, u_input.c.x, u_input.a), true) & ~vec4<u32>(0u, u_input.c.x, 0u, u_input.d)), Struct_1(vec3<i32>(-13238i, u_input.e, i32(-1i) * -36126i), vec4<u32>(abs(4294967295u), func_2().b.x, reverseBits(u_input.a), 2239u)), Struct_1(vec3<i32>(1i, u_input.e, u_input.b.x) >> (~u_input.c % vec3<u32>(32u)), firstLeadingBit(vec4<u32>(u_input.c.x, 0u, 20162u, u_input.c.x)) | vec4<u32>(u_input.a, 55793u, u_input.c.x, u_input.a)), select(0i, u_input.b.x, true) | (_wgslsmith_mult_i32(u_input.e, u_input.e) | _wgslsmith_mult_i32(-2147483647i, u_input.b.x)), vec3<i32>(-1i, u_input.b.x, min(1i, u_input.b.x))));
}

