struct Struct_1 {
    a: bool,
    b: i32,
    c: bool,
    d: f32,
}

struct Struct_2 {
    a: i32,
    b: vec4<bool>,
    c: vec4<i32>,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 25> = array<Struct_2, 25>(Struct_2(-16062i, vec4<bool>(true, false, false, false), vec4<i32>(-1i, i32(-2147483648), 2147483647i, 24456i), Struct_1(false, -1i, false, 1268f), Struct_1(true, i32(-2147483648), true, -1891f)), Struct_2(944i, vec4<bool>(false, false, true, false), vec4<i32>(2147483647i, 0i, -28129i, 19076i), Struct_1(false, 1i, true, -680f), Struct_1(false, -14054i, true, 610f)), Struct_2(20369i, vec4<bool>(false, true, true, false), vec4<i32>(i32(-2147483648), 2147483647i, 2147483647i, -43074i), Struct_1(true, 17035i, false, -137f), Struct_1(true, -512i, false, -1177f)), Struct_2(0i, vec4<bool>(false, true, false, true), vec4<i32>(-1i, 9220i, 1i, 2147483647i), Struct_1(true, -14977i, true, 384f), Struct_1(true, i32(-2147483648), true, 1529f)), Struct_2(8656i, vec4<bool>(true, false, false, false), vec4<i32>(27376i, i32(-2147483648), 1i, 19644i), Struct_1(true, -17598i, true, 2080f), Struct_1(true, 68077i, false, 284f)), Struct_2(1i, vec4<bool>(false, true, true, false), vec4<i32>(9742i, -1i, -47783i, -1i), Struct_1(true, -1i, false, 893f), Struct_1(false, -3984i, false, 1185f)), Struct_2(0i, vec4<bool>(false, false, false, false), vec4<i32>(1i, 1i, 0i, 7255i), Struct_1(false, 71184i, false, 237f), Struct_1(false, 0i, true, 350f)), Struct_2(-90445i, vec4<bool>(true, true, true, true), vec4<i32>(2147483647i, 17886i, -471i, -1i), Struct_1(false, -20688i, false, -471f), Struct_1(false, 11133i, false, 103f)), Struct_2(15565i, vec4<bool>(false, false, false, true), vec4<i32>(-20223i, 0i, -38358i, 2147483647i), Struct_1(false, -31798i, false, 405f), Struct_1(false, 45332i, true, -322f)), Struct_2(0i, vec4<bool>(true, true, false, true), vec4<i32>(-7024i, 18399i, -1i, -10087i), Struct_1(true, -25019i, false, 1166f), Struct_1(true, 12787i, false, 1030f)), Struct_2(-15190i, vec4<bool>(false, false, true, true), vec4<i32>(-16372i, 1i, 0i, i32(-2147483648)), Struct_1(false, 63487i, true, -1255f), Struct_1(true, 2147483647i, true, 2085f)), Struct_2(1i, vec4<bool>(true, false, false, false), vec4<i32>(-13362i, 65504i, i32(-2147483648), i32(-2147483648)), Struct_1(false, 9578i, false, 939f), Struct_1(true, 14098i, false, 1000f)), Struct_2(0i, vec4<bool>(false, true, true, false), vec4<i32>(-1i, -26463i, 11496i, -12738i), Struct_1(true, 1i, true, 652f), Struct_1(false, 0i, false, 494f)), Struct_2(i32(-2147483648), vec4<bool>(true, true, false, true), vec4<i32>(-9241i, -11904i, 1i, 2147483647i), Struct_1(false, i32(-2147483648), false, 1999f), Struct_1(false, 633i, false, 903f)), Struct_2(2147483647i, vec4<bool>(false, false, false, true), vec4<i32>(-3578i, 2147483647i, 1i, -2838i), Struct_1(false, 15453i, false, 1252f), Struct_1(false, -1i, false, 950f)), Struct_2(-1i, vec4<bool>(true, false, true, false), vec4<i32>(-37455i, 5947i, i32(-2147483648), -58022i), Struct_1(true, -9428i, true, -693f), Struct_1(true, i32(-2147483648), false, -347f)), Struct_2(-12459i, vec4<bool>(true, false, false, true), vec4<i32>(1i, -1i, 28897i, 4610i), Struct_1(true, 0i, true, -1090f), Struct_1(false, 0i, true, -283f)), Struct_2(-26456i, vec4<bool>(true, true, true, false), vec4<i32>(1i, 0i, 28585i, -24646i), Struct_1(true, 2147483647i, false, -340f), Struct_1(false, 16003i, true, -499f)), Struct_2(i32(-2147483648), vec4<bool>(false, false, false, true), vec4<i32>(i32(-2147483648), -2172i, 1i, 1i), Struct_1(false, i32(-2147483648), true, 1249f), Struct_1(false, 0i, true, -1000f)), Struct_2(i32(-2147483648), vec4<bool>(true, true, false, false), vec4<i32>(43186i, -1i, 2147483647i, 2147483647i), Struct_1(true, 0i, false, 1000f), Struct_1(true, 2147483647i, true, -1112f)), Struct_2(-9500i, vec4<bool>(true, true, true, false), vec4<i32>(943i, -17117i, 1i, -1i), Struct_1(false, i32(-2147483648), false, 336f), Struct_1(true, 9747i, true, 1000f)), Struct_2(33001i, vec4<bool>(true, false, true, true), vec4<i32>(2147483647i, -12787i, 2147483647i, 1i), Struct_1(false, i32(-2147483648), false, 400f), Struct_1(false, 65040i, false, 688f)), Struct_2(-1i, vec4<bool>(false, true, false, true), vec4<i32>(1i, 0i, -12511i, -1i), Struct_1(true, -45890i, true, 843f), Struct_1(false, -2322i, false, 1303f)), Struct_2(1i, vec4<bool>(true, false, false, false), vec4<i32>(-1i, 0i, 0i, -60310i), Struct_1(true, -1i, false, 634f), Struct_1(false, 2785i, false, -128f)), Struct_2(i32(-2147483648), vec4<bool>(true, true, true, false), vec4<i32>(0i, 22181i, i32(-2147483648), 2147483647i), Struct_1(true, -1i, false, -1032f), Struct_1(true, 2147483647i, true, -1000f)));

var<private> global1: array<f32, 17>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_1(arg_0: f32) -> vec3<u32> {
    let var_0 = vec3<i32>(firstLeadingBit(_wgslsmith_add_i32(u_input.a & -1i, _wgslsmith_sub_i32(-67691i, _wgslsmith_add_i32(u_input.a, u_input.a)))), -u_input.a << (u_input.b.x % 32u), firstLeadingBit(_wgslsmith_sub_i32(u_input.a, _wgslsmith_mod_i32(-5270i, 2147483647i))));
    global0 = array<Struct_2, 25>();
    var var_1 = vec2<u32>(_wgslsmith_div_u32(~(firstTrailingBit(u_input.b.x) ^ _wgslsmith_add_u32(39536u, u_input.b.x)), u_input.b.x), 1u);
    global0 = array<Struct_2, 25>();
    var var_2 = true;
    return vec3<u32>(select(~_wgslsmith_mod_u32(4294967295u, max(33126u, u_input.b.x)), 0u, true), (u_input.b.x >> ((128216u | var_1.x) % 32u)) | 1u, ~min(1u, 1u) & ~_wgslsmith_mod_u32(4294967295u << (u_input.b.x % 32u), var_1.x));
}

fn func_3(arg_0: Struct_2, arg_1: bool, arg_2: f32) -> f32 {
    let var_0 = u_input.b.x;
    var var_1 = true;
    var var_2 = u_input.a;
    let var_3 = -(-(arg_0.d.b | arg_0.e.b) & countOneBits(u_input.a)) | (firstTrailingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, arg_0.a), _wgslsmith_mod_vec2_i32(arg_0.c.wy, vec2<i32>(u_input.a, -2147483647i)))) & -(~_wgslsmith_sub_i32(u_input.a, u_input.a)));
    var var_4 = ~u_input.b;
    return _wgslsmith_f_op_f32(f32(-1f) * -1000f);
}

fn func_2(arg_0: u32, arg_1: vec2<bool>, arg_2: vec3<u32>, arg_3: vec4<bool>) -> vec3<i32> {
    global1 = array<f32, 17>();
    let var_0 = 1u;
    var var_1 = Struct_1(u_input.a >= 0i, 30949i, ((select(false, arg_1.x, arg_3.x) & true) == true) | ((_wgslsmith_f_op_f32(max(117f, -1482f)) < _wgslsmith_f_op_f32(select(global1[_wgslsmith_index_u32(arg_0, 17u)], 519f, arg_1.x))) | false), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_3(Struct_2(-2147483647i, !arg_3, reverseBits(vec4<i32>(u_input.a, u_input.a, -2147483647i, u_input.a)), Struct_1(false, 41641i, true, 1000f), Struct_1(arg_3.x, u_input.a, false, global1[_wgslsmith_index_u32(55074u, 17u)])), false, global1[_wgslsmith_index_u32(u_input.b.x, 17u)])))));
    var_1 = Struct_1(select(select(any(vec3<bool>(false, var_1.c, false)), true, var_1.c && false) | all(vec2<bool>(false, false)), arg_3.x, !(false != var_1.c)), 65473i, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.d), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(arg_0, 17u)] + var_1.d)), _wgslsmith_f_op_f32(f32(-1f) * -1026f), all(!vec2<bool>(arg_1.x, arg_3.x)))) <= global1[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, ~abs(arg_2.x)), 17u)], var_1.d);
    global1 = array<f32, 17>();
    return vec3<i32>(_wgslsmith_dot_vec3_i32(~_wgslsmith_div_vec3_i32(select(vec3<i32>(var_1.b, -7693i, -1i), vec3<i32>(2147483647i, var_1.b, u_input.a), vec3<bool>(var_1.a, var_1.c, var_1.c)), -vec3<i32>(-3160i, -18512i, u_input.a)), vec3<i32>(select(-u_input.a, u_input.a, var_1.c), 0i, ~(~(-2147483647i)))), _wgslsmith_mult_i32(_wgslsmith_sub_i32(var_1.b, var_1.b), 0i), _wgslsmith_sub_i32(-1i, -max(_wgslsmith_div_i32(2147483647i, var_1.b), 0i << (0u % 32u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = reverseBits(~(~vec3<u32>(1u, 13311u, u_input.b.x)) ^ func_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-709f, -1072f) * _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(1u, 17u)]))));
    var var_1 = ~func_2(1u, vec2<bool>(false, 0i < u_input.a), vec3<u32>(var_0.x, _wgslsmith_sub_u32(_wgslsmith_sub_u32(4294967295u, u_input.b.x), ~u_input.b.x), 0u), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true)));
    var var_2 = var_0.x;
    var var_3 = Struct_1(!all(vec3<bool>(true, true, true)), u_input.a, any(!select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true))), -1219f);
    let var_4 = false;
    let x = u_input.a;
    s_output = StorageBuffer(min(vec2<u32>(23737u, 0u), select(u_input.b.yx, u_input.b.zy, any(select(vec2<bool>(false, var_4), vec2<bool>(false, true), true)))));
}

