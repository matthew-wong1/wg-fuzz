struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: f32, arg_1: Struct_1) -> bool {
    var var_0 = -_wgslsmith_dot_vec3_i32(u_input.c, firstLeadingBit(u_input.c));
    let var_1 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 * 1884f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(1985f, arg_0)), _wgslsmith_f_op_f32(-1467f - 1000f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1831f, -1058f, 454f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-438f, 1189f, -279f) + vec3<f32>(arg_0, 721f, arg_0)))))));
    var_0 = _wgslsmith_add_i32(2147483647i, -37254i);
    global0 = arg_1;
    global0 = arg_1;
    return !(!(_wgslsmith_add_i32(14614i, 9047i) <= u_input.b) && !(!any(vec2<bool>(false, true))));
}

fn func_2(arg_0: bool, arg_1: f32, arg_2: u32) -> f32 {
    global0 = Struct_1(firstTrailingBit(_wgslsmith_mult_i32(0i, -global0.a)));
    let var_0 = 1u;
    var var_1 = Struct_2(vec2<bool>(true, !func_3(arg_1, Struct_1(global0.a))), ~(~u_input.d.x << (10399u % 32u)) == arg_2);
    global0 = Struct_1(_wgslsmith_dot_vec2_i32(vec2<i32>(68003i, countOneBits(-8886i >> (arg_2 % 32u))), u_input.c.yx));
    var var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(860f)), arg_1), 1710f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(228f))))), -1338f) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_1, 836f, -649f, 1633f), vec4<f32>(arg_1, arg_1, arg_1, -703f), vec4<bool>(var_1.a.x, true, true, false)))))))));
    return _wgslsmith_f_op_f32(-var_2.x);
}

fn func_1() -> Struct_1 {
    var var_0 = Struct_2(vec2<bool>(true, true), true);
    let var_1 = vec4<bool>(true, _wgslsmith_f_op_f32(f32(-1f) * -538f) > _wgslsmith_f_op_f32(func_2(any(select(var_0.a, var_0.a, var_0.a.x)), _wgslsmith_f_op_f32(-1f), _wgslsmith_mult_u32(2436u, _wgslsmith_mult_u32(u_input.e, 0u)))), ~_wgslsmith_sub_u32(u_input.d.x, min(4294967295u, u_input.e)) > ~4294967295u, var_0.b & any(vec4<bool>(false, var_0.b, false, false)));
    let var_2 = Struct_2(vec2<bool>(true, (~u_input.d.x <= 4294967295u) && var_0.b), !(!(!(!var_0.a.x))));
    var var_3 = ~vec2<i32>(-u_input.b ^ _wgslsmith_mult_i32(~1088i, 7760i), _wgslsmith_sub_i32(global0.a, u_input.c.x));
    var var_4 = vec3<f32>(1f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-671f + 846f))), _wgslsmith_f_op_f32(f32(-1f) * -502f));
    return Struct_1(-28509i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0.a;
    let var_1 = Struct_2(vec2<bool>(all(vec2<bool>(true, true)), true), false);
    var var_2 = u_input.c;
    let var_3 = _wgslsmith_div_vec4_u32(~(~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.d.x, u_input.d.x, 0u, 54955u), vec4<u32>(u_input.e, u_input.e, u_input.e, 4294967295u))) << ((vec4<u32>(firstTrailingBit(4294967295u), ~u_input.e, u_input.e, select(4294967295u, 0u, false)) << (vec4<u32>(39811u, _wgslsmith_mod_u32(u_input.d.x, 0u), u_input.e, ~1u) % vec4<u32>(32u))) % vec4<u32>(32u)), ~firstLeadingBit(vec4<u32>(u_input.d.x, _wgslsmith_mult_u32(u_input.e, 11445u), 4294967295u, ~66511u)));
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-997f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -827f))));
    let var_5 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(50006i, 2147483647i), abs(_wgslsmith_dot_vec4_u32(~vec4<u32>(43243u, u_input.e, var_3.x, u_input.e), vec4<u32>(u_input.d.x, var_3.x, u_input.d.x, u_input.d.x))) & 1u, vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-106f - -934f) * _wgslsmith_f_op_f32(select(-655f, -895f, false))))), -874f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1430f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1360f)) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -3261f), _wgslsmith_f_op_f32(f32(-1f) * -1705f), true)))));
}

