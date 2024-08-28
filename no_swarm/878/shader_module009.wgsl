struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
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

var<private> global0: array<vec2<i32>, 24>;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool, arg_1: vec2<u32>, arg_2: bool, arg_3: vec3<u32>) -> bool {
    let var_0 = 1u;
    global0 = array<vec2<i32>, 24>();
    var var_1 = arg_2;
    let var_2 = 1234f;
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_2))))) <= _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2) - _wgslsmith_f_op_f32(f32(-1f) * -403f)) * var_2)));
    return true;
}

fn func_2(arg_0: vec3<bool>, arg_1: vec3<bool>, arg_2: Struct_2) -> Struct_2 {
    var var_0 = select(select(vec4<bool>(any(arg_0), arg_2.a.a, arg_1.x, func_3(true, ~vec2<u32>(63813u, 8543u), any(arg_1), ~vec3<u32>(27090u, 0u, 51024u))), vec4<bool>(false, true, true, arg_1.x), true), select(!select(vec4<bool>(arg_1.x, arg_0.x, true, arg_1.x), vec4<bool>(arg_1.x, true, false, true), arg_1.x), vec4<bool>(false, !any(vec2<bool>(true, arg_0.x)), true, !(true && arg_1.x)), vec4<bool>(!all(vec2<bool>(arg_1.x, arg_1.x)), true, true, true)), !vec4<bool>(all(vec4<bool>(arg_0.x, arg_1.x, true, arg_0.x)) & false, arg_0.x, !func_3(arg_2.a.a, vec2<u32>(4294967295u, 0u), arg_1.x, vec3<u32>(18040u, 56393u, 0u)), any(arg_1) && true));
    var_0 = !(!(!vec4<bool>(all(vec2<bool>(arg_1.x, false)), arg_2.a.a, any(vec4<bool>(arg_0.x, arg_2.a.a, false, arg_0.x)), all(vec4<bool>(false, arg_2.a.a, true, true)))));
    let var_1 = arg_2;
    var var_2 = var_0.xz;
    let var_3 = Struct_2(var_1.a);
    return arg_2;
}

fn func_4(arg_0: Struct_2) -> f32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(580f, 606f, -1268f)) * _wgslsmith_div_vec3_f32(vec3<f32>(134f, -1101f, 977f), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1000f, -958f, -193f)))))) - _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(384f, 436f, -1821f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(557f, 1000f, 432f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1103f, 1453f, 1280f)))))));
    global0 = array<vec2<i32>, 24>();
    global0 = array<vec2<i32>, 24>();
    let var_1 = ~(~(vec4<u32>(1u, _wgslsmith_clamp_u32(14976u, 33870u, 0u), ~4294967295u, 1u) & vec4<u32>(1u, 1u, 1u, 1u)));
    global0 = array<vec2<i32>, 24>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(310f + var_0.x));
}

fn func_5(arg_0: vec4<f32>, arg_1: f32) -> bool {
    return false;
}

fn func_6(arg_0: bool, arg_1: vec3<i32>) -> i32 {
    var var_0 = true;
    var var_1 = _wgslsmith_mult_vec3_u32(vec3<u32>(1u, 1u, 1u), ~(~(~vec3<u32>(1u, 0u, 48973u))));
    global0 = array<vec2<i32>, 24>();
    let var_2 = vec2<bool>(false, 47703i < (0i ^ u_input.b));
    global0 = array<vec2<i32>, 24>();
    return ~(~_wgslsmith_mod_i32(2147483647i, 22132i));
}

fn func_1() -> StorageBuffer {
    var var_0 = ~func_6(func_5(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-2131f, -254f, -430f, 1417f))) + vec4<f32>(1365f, -1000f, -341f, -556f)), _wgslsmith_f_op_f32(func_4(func_2(vec3<bool>(false, false, true), vec3<bool>(true, true, false), Struct_2(Struct_1(false)))))), -vec3<i32>(reverseBits(-1i), u_input.b, u_input.b >> (1u % 32u)));
    var_0 = u_input.b;
    var var_1 = Struct_2(func_2(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), true), !any(vec2<bool>(false, false))), select(vec3<bool>(true, true, all(vec2<bool>(true, true))), select(select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), true), select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, false)), select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), false)), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(false, true, false)), true)), func_2(vec3<bool>(select(true, false, false), true, all(vec2<bool>(false, false))), vec3<bool>(true, true, true), func_2(vec3<bool>(false, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(true, false, false)), func_2(vec3<bool>(true, true, true), vec3<bool>(false, false, false), Struct_2(Struct_1(true)))))).a);
    var_0 = (func_6(any(!vec3<bool>(false, var_1.a.a, var_1.a.a)), vec3<i32>(-1i, _wgslsmith_sub_i32(1i, u_input.a.x), 48066i)) ^ u_input.a.x) >> (~1u % 32u);
    var_1 = Struct_2(var_1.a);
    return StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1701f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = (_wgslsmith_div_u32(4294967295u, _wgslsmith_dot_vec4_u32(select(vec4<u32>(4294967295u, 1u, 8143u, 1u), vec4<u32>(67331u, 4294967295u, 48003u, 6679u), vec4<bool>(false, true, true, false)), vec4<u32>(9639u, 0u, 0u, 50116u))) & ~(~1u)) >> (55673u % 32u);
    global0 = array<vec2<i32>, 24>();
    let var_1 = ~_wgslsmith_mod_u32(var_0, ~var_0);
    global0 = array<vec2<i32>, 24>();
    var var_2 = u_input.a.x;
    let x = u_input.a;
    s_output = func_1();
}

