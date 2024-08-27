struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec4<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 10>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: vec3<i32>, arg_1: bool, arg_2: u32) -> vec4<i32> {
    let var_0 = _wgslsmith_clamp_vec3_u32(~(~max(vec3<u32>(71033u, arg_2, 28746u), vec3<u32>(4294967295u, u_input.b, arg_2))), ~select(~vec3<u32>(u_input.b, arg_2, 13937u), vec3<u32>(17119u, _wgslsmith_div_u32(arg_2, 1u), arg_2), false), vec3<u32>(arg_2, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.b, arg_2, arg_2), min(vec4<u32>(1u, u_input.b, arg_2, 50550u), vec4<u32>(1u, arg_2, arg_2, 555u))), max(1u, 1u)) >> (vec3<u32>(~abs(39837u), u_input.b >> (1u % 32u), u_input.b) % vec3<u32>(32u)));
    global0 = array<vec4<f32>, 10>();
    let var_1 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(401f + -1063f)), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(618f * -380f), _wgslsmith_f_op_f32(f32(-1f) * -982f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1981f - 702f))))));
    var var_2 = -42770i;
    let var_3 = vec2<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1407f)), _wgslsmith_f_op_f32(f32(-1f) * -414f))));
    return ~vec4<i32>(15341i, (-arg_0.x | _wgslsmith_div_i32(arg_0.x, u_input.a)) << (21312u % 32u), arg_0.x, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, -6178i, i32(-1i) * -25659i, -u_input.a), _wgslsmith_sub_vec4_i32(~vec4<i32>(0i, 76162i, 31776i, -1i), vec4<i32>(u_input.a, u_input.a, arg_0.x, 0i) ^ vec4<i32>(arg_0.x, 2147483647i, -1i, arg_0.x))));
}

fn func_2() -> f32 {
    global0 = array<vec4<f32>, 10>();
    var var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(1000f)), _wgslsmith_f_op_f32(ceil(195f))) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(-489f))))) - 1f)));
    var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-995f)))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1064f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1753f - 162f))))));
    var var_1 = select(vec3<i32>(u_input.a, _wgslsmith_dot_vec4_i32((vec4<i32>(u_input.a, 9482i, u_input.a, 211i) & vec4<i32>(u_input.a, 0i, u_input.a, u_input.a)) | _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, -13838i, u_input.a, u_input.a), vec4<i32>(u_input.a, u_input.a, 1i, u_input.a)), func_3(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a, -2886i, 46209i), vec3<i32>(u_input.a, u_input.a, 10677i)), true, 1u)), -1i), ~(vec3<i32>(-1i) * -_wgslsmith_mod_vec3_i32(vec3<i32>(0i, u_input.a, u_input.a), vec3<i32>(u_input.a, 2147483647i, 1i))), !vec3<bool>(any(select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(false, false, false))), true, (-25996i << (u_input.b % 32u)) < _wgslsmith_sub_i32(2789i, u_input.a)));
    let var_2 = ~(_wgslsmith_sub_vec2_i32(~var_1.zx, -var_1.zy) | vec2<i32>(abs(var_1.x), -1i)) ^ -var_1.xz;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1553f, -254f))));
}

fn func_1(arg_0: vec2<i32>, arg_1: vec3<bool>) -> f32 {
    var var_0 = vec3<f32>(1f, 1f, 1f);
    var var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_2())))) - _wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(-324f + var_0.x))));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))) * var_0.x));
    global0 = array<vec4<f32>, 10>();
    var var_3 = Struct_1(_wgslsmith_f_op_f32(min(var_1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + _wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(-var_0.x))))));
    return -936f;
}

fn func_4(arg_0: vec2<f32>, arg_1: f32, arg_2: i32, arg_3: vec4<bool>) -> Struct_1 {
    let var_0 = true;
    var var_1 = arg_0;
    return Struct_1(-474f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-746f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec2<i32>(u_input.a, 0i), vec3<bool>(false, true, true)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -127f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-202f, -783f))))), 1i, !select(select(select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false), false), select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true), false), vec4<bool>(true, true, false, false)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), true), !(u_input.b >= 42968u)));
    global0 = array<vec4<f32>, 10>();
    let var_1 = -19711i;
    global0 = array<vec4<f32>, 10>();
    global0 = array<vec4<f32>, 10>();
    let var_2 = !select(vec2<bool>(all(vec2<bool>(true, true)), true), select(vec2<bool>(false, select(true, false, false)), vec2<bool>(true, true), vec2<bool>(true, u_input.b >= 1u)), !(!select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true))));
    global0 = array<vec4<f32>, 10>();
    global0 = array<vec4<f32>, 10>();
    global0 = array<vec4<f32>, 10>();
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(0u, 63357u, 1u, u_input.b)), vec4<u32>(~u_input.b, 4294967295u, _wgslsmith_div_u32(u_input.b, 20465u), u_input.b))), 1258f, vec4<u32>(~33213u, _wgslsmith_clamp_u32(1u, _wgslsmith_dot_vec2_u32(~vec2<u32>(20436u, u_input.b), min(vec2<u32>(u_input.b, u_input.b), vec2<u32>(u_input.b, 29348u))), 1u), _wgslsmith_clamp_u32(~u_input.b, _wgslsmith_clamp_u32(abs(0u), ~u_input.b, ~u_input.b), u_input.b & ~u_input.b), 0u), u_input.b);
}

