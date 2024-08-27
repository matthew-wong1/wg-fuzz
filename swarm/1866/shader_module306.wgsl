struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 30>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_1(arg_0: Struct_2) -> i32 {
    return 1i >> (u_input.a % 32u);
}

fn func_3() -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_f32(651f + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(756f)), 530f)));
    var var_1 = -vec2<i32>(_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, 1i, 1i), vec3<i32>(-1i, 25685i, 56697i)), -37515i), -(-45967i << ((1u >> (u_input.a % 32u)) % 32u)));
    var var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(944f, -1000f) - vec2<f32>(1447f, 568f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(481f, 248f) - vec2<f32>(-1522f, -422f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-2282f, 750f) + vec2<f32>(-298f, 1363f))))));
    var var_3 = max(vec4<u32>(u_input.a, u_input.a, countOneBits(u_input.a), reverseBits(_wgslsmith_mod_u32(1u, u_input.a) ^ ~75818u)), ~vec4<u32>(u_input.a, u_input.a, firstTrailingBit(~u_input.a), abs(u_input.a) & u_input.a));
    let var_4 = Struct_2(select(vec3<bool>(true, true, true), select(vec3<bool>(select(false, true, true), false, true), vec3<bool>(true, true, true), _wgslsmith_f_op_f32(var_2.a.x - -1773f) >= var_2.a.x), select(!select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), false), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), all(vec4<bool>(false, false, true, false))), select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, false, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a.x)));
    return vec3<bool>(false, !(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1089f)) * -244f) < _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(2233f))))), var_4.a.x);
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: Struct_2) -> bool {
    let var_0 = select(!(!arg_1.a.yx), select(select(vec2<bool>(u_input.a < u_input.a, any(vec3<bool>(arg_2.a.x, arg_2.a.x, false))), select(arg_2.a.zy, !vec2<bool>(arg_2.a.x, false), arg_1.a.yx), true), select(select(!arg_1.a.xx, arg_2.a.zx, false), !arg_2.a.zy, arg_2.a.x), vec2<bool>(!all(vec4<bool>(arg_2.a.x, true, false, arg_2.a.x)), true)), false);
    let var_1 = Struct_2(func_3(), -954f);
    let var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.b * -1000f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_1.b * 1173f))))));
    global0 = array<vec2<u32>, 30>();
    let var_3 = Struct_2(var_1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_2.a.x)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.b - 541f) * arg_2.b) + 507f)));
    return var_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<u32>, 30>();
    global0 = array<vec2<u32>, 30>();
    var var_0 = select(~vec2<i32>(1i, func_1(Struct_2(vec3<bool>(false, false, true), -1000f))), vec2<i32>(1i, 1i), func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(590f, 715f, -241f, -269f)))), Struct_2(select(vec3<bool>(false, false, false), select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), true), select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1053f - -1044f))), Struct_2(vec3<bool>(true, true, true), 1010f)));
    let var_1 = !(~(~var_0.x) != -(~(-28100i)));
    let var_2 = Struct_2(!select(!select(vec3<bool>(true, true, var_1), vec3<bool>(var_1, true, var_1), vec3<bool>(var_1, true, var_1)), vec3<bool>(!var_1, true, all(vec3<bool>(false, true, var_1))), select(!vec3<bool>(var_1, var_1, var_1), vec3<bool>(var_1, true, false), true)), -232f);
    var var_3 = var_2.b;
    var var_4 = Struct_1(vec2<f32>(1388f, var_2.b));
    var_4 = Struct_1(_wgslsmith_div_vec2_f32(var_4.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_4.a * var_4.a) * _wgslsmith_f_op_vec2_f32(min(var_4.a, vec2<f32>(-743f, var_4.a.x)))) + var_4.a)));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(~_wgslsmith_add_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, 4294967295u, 8645u), vec3<u32>(114087u, 23221u, u_input.a), vec3<u32>(1u, 4294967295u, 4294967295u)), vec3<u32>(u_input.a, 73423u, 1u))), ~var_0.x, 31069i);
}

