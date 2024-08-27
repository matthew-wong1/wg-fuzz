struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec4<i32>,
}

struct Struct_4 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: vec2<u32>,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 30>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: i32) -> f32 {
    var var_0 = vec3<u32>(firstTrailingBit(~_wgslsmith_dot_vec2_u32(select(u_input.b, u_input.c, vec2<bool>(false, true)), countOneBits(vec2<u32>(52833u, 66855u)))), firstTrailingBit(~(~_wgslsmith_div_u32(u_input.c.x, u_input.c.x))), u_input.b.x);
    let var_1 = _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1887f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-974f - 1067f) + -1000f)), _wgslsmith_div_f32(-419f, 1f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(996f))), -1000f))));
    return -818f;
}

fn func_2(arg_0: vec4<u32>, arg_1: vec3<bool>) -> vec4<bool> {
    global0 = array<Struct_4, 30>();
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-1410f * 1905f), _wgslsmith_f_op_f32(func_3(u_input.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1272f * 1039f)))) - _wgslsmith_div_vec3_f32(vec3<f32>(765f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -509f))), 270f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-799f, -1391f, 350f)))))));
    global0 = array<Struct_4, 30>();
    let var_1 = max(vec2<i32>(16711i, 1i), vec2<i32>(-_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d, u_input.a), _wgslsmith_mult_vec2_i32(vec2<i32>(17888i, u_input.a), vec2<i32>(u_input.a, 34232i))), -_wgslsmith_mult_i32(max(u_input.d, u_input.d), u_input.a)));
    global0 = array<Struct_4, 30>();
    return vec4<bool>(arg_1.x, _wgslsmith_add_i32(1i, -2147483647i) >= u_input.a, arg_1.x, true);
}

fn func_1(arg_0: u32, arg_1: vec2<i32>) -> vec4<bool> {
    let var_0 = select(true, -arg_1.x == 26566i, select(true, !all(func_2(vec4<u32>(1u, 0u, u_input.b.x, u_input.c.x), vec3<bool>(false, true, true))), true));
    global0 = array<Struct_4, 30>();
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1315f, -179f, -344f)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1331f, 1170f, -1947f)))))));
    var var_2 = var_1;
    global0 = array<Struct_4, 30>();
    return select(select(select(vec4<bool>(!var_0, all(vec3<bool>(false, var_0, var_0)), all(vec4<bool>(var_0, var_0, var_0, var_0)), all(vec3<bool>(var_0, var_0, false))), vec4<bool>(true, var_0, false, var_0), (arg_1.x >> (u_input.c.x % 32u)) <= u_input.d), vec4<bool>(true, func_2(~vec4<u32>(0u, arg_0, u_input.c.x, arg_0), vec3<bool>(false, false, true)).x, true, var_0), !(!select(vec4<bool>(true, var_0, true, false), vec4<bool>(var_0, var_0, true, var_0), var_0))), vec4<bool>(false, any(!vec4<bool>(var_0, var_0, true, var_0)), !(arg_0 > max(u_input.c.x, 0u)), var_0), var_0);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-977f * -158f) + _wgslsmith_f_op_f32(abs(-287f))));
    global0 = array<Struct_4, 30>();
    var var_1 = all(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), !func_1(u_input.b.x, vec2<i32>(-2147483647i, 2147483647i))));
    var var_2 = vec3<i32>(u_input.d, ~u_input.d, -2147483647i);
    var var_3 = min(vec2<u32>(_wgslsmith_mod_u32(1u, ~u_input.b.x), 34047u), _wgslsmith_mod_vec2_u32(u_input.b, reverseBits(abs(vec2<u32>(u_input.b.x, u_input.b.x))))) ^ u_input.b;
    var var_4 = Struct_3(var_2.zy, vec4<i32>(~_wgslsmith_sub_i32(var_2.x, u_input.d) | ~(~var_2.x), firstTrailingBit(_wgslsmith_div_i32(_wgslsmith_add_i32(var_2.x, 15144i), -2147483647i)), 45466i << (0u % 32u), min(~(~u_input.a), ~0i)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-781f, _wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(var_0 * -1000f))) + _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-571f, -2478f, 985f)))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1373f + _wgslsmith_f_op_f32(var_0 + var_0))))), vec2<u32>(abs(1u), 1u), var_0, ~u_input.b.x);
}

