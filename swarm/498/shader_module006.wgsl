struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: f32,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: vec3<f32>,
    d: bool,
}

struct Struct_4 {
    a: i32,
    b: f32,
}

struct Struct_5 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
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

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: i32) -> bool {
    let var_0 = !select(vec3<bool>(true, true, true), vec3<bool>(any(vec2<bool>(true, true)), true, any(select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, false), true))), vec3<bool>(~arg_0 <= (arg_0 >> (arg_0 % 32u)), any(vec4<bool>(true, true, true, true)), true));
    return !(!var_0.x | all(var_0.yz));
}

fn func_2(arg_0: u32) -> vec4<f32> {
    let var_0 = vec2<bool>(false, func_3(14059u, Struct_1(_wgslsmith_clamp_i32(38621i, -41646i, u_input.a.x)), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(268f, 565f, -1293f)), vec3<f32>(-1000f, -837f, 124f))))), u_input.a.x));
    return vec4<f32>(_wgslsmith_f_op_f32(-103f + -1000f), -250f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(522f - -357f))) - 473f)), _wgslsmith_f_op_f32(step(-1905f, 481f)));
}

fn func_1(arg_0: f32) -> Struct_4 {
    let var_0 = 2366f;
    let var_1 = _wgslsmith_mult_vec3_i32(vec3<i32>(abs(-_wgslsmith_dot_vec4_i32(vec4<i32>(12206i, u_input.a.x, -58212i, u_input.a.x), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x))), 2147483647i, -32679i), _wgslsmith_clamp_vec3_i32(abs(~u_input.a) & u_input.a, u_input.a, vec3<i32>(-1i) * -vec3<i32>(-2147483647i, -2147483647i, 0i)));
    var var_2 = !vec2<bool>(_wgslsmith_f_op_f32(-428f + _wgslsmith_f_op_f32(ceil(var_0))) <= arg_0, false);
    var var_3 = vec3<u32>(_wgslsmith_div_u32(~(~(~1u)), firstTrailingBit(~23317u)), ~(~(~(~4294967295u))), 28412u);
    let var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2(1u)));
    return Struct_4(_wgslsmith_sub_i32(-_wgslsmith_mod_i32(-2055i, 1i), min(_wgslsmith_add_i32(var_1.x, var_1.x) << (var_3.x % 32u), _wgslsmith_clamp_i32(-31048i, min(0i, 0i), 0i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1201f + arg_0)) * -937f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(-778f);
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(3281f, var_0.b, var_0.b) * vec3<f32>(1413f, 1601f, -592f)))) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1132f, -520f, 238f), _wgslsmith_f_op_vec3_f32(vec3<f32>(742f, -722f, var_0.b) * vec3<f32>(138f, -1000f, var_0.b)), false)))));
    var var_2 = any(vec4<bool>(true, true, true, true));
    let var_3 = select(select(vec2<bool>(any(vec2<bool>(false, false)) && all(vec3<bool>(false, false, false)), true), vec2<bool>(all(vec2<bool>(true, true)), true), !all(vec4<bool>(true, true, true, true))), !vec2<bool>(true, any(vec4<bool>(false, false, false, true)) | true), vec2<bool>(all(vec2<bool>(true, true)), true | any(vec4<bool>(true, true, true, true))));
    var var_4 = Struct_1(~var_0.a);
    var var_5 = Struct_2(Struct_1(u_input.a.x), select(select(vec4<bool>(var_3.x & true, !var_3.x, true, false), select(!vec4<bool>(var_3.x, var_3.x, false, var_3.x), select(vec4<bool>(true, var_3.x, var_3.x, var_3.x), vec4<bool>(var_3.x, false, var_3.x, false), vec4<bool>(var_3.x, var_3.x, true, var_3.x)), !vec4<bool>(false, var_3.x, var_3.x, var_3.x)), !select(vec4<bool>(true, var_3.x, var_3.x, var_3.x), vec4<bool>(false, false, true, var_3.x), var_3.x)), select(vec4<bool>(true, !var_3.x, true, all(vec3<bool>(false, var_3.x, false))), select(vec4<bool>(true, var_3.x, true, var_3.x), !vec4<bool>(true, true, var_3.x, var_3.x), select(false, var_3.x, var_3.x)), select(select(vec4<bool>(var_3.x, true, true, var_3.x), vec4<bool>(true, false, var_3.x, var_3.x), vec4<bool>(false, var_3.x, true, var_3.x)), select(vec4<bool>(false, var_3.x, false, true), vec4<bool>(var_3.x, false, false, var_3.x), vec4<bool>(true, false, false, var_3.x)), false)), !select(select(vec4<bool>(var_3.x, false, var_3.x, false), vec4<bool>(var_3.x, var_3.x, false, var_3.x), false), select(vec4<bool>(true, var_3.x, var_3.x, var_3.x), vec4<bool>(true, true, false, false), true), !vec4<bool>(false, var_3.x, true, false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_2(_wgslsmith_div_u32(~1u, 17611u))).x));
    let var_6 = var_5.a;
    var_0 = func_1(224f);
    let var_7 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_5.c + _wgslsmith_f_op_f32(var_0.b + var_1.x)) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1171f + func_1(-1168f).b))));
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u);
}

