struct Struct_1 {
    a: f32,
    b: f32,
    c: vec2<bool>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec2<f32>,
    e: i32,
}

struct Struct_4 {
    a: vec3<u32>,
}

struct Struct_5 {
    a: i32,
    b: vec2<i32>,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 13> = array<i32, 13>(-52320i, 0i, 1i, 0i, -49060i, i32(-2147483648), i32(-2147483648), 45901i, -14691i, -17132i, -1i, 28442i, -16647i);

var<private> global1: array<Struct_3, 21>;

var<private> global2: u32;

var<private> global3: array<vec2<i32>, 5>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec4<f32>, arg_1: bool, arg_2: Struct_1, arg_3: vec3<f32>) -> bool {
    global3 = array<vec2<i32>, 5>();
    let var_0 = vec3<u32>(arg_2.d.x, countOneBits(~(~abs(1u))), select(arg_2.d.x, u_input.a.x, !arg_2.c.x));
    let var_1 = 39279u;
    let var_2 = !vec4<bool>(!all(vec4<bool>(false, true, false, true)) && arg_2.c.x, all(vec3<bool>(false != arg_2.c.x, all(vec4<bool>(arg_1, arg_2.c.x, arg_1, arg_1)), arg_1)), !(!(global0[_wgslsmith_index_u32(arg_2.d.x, 13u)] != -59787i)), all(vec2<bool>(true, false)));
    var var_3 = var_2.wzx;
    return ~(-761i) < (-6554i ^ global0[_wgslsmith_index_u32(arg_2.d.x >> (~u_input.a.x % 32u), 13u)]);
}

fn func_2(arg_0: Struct_4, arg_1: bool) -> f32 {
    global3 = array<vec2<i32>, 5>();
    var var_0 = select(vec4<bool>(true, true, arg_1, func_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(-635f, -709f, 800f, -1582f) * vec4<f32>(775f, -1496f, -352f, -772f)), true, Struct_1(-1222f, 183f, vec2<bool>(false, arg_1), vec2<u32>(arg_0.a.x, 4294967295u)), vec3<f32>(_wgslsmith_div_f32(-940f, 427f), 740f, _wgslsmith_f_op_f32(max(-440f, -1260f))))), !select(!vec4<bool>(arg_1, arg_1, true, true), vec4<bool>(true, arg_1, true, arg_1), !vec4<bool>(arg_1, false, true, true)), select(select(vec4<bool>(true, u_input.b.x == u_input.b.x, !arg_1, true), !(!vec4<bool>(true, true, arg_1, true)), arg_1), select(!select(vec4<bool>(arg_1, true, true, arg_1), vec4<bool>(arg_1, arg_1, true, arg_1), vec4<bool>(arg_1, arg_1, arg_1, false)), select(vec4<bool>(arg_1, false, arg_1, arg_1), vec4<bool>(arg_1, false, arg_1, true), vec4<bool>(arg_1, true, arg_1, true)), !all(vec4<bool>(false, arg_1, false, arg_1))), vec4<bool>(true, arg_1, select(true, arg_0.a.x < 4294967295u, true), arg_1)));
    let var_1 = Struct_4(select(select(~(arg_0.a >> (arg_0.a % vec3<u32>(32u))), arg_0.a, var_0.yzx), max(~select(u_input.a, arg_0.a, false), u_input.a), !(!(!var_0.x))));
    var var_2 = ~(~firstLeadingBit(_wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, 64462u, 1u, 1u), vec4<u32>(u_input.a.x, arg_0.a.x, arg_0.a.x, 77732u)), vec4<u32>(u_input.b.x, var_1.a.x, 21772u, 20807u))));
    let var_3 = Struct_2(Struct_1(_wgslsmith_f_op_f32(abs(-404f)), -1220f, vec2<bool>(!arg_1, arg_1), ~countOneBits(vec2<u32>(0u, var_2.x)) & vec2<u32>(~1u, ~arg_0.a.x)), _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(-(~vec4<i32>(1i, global0[_wgslsmith_index_u32(var_1.a.x, 13u)], 33118i, -2147483647i)), firstTrailingBit(countOneBits(vec4<i32>(11369i, global0[_wgslsmith_index_u32(0u, 13u)], global0[_wgslsmith_index_u32(1u, 13u)], -2147483647i)))), max(select(~vec4<i32>(2147483647i, -14345i, 1i, -66020i), ~vec4<i32>(41737i, global0[_wgslsmith_index_u32(u_input.b.x, 13u)], global0[_wgslsmith_index_u32(arg_0.a.x, 13u)], 29187i), vec4<bool>(false, true, var_0.x, var_0.x)), vec4<i32>(firstLeadingBit(global0[_wgslsmith_index_u32(39234u, 13u)]), global0[_wgslsmith_index_u32(44422u, 13u)] | global0[_wgslsmith_index_u32(1u, 13u)], firstLeadingBit(0i), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(0u, 4294967295u), 13u)]))));
    return _wgslsmith_f_op_f32(ceil(534f));
}

fn func_1(arg_0: Struct_4, arg_1: bool, arg_2: Struct_1, arg_3: bool) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(func_2(arg_0, arg_1)), _wgslsmith_f_op_f32(step(1586f, -1000f))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1000f, -1015f))) - _wgslsmith_div_vec2_f32(vec2<f32>(832f, -569f), vec2<f32>(arg_2.b, -830f))))));
    var var_1 = !vec3<bool>(!(_wgslsmith_add_i32(29541i, -2147483647i) != _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -4664i, -2147483647i), vec3<i32>(global0[_wgslsmith_index_u32(arg_0.a.x, 13u)], -93284i, -2147483647i))), arg_1, false);
    global1 = array<Struct_3, 21>();
    var_1 = select(vec3<bool>(true, true, true), !vec3<bool>(!(arg_1 && true), false, arg_3), select(!select(vec3<bool>(arg_3, true, false), !vec3<bool>(false, var_1.x, arg_1), !vec3<bool>(false, arg_3, true)), !select(select(vec3<bool>(var_1.x, arg_3, arg_1), vec3<bool>(arg_1, arg_2.c.x, arg_1), arg_3), vec3<bool>(arg_1, arg_3, var_1.x), vec3<bool>(true, true, true)), select(select(vec3<bool>(arg_1, arg_2.c.x, true), !vec3<bool>(arg_3, true, var_1.x), vec3<bool>(arg_3, false, false)), select(vec3<bool>(arg_3, var_1.x, true), !vec3<bool>(arg_1, var_1.x, arg_3), arg_2.c.x), !(!vec3<bool>(arg_2.c.x, arg_2.c.x, arg_3)))));
    return global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(4294967295u, ~(~(_wgslsmith_dot_vec3_u32(u_input.a, arg_0.a) ^ arg_2.d.x)), u_input.a.x), 21u)];
}

fn func_4(arg_0: vec4<bool>, arg_1: vec3<u32>, arg_2: vec3<bool>, arg_3: Struct_3) -> vec2<bool> {
    global1 = array<Struct_3, 21>();
    global1 = array<Struct_3, 21>();
    var var_0 = _wgslsmith_mod_i32(min(-1i, abs(select(-global0[_wgslsmith_index_u32(u_input.a.x, 13u)], -2147483647i, arg_3.b.c.x))), _wgslsmith_mod_i32(countOneBits(~arg_3.e), 5506i ^ _wgslsmith_div_i32(global0[_wgslsmith_index_u32(arg_3.c.d.x, 13u)], max(arg_3.e, -2147483647i))));
    var var_1 = arg_2.x;
    return !(!func_1(Struct_4(vec3<u32>(1u, 21796u, 0u)), true, func_1(Struct_4(arg_1), arg_3.b.c.x, arg_3.a, arg_2.x).c, true & all(arg_0)).a.c);
}

fn func_5(arg_0: Struct_3, arg_1: vec2<bool>, arg_2: f32, arg_3: u32) -> Struct_2 {
    var var_0 = vec4<u32>(4294967295u << ((arg_3 ^ 4294967295u) % 32u), 1u, _wgslsmith_dot_vec4_u32(vec4<u32>(112045u, arg_0.c.d.x ^ arg_3, ~1u, _wgslsmith_add_u32(102546u, 1u)) | vec4<u32>(4294967295u, _wgslsmith_sub_u32(arg_3, arg_0.b.d.x), arg_3 << (u_input.a.x % 32u), abs(u_input.b.x)), _wgslsmith_mod_vec4_u32(vec4<u32>(arg_0.c.d.x, 4294967295u, 16026u, u_input.b.x) << ((vec4<u32>(0u, arg_0.a.d.x, u_input.a.x, u_input.b.x) << (vec4<u32>(arg_0.b.d.x, u_input.b.x, 12837u, 0u) % vec4<u32>(32u))) % vec4<u32>(32u)), firstLeadingBit(vec4<u32>(0u, arg_3, 0u, u_input.b.x) & vec4<u32>(0u, 3457u, 42486u, 139775u)))), arg_3 << (~arg_3 % 32u));
    global2 = _wgslsmith_sub_u32(arg_0.c.d.x, 0u);
    let var_1 = vec4<u32>(min(~_wgslsmith_mult_u32(arg_0.b.d.x, select(u_input.a.x, 4294967295u, arg_1.x)), ~max(77996u, ~arg_3)), _wgslsmith_sub_u32(countOneBits(~_wgslsmith_clamp_u32(var_0.x, u_input.a.x, 4294967295u)), max(arg_3, arg_3)), var_0.x, min(1u, arg_3));
    let var_2 = firstTrailingBit(vec4<u32>(~(~var_0.x), 23587u, ~u_input.a.x, var_1.x));
    var var_3 = var_1;
    return Struct_2(Struct_1(_wgslsmith_f_op_f32(1000f * arg_0.c.a), arg_2, !arg_1, ~(_wgslsmith_sub_vec2_u32(vec2<u32>(0u, 1u), arg_0.b.d) << (_wgslsmith_mult_vec2_u32(vec2<u32>(0u, 1u), var_0.zy) % vec2<u32>(32u)))), global0[_wgslsmith_index_u32(~1u, 13u)]);
}

fn func_6(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: vec2<f32>, arg_3: Struct_3) -> Struct_4 {
    global2 = _wgslsmith_div_u32(0u, func_1(Struct_4(countOneBits(~vec3<u32>(arg_1.a.d.x, arg_3.c.d.x, arg_1.a.d.x))), -(~arg_3.e) > ~1i, Struct_1(arg_1.a.a, arg_1.a.b, !func_4(vec4<bool>(false, true, false, arg_3.c.c.x), u_input.a, vec3<bool>(arg_3.a.c.x, true, arg_1.a.c.x), global1[_wgslsmith_index_u32(u_input.a.x, 21u)]), ~firstLeadingBit(arg_1.a.d)), any(arg_0)).b.d.x);
    return Struct_4(vec3<u32>(5729u, 15040u, abs(21334u) & arg_3.b.d.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(vec3<bool>(false, true, false), func_5(global1[_wgslsmith_index_u32(0u, 21u)], select(func_4(select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false), true), vec3<u32>(46132u, 26379u, 4294967295u), vec3<bool>(true, false, false), func_1(Struct_4(vec3<u32>(0u, 43582u, 57703u)), false, Struct_1(1155f, -774f, vec2<bool>(false, false), vec2<u32>(u_input.a.x, u_input.a.x)), true)), !func_4(vec4<bool>(false, false, false, true), vec3<u32>(77399u, u_input.b.x, u_input.b.x), vec3<bool>(true, true, false), global1[_wgslsmith_index_u32(u_input.b.x, 21u)]), false), 125f, _wgslsmith_add_u32(0u, u_input.a.x)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1800f, 1170f) - vec2<f32>(-620f, -1011f)) - func_1(Struct_4(vec3<u32>(u_input.a.x, u_input.a.x, 80701u)), true, Struct_1(-1995f, -1103f, vec2<bool>(false, false), u_input.b), false).d)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-2324f, -1000f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1146f, 580f))) * _wgslsmith_div_vec2_f32(vec2<f32>(-1763f, -521f), vec2<f32>(-1000f, -614f))), func_1(Struct_4(firstLeadingBit(vec3<u32>(59008u, 1u, u_input.a.x))), true, func_1(Struct_4(u_input.a), select(true, false, true), Struct_1(-1000f, -491f, vec2<bool>(false, false), vec2<u32>(61111u, u_input.a.x)), true).a, true).b.c)), Struct_3(func_5(Struct_3(func_5(Struct_3(Struct_1(-555f, -191f, vec2<bool>(true, true), u_input.a.xx), Struct_1(-478f, -306f, vec2<bool>(false, true), vec2<u32>(u_input.b.x, 4294967295u)), Struct_1(431f, 1096f, vec2<bool>(false, false), u_input.b), vec2<f32>(764f, 427f), 55647i), vec2<bool>(false, true), 977f, 41730u).a, Struct_1(-623f, 466f, vec2<bool>(true, false), u_input.b), func_1(Struct_4(u_input.a), false, Struct_1(627f, -443f, vec2<bool>(false, true), vec2<u32>(u_input.b.x, u_input.b.x)), true).b, vec2<f32>(-800f, 166f), global0[_wgslsmith_index_u32(34540u, 13u)]), vec2<bool>(func_4(vec4<bool>(false, false, false, true), u_input.a, vec3<bool>(false, false, true), Struct_3(Struct_1(985f, -456f, vec2<bool>(false, true), u_input.a.yy), Struct_1(-1096f, -614f, vec2<bool>(false, true), u_input.b), Struct_1(-1000f, -922f, vec2<bool>(false, true), vec2<u32>(u_input.a.x, u_input.b.x)), vec2<f32>(968f, -943f), global0[_wgslsmith_index_u32(u_input.a.x, 13u)])).x, 18741u < u_input.a.x), -709f, abs(u_input.b.x)).a, Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -741f), -116f, vec2<bool>(true, true), vec2<u32>(u_input.a.x, ~4294967295u)), func_1(Struct_4(countOneBits(vec3<u32>(43851u, 1u, u_input.a.x))), true, Struct_1(_wgslsmith_f_op_f32(select(912f, 689f, false)), -1205f, vec2<bool>(true, true), vec2<u32>(u_input.b.x, u_input.b.x)), true).a, _wgslsmith_f_op_vec2_f32(vec2<f32>(-257f, -577f) * vec2<f32>(1f, 1f)), reverseBits(~_wgslsmith_dot_vec4_i32(vec4<i32>(35253i, global0[_wgslsmith_index_u32(0u, 13u)], -1i, global0[_wgslsmith_index_u32(68915u, 13u)]), vec4<i32>(-2147483647i, global0[_wgslsmith_index_u32(u_input.a.x, 13u)], global0[_wgslsmith_index_u32(u_input.b.x, 13u)], global0[_wgslsmith_index_u32(4815u, 13u)])))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(-(_wgslsmith_div_i32(-2147483647i, 2147483647i) << (reverseBits(var_0.a.x) % 32u)), _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(0u, 13u)], -2147483647i, -2147483647i, global0[_wgslsmith_index_u32(u_input.b.x, 13u)]), vec4<i32>(global0[_wgslsmith_index_u32(2320u, 13u)], global0[_wgslsmith_index_u32(u_input.b.x, 13u)], 0i, -1i)), 28785i)), _wgslsmith_mult_vec2_i32(-_wgslsmith_sub_vec2_i32(~vec2<i32>(global0[_wgslsmith_index_u32(u_input.b.x, 13u)], 1i), -vec2<i32>(37692i, global0[_wgslsmith_index_u32(1u, 13u)])), global3[_wgslsmith_index_u32(var_0.a.x, 5u)]));
}

