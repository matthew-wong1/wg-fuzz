struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
}

struct Struct_3 {
    a: bool,
    b: vec2<f32>,
    c: f32,
    d: f32,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<u32, 9> = array<u32, 9>(76049u, 98473u, 12094u, 26233u, 54094u, 65517u, 49996u, 27373u, 9335u);

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec4<i32>) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1028f + global0.d) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-171f * global0.c)))))) - global0.d);
    let var_1 = true;
    let var_2 = global0.b.x;
    var_0 = _wgslsmith_f_op_f32(ceil(-373f));
    var var_3 = arg_0;
    return 1639f;
}

fn func_2() -> vec2<f32> {
    var var_0 = Struct_2(Struct_1(-568f), _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.d, global0.d) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global0.c, -1261f))))));
    var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(func_3(abs(vec4<i32>(u_input.a, -1i, u_input.a, u_input.a) | vec4<i32>(-2147483647i, u_input.a, u_input.a, 2147483647i))))), global0.b);
    global1 = array<u32, 9>();
    var var_1 = var_0.a.a;
    global1 = array<u32, 9>();
    return _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global0.d))), 1f)), global0.b));
}

fn func_4(arg_0: vec2<f32>, arg_1: vec2<u32>, arg_2: vec3<bool>, arg_3: i32) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1000f));
    global1 = array<u32, 9>();
    let var_1 = Struct_3(!((1u | ~global0.e.x) > 41760u), vec2<f32>(1f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-599f * 587f), -679f, arg_2.x)), _wgslsmith_f_op_f32(func_3(vec4<i32>(18189i, u_input.a, 1i, arg_3)))))), 250f, _wgslsmith_f_op_f32(step(-197f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.x, global0.d) - -281f), _wgslsmith_f_op_f32(select(482f, _wgslsmith_f_op_f32(var_0.a + arg_0.x), arg_2.x))))), vec4<u32>(45565u | _wgslsmith_sub_u32(~10209u, ~u_input.c), 81366u, u_input.c, _wgslsmith_clamp_u32(~arg_1.x, _wgslsmith_dot_vec3_u32(global0.e.zyy, global0.e.www), firstTrailingBit(reverseBits(global0.e.x)))));
    var var_2 = Struct_2(var_0, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(global0.b)), vec2<f32>(var_1.b.x, _wgslsmith_div_f32(-615f, -1753f)), var_1.a))));
    let var_3 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a, _wgslsmith_f_op_f32(abs(531f)), _wgslsmith_f_op_f32(f32(-1f) * -444f), var_1.d) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.a.a, global0.c, 1345f, 625f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_2.b.x, 982f, var_0.a, global0.d), vec4<f32>(var_0.a, 540f, var_2.b.x, -2718f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a, -1171f, -532f, global0.c))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a, 164f, 875f, 114f) * vec4<f32>(1000f, var_0.a, arg_0.x, var_0.a)) - vec4<f32>(var_1.c, var_0.a, global0.d, global0.b.x))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(-1159f + arg_0.x), _wgslsmith_div_f32(var_0.a, -131f), var_2.b.x, 105f))), !var_1.a)));
    return var_0;
}

fn func_5(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1) -> bool {
    var var_0 = countOneBits(_wgslsmith_dot_vec4_u32(max(~(vec4<u32>(1u, 0u, 0u, global1[_wgslsmith_index_u32(global0.e.x, 9u)]) ^ vec4<u32>(global0.e.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.c, 9u)], 9u)], u_input.c, u_input.b)), global0.e), ~vec4<u32>(27612u & global1[_wgslsmith_index_u32(26951u, 9u)], ~48444u, ~6143u, 73064u)));
    global1 = array<u32, 9>();
    let var_1 = arg_2;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_1.a, -167f))))) + global0.c);
    var var_3 = _wgslsmith_f_op_f32(1f - _wgslsmith_div_f32(346f, arg_0.a));
    return true;
}

fn func_1() -> f32 {
    global0 = Struct_3(func_5(Struct_1(-766f), _wgslsmith_f_op_f32(f32(-1f) * -1026f), func_4(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.c, global0.c) - _wgslsmith_f_op_vec2_f32(func_2())), countOneBits(~global0.e.zw), vec3<bool>(global0.a || global0.a, global0.d == -427f, global0.a), u_input.a | u_input.a)), vec2<f32>(global0.b.x, global0.d), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(418f + global0.d))) - 849f), -1000f, vec4<u32>(26148u, ~4294967295u, 4294967295u, select(1u, 50162u, global0.a)));
    var var_0 = global0.a;
    let var_1 = Struct_3(true, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(global0.b - global0.b)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global0.c, -1000f)))), _wgslsmith_div_f32(-188f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1818f + global0.d), 1f)))), global0.e);
    global0 = Struct_3(any(!vec3<bool>(true, true, var_1.a)), _wgslsmith_f_op_vec2_f32(step(global0.b, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-313f, global0.d)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(func_4(vec2<f32>(-1059f, -990f), var_1.e.yx, vec3<bool>(var_1.a, var_1.a, var_1.a), 1i).a, _wgslsmith_f_op_f32(517f - -275f)))) + var_1.c), _wgslsmith_f_op_f32(trunc(var_1.c)), vec4<u32>(~firstTrailingBit(firstLeadingBit(1u)), ~(~78055u), 1u ^ select(_wgslsmith_mult_u32(0u, 47880u), firstLeadingBit(1u), true), 53287u));
    global0 = var_1;
    return _wgslsmith_f_op_f32(var_1.c + 318f);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_3(abs(min(u_input.a, 1i)) <= 1i, _wgslsmith_div_vec2_f32(global0.b, vec2<f32>(_wgslsmith_f_op_f32(-global0.c), 734f)), 287f, _wgslsmith_f_op_f32(func_1()), countOneBits(global0.e ^ (vec4<u32>(global1[_wgslsmith_index_u32(62386u, 9u)], global1[_wgslsmith_index_u32(4294967295u, 9u)], u_input.b, u_input.c) << (vec4<u32>(1u, u_input.b, global0.e.x, u_input.b) % vec4<u32>(32u)))));
    var var_0 = Struct_3(global0.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global0.b - vec2<f32>(_wgslsmith_f_op_f32(abs(1785f)), -1013f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(global0.d, -725f), -179f))), global0.b.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(global0.d)), _wgslsmith_f_op_f32(floor(1221f)))), global0.e);
    global1 = array<u32, 9>();
    let var_1 = Struct_3(u_input.a != -_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, 13595i, u_input.a, 60084i), ~vec4<i32>(0i, u_input.a, u_input.a, -1i)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.c))), _wgslsmith_f_op_f32(-756f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1472f * var_0.b.x), -180f)))), vec4<u32>(global1[_wgslsmith_index_u32(1u, 9u)], var_0.e.x, 22017u, _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(var_0.e.wy, global0.e.xw), _wgslsmith_mod_u32(countOneBits(global0.e.x), ~1u))));
    let var_2 = Struct_2(Struct_1(var_1.b.x), _wgslsmith_f_op_vec2_f32(trunc(var_1.b)));
    let x = u_input.a;
    s_output = StorageBuffer(~12708u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.d, var_0.b.x, -584f, var_0.d) * _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-798f, var_2.a.a, var_0.c, global0.c), vec4<f32>(1275f, var_0.c, -196f, 615f)))))));
}

