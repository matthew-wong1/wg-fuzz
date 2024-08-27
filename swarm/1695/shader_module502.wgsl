struct Struct_1 {
    a: vec4<bool>,
    b: bool,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec2<u32>,
    d: vec2<i32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: Struct_2,
    d: vec3<bool>,
}

struct Struct_4 {
    a: bool,
    b: vec2<u32>,
}

struct Struct_5 {
    a: u32,
    b: bool,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: i32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -1000f;

var<private> global1: vec4<f32>;

var<private> global2: array<vec3<i32>, 29>;

var<private> global3: array<Struct_5, 23> = array<Struct_5, 23>(Struct_5(48216u, true, Struct_2(Struct_1(vec4<bool>(true, false, true, false), false, true), 0i, vec2<u32>(36372u, 1u), vec2<i32>(6521i, -1i))), Struct_5(36863u, false, Struct_2(Struct_1(vec4<bool>(false, false, true, true), false, true), -18869i, vec2<u32>(30322u, 30728u), vec2<i32>(-1i, -5167i))), Struct_5(3147u, false, Struct_2(Struct_1(vec4<bool>(true, false, true, false), true, false), 2147483647i, vec2<u32>(1u, 32495u), vec2<i32>(-1i, -57238i))), Struct_5(67267u, true, Struct_2(Struct_1(vec4<bool>(true, false, true, true), false, false), 1i, vec2<u32>(121744u, 4294967295u), vec2<i32>(2147483647i, 8008i))), Struct_5(69932u, false, Struct_2(Struct_1(vec4<bool>(true, false, false, true), false, false), 2147483647i, vec2<u32>(23090u, 7825u), vec2<i32>(17376i, 4791i))), Struct_5(3307u, true, Struct_2(Struct_1(vec4<bool>(false, false, false, true), false, false), 11723i, vec2<u32>(1u, 1938u), vec2<i32>(-6946i, 36790i))), Struct_5(10256u, true, Struct_2(Struct_1(vec4<bool>(false, false, true, false), false, true), 0i, vec2<u32>(1u, 34655u), vec2<i32>(-1i, 0i))), Struct_5(1u, false, Struct_2(Struct_1(vec4<bool>(false, true, true, false), false, true), 18915i, vec2<u32>(1u, 0u), vec2<i32>(16076i, 2147483647i))), Struct_5(111519u, true, Struct_2(Struct_1(vec4<bool>(true, false, true, false), true, false), 8917i, vec2<u32>(1u, 47571u), vec2<i32>(2147483647i, i32(-2147483648)))), Struct_5(12058u, true, Struct_2(Struct_1(vec4<bool>(false, false, false, false), false, false), 0i, vec2<u32>(40323u, 86192u), vec2<i32>(-28456i, i32(-2147483648)))), Struct_5(30973u, true, Struct_2(Struct_1(vec4<bool>(false, false, false, true), true, false), 1i, vec2<u32>(23055u, 0u), vec2<i32>(-40710i, 2147483647i))), Struct_5(28168u, true, Struct_2(Struct_1(vec4<bool>(true, false, true, true), false, false), 6391i, vec2<u32>(4294967295u, 57767u), vec2<i32>(-48824i, i32(-2147483648)))), Struct_5(9715u, true, Struct_2(Struct_1(vec4<bool>(false, false, false, false), true, true), i32(-2147483648), vec2<u32>(1u, 4294967295u), vec2<i32>(21405i, -1i))), Struct_5(1u, true, Struct_2(Struct_1(vec4<bool>(false, false, true, false), true, false), 0i, vec2<u32>(14198u, 0u), vec2<i32>(9109i, -1i))), Struct_5(0u, false, Struct_2(Struct_1(vec4<bool>(true, false, false, true), false, true), -18887i, vec2<u32>(89274u, 2301u), vec2<i32>(-1i, -1i))), Struct_5(4294967295u, true, Struct_2(Struct_1(vec4<bool>(false, true, true, false), true, false), 1i, vec2<u32>(4294967295u, 112892u), vec2<i32>(1i, 2147483647i))), Struct_5(0u, true, Struct_2(Struct_1(vec4<bool>(true, false, true, true), true, true), 4774i, vec2<u32>(4294967295u, 40979u), vec2<i32>(-1i, -92061i))), Struct_5(0u, false, Struct_2(Struct_1(vec4<bool>(false, true, false, true), true, true), -1i, vec2<u32>(0u, 1u), vec2<i32>(12224i, 50376i))), Struct_5(1u, false, Struct_2(Struct_1(vec4<bool>(true, true, false, false), true, true), -20799i, vec2<u32>(62403u, 0u), vec2<i32>(-1i, i32(-2147483648)))), Struct_5(40686u, true, Struct_2(Struct_1(vec4<bool>(false, false, true, false), true, false), 0i, vec2<u32>(1u, 4294967295u), vec2<i32>(61483i, 2147483647i))), Struct_5(4294967295u, false, Struct_2(Struct_1(vec4<bool>(false, true, false, false), false, false), 11081i, vec2<u32>(8405u, 17954u), vec2<i32>(6202i, -2501i))), Struct_5(1u, true, Struct_2(Struct_1(vec4<bool>(true, false, false, true), true, true), 32531i, vec2<u32>(70507u, 1u), vec2<i32>(0i, 2147483647i))), Struct_5(641u, false, Struct_2(Struct_1(vec4<bool>(true, false, true, false), true, false), -1i, vec2<u32>(70585u, 1u), vec2<i32>(-1i, 2147483647i))));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_1() -> bool {
    let var_0 = ~firstTrailingBit(vec4<u32>(1u, 7803u, 1u, 4294967295u)) << (~countOneBits(~vec4<u32>(1248u, 4294967295u, 4294967295u, 4294967295u)) % vec4<u32>(32u));
    global3 = array<Struct_5, 23>();
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, 1525f, global1.x, -853f) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, 2109f, 2217f, global1.x) + _wgslsmith_f_op_vec4_f32(vec4<f32>(502f, 206f, global1.x, 416f) * vec4<f32>(global1.x, global1.x, -1000f, -1796f))))));
    return true;
}

fn func_3(arg_0: vec2<u32>, arg_1: bool) -> f32 {
    let var_0 = -(~1071i);
    let var_1 = _wgslsmith_f_op_f32(-global1.x);
    var var_2 = arg_1;
    let var_3 = !(!(_wgslsmith_f_op_f32(f32(-1f) * -127f) != _wgslsmith_div_f32(-677f, global1.x))) && any(select(vec4<bool>(arg_1, arg_1 && arg_1, arg_1, func_1()), !(!vec4<bool>(false, arg_1, true, arg_1)), _wgslsmith_f_op_f32(-2656f - global1.x) != _wgslsmith_f_op_f32(-global1.x)));
    global1 = vec4<f32>(_wgslsmith_f_op_f32(global1.x + _wgslsmith_f_op_f32(f32(-1f) * -997f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -524f)) * _wgslsmith_f_op_f32(-var_1)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -199f), _wgslsmith_f_op_f32(var_1 + global1.x))), -1200f);
    return -596f;
}

fn func_2(arg_0: i32, arg_1: vec2<i32>) -> bool {
    global1 = vec4<f32>(global1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global1.x * global1.x), _wgslsmith_f_op_f32(func_3(vec2<u32>(4294967295u, 1u), false)))) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1062f + _wgslsmith_f_op_f32(select(-1332f, -349f, false))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global1.x))), false))), _wgslsmith_f_op_f32(-525f + global1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global1.x))) + global1.x) - -1229f));
    return all(!(!select(vec4<bool>(false, false, false, true), select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true), true), select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false), true))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(Struct_1(vec4<bool>(true, ~4294967295u < _wgslsmith_clamp_u32(4294967295u, 4294967295u, 1u), all(vec2<bool>(true, false)) || func_1(), _wgslsmith_f_op_f32(step(628f, -311f)) > global1.x), true, true && (false | (u_input.a.x != u_input.a.x))), u_input.a.x, vec2<u32>(countOneBits(_wgslsmith_mult_u32(~29708u, ~4294967295u)), 51189u), u_input.a.xw);
    var var_1 = Struct_5(~_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(~vec3<u32>(11673u, var_0.c.x, 36222u), select(vec3<u32>(36798u, 0u, 13770u), vec3<u32>(4294967295u, var_0.c.x, 34133u), vec3<bool>(var_0.a.b, false, true))), ~vec3<u32>(var_0.c.x, var_0.c.x, var_0.c.x)), all(vec3<bool>(func_2(_wgslsmith_mod_i32(u_input.a.x, -1i), vec2<i32>(u_input.a.x, u_input.a.x)), any(var_0.a.a.zzy), var_0.a.b)), Struct_2(Struct_1(vec4<bool>(var_0.a.c, false, true, false), any(!vec2<bool>(true, var_0.a.a.x)), var_0.c.x <= abs(var_0.c.x)), ~firstTrailingBit(2147483647i), var_0.c, select(var_0.d, min(vec2<i32>(10305i, -4765i) | u_input.a.yw, var_0.d), true)));
    global3 = array<Struct_5, 23>();
    var var_2 = vec4<u32>(~(~(0u >> (~var_1.a % 32u))), var_0.c.x, var_0.c.x, 1233u);
    var var_3 = _wgslsmith_div_i32(_wgslsmith_mod_i32(var_0.b, -1i), ~(-2290i));
    let var_4 = var_0;
    var var_5 = Struct_4(true, var_2.xx);
    let var_6 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(vec2<u32>(48613u, 23322u), var_5.a)), _wgslsmith_div_f32(global1.x, -360f)), -1527f, false)), _wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)), global1.x) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(512f, global1.x, 1875f, global1.x)))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(397f, 1701f, global1.x, -1118f), vec4<f32>(global1.x, 453f, -1224f, global1.x))))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -2121f), var_2.wxx, _wgslsmith_dot_vec2_i32(var_1.c.d, vec2<i32>(31299i, _wgslsmith_add_i32(-1i, var_0.b) & _wgslsmith_mult_i32(u_input.a.x, -61642i))), ~(-vec2<i32>(u_input.a.x, 1i)) >> (vec2<u32>(4294967295u, var_1.a) % vec2<u32>(32u)));
}

