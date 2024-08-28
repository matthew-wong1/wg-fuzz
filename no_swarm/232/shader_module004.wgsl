struct Struct_1 {
    a: vec4<i32>,
    b: f32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: u32,
    c: u32,
    d: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_2,
    d: i32,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: vec4<i32>,
    b: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<vec3<i32>, 7> = array<vec3<i32>, 7>(vec3<i32>(2147483647i, 15940i, 56376i), vec3<i32>(2147483647i, 11802i, 60227i), vec3<i32>(28182i, -1i, 1i), vec3<i32>(-22688i, 55530i, 1i), vec3<i32>(-1650i, -1i, 22640i), vec3<i32>(36743i, -1i, 0i), vec3<i32>(i32(-2147483648), -1i, 0i));

var<private> global2: array<bool, 4>;

var<private> global3: vec3<u32> = vec3<u32>(9714u, 4294967295u, 4294967295u);

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> f32 {
    var var_0 = 1420f;
    var_0 = _wgslsmith_f_op_f32(abs(-1000f));
    var var_1 = ~vec3<u32>((4294967295u >> (u_input.c.x % 32u)) | u_input.c.x, global3.x, _wgslsmith_dot_vec3_u32(~vec3<u32>(4850u, 1u, 34616u), firstTrailingBit(vec3<u32>(u_input.c.x, global3.x, u_input.c.x)))) & _wgslsmith_sub_vec3_u32(max(select(vec3<u32>(global3.x, 4294967295u, global3.x) | vec3<u32>(global3.x, global3.x, 52938u), select(vec3<u32>(global3.x, global3.x, 7930u), vec3<u32>(1u, 18510u, u_input.c.x), true), global3.x < 0u), abs(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.c.x, 5603u, global3.x), vec3<u32>(0u, global3.x, 42223u)))), abs(firstTrailingBit(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.c.x, 0u, 4534u), vec3<u32>(1u, 4294967295u, 1u)))));
    let var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1390f)));
    let var_3 = _wgslsmith_clamp_vec4_i32(vec4<i32>(-1i) * -_wgslsmith_div_vec4_i32(select(u_input.a, u_input.a, vec4<bool>(false, global2[_wgslsmith_index_u32(0u, 4u)], global2[_wgslsmith_index_u32(global3.x, 4u)], true)), abs(u_input.a)), _wgslsmith_div_vec4_i32(u_input.a, u_input.a | vec4<i32>(u_input.a.x, -7640i, -36020i & u_input.b, u_input.a.x >> (global3.x % 32u))), ~(u_input.a << (vec4<u32>(4294967295u, ~0u, ~global3.x, 18358u) % vec4<u32>(32u))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2 * _wgslsmith_f_op_f32(-var_2)) + _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(var_2, var_2))))));
}

fn func_2(arg_0: Struct_2) -> u32 {
    global0 = _wgslsmith_mod_i32(~u_input.a.x, ~u_input.b);
    global0 = 21342i;
    let var_0 = _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(select(-1158f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1083f) * arg_0.d), true || (arg_0.a.x | true))), -1312f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(575f)))))));
    let var_1 = abs(-u_input.a.ww);
    var var_2 = vec3<i32>(_wgslsmith_div_i32(var_1.x, -(_wgslsmith_mod_i32(var_1.x, var_1.x) << (~global3.x % 32u))), _wgslsmith_dot_vec2_i32(u_input.a.yw, vec2<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(u_input.a.xxy, vec3<i32>(var_1.x, -1i, var_1.x)), -global1[_wgslsmith_index_u32(global3.x, 7u)]), _wgslsmith_clamp_i32(-4105i, firstLeadingBit(2147483647i), u_input.a.x))), _wgslsmith_div_i32(-2920i, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, min(0i, 1i), _wgslsmith_mod_i32(1i, var_1.x), -14474i), -_wgslsmith_mod_vec4_i32(vec4<i32>(-15656i, -16915i, u_input.b, -21735i), u_input.a))));
    return global3.x;
}

fn func_1(arg_0: u32) -> Struct_4 {
    var var_0 = vec2<u32>(firstTrailingBit(22280u), global3.x);
    var var_1 = _wgslsmith_mod_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(func_2(Struct_2(vec4<bool>(global2[_wgslsmith_index_u32(arg_0, 4u)], global2[_wgslsmith_index_u32(25972u, 4u)], true, true), 13757u, 26350u, -175f)), _wgslsmith_dot_vec4_u32(vec4<u32>(36176u, 1u, 12038u, 0u), vec4<u32>(4294967295u, 67118u, arg_0, 36545u)), 1u) << ((~vec3<u32>(arg_0, 48199u, 86878u) | min(vec3<u32>(3655u, 18342u, global3.x), vec3<u32>(31514u, u_input.c.x, var_0.x))) % vec3<u32>(32u)), ~(~(~vec3<u32>(var_0.x, var_0.x, 4294967295u))), ~_wgslsmith_mod_vec3_u32(~vec3<u32>(var_0.x, 16471u, 51768u), vec3<u32>(arg_0, var_0.x, arg_0))), max(~abs(_wgslsmith_add_vec3_u32(vec3<u32>(global3.x, arg_0, 38818u), vec3<u32>(global3.x, global3.x, 9599u))), vec3<u32>(select(66607u, 4294967295u, true), abs(44728u), ~var_0.x) << (_wgslsmith_clamp_vec3_u32(vec3<u32>(21439u, u_input.c.x, 1u) >> (vec3<u32>(92901u, global3.x, u_input.c.x) % vec3<u32>(32u)), vec3<u32>(u_input.c.x, arg_0, global3.x) ^ vec3<u32>(0u, var_0.x, 14810u), min(vec3<u32>(global3.x, 43652u, 57569u), vec3<u32>(6758u, global3.x, 4294967295u))) % vec3<u32>(32u))));
    var var_2 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1711f, 756f, -1000f, 689f)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(430f, -994f, 1120f, -304f)), vec4<f32>(-1395f, 1483f, -402f, -915f))))));
    var_1 = ~vec3<u32>(var_0.x, _wgslsmith_dot_vec3_u32(vec3<u32>(47520u, global3.x ^ global3.x, _wgslsmith_dot_vec3_u32(vec3<u32>(global3.x, u_input.c.x, 6046u), vec3<u32>(u_input.c.x, 4294967295u, 54280u))), ~vec3<u32>(u_input.c.x, u_input.c.x, var_1.x)), 1u << (min(~1u, func_2(Struct_2(vec4<bool>(true, global2[_wgslsmith_index_u32(global3.x, 4u)], false, global2[_wgslsmith_index_u32(arg_0, 4u)]), u_input.c.x, 30743u, var_2.x))) % 32u));
    var var_3 = min(abs(~vec4<u32>(77692u, 62144u, 0u, u_input.c.x) | abs(~vec4<u32>(0u, 0u, global3.x, 0u))), ~vec4<u32>(reverseBits(u_input.c.x), 54962u, _wgslsmith_dot_vec4_u32(abs(vec4<u32>(63996u, 1u, 12524u, global3.x)), vec4<u32>(39530u, 1u, 1u, var_0.x)), ~(~1u)));
    return Struct_4(Struct_2(!vec4<bool>(global2[_wgslsmith_index_u32(32041u, 4u)] || global2[_wgslsmith_index_u32(var_1.x, 4u)], !global2[_wgslsmith_index_u32(1u, 4u)], any(vec2<bool>(false, true)), global2[_wgslsmith_index_u32(var_3.x, 4u)]), 1u, ~func_2(Struct_2(vec4<bool>(global2[_wgslsmith_index_u32(u_input.c.x, 4u)], global2[_wgslsmith_index_u32(var_3.x, 4u)], true, false), var_0.x, 1u, var_2.x)), var_2.x));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = ~(~countOneBits(vec3<u32>(0u, ~15287u, countOneBits(global3.x))));
    let var_0 = func_1(1u);
    var var_1 = Struct_2(vec4<bool>(false, (all(vec3<bool>(true, var_0.a.a.x, global2[_wgslsmith_index_u32(1u, 4u)])) && true) | select(!global2[_wgslsmith_index_u32(5134u, 4u)], any(var_0.a.a), global2[_wgslsmith_index_u32(global3.x << (68844u % 32u), 4u)]), select(false, all(select(var_0.a.a.wz, var_0.a.a.xy, false)), false), true || !all(vec2<bool>(var_0.a.a.x, var_0.a.a.x))), min(~(~(0u | global3.x)), 71428u), global3.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.a.d)))))));
    global1 = array<vec3<i32>, 7>();
    var var_2 = ~abs(select(_wgslsmith_clamp_vec2_u32(u_input.c, abs(vec2<u32>(var_1.b, global3.x)), countOneBits(global3.zz)), global3.xz, vec2<bool>(global2[_wgslsmith_index_u32(42068u, 4u)] || true, global2[_wgslsmith_index_u32(4294967295u, 4u)])));
    let var_3 = _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(13393i >> (var_2.x % 32u), reverseBits(~u_input.b), u_input.b, 14070i), u_input.a, _wgslsmith_clamp_vec4_i32(~u_input.a, u_input.a, u_input.a)), u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_add_u32(~_wgslsmith_mult_u32(4294967295u, var_1.b), u_input.c.x));
}

