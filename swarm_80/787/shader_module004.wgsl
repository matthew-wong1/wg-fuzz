struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: vec4<f32>,
    d: u32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec4<f32>,
}

struct Struct_3 {
    a: bool,
    b: vec3<f32>,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: bool,
    b: u32,
    c: i32,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(false, true, false);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_5) -> bool {
    let var_0 = u_input.a | 35774i;
    var var_1 = arg_0;
    global0 = select(!select(!(!vec3<bool>(true, global0.x, var_1.b)), !vec3<bool>(arg_0.b, global0.x, true), (var_1.a.x << (u_input.b % 32u)) >= u_input.a), select(select(select(vec3<bool>(true, arg_1.a, arg_1.a), select(vec3<bool>(global0.x, false, global0.x), vec3<bool>(true, false, global0.x), vec3<bool>(false, false, var_1.b)), 4294967295u <= arg_1.b), select(!vec3<bool>(false, global0.x, true), !vec3<bool>(false, arg_0.b, true), !vec3<bool>(false, var_1.b, false)), true), select(!vec3<bool>(var_1.b, global0.x, true), vec3<bool>(false, all(vec2<bool>(global0.x, arg_1.d)), all(vec2<bool>(false, true))), !(!vec3<bool>(false, false, arg_0.b))), !(!arg_0.b)), !select(select(select(vec3<bool>(arg_0.b, arg_1.d, global0.x), vec3<bool>(true, false, arg_1.d), vec3<bool>(false, true, arg_0.b)), select(vec3<bool>(global0.x, false, true), vec3<bool>(var_1.b, arg_0.b, true), vec3<bool>(true, false, false)), !vec3<bool>(false, arg_1.a, arg_0.b)), select(!vec3<bool>(false, arg_0.b, var_1.b), !vec3<bool>(arg_1.a, arg_1.d, arg_0.b), vec3<bool>(global0.x, false, arg_0.b)), vec3<bool>(false, !var_1.b, any(vec4<bool>(false, false, var_1.b, arg_1.d)))));
    var var_2 = -(arg_0.a.x ^ -1i);
    var var_3 = firstTrailingBit(vec3<u32>(~_wgslsmith_div_u32(abs(var_1.d), 16444u), 50628u, abs(min(min(u_input.c, var_1.d), 28000u))));
    return !(true || arg_1.a);
}

fn func_2(arg_0: u32, arg_1: vec4<f32>) -> i32 {
    var var_0 = 2147483647i;
    var_0 = -1i;
    var_0 = u_input.a;
    global0 = !vec3<bool>(global0.x, !(any(vec4<bool>(true, global0.x, global0.x, global0.x)) | global0.x), all(!vec3<bool>(false, global0.x, false)) | func_3(Struct_1(vec2<i32>(37711i, u_input.a), global0.x, vec4<f32>(arg_1.x, -501f, arg_1.x, arg_1.x), 121856u), Struct_5(global0.x, 4294967295u, 42369i, global0.x)));
    global0 = select(!vec3<bool>(true, global0.x, global0.x), vec3<bool>(func_3(Struct_1(~vec2<i32>(71359i, u_input.a), any(vec3<bool>(global0.x, false, global0.x)), arg_1, 0u), Struct_5(true, _wgslsmith_div_u32(0u, 1u), 40729i, true)), firstTrailingBit(-1i) == -2147483647i, false), false);
    return 15186i;
}

fn func_1() -> vec3<bool> {
    let var_0 = vec2<i32>(u_input.a ^ func_2(u_input.c, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(589f, -2072f, -1079f, 1562f) * vec4<f32>(-1000f, 1928f, 437f, 386f)), vec4<f32>(-1249f, 1098f, 640f, -786f))), u_input.a);
    global0 = vec3<bool>(global0.x, global0.x, true);
    global0 = select(!vec3<bool>(global0.x, true, abs(u_input.b) != 16896u), select(select(vec3<bool>(true, true, true), select(select(vec3<bool>(true, global0.x, true), vec3<bool>(true, true, true), true), vec3<bool>(true, global0.x, global0.x), select(true, global0.x, true)), false), select(select(vec3<bool>(false, false, global0.x), vec3<bool>(true, false, global0.x), !global0.x), select(vec3<bool>(true, true, true), select(vec3<bool>(true, global0.x, global0.x), vec3<bool>(global0.x, false, global0.x), false), select(vec3<bool>(false, false, false), vec3<bool>(global0.x, global0.x, false), true)), true), select(!select(vec3<bool>(true, global0.x, global0.x), vec3<bool>(global0.x, false, global0.x), vec3<bool>(false, true, global0.x)), vec3<bool>(!global0.x, any(vec3<bool>(global0.x, global0.x, global0.x)), global0.x), vec3<bool>(true, global0.x, false))), select(vec3<bool>(true, all(!vec4<bool>(false, true, global0.x, true)), true), vec3<bool>(global0.x, !global0.x & false, false), vec3<bool>(true, true, -1776f <= _wgslsmith_f_op_f32(ceil(-243f)))));
    global0 = !select(vec3<bool>(!func_3(Struct_1(var_0, global0.x, vec4<f32>(630f, 168f, -795f, 696f), u_input.b), Struct_5(global0.x, 19746u, -39077i, global0.x)), any(!vec2<bool>(global0.x, true)), true), select(vec3<bool>(true, true, true), !select(vec3<bool>(false, true, global0.x), vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(false, true, global0.x)), false), vec3<bool>(true, false, all(select(vec4<bool>(global0.x, true, true, true), vec4<bool>(false, false, global0.x, true), vec4<bool>(global0.x, global0.x, true, global0.x)))));
    var var_1 = Struct_4(Struct_2(min(~_wgslsmith_mod_vec3_i32(vec3<i32>(var_0.x, 8294i, 2147483647i), vec3<i32>(0i, -1684i, 13312i)), min(_wgslsmith_mult_vec3_i32(vec3<i32>(1i, 1i, var_0.x), vec3<i32>(-16804i, -7272i, var_0.x)), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, -12445i, u_input.a), vec3<i32>(var_0.x, 48605i, -13530i)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1190f, _wgslsmith_f_op_f32(f32(-1f) * -1186f), 1000f, _wgslsmith_div_f32(1000f, 1946f)))));
    return !(!select(select(!vec3<bool>(global0.x, global0.x, false), vec3<bool>(true, true, true), !vec3<bool>(global0.x, false, false)), !vec3<bool>(global0.x, true, false), _wgslsmith_f_op_f32(1434f - -1076f) == _wgslsmith_f_op_f32(-1361f * var_1.a.b.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = !(!select(select(!vec3<bool>(global0.x, global0.x, false), select(vec3<bool>(true, true, false), vec3<bool>(global0.x, true, true), true), !vec3<bool>(false, true, global0.x)), func_1(), select(!vec3<bool>(true, global0.x, true), vec3<bool>(global0.x, true, true), func_1())));
    let var_0 = Struct_4(Struct_2(vec3<i32>(-1i) * -vec3<i32>(u_input.a, u_input.a, u_input.a), vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -255f))), _wgslsmith_f_op_f32(f32(-1f) * -397f), 1f, -1000f)));
    var var_1 = reverseBits(firstTrailingBit(1i)) < -2147483647i;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(min(2539f, -852f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.b.x * var_0.a.b.x) - var_0.a.b.x) - 394f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.b.x * -1000f) + _wgslsmith_f_op_f32(select(1165f, 1236f, true)))), var_0.a.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.b.x)));
}

