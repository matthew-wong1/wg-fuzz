struct Struct_1 {
    a: bool,
    b: bool,
    c: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct Struct_4 {
    a: f32,
    b: Struct_2,
}

struct Struct_5 {
    a: u32,
    b: i32,
    c: Struct_1,
    d: u32,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec3<f32>,
    d: f32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: array<vec3<f32>, 26> = array<vec3<f32>, 26>(vec3<f32>(1212f, 1037f, 403f), vec3<f32>(-1300f, -750f, 1597f), vec3<f32>(1000f, -281f, -858f), vec3<f32>(176f, 437f, -1623f), vec3<f32>(944f, -1000f, -1942f), vec3<f32>(1280f, -296f, 1513f), vec3<f32>(351f, -1110f, 652f), vec3<f32>(1011f, -175f, 1446f), vec3<f32>(-346f, -499f, 1727f), vec3<f32>(-464f, -1136f, 973f), vec3<f32>(847f, -884f, -247f), vec3<f32>(965f, 1302f, 604f), vec3<f32>(526f, 214f, -146f), vec3<f32>(753f, 1811f, -1474f), vec3<f32>(1000f, -1274f, 1073f), vec3<f32>(-328f, 483f, -1000f), vec3<f32>(-207f, 454f, 317f), vec3<f32>(403f, 961f, -498f), vec3<f32>(605f, -1172f, -605f), vec3<f32>(-172f, -1062f, 1406f), vec3<f32>(1496f, -1663f, 483f), vec3<f32>(-234f, 1329f, -340f), vec3<f32>(-740f, -329f, 2301f), vec3<f32>(-1000f, -1059f, -1070f), vec3<f32>(-1794f, 916f, 1262f), vec3<f32>(667f, -2656f, 1614f));

var<private> global2: vec3<f32>;

var<private> global3: array<f32, 11>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_1(u_input.e <= u_input.e, all(select(vec2<bool>(true, true), vec2<bool>(true, true), select(true, any(vec4<bool>(false, false, false, true)), true))), select(!select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, false), true), select(vec4<bool>(true, true, true, true), !select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false), true), vec4<bool>(0u == u_input.c, true, false, true)), !(global0.x > global0.x)));
    return Struct_2(var_0);
}

fn func_3(arg_0: Struct_5, arg_1: i32) -> vec4<u32> {
    global3 = array<f32, 11>();
    var var_0 = arg_0;
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, -2512f, -345f, 1042f))) * vec4<f32>(_wgslsmith_f_op_f32(1982f - _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(var_0.a, 11u)] - 2114f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global3[_wgslsmith_index_u32(5061u, 11u)])) * -854f), global2.x, 1477f)));
    let var_2 = min(-26682i, min(~_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.b, -70637i, arg_1) ^ vec3<i32>(arg_0.e.x, var_0.b, 1i), _wgslsmith_div_vec3_i32(arg_0.e, vec3<i32>(u_input.b, arg_1, arg_0.e.x))), arg_0.b));
    global1 = array<vec3<f32>, 26>();
    return countOneBits(vec4<u32>(firstTrailingBit(abs(~7617u)), 1u, _wgslsmith_add_u32(~4294967295u, 61350u), _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.d, 4294967295u, firstLeadingBit(u_input.c), ~4294967295u), ~countOneBits(vec4<u32>(32962u, u_input.e, 0u, 19692u)))));
}

fn func_1(arg_0: f32) -> f32 {
    var var_0 = func_2();
    var var_1 = func_3(Struct_5(1u, ~firstLeadingBit(u_input.b), func_2().a, reverseBits(select(u_input.e, 54004u, false)), vec3<i32>(_wgslsmith_mult_i32(u_input.d, 1i), ~u_input.b, u_input.a)), 1i) | vec4<u32>(abs(_wgslsmith_sub_u32(_wgslsmith_clamp_u32(u_input.e, 4868u, 55182u), _wgslsmith_div_u32(18474u, u_input.e))), _wgslsmith_sub_u32(max(u_input.c, u_input.e), u_input.e), 0u, ~(~min(u_input.c, u_input.c)));
    let var_2 = -58698i;
    var var_3 = var_1.zy;
    var var_4 = func_2();
    return 759f;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<f32, 11>();
    global3 = array<f32, 11>();
    let var_0 = vec3<bool>(!(_wgslsmith_mod_u32(u_input.e, u_input.c) > 0u) && ((firstTrailingBit(u_input.e) <= ~4294967295u) || (global2.x <= _wgslsmith_f_op_f32(-1000f - -478f))), !(!all(vec2<bool>(false, false))) || true, any(!vec4<bool>(true, select(true, false, false), all(vec3<bool>(false, true, true)), true)));
    global1 = array<vec3<f32>, 26>();
    global3 = array<f32, 11>();
    let var_1 = 14913u;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_f32(trunc(global2.x)))), 0u, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1237f, global3[_wgslsmith_index_u32(0u, 11u)], global0.x))) + _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-622f, 1256f, global3[_wgslsmith_index_u32(var_1, 11u)]), global0.www))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global1[_wgslsmith_index_u32(u_input.c, 26u)])))), 1253f, ~reverseBits(reverseBits(vec4<u32>(u_input.c, var_1, 1u, 0u))) & vec4<u32>(reverseBits(max(4294967295u, var_1)), min(1u, ~13496u), 1u, u_input.c));
}

