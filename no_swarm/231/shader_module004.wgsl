struct Struct_1 {
    a: vec4<u32>,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 19> = array<vec2<bool>, 19>(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2() -> i32 {
    let var_0 = true;
    var var_1 = false;
    global0 = array<vec2<bool>, 19>();
    var var_2 = 83999u;
    global0 = array<vec2<bool>, 19>();
    return -2809i;
}

fn func_1(arg_0: f32) -> vec2<i32> {
    var var_0 = firstTrailingBit(vec4<i32>(~2147483647i, _wgslsmith_mod_i32(1i >> ((u_input.c.x | u_input.d.x) % 32u), -(~4593i)), ~17989i, firstLeadingBit(_wgslsmith_dot_vec4_i32(abs(vec4<i32>(2147483647i, -978i, -2147483647i, -15476i)), ~vec4<i32>(-5540i, 2147483647i, 36521i, 0i)))));
    global0 = array<vec2<bool>, 19>();
    var var_1 = Struct_1(~u_input.d, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(-427f, -223f)))));
    var_1 = Struct_1(~abs(u_input.d) & firstTrailingBit(firstTrailingBit(vec4<u32>(0u, 4294967295u, var_1.a.x, var_1.a.x)) >> (~var_1.a % vec4<u32>(32u))), _wgslsmith_f_op_f32(trunc(1110f)));
    var var_2 = vec2<i32>(~(-1i), -func_2());
    return var_0.yz;
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: f32) -> vec2<bool> {
    let var_0 = arg_1.a.xxy;
    global0 = array<vec2<bool>, 19>();
    global0 = array<vec2<bool>, 19>();
    let var_1 = Struct_1(~_wgslsmith_mod_vec4_u32(vec4<u32>(min(var_0.x, 1u), ~var_0.x, ~u_input.d.x, _wgslsmith_dot_vec3_u32(var_0, vec3<u32>(var_0.x, arg_1.a.x, 0u))), arg_1.a), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-268f * -611f) - _wgslsmith_f_op_f32(-arg_2)))));
    global0 = array<vec2<bool>, 19>();
    return vec2<bool>(arg_1.a.x >= 1u, any(select(select(select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, true)), select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false), true), all(vec4<bool>(true, false, true, true))), vec4<bool>(true, all(vec3<bool>(false, true, true)), true, true), true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = reverseBits(_wgslsmith_sub_vec2_i32(func_1(_wgslsmith_f_op_f32(step(-2943f, _wgslsmith_f_op_f32(f32(-1f) * -1083f)))), ~vec2<i32>(-2147483647i, -19474i)));
    var var_1 = countOneBits(u_input.c);
    var var_2 = vec3<bool>(any(!select(select(vec2<bool>(false, false), vec2<bool>(true, true), false), func_3(vec4<i32>(var_0.x, 1i, -13920i, 0i), Struct_1(vec4<u32>(1u, var_1.x, 1u, var_1.x), 1265f), 179f), vec2<bool>(true, true))), !(true && any(vec3<bool>(true, true, true))), any(select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, true), true), select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, false), true)), vec4<bool>(true, true, true, true), any(vec3<bool>(true, true, true)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(-743f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-127f, -277f) * _wgslsmith_f_op_f32(select(1473f, -1062f, var_2.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -675f) * -716f) + _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(910f, -403f)))))));
}

