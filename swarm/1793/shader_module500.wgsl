struct Struct_1 {
    a: i32,
    b: i32,
    c: u32,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: vec2<i32>,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec2<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 29>;

var<private> global1: array<vec4<u32>, 5> = array<vec4<u32>, 5>(vec4<u32>(11265u, 4294967295u, 1u, 4294967295u), vec4<u32>(61079u, 4294967295u, 4294967295u, 85507u), vec4<u32>(1u, 62540u, 42920u, 4294967295u), vec4<u32>(18371u, 36112u, 4294967295u, 34484u), vec4<u32>(0u, 0u, 0u, 0u));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_3, arg_2: i32, arg_3: i32) -> bool {
    let var_0 = arg_0;
    let var_1 = Struct_1(reverseBits(_wgslsmith_mod_i32(-18652i >> (arg_0.a.a.x % 32u), 0i)) << (12504u % 32u), -2147483647i, ~min(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d.x, 12402u, 64591u, 59309u), vec4<u32>(var_0.a.a.x, var_0.a.a.x, 0u, 36100u)), 70397u));
    global0 = array<vec2<u32>, 29>();
    var var_2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1872f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.d - -1431f) * arg_1.d))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.d - _wgslsmith_f_op_f32(f32(-1f) * -1121f))) + 839f)));
    global0 = array<vec2<u32>, 29>();
    return all(vec4<bool>((all(vec2<bool>(true, true)) | (arg_0.d == var_0.d)) & true, true, !(_wgslsmith_f_op_f32(trunc(1313f)) <= 184f), true));
}

fn func_2(arg_0: Struct_2) -> Struct_1 {
    let var_0 = Struct_1(2147483647i, reverseBits(u_input.a), ~0u);
    let var_1 = !select(vec4<bool>(func_3(Struct_3(arg_0, var_0.b, u_input.c, 1000f), Struct_3(arg_0, var_0.b, vec2<i32>(1i, var_0.a), 1000f), 29174i, 837i), false, true, func_3(Struct_3(arg_0, u_input.c.x, vec2<i32>(30079i, 2923i), 551f), Struct_3(Struct_2(arg_0.a), 2001i, vec2<i32>(u_input.c.x, 83915i), 304f), -u_input.c.x, 9473i)), !vec4<bool>(true, any(vec3<bool>(false, false, false)), true, true), true);
    global1 = array<vec4<u32>, 5>();
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -257f))));
    var var_3 = Struct_1(26802i, _wgslsmith_mult_i32(-firstTrailingBit(u_input.c.x), i32(-1i) * -11052i) | 51546i, _wgslsmith_sub_u32(~(~var_0.c << (0u % 32u)), _wgslsmith_mod_u32(arg_0.a.x, 1u)));
    return Struct_1(var_0.b | abs(~max(-2147483647i, 29663i)), _wgslsmith_dot_vec2_i32(~(u_input.c & u_input.c), u_input.c), select(0u & var_3.c, _wgslsmith_clamp_u32(_wgslsmith_mult_u32(1u, u_input.b.x), var_0.c, reverseBits(~arg_0.a.x)), true));
}

fn func_1(arg_0: vec3<i32>, arg_1: vec3<u32>, arg_2: Struct_1) -> vec3<f32> {
    global0 = array<vec2<u32>, 29>();
    var var_0 = func_2(Struct_2(~vec3<u32>(23478u ^ arg_1.x, ~arg_1.x, arg_2.c)));
    let var_1 = select(vec2<bool>(true, true), vec2<bool>(all(vec4<bool>(true, true, true, true)), all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true)))), vec2<bool>(any(select(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false)), vec2<bool>(true, true), vec2<bool>(true, true))), true));
    global1 = array<vec4<u32>, 5>();
    let var_2 = 0i;
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(-1f), -2166f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -945f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(~(~u_input.d), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-213f, 255f, 1317f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(1490f, -1668f, -750f) * vec3<f32>(-882f, -435f, 396f))) - vec3<f32>(_wgslsmith_f_op_f32(floor(-1443f)), _wgslsmith_f_op_f32(f32(-1f) * -609f), _wgslsmith_f_op_f32(abs(-244f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1267f, 1094f, -670f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1257f, 784f, -1217f))) - _wgslsmith_f_op_vec3_f32(func_1(vec3<i32>(-413i, u_input.c.x, u_input.a), _wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 4294967295u, 23967u), u_input.d), Struct_1(-4743i, u_input.a, 7232u)))), true)));
}

