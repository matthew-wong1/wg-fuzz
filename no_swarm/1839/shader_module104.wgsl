struct Struct_1 {
    a: vec3<f32>,
    b: vec4<f32>,
    c: bool,
    d: u32,
}

struct Struct_2 {
    a: i32,
    b: vec2<u32>,
}

struct Struct_3 {
    a: i32,
    b: bool,
    c: u32,
    d: vec4<f32>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec3<f32>) -> u32 {
    let var_0 = !select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), true), vec4<bool>(true, !select(false, false, false), true, true));
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(317f, 121f, -720f), _wgslsmith_f_op_vec3_f32(step(arg_0, vec3<f32>(arg_0.x, arg_0.x, -1000f))))) - arg_0), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-355f - -859f) * arg_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x * 358f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) - arg_0.x), 760f))), any(!(!(!var_0))), _wgslsmith_sub_u32(~_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(8930u, 38871u, 1u), ~9965u, ~54272u), countOneBits(~(~0u))));
    let var_2 = abs(~reverseBits(firstTrailingBit(firstLeadingBit(vec3<u32>(77999u, var_1.d, 4294967295u)))));
    let var_3 = _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_add_i32(-38258i, u_input.a), u_input.a, min(countOneBits(-u_input.a), _wgslsmith_mod_i32(u_input.a, u_input.a) ^ 0i), select(-(~u_input.a), i32(-1i) * -1i, !all(vec3<bool>(true, var_0.x, true)))), vec4<i32>(21631i, _wgslsmith_mod_i32(-7237i, select(-u_input.a, ~u_input.a, var_0.x)), u_input.a, -27985i));
    let var_4 = Struct_4(var_1, Struct_3(-50237i, var_1.c, _wgslsmith_mult_u32(~(1u << (var_2.x % 32u)), 4294967295u ^ var_2.x), vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(611f, 554f)), _wgslsmith_f_op_f32(select(arg_0.x, 1000f, var_0.x)))), _wgslsmith_f_op_f32(-var_1.b.x), _wgslsmith_f_op_f32(f32(-1f) * -1450f))));
    return 28729u;
}

fn func_2() -> Struct_1 {
    var var_0 = vec2<u32>(_wgslsmith_sub_u32(max(1u, countOneBits(21712u << (1u % 32u))), ~func_3(vec3<f32>(1157f, -290f, 1666f))), 1u);
    let var_1 = ~_wgslsmith_mult_vec3_u32(min(~vec3<u32>(var_0.x, 1u, 67697u) ^ (vec3<u32>(var_0.x, 4294967295u, 41271u) | vec3<u32>(var_0.x, 1u, 1u)), ~(~vec3<u32>(11157u, 0u, 0u))), vec3<u32>(countOneBits(var_0.x), ~0u << (var_0.x % 32u), ~1u));
    var var_2 = 9977u;
    let var_3 = Struct_4(Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1000f))), -1212f, 1387f), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1072f, 237f, 982f, 227f)) + vec4<f32>(-332f, -848f, 321f, 208f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-2352f, 780f, 1133f, -1337f) - vec4<f32>(-198f, -1098f, -252f, -554f)))), all(vec2<bool>(true, true)), ~_wgslsmith_clamp_u32(var_0.x, 1u, _wgslsmith_add_u32(79609u, var_0.x))), Struct_3(-firstLeadingBit(_wgslsmith_clamp_i32(u_input.a, -53788i, 0i)), true, _wgslsmith_sub_u32(1u << (_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, 0u, 89955u, var_0.x), vec4<u32>(7440u, var_0.x, 36137u, var_1.x)) % 32u), var_1.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-445f, 462f, 997f, 102f) + vec4<f32>(250f, 1288f, -578f, 1098f))))));
    let var_4 = select(vec3<u32>(~(~_wgslsmith_sub_u32(696u, 0u)), 21648u, ~(~12563u) >> (_wgslsmith_add_u32(var_1.x, var_1.x) % 32u)), countOneBits(vec3<u32>(~0u, var_1.x, var_3.a.d) ^ var_1), vec3<bool>(0u > var_3.a.d, all(!select(vec3<bool>(false, true, var_3.b.b), vec3<bool>(var_3.a.c, true, true), vec3<bool>(true, true, true))), var_3.a.c && false));
    return var_3.a;
}

fn func_1(arg_0: vec3<u32>) -> Struct_4 {
    let var_0 = Struct_4(func_2(), Struct_3(-u_input.a, true, abs(firstTrailingBit(arg_0.x)), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-542f * -279f), _wgslsmith_f_op_f32(max(685f, -353f)), _wgslsmith_f_op_f32(253f - 1000f), _wgslsmith_f_op_f32(2275f * 889f)), vec4<f32>(func_2().a.x, _wgslsmith_f_op_f32(f32(-1f) * -971f), _wgslsmith_f_op_f32(f32(-1f) * -1014f), _wgslsmith_f_op_f32(f32(-1f) * -951f)))));
    var var_1 = Struct_2(i32(-1i) * -_wgslsmith_add_i32(1i, firstLeadingBit(u_input.a)), arg_0.yz);
    let var_2 = var_0.a;
    let var_3 = 28396u;
    var_1 = Struct_2(_wgslsmith_dot_vec4_i32(-_wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, u_input.a, 12405i, -5909i), vec4<i32>(var_1.a, var_0.b.a, 1i, 1i)), vec4<i32>(u_input.a, 47391i, u_input.a, var_0.b.a)), _wgslsmith_clamp_vec4_i32(max(vec4<i32>(var_1.a, -7576i, var_0.b.a, 4729i) >> (vec4<u32>(4294967295u, var_0.b.c, var_3, var_3) % vec4<u32>(32u)), vec4<i32>(46424i, -19330i, 19217i, -52810i)), firstTrailingBit(vec4<i32>(var_0.b.a, -1i, -58212i, var_0.b.a) << (vec4<u32>(var_3, var_3, var_2.d, var_2.d) % vec4<u32>(32u))), ~(-vec4<i32>(var_1.a, 2147483647i, 13352i, -1i)))), vec2<u32>(~var_0.a.d, reverseBits(var_1.b.x)));
    return Struct_4(var_0.a, Struct_3(-18646i, var_0.b.b, var_0.b.c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.a.x, 2291f, var_2.b.x, -416f)) - vec4<f32>(var_2.a.x, var_2.b.x, 1831f, 858f)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(~firstTrailingBit(vec3<u32>(28912u, firstTrailingBit(1u), _wgslsmith_mod_u32(89914u, 101040u))));
    var_0 = func_1(~abs(vec3<u32>(var_0.a.d, ~var_0.a.d, var_0.b.c)));
    var_0 = Struct_4(Struct_1(var_0.b.d.yyx, vec4<f32>(851f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.b.d.x), 652f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(-985f)))), _wgslsmith_div_f32(var_0.b.d.x, 1380f)), !select(var_0.a.c, false, var_0.a.c) | var_0.a.c, 4898u), var_0.b);
    var var_1 = var_0.a.d;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-960f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), func_1(~firstLeadingBit(vec3<u32>(var_0.b.c, 1u, var_0.b.c))).a.c)));
    let var_3 = func_2().a.x;
    var_1 = var_0.b.c;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(~_wgslsmith_sub_u32(_wgslsmith_sub_u32(var_0.a.d, 27519u), _wgslsmith_mult_u32(var_0.a.d, var_0.b.c)), 1u), ~abs(_wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, var_0.a.d, 70782u, var_0.a.d), vec4<u32>(0u, 0u, 0u, 1u)), vec4<u32>(0u, 4294967295u, var_0.a.d, var_0.a.d))), var_0.b.d);
}

