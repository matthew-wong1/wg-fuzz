struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<i32>,
    d: i32,
    e: vec2<u32>,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: Struct_1,
    b: f32,
    c: vec2<u32>,
    d: vec3<i32>,
    e: f32,
}

struct Struct_5 {
    a: Struct_4,
    b: vec3<bool>,
    c: vec3<u32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec4<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: array<f32, 10>;

var<private> global2: array<Struct_3, 15>;

var<private> global3: array<vec4<u32>, 25> = array<vec4<u32>, 25>(vec4<u32>(13929u, 4294967295u, 4294967295u, 4294967295u), vec4<u32>(21554u, 0u, 6217u, 31815u), vec4<u32>(15572u, 4294967295u, 1u, 22851u), vec4<u32>(28571u, 4294967295u, 0u, 0u), vec4<u32>(1u, 4294967295u, 0u, 4294967295u), vec4<u32>(40446u, 26725u, 1u, 93727u), vec4<u32>(41917u, 20969u, 19982u, 4294967295u), vec4<u32>(0u, 1u, 31943u, 32591u), vec4<u32>(25797u, 4294967295u, 83942u, 0u), vec4<u32>(0u, 6056u, 0u, 11946u), vec4<u32>(27082u, 4294967295u, 1048u, 0u), vec4<u32>(45192u, 1u, 66811u, 0u), vec4<u32>(29893u, 55416u, 4294967295u, 10017u), vec4<u32>(13235u, 0u, 1u, 991u), vec4<u32>(0u, 1u, 4294967295u, 14054u), vec4<u32>(15157u, 4294967295u, 4294967295u, 13799u), vec4<u32>(0u, 0u, 4294967295u, 4294967295u), vec4<u32>(4294967295u, 31966u, 4294967295u, 1u), vec4<u32>(0u, 7280u, 21171u, 1u), vec4<u32>(4294967295u, 0u, 1u, 36657u), vec4<u32>(1u, 29039u, 1u, 0u), vec4<u32>(4294967295u, 2374u, 1u, 0u), vec4<u32>(16602u, 27187u, 5693u, 8647u), vec4<u32>(57547u, 21434u, 1u, 4294967295u), vec4<u32>(4294967295u, 0u, 0u, 4294967295u));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: Struct_1) -> vec3<bool> {
    return !(!select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false)), vec3<bool>(0u < u_input.d.x, u_input.d.x == 0u, false)));
}

fn func_3(arg_0: vec3<bool>, arg_1: i32, arg_2: Struct_4) -> vec4<f32> {
    global0 = vec3<i32>(8833i, u_input.a.x, max(_wgslsmith_mult_i32(_wgslsmith_clamp_i32(-arg_2.d.x, 1i, ~u_input.c.x), global0.x), -1i));
    global1 = array<f32, 10>();
    var var_0 = _wgslsmith_dot_vec4_u32(global3[_wgslsmith_index_u32(arg_2.c.x, 25u)], ~global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~global3[_wgslsmith_index_u32(1u, 25u)], vec4<u32>(~u_input.d.x, min(u_input.d.x, arg_2.c.x), abs(4294967295u), _wgslsmith_div_u32(arg_2.c.x, u_input.d.x))), 25u)]);
    global3 = array<vec4<u32>, 25>();
    var var_1 = select(true, arg_0.x, arg_0.x);
    return arg_2.a.a;
}

fn func_2(arg_0: vec2<f32>) -> i32 {
    let var_0 = true;
    global0 = abs(u_input.a.www);
    var var_1 = Struct_5(Struct_4(Struct_1(_wgslsmith_f_op_vec4_f32(func_3(!vec3<bool>(var_0, var_0, var_0), 1i, Struct_4(Struct_1(vec4<f32>(arg_0.x, -569f, arg_0.x, arg_0.x)), global1[_wgslsmith_index_u32(58783u, 10u)], u_input.d.zx, u_input.c.wzw, global1[_wgslsmith_index_u32(24527u, 10u)])))), arg_0.x, max(min(u_input.d.zx, vec2<u32>(35620u, 8150u)), u_input.d.yy), ~(-select(vec3<i32>(32873i, -2147483647i, 14956i), vec3<i32>(global0.x, 31282i, -58392i), vec3<bool>(var_0, false, false))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-785f + -477f) + _wgslsmith_f_op_f32(476f * global1[_wgslsmith_index_u32(4294967295u, 10u)]))))), func_1(Struct_1(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-284f, global1[_wgslsmith_index_u32(u_input.d.x, 10u)], -1000f, arg_0.x), vec4<f32>(-1500f, 1976f, 778f, -446f))), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-194f, arg_0.x, -1407f, global1[_wgslsmith_index_u32(27707u, 10u)]))))))), vec3<u32>(u_input.d.x & u_input.d.x, u_input.d.x, 4294967295u), Struct_1(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-868f, -330f, 366f, global1[_wgslsmith_index_u32(u_input.d.x, 10u)])) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-490f, -342f, -140f, -1000f) - vec4<f32>(-233f, 1323f, global1[_wgslsmith_index_u32(u_input.d.x, 10u)], arg_0.x))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(u_input.d.x, 10u)], 1141f, global1[_wgslsmith_index_u32(114212u, 10u)], global1[_wgslsmith_index_u32(u_input.d.x, 10u)])), _wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(4294967295u, 10u)], -1000f, 535f, 1104f) + vec4<f32>(-1579f, global1[_wgslsmith_index_u32(u_input.d.x, 10u)], 756f, -1770f)), all(vec4<bool>(var_0, var_0, false, var_0))))))));
    let var_2 = 240f;
    var var_3 = Struct_5(var_1.a, var_1.b, u_input.d, Struct_1(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1574f), _wgslsmith_f_op_f32(sign(-124f)), 226f, _wgslsmith_f_op_f32(select(343f, 630f, var_1.b.x))), vec4<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.d.x, 10u)]), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(var_1.c.x, 10u)]), -1509f, 2348f))));
    return 57491i;
}

fn func_4(arg_0: vec4<i32>, arg_1: f32, arg_2: f32, arg_3: i32) -> i32 {
    global2 = array<Struct_3, 15>();
    global1 = array<f32, 10>();
    let var_0 = all(select(vec3<bool>(all(select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), false)), true, true), vec3<bool>(false, true, !all(vec4<bool>(true, false, true, false))), vec3<bool>(true, true, all(vec3<bool>(false, true, false)) || all(vec3<bool>(true, true, false)))));
    let var_1 = ~(u_input.d.x >> (u_input.d.x % 32u));
    let var_2 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, arg_2, 445f, global1[_wgslsmith_index_u32(u_input.d.x, 10u)])), vec4<f32>(global1[_wgslsmith_index_u32(1u, 10u)], _wgslsmith_f_op_f32(109f * arg_2), 854f, global1[_wgslsmith_index_u32(1u, 10u)])))), Struct_1(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_2, _wgslsmith_f_op_f32(round(global1[_wgslsmith_index_u32(0u, 10u)])), arg_1, arg_1)))), arg_0.yw, -2147483647i, ~max(u_input.d.yy, firstLeadingBit(~u_input.d.yz)));
    return global0.x;
}

fn func_5(arg_0: i32, arg_1: Struct_1) -> vec3<bool> {
    global1 = array<f32, 10>();
    global3 = array<vec4<u32>, 25>();
    var var_0 = func_1(Struct_1(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(vec4<f32>(-1538f, -961f, arg_1.a.x, global1[_wgslsmith_index_u32(u_input.d.x, 10u)]), _wgslsmith_f_op_vec4_f32(vec4<f32>(-380f, global1[_wgslsmith_index_u32(0u, 10u)], arg_1.a.x, global1[_wgslsmith_index_u32(u_input.d.x, 10u)]) * vec4<f32>(428f, -1000f, 1402f, global1[_wgslsmith_index_u32(0u, 10u)])))))));
    global3 = array<vec4<u32>, 25>();
    global3 = array<vec4<u32>, 25>();
    return !select(select(select(!vec3<bool>(var_0.x, false, var_0.x), func_1(Struct_1(arg_1.a)), !vec3<bool>(var_0.x, var_0.x, var_0.x)), func_1(Struct_1(vec4<f32>(-1639f, -1000f, 162f, 337f))), !(var_0.x && var_0.x)), vec3<bool>(true != var_0.x, var_0.x, !any(vec2<bool>(var_0.x, var_0.x))), vec3<bool>(var_0.x, 4294967295u != _wgslsmith_mult_u32(8095u, u_input.d.x), any(!vec2<bool>(var_0.x, var_0.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<u32>(countOneBits(~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 20621u), vec3<u32>(4294967295u, 8249u, u_input.d.x))), ~abs(u_input.d.x) & _wgslsmith_add_u32(~u_input.d.x, min(u_input.d.x, 1u))) << (~(~vec2<u32>(u_input.d.x, u_input.d.x)) % vec2<u32>(32u));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(global1[_wgslsmith_index_u32(38323u, 10u)])))))), 1151f));
    let var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_1)))));
    global2 = array<Struct_3, 15>();
    let var_3 = select(func_1(Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1004f, -914f, var_2, -1000f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(431f, var_1, var_2, 266f) - vec4<f32>(var_1, var_2, global1[_wgslsmith_index_u32(0u, 10u)], global1[_wgslsmith_index_u32(39350u, 10u)])), vec4<bool>(true, true, true, true))))), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), !select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), func_5(-func_4(vec4<i32>(-8142i, 1i, u_input.a.x, -1i), _wgslsmith_f_op_f32(-var_1), global1[_wgslsmith_index_u32(var_0.x, 10u)], func_2(vec2<f32>(1287f, 1000f))), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(vec3<bool>(false, false, true), -1i, Struct_4(Struct_1(vec4<f32>(global1[_wgslsmith_index_u32(var_0.x, 10u)], global1[_wgslsmith_index_u32(4294967295u, 10u)], -294f, var_1)), 1588f, vec2<u32>(u_input.d.x, var_0.x), vec3<i32>(-1i, -56983i, 0i), var_1)))))));
    let var_4 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2, global1[_wgslsmith_index_u32(var_0.x, 10u)], -469f, 1882f))))), Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2, -1300f, var_2, var_2) - vec4<f32>(global1[_wgslsmith_index_u32(u_input.d.x, 10u)], var_2, 620f, -1000f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1, var_1, 2342f, var_2) + vec4<f32>(482f, -130f, -662f, var_2)), var_3.x))), _wgslsmith_sub_vec2_i32(u_input.a.wz | ~countOneBits(vec2<i32>(global0.x, u_input.a.x)), vec2<i32>(~u_input.c.x ^ _wgslsmith_mult_i32(1i, u_input.a.x), -1i)), firstTrailingBit(u_input.b.x), select(reverseBits(vec2<u32>(107749u, u_input.d.x) & max(vec2<u32>(var_0.x, 5131u), var_0)), reverseBits(firstLeadingBit(vec2<u32>(4294967295u, 0u))), !var_3.xz));
    global3 = array<vec4<u32>, 25>();
    let x = u_input.a;
    s_output = StorageBuffer(global3[_wgslsmith_index_u32(0u, 25u)], var_4.b.a.wzy, _wgslsmith_dot_vec3_u32(~_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.d.x, 1u, 29622u), u_input.d), ~_wgslsmith_mod_vec3_u32(u_input.d, select(vec3<u32>(1u, 0u, 0u), vec3<u32>(var_0.x, 19411u, var_4.e.x), vec3<bool>(var_3.x, var_3.x, false)))));
}

