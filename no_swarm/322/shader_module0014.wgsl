struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec3<f32>,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_3, arg_1: f32) -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1485f, _wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(arg_1 - arg_1)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(ceil(global0.x)), _wgslsmith_f_op_f32(-global0.x)) * vec2<f32>(_wgslsmith_f_op_f32(global0.x * global0.x), _wgslsmith_div_f32(102f, -498f))), false));
    global0 = vec2<f32>(var_0.x, _wgslsmith_f_op_f32(max(global0.x, 1000f)));
    var var_1 = ~abs(65376u);
    let var_2 = Struct_1(!(!(select(false, arg_0.a.x, false) | any(arg_0.a))));
    var var_3 = 1i;
    return !(!(!select(select(vec3<bool>(arg_0.a.x, false, false), vec3<bool>(arg_0.a.x, true, arg_0.a.x), arg_0.a.x), arg_0.a.yzw, arg_0.a.wzw)));
}

fn func_2() -> i32 {
    let var_0 = ~abs(vec4<i32>(0i, 1i, i32(-1i) * -1i, _wgslsmith_dot_vec2_i32(countOneBits(vec2<i32>(2989i, 2147483647i)), -vec2<i32>(-1i, 0i))));
    global0 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1618f, global0.x) * vec2<f32>(-711f, 1000f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(724f, global0.x) + vec2<f32>(-1287f, 206f))), _wgslsmith_div_vec2_f32(vec2<f32>(global0.x, global0.x), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global0.x, 648f)))), false)) - vec2<f32>(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x))))));
    let var_1 = Struct_3(vec4<bool>(all(select(vec3<bool>(true, true, true), func_3(Struct_3(vec4<bool>(false, false, true, false)), -1116f), func_3(Struct_3(vec4<bool>(true, true, false, false)), 351f))), false | any(vec4<bool>(false, false, false, true)), true, all(select(func_3(Struct_3(vec4<bool>(true, false, false, true)), -1069f).yz, vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, true), true)))));
    global0 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1588f, global0.x)), _wgslsmith_div_vec2_f32(vec2<f32>(global0.x, 799f), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(129f, global0.x))))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1798f * global0.x) + _wgslsmith_f_op_f32(-global0.x)), global0.x)), vec2<f32>(-218f, 431f)));
    global0 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(sign(global0.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(1010f - global0.x))), vec2<f32>(_wgslsmith_f_op_f32(global0.x - -413f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-161f + global0.x)))))));
    return _wgslsmith_mod_i32(_wgslsmith_div_i32(_wgslsmith_mult_i32(1i, -(var_0.x << (0u % 32u))), i32(-1i) * -30261i), var_0.x);
}

fn func_1() -> i32 {
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(select(-746f, 309f, false)), _wgslsmith_f_op_f32(-303f + global0.x)))))) * _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-617f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(global0.x, -1251f)), 1307f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(170f, 1155f), vec2<f32>(-343f, 1684f), vec2<bool>(true, true))))))));
    return abs(select(~select(countOneBits(-1i), func_2(), any(vec3<bool>(false, true, true))), i32(-1i) * -1i, (_wgslsmith_f_op_f32(-global0.x) <= global0.x) | true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(-func_1()) << ((abs(u_input.b) | _wgslsmith_add_u32(~82847u, (u_input.a.x >> (u_input.b % 32u)) | u_input.a.x)) % 32u);
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(517f, global0.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, global0.x) * vec2<f32>(3119f, global0.x)))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, global0.x))))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-639f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x * global0.x)))));
    global0 = vec2<f32>(global0.x, _wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1576f, _wgslsmith_f_op_f32(627f * -841f))))));
    let var_1 = true;
    let var_2 = Struct_2(Struct_1(false), _wgslsmith_f_op_f32(ceil(global0.x)), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1f, global0.x) - _wgslsmith_f_op_f32(557f - _wgslsmith_f_op_f32(select(global0.x, global0.x, var_1)))), -1803f, 1000f), Struct_1(_wgslsmith_mult_i32(~var_0, 1i >> (1u % 32u)) < var_0), var_0);
    let var_3 = abs(vec2<u32>(~_wgslsmith_div_u32(firstTrailingBit(0u), 4184u), u_input.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(8762u);
}

