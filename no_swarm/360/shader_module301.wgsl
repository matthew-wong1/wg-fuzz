struct Struct_1 {
    a: vec3<u32>,
    b: bool,
    c: f32,
    d: vec3<u32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: Struct_3,
    b: vec3<bool>,
    c: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: array<vec2<u32>, 25>;

var<private> global2: array<vec4<i32>, 30> = array<vec4<i32>, 30>(vec4<i32>(34948i, 3485i, -5469i, 40338i), vec4<i32>(-42899i, i32(-2147483648), 0i, 10776i), vec4<i32>(28179i, i32(-2147483648), 1732i, -20510i), vec4<i32>(i32(-2147483648), -31852i, 2147483647i, -26406i), vec4<i32>(20415i, -39415i, 18921i, 0i), vec4<i32>(0i, 2147483647i, 23068i, -57542i), vec4<i32>(-17454i, 1i, 0i, 5213i), vec4<i32>(42982i, 22841i, 1i, 11441i), vec4<i32>(-2955i, 6482i, 42078i, 2147483647i), vec4<i32>(-1i, -1i, -39411i, -34723i), vec4<i32>(-7746i, 1i, -36691i, -40981i), vec4<i32>(-7285i, 2147483647i, 1i, 2147483647i), vec4<i32>(1374i, 31310i, 2147483647i, 5635i), vec4<i32>(1i, -1i, i32(-2147483648), -27160i), vec4<i32>(1i, 2147483647i, 0i, -1i), vec4<i32>(4602i, -39887i, -1i, 25381i), vec4<i32>(-1i, 2147483647i, i32(-2147483648), 39487i), vec4<i32>(i32(-2147483648), 2147483647i, -25733i, i32(-2147483648)), vec4<i32>(1i, 1i, 190i, 2147483647i), vec4<i32>(20403i, 1i, 57233i, 1i), vec4<i32>(0i, i32(-2147483648), -3737i, 2147483647i), vec4<i32>(0i, i32(-2147483648), 1i, -1i), vec4<i32>(i32(-2147483648), -40350i, 1i, 0i), vec4<i32>(25423i, 3752i, -4463i, 2147483647i), vec4<i32>(1i, 57354i, 2147483647i, 2147483647i), vec4<i32>(2147483647i, 0i, -8049i, 0i), vec4<i32>(-11607i, 2147483647i, 2147483647i, i32(-2147483648)), vec4<i32>(1i, 30161i, 539i, 23295i), vec4<i32>(2147483647i, -39718i, -6064i, -1i), vec4<i32>(48508i, 1i, -30457i, 18576i));

var<private> global3: array<vec3<bool>, 30> = array<vec3<bool>, 30>(vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true));

var<private> global4: i32;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> vec2<bool> {
    let var_0 = Struct_1(select(vec3<u32>(1u, countOneBits(_wgslsmith_mod_u32(0u, 28975u)), 1531u), firstTrailingBit(~vec3<u32>(1u, 1u, 1u)), !select(vec3<bool>(true, true, false), !global3[_wgslsmith_index_u32(71093u, 30u)], all(vec3<bool>(true, false, false)))), true, _wgslsmith_f_op_f32(f32(-1f) * -1959f), ~vec3<u32>(1u, 1u, 1u));
    var var_1 = Struct_5(Struct_3(var_0, !any(vec4<bool>(var_0.b, var_0.b, var_0.b, var_0.b)), Struct_1(~vec3<u32>(0u, var_0.a.x, var_0.a.x), all(vec4<bool>(false, var_0.b, true, true)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.c, var_0.c) - _wgslsmith_f_op_f32(step(-209f, 352f))), ~(~var_0.a))), global3[_wgslsmith_index_u32(abs(var_0.d.x), 30u)], 66765u);
    return vec2<bool>(true, true);
}

fn func_2(arg_0: f32, arg_1: f32, arg_2: bool) -> vec2<u32> {
    global1 = array<vec2<u32>, 25>();
    let var_0 = !select(vec4<bool>(false, !(!arg_2), true && !arg_2, true), vec4<bool>(arg_2, arg_2, true, arg_2), vec4<bool>(true, any(func_3()), false, arg_2));
    let var_1 = Struct_1(firstLeadingBit(vec3<u32>(1u, 1u, 1u)), any(select(var_0.yzy, vec3<bool>(all(vec4<bool>(false, arg_2, false, arg_2)), !arg_2, var_0.x), vec3<bool>(var_0.x, any(global3[_wgslsmith_index_u32(1u, 30u)]), false || arg_2))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_1)) * 1000f)))), ~firstTrailingBit(vec3<u32>(max(74540u, 62448u), 0u, 72878u << (0u % 32u))));
    let var_2 = _wgslsmith_sub_vec2_u32(~_wgslsmith_sub_vec2_u32(_wgslsmith_add_vec2_u32(max(var_1.a.zy, vec2<u32>(50748u, var_1.d.x)), vec2<u32>(var_1.a.x, var_1.a.x)), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(var_1.d.x, ~19028u), 25u)]), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~_wgslsmith_mult_vec4_u32(vec4<u32>(var_1.d.x, var_1.d.x, var_1.a.x, var_1.d.x), vec4<u32>(89012u, var_1.a.x, 1u, var_1.d.x) << (vec4<u32>(var_1.d.x, 24146u, var_1.d.x, var_1.d.x) % vec4<u32>(32u))), vec4<u32>(~67638u << (~var_1.a.x % 32u), ~(var_1.d.x << (var_1.d.x % 32u)), var_1.d.x, 1u)), 25u)]);
    var var_3 = select(vec4<i32>(reverseBits(-13662i), 9350i, _wgslsmith_mod_i32(abs(select(25162i, 17921i, false)), ~0i), u_input.a.x), vec4<i32>(0i ^ _wgslsmith_div_i32(-1i, global0.x), global0.x, u_input.b.x, max(u_input.a.x, 1i)), arg_2);
    return global1[_wgslsmith_index_u32(var_2.x, 25u)];
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_5, arg_2: f32) -> u32 {
    global2 = array<vec4<i32>, 30>();
    let var_0 = arg_1.a.c.c;
    global1 = array<vec2<u32>, 25>();
    var var_1 = Struct_2(func_2(_wgslsmith_f_op_f32(trunc(arg_2)), 289f, all(arg_1.b)), Struct_1(max(~reverseBits(vec3<u32>(26934u, 45424u, 14571u)), vec3<u32>(1u, select(46957u, arg_1.c, arg_1.a.c.b), 43037u)), arg_1.a.c.b, var_0, vec3<u32>(~arg_1.c & _wgslsmith_div_u32(arg_1.a.a.a.x, arg_1.c), arg_1.c, ~27151u)));
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_2, 984f, var_0, 2134f), vec4<f32>(arg_2, 126f, var_0, var_0))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2, -543f, -1033f, arg_2) * vec4<f32>(-924f, var_1.b.c, 294f, -1552f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1620f, arg_1.a.a.c, var_0, var_0) * vec4<f32>(var_1.b.c, var_0, var_1.b.c, -1079f)))))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a.c.c, arg_2, -375f, -557f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, -950f, 1061f, -283f)), select(vec4<bool>(true, true, true, true), vec4<bool>(false, var_1.b.b, var_1.b.b, var_1.b.b), var_1.b.b)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b.c, arg_1.a.a.c, 716f, arg_2))))));
    return abs(max(arg_1.a.c.a.x, 0u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(-2147483647i);
    var var_1 = vec3<bool>(_wgslsmith_mult_i32(~u_input.c, global0.x) < (-63528i >> (func_1(_wgslsmith_sub_vec4_i32(global2[_wgslsmith_index_u32(41193u, 30u)], global2[_wgslsmith_index_u32(0u, 30u)]), Struct_5(Struct_3(Struct_1(vec3<u32>(21525u, 4294967295u, 66345u), false, -896f, vec3<u32>(32452u, 0u, 1u)), false, Struct_1(vec3<u32>(24243u, 33865u, 1u), true, -163f, vec3<u32>(27711u, 28751u, 0u))), global3[_wgslsmith_index_u32(39381u, 30u)], 4294967295u), _wgslsmith_f_op_f32(select(-1548f, 1541f, true))) % 32u)), all(vec4<bool>(_wgslsmith_f_op_f32(-201f * -971f) > _wgslsmith_f_op_f32(sign(-1630f)), true, true, any(vec4<bool>(true, true, true, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-929f, _wgslsmith_f_op_f32(floor(215f))))) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(899f * 647f)) + -589f));
    var var_2 = reverseBits(_wgslsmith_mult_i32(32393i, abs(8294i)));
    let var_3 = Struct_1(abs(~(~firstTrailingBit(vec3<u32>(0u, 24420u, 1u)))), var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -798f), _wgslsmith_f_op_f32(max(-816f, _wgslsmith_f_op_f32(f32(-1f) * -1244f))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1464f))), select(~(~vec3<u32>(1u, 1u, 1u)), ~(~min(vec3<u32>(54859u, 0u, 43116u), vec3<u32>(1u, 0u, 0u))), select(global3[_wgslsmith_index_u32(~_wgslsmith_sub_u32(50025u, 7871u), 30u)], vec3<bool>(all(vec3<bool>(var_1.x, true, true)), true, true), true)));
    let var_4 = Struct_3(var_3, _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(~vec4<u32>(var_3.a.x, 54493u, 1u, 1u), ~vec4<u32>(0u, var_3.d.x, var_3.a.x, 4294967295u)), abs(vec4<u32>(1u, 25837u, var_3.a.x, var_3.a.x))) < _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(var_3.a | vec3<u32>(1u, var_3.d.x, 0u), vec3<u32>(var_3.d.x, var_3.a.x, 68742u)), vec3<u32>(~50444u, min(var_3.a.x, 9459u), 39989u ^ var_3.d.x)), var_3);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_u32(_wgslsmith_sub_u32(_wgslsmith_sub_u32(min(var_4.a.a.x, var_3.d.x), ~1u), _wgslsmith_dot_vec2_u32(~vec2<u32>(var_4.c.a.x, 11845u), vec2<u32>(1u, var_4.a.d.x) << (var_4.a.d.yy % vec2<u32>(32u)))), _wgslsmith_clamp_u32(min(4294967295u, var_4.a.d.x), var_3.d.x, ~var_4.c.a.x), ~1u), var_3.a.x, ~(~20480u));
}

