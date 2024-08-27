struct Struct_1 {
    a: vec4<bool>,
    b: i32,
    c: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: f32,
    d: vec3<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 32>;

var<private> global1: bool = false;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_1(arg_0: Struct_1, arg_1: u32, arg_2: f32) -> Struct_1 {
    global0 = array<vec3<bool>, 32>();
    let var_0 = true;
    global1 = true;
    global1 = any(vec4<bool>(true, var_0, false, !(var_0 | true) & all(!arg_0.a)));
    var var_1 = arg_0;
    return arg_0;
}

fn func_2(arg_0: f32, arg_1: u32, arg_2: Struct_1, arg_3: vec4<i32>) -> i32 {
    global1 = false | arg_2.a.x;
    global0 = array<vec3<bool>, 32>();
    let var_0 = func_1(Struct_1(vec4<bool>(false, all(select(arg_2.a.zw, vec2<bool>(arg_2.a.x, arg_2.a.x), arg_2.a.x)), true, (4294967295u >> (arg_1 % 32u)) <= ~1u), -13676i, arg_0), 4743u, _wgslsmith_f_op_f32(trunc(arg_2.c)));
    return u_input.a;
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: f32) -> vec4<u32> {
    let var_0 = Struct_1(vec4<bool>(_wgslsmith_f_op_f32(arg_2 + _wgslsmith_f_op_f32(arg_2 - 180f)) < _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(854f + arg_2), _wgslsmith_f_op_f32(-arg_1.c), any(arg_1.a))), arg_1.a.x, !(!arg_1.a.x), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, 29603i, arg_0, -2906i), vec4<i32>(u_input.a, -1i, -3051i, -6449i)) <= arg_0), arg_1.b, 509f);
    var var_1 = func_1(Struct_1(func_1(Struct_1(arg_1.a, -arg_0, arg_1.c), ~firstLeadingBit(1u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-442f + arg_2))).a, ~firstTrailingBit(-2147483647i), _wgslsmith_f_op_f32(max(-2998f, -1048f))), 4294967295u, _wgslsmith_f_op_f32(arg_1.c + _wgslsmith_f_op_f32(-arg_1.c)));
    global1 = _wgslsmith_f_op_f32(var_1.c + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2 - 417f)), 547f)) != 1000f;
    let var_2 = !func_1(Struct_1(vec4<bool>(all(var_0.a), var_1.a.x, true, true), abs(1i), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.c + arg_2), arg_2)), ~1u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2 * -102f) * _wgslsmith_div_f32(arg_1.c, -1000f)))).a.yxz;
    var_1 = var_0;
    return vec4<u32>(~(_wgslsmith_div_u32(1u, 1u) & ~_wgslsmith_dot_vec2_u32(vec2<u32>(21001u, 14450u), vec2<u32>(0u, 15899u))), reverseBits(20920u), _wgslsmith_dot_vec4_u32(~vec4<u32>(1u, _wgslsmith_mod_u32(4294967295u, 2951u), ~14039u, 80550u), _wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(~vec4<u32>(28488u, 0u, 1u, 59238u), countOneBits(vec4<u32>(41028u, 1u, 37047u, 12192u))), vec4<u32>(1u, 1u, 1u, 1u))), reverseBits(~_wgslsmith_mod_u32(max(49360u, 55287u), 103235u)));
}

fn func_4(arg_0: vec4<f32>, arg_1: vec4<i32>, arg_2: bool) -> Struct_1 {
    global0 = array<vec3<bool>, 32>();
    global0 = array<vec3<bool>, 32>();
    global0 = array<vec3<bool>, 32>();
    global0 = array<vec3<bool>, 32>();
    let var_0 = func_1(Struct_1(vec4<bool>(any(global0[_wgslsmith_index_u32(1u, 32u)]), arg_2, select(arg_2, false, arg_2), !any(global0[_wgslsmith_index_u32(27365u, 32u)])), 46430i, arg_0.x), ~(~(~(1u >> (0u % 32u)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -908f), _wgslsmith_f_op_f32(f32(-1f) * -580f))))));
    return Struct_1(vec4<bool>(true, arg_2, !all(vec2<bool>(false, true)), var_0.a.x), u_input.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)) + arg_0.x) - arg_0.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<bool>, 32>();
    let var_0 = func_1(Struct_1(vec4<bool>(true, any(vec3<bool>(true, false, false)), true, false), 2147483647i, -562f), ~14966u, _wgslsmith_f_op_f32(514f + 1503f));
    var var_1 = func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(711f, 888f, -122f, var_0.c), vec4<f32>(1011f, var_0.c, -602f, var_0.c))) + vec4<f32>(556f, -312f, -1198f, var_0.c)))), _wgslsmith_mod_vec4_i32(abs(vec4<i32>(var_0.b, 13081i, -18036i, u_input.a)) >> (func_3(func_2(-144f, 16043u, Struct_1(vec4<bool>(false, false, true, var_0.a.x), u_input.a, -954f), vec4<i32>(var_0.b, u_input.a, -32527i, -16872i)), Struct_1(var_0.a, -45902i, var_0.c), -966f) % vec4<u32>(32u)), firstTrailingBit(-abs(vec4<i32>(0i, u_input.a, 2158i, -37893i)))), false);
    var var_2 = 27165u;
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(ceil(465f)), var_0.c, var_0.c, -1000f);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(~firstLeadingBit(~4674u), 26934u, ~reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(26010u, 11724u, 13228u), vec3<u32>(0u, 0u, 1u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(175f, -702f)) + var_1.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-1215f, -1000f)))), vec3<i32>(max(-20659i, 2147483647i) >> (~_wgslsmith_clamp_u32(4294967295u, 41663u, 0u) % 32u), 2147483647i, abs(var_1.b)), -(firstLeadingBit(-var_0.b) | -2147483647i));
}

