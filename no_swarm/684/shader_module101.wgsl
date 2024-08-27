struct Struct_1 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
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

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: Struct_1) -> bool {
    let var_0 = arg_0;
    global0 = false;
    var var_1 = var_0;
    let var_2 = !(!all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)));
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(2003f, -290f)))))));
    return var_2;
}

fn func_3(arg_0: Struct_1, arg_1: f32) -> vec4<i32> {
    var var_0 = vec2<bool>(true, !(!((arg_1 != -164f) | any(vec2<bool>(true, false)))));
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(arg_1, -333f), _wgslsmith_f_op_f32(select(-268f, arg_1, true)))) * vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_1, arg_1, true))), _wgslsmith_f_op_f32(sign(arg_1)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(692f, 1143f), vec2<f32>(1506f, 1483f), vec2<bool>(var_0.x, var_0.x))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-653f, arg_1))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(892f, 997f), vec2<f32>(arg_1, 549f))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, arg_1) + vec2<f32>(-481f, 1270f))))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-789f, arg_1)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, arg_1) + vec2<f32>(arg_1, -1961f))))));
    global0 = true;
    let var_2 = select(select(vec4<bool>(var_0.x, _wgslsmith_f_op_f32(select(589f, var_1.x, var_0.x)) >= -158f, true, all(!vec4<bool>(false, var_0.x, true, var_0.x))), vec4<bool>(true, !(14919u <= u_input.b), !var_0.x || var_0.x, var_0.x), !(!vec4<bool>(var_0.x, var_0.x, true, false))), select(vec4<bool>(var_0.x, any(!vec2<bool>(false, var_0.x)), all(vec4<bool>(false, true, var_0.x, false)), false), select(select(vec4<bool>(false, var_0.x, var_0.x, false), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), true), !select(vec4<bool>(var_0.x, true, var_0.x, true), vec4<bool>(false, false, false, false), var_0.x), !select(vec4<bool>(var_0.x, var_0.x, true, false), vec4<bool>(true, var_0.x, var_0.x, false), var_0.x)), true || var_0.x), vec4<bool>(!(!(var_0.x == false)), var_0.x, var_0.x, all(!select(vec4<bool>(var_0.x, var_0.x, true, false), vec4<bool>(false, var_0.x, true, var_0.x), vec4<bool>(false, var_0.x, var_0.x, var_0.x)))));
    var var_3 = arg_0;
    return abs(min(~firstLeadingBit(vec4<i32>(0i, u_input.c, 1i, -15803i)), vec4<i32>(_wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(u_input.d.x, u_input.a.x)), vec2<i32>(arg_0.a.x, -2147483647i) & var_3.a.xz), abs(countOneBits(0i)), -_wgslsmith_add_i32(u_input.d.x, arg_0.a.x), u_input.c)));
}

fn func_1(arg_0: u32, arg_1: i32, arg_2: i32, arg_3: Struct_1) -> Struct_1 {
    global0 = !func_2(Struct_1(firstLeadingBit(~arg_3.a)));
    var var_0 = ~1u;
    var_0 = 51071u;
    let var_1 = ~(~_wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(select(vec4<i32>(u_input.d.x, arg_2, -12418i, arg_1), vec4<i32>(20486i, arg_2, arg_2, -18425i), true), ~vec4<i32>(1i, -2147483647i, arg_3.a.x, arg_1)), _wgslsmith_sub_vec4_i32(func_3(arg_3, -193f), vec4<i32>(arg_2, arg_1, -7023i, arg_2))));
    var var_2 = select(vec4<bool>(true && !any(vec4<bool>(true, false, false, true)), true & any(select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true), false)), true, true), vec4<bool>(false, false, !func_2(arg_3), false), true);
    return Struct_1(func_3(arg_3, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1110f - -694f))))).ywy);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: vec4<u32>) -> i32 {
    let var_0 = func_1(countOneBits(9849u), 20499i, u_input.c, Struct_1(vec3<i32>(37238i, 1i, _wgslsmith_clamp_i32(-2147483647i, 2147483647i, arg_1.a.x)) ^ vec3<i32>(~arg_2.x, _wgslsmith_sub_i32(0i, 16775i), ~arg_2.x))).a;
    let var_1 = ~(abs(~u_input.b) << (countOneBits(arg_3.x ^ _wgslsmith_clamp_u32(110596u, 1u, u_input.b)) % 32u));
    global0 = all(vec3<bool>(all(vec2<bool>(true, true)), true, 97948u > ~_wgslsmith_clamp_u32(var_1, u_input.b, 67280u)));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-745f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-464f + 606f))))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-416f + -1883f) + -1648f)) * _wgslsmith_f_op_f32(step(782f, -499f))));
    let var_3 = arg_0;
    return 38115i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b;
    var var_1 = Struct_1(-u_input.d);
    let var_2 = Struct_1(-(vec3<i32>(-1i) * -(vec3<i32>(-69182i, var_1.a.x, -2147483647i) ^ u_input.a)));
    let var_3 = var_2;
    let var_4 = Struct_1(-vec3<i32>(-17919i, func_4(func_1(var_0, -1i, var_2.a.x, var_3), Struct_1(var_1.a), _wgslsmith_add_vec4_i32(vec4<i32>(1i, u_input.d.x, -1i, var_2.a.x), vec4<i32>(var_3.a.x, -16023i, 1i, -1i)), select(vec4<u32>(u_input.b, var_0, 0u, 46344u), vec4<u32>(0u, u_input.b, u_input.b, var_0), false)), _wgslsmith_mod_i32(54818i, var_3.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(_wgslsmith_clamp_u32(1u, select(u_input.b, _wgslsmith_mod_u32(29329u, u_input.b), var_0 >= u_input.b), ~36351u), ~0u));
}

