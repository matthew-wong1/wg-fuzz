struct Struct_1 {
    a: f32,
    b: vec2<bool>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec4<i32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 11> = array<bool, 11>(false, false, false, true, true, false, true, true, false, true, false);

var<private> global1: array<vec4<bool>, 19> = array<vec4<bool>, 19>(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true));

var<private> global2: array<vec2<u32>, 2>;

var<private> global3: array<f32, 5> = array<f32, 5>(736f, -1456f, 325f, -1000f, 1042f);

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> vec4<f32> {
    var var_0 = global0[_wgslsmith_index_u32(~u_input.d.x, 11u)];
    global1 = array<vec4<bool>, 19>();
    global3 = array<f32, 5>();
    var var_1 = ~_wgslsmith_div_vec3_i32(-(~countOneBits(vec3<i32>(u_input.b, -24460i, u_input.a))), -vec3<i32>(abs(u_input.b), u_input.b ^ 0i, ~(-41301i)));
    global0 = array<bool, 11>();
    return vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1447f))) * _wgslsmith_f_op_f32(sign(-115f))), _wgslsmith_div_f32(global3[_wgslsmith_index_u32(firstLeadingBit(u_input.c.x), 5u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(u_input.c.x, 5u)]) - _wgslsmith_f_op_f32(f32(-1f) * -603f)))), _wgslsmith_f_op_f32(max(global3[_wgslsmith_index_u32(u_input.d.x, 5u)], _wgslsmith_f_op_f32(sign(1f)))), _wgslsmith_f_op_f32(1384f * global3[_wgslsmith_index_u32(98280u, 5u)]));
}

fn func_2() -> bool {
    let var_0 = _wgslsmith_add_i32(select(u_input.a, 33452i, global0[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.c.x, u_input.d.x), 11u)]), 23632i);
    global0 = array<bool, 11>();
    global2 = array<vec2<u32>, 2>();
    var var_1 = _wgslsmith_f_op_vec4_f32(func_3());
    global0 = array<bool, 11>();
    return global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, select(3778u, abs(countOneBits(u_input.c.x)), all(vec2<bool>(global0[_wgslsmith_index_u32(56536u, 11u)], false)) | !global0[_wgslsmith_index_u32(u_input.d.x, 11u)])), 5u)] >= var_1.x;
}

fn func_1(arg_0: Struct_3, arg_1: Struct_3, arg_2: Struct_3) -> vec2<bool> {
    return select(!select(!select(vec2<bool>(true, global0[_wgslsmith_index_u32(u_input.c.x, 11u)]), vec2<bool>(arg_1.a, global0[_wgslsmith_index_u32(u_input.d.x, 11u)]), false), !vec2<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 11u)], false), select(vec2<bool>(arg_1.a, true), select(vec2<bool>(true, global0[_wgslsmith_index_u32(u_input.d.x, 11u)]), vec2<bool>(arg_1.a, arg_1.a), vec2<bool>(false, arg_0.a)), false)), vec2<bool>(!(!arg_0.a), !func_2()), false);
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1) -> Struct_2 {
    global1 = array<vec4<bool>, 19>();
    let var_0 = Struct_2(vec2<u32>(_wgslsmith_mod_u32(u_input.d.x, (u_input.d.x >> (4294967295u % 32u)) << (_wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.d.x, arg_0), u_input.d.xww) % 32u)), min(~_wgslsmith_mult_u32(u_input.d.x, 4294967295u), 46937u)), false, Struct_1(_wgslsmith_f_op_f32(-755f + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(-1000f))))), !arg_1.b));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(-551f)), arg_2.a)));
    global3 = array<f32, 5>();
    var var_2 = var_0;
    return Struct_2(max(vec2<u32>(abs(var_0.a.x), 4294967295u), _wgslsmith_add_vec2_u32(vec2<u32>(min(var_0.a.x, 1u), ~80851u), reverseBits(~vec2<u32>(var_2.a.x, arg_0)))), _wgslsmith_div_u32(_wgslsmith_div_u32(select(4294967295u, 38800u, arg_2.b.x), min(0u, 14249u)), 1u) == var_2.a.x, arg_2);
}

fn func_5(arg_0: bool, arg_1: Struct_2, arg_2: vec4<u32>) -> Struct_3 {
    global2 = array<vec2<u32>, 2>();
    let var_0 = abs(_wgslsmith_sub_i32(u_input.a, -(u_input.b & abs(u_input.b))));
    let var_1 = vec3<u32>(8547u, max(73415u, ~0u), arg_2.x);
    let var_2 = select(!global1[_wgslsmith_index_u32(arg_1.a.x, 19u)], global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(~1u, ~(var_1.x << (1u % 32u))), 19u)], arg_1.b);
    global3 = array<f32, 5>();
    return Struct_3(all(var_2.yzw));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 11>();
    var var_0 = func_5(all(!select(vec2<bool>(true, true), !vec2<bool>(global0[_wgslsmith_index_u32(49004u, 11u)], global0[_wgslsmith_index_u32(1u, 11u)]), true)), func_4(_wgslsmith_mult_u32(max(4294967295u, u_input.d.x), reverseBits(u_input.c.x)), Struct_1(global3[_wgslsmith_index_u32(~45167u ^ _wgslsmith_mult_u32(4777u, u_input.d.x), 5u)], !select(vec2<bool>(true, global0[_wgslsmith_index_u32(u_input.d.x, 11u)]), vec2<bool>(global0[_wgslsmith_index_u32(u_input.d.x, 11u)], true), global0[_wgslsmith_index_u32(0u, 11u)])), Struct_1(253f, !func_1(Struct_3(true), Struct_3(true), Struct_3(global0[_wgslsmith_index_u32(u_input.d.x, 11u)])))), u_input.d);
    let var_1 = Struct_3((_wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.a, u_input.a, u_input.b), _wgslsmith_mod_vec3_i32(vec3<i32>(-1i, 7693i, u_input.a), vec3<i32>(-8061i, u_input.a, u_input.b))) & -10007i) == u_input.a);
    let var_2 = Struct_3(true);
    var var_3 = select(min(_wgslsmith_mod_vec2_i32(-_wgslsmith_div_vec2_i32(vec2<i32>(33102i, 42531i), vec2<i32>(-2147483647i, u_input.a)), firstTrailingBit(abs(vec2<i32>(u_input.b, u_input.a)))), -abs(_wgslsmith_div_vec2_i32(vec2<i32>(-1i, u_input.b), vec2<i32>(u_input.a, u_input.a)))), max(-vec2<i32>(-2147483647i, u_input.a) >> ((_wgslsmith_mult_vec2_u32(global2[_wgslsmith_index_u32(u_input.c.x, 2u)], vec2<u32>(1u, 60512u)) << (vec2<u32>(63052u, 4294967295u) % vec2<u32>(32u))) % vec2<u32>(32u)), vec2<i32>(u_input.a, -(u_input.b >> (52311u % 32u)))), vec2<bool>(global3[_wgslsmith_index_u32(~firstLeadingBit(u_input.d.x), 5u)] != _wgslsmith_div_f32(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(u_input.d.x, 5u)] * 1571f), _wgslsmith_f_op_f32(-516f * global3[_wgslsmith_index_u32(76549u, 5u)])), -341f <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(60985u, 5u)] - global3[_wgslsmith_index_u32(0u, 5u)]) * _wgslsmith_f_op_f32(max(1278f, -256f)))));
    let var_4 = func_5(func_2(), func_4(u_input.c.x, Struct_1(global3[_wgslsmith_index_u32(~(~u_input.c.x), 5u)], select(func_4(u_input.d.x, Struct_1(global3[_wgslsmith_index_u32(u_input.c.x, 5u)], vec2<bool>(true, true)), Struct_1(-1000f, vec2<bool>(var_0.a, var_0.a))).c.b, select(vec2<bool>(false, true), vec2<bool>(var_1.a, true), true), select(vec2<bool>(false, var_1.a), vec2<bool>(global0[_wgslsmith_index_u32(1u, 11u)], true), true))), func_4(~(~76109u), func_4(u_input.d.x, func_4(u_input.d.x, Struct_1(1022f, vec2<bool>(var_0.a, var_0.a)), Struct_1(559f, vec2<bool>(false, var_0.a))).c, Struct_1(-1275f, vec2<bool>(global0[_wgslsmith_index_u32(u_input.d.x, 11u)], var_0.a))).c, func_4(~u_input.d.x, func_4(u_input.c.x, Struct_1(global3[_wgslsmith_index_u32(1u, 5u)], vec2<bool>(false, global0[_wgslsmith_index_u32(93461u, 11u)])), Struct_1(-853f, vec2<bool>(var_1.a, var_1.a))).c, func_4(35981u, Struct_1(1000f, vec2<bool>(false, var_2.a)), Struct_1(global3[_wgslsmith_index_u32(u_input.c.x, 5u)], vec2<bool>(false, var_1.a))).c).c).c), max(_wgslsmith_sub_vec4_u32(vec4<u32>(~u_input.c.x, ~1u, u_input.d.x, firstTrailingBit(1u)), u_input.d), u_input.c));
    var var_5 = func_1(var_1, func_5(!all(vec3<bool>(false, global0[_wgslsmith_index_u32(42701u, 11u)], var_2.a)) & var_2.a, Struct_2(~firstLeadingBit(vec2<u32>(u_input.c.x, u_input.d.x)), -u_input.a > u_input.b, func_4(~14143u, func_4(0u, Struct_1(483f, vec2<bool>(var_2.a, global0[_wgslsmith_index_u32(68860u, 11u)])), Struct_1(global3[_wgslsmith_index_u32(11152u, 5u)], vec2<bool>(false, false))).c, func_4(u_input.d.x, Struct_1(global3[_wgslsmith_index_u32(72344u, 5u)], vec2<bool>(var_2.a, global0[_wgslsmith_index_u32(30081u, 11u)])), Struct_1(-371f, vec2<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 11u)], var_0.a))).c).c), _wgslsmith_clamp_vec4_u32(vec4<u32>(~u_input.d.x, u_input.d.x, 1u, 59349u), vec4<u32>(10569u, ~u_input.d.x, func_4(46338u, Struct_1(-1000f, vec2<bool>(true, false)), Struct_1(491f, vec2<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 11u)], var_1.a))).a.x, ~u_input.c.x), max(firstTrailingBit(vec4<u32>(1u, u_input.c.x, 4294967295u, 79922u)), u_input.d))), func_5(func_2(), Struct_2(_wgslsmith_div_vec2_u32(global2[_wgslsmith_index_u32(1u, 2u)], ~u_input.c.yy), var_2.a, func_4(4294967295u ^ u_input.d.x, func_4(4294967295u, Struct_1(global3[_wgslsmith_index_u32(4294967295u, 5u)], vec2<bool>(global0[_wgslsmith_index_u32(1u, 11u)], false)), Struct_1(global3[_wgslsmith_index_u32(0u, 5u)], vec2<bool>(false, var_1.a))).c, Struct_1(global3[_wgslsmith_index_u32(45860u, 5u)], vec2<bool>(var_2.a, global0[_wgslsmith_index_u32(u_input.d.x, 11u)]))).c), u_input.d));
    var_5 = select(!(!select(vec2<bool>(false, var_2.a), vec2<bool>(var_0.a, true), func_1(Struct_3(false), var_1, Struct_3(global0[_wgslsmith_index_u32(17768u, 11u)])))), !select(select(select(vec2<bool>(global0[_wgslsmith_index_u32(0u, 11u)], true), vec2<bool>(var_0.a, var_0.a), vec2<bool>(var_1.a, true)), func_4(u_input.d.x, Struct_1(global3[_wgslsmith_index_u32(4294967295u, 5u)], vec2<bool>(false, var_2.a)), Struct_1(global3[_wgslsmith_index_u32(0u, 5u)], vec2<bool>(var_1.a, false))).c.b, true), !select(vec2<bool>(true, var_5.x), vec2<bool>(var_1.a, false), var_2.a), !func_4(1u, Struct_1(1556f, vec2<bool>(false, true)), Struct_1(-370f, vec2<bool>(true, true))).c.b), !func_4(firstTrailingBit(12261u), Struct_1(_wgslsmith_f_op_f32(exp2(global3[_wgslsmith_index_u32(u_input.c.x, 5u)])), vec2<bool>(true, true)), func_4(0u >> (u_input.c.x % 32u), Struct_1(-381f, vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 11u)], var_0.a)), Struct_1(global3[_wgslsmith_index_u32(u_input.c.x, 5u)], vec2<bool>(true, true))).c).c.b);
    global3 = array<f32, 5>();
    let x = u_input.a;
    s_output = StorageBuffer(~reverseBits(u_input.c), vec2<u32>(1u, u_input.d.x) ^ ~firstLeadingBit(~global2[_wgslsmith_index_u32(22079u, 2u)]), vec4<i32>(-((u_input.b ^ 5004i) >> (u_input.d.x % 32u)), firstLeadingBit(-1580i), ~2147483647i, 0i), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(485f, global3[_wgslsmith_index_u32(4294967295u, 5u)], 1129f, 899f) - vec4<f32>(133f, 773f, global3[_wgslsmith_index_u32(u_input.c.x, 5u)], -711f)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-124f, global3[_wgslsmith_index_u32(74307u, 5u)], -1232f, global3[_wgslsmith_index_u32(u_input.c.x, 5u)]))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(942f, -2408f, global3[_wgslsmith_index_u32(u_input.c.x, 5u)], global3[_wgslsmith_index_u32(4294967295u, 5u)]) * _wgslsmith_f_op_vec4_f32(vec4<f32>(1500f, global3[_wgslsmith_index_u32(43880u, 5u)], -1526f, -184f) * vec4<f32>(565f, global3[_wgslsmith_index_u32(36384u, 5u)], -158f, global3[_wgslsmith_index_u32(1u, 5u)]))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1694f, global3[_wgslsmith_index_u32(45084u, 5u)], global3[_wgslsmith_index_u32(60290u, 5u)], -1101f), vec4<f32>(752f, -1630f, global3[_wgslsmith_index_u32(u_input.d.x, 5u)], global3[_wgslsmith_index_u32(86300u, 5u)]), global1[_wgslsmith_index_u32(80193u, 19u)]))), global1[_wgslsmith_index_u32(u_input.d.x, 19u)])))));
}

