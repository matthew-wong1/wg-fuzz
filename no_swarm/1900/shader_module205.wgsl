struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 3> = array<vec3<u32>, 3>(vec3<u32>(3361u, 1u, 4294967295u), vec3<u32>(4294967295u, 4294967295u, 4294967295u), vec3<u32>(1u, 0u, 1u));

var<private> global1: array<vec4<i32>, 21> = array<vec4<i32>, 21>(vec4<i32>(-1i, i32(-2147483648), 1i, -1i), vec4<i32>(18624i, 4076i, 1i, 46198i), vec4<i32>(-55364i, -19650i, 5767i, 14464i), vec4<i32>(-2564i, 21004i, 0i, i32(-2147483648)), vec4<i32>(4450i, -3253i, 9391i, -28771i), vec4<i32>(-1i, 2147483647i, 8732i, 0i), vec4<i32>(1i, 0i, 63682i, -2444i), vec4<i32>(0i, -55694i, i32(-2147483648), i32(-2147483648)), vec4<i32>(18798i, 2147483647i, 39934i, -49901i), vec4<i32>(-1i, -1i, 0i, -58021i), vec4<i32>(30556i, 2147483647i, 0i, 22005i), vec4<i32>(0i, -23828i, 13347i, 0i), vec4<i32>(14340i, 2147483647i, 0i, 0i), vec4<i32>(i32(-2147483648), i32(-2147483648), 51574i, 1i), vec4<i32>(2147483647i, 2147483647i, 3082i, -29659i), vec4<i32>(-34842i, 15344i, 34172i, i32(-2147483648)), vec4<i32>(i32(-2147483648), 2147483647i, -1i, i32(-2147483648)), vec4<i32>(-32719i, 49929i, -37633i, 0i), vec4<i32>(-1i, 5409i, -1i, 0i), vec4<i32>(-3191i, 66006i, -5026i, 2147483647i), vec4<i32>(1i, 1i, 2594i, 37879i));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2() -> u32 {
    return 0u;
}

fn func_3(arg_0: u32, arg_1: vec3<bool>, arg_2: bool) -> Struct_2 {
    global0 = array<vec3<u32>, 3>();
    let var_0 = true;
    global0 = array<vec3<u32>, 3>();
    let var_1 = global1[_wgslsmith_index_u32(43752u, 21u)];
    let var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(124f, -1637f), vec2<f32>(-1474f, -764f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(413f, -1000f) + vec2<f32>(-1774f, -469f)))))), var_1.x);
    return Struct_2(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -501f), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.a.x - var_2.a.x), _wgslsmith_f_op_f32(var_2.a.x - 939f)), -650f)), -1i);
}

fn func_1(arg_0: Struct_1, arg_1: bool, arg_2: vec2<f32>, arg_3: f32) -> Struct_2 {
    var var_0 = func_3(func_2(), vec3<bool>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_3 + -435f))) <= _wgslsmith_f_op_f32(floor(arg_3)), arg_1, true != all(!vec4<bool>(arg_1, arg_1, arg_1, arg_1))), select(false, select(true, false, arg_1), arg_1));
    global1 = array<vec4<i32>, 21>();
    var_0 = func_3(~16367u, !vec3<bool>(arg_1, true, false), all(vec2<bool>(true, true)));
    global1 = array<vec4<i32>, 21>();
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_0.a.x, 2041f, var_0.a.x), vec3<f32>(arg_2.x, arg_2.x, -1863f))), vec3<f32>(_wgslsmith_f_op_f32(-arg_3), arg_3, var_0.a.x))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_0.a.x, 1000f, var_0.a.x))))) - _wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_2.x, 204f, 1071f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-789f, 1335f, 625f) * vec3<f32>(1000f, var_0.a.x, var_0.a.x))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_2.x, arg_2.x, var_0.a.x)))))))));
    return func_3(arg_0.a.x, !select(!vec3<bool>(false, arg_1, arg_1), select(vec3<bool>(arg_1, false, true), vec3<bool>(arg_1, arg_1, false), vec3<bool>(false, true, arg_1)), any(!vec3<bool>(false, arg_1, arg_1))), arg_2.x == 442f);
}

fn func_4(arg_0: vec2<i32>, arg_1: vec4<u32>, arg_2: Struct_2, arg_3: f32) -> i32 {
    global0 = array<vec3<u32>, 3>();
    global0 = array<vec3<u32>, 3>();
    var var_0 = ~arg_1.ww;
    var var_1 = Struct_1(~_wgslsmith_div_vec2_u32(select(arg_1.wx, _wgslsmith_clamp_vec2_u32(arg_1.xx, u_input.c.zz, vec2<u32>(arg_1.x, 0u)), true), vec2<u32>(~var_0.x, arg_1.x)));
    let var_2 = 555f;
    return _wgslsmith_clamp_i32(-14411i ^ select(~_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.x, 1i), vec2<i32>(arg_2.b, arg_2.b)), -arg_2.b, true), 2147483647i, arg_2.b);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<u32>, 3>();
    let var_0 = u_input.a;
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(365f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1657f, 1000f)) + -328f) * -1451f), 1f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1000f * 956f)))));
    let var_2 = _wgslsmith_add_i32((func_4(vec2<i32>(1i, 1i), u_input.c, func_1(Struct_1(vec2<u32>(var_0, u_input.a)), true, var_1.wz, var_1.x), var_1.x) ^ (i32(-1i) * -55270i)) | _wgslsmith_mod_i32(1i, 17581i), _wgslsmith_dot_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(25922i, -14707i), ~(-vec2<i32>(-1i, -2147483647i))) ^ select(~firstTrailingBit(0i), _wgslsmith_clamp_i32(30422i, _wgslsmith_mod_i32(44694i, -26686i), 27032i), true));
    var var_3 = func_3(reverseBits(~max(_wgslsmith_add_u32(u_input.a, 4294967295u), 1u)), vec3<bool>(true, _wgslsmith_f_op_f32(-var_1.x) < _wgslsmith_f_op_f32(abs(var_1.x)), true), false);
    var_3 = Struct_2(var_1.wz, abs(-5149i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1287f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_3.a.x + var_3.a.x))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(var_3.a.x)), _wgslsmith_f_op_f32(abs(var_3.a.x))))), u_input.c.zx, var_3.b & -44554i, reverseBits(1i));
}

