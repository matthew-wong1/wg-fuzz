struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: vec4<f32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 14> = array<vec2<f32>, 14>(vec2<f32>(1138f, -752f), vec2<f32>(-621f, 1436f), vec2<f32>(-261f, -1000f), vec2<f32>(602f, -187f), vec2<f32>(-608f, 731f), vec2<f32>(1712f, 1418f), vec2<f32>(700f, -529f), vec2<f32>(-981f, -310f), vec2<f32>(1249f, 776f), vec2<f32>(207f, -691f), vec2<f32>(473f, 454f), vec2<f32>(106f, -179f), vec2<f32>(-533f, 670f), vec2<f32>(-351f, 286f));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: i32, arg_1: vec3<bool>, arg_2: Struct_1, arg_3: i32) -> Struct_1 {
    let var_0 = arg_2;
    let var_1 = u_input.b.wyz;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(1621f, -269f)), -1634f));
    global0 = array<vec2<f32>, 14>();
    var var_3 = abs(~vec2<u32>(4294967295u | u_input.a.x, var_1.x)) >> (_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, 36058u), u_input.b.xy) % vec2<u32>(32u));
    return var_0;
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: f32) -> vec3<bool> {
    var var_0 = u_input.b.x;
    var var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, arg_0.x, _wgslsmith_f_op_f32(f32(-1f) * -217f)) * vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-459f - arg_0.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(417f, arg_0.x)))), arg_3));
    var var_2 = arg_1;
    let var_3 = select(select(vec4<bool>(false, true, true, (var_2.a << (u_input.a.x % 32u)) >= -var_2.a), select(select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false), true), vec4<bool>(true, any(vec3<bool>(false, true, true)), select(false, true, false), true), vec4<bool>(any(vec4<bool>(true, true, true, false)), all(vec4<bool>(false, true, false, false)), true, true)), _wgslsmith_sub_i32(firstTrailingBit(arg_1.a), _wgslsmith_add_i32(86159i, 1i)) <= var_2.a), !vec4<bool>(true, all(select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, true), true)), true, false), !select(!select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false), true), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), true), vec4<bool>(true, true, true, true)));
    let var_4 = any(!vec3<bool>(all(var_3.ywx), firstTrailingBit(7736i) <= var_2.a, any(vec2<bool>(true, var_3.x))));
    return var_3.wxy;
}

fn func_1(arg_0: Struct_1, arg_1: f32, arg_2: vec2<i32>) -> f32 {
    let var_0 = arg_0;
    let var_1 = arg_0;
    global0 = array<vec2<f32>, 14>();
    global0 = array<vec2<f32>, 14>();
    var var_2 = !func_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(400f, arg_1, 131f) + vec3<f32>(-807f, 161f, 1000f)), vec3<f32>(arg_1, -622f, arg_1))), var_0, func_2(arg_2.x, vec3<bool>(true, true, true), Struct_1(-var_0.a), 2147483647i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 + 1000f)));
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<f32>, 14>();
    var var_0 = Struct_1(1i);
    global0 = array<vec2<f32>, 14>();
    let var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(599f))))))));
    var var_2 = Struct_1(~_wgslsmith_sub_i32(var_0.a, -1i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_i32(1i, var_2.a), vec3<f32>(_wgslsmith_f_op_f32(func_1(Struct_1(var_2.a), 541f, _wgslsmith_mult_vec2_i32(select(vec2<i32>(var_0.a, var_0.a), vec2<i32>(var_2.a, 0i), vec2<bool>(false, false)), vec2<i32>(var_0.a, 2147483647i) ^ vec2<i32>(22650i, var_0.a)))), _wgslsmith_div_f32(var_1, _wgslsmith_f_op_f32(1165f - _wgslsmith_f_op_f32(f32(-1f) * -1173f))), 1335f), vec4<f32>(_wgslsmith_f_op_f32(abs(-270f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(var_1)), _wgslsmith_f_op_f32(372f * var_1), any(vec4<bool>(false, false, true, false)))) + var_1), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(688f * var_1) * 2220f), _wgslsmith_f_op_f32(325f + _wgslsmith_f_op_f32(843f * var_1))), var_1), ~(_wgslsmith_add_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(var_2.a, 1i), vec2<i32>(-2147483647i, var_0.a)), ~vec2<i32>(-50440i, 12248i)) >> (~vec2<u32>(43505u, 4294967295u) % vec2<u32>(32u))));
}

