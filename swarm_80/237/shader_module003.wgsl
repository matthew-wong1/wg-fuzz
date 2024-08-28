struct Struct_1 {
    a: vec2<i32>,
    b: u32,
    c: vec4<i32>,
    d: f32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: u32,
    c: vec3<f32>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec4<u32>,
    c: u32,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: vec4<u32>,
    d: i32,
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

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> i32 {
    let var_0 = select(vec4<bool>(true, any(vec2<bool>(false, select(true, true, true))), all(vec2<bool>(true, true)), any(vec4<bool>(true, true, true, true))), select(select(vec4<bool>(true, true, true, true), vec4<bool>(u_input.b < u_input.b, u_input.c >= u_input.c, true, select(false, false, false)), any(vec3<bool>(true, false, true)) == all(vec4<bool>(true, true, false, false))), !select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), false), vec4<bool>(66248u == _wgslsmith_sub_u32(4294967295u, u_input.a), true, any(vec3<bool>(true, true, false)), true)), u_input.c > u_input.b);
    let var_1 = Struct_3(vec3<bool>(all(!var_0.xx), 1u <= _wgslsmith_clamp_u32(113861u, ~9558u, _wgslsmith_dot_vec4_u32(vec4<u32>(63663u, 7357u, 5805u, u_input.a), vec4<u32>(128778u, u_input.a, 0u, u_input.a))), !select(any(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x)), true, var_0.x)), ~(~(~vec4<u32>(u_input.a, u_input.a, 4294967295u, 0u) << (_wgslsmith_clamp_vec4_u32(vec4<u32>(24465u, 4294967295u, 14412u, u_input.a), vec4<u32>(1u, u_input.a, 76911u, 26081u), vec4<u32>(73403u, u_input.a, 4132u, u_input.a)) % vec4<u32>(32u)))), (countOneBits(~0u) >> ((_wgslsmith_add_u32(49803u, 23195u) | ~u_input.a) % 32u)) >> (0u % 32u), !vec3<bool>(false, all(vec3<bool>(var_0.x, false, var_0.x)), true));
    var var_2 = Struct_1(~vec2<i32>(-2147483647i, u_input.b) | -vec2<i32>(45545i, u_input.c), ~_wgslsmith_sub_u32(101568u, reverseBits(u_input.a)) >> (~_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(var_1.b, vec4<u32>(6159u, var_1.c, 1u, 76169u)), var_1.b) % 32u), _wgslsmith_add_vec4_i32(vec4<i32>(countOneBits(-2147483647i) >> (var_1.b.x % 32u), u_input.b, max(-u_input.b, _wgslsmith_sub_i32(1i, u_input.c)), 2147483647i), ~vec4<i32>(reverseBits(u_input.b), -10005i, -58736i & u_input.c, -13797i)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(902f)), _wgslsmith_f_op_f32(-728f - 611f)))))));
    var var_3 = var_2.c.x;
    let var_4 = 16833i;
    return firstLeadingBit(-16298i) >> (_wgslsmith_dot_vec4_u32(var_1.b, ~countOneBits(~var_1.b)) % 32u);
}

fn func_2() -> Struct_1 {
    let var_0 = _wgslsmith_dot_vec2_i32(~(-reverseBits(vec2<i32>(2147483647i, 0i)) | select(~vec2<i32>(-29460i, u_input.c), vec2<i32>(u_input.b, u_input.c), true)), vec2<i32>(_wgslsmith_add_i32(u_input.b, reverseBits(-2147483647i) >> (u_input.a % 32u)), _wgslsmith_add_i32(func_3(), ~(u_input.b >> (u_input.a % 32u)))));
    let var_1 = Struct_2(vec2<i32>(~_wgslsmith_clamp_i32(firstLeadingBit(1i), ~var_0, 0i), abs(_wgslsmith_sub_i32(_wgslsmith_mult_i32(u_input.b, var_0), ~(-2147483647i)))), ~countOneBits(_wgslsmith_dot_vec2_u32(select(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, u_input.a), true), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, 8423u)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-589f, 1066f, -742f) - vec3<f32>(440f, 636f, -1000f)))))));
    let var_2 = Struct_2(vec2<i32>(min(var_1.a.x << (var_1.b % 32u), firstTrailingBit(i32(-1i) * -28825i)), var_1.a.x), (abs(_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.b, 0u, 4294967295u), vec3<u32>(u_input.a, 42005u, 32275u))) | ~(var_1.b & 30466u)) & firstTrailingBit(~1u), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(-var_1.c.x), _wgslsmith_div_f32(-723f, var_1.c.x), _wgslsmith_f_op_f32(ceil(413f))))), vec3<f32>(_wgslsmith_f_op_f32(step(-875f, -1167f)), var_1.c.x, var_1.c.x))));
    var var_3 = !vec3<bool>(false, _wgslsmith_mod_u32(u_input.a, var_2.b) < u_input.a, !(!all(vec3<bool>(true, false, true))));
    var_3 = !(!(!(!vec3<bool>(var_3.x, false, var_3.x))));
    return Struct_1(_wgslsmith_clamp_vec2_i32(-vec2<i32>(min(var_2.a.x, 2147483647i), -24276i), _wgslsmith_clamp_vec2_i32(reverseBits(-vec2<i32>(2147483647i, -33672i)), -vec2<i32>(-18084i, 1i), var_2.a), var_1.a), var_2.b & var_1.b, min(_wgslsmith_sub_vec4_i32(~vec4<i32>(u_input.b, u_input.c, -2147483647i, var_2.a.x), vec4<i32>(var_2.a.x, 57165i, -2716i, -36189i)) | vec4<i32>(_wgslsmith_div_i32(var_1.a.x, u_input.b), _wgslsmith_mult_i32(var_1.a.x, var_0), _wgslsmith_dot_vec2_i32(var_2.a, vec2<i32>(var_0, -36747i)), ~1i), countOneBits(abs(vec4<i32>(11216i, -2147483647i, var_0, var_2.a.x))) << (vec4<u32>(9885u, 4294967295u, reverseBits(1u), var_1.b) % vec4<u32>(32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-657f - 1f)));
}

fn func_1() -> Struct_3 {
    var var_0 = !(!(!vec4<bool>(true, all(vec2<bool>(true, true)), all(vec2<bool>(false, false)), true)));
    let var_1 = func_2();
    var var_2 = Struct_3(var_0.wwz, abs(~(vec4<u32>(1u, var_1.b, var_1.b, 20124u) >> (vec4<u32>(0u, u_input.a, 4294967295u, var_1.b) % vec4<u32>(32u))) >> (~reverseBits(vec4<u32>(u_input.a, var_1.b, var_1.b, 4492u)) % vec4<u32>(32u))), 1u, var_0.yzz);
    return Struct_3(!var_0.xyw, _wgslsmith_mod_vec4_u32(select(var_2.b, abs(vec4<u32>(23431u, var_1.b, var_1.b, var_2.b.x)) | abs(vec4<u32>(1u, u_input.a, 20312u, 0u)), select(select(vec4<bool>(var_0.x, var_0.x, false, false), vec4<bool>(var_0.x, var_0.x, false, var_2.d.x), vec4<bool>(var_2.d.x, var_0.x, var_2.d.x, true)), !vec4<bool>(var_2.a.x, var_2.d.x, var_0.x, false), vec4<bool>(true, true, var_0.x, false))), ~vec4<u32>(1u, var_1.b >> (67894u % 32u), var_2.b.x, _wgslsmith_dot_vec4_u32(var_2.b, var_2.b))), ~var_1.b, var_2.d);
}

fn func_4(arg_0: Struct_3, arg_1: u32) -> Struct_3 {
    var var_0 = func_2();
    var var_1 = vec3<f32>(var_0.d, _wgslsmith_f_op_f32(851f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.d) * _wgslsmith_f_op_f32(ceil(286f))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-437f, var_0.d))));
    let var_2 = var_0.c.wxz;
    let var_3 = func_2();
    var var_4 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.d) + _wgslsmith_div_f32(var_3.d, 674f)))))));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(func_1(), u_input.a);
    let var_1 = max(0i, -48463i);
    let var_2 = abs(-(~firstLeadingBit(-vec4<i32>(1i, u_input.c, 3544i, u_input.b))));
    var var_3 = _wgslsmith_add_i32(u_input.b, ~_wgslsmith_dot_vec4_i32(var_2, vec4<i32>(max(var_1, var_1), 0i, func_2().a.x, abs(u_input.b))));
    var_3 = u_input.b;
    let var_4 = ~vec4<u32>(4294967295u, _wgslsmith_mod_u32(~func_2().b, ~(~30189u)), ~1u << ((u_input.a | 15726u) % 32u), 5593u);
    var var_5 = var_0.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(583f, 442f), _wgslsmith_f_op_f32(floor(-2314f))) + _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(-443f + -1307f))) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(func_2().d))))), vec3<i32>(_wgslsmith_div_i32(0i, -93126i), func_2().a.x, var_1), ~vec4<u32>(~0u >> (var_0.c % 32u), ~var_4.x, _wgslsmith_mult_u32(_wgslsmith_mult_u32(4294967295u, var_0.b.x), func_1().b.x), ~abs(u_input.a)), firstLeadingBit(var_1) & _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(var_1, 29213i, 0i), -var_2.wyx), var_1));
}

