struct Struct_1 {
    a: f32,
    b: vec2<f32>,
    c: f32,
    d: vec2<bool>,
    e: vec3<u32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: vec3<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<i32>,
}

struct Struct_4 {
    a: bool,
    b: Struct_3,
    c: f32,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 31>;

var<private> global1: array<bool, 16> = array<bool, 16>(false, true, false, true, true, false, false, true, false, false, false, false, true, false, true, false);

var<private> global2: array<i32, 29> = array<i32, 29>(-34720i, 1i, -47930i, i32(-2147483648), -34303i, -1i, i32(-2147483648), 27259i, 2147483647i, -9204i, 22099i, 2147483647i, 1i, -1i, -1i, 2147483647i, 0i, -8108i, 2147483647i, -6157i, -24509i, -10363i, 2147483647i, 2057i, -1i, 48320i, 38186i, -10021i, i32(-2147483648));

var<private> global3: array<Struct_4, 1>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> u32 {
    global1 = array<bool, 16>();
    var var_0 = -vec2<i32>(reverseBits(~(~12277i)), global2[_wgslsmith_index_u32(64450u, 29u)]);
    let var_1 = 434f;
    global0 = array<vec2<i32>, 31>();
    var var_2 = _wgslsmith_f_op_f32(847f * var_1);
    return _wgslsmith_div_u32(0u & u_input.b, _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(8618u, 4294967295u, u_input.b, 1u), vec4<u32>(u_input.b, 4185u, 0u, 1u)), _wgslsmith_add_u32(countOneBits(1u), firstTrailingBit(u_input.b)), ~60812u), vec3<u32>(~_wgslsmith_mod_u32(49131u, 1u), firstTrailingBit(u_input.b) & _wgslsmith_mult_u32(1u, u_input.b), ~1u)));
}

fn func_2() -> Struct_2 {
    var var_0 = _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b ^ _wgslsmith_clamp_u32(~u_input.c.x, u_input.c.x, ~u_input.c.x), func_3()), _wgslsmith_mod_vec2_u32(vec2<u32>(1u, u_input.b), select(~u_input.c >> ((vec2<u32>(4294967295u, 31249u) & vec2<u32>(u_input.b, 4294967295u)) % vec2<u32>(32u)), u_input.c, select(vec2<bool>(global1[_wgslsmith_index_u32(u_input.b, 16u)], global1[_wgslsmith_index_u32(u_input.b, 16u)]), !vec2<bool>(true, global1[_wgslsmith_index_u32(u_input.c.x, 16u)]), select(vec2<bool>(true, true), vec2<bool>(false, global1[_wgslsmith_index_u32(26453u, 16u)]), vec2<bool>(false, global1[_wgslsmith_index_u32(6415u, 16u)]))))));
    var_0 = ~vec2<u32>(~u_input.b, _wgslsmith_dot_vec3_u32(~vec3<u32>(59865u, 15754u, 4294967295u) & firstTrailingBit(vec3<u32>(u_input.c.x, u_input.b, u_input.b)), ~vec3<u32>(u_input.b, u_input.c.x, var_0.x)));
    var var_1 = u_input.a.x;
    let var_2 = true;
    var var_3 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(723f, _wgslsmith_f_op_f32(step(-1141f, _wgslsmith_div_f32(991f, -1000f))))), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-1000f)), -1510f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -393f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(595f)) - 495f)))), select(!(!select(vec2<bool>(var_2, var_2), vec2<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 16u)], global1[_wgslsmith_index_u32(var_0.x, 16u)]), vec2<bool>(global1[_wgslsmith_index_u32(8706u, 16u)], false))), !(!(!vec2<bool>(false, var_2))), !(var_2 & true) || global1[_wgslsmith_index_u32(40051u, 16u)])));
    return Struct_2(1i & -_wgslsmith_dot_vec3_i32(u_input.a.yxy, u_input.a.zwz), Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(var_3.x, var_3.x)), -1000f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(1284f, var_3.x), vec2<f32>(var_3.x, var_3.x)) - vec2<f32>(var_3.x, var_3.x))), 587f, select(vec2<bool>(global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(4294967295u, 1800u, var_0.x), 16u)], !global1[_wgslsmith_index_u32(1u, 16u)]), vec2<bool>(false, false), !(!vec2<bool>(var_2, var_2))), countOneBits(~(vec3<u32>(var_0.x, 1u, u_input.b) & vec3<u32>(4294967295u, u_input.b, u_input.c.x)))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1255f * var_3.x) * -260f), vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_3.x * var_3.x))), -460f), _wgslsmith_div_f32(var_3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.x))), vec2<bool>(all(vec4<bool>(var_2, global1[_wgslsmith_index_u32(4294967295u, 16u)], var_2, global1[_wgslsmith_index_u32(0u, 16u)])), var_2), vec3<u32>(1656u, _wgslsmith_sub_u32(0u, var_0.x) & u_input.c.x, ~(u_input.b | 4294967295u))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(455f * _wgslsmith_f_op_f32(trunc(var_3.x)))), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(sign(var_3.x)), var_3.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.x)), select(vec2<bool>(true, u_input.a.x >= global2[_wgslsmith_index_u32(var_0.x, 29u)]), vec2<bool>(true, true), vec2<bool>(global1[_wgslsmith_index_u32(1u << (1u % 32u), 16u)], any(vec3<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 16u)], global1[_wgslsmith_index_u32(22695u, 16u)], global1[_wgslsmith_index_u32(4294967295u, 16u)])))), vec3<u32>(var_0.x, max(~0u, 8652u), var_0.x)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.x - -689f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_3.x))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1617f - var_3.x), 189f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(var_3.x, var_3.x)))))));
}

fn func_1() -> Struct_2 {
    global1 = array<bool, 16>();
    global1 = array<bool, 16>();
    return func_2();
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: u32) -> Struct_4 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1085f))));
    var var_1 = !(!(!(!(u_input.a.x >= global2[_wgslsmith_index_u32(arg_2, 29u)]))));
    return Struct_4(false, Struct_3(func_2().d, global0[_wgslsmith_index_u32(reverseBits(u_input.b), 31u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-202f * _wgslsmith_f_op_f32(arg_1.a - arg_0.b.c))))), vec2<i32>(arg_0.a, firstLeadingBit(select(9533i, -2147483647i, true))));
}

fn func_5(arg_0: Struct_4, arg_1: i32, arg_2: Struct_3, arg_3: Struct_3) -> i32 {
    global2 = array<i32, 29>();
    let var_0 = func_1().c;
    let var_1 = Struct_4(all(!(!select(vec3<bool>(true, false, global1[_wgslsmith_index_u32(arg_0.b.a.e.x, 16u)]), vec3<bool>(false, arg_3.a.d.x, global1[_wgslsmith_index_u32(1u, 16u)]), var_0.d.x))), arg_0.b, _wgslsmith_f_op_f32(floor(620f)), vec2<i32>(func_4(Struct_2(_wgslsmith_div_i32(-40669i, -734i), arg_0.b.a, func_1().b, func_1().c, _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.c, 900f, -495f) + vec3<f32>(var_0.b.x, -184f, 220f))), Struct_1(_wgslsmith_f_op_f32(arg_0.c + var_0.c), vec2<f32>(1443f, 121f), _wgslsmith_f_op_f32(max(arg_3.a.b.x, -1073f)), vec2<bool>(false, var_0.d.x), vec3<u32>(0u, arg_3.a.e.x, arg_3.a.e.x) >> (vec3<u32>(var_0.e.x, arg_3.a.e.x, 1u) % vec3<u32>(32u))), _wgslsmith_sub_u32(20888u, _wgslsmith_div_u32(u_input.c.x, 4294967295u))).d.x, i32(-1i) * -2147483647i));
    let var_2 = abs(abs(~(~abs(vec4<u32>(u_input.b, 18293u, arg_3.a.e.x, 0u)))));
    var var_3 = vec2<u32>(_wgslsmith_sub_u32(4294967295u, 71285u), _wgslsmith_dot_vec3_u32(func_2().b.e, ~vec3<u32>(_wgslsmith_clamp_u32(arg_3.a.e.x, 1u, 4294967295u), abs(1u), max(1u, arg_2.a.e.x))));
    return reverseBits(1i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(func_5(func_4(func_1(), func_2().d, u_input.c.x), global2[_wgslsmith_index_u32(63519u, 29u)], func_4(Struct_2(_wgslsmith_clamp_i32(-1767i, 23396i, -44588i), Struct_1(-1916f, vec2<f32>(1507f, 2459f), -761f, vec2<bool>(true, global1[_wgslsmith_index_u32(u_input.b, 16u)]), vec3<u32>(u_input.b, 4294967295u, 18461u)), Struct_1(-631f, vec2<f32>(456f, 619f), 613f, vec2<bool>(true, global1[_wgslsmith_index_u32(4294967295u, 16u)]), vec3<u32>(u_input.b, 50132u, 72683u)), Struct_1(1315f, vec2<f32>(876f, 1531f), 1290f, vec2<bool>(true, global1[_wgslsmith_index_u32(u_input.c.x, 16u)]), vec3<u32>(3617u, u_input.b, 4294967295u)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-194f, -678f, 521f)))), func_1().d, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(1u, u_input.b))).b, func_4(Struct_2(_wgslsmith_mult_i32(global2[_wgslsmith_index_u32(28730u, 29u)], 0i), Struct_1(1144f, vec2<f32>(533f, 504f), 468f, vec2<bool>(false, true), vec3<u32>(u_input.b, u_input.b, u_input.c.x)), func_4(Struct_2(0i, Struct_1(-858f, vec2<f32>(-2138f, 527f), 813f, vec2<bool>(true, true), vec3<u32>(66981u, 0u, u_input.c.x)), Struct_1(-232f, vec2<f32>(317f, 404f), -230f, vec2<bool>(global1[_wgslsmith_index_u32(1u, 16u)], false), vec3<u32>(86177u, u_input.c.x, u_input.c.x)), Struct_1(1020f, vec2<f32>(-483f, 1000f), -1197f, vec2<bool>(true, global1[_wgslsmith_index_u32(u_input.b, 16u)]), vec3<u32>(1u, 4294967295u, 4294967295u)), vec3<f32>(1778f, -1708f, 366f)), Struct_1(1544f, vec2<f32>(-2146f, -726f), -887f, vec2<bool>(false, true), vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x)), u_input.c.x).b.a, Struct_1(-690f, vec2<f32>(1984f, -121f), -1062f, vec2<bool>(false, global1[_wgslsmith_index_u32(38548u, 16u)]), vec3<u32>(u_input.b, 0u, 1u)), vec3<f32>(610f, -215f, -616f)), func_4(func_1(), Struct_1(-118f, vec2<f32>(1563f, 1000f), 634f, vec2<bool>(false, false), vec3<u32>(4294967295u, 13649u, 22761u)), max(76895u, u_input.c.x)).b.a, u_input.b).b), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1().d.b.x + -213f)), vec2<f32>(1f, 1f), _wgslsmith_f_op_f32(361f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-894f, 199f)) - _wgslsmith_f_op_f32(ceil(-677f)))), vec2<bool>(any(vec2<bool>(true, global1[_wgslsmith_index_u32(u_input.b, 16u)])) && true, true), vec3<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, 4294967295u), u_input.c), ~55975u, ~reverseBits(8330u))), Struct_1(-253f, _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(-984f + -189f), _wgslsmith_f_op_f32(min(699f, -2132f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1000f))), _wgslsmith_f_op_f32(f32(-1f) * -1468f)), func_2().c.d, ~(~(vec3<u32>(u_input.c.x, 1u, u_input.c.x) >> (vec3<u32>(u_input.b, u_input.c.x, 127031u) % vec3<u32>(32u))))), Struct_1(_wgslsmith_f_op_f32(624f * _wgslsmith_f_op_f32(trunc(-150f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(-337f, -2223f) - vec2<f32>(-1628f, -435f)), vec2<f32>(1270f, -1000f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-2102f, -1000f))))), -1651f, !select(!vec2<bool>(global1[_wgslsmith_index_u32(u_input.b, 16u)], false), select(vec2<bool>(false, false), vec2<bool>(false, global1[_wgslsmith_index_u32(u_input.b, 16u)]), vec2<bool>(global1[_wgslsmith_index_u32(u_input.b, 16u)], false)), !global1[_wgslsmith_index_u32(u_input.b, 16u)]), ~select(vec3<u32>(u_input.c.x, u_input.c.x, 0u), vec3<u32>(0u, 39315u, u_input.b), true) ^ ~(~vec3<u32>(5930u, u_input.b, 24848u))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(Struct_2(-3543i, Struct_1(-512f, vec2<f32>(-240f, -1433f), 1960f, vec2<bool>(false, false), vec3<u32>(0u, u_input.c.x, u_input.c.x)), Struct_1(-274f, vec2<f32>(679f, -835f), 1533f, vec2<bool>(global1[_wgslsmith_index_u32(1u, 16u)], true), vec3<u32>(4294967295u, 38798u, 32704u)), Struct_1(818f, vec2<f32>(-1707f, 504f), -327f, vec2<bool>(false, false), vec3<u32>(u_input.c.x, 79599u, u_input.b)), vec3<f32>(-531f, 1000f, 108f)), Struct_1(540f, vec2<f32>(-157f, 1020f), -1000f, vec2<bool>(true, global1[_wgslsmith_index_u32(0u, 16u)]), vec3<u32>(1u, 29811u, 1u)), 70902u).c * _wgslsmith_f_op_f32(sign(-543f)))), 1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(-958f)))))));
    global0 = array<vec2<i32>, 31>();
    global2 = array<i32, 29>();
    var var_1 = countOneBits(global2[_wgslsmith_index_u32(~u_input.b & _wgslsmith_mod_u32(18699u, var_0.d.e.x), 29u)] >> ((~(~u_input.c.x) << (~min(33609u, u_input.c.x) % 32u)) % 32u));
    let var_2 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.d.c, var_0.e.x, var_0.e.x, -1337f)) - _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-563f, -246f, var_0.e.x, var_0.d.a), vec4<f32>(-213f, var_0.d.a, -1574f, var_0.b.a))))))), vec4<f32>(_wgslsmith_f_op_f32(-var_0.c.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.c.c, 645f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.d.b.x, var_0.e.x)))), 1560f)));
    var var_3 = var_0.c.e.x;
    let var_4 = vec4<f32>(_wgslsmith_f_op_f32(-271f * -753f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_2.x, 475f) * _wgslsmith_f_op_f32(-var_0.b.b.x)) - _wgslsmith_f_op_f32(func_4(Struct_2(-78524i, var_0.d, var_0.d, Struct_1(var_2.x, var_2.zy, var_2.x, var_0.b.d, var_0.d.e), vec3<f32>(var_2.x, -2018f, -1274f)), var_0.b, 4294967295u).b.a.a + var_2.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_2.x, 578f, false || (global2[_wgslsmith_index_u32(0u, 29u)] != -48023i))) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.b.c)))), var_0.d.c);
    var var_5 = abs(-_wgslsmith_mod_i32(-1i, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, global2[_wgslsmith_index_u32(11580u, 29u)], -2147483647i, 37089i), abs(vec4<i32>(global2[_wgslsmith_index_u32(1u, 29u)], -11561i, -1i, global2[_wgslsmith_index_u32(var_0.b.e.x, 29u)])))));
    var_5 = reverseBits(_wgslsmith_dot_vec4_i32(u_input.a, max(u_input.a, vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(23143i, global2[_wgslsmith_index_u32(5478u, 29u)]), global0[_wgslsmith_index_u32(0u, 31u)]), -global2[_wgslsmith_index_u32(u_input.b, 29u)], _wgslsmith_clamp_i32(u_input.a.x, -4562i, 4499i), 2147483647i))));
    let x = u_input.a;
    s_output = StorageBuffer(min(-vec2<i32>(-global2[_wgslsmith_index_u32(5487u, 29u)], countOneBits(u_input.a.x)), -(_wgslsmith_clamp_vec2_i32(u_input.a.wz, u_input.a.zz, global0[_wgslsmith_index_u32(953u, 31u)]) | countOneBits(u_input.a.zw))), 379f);
}

