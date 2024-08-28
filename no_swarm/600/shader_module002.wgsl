struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: u32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: Struct_1, arg_3: Struct_1) -> u32 {
    return ~1u;
}

fn func_2(arg_0: u32) -> f32 {
    var var_0 = vec2<u32>(func_3(Struct_1(countOneBits(1u)), abs(_wgslsmith_add_vec4_i32(~vec4<i32>(u_input.c, -37829i, -23362i, -9916i), vec4<i32>(u_input.b, 16109i, 55182i, 86975i))), Struct_1(arg_0), Struct_1(arg_0)), 4294967295u);
    var var_1 = Struct_2(select(countOneBits(~vec4<i32>(1i, u_input.c, u_input.b, u_input.c) | ~vec4<i32>(u_input.c, 49946i, u_input.b, 0i)), ~max(vec4<i32>(u_input.b, 2147483647i, u_input.c, u_input.c), ~vec4<i32>(u_input.b, 12946i, -26822i, u_input.c)), vec4<bool>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, u_input.b, u_input.b), vec3<i32>(u_input.b, -1i, 2147483647i)) >= _wgslsmith_dot_vec2_i32(vec2<i32>(-73209i, u_input.b), vec2<i32>(0i, u_input.b)), all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true))), _wgslsmith_div_i32(u_input.c, u_input.b) < countOneBits(u_input.c), true)));
    let var_2 = true;
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(369f, global0.x, -512f), _wgslsmith_f_op_vec3_f32(vec3<f32>(608f, global0.x, -934f) - vec3<f32>(global0.x, 267f, 1779f))) * vec3<f32>(-547f, 225f, _wgslsmith_f_op_f32(select(global0.x, 2100f, true))))) - vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -593f), -598f, 869f));
    let var_3 = _wgslsmith_f_op_f32(exp2(global0.x));
    return var_3;
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: vec3<bool>) -> f32 {
    var var_0 = Struct_2(min(vec4<i32>(-1i) * -(vec4<i32>(u_input.b, u_input.c, -1i, -27635i) | vec4<i32>(-2147483647i, u_input.b, 58597i, -1i)), min(_wgslsmith_div_vec4_i32(-vec4<i32>(1i, u_input.b, -1i, -30933i), vec4<i32>(2147483647i, -6486i, 0i, u_input.c) | vec4<i32>(0i, -2147483647i, u_input.c, u_input.b)), firstTrailingBit(-vec4<i32>(-1i, 18029i, 1i, u_input.c)))));
    var var_1 = ~(~max(_wgslsmith_add_vec2_u32(u_input.a.xw, u_input.a.ww), abs(~u_input.a.wx)));
    var_1 = firstTrailingBit(~vec2<u32>(~arg_1.a, var_1.x | u_input.a.x)) & ~vec2<u32>(1u, _wgslsmith_mod_u32(arg_1.a, arg_1.a << (arg_1.a % 32u)));
    var_1 = u_input.a.ww;
    let var_2 = arg_1;
    return -968f;
}

fn func_1(arg_0: vec2<bool>, arg_1: bool, arg_2: u32) -> f32 {
    global0 = vec3<f32>(global0.x, _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_f32(func_2(36518u)), Struct_1(1u), vec3<bool>(true, arg_1, arg_0.x))), _wgslsmith_f_op_f32(-388f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(global0.x)))) + global0.x)));
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(106f, global0.x, -363f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-607f, global0.x, global0.x))), vec3<f32>(_wgslsmith_f_op_f32(func_4(global0.x, Struct_1(u_input.a.x), vec3<bool>(arg_0.x, arg_1, arg_1))), -202f, global0.x))))));
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1791f)) - 523f), -1084f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(-1000f)), -2251f)))));
    var var_0 = false;
    var var_1 = true;
    return _wgslsmith_f_op_f32(-global0.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global0.x * global0.x))), -1599f, _wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(step(-242f, -698f))))));
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-184f)), _wgslsmith_f_op_f32(-709f * _wgslsmith_f_op_f32(105f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * -113f) * _wgslsmith_f_op_f32(func_1(vec2<bool>(false, true), true, u_input.a.x))))));
    var var_2 = -58718i >= ~_wgslsmith_div_i32(u_input.c, u_input.b);
    var var_3 = var_1;
    let var_4 = _wgslsmith_f_op_f32(abs(-134f));
    var var_5 = Struct_1(_wgslsmith_mult_u32(12025u, _wgslsmith_dot_vec2_u32(~u_input.a.zy, ~u_input.a.zx)));
    let var_6 = 491f;
    var_3 = _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-908f + var_4), global0.x)) * _wgslsmith_f_op_f32(func_1(vec2<bool>(false, false), false, var_5.a >> (4294967295u % 32u))))), -269f));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(vec2<bool>(true, false), true, 4294967295u)) * -1090f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_1(vec2<bool>(false, true), false, 25120u)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(var_0.x))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global0.x))), -1000f), _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.c, 2147483647i), ~vec2<i32>(14614i, u_input.b)), abs(vec2<i32>(u_input.b, u_input.c))), u_input.c, -45977i), ~_wgslsmith_mult_u32(~reverseBits(26011u), _wgslsmith_dot_vec2_u32(u_input.a.yz & u_input.a.xz, ~u_input.a.yy)), vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-474f + _wgslsmith_f_op_f32(abs(1561f))))), var_1, _wgslsmith_f_op_f32(ceil(var_0.x))));
}

