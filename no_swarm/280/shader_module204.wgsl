struct Struct_1 {
    a: bool,
    b: vec2<bool>,
    c: vec3<i32>,
    d: u32,
    e: f32,
}

struct Struct_2 {
    a: bool,
    b: u32,
    c: vec3<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: u32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 28> = array<Struct_1, 28>(Struct_1(false, vec2<bool>(false, false), vec3<i32>(0i, 1i, -4201i), 1u, 1540f), Struct_1(true, vec2<bool>(true, false), vec3<i32>(i32(-2147483648), -36132i, -1i), 16747u, -1817f), Struct_1(false, vec2<bool>(false, true), vec3<i32>(-19687i, 111627i, 0i), 4294967295u, 253f), Struct_1(false, vec2<bool>(false, true), vec3<i32>(2147483647i, -5402i, 0i), 66228u, 1263f), Struct_1(false, vec2<bool>(true, true), vec3<i32>(-19591i, 2147483647i, 20278i), 4294967295u, -1000f), Struct_1(false, vec2<bool>(false, true), vec3<i32>(1i, 3948i, 31594i), 130979u, 1072f), Struct_1(true, vec2<bool>(false, true), vec3<i32>(-47981i, -7212i, 0i), 10080u, 1000f), Struct_1(false, vec2<bool>(false, true), vec3<i32>(i32(-2147483648), -1i, -52872i), 0u, -938f), Struct_1(false, vec2<bool>(false, true), vec3<i32>(37535i, 11938i, 6370i), 65690u, -675f), Struct_1(true, vec2<bool>(true, true), vec3<i32>(10851i, 6762i, -2582i), 4294967295u, 254f), Struct_1(false, vec2<bool>(false, false), vec3<i32>(-26937i, -1i, i32(-2147483648)), 1u, -1524f), Struct_1(true, vec2<bool>(true, false), vec3<i32>(-53821i, 81607i, -7393i), 1964u, -662f), Struct_1(true, vec2<bool>(false, true), vec3<i32>(8992i, 15646i, 2147483647i), 1u, 636f), Struct_1(true, vec2<bool>(false, true), vec3<i32>(1i, -1i, -39035i), 48987u, 1686f), Struct_1(true, vec2<bool>(false, true), vec3<i32>(-1i, 2147483647i, -1i), 49867u, 330f), Struct_1(false, vec2<bool>(false, true), vec3<i32>(i32(-2147483648), -6537i, -10469i), 37372u, 188f), Struct_1(true, vec2<bool>(false, false), vec3<i32>(38547i, -26933i, 2147483647i), 32257u, 1453f), Struct_1(true, vec2<bool>(true, false), vec3<i32>(1i, 1i, -21434i), 49338u, 1776f), Struct_1(true, vec2<bool>(false, true), vec3<i32>(1i, 45979i, i32(-2147483648)), 77503u, 1632f), Struct_1(false, vec2<bool>(false, false), vec3<i32>(-3673i, i32(-2147483648), -35983i), 10638u, -285f), Struct_1(true, vec2<bool>(true, false), vec3<i32>(-25916i, 53056i, -25286i), 4294967295u, 718f), Struct_1(false, vec2<bool>(true, false), vec3<i32>(-14667i, -23667i, -15382i), 1u, 335f), Struct_1(false, vec2<bool>(false, true), vec3<i32>(39710i, 2147483647i, -1i), 44572u, 1158f), Struct_1(true, vec2<bool>(false, false), vec3<i32>(2147483647i, -97318i, 54985i), 4294967295u, 2193f), Struct_1(false, vec2<bool>(true, true), vec3<i32>(i32(-2147483648), 0i, -1i), 4294967295u, -2549f), Struct_1(false, vec2<bool>(true, true), vec3<i32>(i32(-2147483648), -1i, 2147483647i), 49236u, 1551f), Struct_1(false, vec2<bool>(true, true), vec3<i32>(-30417i, 0i, 866i), 21764u, -625f), Struct_1(false, vec2<bool>(false, true), vec3<i32>(0i, 2147483647i, -1288i), 4294967295u, -876f));

var<private> global1: array<f32, 27> = array<f32, 27>(-988f, 1664f, 1329f, -368f, -466f, -905f, 702f, -929f, 331f, 1817f, -525f, 2113f, -1388f, -3918f, -674f, 407f, -1150f, -1284f, 306f, 276f, -517f, 731f, 1035f, -1000f, 645f, -807f, 1109f);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: vec4<i32>) -> u32 {
    let var_0 = arg_2.zw;
    global0 = array<Struct_1, 28>();
    var var_1 = u_input.e;
    global0 = array<Struct_1, 28>();
    let var_2 = arg_1;
    return _wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.d, 5198u, ~arg_1.d), vec3<u32>(u_input.b, abs(abs(17325u)), ~u_input.e));
}

fn func_3(arg_0: vec3<u32>) -> u32 {
    return arg_0.x;
}

fn func_2(arg_0: Struct_1, arg_1: vec4<i32>) -> Struct_4 {
    var var_0 = global0[_wgslsmith_index_u32(func_3(abs(abs(min(vec3<u32>(u_input.b, 21223u, u_input.b), ~vec3<u32>(arg_0.d, arg_0.d, arg_0.d))))), 28u)];
    var var_1 = Struct_2(var_0.a, 79422u, _wgslsmith_mult_vec3_u32(reverseBits(select(vec3<u32>(arg_0.d, u_input.a, 1u), ~vec3<u32>(15767u, arg_0.d, 14058u), select(vec3<bool>(var_0.b.x, false, false), vec3<bool>(var_0.a, var_0.a, var_0.b.x), vec3<bool>(arg_0.b.x, false, false)))), vec3<u32>(~(~var_0.d), 0u, 1u)), Struct_1(all(select(vec2<bool>(var_0.b.x, var_0.b.x), select(var_0.b, vec2<bool>(arg_0.a, false), arg_0.a), arg_0.a | var_0.b.x)), arg_0.b, arg_1.zyz, ~var_0.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.e)))));
    var var_2 = vec3<i32>(~_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(select(vec2<i32>(arg_1.x, var_1.d.c.x), var_1.d.c.zz, vec2<bool>(var_0.b.x, var_1.a)), vec2<i32>(arg_0.c.x, -1i)), u_input.d.x ^ u_input.d.x), _wgslsmith_sub_i32(u_input.d.x ^ -51214i, ~(-u_input.d.x) & (i32(-1i) * -1i)), var_1.d.c.x);
    global1 = array<f32, 27>();
    var var_3 = abs((func_3(vec3<u32>(4294967295u, arg_0.d, var_1.d.d)) ^ _wgslsmith_dot_vec2_u32(~vec2<u32>(var_1.b, 18574u), min(var_1.c.yy, var_1.c.zy))) << (_wgslsmith_sub_u32(reverseBits(~28696u), 25021u) % 32u));
    return Struct_4(Struct_3(var_0.c.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_2(Struct_1(all(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), true)), vec2<bool>(true, true), u_input.d, ~func_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(81728u, 27u)], global1[_wgslsmith_index_u32(0u, 27u)], global1[_wgslsmith_index_u32(u_input.e, 27u)], global1[_wgslsmith_index_u32(u_input.a, 27u)]) * vec4<f32>(global1[_wgslsmith_index_u32(1u, 27u)], global1[_wgslsmith_index_u32(78257u, 27u)], -794f, 1492f)), Struct_1(true, vec2<bool>(false, false), vec3<i32>(-5828i, u_input.d.x, u_input.d.x), 2593u, -1549f), vec4<i32>(u_input.d.x, u_input.d.x, u_input.d.x, 0i)), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(~0u, 27u)] * global1[_wgslsmith_index_u32(96111u, 27u)])), abs(_wgslsmith_sub_vec4_i32(-abs(vec4<i32>(-41210i, u_input.d.x, u_input.d.x, u_input.d.x)), vec4<i32>(-1i) * -vec4<i32>(-24438i, 19445i, 30312i, u_input.d.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(ceil(1143f)), -6263i, u_input.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1891f, 1453f) - vec2<f32>(303f, global1[_wgslsmith_index_u32(u_input.e, 27u)]))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(0u, 27u)], global1[_wgslsmith_index_u32(u_input.c, 27u)])) * _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-805f, 423f), vec2<f32>(913f, 1025f)))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(u_input.a, 27u)], 1141f))))));
}

