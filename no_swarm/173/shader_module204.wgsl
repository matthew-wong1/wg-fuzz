struct Struct_1 {
    a: bool,
    b: u32,
    c: vec2<i32>,
    d: i32,
    e: vec4<i32>,
}

struct Struct_2 {
    a: f32,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: vec4<i32>,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 28> = array<vec3<bool>, 28>(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(false, false, true));

var<private> global1: array<vec3<f32>, 31> = array<vec3<f32>, 31>(vec3<f32>(-1653f, 798f, -364f), vec3<f32>(816f, 1054f, -738f), vec3<f32>(176f, 787f, 279f), vec3<f32>(-288f, -854f, -727f), vec3<f32>(420f, -406f, 215f), vec3<f32>(2346f, 233f, 895f), vec3<f32>(170f, 682f, 940f), vec3<f32>(433f, 1109f, 219f), vec3<f32>(767f, -356f, -524f), vec3<f32>(-1106f, 876f, 2279f), vec3<f32>(-278f, -1076f, -777f), vec3<f32>(971f, 1000f, 1218f), vec3<f32>(950f, 1282f, 1019f), vec3<f32>(719f, 2613f, 790f), vec3<f32>(1266f, 1000f, 999f), vec3<f32>(-304f, -554f, -277f), vec3<f32>(381f, 1529f, -1000f), vec3<f32>(1074f, -417f, -868f), vec3<f32>(971f, 175f, -1000f), vec3<f32>(-1486f, 1517f, -1619f), vec3<f32>(-443f, 1128f, -830f), vec3<f32>(-289f, 1259f, 656f), vec3<f32>(171f, 816f, 1776f), vec3<f32>(-531f, 1002f, 2368f), vec3<f32>(937f, -762f, -1011f), vec3<f32>(-1023f, -145f, -105f), vec3<f32>(1218f, -379f, -948f), vec3<f32>(-2128f, 1446f, 822f), vec3<f32>(-1000f, 1081f, -1779f), vec3<f32>(321f, 330f, -1673f), vec3<f32>(129f, -2048f, -413f));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: vec4<u32>, arg_1: vec3<bool>, arg_2: Struct_3, arg_3: bool) -> bool {
    global1 = array<vec3<f32>, 31>();
    return !(!(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_2.d.x)) + arg_2.d.x) < _wgslsmith_f_op_f32(-arg_2.d.x)));
}

fn func_3(arg_0: vec2<u32>, arg_1: vec3<f32>, arg_2: Struct_2, arg_3: vec3<i32>) -> f32 {
    global0 = array<vec3<bool>, 28>();
    let var_0 = 1770f;
    global0 = array<vec3<bool>, 28>();
    global0 = array<vec3<bool>, 28>();
    var var_1 = Struct_2(-1000f, any(vec3<bool>(true, true, true)), arg_2.c);
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(2819f)), _wgslsmith_f_op_f32(f32(-1f) * -1723f)));
}

fn func_4(arg_0: vec3<u32>, arg_1: u32, arg_2: f32) -> f32 {
    let var_0 = -2147483647i;
    global0 = array<vec3<bool>, 28>();
    global1 = array<vec3<f32>, 31>();
    let var_1 = vec3<i32>(_wgslsmith_div_i32(max(-7037i, min(var_0, firstTrailingBit(20372i))), _wgslsmith_add_i32(var_0, abs(_wgslsmith_mod_i32(18320i, var_0)))), -25298i, _wgslsmith_clamp_i32(~var_0, u_input.a, -39629i));
    global1 = array<vec3<f32>, 31>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_2, 1f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1177f)) * _wgslsmith_f_op_f32(func_3(vec2<u32>(u_input.b, arg_0.x), vec3<f32>(arg_2, 450f, arg_2), Struct_2(-229f, true, Struct_1(true, 4294967295u, vec2<i32>(0i, -2147483647i), -1i, vec4<i32>(1975i, var_0, var_1.x, -10471i))), vec3<i32>(var_1.x, 0i, var_1.x)))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-614f - arg_2), 1644f))));
}

fn func_1(arg_0: u32) -> StorageBuffer {
    global1 = array<vec3<f32>, 31>();
    global0 = array<vec3<bool>, 28>();
    let var_0 = -1046f;
    let var_1 = select(false, (func_2(countOneBits(vec4<u32>(65831u, u_input.b, 1116u, 64961u)), vec3<bool>(true, true, false), Struct_3(Struct_1(false, u_input.b, vec2<i32>(-13010i, u_input.a), -39011i, vec4<i32>(u_input.a, u_input.d, u_input.a, 1i)), false, vec4<i32>(u_input.d, -5018i, u_input.a, u_input.d), global1[_wgslsmith_index_u32(4504u, 31u)]), true) || (true || all(vec2<bool>(true, false)))) | (68672u < arg_0), true);
    let var_2 = global0[_wgslsmith_index_u32(countOneBits(~_wgslsmith_div_u32(~_wgslsmith_add_u32(47849u, arg_0), 66279u)), 28u)];
    return StorageBuffer(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(887f, -764f) * var_0) * -413f), _wgslsmith_f_op_f32(func_4(vec3<u32>(arg_0, ~arg_0, 34420u), arg_0, _wgslsmith_f_op_f32(func_3(vec2<u32>(26896u, 72684u), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1933f, var_0, var_0) - vec3<f32>(-309f, -1397f, 1547f)), Struct_2(var_0, var_2.x, Struct_1(true, u_input.b, vec2<i32>(-33161i, u_input.d), 0i, vec4<i32>(u_input.a, -2147483647i, u_input.a, u_input.d))), vec3<i32>(u_input.d, u_input.d, 2147483647i))))), var_1)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(1u);
}

