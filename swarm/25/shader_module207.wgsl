struct Struct_1 {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: vec2<bool>,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<i32>,
    c: vec3<i32>,
    d: i32,
}

struct Struct_4 {
    a: f32,
    b: vec4<i32>,
    c: u32,
    d: Struct_3,
}

struct Struct_5 {
    a: i32,
    b: Struct_3,
    c: i32,
    d: f32,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec2<f32>, arg_2: bool, arg_3: i32) -> i32 {
    var var_0 = _wgslsmith_div_vec4_u32(~(select(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.c.x, 0u, u_input.c.x, u_input.c.x), vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 0u)), vec4<u32>(u_input.c.x, u_input.c.x, 46891u, 0u) << (vec4<u32>(u_input.c.x, 1u, 74889u, u_input.c.x) % vec4<u32>(32u)), !vec4<bool>(true, arg_2, false, arg_2)) << (vec4<u32>(1u, _wgslsmith_mod_u32(u_input.c.x, u_input.c.x), u_input.c.x, u_input.c.x) % vec4<u32>(32u))), _wgslsmith_mod_vec4_u32(vec4<u32>(91811u, u_input.c.x, 3658u, _wgslsmith_mod_u32(u_input.c.x, 17492u)), _wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 26761u, u_input.c.x, u_input.c.x), vec4<u32>(62437u, 65963u, u_input.c.x, 1u)), _wgslsmith_div_vec4_u32(vec4<u32>(61257u, u_input.c.x, 73649u, u_input.c.x), vec4<u32>(u_input.c.x, 0u, u_input.c.x, u_input.c.x)), reverseBits(vec4<u32>(u_input.c.x, u_input.c.x, 1118u, 23133u))), ~vec4<u32>(u_input.c.x, u_input.c.x, 4294967295u, 90913u) & vec4<u32>(32195u, u_input.c.x, 25753u, u_input.c.x))));
    let var_1 = Struct_4(arg_1.x, _wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_clamp_i32(-10378i & u_input.b.x, arg_3, _wgslsmith_div_i32(u_input.a.x, -2147483647i)), u_input.a.x, max(arg_0.x >> (43948u % 32u), -69656i), -arg_3), vec4<i32>(~0i, ~1i, _wgslsmith_div_i32(u_input.a.x, -7447i), u_input.a.x) << (((vec4<u32>(u_input.c.x, u_input.c.x, 4294967295u, 49563u) | vec4<u32>(9156u, 64484u, 47313u, var_0.x)) << (~vec4<u32>(1u, 0u, 12474u, var_0.x) % vec4<u32>(32u))) % vec4<u32>(32u))), 4294967295u, Struct_3(Struct_1(select(arg_0.x, _wgslsmith_mod_i32(23482i, -27992i), true), ~4294967295u, ~select(vec4<u32>(var_0.x, var_0.x, 1u, var_0.x), vec4<u32>(161625u, u_input.c.x, var_0.x, 32926u), vec4<bool>(arg_2, true, arg_2, arg_2)), vec2<bool>(true, true), ~u_input.b.x), vec4<i32>(-max(u_input.a.x, 37285i), ~_wgslsmith_dot_vec3_i32(u_input.a.yyw, vec3<i32>(28922i, arg_0.x, u_input.a.x)), _wgslsmith_clamp_i32(1i, -13513i, arg_0.x) ^ _wgslsmith_mult_i32(0i, 1i), arg_3), u_input.a.wyw, 2147483647i << (min(~26487u, var_0.x) % 32u)));
    let var_2 = ~59425u ^ u_input.c.x;
    var_0 = vec4<u32>(var_0.x, _wgslsmith_clamp_u32(countOneBits(var_1.d.a.b), var_0.x, _wgslsmith_div_u32(var_0.x, _wgslsmith_mod_u32(4294967295u, var_1.c))) | var_2, (~abs(0u) ^ abs(var_0.x)) << (~countOneBits(_wgslsmith_add_u32(u_input.c.x, 3025u)) % 32u), var_0.x);
    var_0 = _wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(var_1.d.a.c << ((vec4<u32>(u_input.c.x, var_2, var_1.c, 1940u) ^ _wgslsmith_mod_vec4_u32(vec4<u32>(var_2, 0u, var_2, 67156u), var_1.d.a.c)) % vec4<u32>(32u)), abs(_wgslsmith_mult_vec4_u32(vec4<u32>(var_1.c, u_input.c.x, 45745u, var_0.x), vec4<u32>(var_1.c, 1u, 0u, 47217u))) ^ ~var_1.d.a.c), vec4<u32>(var_2, _wgslsmith_sub_u32(~var_2, 1u), 0u, _wgslsmith_clamp_u32(u_input.c.x, max(var_0.x, 0u), _wgslsmith_dot_vec4_u32(vec4<u32>(9928u, 13798u, 173u, var_2), ~var_1.d.a.c))));
    return 41187i;
}

fn func_4(arg_0: Struct_4, arg_1: Struct_2, arg_2: u32) -> vec3<bool> {
    return select(select(!select(select(vec3<bool>(true, arg_0.d.a.d.x, false), vec3<bool>(arg_0.d.a.d.x, true, arg_0.d.a.d.x), vec3<bool>(true, arg_0.d.a.d.x, true)), select(vec3<bool>(false, arg_1.b, arg_0.d.a.d.x), vec3<bool>(arg_1.b, arg_1.a.d.x, true), vec3<bool>(arg_1.a.d.x, false, arg_0.d.a.d.x)), !vec3<bool>(true, arg_0.d.a.d.x, true)), vec3<bool>(all(select(vec4<bool>(false, true, true, false), vec4<bool>(arg_0.d.a.d.x, arg_0.d.a.d.x, arg_0.d.a.d.x, arg_0.d.a.d.x), vec4<bool>(arg_1.a.d.x, arg_1.b, true, arg_1.a.d.x))), true, !select(true, true, true)), !select(vec3<bool>(false, arg_0.d.a.d.x, arg_1.b), vec3<bool>(arg_0.d.a.d.x, arg_1.a.d.x, arg_0.d.a.d.x), !vec3<bool>(arg_0.d.a.d.x, true, arg_0.d.a.d.x))), vec3<bool>(false, !(arg_0.d.a.d.x & true), -(~arg_0.d.a.e) > -4654i), _wgslsmith_mod_i32(~firstTrailingBit(arg_0.b.x), -u_input.b.x) <= firstTrailingBit(u_input.b.x));
}

fn func_2() -> u32 {
    let var_0 = func_4(Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(923f, 1000f)) + 559f), vec4<i32>(~firstTrailingBit(u_input.b.x), -2147483647i, 30221i, u_input.a.x), _wgslsmith_dot_vec2_u32(~u_input.c, ~(~u_input.c)), Struct_3(Struct_1(u_input.b.x, _wgslsmith_sub_u32(u_input.c.x, 4294967295u), _wgslsmith_div_vec4_u32(vec4<u32>(32207u, 0u, u_input.c.x, 35292u), vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 4294967295u)), select(vec2<bool>(true, true), vec2<bool>(true, false), true), min(8394i, u_input.a.x)), -(~vec4<i32>(u_input.b.x, u_input.b.x, u_input.a.x, 47817i)), vec3<i32>(abs(u_input.b.x), func_3(u_input.b, vec2<f32>(-2795f, 403f), true, u_input.a.x), u_input.a.x), u_input.a.x)), Struct_2(Struct_1(1i, u_input.c.x, ~_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c.x, u_input.c.x, 48470u, u_input.c.x), vec4<u32>(u_input.c.x, 32314u, 1u, 4294967295u), vec4<u32>(1u, 61606u, 8634u, u_input.c.x)), vec2<bool>(true, any(vec3<bool>(true, true, true))), 55122i), true), 1u);
    var var_1 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1326f, -307f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-321f - 1055f)))), abs(vec4<i32>(23722i, ~42953i, 0i, ~_wgslsmith_dot_vec2_i32(u_input.a.zz, vec2<i32>(-11885i, -228i)))), ~u_input.c.x, Struct_3(Struct_1(-2147483647i, 0u, max(~vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 4294967295u), vec4<u32>(u_input.c.x, 74010u, 0u, 48959u)), vec2<bool>(true, all(vec4<bool>(var_0.x, var_0.x, false, true))), 42014i), ~(~u_input.a), u_input.a.xzy, _wgslsmith_add_i32(_wgslsmith_mult_i32(u_input.b.x, -2147483647i), _wgslsmith_mod_i32(select(u_input.b.x, 2147483647i, var_0.x), _wgslsmith_add_i32(u_input.b.x, u_input.b.x)))));
    var var_2 = var_1.d.a;
    var var_3 = vec3<bool>(var_1.d.a.d.x, any(vec2<bool>(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 8818i), vec2<i32>(var_1.b.x, 0i)) >= -1i, any(!vec2<bool>(var_0.x, var_0.x)))), true);
    var var_4 = _wgslsmith_clamp_u32(var_1.d.a.b, _wgslsmith_div_u32(0u, ~(~var_1.c)), var_1.d.a.c.x);
    return u_input.c.x;
}

fn func_1() -> Struct_2 {
    let var_0 = -1i;
    let var_1 = Struct_2(Struct_1(~(_wgslsmith_clamp_i32(-2147483647i, u_input.b.x, u_input.b.x) >> (func_2() % 32u)), 0u, abs(select(firstTrailingBit(vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 1u)), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.c.x, 0u, u_input.c.x, 4294967295u), vec4<u32>(u_input.c.x, 4294967295u, u_input.c.x, u_input.c.x)), true)), func_4(Struct_4(_wgslsmith_f_op_f32(-850f * -676f), vec4<i32>(-2147483647i, var_0, u_input.b.x, 8262i), u_input.c.x, Struct_3(Struct_1(u_input.b.x, u_input.c.x, vec4<u32>(1u, 0u, 1u, u_input.c.x), vec2<bool>(true, false), u_input.a.x), u_input.a, u_input.a.ywx, var_0)), Struct_2(Struct_1(u_input.a.x, u_input.c.x, vec4<u32>(u_input.c.x, 1u, u_input.c.x, 52786u), vec2<bool>(false, true), u_input.b.x), false), 1u).yz, _wgslsmith_dot_vec2_i32(u_input.b, -u_input.b)), all(vec3<bool>(u_input.b.x > firstLeadingBit(var_0), false, (var_0 == u_input.a.x) | true)));
    var var_2 = any(!vec3<bool>(true, true, var_1.b));
    var var_3 = vec4<bool>(!all(func_4(Struct_4(794f, vec4<i32>(1i, var_1.a.a, -36650i, 50891i), 45103u, Struct_3(var_1.a, u_input.a, u_input.a.xwz, 38613i)), var_1, u_input.c.x)) || var_1.b, var_1.a.d.x == true, true, select(any(var_1.a.d), !var_1.a.d.x, true) != var_1.a.d.x);
    var var_4 = Struct_4(1f, ~vec4<i32>(_wgslsmith_div_i32(countOneBits(u_input.a.x), countOneBits(-7298i)), var_0, ~var_0, _wgslsmith_div_i32(var_0, -1273i) | 1i), 4294967295u, Struct_3(Struct_1(2147483647i, ~(~u_input.c.x), _wgslsmith_mult_vec4_u32(~vec4<u32>(0u, var_1.a.b, u_input.c.x, 0u), min(vec4<u32>(var_1.a.c.x, 84901u, 1u, var_1.a.c.x), var_1.a.c)), vec2<bool>(any(var_1.a.d), false), _wgslsmith_mult_i32(abs(-11674i), 1i)), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b.x, var_1.a.e, ~var_0, _wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(0i, var_0, var_0, var_1.a.e))), ~firstTrailingBit(vec4<i32>(var_0, -28981i, -1i, var_1.a.a))), u_input.a.xxx << (~(var_1.a.c.xyy & vec3<u32>(var_1.a.b, 4294967295u, 54902u)) % vec3<u32>(32u)), u_input.b.x & ~max(var_0, var_1.a.a)));
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var_0 = Struct_2(Struct_1(-38039i, countOneBits(~0u), var_0.a.c, var_0.a.d, u_input.a.x), true);
    var var_1 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-156f, _wgslsmith_f_op_f32(step(147f, 1355f)), var_0.b))) - _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(963f + 654f), _wgslsmith_f_op_f32(sign(1570f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-816f))), var_0.b))), -(~vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, 0i, 9997i), vec3<i32>(u_input.b.x, 2147483647i, u_input.b.x)), 1i, -1i, -1i)), countOneBits(u_input.c.x), Struct_3(func_1().a, abs(-(u_input.a << (vec4<u32>(var_0.a.b, 38925u, 4294967295u, var_0.a.b) % vec4<u32>(32u)))), _wgslsmith_clamp_vec3_i32(~vec3<i32>(19235i, 32783i, 0i), ~(vec3<i32>(1i, 27836i, -1i) | vec3<i32>(-2032i, u_input.b.x, var_0.a.a)), _wgslsmith_sub_vec3_i32(vec3<i32>(var_0.a.e, u_input.a.x, var_0.a.a) | vec3<i32>(u_input.b.x, 0i, 29669i), _wgslsmith_sub_vec3_i32(u_input.a.yzx, vec3<i32>(54321i, -1i, -65344i)))), -1i));
    var_0 = func_1();
    let var_2 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a, 2909f)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1522f, var_1.a)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-574f, 1633f)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a, -324f)))))));
    let var_3 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_2.x, _wgslsmith_f_op_f32(-var_2.x)) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1396f), _wgslsmith_f_op_f32(-1024f * 1098f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(var_1.a)), -766f)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(443f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-431f, var_3))), _wgslsmith_f_op_f32(var_2.x + _wgslsmith_f_op_f32(-var_2.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-271f - _wgslsmith_f_op_f32(-var_3)))), -1i, -1i >> (0u % 32u));
}

