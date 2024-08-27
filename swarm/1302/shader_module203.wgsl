struct Struct_1 {
    a: f32,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<f32>,
    d: bool,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec2<i32>,
    b: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(Struct_1(-2072f, 25272u));

var<private> global1: vec2<i32>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_2() -> Struct_1 {
    var var_0 = !select(vec4<bool>(true, true, true, true), vec4<bool>(_wgslsmith_mod_u32(45104u, 48062u) < global0.a.b, true | (global1.x == global1.x), true & all(vec2<bool>(false, true)), any(vec2<bool>(false, true))), any(vec4<bool>(true, true, true, true)) | (_wgslsmith_f_op_f32(-global0.a.a) > -569f));
    global0 = Struct_3(global0.a);
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-484f, _wgslsmith_div_f32(global0.a.a, _wgslsmith_f_op_f32(1000f * 684f)), -652f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.a)))));
    global0 = Struct_3(global0.a);
    let var_2 = Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global0.a.a - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.x), global0.a.a)))), global0.a.b);
    return Struct_1(-653f, ~1u);
}

fn func_3(arg_0: bool, arg_1: Struct_3, arg_2: vec3<u32>) -> i32 {
    let var_0 = (i32(-1i) * -1i) >= global1.x;
    let var_1 = vec2<i32>(global1.x >> (52024u % 32u), 0i);
    global0 = Struct_3(Struct_1(-1373f, u_input.b.x));
    let var_2 = _wgslsmith_f_op_f32(global0.a.a + _wgslsmith_f_op_f32(floor(312f)));
    return -21185i;
}

fn func_1(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: f32) -> vec4<f32> {
    var var_0 = select(vec2<bool>(all(vec4<bool>(true, true, true, true)), false), !select(select(vec2<bool>(true, true), vec2<bool>(false, false), true), !select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false)), true), true);
    let var_1 = false;
    global1 = _wgslsmith_mult_vec2_i32(vec2<i32>(global1.x, global1.x), vec2<i32>(-(_wgslsmith_add_i32(-12715i, 23075i) >> (u_input.b.x % 32u)), -18767i & global1.x));
    global0 = Struct_3(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global0.a.a))) - global0.a.a), abs(~global0.a.b << (_wgslsmith_add_u32(u_input.a, global0.a.b) % 32u))));
    global1 = vec2<i32>(global1.x >> (1u % 32u), func_3(var_0.x, Struct_3(func_2()), max(~(~vec3<u32>(arg_0.x, 0u, global0.a.b)), select(abs(arg_0.zyz), vec3<u32>(24236u, 37984u, 0u), select(vec3<bool>(false, true, var_1), vec3<bool>(var_0.x, true, true), var_0.x)))));
    return vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(arg_1.a)), _wgslsmith_f_op_f32(-450f + global0.a.a))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(-843f, _wgslsmith_f_op_f32(step(-101f, global0.a.a)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a.a * _wgslsmith_f_op_f32(-arg_1.a)))), _wgslsmith_f_op_f32(exp2(arg_1.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1f * global0.a.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2) - _wgslsmith_div_f32(arg_1.a, 237f)))) + -223f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0.a.a;
    let var_1 = -global1.x;
    let var_2 = global1.x;
    var var_3 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_1(~_wgslsmith_sub_vec4_u32(vec4<u32>(global0.a.b, u_input.b.x, 8350u, global0.a.b), vec4<u32>(global0.a.b, u_input.a, 13057u, global0.a.b)), global0.a, _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.a.a, global0.a.a) * _wgslsmith_f_op_f32(global0.a.a + 395f)))))));
    var var_4 = ~max(func_2().b, abs(u_input.a));
    var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1201f, -573f, -1826f, var_3.x)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(616f, 701f, global0.a.a, global0.a.a) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-743f, -968f, var_3.x, 1547f), vec4<f32>(243f, 574f, var_3.x, 1176f), false)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, var_3.x, -270f, -934f))))));
    let var_5 = func_2().b;
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec2<i32>(-1i, max(var_1 ^ 26573i, _wgslsmith_dot_vec2_i32(vec2<i32>(0i, global1.x), vec2<i32>(global1.x, var_1))))));
}

