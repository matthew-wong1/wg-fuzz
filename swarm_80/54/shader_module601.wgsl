struct Struct_1 {
    a: i32,
    b: bool,
    c: vec3<bool>,
    d: bool,
    e: i32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec2<i32>) -> vec4<u32> {
    var var_0 = arg_0;
    var_0 = vec2<i32>(_wgslsmith_div_i32(9220i, -1i), u_input.b);
    let var_1 = -select(vec3<i32>((arg_0.x << (77825u % 32u)) ^ countOneBits(38439i), select(-1i, u_input.a, true), _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(arg_0, vec2<i32>(u_input.b, -1i)), vec2<i32>(arg_0.x, var_0.x))), vec3<i32>(18497i, 0i, _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, arg_0.x, arg_0.x, -1i), vec4<i32>(-1i, -70492i, u_input.b, 2147483647i))) >> (~(vec3<u32>(u_input.c, 1u, 72253u) & vec3<u32>(u_input.c, 13267u, 0u)) % vec3<u32>(32u)), true);
    var_0 = firstTrailingBit(reverseBits(max(select(arg_0, arg_0, true), _wgslsmith_mult_vec2_i32(var_1.xz | vec2<i32>(var_1.x, arg_0.x), vec2<i32>(u_input.a, -23538i)))));
    var var_2 = Struct_1(arg_0.x, _wgslsmith_add_i32(var_1.x, 48496i) < -1i, select(vec3<bool>(!all(vec2<bool>(false, true)), all(vec2<bool>(true, true)), false), !(!select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, false))), select(vec3<bool>(true, true, true), vec3<bool>(true, all(vec3<bool>(true, true, false)), true), !select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), false))), true, 1i);
    return vec4<u32>(~u_input.c, 1u, firstLeadingBit(u_input.c), u_input.c);
}

fn func_2() -> vec2<i32> {
    var var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1253f)));
    let var_1 = ((~func_3(vec2<i32>(-1i, -22517i)) ^ vec4<u32>(max(28508u, u_input.c), 70955u, _wgslsmith_dot_vec2_u32(vec2<u32>(65178u, 28095u), vec2<u32>(u_input.c, u_input.c)), 4294967295u)) << (firstLeadingBit(vec4<u32>(~45505u, ~0u, 1u, abs(123122u))) % vec4<u32>(32u))) & ~select(~min(vec4<u32>(0u, u_input.c, 39423u, u_input.c), vec4<u32>(u_input.c, 4294967295u, 26715u, 43067u)), vec4<u32>(32086u | u_input.c, _wgslsmith_dot_vec2_u32(vec2<u32>(26016u, u_input.c), vec2<u32>(42397u, 4294967295u)), max(u_input.c, 6647u), u_input.c), false);
    let var_2 = _wgslsmith_add_i32(-u_input.b, u_input.b) | firstLeadingBit(abs(u_input.b) ^ countOneBits(u_input.b));
    let var_3 = _wgslsmith_add_vec2_i32(vec2<i32>(min(-(var_2 | -10042i), abs(1i)), u_input.a), firstLeadingBit(vec2<i32>(firstTrailingBit(firstLeadingBit(-9195i)), _wgslsmith_mult_i32(u_input.a, -2147483647i) | -235i)));
    var var_4 = 4294967295u;
    return ~_wgslsmith_sub_vec2_i32(_wgslsmith_mod_vec2_i32(var_3, -reverseBits(var_3)), min(vec2<i32>(_wgslsmith_sub_i32(22165i, var_3.x), var_2 & u_input.b), vec2<i32>(u_input.a, var_2)));
}

fn func_1(arg_0: vec2<u32>, arg_1: f32, arg_2: Struct_1, arg_3: i32) -> i32 {
    let var_0 = true || arg_2.d;
    let var_1 = vec3<f32>(arg_1, -394f, arg_1);
    var var_2 = Struct_2(vec3<i32>(-firstTrailingBit(~(-1i)), u_input.b, ~arg_3 & ~(~arg_2.a)), Struct_1(_wgslsmith_dot_vec2_i32(min(func_2(), select(vec2<i32>(arg_2.a, 2147483647i), vec2<i32>(arg_2.a, 53564i), arg_2.c.zy)), vec2<i32>(0i, arg_2.a) | func_2()), reverseBits(~u_input.c) <= _wgslsmith_clamp_u32(0u >> (u_input.c % 32u), ~u_input.c, ~1u), vec3<bool>(false, var_0, false), true, -9296i));
    let var_3 = Struct_2(vec3<i32>(86595i ^ var_2.b.a, arg_2.e, -2147483647i), var_2.b);
    let var_4 = Struct_1(39683i, false, select(!(!select(vec3<bool>(var_2.b.d, var_3.b.b, true), var_3.b.c, vec3<bool>(var_2.b.c.x, true, true))), select(select(select(var_2.b.c, vec3<bool>(arg_2.d, true, arg_2.b), arg_2.c), select(vec3<bool>(var_2.b.c.x, arg_2.c.x, var_3.b.d), vec3<bool>(false, var_2.b.c.x, false), false), select(var_3.b.c, var_3.b.c, vec3<bool>(false, arg_2.b, arg_2.d))), !vec3<bool>(true, var_3.b.c.x, true), true), !all(select(vec4<bool>(var_2.b.c.x, true, true, false), vec4<bool>(true, var_2.b.b, false, var_0), true))), !(_wgslsmith_f_op_f32(-1026f + _wgslsmith_f_op_f32(var_1.x + var_1.x)) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x - 206f) * arg_1)), var_2.b.e);
    return arg_3;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<i32>(u_input.a, -_wgslsmith_mult_i32(-_wgslsmith_mult_i32(u_input.b, u_input.b), u_input.a), _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(-51993i, 0i, 30459i) | vec3<i32>(1i, -29186i, u_input.b), vec3<i32>(reverseBits(u_input.b), ~(-2147483647i), _wgslsmith_dot_vec4_i32(vec4<i32>(0i, 2147483647i, -29786i, -1i), vec4<i32>(-2147483647i, u_input.b, u_input.a, u_input.a)))), vec3<i32>(func_1(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.c, 4294967295u), vec2<u32>(u_input.c, u_input.c), vec2<u32>(u_input.c, 0u)), 1028f, Struct_1(15752i, true, vec3<bool>(true, true, true), true, -2332i), max(u_input.b, 6365i)), _wgslsmith_clamp_i32(_wgslsmith_mod_i32(29614i, u_input.a), func_2().x, u_input.a), u_input.a)), 34469i);
    let var_1 = Struct_1(select(~(-(-17608i >> (u_input.c % 32u))), -2147483647i, !(_wgslsmith_div_u32(88044u, u_input.c) == u_input.c)), false, !vec3<bool>(true, true, any(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false)))), true, i32(-1i) * -2147483647i);
    let var_2 = _wgslsmith_add_vec4_u32(vec4<u32>(select(~firstTrailingBit(u_input.c), _wgslsmith_add_u32(u_input.c, ~64162u), var_1.b), ~(1u << (~u_input.c % 32u)), ~_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.c, 7107u), vec2<u32>(0u, 0u)), select(vec2<u32>(1u, 14559u), vec2<u32>(76074u, u_input.c), false)), firstLeadingBit(min(1u, 7700u))), ~countOneBits(vec4<u32>(reverseBits(41580u), 1u, 588u, ~1u)));
    var var_3 = var_1;
    var_3 = var_1;
    var var_4 = _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1156f)) * _wgslsmith_f_op_f32(sign(441f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -362f), _wgslsmith_f_op_f32(532f + -1147f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(794f + -335f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1280f * 179f)))))));
    var var_5 = Struct_1(_wgslsmith_dot_vec4_i32(~var_0, ~(vec4<i32>(u_input.a, u_input.b, var_3.a, var_3.a) & var_0)), false, vec3<bool>(!var_1.b, true, var_1.c.x), !(countOneBits(func_1(vec2<u32>(var_2.x, 1u), -680f, Struct_1(var_1.a, var_1.d, vec3<bool>(var_1.c.x, var_1.c.x, true), false, u_input.b), -1i)) == (_wgslsmith_sub_i32(0i, 2147483647i) >> (u_input.c % 32u))), 2147483647i);
    let var_6 = _wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(func_3(min(var_0.zz, -vec2<i32>(var_5.e, 1i))), vec4<u32>(reverseBits(4294967295u), _wgslsmith_mod_u32(min(u_input.c, 1u), 0u), countOneBits(_wgslsmith_div_u32(4294967295u, 4294967295u)), var_2.x)), select(_wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(var_2, ~vec4<u32>(var_2.x, 1u, 54686u, 4154u)), abs(vec4<u32>(u_input.c, var_2.x, 54954u, 1u))), vec4<u32>(reverseBits(var_2.x), 4294967295u, min(var_2.x, _wgslsmith_dot_vec4_u32(var_2, vec4<u32>(1u, var_2.x, 4294967295u, 0u))), abs(~1u)), (_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, 1i, -1i, u_input.b), vec4<i32>(u_input.a, 12854i, -49200i, 1i)) >> (~var_2.x % 32u)) < _wgslsmith_div_i32(countOneBits(var_0.x), var_0.x)));
    var var_7 = vec2<u32>(1u, 75292u);
    let x = u_input.a;
    s_output = StorageBuffer(~2147483647i, ~min(var_0.x, -1i), _wgslsmith_add_vec2_u32(vec2<u32>(~_wgslsmith_div_u32(var_2.x, 4294967295u), u_input.c), abs(vec2<u32>(var_7.x, var_7.x))));
}

