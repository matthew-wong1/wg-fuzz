struct Struct_1 {
    a: i32,
    b: vec4<u32>,
    c: u32,
    d: vec4<f32>,
    e: vec3<u32>,
}

struct Struct_2 {
    a: i32,
    b: u32,
    c: f32,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec2<i32>,
    d: vec2<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 6> = array<vec3<f32>, 6>(vec3<f32>(-1000f, -426f, -447f), vec3<f32>(143f, -1206f, -1071f), vec3<f32>(-404f, -922f, 937f), vec3<f32>(500f, -695f, -1512f), vec3<f32>(1364f, -1000f, -1525f), vec3<f32>(948f, -261f, -394f));

var<private> global1: array<f32, 11> = array<f32, 11>(1000f, -1102f, -1000f, -198f, -1307f, 1591f, -2136f, 1000f, -438f, -350f, 2048f);

var<private> global2: array<u32, 10> = array<u32, 10>(4294967295u, 0u, 1u, 1u, 94758u, 792u, 4294967295u, 111016u, 27724u, 46277u);

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
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

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> vec4<f32> {
    global1 = array<f32, 11>();
    var var_0 = Struct_1(_wgslsmith_dot_vec3_i32(-_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.c.x, u_input.d.x, u_input.c.x), vec3<i32>(3573i, u_input.c.x, u_input.c.x) >> (vec3<u32>(u_input.b, 4294967295u, 1u) % vec3<u32>(32u))), select(~firstLeadingBit(vec3<i32>(u_input.c.x, u_input.d.x, u_input.c.x)), select(min(vec3<i32>(u_input.c.x, -1i, u_input.c.x), vec3<i32>(-51475i, 2147483647i, 25146i)), -vec3<i32>(u_input.d.x, u_input.d.x, 33957i), select(true, false, true)), vec3<bool>(true, true, true))), vec4<u32>(~(~(~20851u)), ~(global2[_wgslsmith_index_u32(1u, 10u)] ^ 43077u) & (_wgslsmith_clamp_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a.x, 10u)], 10u)], u_input.b, global2[_wgslsmith_index_u32(u_input.a.x, 10u)]) & global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(38277u, u_input.a.x), 10u)]), 21154u, 1u), u_input.e.x ^ _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(61962u, 10u)], 10u)], 10u)], u_input.a.x, 0u), vec3<u32>(78163u, global2[_wgslsmith_index_u32(30272u, 10u)], 1u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(40975u, 0u, 0u), countOneBits(vec3<u32>(u_input.a.x, u_input.b, 56545u)), u_input.a)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1208f, global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(101719u, global2[_wgslsmith_index_u32(u_input.e.x, 10u)], u_input.a.x), 11u)], 1274f, global1[_wgslsmith_index_u32(u_input.e.x, 11u)]) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.e.x, 10u)], 11u)], global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(6626u, 10u)], 11u)], global1[_wgslsmith_index_u32(68793u, 11u)], global1[_wgslsmith_index_u32(8219u, 11u)]) - vec4<f32>(-2326f, global1[_wgslsmith_index_u32(u_input.b, 11u)], -1292f, -1138f)), vec4<f32>(1459f, global1[_wgslsmith_index_u32(0u, 11u)], global1[_wgslsmith_index_u32(6609u, 11u)], 447f))), _wgslsmith_div_vec4_f32(vec4<f32>(-135f, global1[_wgslsmith_index_u32(0u, 11u)], global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 10u)], 10u)], 11u)], global1[_wgslsmith_index_u32(45996u, 11u)]), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global1[_wgslsmith_index_u32(u_input.b, 11u)], 1435f, 1623f, 120f)))), any(vec3<bool>(true, true, true))))), vec3<u32>(u_input.a.x, global2[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.a.xx, u_input.e), 10u)], _wgslsmith_sub_u32(u_input.a.x, 0u), u_input.b), 10u)], ~(~0u)));
    global2 = array<u32, 10>();
    global2 = array<u32, 10>();
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(273f)), _wgslsmith_f_op_f32(round(626f)))))));
    return vec4<f32>(_wgslsmith_f_op_f32(select(102f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) + -725f), true)), 1f, _wgslsmith_f_op_f32(round(-1490f)), -2030f);
}

fn func_4(arg_0: Struct_1) -> i32 {
    let var_0 = Struct_1(abs(0i), arg_0.b, ~1u, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(u_input.b, 11u)]))), global1[_wgslsmith_index_u32(0u, 11u)], _wgslsmith_f_op_f32(abs(646f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -848f) + -1676f)), ~vec3<u32>(1u, _wgslsmith_sub_u32(arg_0.e.x, u_input.e.x), global2[_wgslsmith_index_u32(0u, 10u)]));
    let var_1 = Struct_1(u_input.c.x, abs(min(vec4<u32>(0u | u_input.e.x, reverseBits(var_0.b.x), 1u, 29344u), vec4<u32>(62943u, ~88715u, 4294967295u, firstLeadingBit(33027u)))), var_0.b.x, var_0.d, ~vec3<u32>(countOneBits(~1u), ~1883u, max(var_0.e.x, arg_0.b.x)));
    global2 = array<u32, 10>();
    var var_2 = Struct_2(_wgslsmith_div_i32(-_wgslsmith_add_i32(var_0.a, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, u_input.c.x, var_0.a), vec3<i32>(36308i, u_input.d.x, arg_0.a))), arg_0.a), arg_0.b.x, 1356f, arg_0);
    global2 = array<u32, 10>();
    return u_input.d.x;
}

fn func_2() -> bool {
    let var_0 = Struct_2(func_4(Struct_1(reverseBits(_wgslsmith_clamp_i32(u_input.c.x, 0i, u_input.d.x)), vec4<u32>(~global2[_wgslsmith_index_u32(u_input.a.x, 10u)], _wgslsmith_sub_u32(global2[_wgslsmith_index_u32(13463u, 10u)], 1u), ~0u, u_input.b), ~reverseBits(global2[_wgslsmith_index_u32(u_input.b, 10u)]), _wgslsmith_f_op_vec4_f32(func_3()), vec3<u32>(u_input.b, ~u_input.a.x, _wgslsmith_div_u32(46005u, u_input.e.x)))), 1u, global1[_wgslsmith_index_u32(0u, 11u)], Struct_1(max(30966i, 1i), ~(~max(vec4<u32>(global2[_wgslsmith_index_u32(15943u, 10u)], 1u, 12397u, u_input.a.x), vec4<u32>(global2[_wgslsmith_index_u32(4294967295u, 10u)], u_input.a.x, u_input.e.x, global2[_wgslsmith_index_u32(4294967295u, 10u)]))), abs(u_input.a.x), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(10986u, 10u)], 11u)], global1[_wgslsmith_index_u32(26645u, 11u)], global1[_wgslsmith_index_u32(61066u, 11u)], 3094f))))), u_input.a));
    let var_1 = !vec4<bool>(true & (-u_input.d.x > _wgslsmith_clamp_i32(u_input.c.x, 21776i, var_0.d.a)), true, any(vec3<bool>(true, true, true)), true);
    return true;
}

fn func_1(arg_0: vec3<f32>, arg_1: i32, arg_2: Struct_3, arg_3: vec2<f32>) -> bool {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2732f)), _wgslsmith_f_op_f32(f32(-1f) * -2261f), func_2() | any(vec3<bool>(false, false, true)))) * arg_2.a.d.d.x));
    global1 = array<f32, 11>();
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3()));
    var var_2 = arg_2.a.b;
    global2 = array<u32, 10>();
    return all(select(vec4<bool>(false, true, false, select(true, func_2(), global2[_wgslsmith_index_u32(70441u, 10u)] <= 0u)), !vec4<bool>(select(true, false, true), any(vec3<bool>(false, false, false)), all(vec2<bool>(false, false)), all(vec4<bool>(false, false, true, true))), select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), false)));
}

fn func_5(arg_0: bool, arg_1: vec3<bool>, arg_2: vec4<bool>) -> Struct_1 {
    let var_0 = global1[_wgslsmith_index_u32(~_wgslsmith_add_u32(25389u, _wgslsmith_mult_u32(global2[_wgslsmith_index_u32(u_input.a.x, 10u)] >> (37079u % 32u), 1388u) >> (u_input.e.x % 32u)), 11u)];
    var var_1 = u_input.c.x;
    global1 = array<f32, 11>();
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(23335u, 11u)]), -126f);
    var var_3 = Struct_2(u_input.c.x, _wgslsmith_mod_u32(0u, countOneBits(23780u)), global1[_wgslsmith_index_u32(_wgslsmith_add_u32(0u, global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(countOneBits(_wgslsmith_sub_u32(global2[_wgslsmith_index_u32(u_input.b, 10u)], global2[_wgslsmith_index_u32(4294967295u, 10u)])), u_input.a.x), 10u)]), 11u)], Struct_1(-u_input.c.x >> (_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.a.x, 0u, 0u), vec4<u32>(4294967295u, 4294967295u, global2[_wgslsmith_index_u32(u_input.b, 10u)], global2[_wgslsmith_index_u32(92790u, 10u)])), ~31442u) % 32u), vec4<u32>(global2[_wgslsmith_index_u32(~reverseBits(global2[_wgslsmith_index_u32(34798u, 10u)]), 10u)], 1u, 0u, ~u_input.e.x << (min(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(53676u, 10u)], 10u)], 10u)], 10u)], u_input.e.x) % 32u)), ~u_input.a.x, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 10u)], 11u)], 1000f, global1[_wgslsmith_index_u32(1u, 11u)], -478f), vec4<f32>(global1[_wgslsmith_index_u32(u_input.b, 11u)], -591f, 354f, global1[_wgslsmith_index_u32(0u, 11u)]), arg_2)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2106f, global1[_wgslsmith_index_u32(u_input.a.x, 11u)], global1[_wgslsmith_index_u32(28154u, 11u)], 402f)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global1[_wgslsmith_index_u32(u_input.b, 11u)], 2017f, global1[_wgslsmith_index_u32(0u, 11u)], global1[_wgslsmith_index_u32(26688u, 11u)])))))), ~firstTrailingBit(~vec3<u32>(1u, 7638u, global2[_wgslsmith_index_u32(4294967295u, 10u)]))));
    return Struct_1(max(firstLeadingBit(func_4(Struct_1(0i, var_3.d.b, 0u, vec4<f32>(1000f, 1000f, -2513f, var_3.d.d.x), u_input.a))), 22632i) | var_3.a, vec4<u32>(35319u, 1u, ~(~1u), ~global2[_wgslsmith_index_u32(~67607u, 10u)]), global2[_wgslsmith_index_u32(countOneBits(~_wgslsmith_sub_u32(u_input.a.x, 131271u)), 10u)], _wgslsmith_f_op_vec4_f32(-var_3.d.d), var_3.d.e);
}

fn func_6(arg_0: Struct_1, arg_1: f32, arg_2: Struct_2, arg_3: vec4<bool>) -> Struct_1 {
    var var_0 = !((-1732f > _wgslsmith_f_op_f32(-arg_0.d.x)) && false) | arg_3.x;
    var_0 = arg_3.x;
    global2 = array<u32, 10>();
    var var_1 = Struct_3(arg_2);
    let var_2 = arg_2;
    return var_2.d;
}

fn func_7(arg_0: bool, arg_1: Struct_1, arg_2: Struct_3, arg_3: bool) -> Struct_2 {
    let var_0 = Struct_3(Struct_2(_wgslsmith_clamp_i32(arg_1.a, abs(0i), arg_2.a.d.a), _wgslsmith_sub_u32(max(max(3157u, arg_1.c), global2[_wgslsmith_index_u32(~41177u, 10u)]), _wgslsmith_sub_u32(func_6(arg_2.a.d, -830f, Struct_2(0i, 4294967295u, -1621f, arg_2.a.d), vec4<bool>(arg_0, true, arg_3, true)).b.x, _wgslsmith_sub_u32(1u, u_input.e.x))), 571f, arg_1));
    let var_1 = -vec4<i32>(abs(arg_2.a.a), -34065i, -1i, firstTrailingBit(select(9965i, arg_2.a.a, false))) >> (select(~var_0.a.d.b, _wgslsmith_mult_vec4_u32(arg_1.b, ~vec4<u32>(59380u, 0u, u_input.e.x, u_input.a.x)), select(!(!vec4<bool>(arg_0, arg_3, true, false)), !select(vec4<bool>(true, arg_3, arg_0, arg_0), vec4<bool>(true, arg_3, false, true), true), any(!vec3<bool>(arg_3, true, true)))) % vec4<u32>(32u));
    var var_2 = func_5(!arg_3, !vec3<bool>(false, arg_3, false), vec4<bool>(!all(select(vec2<bool>(arg_3, false), vec2<bool>(false, arg_0), arg_0)), true, arg_0, all(vec3<bool>(true, false, arg_3)) || !all(vec3<bool>(arg_0, arg_0, true)))).e.x;
    var var_3 = arg_2.a;
    var_2 = 1u;
    return Struct_2(func_6(var_3.d, 1260f, var_0.a, select(vec4<bool>(func_2(), select(arg_0, arg_3, arg_0), !arg_3, 1u <= u_input.e.x), vec4<bool>(true, true, true, true), !vec4<bool>(arg_3, arg_3, true, arg_0))).a, arg_2.a.b, _wgslsmith_f_op_f32(f32(-1f) * -631f), var_0.a.d);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(func_7(true, func_6(func_5(func_1(global0[_wgslsmith_index_u32(u_input.a.x, 6u)], -27968i, Struct_3(Struct_2(u_input.c.x, u_input.b, global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.e.x, 10u)], 10u)], 11u)], Struct_1(-2147483647i, vec4<u32>(u_input.e.x, 37517u, u_input.e.x, 36757u), global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b, 10u)], 10u)], vec4<f32>(global1[_wgslsmith_index_u32(7491u, 11u)], global1[_wgslsmith_index_u32(u_input.e.x, 11u)], 628f, global1[_wgslsmith_index_u32(1u, 11u)]), u_input.a))), vec2<f32>(482f, 1477f)), vec3<bool>(true, true, true), vec4<bool>(true, true, true, true)), _wgslsmith_f_op_f32(-719f - -1742f), Struct_2(~60465i, ~6897u, _wgslsmith_f_op_f32(-962f * -1261f), Struct_1(u_input.d.x, vec4<u32>(global2[_wgslsmith_index_u32(37716u, 10u)], 23029u, 42798u, 51967u), 4294967295u, vec4<f32>(911f, global1[_wgslsmith_index_u32(0u, 11u)], -562f, -1000f), vec3<u32>(0u, 4294967295u, u_input.a.x))), select(select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false), false), select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, false)), 677f >= global1[_wgslsmith_index_u32(u_input.e.x, 11u)])), Struct_3(Struct_2(u_input.d.x, countOneBits(10090u), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.b, 11u)] - 353f), func_6(Struct_1(1641i, vec4<u32>(global2[_wgslsmith_index_u32(u_input.e.x, 10u)], u_input.b, 11732u, u_input.e.x), 1u, vec4<f32>(global1[_wgslsmith_index_u32(4294967295u, 11u)], 1612f, global1[_wgslsmith_index_u32(0u, 11u)], global1[_wgslsmith_index_u32(u_input.e.x, 11u)]), vec3<u32>(global2[_wgslsmith_index_u32(19187u, 10u)], 4294967295u, 24115u)), global1[_wgslsmith_index_u32(u_input.a.x, 11u)], Struct_2(u_input.c.x, 41791u, global1[_wgslsmith_index_u32(49493u, 11u)], Struct_1(2147483647i, vec4<u32>(0u, global2[_wgslsmith_index_u32(u_input.e.x, 10u)], global2[_wgslsmith_index_u32(u_input.a.x, 10u)], u_input.e.x), u_input.a.x, vec4<f32>(-162f, global1[_wgslsmith_index_u32(1u, 11u)], -277f, 769f), u_input.a)), vec4<bool>(false, true, true, false)))), !any(vec4<bool>(true, true, true, true))));
    let var_1 = _wgslsmith_f_op_vec4_f32(exp2(var_0.a.d.d));
    global0 = array<vec3<f32>, 6>();
    global2 = array<u32, 10>();
    global1 = array<f32, 11>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32(u_input.a.x, reverseBits(65358u)), u_input.d | vec2<i32>(var_0.a.a, -_wgslsmith_sub_i32(-1i, var_0.a.d.a)));
}

