struct Struct_1 {
    a: vec4<f32>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec3<f32>,
}

struct Struct_3 {
    a: f32,
    b: vec4<u32>,
    c: vec4<i32>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: u32,
    e: Struct_1,
}

struct Struct_5 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_2() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1f)));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1160f, -248f, 142f, -318f), vec4<f32>(var_0, var_0, -500f, -291f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_0, var_0, var_0, -1435f), vec4<f32>(-1234f, 308f, -1000f, var_0))), vec4<bool>(true, true, true, true))))));
    return Struct_1(_wgslsmith_f_op_vec4_f32(-var_1), u_input.a.yw);
}

fn func_3(arg_0: i32, arg_1: i32, arg_2: vec4<f32>) -> f32 {
    let var_0 = _wgslsmith_mult_vec2_u32(vec2<u32>((_wgslsmith_div_u32(u_input.a.x, 28307u) & u_input.a.x) & (~u_input.a.x | ~u_input.a.x), _wgslsmith_add_u32(u_input.a.x, _wgslsmith_dot_vec2_u32(~u_input.a.zy, _wgslsmith_div_vec2_u32(u_input.a.yw, vec2<u32>(1u, u_input.a.x))))), vec2<u32>(~(~1u), u_input.a.x) << (~vec2<u32>(min(0u, u_input.a.x), _wgslsmith_dot_vec4_u32(u_input.a, u_input.a)) % vec2<u32>(32u)));
    var var_1 = (vec2<i32>(2147483647i, reverseBits(_wgslsmith_div_i32(arg_0, arg_0))) & -select(~vec2<i32>(1i, u_input.b), vec2<i32>(-2767i, arg_1), true)) | vec2<i32>(-22931i, 1i);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1181f), 1f)), func_2().a.x)));
    let var_3 = any(!(!select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false)), true)));
    var var_4 = -1459f;
    return _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_2.x * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(arg_2.x, -1206f)), -780f))), _wgslsmith_f_op_f32(-arg_2.x))));
}

fn func_1(arg_0: f32) -> Struct_3 {
    let var_0 = Struct_4(func_2(), Struct_1(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_0, arg_0, arg_0))))), abs(~vec2<u32>(u_input.a.x, 4294967295u))), any(vec2<bool>(true, false)), 4294967295u, Struct_1(vec4<f32>(-669f, _wgslsmith_f_op_f32(-arg_0), 850f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1175f, arg_0) + _wgslsmith_f_op_f32(ceil(-159f)))), u_input.a.wx));
    let var_1 = vec4<f32>(2328f, 1367f, _wgslsmith_f_op_f32(func_3(u_input.b, 20665i, vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(837f, -1457f, false)), _wgslsmith_div_f32(604f, 1343f), var_0.c && false)), _wgslsmith_div_f32(-1000f, -410f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_0))), var_0.a.a.x))), _wgslsmith_f_op_f32(var_0.e.a.x + var_0.e.a.x));
    var var_2 = _wgslsmith_f_op_f32(-var_0.e.a.x);
    var_2 = var_1.x;
    var_2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(-253f, -1000f, !var_0.c))));
    return Struct_3(-670f, ~firstLeadingBit(_wgslsmith_add_vec4_u32(u_input.a, vec4<u32>(var_0.b.b.x, u_input.a.x, 14063u, 4294967295u))) | ~abs(~u_input.a), _wgslsmith_div_vec4_i32(vec4<i32>(abs(u_input.b & -51142i), u_input.b, -1i, -1i), -(~(vec4<i32>(0i, 30436i, 2147483647i, 21590i) ^ vec4<i32>(2147483647i, u_input.b, 7870i, 2147483647i)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(abs(1000f));
    var var_1 = -1016f;
    var var_2 = Struct_3(-341f, abs(~u_input.a >> ((~u_input.a | countOneBits(vec4<u32>(u_input.a.x, u_input.a.x, 1u, u_input.a.x))) % vec4<u32>(32u))), vec4<i32>(_wgslsmith_sub_i32(u_input.b, countOneBits(1i)), -u_input.b, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, 2147483647i, 0i, 1i) & (vec4<i32>(17619i, u_input.b, 85204i, 25555i) >> (u_input.a % vec4<u32>(32u))), _wgslsmith_div_vec4_i32(-vec4<i32>(0i, -1i, 6053i, u_input.b), -vec4<i32>(u_input.b, u_input.b, -32313i, -37069i))), abs(u_input.b)));
    let var_3 = (true || (_wgslsmith_div_i32(-69372i, u_input.b) > 1i)) == (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0, var_2.a))) >= 2333f);
    let var_4 = var_2.b.zy;
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_2.a)));
    var_2 = func_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(var_0, var_2.a)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.a * _wgslsmith_f_op_f32(var_0 - -1304f))), var_3)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_0, -160f, 820f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-795f, -1047f, -1000f)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-579f, -343f, -105f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(215f, var_0, 442f) + vec3<f32>(1347f, -1819f, var_0)))) - _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.a, -2482f, var_0)))))), min(_wgslsmith_clamp_vec2_u32(vec2<u32>(~u_input.a.x, countOneBits(0u)), vec2<u32>(min(1u, 84160u), 4081u), max(select(vec2<u32>(var_2.b.x, var_4.x), var_2.b.wy, vec2<bool>(true, var_3)), vec2<u32>(u_input.a.x, 12662u) ^ vec2<u32>(0u, u_input.a.x))), vec2<u32>(var_4.x, _wgslsmith_clamp_u32(u_input.a.x, u_input.a.x & var_2.b.x, var_4.x))), ~53975u);
}

