struct Struct_1 {
    a: u32,
    b: vec3<f32>,
    c: i32,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<bool>,
    c: i32,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: vec2<f32>,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 22>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<u32>, arg_1: vec4<bool>) -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(113f, -1664f, 647f)))) * _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(976f, -1353f, 865f), vec3<f32>(775f, 807f, 235f), vec3<bool>(arg_1.x, false, arg_1.x))), vec3<f32>(-1066f, -800f, 1000f)))))));
    var var_1 = arg_1;
    var_0 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -1497f), _wgslsmith_f_op_f32(-var_0.x)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-860f, 845f, var_0.x) + _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_0.x, var_0.x, var_0.x))))), vec3<f32>(var_0.x, _wgslsmith_div_f32(588f, 1000f), -382f)))));
    let var_2 = ~(-((vec3<i32>(u_input.b, 2147483647i, -14058i) & -vec3<i32>(0i, u_input.b, 10138i)) ^ vec3<i32>(-u_input.b, -31950i << (arg_0.x % 32u), _wgslsmith_div_i32(0i, -1i))));
    let var_3 = Struct_3(Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_0.x, -1551f, var_0.x), vec3<f32>(462f, -358f, var_0.x)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_0.x, var_0.x, 1198f), vec3<f32>(var_0.x, var_0.x, var_0.x)) + vec3<f32>(2854f, 137f, var_0.x)))), arg_1.zz, u_input.b);
    return vec3<bool>(abs(0u) >= reverseBits(countOneBits(u_input.a) >> (u_input.a % 32u)), !(u_input.a != _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, arg_0.x, u_input.a), vec4<u32>(55776u, 47942u, u_input.a, 0u))) | (!var_1.x | any(vec3<bool>(true, false, false))), arg_1.x);
}

fn func_2(arg_0: vec2<u32>, arg_1: vec3<i32>, arg_2: u32) -> vec4<f32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(361f, -962f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(325f * -498f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-1301f * -126f), -146f, _wgslsmith_f_op_f32(-602f - -1655f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1785f, 361f, -440f), vec3<f32>(1000f, -1084f, -1940f)))))));
    let var_1 = any(func_3(vec2<u32>(~u_input.a, u_input.a), select(vec4<bool>(true, true, false, all(vec3<bool>(true, false, false))), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true))));
    global0 = array<vec2<i32>, 22>();
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * _wgslsmith_f_op_f32(abs(var_0.x))));
    global0 = array<vec2<i32>, 22>();
    return _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1661f, _wgslsmith_f_op_f32(var_0.x * var_0.x), _wgslsmith_f_op_f32(f32(-1f) * -122f), -1337f) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(463f, -383f, var_0.x, var_0.x), vec4<f32>(598f, 1299f, var_0.x, var_0.x))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(vec4<f32>(-2218f, var_0.x, -422f, var_0.x), vec4<f32>(var_0.x, -1341f, -131f, 1686f)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-980f, 233f, -174f, 1167f))))) + vec4<f32>(_wgslsmith_f_op_f32(min(var_0.x, 1841f)), -1579f, 1218f, var_0.x))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-256f, -1379f, -424f, var_0.x)) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.x, var_0.x, -195f, var_0.x), vec4<f32>(1115f, 666f, 1201f, 864f), false))))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_0.x, 1024f, 973f, var_0.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, var_0.x, -256f) - vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -442f, var_0.x, var_0.x))))), any(!vec4<bool>(true, false, true, var_1)))));
}

fn func_1(arg_0: vec3<f32>) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(arg_0.x)), -1244f, 1f, _wgslsmith_f_op_f32(-arg_0.x))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, 797f, arg_0.x, arg_0.x) - vec4<f32>(-1623f, 1000f, 693f, arg_0.x)))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_2(vec2<u32>(76630u, u_input.a), vec3<i32>(2147483647i, u_input.b, 2147483647i), u_input.a)) - vec4<f32>(1116f, arg_0.x, -835f, 425f))), vec4<f32>(351f, _wgslsmith_f_op_f32(774f + _wgslsmith_f_op_f32(arg_0.x + arg_0.x)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_0.x))), 714f), vec4<bool>(false, true, !any(vec3<bool>(false, true, false)), any(vec2<bool>(false, false))))));
    let var_1 = abs(u_input.b);
    var var_2 = abs(u_input.a);
    let var_3 = Struct_4(Struct_2(arg_0));
    var var_4 = var_3;
    return Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(241f))), 818f, 828f)));
}

fn func_4(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: Struct_5, arg_3: vec3<i32>) -> f32 {
    global0 = array<vec2<i32>, 22>();
    var var_0 = arg_2;
    global0 = array<vec2<i32>, 22>();
    let var_1 = func_1(arg_0.a);
    var var_2 = arg_1;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-262f - -1734f) + _wgslsmith_f_op_f32(floor(func_1(arg_0.a).a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a;
    var var_1 = 1826f;
    let var_2 = _wgslsmith_f_op_vec2_f32(step(vec2<f32>(592f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -786f)), _wgslsmith_f_op_f32(f32(-1f) * -200f))), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -396f), _wgslsmith_f_op_f32(f32(-1f) * -636f))))));
    var_1 = var_2.x;
    let var_3 = Struct_2(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(func_4(func_1(vec3<f32>(-758f, -1021f, -1412f)), select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), true), Struct_5(vec2<f32>(-522f, var_2.x), -796f), vec3<i32>(u_input.b, -1i, u_input.b) | vec3<i32>(u_input.b, u_input.b, 2147483647i))), _wgslsmith_f_op_f32(func_1(vec3<f32>(-1459f, -1624f, 1441f)).a.x * _wgslsmith_f_op_f32(-var_2.x)), var_2.x))));
    let var_4 = firstLeadingBit(~(~(~min(vec2<u32>(0u, u_input.a), vec2<u32>(38697u, u_input.a)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(u_input.b & countOneBits(u_input.b), firstTrailingBit(0i), u_input.b, -39886i) >> (select(~_wgslsmith_clamp_vec4_u32(vec4<u32>(var_4.x, 400u, var_4.x, 36894u), vec4<u32>(19305u, var_4.x, 4294967295u, u_input.a), vec4<u32>(var_4.x, u_input.a, 85450u, 43654u)), min(vec4<u32>(23123u, 1u, 4294967295u, var_4.x), reverseBits(vec4<u32>(64675u, u_input.a, 1u, 54514u))), any(vec3<bool>(true, true, true))) % vec4<u32>(32u)));
}

