struct Struct_1 {
    a: vec2<i32>,
    b: f32,
    c: vec2<bool>,
    d: u32,
    e: f32,
}

struct Struct_2 {
    a: bool,
    b: vec4<u32>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: Struct_2,
    b: f32,
    c: bool,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 13> = array<f32, 13>(-396f, 619f, -1405f, -281f, 511f, -137f, -1427f, 941f, 978f, -1000f, 1170f, 162f, 175f);

var<private> global1: array<Struct_3, 13> = array<Struct_3, 13>(Struct_3(Struct_1(vec2<i32>(25750i, -1731i), -532f, vec2<bool>(true, false), 0u, -248f), Struct_1(vec2<i32>(66422i, -27706i), 1639f, vec2<bool>(false, true), 23309u, 568f)), Struct_3(Struct_1(vec2<i32>(-4601i, 0i), 1183f, vec2<bool>(true, true), 16020u, 118f), Struct_1(vec2<i32>(-24587i, i32(-2147483648)), -518f, vec2<bool>(true, true), 1u, -252f)), Struct_3(Struct_1(vec2<i32>(-65174i, 1i), 1886f, vec2<bool>(false, true), 0u, -391f), Struct_1(vec2<i32>(0i, 2147483647i), 1000f, vec2<bool>(true, false), 33035u, 596f)), Struct_3(Struct_1(vec2<i32>(0i, -1i), 490f, vec2<bool>(false, true), 0u, 503f), Struct_1(vec2<i32>(i32(-2147483648), 87266i), -1620f, vec2<bool>(true, true), 1u, -423f)), Struct_3(Struct_1(vec2<i32>(1i, 2147483647i), 136f, vec2<bool>(false, true), 4294967295u, 1151f), Struct_1(vec2<i32>(-23635i, -13821i), -369f, vec2<bool>(false, false), 0u, 1513f)), Struct_3(Struct_1(vec2<i32>(-1i, -4051i), -1220f, vec2<bool>(true, false), 1u, -247f), Struct_1(vec2<i32>(-17366i, 61312i), 2127f, vec2<bool>(true, true), 1u, 447f)), Struct_3(Struct_1(vec2<i32>(42906i, -1i), 353f, vec2<bool>(false, true), 0u, -728f), Struct_1(vec2<i32>(1i, -16735i), 393f, vec2<bool>(false, false), 53006u, -1605f)), Struct_3(Struct_1(vec2<i32>(2147483647i, 24586i), -449f, vec2<bool>(false, false), 40000u, 1252f), Struct_1(vec2<i32>(-10919i, 0i), 635f, vec2<bool>(false, true), 25356u, -1711f)), Struct_3(Struct_1(vec2<i32>(1523i, i32(-2147483648)), -854f, vec2<bool>(true, false), 0u, -127f), Struct_1(vec2<i32>(440i, 1i), -694f, vec2<bool>(false, true), 0u, 1153f)), Struct_3(Struct_1(vec2<i32>(-32570i, -1i), -2832f, vec2<bool>(true, false), 1u, 1000f), Struct_1(vec2<i32>(-13192i, i32(-2147483648)), 682f, vec2<bool>(false, false), 1u, -1517f)), Struct_3(Struct_1(vec2<i32>(15922i, -32795i), -849f, vec2<bool>(false, true), 67931u, 129f), Struct_1(vec2<i32>(1i, 2147483647i), -423f, vec2<bool>(false, false), 0u, 1000f)), Struct_3(Struct_1(vec2<i32>(-35383i, 22507i), 2187f, vec2<bool>(true, false), 1u, -1036f), Struct_1(vec2<i32>(-1i, 17098i), 366f, vec2<bool>(false, true), 9378u, -262f)), Struct_3(Struct_1(vec2<i32>(0i, 1i), 1531f, vec2<bool>(false, false), 49004u, -100f), Struct_1(vec2<i32>(13155i, 39410i), 978f, vec2<bool>(false, true), 28581u, -205f)));

var<private> global2: Struct_1;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_2, arg_2: Struct_5) -> u32 {
    global0 = array<f32, 13>();
    let var_0 = arg_1;
    let var_1 = abs(u_input.a.x);
    let var_2 = global2.a.x;
    global2 = Struct_1(-vec2<i32>(~countOneBits(arg_1.c.a.x), arg_2.a.c.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(483f + _wgslsmith_f_op_f32(-379f * _wgslsmith_f_op_f32(round(arg_0.a.b.e))))), !vec2<bool>(true, arg_0.a.b.c.x), arg_1.b.x, -251f);
    return global2.d;
}

fn func_2(arg_0: i32) -> bool {
    var var_0 = -1340f;
    let var_1 = firstTrailingBit(vec4<u32>(1u, func_3(Struct_4(global1[_wgslsmith_index_u32(~4294967295u, 13u)]), Struct_2(global2.c.x, reverseBits(vec4<u32>(global2.d, 16818u, 1u, global2.d)), Struct_1(global2.a, -1207f, global2.c, global2.d, global2.b)), Struct_5(Struct_2(false, vec4<u32>(21284u, 24377u, global2.d, global2.d), Struct_1(vec2<i32>(13501i, -30177i), 993f, global2.c, 4294967295u, global2.e)), global2.e, false, global1[_wgslsmith_index_u32(23901u, 13u)])), global2.d ^ 0u, abs(_wgslsmith_dot_vec2_u32(~vec2<u32>(global2.d, 1u), _wgslsmith_div_vec2_u32(vec2<u32>(global2.d, 0u), vec2<u32>(20776u, global2.d))))));
    let var_2 = Struct_4(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(365u, select(~114432u, 18329u, global2.c.x) & (~4294967295u ^ global2.d)), 13u)]);
    var var_3 = _wgslsmith_div_vec3_u32(var_1.zyy, var_1.xyw | var_1.wxy);
    let var_4 = false;
    return false;
}

fn func_1(arg_0: vec3<i32>) -> u32 {
    global0 = array<f32, 13>();
    global1 = array<Struct_3, 13>();
    var var_0 = func_2(countOneBits(_wgslsmith_div_i32(arg_0.x, -2147483647i)));
    let var_1 = Struct_4(global1[_wgslsmith_index_u32(0u, 13u)]);
    global1 = array<Struct_3, 13>();
    return firstLeadingBit(44216u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(vec3<i32>(_wgslsmith_div_i32(u_input.b.x, countOneBits(-u_input.b.x)), -11412i ^ (7148i | ~global2.a.x), abs(countOneBits(_wgslsmith_mod_i32(31213i, global2.a.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(abs(-global2.a.x) ^ 0i), ~vec4<u32>(~_wgslsmith_mod_u32(global2.d, global2.d), _wgslsmith_dot_vec3_u32(~vec3<u32>(var_0, global2.d, 0u), ~vec3<u32>(global2.d, 0u, global2.d)), global2.d, abs(global2.d)), 4294967295u);
}

