struct Struct_1 {
    a: bool,
    b: i32,
    c: vec4<f32>,
    d: vec2<i32>,
    e: f32,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec4<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: Struct_2, arg_3: Struct_1) -> vec2<f32> {
    return vec2<f32>(-650f, _wgslsmith_f_op_f32(f32(-1f) * -1298f));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_2) -> vec2<i32> {
    return arg_0.yw;
}

fn func_2(arg_0: f32) -> Struct_2 {
    let var_0 = ~u_input.b;
    global0 = 2147483647i < _wgslsmith_mult_i32(var_0.x, reverseBits(0i));
    var var_1 = vec2<bool>(!any(vec4<bool>(true, true, true, true)), false);
    var var_2 = func_3(vec4<i32>(0i, -37705i, 1i, i32(-1i) * -2147483647i), Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(arg_0, arg_0), vec2<f32>(-532f, arg_0))))))));
    let var_3 = Struct_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 - -1058f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_0)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, 1391f) - vec2<f32>(-1287f, arg_0)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(786f, 479f))))));
    return var_3;
}

fn func_4(arg_0: Struct_2, arg_1: i32, arg_2: f32, arg_3: vec2<f32>) -> Struct_2 {
    global0 = any(!vec2<bool>(select(false, any(vec2<bool>(false, false)), true), !any(vec3<bool>(false, false, true))));
    global0 = true;
    global0 = 63421u < u_input.c.x;
    var var_0 = true;
    let var_1 = func_3(_wgslsmith_div_vec4_i32(vec4<i32>(arg_1, u_input.e, i32(-1i) * -16770i, reverseBits(u_input.e)) | ~(~u_input.b), vec4<i32>(u_input.b.x, ~arg_1, _wgslsmith_dot_vec2_i32(vec2<i32>(23062i, u_input.b.x), u_input.b.yx) >> (u_input.a.x % 32u), arg_1)), func_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2) + -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_3.x)))))).x;
    return arg_0;
}

fn func_5(arg_0: Struct_2, arg_1: f32, arg_2: Struct_2, arg_3: i32) -> bool {
    let var_0 = u_input.a;
    var var_1 = arg_0;
    var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(2078f, arg_2.a.x) * var_1.a) + vec2<f32>(-901f, 277f)), vec2<f32>(arg_2.a.x, -1382f)))));
    let var_2 = !select(vec2<bool>(any(vec4<bool>(true, true, true, true)), true), !select(vec2<bool>(true, false), vec2<bool>(false, false), true), true);
    var var_3 = u_input.d;
    return var_2.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b.x >> (u_input.a.x % 32u);
    let var_1 = -237f;
    var var_2 = func_5(Struct_2(_wgslsmith_div_vec2_f32(vec2<f32>(var_1, _wgslsmith_f_op_f32(ceil(var_1))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(func_1(vec4<f32>(-531f, -104f, var_1, -161f), Struct_1(true, -1i, vec4<f32>(-473f, 826f, var_1, 569f), vec2<i32>(4471i, u_input.b.x), -555f), Struct_2(vec2<f32>(var_1, 1091f)), Struct_1(true, u_input.e, vec4<f32>(263f, -1000f, var_1, var_1), vec2<i32>(1i, -21597i), 1000f))))))), 1f, func_4(func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2335f - var_1))), -6218i, _wgslsmith_f_op_f32(693f + _wgslsmith_f_op_f32(-var_1)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1177f, var_1), vec2<f32>(-781f, var_1), true)) + vec2<f32>(var_1, -1000f)))), u_input.e);
    var var_3 = Struct_1(func_5(func_2(1201f), 663f, Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-888f, -1125f))), _wgslsmith_sub_i32(u_input.b.x, -2147483647i << (u_input.d % 32u))) & !(any(vec3<bool>(true, true, true)) != false), firstLeadingBit(~(-1i)), vec4<f32>(var_1, var_1, 812f, _wgslsmith_f_op_f32(-716f * _wgslsmith_div_f32(var_1, _wgslsmith_f_op_f32(-1000f + -2146f)))), vec2<i32>(-2147483647i, _wgslsmith_mult_i32(u_input.e, u_input.e)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(var_1, -350f)))));
    var_0 = var_3.d.x;
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec3<i32>(_wgslsmith_mult_i32(u_input.e, _wgslsmith_dot_vec2_i32(vec2<i32>(var_3.d.x, 1i), vec2<i32>(var_3.b, 1i))), -abs(41493i), u_input.e)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(220f)) * _wgslsmith_f_op_f32(-1000f * func_2(var_3.e).a.x)), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -637f), _wgslsmith_f_op_f32(-1f)));
}

