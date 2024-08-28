struct Struct_1 {
    a: f32,
    b: u32,
    c: bool,
    d: i32,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: i32,
    d: vec4<i32>,
    e: vec2<i32>,
}

struct Struct_3 {
    a: i32,
    b: vec4<i32>,
    c: u32,
    d: vec3<f32>,
    e: Struct_1,
}

struct Struct_4 {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec3<i32>,
    d: Struct_1,
    e: Struct_2,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec3<i32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 31>;

var<private> global1: i32 = 0i;

var<private> global2: u32 = 25350u;

var<private> global3: array<Struct_2, 19> = array<Struct_2, 19>(Struct_2(Struct_1(1433f, 8199u, false, -39646i, -56084i), vec3<bool>(true, true, false), 37310i, vec4<i32>(2147483647i, i32(-2147483648), -1i, i32(-2147483648)), vec2<i32>(-31322i, 25134i)), Struct_2(Struct_1(-778f, 1u, false, 2147483647i, 18075i), vec3<bool>(true, false, false), 940i, vec4<i32>(2147483647i, -1i, -8810i, -13031i), vec2<i32>(2147483647i, i32(-2147483648))), Struct_2(Struct_1(-1105f, 18166u, false, -1i, -1i), vec3<bool>(true, false, true), -49907i, vec4<i32>(0i, 6740i, 21156i, 0i), vec2<i32>(1i, -1i)), Struct_2(Struct_1(-576f, 4294967295u, true, 2147483647i, -34212i), vec3<bool>(false, false, true), -1i, vec4<i32>(i32(-2147483648), i32(-2147483648), 2147483647i, 42189i), vec2<i32>(46291i, 1i)), Struct_2(Struct_1(603f, 2074u, true, 0i, -58848i), vec3<bool>(false, false, false), -40698i, vec4<i32>(34630i, 3572i, 0i, 26630i), vec2<i32>(32794i, -1i)), Struct_2(Struct_1(1934f, 4844u, false, i32(-2147483648), 2147483647i), vec3<bool>(false, false, true), 0i, vec4<i32>(i32(-2147483648), 1i, 1i, 27807i), vec2<i32>(12019i, 0i)), Struct_2(Struct_1(-1180f, 4294967295u, true, 1i, 0i), vec3<bool>(false, true, false), -1i, vec4<i32>(-11851i, -59102i, 54173i, 36792i), vec2<i32>(48133i, 51008i)), Struct_2(Struct_1(1333f, 46676u, true, 51788i, 0i), vec3<bool>(true, false, false), -1i, vec4<i32>(-1i, i32(-2147483648), 0i, 9619i), vec2<i32>(3647i, 6410i)), Struct_2(Struct_1(-141f, 1846u, true, 52290i, -27870i), vec3<bool>(true, false, false), -9744i, vec4<i32>(-29757i, -16158i, -28955i, -10509i), vec2<i32>(0i, -51083i)), Struct_2(Struct_1(259f, 1u, false, 0i, 15031i), vec3<bool>(true, true, false), 2147483647i, vec4<i32>(1i, i32(-2147483648), 3536i, 1i), vec2<i32>(-39485i, 2147483647i)), Struct_2(Struct_1(1131f, 1u, true, 1i, 2147483647i), vec3<bool>(false, true, true), 0i, vec4<i32>(-55912i, 11079i, 43820i, i32(-2147483648)), vec2<i32>(-54521i, -14807i)), Struct_2(Struct_1(1608f, 4294967295u, true, -50323i, 0i), vec3<bool>(true, false, true), 65873i, vec4<i32>(-29042i, 0i, 31907i, 20612i), vec2<i32>(8215i, 2147483647i)), Struct_2(Struct_1(-1968f, 140883u, false, 68740i, 7976i), vec3<bool>(true, false, false), 0i, vec4<i32>(-14317i, 2147483647i, 1i, 0i), vec2<i32>(-1i, 12488i)), Struct_2(Struct_1(737f, 52893u, true, 35956i, 7685i), vec3<bool>(false, true, false), 23205i, vec4<i32>(-26033i, 8219i, 1i, 0i), vec2<i32>(-1i, 2147483647i)), Struct_2(Struct_1(266f, 5034u, true, 13682i, 0i), vec3<bool>(true, true, true), 0i, vec4<i32>(-1i, i32(-2147483648), 2147483647i, 2147483647i), vec2<i32>(-450i, 8112i)), Struct_2(Struct_1(1000f, 17440u, false, 2147483647i, -11718i), vec3<bool>(false, true, false), -42630i, vec4<i32>(-1i, 40303i, -1i, 1i), vec2<i32>(1i, -24897i)), Struct_2(Struct_1(-1598f, 19328u, true, 23156i, 1i), vec3<bool>(false, true, false), -11947i, vec4<i32>(2147483647i, -1i, -35i, -11408i), vec2<i32>(7785i, -59920i)), Struct_2(Struct_1(594f, 0u, true, i32(-2147483648), -27868i), vec3<bool>(true, false, true), -63013i, vec4<i32>(1i, 16917i, 0i, 1373i), vec2<i32>(1i, 1i)), Struct_2(Struct_1(-141f, 0u, true, i32(-2147483648), i32(-2147483648)), vec3<bool>(false, false, true), 0i, vec4<i32>(-42758i, i32(-2147483648), -58851i, 8109i), vec2<i32>(-13391i, 10301i)));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_1(arg_0: u32, arg_1: bool, arg_2: u32, arg_3: vec4<u32>) -> f32 {
    global1 = _wgslsmith_add_i32(firstTrailingBit(51039i), u_input.b) | (u_input.d.x << (_wgslsmith_clamp_u32(101938u, _wgslsmith_mult_u32(~arg_2, firstLeadingBit(0u)), _wgslsmith_add_u32(29007u, 27579u)) % 32u));
    let var_0 = (~(~(~arg_3.x)) < ~(8017u & (arg_3.x >> (arg_3.x % 32u)))) || all(vec2<bool>(true, true));
    global2 = u_input.c;
    var var_1 = 122831u;
    global0 = array<vec4<f32>, 31>();
    return 432f;
}

fn func_3(arg_0: Struct_3, arg_1: Struct_3, arg_2: Struct_1) -> f32 {
    let var_0 = min(-13146i, ~_wgslsmith_mult_i32(abs(_wgslsmith_add_i32(arg_0.a, arg_2.d)), i32(-1i) * -arg_2.e));
    var var_1 = -534f;
    var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(arg_1.d.x, arg_2.a)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2.a), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(2045f - _wgslsmith_f_op_f32(f32(-1f) * -1065f)))))));
    global1 = _wgslsmith_mult_i32(abs(-(arg_0.a >> (77233u % 32u))), _wgslsmith_add_i32(_wgslsmith_mod_i32(u_input.b, arg_0.e.e), 51035i));
    global0 = array<vec4<f32>, 31>();
    return arg_0.d.x;
}

fn func_2(arg_0: u32) -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_3(-2147483647i, vec4<i32>(u_input.b, -32660i, u_input.d.x, u_input.d.x), 2428u, vec3<f32>(705f, -429f, 166f), Struct_1(388f, arg_0, false, u_input.b, u_input.b)), Struct_3(u_input.d.x, vec4<i32>(u_input.d.x, -6986i, u_input.d.x, -16305i), arg_0, vec3<f32>(-1634f, -923f, 628f), Struct_1(-223f, 0u, true, u_input.d.x, -28201i)), Struct_1(-1598f, u_input.c, false, u_input.d.x, -1i)))), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-1547f, 328f), 112f, true))))));
    let var_1 = Struct_3(-u_input.b, _wgslsmith_sub_vec4_i32(-(~(-vec4<i32>(1i, u_input.d.x, u_input.d.x, 27746i))), ~vec4<i32>(17662i, u_input.b, ~u_input.b, 1i)), abs(~((1u >> (u_input.c % 32u)) ^ arg_0)), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), var_0.x, -1100f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(987f, -1237f), _wgslsmith_f_op_f32(var_0.x * 789f), var_0.x))), Struct_1(var_0.x, countOneBits(_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a.x, arg_0), u_input.a)), any(select(vec3<bool>(false, false, false), select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false)), select(true, true, true))), _wgslsmith_mult_i32(select(-u_input.b, ~(-1i), true), firstTrailingBit(u_input.b)), 74027i));
    let var_2 = global3[_wgslsmith_index_u32(arg_0, 19u)];
    global0 = array<vec4<f32>, 31>();
    let var_3 = Struct_4(vec2<u32>(_wgslsmith_div_u32(4294967295u, arg_0), _wgslsmith_mult_u32(799u, arg_0)), vec2<u32>(var_2.a.b | 0u, ~(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, var_1.c, var_2.a.b), vec3<u32>(u_input.a.x, 0u, 62634u)) & var_1.e.b)), var_1.b.wyz, Struct_1(_wgslsmith_f_op_f32(var_2.a.a - var_1.e.a), arg_0 << (4294967295u % 32u), false || select(all(vec4<bool>(var_2.a.c, var_2.a.c, false, var_2.a.c)), any(vec2<bool>(var_2.b.x, var_2.a.c)), true), 1i, -17545i), global3[_wgslsmith_index_u32(4294967295u, 19u)]);
    return select(vec2<bool>(var_3.e.a.a < 874f, select(!var_2.a.c, true, var_1.e.c)), select(select(vec2<bool>(true, !var_3.d.c), vec2<bool>(true, true), var_2.a.c), vec2<bool>(true, var_1.e.c), var_2.b.yy), vec2<bool>(!(-var_3.c.x < abs(var_1.e.d)), -2260i <= _wgslsmith_mod_i32(32481i, ~u_input.b)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.d.x;
    var var_1 = Struct_4(~u_input.a, u_input.a, vec3<i32>(_wgslsmith_div_i32(u_input.b, abs(_wgslsmith_sub_i32(17453i, u_input.d.x))), 5596i, _wgslsmith_add_i32(-3361i, 42681i)), Struct_1(_wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(u_input.c, true, u_input.a.x, vec4<u32>(4294967295u, 0u, u_input.c, 4294967295u))) - 1633f)), countOneBits(u_input.c), all(!func_2(u_input.a.x)), -1180i | ~(-19956i >> (u_input.a.x % 32u)), select(var_0, 9175i, select(true, true, u_input.d.x > -10436i))), global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(21163u, ~(u_input.a.x | u_input.a.x), u_input.c & u_input.c), countOneBits(_wgslsmith_sub_vec3_u32(select(vec3<u32>(0u, 19489u, 4294967295u), vec3<u32>(u_input.c, 4294967295u, u_input.c), vec3<bool>(false, true, false)), ~vec3<u32>(4294967295u, 9715u, u_input.a.x)))), 19u)]);
    let var_2 = var_0;
    let var_3 = ~(~_wgslsmith_div_vec2_u32(~vec2<u32>(var_1.e.a.b, u_input.a.x), abs(firstTrailingBit(vec2<u32>(u_input.a.x, var_1.b.x)))));
    let var_4 = var_1.e.a;
    var var_5 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(vec2<f32>(192f, var_1.e.a.a), vec2<f32>(var_1.d.a, var_4.a)))))), vec2<f32>(-294f, _wgslsmith_f_op_f32(-var_1.e.a.a))));
    let x = u_input.a;
    s_output = StorageBuffer(var_4.d, reverseBits(u_input.d | min(var_1.e.d.yzx, var_1.e.d.yxw)), -vec3<i32>(~(-var_0), -2147483647i, var_0), vec2<f32>(var_5.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2004f), var_5.x) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -889f) * var_1.d.a))));
}

