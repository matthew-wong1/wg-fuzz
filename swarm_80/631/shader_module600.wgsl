struct Struct_1 {
    a: f32,
    b: bool,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_1(arg_0: f32, arg_1: f32) -> u32 {
    let var_0 = 1u;
    var var_1 = -151f;
    var var_2 = Struct_1(arg_0, true);
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_1, -1294f)))), _wgslsmith_f_op_f32(f32(-1f) * -505f)) - arg_0);
    let var_4 = ~_wgslsmith_mult_u32(1u, 1u);
    return firstLeadingBit(min(~0u, 57020u));
}

fn func_3() -> f32 {
    var var_0 = _wgslsmith_div_vec2_f32(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-1000f + 904f), -1203f)), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -880f), _wgslsmith_f_op_f32(f32(-1f) * -721f)))));
    let var_1 = Struct_3(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))), true), true);
    var var_2 = _wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))), -1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a.a * var_1.a.a) * 1302f) <= var_0.x)));
    let var_3 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -213f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -363f)), true))));
    var var_4 = Struct_3(Struct_1(var_0.x, true == !var_1.b), false);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_3 + 1301f), _wgslsmith_f_op_f32(f32(-1f) * -315f)), _wgslsmith_f_op_f32(-1675f - 1394f))) * _wgslsmith_f_op_f32(-var_3));
}

fn func_2(arg_0: u32, arg_1: f32, arg_2: i32) -> bool {
    var var_0 = vec4<u32>(arg_0, ~0u, 1u, arg_0);
    global0 = arg_0;
    let var_1 = vec2<f32>(arg_1, _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(-arg_1)));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-arg_1), -1041f == _wgslsmith_f_op_f32(step(-521f, 444f)));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) + var_1.x);
    return true;
}

fn func_4(arg_0: Struct_3) -> vec2<i32> {
    global0 = u_input.a.x;
    let var_0 = ~abs(_wgslsmith_mod_i32(-2147483647i, 1i));
    let var_1 = arg_0;
    return vec2<i32>(-_wgslsmith_sub_i32(reverseBits(~var_0), ~var_0), i32(-1i) * -8475i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(Struct_3(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1209f) + -1131f), func_2(func_1(608f, -320f), _wgslsmith_f_op_f32(abs(-1927f)), _wgslsmith_mult_i32(-22257i, 1i))), func_2(0u ^ u_input.a.x, 1000f, -2147483647i)));
    var_0 = func_4(Struct_3(Struct_1(-1092f, true), all(select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true)), vec3<bool>(true, true, true), true))));
    let var_1 = Struct_2(abs(u_input.a.yx));
    var var_2 = false;
    var_2 = false;
    var var_3 = Struct_3(Struct_1(559f, !(_wgslsmith_f_op_f32(step(1190f, -1093f)) > _wgslsmith_f_op_f32(862f + 1041f))), any(vec4<bool>(true, true, true, true)) | true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-294f * -291f), 186f, select(var_3.b, var_3.b, false) || (var_0.x == var_0.x))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_3.a.a)) - -1000f)), _wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_add_i32(var_0.x >> (0u % 32u), 2147483647i), _wgslsmith_clamp_i32(_wgslsmith_mod_i32(var_0.x, -21439i), -var_0.x, var_0.x), -37259i ^ -var_0.x, _wgslsmith_div_i32(~(-1i), _wgslsmith_div_i32(var_0.x, var_0.x))), vec4<i32>(_wgslsmith_div_i32(~var_0.x, 0i), -2147483647i, -2147483647i, firstLeadingBit(-43187i) | var_0.x)));
}

