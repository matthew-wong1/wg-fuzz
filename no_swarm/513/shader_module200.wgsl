struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: vec4<f32>,
    d: vec4<u32>,
    e: bool,
}

struct Struct_2 {
    a: u32,
    b: vec2<u32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
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

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: Struct_1) -> u32 {
    var var_0 = Struct_2(18145u, vec2<u32>(firstTrailingBit(_wgslsmith_add_u32(65808u, 1u)) & u_input.a.x, ~(~(~u_input.a.x))), Struct_1(min(reverseBits(vec4<i32>(21429i, arg_1.a.x, -22060i, -5155i)), arg_1.a), !arg_2.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.c.x, -205f, 909f, -983f) * arg_2.c)), ~_wgslsmith_div_vec4_u32(~vec4<u32>(32937u, 24508u, u_input.a.x, arg_1.d.x), arg_2.d ^ arg_2.d), !(!arg_1.e & any(vec4<bool>(arg_1.e, arg_1.e, arg_1.b, arg_1.b)))));
    var var_1 = Struct_2(_wgslsmith_div_u32(arg_1.d.x, _wgslsmith_dot_vec4_u32(var_0.c.d, var_0.c.d)), ~max(abs(vec2<u32>(23507u, arg_2.d.x)), max(vec2<u32>(arg_1.d.x, 15231u), vec2<u32>(4294967295u, 4308u))) << (firstLeadingBit(var_0.c.d.yy) % vec2<u32>(32u)), arg_1);
    let var_2 = ~reverseBits(0u);
    let var_3 = Struct_1(var_0.c.a >> (vec4<u32>(arg_1.d.x, _wgslsmith_mod_u32(1u, 159u & arg_1.d.x), u_input.b.x, ~50221u) % vec4<u32>(32u)), arg_2.e, vec4<f32>(554f, 1643f, arg_1.c.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1135f) + _wgslsmith_f_op_f32(f32(-1f) * -213f)), -2060f))), vec4<u32>(var_2, _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(81045u, arg_2.d.x, 0u), vec3<u32>(27492u, 0u, 0u)), arg_2.d.xzx), var_0.c.d.x), ~min(_wgslsmith_clamp_u32(108748u, 15642u, arg_1.d.x), u_input.a.x), u_input.b.x), true);
    var var_4 = max(select(firstTrailingBit(min(firstLeadingBit(var_1.c.d.www), var_3.d.yyz)), var_1.c.d.zyw, select(!vec3<bool>(var_3.b, false, true), vec3<bool>(false, var_0.c.e, select(var_1.c.b, false, true)), !vec3<bool>(var_3.e, var_0.c.b, var_0.c.e))), u_input.a);
    return ~(~25011u);
}

fn func_2(arg_0: vec4<f32>) -> Struct_1 {
    var var_0 = u_input.b.x;
    var_0 = u_input.b.x;
    var_0 = ~(~70152u);
    var_0 = firstLeadingBit(u_input.b.x);
    let var_1 = vec4<u32>(0u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, 1u) << ((u_input.b.xx >> (u_input.b.zx % vec2<u32>(32u))) % vec2<u32>(32u)), u_input.b.xw) | 17586u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, func_3(vec2<f32>(arg_0.x, 397f), Struct_1(vec4<i32>(17210i, -1i, 1i, 1i), false, vec4<f32>(-1839f, -239f, 104f, arg_0.x), u_input.b, true), Struct_1(vec4<i32>(-2147483647i, -1i, 0i, 2147483647i), true, vec4<f32>(arg_0.x, arg_0.x, -633f, 989f), u_input.b, false)), u_input.a.x & 6169u, ~u_input.a.x) ^ (_wgslsmith_sub_vec4_u32(u_input.b, u_input.b) << (~vec4<u32>(1u, u_input.a.x, u_input.a.x, u_input.b.x) % vec4<u32>(32u))), max(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 0u, u_input.a.x) >> (u_input.b % vec4<u32>(32u)), u_input.b), u_input.b)), u_input.a.x);
    return Struct_1(select(_wgslsmith_mult_vec4_i32(_wgslsmith_div_vec4_i32(select(vec4<i32>(36045i, -5578i, -29214i, 42089i), vec4<i32>(-1i, 22427i, 29498i, 5619i), vec4<bool>(false, false, true, false)), _wgslsmith_mod_vec4_i32(vec4<i32>(1i, 23671i, 1i, 58225i), vec4<i32>(1i, 23163i, -39235i, 88455i))), vec4<i32>(1i, 1i, 1i, 1i)), ~vec4<i32>(abs(2147483647i), 1i, ~(-26345i), i32(-1i) * -2147483647i), vec4<bool>(select(select(true, true, true), all(vec2<bool>(false, false)), true), true, _wgslsmith_f_op_f32(-894f * arg_0.x) == arg_0.x, false)), 1135f >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(arg_0.x, arg_0.x)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_0.x)) + _wgslsmith_f_op_f32(f32(-1f) * -1027f))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_0.x, _wgslsmith_f_op_f32(-1497f * arg_0.x))) - 313f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(775f, arg_0.x)), arg_0.x, true)), -1042f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0.x, 684f, false))))), -244f), _wgslsmith_mult_vec4_u32(vec4<u32>(32002u, ~68179u << (_wgslsmith_mult_u32(var_1.x, u_input.a.x) % 32u), _wgslsmith_clamp_u32(u_input.a.x, reverseBits(u_input.a.x), u_input.b.x ^ 1811u), firstTrailingBit(~4294967295u)), vec4<u32>(~(~0u), select(27649u, var_1.x, false), _wgslsmith_sub_u32(u_input.a.x, _wgslsmith_dot_vec2_u32(var_1.zw, u_input.a.xx)), ~(~u_input.b.x))), true);
}

fn func_4(arg_0: i32, arg_1: Struct_2, arg_2: Struct_2, arg_3: vec4<f32>) -> u32 {
    var var_0 = arg_3.xz;
    let var_1 = _wgslsmith_f_op_f32(step(-703f, _wgslsmith_f_op_f32(arg_1.c.c.x + -591f)));
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(step(-707f, arg_1.c.c.x)), 668f);
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -634f);
    var var_3 = Struct_2(_wgslsmith_clamp_u32(arg_1.b.x, ~reverseBits(arg_1.b.x), ~(~(~arg_2.a))), ~(_wgslsmith_div_vec2_u32(firstLeadingBit(vec2<u32>(arg_2.a, 113074u)), vec2<u32>(arg_2.b.x, 4421u)) & (~arg_1.b | vec2<u32>(1u, 1u))), func_2(arg_3));
    return min(24803u << (var_3.a % 32u), abs(arg_2.a));
}

fn func_1() -> bool {
    let var_0 = Struct_2(u_input.b.x, vec2<u32>(func_4(abs(max(-1i, -1i)), Struct_2(37352u, u_input.b.wy, func_2(vec4<f32>(-220f, -374f, 1001f, -1059f))), Struct_2(firstLeadingBit(u_input.b.x), vec2<u32>(u_input.b.x, 1u), Struct_1(vec4<i32>(-28370i, 2147483647i, 26085i, 39685i), false, vec4<f32>(721f, -1645f, -2191f, -2231f), u_input.b, false)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-633f, -1620f, 220f, 1076f)))), 3545u), func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-552f, 2990f, -353f, 1000f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(190f, -466f, 991f, 179f) + vec4<f32>(831f, -530f, -449f, -853f))) + vec4<f32>(_wgslsmith_f_op_f32(-982f + -437f), 586f, _wgslsmith_f_op_f32(round(939f)), -815f))));
    let var_1 = var_0.c.b;
    var var_2 = Struct_1(var_0.c.a, all(!vec2<bool>(true, !var_1)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1000f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-567f, var_0.c.c.x)), var_0.c.c.x, _wgslsmith_f_op_f32(step(-310f, _wgslsmith_f_op_f32(var_0.c.c.x - var_0.c.c.x)))))), vec4<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(select(vec4<u32>(var_0.a, u_input.a.x, 43445u, u_input.b.x), vec4<u32>(1u, u_input.a.x, 9296u, var_0.c.d.x), var_1), _wgslsmith_mult_vec4_u32(vec4<u32>(var_0.c.d.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(48312u, 4294967295u, 4294967295u, 34421u))), ~(vec4<u32>(0u, u_input.a.x, u_input.b.x, 0u) | u_input.b)), u_input.b.x, ~var_0.c.d.x, ~(~1u)), var_1);
    var var_3 = func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(var_2.c))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(trunc(var_2.c)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(155f, var_0.c.c.x, -320f, 363f) + _wgslsmith_f_op_vec4_f32(max(var_0.c.c, vec4<f32>(-534f, 846f, var_2.c.x, var_0.c.c.x)))), false))));
    var_2 = func_2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1388f, -1382f, var_0.c.c.x, -245f))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.c.c.x, var_3.c.x, var_0.c.c.x, 652f), var_2.c, true)))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1247f), -1126f, _wgslsmith_f_op_f32(-700f * var_2.c.x), _wgslsmith_div_f32(var_2.c.x, -1636f)))));
    return func_2(vec4<f32>(662f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(var_2.c.x)), _wgslsmith_f_op_f32(f32(-1f) * -1700f))), _wgslsmith_f_op_f32(f32(-1f) * -110f), 919f)).e && true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(-456f, -462f, true)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1345f, 740f)) - _wgslsmith_f_op_f32(-556f - -441f)) + 1f)));
    var var_1 = true;
    var_1 = !(!func_1()) | !func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1315f, 901f, 354f, -1750f))))).b;
    var_1 = u_input.b.x > ~(~max(38400u, u_input.a.x & u_input.b.x));
    var_0 = _wgslsmith_f_op_f32(min(-339f, -279f));
    let var_2 = func_2(vec4<f32>(_wgslsmith_div_f32(606f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-714f, -368f))), 1000f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1364f + _wgslsmith_f_op_f32(abs(279f))))), -1000f)).c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(sign(var_2.x)));
}

