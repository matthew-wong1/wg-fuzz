struct Struct_1 {
    a: bool,
    b: vec4<u32>,
    c: f32,
    d: u32,
    e: f32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: vec2<bool>,
    c: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: u32,
    d: f32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(533f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-425f * _wgslsmith_f_op_f32(710f - -1438f))))));
    return Struct_1(true, vec4<u32>(u_input.d.x, u_input.a.x, ~u_input.b.x, 0u), _wgslsmith_div_f32(_wgslsmith_div_f32(1130f, 1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * 994f))), ~24928u, -2806f);
}

fn func_3(arg_0: f32, arg_1: f32) -> u32 {
    let var_0 = firstLeadingBit((_wgslsmith_clamp_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(35189i, 1i, 589i), vec3<i32>(-11276i, u_input.c, 2090i)), vec3<i32>(u_input.c, u_input.c, 6463i), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.c, u_input.c, -48058i), vec3<i32>(70296i, u_input.c, u_input.c))) | abs(~vec3<i32>(u_input.c, u_input.c, -2147483647i))) >> (func_1().b.yww % vec3<u32>(32u)));
    let var_1 = -27451i >= (-6062i >> (u_input.b.x % 32u));
    var var_2 = _wgslsmith_f_op_f32(exp2(func_1().e)) != arg_0;
    let var_3 = -592f;
    var_2 = -2147483647i >= var_0.x;
    return ~_wgslsmith_div_u32(min(13476u, u_input.b.x), u_input.a.x);
}

fn func_4(arg_0: vec4<u32>, arg_1: i32, arg_2: vec3<bool>) -> Struct_1 {
    let var_0 = -1i;
    let var_1 = -min(~reverseBits(-vec2<i32>(0i, arg_1)), _wgslsmith_div_vec2_i32(vec2<i32>(var_0, var_0) >> (_wgslsmith_mod_vec2_u32(vec2<u32>(54127u, u_input.d.x), vec2<u32>(u_input.d.x, 4294967295u)) % vec2<u32>(32u)), vec2<i32>(_wgslsmith_add_i32(38721i, -2147483647i), u_input.c)));
    var var_2 = Struct_2(1i, Struct_1(!arg_2.x, max(firstLeadingBit(vec4<u32>(u_input.a.x, arg_0.x, 35130u, 15222u)), min(arg_0, u_input.d)), 1000f, _wgslsmith_mod_u32(firstTrailingBit(~4294967295u), _wgslsmith_clamp_u32(u_input.d.x, arg_0.x | 4294967295u, 1u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-551f * _wgslsmith_f_op_f32(select(1000f, 687f, arg_2.x))) * _wgslsmith_f_op_f32(-478f - -1000f))));
    var_2 = Struct_2(_wgslsmith_dot_vec4_i32(firstLeadingBit(-vec4<i32>(-4791i, 6266i, var_1.x, -74598i) | -vec4<i32>(u_input.c, -7137i, 0i, -45791i)), _wgslsmith_clamp_vec4_i32(max(vec4<i32>(arg_1, 0i, var_0, -2147483647i), vec4<i32>(var_1.x, var_0, 2147483647i, var_1.x)) & vec4<i32>(u_input.c, u_input.c, var_1.x, -2147483647i), ~firstTrailingBit(vec4<i32>(0i, arg_1, var_1.x, 36525i)), max(vec4<i32>(694i, var_2.a, var_0, var_2.a), vec4<i32>(-53690i, var_1.x, var_2.a, 37414i)))), var_2.b);
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b.c)), var_2.b.e, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_2.b.c)))) - vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_2.b.c)) * _wgslsmith_f_op_f32(abs(-643f))), _wgslsmith_div_f32(-202f, var_2.b.c), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.b.e, var_2.b.c)))));
    return var_2.b;
}

fn func_2(arg_0: Struct_4, arg_1: i32) -> f32 {
    let var_0 = _wgslsmith_clamp_u32(arg_0.c, arg_0.c, arg_0.c);
    var var_1 = func_4(vec4<u32>(var_0, 1u, func_3(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-2193f, 1000f) - 1f), -939f), ~((133253u << (u_input.b.x % 32u)) | ~arg_0.c)), -7420i, select(select(vec3<bool>(false, arg_0.a, u_input.c >= -12995i), select(vec3<bool>(arg_0.b.x, arg_0.b.x, arg_0.a), select(vec3<bool>(arg_0.b.x, arg_0.b.x, true), vec3<bool>(arg_0.b.x, arg_0.a, arg_0.a), vec3<bool>(false, arg_0.a, true)), true), vec3<bool>(all(vec3<bool>(arg_0.a, arg_0.b.x, false)), true, true)), vec3<bool>(func_1().a, (u_input.c & 1i) > u_input.c, false), arg_0.a));
    var_1 = func_4(vec4<u32>(~arg_0.c | ~arg_0.c, reverseBits(firstTrailingBit(0u) | 61370u), ~4294967295u, ~_wgslsmith_mult_u32(func_1().d, _wgslsmith_mult_u32(48935u, var_1.d))), -66196i, select(vec3<bool>(var_1.a, false, all(vec2<bool>(arg_0.b.x, true))), vec3<bool>(true && var_1.a, var_1.a || (arg_0.b.x == var_1.a), all(!vec4<bool>(false, arg_0.b.x, false, true))), arg_0.a));
    let var_2 = !vec3<bool>(var_1.e != _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.e, 1548f) - -1651f), true, !(!(!arg_0.b.x)));
    var_1 = Struct_1(false, ~vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 1u, 0u, arg_0.c), var_1.b), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, var_0, 11420u, 48499u), var_1.b), max(u_input.a.x, var_0), func_3(var_1.c, var_1.c)) ^ u_input.d, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(var_1.c)), _wgslsmith_f_op_f32(var_1.e + var_1.c)) * -1001f), ~1u, 1f);
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.c + var_1.c), _wgslsmith_f_op_f32(select(func_1().c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.e * var_1.c) + var_1.e), select(var_1.a, arg_0.a, 9050u <= var_0)))));
}

fn func_5(arg_0: Struct_1, arg_1: f32, arg_2: f32, arg_3: vec3<i32>) -> f32 {
    var var_0 = ~_wgslsmith_dot_vec3_u32(~(~(~arg_0.b.wzw)), _wgslsmith_mult_vec3_u32(~vec3<u32>(arg_0.d, 24064u, 0u), vec3<u32>(70999u, u_input.d.x, 0u)) ^ ~(~u_input.d.wzy));
    var var_1 = Struct_1(select(1u != _wgslsmith_sub_u32(u_input.a.x, 20105u), !(!any(vec4<bool>(arg_0.a, arg_0.a, true, false))), false), arg_0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)), ~15532u, arg_2);
    var_1 = func_4(~select(~(vec4<u32>(var_1.b.x, var_1.d, u_input.d.x, 78797u) ^ vec4<u32>(37954u, 1u, arg_0.d, 1u)), vec4<u32>(30327u << (arg_0.b.x % 32u), u_input.b.x, firstTrailingBit(u_input.a.x), _wgslsmith_mult_u32(var_1.d, arg_0.b.x)), true), firstLeadingBit(abs(reverseBits(-1i))), select(select(select(select(vec3<bool>(arg_0.a, var_1.a, true), vec3<bool>(var_1.a, arg_0.a, var_1.a), vec3<bool>(arg_0.a, false, true)), vec3<bool>(false, arg_0.a, false), all(vec2<bool>(var_1.a, arg_0.a))), vec3<bool>(func_4(vec4<u32>(arg_0.d, 2918u, 45823u, 23169u), 2147483647i, vec3<bool>(false, arg_0.a, var_1.a)).a, true, func_4(vec4<u32>(u_input.b.x, u_input.d.x, var_1.b.x, u_input.d.x), 1i, vec3<bool>(true, false, arg_0.a)).a), !vec3<bool>(arg_0.a, true, arg_0.a)), !(!(!vec3<bool>(var_1.a, var_1.a, false))), true));
    let var_2 = abs(reverseBits(~(-(~arg_3.x))));
    var_1 = arg_0;
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_2 - arg_2), -1000f) + -1107f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_5(func_1(), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_2(Struct_4(true, vec2<bool>(false, false), 1u), u_input.c)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-1326f, -210f, true)), _wgslsmith_div_f32(1410f, 377f)), vec3<i32>(-33501i, 7775i, u_input.c) << (_wgslsmith_add_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x), vec3<u32>(71878u, 4294967295u, u_input.a.x)) % vec3<u32>(32u))))))));
    let var_1 = Struct_2(select(abs(u_input.c | max(0i, u_input.c)), u_input.c, !(41945i != (u_input.c << (u_input.d.x % 32u)))), func_4(_wgslsmith_add_vec4_u32(u_input.d, min(vec4<u32>(0u, u_input.d.x, 11163u, u_input.b.x), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.b.x, u_input.a.x, 3086u, u_input.a.x), u_input.d))), u_input.c << (firstTrailingBit(~0u) % 32u), !vec3<bool>(all(vec2<bool>(false, false)), func_1().a, true)));
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<u32>(u_input.d.x, u_input.a.x, 4294967295u | var_1.b.b.x), ~vec2<u32>(var_1.b.d, var_1.b.d), 4294967295u, -699f, vec3<i32>(u_input.c, u_input.c, -u_input.c));
}

