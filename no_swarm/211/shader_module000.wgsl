struct Struct_1 {
    a: vec4<bool>,
    b: f32,
    c: i32,
    d: bool,
    e: vec4<u32>,
}

struct Struct_2 {
    a: i32,
    b: u32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: vec2<bool>,
    d: Struct_1,
    e: vec4<bool>,
}

struct Struct_4 {
    a: bool,
    b: bool,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: i32;

var<private> global2: array<vec4<i32>, 28>;

var<private> global3: vec3<bool>;

var<private> global4: array<Struct_2, 15> = array<Struct_2, 15>(Struct_2(-39837i, 38848u, Struct_1(vec4<bool>(true, true, true, false), 310f, i32(-2147483648), true, vec4<u32>(1u, 37194u, 3567u, 71861u)), Struct_1(vec4<bool>(false, true, false, false), 1813f, 48841i, true, vec4<u32>(43715u, 4294967295u, 0u, 33346u))), Struct_2(1i, 2261u, Struct_1(vec4<bool>(false, true, true, false), 298f, -1i, true, vec4<u32>(4294967295u, 35969u, 1u, 29128u)), Struct_1(vec4<bool>(false, false, false, true), 471f, 68032i, false, vec4<u32>(75875u, 0u, 63639u, 1u))), Struct_2(15176i, 4294967295u, Struct_1(vec4<bool>(true, true, true, false), -1484f, -1i, false, vec4<u32>(1182u, 1u, 4294967295u, 51477u)), Struct_1(vec4<bool>(false, false, false, true), 198f, -32728i, true, vec4<u32>(4294967295u, 0u, 17807u, 19351u))), Struct_2(-1i, 37423u, Struct_1(vec4<bool>(false, true, true, false), 1877f, 42267i, false, vec4<u32>(57579u, 14447u, 0u, 17693u)), Struct_1(vec4<bool>(true, true, false, false), -1060f, -7246i, false, vec4<u32>(77582u, 79962u, 0u, 0u))), Struct_2(38893i, 0u, Struct_1(vec4<bool>(false, true, true, true), -762f, i32(-2147483648), true, vec4<u32>(4294967295u, 75992u, 27203u, 54675u)), Struct_1(vec4<bool>(false, false, false, true), 1766f, -1i, false, vec4<u32>(59437u, 50268u, 1u, 0u))), Struct_2(-4502i, 1u, Struct_1(vec4<bool>(true, false, true, false), -436f, -1i, false, vec4<u32>(1u, 0u, 71979u, 48334u)), Struct_1(vec4<bool>(true, false, false, false), -756f, -32425i, false, vec4<u32>(18702u, 4294967295u, 40510u, 10610u))), Struct_2(-27624i, 0u, Struct_1(vec4<bool>(true, false, true, false), 515f, 2147483647i, false, vec4<u32>(1u, 1u, 0u, 1u)), Struct_1(vec4<bool>(true, false, true, true), 806f, 1i, false, vec4<u32>(4294967295u, 0u, 0u, 0u))), Struct_2(10276i, 8399u, Struct_1(vec4<bool>(true, false, false, true), 452f, i32(-2147483648), false, vec4<u32>(2220u, 78894u, 64508u, 1u)), Struct_1(vec4<bool>(true, true, false, false), -1610f, -57449i, true, vec4<u32>(0u, 1u, 1u, 4294967295u))), Struct_2(1i, 8270u, Struct_1(vec4<bool>(false, true, true, false), 1216f, 1i, true, vec4<u32>(13368u, 12370u, 50717u, 0u)), Struct_1(vec4<bool>(false, false, true, false), 1000f, 0i, false, vec4<u32>(8084u, 1u, 113674u, 49757u))), Struct_2(-9244i, 1u, Struct_1(vec4<bool>(true, false, false, false), 723f, -20608i, true, vec4<u32>(0u, 7367u, 87777u, 25099u)), Struct_1(vec4<bool>(false, true, true, true), 392f, 1615i, false, vec4<u32>(5122u, 3786u, 65443u, 1u))), Struct_2(19649i, 4294967295u, Struct_1(vec4<bool>(false, true, false, true), -1071f, 56542i, true, vec4<u32>(22599u, 36812u, 0u, 1u)), Struct_1(vec4<bool>(false, true, true, false), -867f, 11091i, false, vec4<u32>(19418u, 0u, 0u, 22078u))), Struct_2(0i, 4294967295u, Struct_1(vec4<bool>(false, true, true, false), -998f, 1i, false, vec4<u32>(0u, 109274u, 0u, 9180u)), Struct_1(vec4<bool>(false, false, false, false), -700f, i32(-2147483648), true, vec4<u32>(45734u, 96929u, 0u, 93494u))), Struct_2(-1i, 0u, Struct_1(vec4<bool>(true, true, true, false), 532f, i32(-2147483648), false, vec4<u32>(16739u, 4294967295u, 60180u, 42185u)), Struct_1(vec4<bool>(false, false, true, false), 169f, 41574i, true, vec4<u32>(26713u, 17773u, 40002u, 0u))), Struct_2(-26692i, 18087u, Struct_1(vec4<bool>(false, true, false, true), -832f, -1i, true, vec4<u32>(6604u, 1u, 0u, 1u)), Struct_1(vec4<bool>(false, true, false, true), -754f, 1i, true, vec4<u32>(0u, 25823u, 1u, 0u))), Struct_2(-9475i, 26171u, Struct_1(vec4<bool>(true, true, false, true), -2136f, -29089i, true, vec4<u32>(0u, 1u, 86531u, 34362u)), Struct_1(vec4<bool>(true, true, true, false), -160f, 34541i, true, vec4<u32>(4294967295u, 49988u, 57156u, 6817u))));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: Struct_2, arg_1: u32) -> vec4<u32> {
    global4 = array<Struct_2, 15>();
    let var_0 = arg_0.d.a.yyw;
    var var_1 = !any(!select(arg_0.c.a.xwz, select(vec3<bool>(var_0.x, arg_0.c.d, false), var_0, arg_0.d.a.wxz), vec3<bool>(arg_0.c.d, true, global3.x)));
    var var_2 = arg_0.c;
    var_2 = arg_0.c;
    return arg_0.c.e;
}

fn func_2(arg_0: vec3<f32>, arg_1: vec2<i32>) -> i32 {
    let var_0 = ~(_wgslsmith_dot_vec4_u32(~func_3(global4[_wgslsmith_index_u32(14228u, 15u)], u_input.a), ~vec4<u32>(4294967295u, 51434u, u_input.a, 13547u)) | _wgslsmith_dot_vec2_u32(~(~vec2<u32>(u_input.a, u_input.a)), max(vec2<u32>(1u, 1u), vec2<u32>(1u, 12887u))));
    let var_1 = !all(vec4<bool>(all(vec2<bool>(global3.x, global3.x)), arg_1.x > 30435i, true, global3.x)) & global3.x;
    var var_2 = true;
    var var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, arg_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-792f, arg_0.x))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-136f - arg_0.x))), -549f));
    var_3 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(arg_0.x, -716f, arg_0.x, arg_0.x), vec4<f32>(arg_0.x, -140f, var_3.x, var_3.x))) - vec4<f32>(var_3.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_3.x)) + _wgslsmith_f_op_f32(f32(-1f) * -1277f)), 1000f, _wgslsmith_f_op_f32(max(-1227f, -1030f))))));
    return _wgslsmith_dot_vec4_i32(global2[_wgslsmith_index_u32(~var_0, 28u)] | abs(global2[_wgslsmith_index_u32(~u_input.a, 28u)]), vec4<i32>(0i, -21121i, i32(-1i) * -firstLeadingBit(arg_1.x), arg_1.x));
}

fn func_1(arg_0: Struct_4) -> vec4<bool> {
    return select(!select(arg_0.c.a, !select(vec4<bool>(arg_0.a, arg_0.b, true, global3.x), vec4<bool>(true, global3.x, global3.x, false), global3.x), all(select(vec4<bool>(global3.x, false, false, false), arg_0.c.a, arg_0.a))), select(vec4<bool>(!global3.x, u_input.b.x != func_2(vec3<f32>(arg_0.c.b, 943f, arg_0.c.b), vec2<i32>(-1i, 1i)), true, true), arg_0.c.a, true), all(!vec3<bool>(true, arg_0.c.e.x <= 24623u, false)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1i;
    var_0 = firstLeadingBit(u_input.c);
    global3 = vec3<bool>(global3.x, global3.x, !(all(func_1(Struct_4(global3.x, global3.x, Struct_1(vec4<bool>(false, global3.x, true, true), -1254f, 17043i, true, vec4<u32>(u_input.a, u_input.a, u_input.a, 48259u))))) | true));
    global4 = array<Struct_2, 15>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)));
}

