struct Struct_1 {
    a: bool,
    b: f32,
    c: i32,
    d: vec2<u32>,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: vec4<bool>,
    e: vec2<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: Struct_2,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: u32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 2>;

var<private> global1: array<Struct_1, 30> = array<Struct_1, 30>(Struct_1(true, 435f, -1i, vec2<u32>(87335u, 4294967295u), -165f), Struct_1(true, 2032f, 16343i, vec2<u32>(0u, 1u), -1000f), Struct_1(false, -469f, -1i, vec2<u32>(2933u, 26267u), -832f), Struct_1(true, -719f, 2147483647i, vec2<u32>(17739u, 2617u), -1000f), Struct_1(true, 1000f, -44729i, vec2<u32>(948u, 1975u), -877f), Struct_1(false, 907f, -6204i, vec2<u32>(35907u, 3682u), 284f), Struct_1(true, -859f, -47554i, vec2<u32>(5799u, 0u), -912f), Struct_1(true, -705f, -18997i, vec2<u32>(62614u, 0u), 1860f), Struct_1(false, 818f, 2147483647i, vec2<u32>(21507u, 1u), -1476f), Struct_1(false, 1000f, 1i, vec2<u32>(0u, 6939u), 368f), Struct_1(false, -877f, -37782i, vec2<u32>(1u, 0u), 546f), Struct_1(false, 501f, -19985i, vec2<u32>(53003u, 1u), -448f), Struct_1(true, 111f, 1i, vec2<u32>(1u, 0u), 575f), Struct_1(true, 1018f, -1i, vec2<u32>(16045u, 1u), -141f), Struct_1(true, 1388f, 18320i, vec2<u32>(22144u, 36911u), 1092f), Struct_1(false, -592f, -24926i, vec2<u32>(4294967295u, 41517u), -648f), Struct_1(true, 726f, 1i, vec2<u32>(4294967295u, 4294967295u), 297f), Struct_1(false, 364f, 0i, vec2<u32>(1u, 4294967295u), 852f), Struct_1(true, 642f, i32(-2147483648), vec2<u32>(0u, 100032u), 175f), Struct_1(false, -1893f, 1i, vec2<u32>(10710u, 24542u), 723f), Struct_1(true, 932f, 2147483647i, vec2<u32>(111352u, 1u), 193f), Struct_1(false, 1609f, 39757i, vec2<u32>(1u, 1u), -541f), Struct_1(false, -1347f, 0i, vec2<u32>(75424u, 59916u), -1165f), Struct_1(false, -453f, 1i, vec2<u32>(1u, 18580u), 751f), Struct_1(true, -184f, i32(-2147483648), vec2<u32>(4294967295u, 65880u), 1617f), Struct_1(false, 1000f, 3160i, vec2<u32>(42681u, 0u), -178f), Struct_1(false, -977f, -2924i, vec2<u32>(0u, 0u), 1364f), Struct_1(true, 306f, 1i, vec2<u32>(92189u, 1u), 431f), Struct_1(false, -1862f, -12011i, vec2<u32>(1u, 0u), -933f), Struct_1(true, -165f, -1i, vec2<u32>(54562u, 54129u), 1000f));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_1(arg_0: vec4<i32>, arg_1: bool) -> f32 {
    global0 = array<vec4<u32>, 2>();
    global1 = array<Struct_1, 30>();
    global0 = array<vec4<u32>, 2>();
    let var_0 = arg_0;
    let var_1 = _wgslsmith_clamp_u32(_wgslsmith_add_u32(1u, _wgslsmith_sub_u32(reverseBits(firstLeadingBit(u_input.a.x)), ~u_input.a.x)), _wgslsmith_dot_vec3_u32(~(~vec3<u32>(u_input.a.x, u_input.a.x, 4294967295u)), vec3<u32>(~_wgslsmith_mult_u32(u_input.a.x, u_input.a.x), ~(~1u), ~(~u_input.a.x))), 100515u);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-361f, _wgslsmith_div_f32(-1054f, 601f)) * -860f)));
}

fn func_3(arg_0: i32, arg_1: vec3<bool>, arg_2: f32) -> f32 {
    let var_0 = global1[_wgslsmith_index_u32(0u, 30u)];
    var var_1 = Struct_3(Struct_1(var_0.a, arg_2, abs(-_wgslsmith_mult_i32(u_input.c.x, -71756i)), ~(~_wgslsmith_add_vec2_u32(var_0.d, var_0.d)), var_0.b), 1i, Struct_2(global1[_wgslsmith_index_u32(4294967295u, 30u)], ~_wgslsmith_dot_vec4_u32(~vec4<u32>(0u, u_input.a.x, var_0.d.x, var_0.d.x), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, var_0.d.x), vec4<u32>(u_input.a.x, u_input.a.x, var_0.d.x, var_0.d.x))), global1[_wgslsmith_index_u32(var_0.d.x, 30u)], vec4<bool>(true, var_0.a, true, var_0.a), ~(~(var_0.d | vec2<u32>(u_input.a.x, u_input.a.x)))), _wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(max(0u, var_0.d.x), 4294967295u, ~u_input.a.x), ~u_input.a.x >> (~u_input.a.x % 32u), _wgslsmith_clamp_u32(firstLeadingBit(59928u), 1u, var_0.d.x | 0u), ~(~var_0.d.x)), ~vec4<u32>(u_input.a.x, 1u, _wgslsmith_add_u32(var_0.d.x, 67523u), var_0.d.x & var_0.d.x)));
    global0 = array<vec4<u32>, 2>();
    global1 = array<Struct_1, 30>();
    let var_2 = var_1.a.a;
    return _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(111f, arg_2)));
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: u32) -> vec4<bool> {
    global0 = array<vec4<u32>, 2>();
    var var_0 = arg_1.b;
    var var_1 = Struct_1(false & (1u <= (_wgslsmith_sub_u32(4294967295u, u_input.a.x) ^ 0u)), _wgslsmith_f_op_f32(round(arg_0)), 1i, vec2<u32>(~select(8018u, 0u, true) | arg_2, ~50257u), _wgslsmith_f_op_f32(step(arg_0, _wgslsmith_f_op_f32(-279f * 562f))));
    var var_2 = abs(_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(firstLeadingBit(-24244i), var_1.c << (var_1.d.x % 32u), _wgslsmith_mult_i32(var_1.c, -14469i), max(1852i, var_1.c)), vec4<i32>(_wgslsmith_add_i32(var_1.c, u_input.c.x), _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.c, -9393i, -31570i, u_input.b.x), u_input.c), 0i >> (arg_1.d.x % 32u), 5972i)), countOneBits(select(vec4<i32>(u_input.b.x, 32177i, u_input.b.x, arg_1.c), -u_input.c, select(vec4<bool>(true, arg_1.a, false, false), vec4<bool>(arg_1.a, arg_1.a, true, false), false)))));
    let var_3 = var_1.e;
    return !vec4<bool>(false, select(arg_0 != 598f, all(vec2<bool>(true, arg_1.a)), !arg_1.a) && true, false, true);
}

fn func_2() -> Struct_1 {
    global0 = array<vec4<u32>, 2>();
    let var_0 = all(!vec4<bool>(true, true, any(vec3<bool>(false, true, true)), true)) && false;
    let var_1 = select(vec4<bool>(var_0, all(func_4(_wgslsmith_f_op_f32(func_3(u_input.b.x, vec3<bool>(var_0, var_0, var_0), 1543f)), Struct_1(true, 1000f, -41879i, vec2<u32>(4294967295u, 0u), 317f), ~u_input.a.x)), _wgslsmith_div_i32(0i, ~2147483647i) > ~_wgslsmith_mod_i32(u_input.c.x, 0i), !(var_0 & var_0) && true), select(func_4(_wgslsmith_f_op_f32(-1000f * -535f), Struct_1(true, _wgslsmith_f_op_f32(-728f * 713f), -u_input.b.x, _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a.x, 42024u), vec2<u32>(26599u, 1u)), _wgslsmith_f_op_f32(max(251f, 144f))), u_input.a.x), !vec4<bool>(false, u_input.a.x > 52170u, select(true, true, var_0), var_0), var_0), var_0);
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-110f * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(2068f + 2168f)))))) * 161f);
    let var_3 = -1574f;
    return Struct_1(var_0, _wgslsmith_f_op_f32(-var_3), 10788i, ~(~(~(u_input.a << (u_input.a % vec2<u32>(32u))))), _wgslsmith_f_op_f32(f32(-1f) * -572f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b.wxz;
    let var_1 = !(!(!any(vec2<bool>(true, true))));
    var var_2 = vec4<f32>(_wgslsmith_div_f32(242f, -1215f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(u_input.b, !var_1)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -231f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(461f * 1000f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-653f, 2286f, false))) * -1156f)), _wgslsmith_f_op_f32(func_1(-(vec4<i32>(-14510i, var_0.x, -2147483647i, 36005i) & vec4<i32>(var_0.x, 2147483647i, -1i, 0i)) & ~_wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, var_0.x, -636i, var_0.x), u_input.c, u_input.b), true)));
    var var_3 = var_1;
    var var_4 = Struct_3(func_2(), u_input.c.x, Struct_2(func_2(), u_input.a.x | ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, 1u), vec3<u32>(10153u, u_input.a.x, u_input.a.x)), global1[_wgslsmith_index_u32(u_input.a.x, 30u)], !vec4<bool>(all(vec3<bool>(false, var_1, true)), false, false, true), _wgslsmith_mod_vec2_u32(firstLeadingBit(~u_input.a), abs(abs(u_input.a)))), vec4<u32>(57094u, max(_wgslsmith_mult_u32(u_input.a.x, 49390u), ~1u) | _wgslsmith_add_u32(1u ^ u_input.a.x, u_input.a.x), ~u_input.a.x, ~(~_wgslsmith_sub_u32(u_input.a.x, 98485u))));
    var var_5 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_div_f32(var_2.x, -299f)))), _wgslsmith_f_op_vec2_f32(-var_2.yx)));
    let var_6 = 900f;
    let x = u_input.a;
    s_output = StorageBuffer(var_4.d.wz, abs(countOneBits(1u)), ~var_4.c.a.c, _wgslsmith_div_u32(~_wgslsmith_sub_u32(u_input.a.x, _wgslsmith_mult_u32(u_input.a.x, 11646u)), 10028u), vec2<u32>(4294967295u, u_input.a.x));
}

