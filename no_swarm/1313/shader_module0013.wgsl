struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec3<f32>,
    c: Struct_1,
    d: Struct_2,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_2() -> Struct_1 {
    return Struct_1(-1114f);
}

fn func_1(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: u32) -> Struct_2 {
    global0 = _wgslsmith_mult_vec2_i32(-_wgslsmith_mult_vec2_i32(u_input.b.wy, vec2<i32>(global0.x, u_input.a << (arg_2 % 32u))), ~vec2<i32>(_wgslsmith_add_i32(u_input.a | u_input.b.x, u_input.b.x), -1i));
    global0 = u_input.b.yw;
    var var_0 = _wgslsmith_div_vec3_f32(arg_1, _wgslsmith_div_vec3_f32(vec3<f32>(-647f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-2595f + -726f), _wgslsmith_f_op_f32(-110f + 859f))), _wgslsmith_f_op_f32(f32(-1f) * -100f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_1) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1638f, -935f, arg_0.a.a))))));
    var var_1 = func_2();
    let var_2 = arg_0;
    return var_2;
}

fn func_3(arg_0: Struct_2, arg_1: Struct_3, arg_2: vec3<f32>, arg_3: f32) -> i32 {
    global0 = vec2<i32>(_wgslsmith_sub_i32(select(~(-7892i), max(_wgslsmith_mult_i32(global0.x, global0.x), u_input.a), true), 1i), -2147483647i);
    let var_0 = u_input.b.xxw;
    global0 = -vec2<i32>(_wgslsmith_sub_i32(_wgslsmith_mod_i32(u_input.a, arg_1.e), _wgslsmith_clamp_i32(u_input.a << (1040u % 32u), _wgslsmith_div_i32(u_input.a, var_0.x), abs(-2147483647i))), arg_1.e);
    global0 = vec2<i32>(-2147483647i, arg_1.e);
    let var_1 = vec2<bool>(true, all(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true))) == true);
    return -1i;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = select(abs(vec2<i32>(func_3(func_1(Struct_2(Struct_1(886f)), vec3<f32>(1718f, 1000f, -381f), 0u), Struct_3(vec3<f32>(-399f, 259f, 971f), vec3<f32>(683f, -354f, -750f), Struct_1(-715f), Struct_2(Struct_1(-271f)), 14287i), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1419f, -934f, 832f)), -544f), -(global0.x & 1i))), u_input.b.xw, !vec2<bool>(true, all(vec4<bool>(true, true, true, true))));
    let var_0 = select(vec3<bool>(true, any(select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, false), true), vec2<bool>(false, true))), all(select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true))))), vec3<bool>(true, true, true), select(vec3<bool>(any(select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), true)), !select(true, false, true), false), !(!select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), false)), _wgslsmith_f_op_f32(select(-864f, -198f, false)) >= 1150f));
    var var_1 = u_input.b;
    global0 = var_1.wx;
    var var_2 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-107f - 200f))))), -639f));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mult_u32(_wgslsmith_clamp_u32(0u, 4294967295u, 0u) >> (~4294967295u % 32u), 40757u), _wgslsmith_f_op_f32(var_2.a * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.a), -435f)));
}

