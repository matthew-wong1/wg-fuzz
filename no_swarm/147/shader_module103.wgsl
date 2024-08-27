struct Struct_1 {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec4<i32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec3<i32>,
    c: i32,
}

struct Struct_3 {
    a: vec3<f32>,
}

struct Struct_4 {
    a: i32,
    b: Struct_1,
    c: vec4<bool>,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: u32) -> f32 {
    let var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(144f, 1799f, 1231f))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(609f, 660f, -103f), vec3<f32>(-499f, 1833f, -1767f), true)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -136f, 1897f))))));
    let var_1 = Struct_2(reverseBits(vec3<u32>(0u, select(arg_0, ~arg_0, true), 0u)), ~min(min(select(vec3<i32>(u_input.a, 5709i, u_input.a), vec3<i32>(-40585i, u_input.a, 42904i), vec3<bool>(true, false, false)), -vec3<i32>(-1i, -5600i, u_input.a)), countOneBits(vec3<i32>(u_input.a, u_input.a, -2147483647i) >> (vec3<u32>(arg_0, 1u, 21750u) % vec3<u32>(32u)))), u_input.a);
    let var_2 = 53655u;
    var var_3 = -vec4<i32>(_wgslsmith_sub_i32(-reverseBits(-1i), _wgslsmith_sub_i32(-1i, u_input.a) ^ 51310i), min(1i, _wgslsmith_mod_i32(-32146i, var_1.c)), var_1.b.x, 1i);
    var_3 = _wgslsmith_div_vec4_i32(vec4<i32>(~min(2147483647i | u_input.a, u_input.a), -1i, -_wgslsmith_div_i32(max(var_3.x, var_1.b.x), var_3.x >> (17024u % 32u)), -((u_input.a >> (u_input.b.x % 32u)) ^ u_input.a)), ~vec4<i32>(1i ^ var_3.x, _wgslsmith_div_i32(u_input.a >> (arg_0 % 32u), var_1.c), max(min(u_input.a, var_1.c), -1i), var_1.c));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1358f)));
}

fn func_2(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: Struct_1) -> i32 {
    var var_0 = arg_0;
    var var_1 = _wgslsmith_f_op_f32(func_3(abs(~31548u)));
    var_0 = !arg_0;
    let var_2 = Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-274f, -193f, -1045f)) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(696f, 902f, -904f), vec3<f32>(361f, 1908f, -601f), arg_0.zyw))) - _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(541f, 807f, -1326f) * vec3<f32>(449f, 124f, -657f)))))));
    var var_3 = var_2;
    return arg_2.c.x;
}

fn func_1() -> bool {
    let var_0 = Struct_1(~(vec4<u32>(6693u, u_input.c.x | u_input.b.x, ~u_input.b.x, ~0u) << (u_input.c % vec4<u32>(32u))), u_input.c.zyx, min(vec4<i32>(13432i, ~u_input.a, 1i, abs(-1i) << (~4294967295u % 32u)), vec4<i32>(~(u_input.a << (18253u % 32u)), -func_2(vec4<bool>(true, false, true, true), Struct_2(u_input.c.ywz, vec3<i32>(u_input.a, 22849i, u_input.a), 3499i), Struct_1(u_input.c, u_input.c.ywz, vec4<i32>(65141i, u_input.a, u_input.a, u_input.a))), _wgslsmith_div_i32(67491i, 1i), u_input.a)));
    let var_1 = u_input.c;
    var var_2 = ~_wgslsmith_add_u32(1u, ~var_1.x);
    let var_3 = ~(vec4<u32>(_wgslsmith_div_u32(abs(var_0.b.x), var_0.b.x << (var_0.b.x % 32u)), _wgslsmith_dot_vec3_u32(var_0.b, _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b.x, var_0.b.x, var_0.a.x), u_input.c.ywx)), countOneBits(~15441u), 1u) >> ((vec4<u32>(var_0.b.x >> (0u % 32u), 29345u, u_input.c.x, select(120913u, var_1.x, false)) << (abs(select(vec4<u32>(u_input.c.x, u_input.c.x, u_input.b.x, 4294967295u), vec4<u32>(111318u, 0u, 19528u, u_input.c.x), vec4<bool>(false, false, false, false))) % vec4<u32>(32u))) % vec4<u32>(32u)));
    var var_4 = vec4<u32>(~(~_wgslsmith_mult_u32(u_input.c.x, var_3.x)) ^ firstTrailingBit(71724u & ~var_0.a.x), var_0.a.x, var_0.b.x, ~_wgslsmith_dot_vec3_u32(~(~vec3<u32>(var_0.a.x, u_input.c.x, u_input.c.x)), firstLeadingBit(vec3<u32>(var_3.x, u_input.b.x, 1083u))));
    return true;
}

fn func_4(arg_0: vec4<bool>, arg_1: i32) -> vec3<u32> {
    let var_0 = u_input.b.x;
    var var_1 = vec3<u32>(u_input.c.x, _wgslsmith_mult_u32(abs(~var_0), _wgslsmith_mult_u32(var_0, 0u)) ^ _wgslsmith_dot_vec2_u32(~u_input.c.yz | u_input.b, reverseBits(countOneBits(vec2<u32>(6505u, u_input.c.x)))), _wgslsmith_dot_vec4_u32(u_input.c, vec4<u32>(_wgslsmith_mod_u32(_wgslsmith_add_u32(var_0, u_input.b.x), 4294967295u), 51457u, u_input.b.x << (11459u % 32u), 4294967295u)));
    var var_2 = u_input.c.x;
    var var_3 = 1i;
    let var_4 = false;
    return u_input.c.zwz;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(vec4<bool>(true, !(func_1() | false), ~u_input.b.x >= min(_wgslsmith_dot_vec3_u32(u_input.c.zxy, vec3<u32>(8840u, 6589u, 0u)), 1u), !(!(u_input.c.x != 94026u))), u_input.a);
    var var_1 = -vec4<i32>(_wgslsmith_clamp_i32(47708i, -(16814i & u_input.a), u_input.a), -37703i, 44396i, ~(1i | u_input.a));
    var var_2 = vec2<u32>(58366u, 4294967295u) << (~(~var_0.yx) % vec2<u32>(32u));
    var_1 = max(vec4<i32>(min(_wgslsmith_sub_i32(max(var_1.x, 0i), -1i), _wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.a, u_input.a, var_1.x, u_input.a), vec4<i32>(17981i, u_input.a, u_input.a, 31264i) | vec4<i32>(u_input.a, 1i, var_1.x, u_input.a))), max(u_input.a, var_1.x) << ((1u << (var_0.x % 32u)) % 32u), _wgslsmith_mult_i32(var_1.x, u_input.a), _wgslsmith_add_i32((var_1.x & 2147483647i) >> (u_input.c.x % 32u), var_1.x)), _wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(~(-vec4<i32>(-84248i, u_input.a, u_input.a, -2147483647i)), firstLeadingBit(vec4<i32>(u_input.a, 1i, 0i, var_1.x) | vec4<i32>(0i, var_1.x, 2147483647i, 1i))), vec4<i32>(1402i, ~24002i, _wgslsmith_add_i32(-1i, u_input.a) ^ 0i, 19762i)));
    var_2 = var_0.zy;
    var_1 = vec4<i32>(-9570i >> (_wgslsmith_clamp_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, 4294967295u, var_2.x), vec3<u32>(0u, var_2.x, var_0.x)), ~(1948u << (var_0.x % 32u)), 4294967295u) % 32u), 1i, var_1.x << (70233u % 32u), var_1.x);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mult_vec4_u32(select(vec4<u32>(var_2.x, var_0.x, 4294967295u, 4294967295u), vec4<u32>(6960u, var_0.x, var_0.x, u_input.b.x), false) >> (vec4<u32>(var_2.x, var_2.x, var_0.x, u_input.c.x) % vec4<u32>(32u)), countOneBits(u_input.c) << (u_input.c % vec4<u32>(32u))), _wgslsmith_dot_vec3_i32(reverseBits(~var_1.xzy), var_1.xzy << (countOneBits(vec3<u32>(var_0.x, 35842u, 0u)) % vec3<u32>(32u))), _wgslsmith_f_op_f32(f32(-1f) * -320f));
}

