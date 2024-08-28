struct Struct_1 {
    a: vec4<bool>,
    b: bool,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: Struct_1,
}

struct Struct_5 {
    a: Struct_3,
    b: vec4<f32>,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: f32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 2>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: i32, arg_1: Struct_2, arg_2: vec4<f32>, arg_3: u32) -> f32 {
    let var_0 = Struct_3(1307f, Struct_1(arg_1.b.a, !((false && arg_1.b.b) || true)));
    var var_1 = Struct_3(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(arg_2.x)))), var_0.b);
    global0 = array<Struct_3, 2>();
    let var_2 = var_1.b;
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a))));
}

fn func_2() -> vec2<bool> {
    global0 = array<Struct_3, 2>();
    let var_0 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(881f + _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2057f - 339f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(710f, 1865f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -329f) + _wgslsmith_f_op_f32(f32(-1f) * -726f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(974f)) + _wgslsmith_f_op_f32(func_3(-2147483647i, Struct_2(vec2<bool>(false, false), Struct_1(vec4<bool>(true, true, false, false), false)), vec4<f32>(-1000f, -1231f, 1195f, 1426f), u_input.a.x)))))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1f, 1f, 1f, 1f), vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -265f), -1000f, true)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(605f + -1047f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-2369f))), _wgslsmith_f_op_f32(f32(-1f) * -1419f)), all(select(select(vec2<bool>(false, true), vec2<bool>(false, false), false), vec2<bool>(true, false), vec2<bool>(true, true))))), select(vec4<bool>(false, any(vec4<bool>(true, true, true, true)), any(vec2<bool>(true, true)), false), !select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), true), true)));
    let var_1 = Struct_2(vec2<bool>(!all(vec3<bool>(true, false, true)), all(!select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true)))), Struct_1(select(select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false)), !select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true)), vec4<bool>(true, all(vec3<bool>(false, true, true)), all(vec4<bool>(false, false, false, false)), true)), false));
    let var_2 = Struct_4(var_1.b.b, Struct_1(select(!(!var_1.b.a), !select(var_1.b.a, var_1.b.a, false), var_1.b.a), true));
    var var_3 = vec3<i32>(~(-34281i), -(select(_wgslsmith_clamp_i32(2147483647i, -48639i, -1i), -1i, true) << (~_wgslsmith_mod_u32(u_input.a.x, 0u) % 32u)), select(max(-(i32(-1i) * -33366i), _wgslsmith_mod_i32(min(1i, -9031i), 1i)), _wgslsmith_mod_i32(i32(-1i) * -2147483647i, 1i), var_2.b.a.x));
    return vec2<bool>(var_2.b.a.x, var_1.b.b);
}

fn func_1(arg_0: vec4<i32>, arg_1: u32) -> StorageBuffer {
    var var_0 = abs(firstTrailingBit((vec3<i32>(-1i) * -vec3<i32>(20435i, -19436i, arg_0.x)) << (_wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(0u, 25923u, 1u), vec3<u32>(0u, 78957u, arg_1)), ~vec3<u32>(arg_1, 35598u, u_input.a.x)) % vec3<u32>(32u))));
    let var_1 = _wgslsmith_div_f32(-174f, 1000f);
    global0 = array<Struct_3, 2>();
    var var_2 = !vec3<bool>(true, all(func_2()), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_1, 1000f))) >= var_1);
    global0 = array<Struct_3, 2>();
    return StorageBuffer(var_1, 1u, -259f, abs(min(~_wgslsmith_div_vec2_u32(u_input.a, u_input.a), vec2<u32>(firstTrailingBit(arg_1), 74572u))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(-(~vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-5843i, 40825i, 32288i), vec3<i32>(1i, -13948i, 1i)), _wgslsmith_sub_i32(0i, 1i), countOneBits(-1i), 0i)), (_wgslsmith_sub_u32(4294967295u, ~u_input.a.x) ^ u_input.a.x) & u_input.a.x);
}

