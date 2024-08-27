struct Struct_1 {
    a: u32,
    b: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: bool,
    d: vec4<bool>,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: u32,
    d: vec4<u32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 1>;

var<private> global1: array<Struct_1, 26> = array<Struct_1, 26>(Struct_1(0u, vec2<bool>(false, true)), Struct_1(7331u, vec2<bool>(true, true)), Struct_1(4294967295u, vec2<bool>(true, true)), Struct_1(4294967295u, vec2<bool>(false, false)), Struct_1(1u, vec2<bool>(true, true)), Struct_1(4294967295u, vec2<bool>(false, true)), Struct_1(1u, vec2<bool>(true, true)), Struct_1(12963u, vec2<bool>(true, true)), Struct_1(9551u, vec2<bool>(true, true)), Struct_1(13919u, vec2<bool>(false, true)), Struct_1(0u, vec2<bool>(true, false)), Struct_1(0u, vec2<bool>(true, true)), Struct_1(4294967295u, vec2<bool>(true, false)), Struct_1(0u, vec2<bool>(true, true)), Struct_1(24631u, vec2<bool>(false, true)), Struct_1(23078u, vec2<bool>(true, false)), Struct_1(7569u, vec2<bool>(false, true)), Struct_1(49491u, vec2<bool>(true, true)), Struct_1(1u, vec2<bool>(false, false)), Struct_1(4294967295u, vec2<bool>(false, false)), Struct_1(0u, vec2<bool>(false, true)), Struct_1(0u, vec2<bool>(true, true)), Struct_1(59242u, vec2<bool>(false, true)), Struct_1(27061u, vec2<bool>(true, false)), Struct_1(1u, vec2<bool>(true, false)), Struct_1(11948u, vec2<bool>(false, false)));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: f32, arg_1: Struct_2) -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_0)));
    global0 = array<vec4<f32>, 1>();
    var var_1 = arg_1;
    let var_2 = !(!arg_1.c);
    let var_3 = var_1.a.a != ~arg_1.a.a;
    return select(!(!arg_1.d), select(select(!vec4<bool>(var_3, var_2, var_3, false), vec4<bool>(true, arg_0 != -674f, false, var_2), false), select(!var_1.d, select(!arg_1.d, !vec4<bool>(var_1.c, var_2, true, var_2), select(vec4<bool>(var_3, true, var_3, arg_1.c), vec4<bool>(arg_1.c, false, var_1.c, var_2), false)), !vec4<bool>(true, true, true, var_3)), vec4<bool>(any(vec4<bool>(var_2, var_3, true, var_1.d.x)), any(vec2<bool>(var_1.a.b.x, false)), any(vec3<bool>(false, var_3, false)), var_2 & var_1.c)), var_1.a.b.x);
}

fn func_2(arg_0: u32, arg_1: u32) -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(414f * -542f) + _wgslsmith_f_op_f32(-1000f * 226f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -287f)))));
    return vec4<bool>(90400u > arg_1, any(vec2<bool>(true, true)), all(vec4<bool>(true, true, all(vec3<bool>(true, true, true)), all(vec3<bool>(false, false, false)))), all(vec3<bool>(true, true, true)) | all(func_3(-189f, Struct_2(Struct_1(4294967295u, vec2<bool>(false, false)), global0[_wgslsmith_index_u32(4294967295u, 1u)], true, vec4<bool>(false, true, false, false), vec4<i32>(0i, 36179i, -844i, u_input.a.x)))));
}

fn func_1() -> Struct_2 {
    let var_0 = vec3<i32>(~u_input.a.x, ~0i, -18203i & u_input.a.x);
    global0 = array<vec4<f32>, 1>();
    global0 = array<vec4<f32>, 1>();
    global0 = array<vec4<f32>, 1>();
    global0 = array<vec4<f32>, 1>();
    return Struct_2(Struct_1(4054u, !select(vec2<bool>(false, false), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false)), false)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(779f, -872f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(2482f)), _wgslsmith_f_op_f32(415f * -177f), u_input.c.x < 1u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-355f + 251f) - _wgslsmith_f_op_f32(max(-1603f, -1208f))), _wgslsmith_f_op_f32(-1962f - -756f)) + global0[_wgslsmith_index_u32(65790u, 1u)]), !all(vec2<bool>(true, true)), func_2(_wgslsmith_mod_u32(~(~u_input.c.x), 22688u), u_input.c.x), ~(u_input.a << ((vec4<u32>(u_input.c.x, u_input.c.x, 1u, u_input.c.x) << (vec4<u32>(u_input.c.x, 1u, 44350u, u_input.c.x) % vec4<u32>(32u))) % vec4<u32>(32u))) << (_wgslsmith_sub_vec4_u32(~vec4<u32>(13951u, 0u, u_input.c.x, u_input.c.x), _wgslsmith_mod_vec4_u32(vec4<u32>(21236u, u_input.c.x, u_input.c.x, u_input.c.x) | vec4<u32>(28101u, 0u, u_input.c.x, u_input.c.x), vec4<u32>(4294967295u, 67397u, u_input.c.x, u_input.c.x))) % vec4<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(abs(vec4<u32>(abs(u_input.c.x), ~u_input.c.x, 17037u, ~u_input.c.x)), firstTrailingBit(~vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 39707u))), 26u)];
    let var_1 = func_1();
    var var_2 = Struct_1(~_wgslsmith_clamp_u32(u_input.c.x, 1u, _wgslsmith_mod_u32(1u, countOneBits(4294967295u))), vec2<bool>(true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b.x) + -551f) <= var_1.b.x));
    var_0 = func_1().a;
    var var_3 = var_1.e.x == -(_wgslsmith_dot_vec3_i32(vec3<i32>(18516i, u_input.a.x, 0i), var_1.e.xxx) >> (_wgslsmith_div_u32(select(52113u, var_0.a, true), 1u) % 32u));
    var var_4 = global1[_wgslsmith_index_u32(abs(~var_1.a.a), 26u)];
    global0 = array<vec4<f32>, 1>();
    var_0 = Struct_1(49516u, vec2<bool>(var_4.b.x, select(true, var_0.b.x, func_2(max(8696u, var_4.a), ~u_input.c.x).x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b.x) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b.x * var_1.b.x)))), _wgslsmith_div_i32(3167i, var_1.e.x), var_0.a, ~vec4<u32>(~firstLeadingBit(58935u), _wgslsmith_dot_vec3_u32(~u_input.c, vec3<u32>(0u, var_2.a, 67626u)), var_1.a.a ^ _wgslsmith_sub_u32(var_4.a, 7209u), ~36102u << (var_1.a.a % 32u)), _wgslsmith_f_op_vec2_f32(var_1.b.zw - var_1.b.zw));
}

