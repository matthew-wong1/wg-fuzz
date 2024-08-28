struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec4<u32>,
}

struct Struct_4 {
    a: f32,
    b: i32,
    c: vec4<f32>,
    d: Struct_3,
}

struct Struct_5 {
    a: u32,
    b: bool,
    c: f32,
    d: vec3<bool>,
    e: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<f32>,
    c: vec2<u32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: Struct_3) -> bool {
    var var_0 = Struct_1(vec4<i32>(_wgslsmith_mult_i32(-u_input.c, 0i), u_input.a.x, -1i, u_input.c) >> (arg_0.b % vec4<u32>(32u)));
    let var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(-990f, arg_0.a.x)), _wgslsmith_f_op_f32(arg_0.a.x * -1174f))))), _wgslsmith_f_op_f32(arg_0.a.x * _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1228f)) + arg_0.a.x), arg_0.a.x))));
    var var_2 = vec2<i32>(-1i) * -(~(-var_0.a.ww));
    return true;
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_4, arg_2: Struct_4, arg_3: Struct_5) -> vec3<bool> {
    var var_0 = any(select(select(!arg_3.d, arg_3.d, all(vec3<bool>(true, true, arg_3.b))), select(!select(arg_3.d, vec3<bool>(true, false, arg_3.b), vec3<bool>(arg_3.b, true, arg_3.b)), select(arg_3.d, !arg_3.d, arg_3.d.x), vec3<bool>(arg_3.d.x, true, all(arg_3.d))), arg_3.d.x));
    let var_1 = Struct_2(Struct_1(_wgslsmith_div_vec4_i32(~(-vec4<i32>(2147483647i, u_input.a.x, 48432i, arg_2.b)), vec4<i32>(-2147483647i, 0i, arg_1.b, ~15138i))), func_3(Struct_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(663f, arg_2.a, 653f) * vec3<f32>(-160f, arg_1.c.x, -686f)), ~vec4<u32>(29817u, arg_0.x, arg_0.x, arg_3.e))) | arg_3.b, Struct_1(min(~_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a.x, u_input.c, -1i, arg_2.b), vec4<i32>(u_input.c, arg_1.b, u_input.c, arg_2.b)), _wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, arg_2.b, -1i, 2147483647i), select(vec4<i32>(14987i, 0i, -7951i, -36891i), vec4<i32>(arg_2.b, arg_1.b, 56673i, -39842i), arg_3.b)))));
    return !select(select(arg_3.d, arg_3.d, true), select(vec3<bool>(-1i >= arg_2.b, var_1.b, !var_1.b), vec3<bool>(arg_3.b, false, -2147483647i != u_input.a.x), vec3<bool>(true & var_1.b, false, false)), var_1.b);
}

fn func_1(arg_0: vec4<u32>, arg_1: f32) -> Struct_3 {
    let var_0 = vec4<bool>(false, all(vec4<bool>(select(true, false, any(vec2<bool>(true, false))), any(func_2(vec2<u32>(arg_0.x, arg_0.x), Struct_4(-1326f, u_input.a.x, vec4<f32>(arg_1, -1028f, -1402f, arg_1), Struct_3(vec3<f32>(-2228f, arg_1, arg_1), vec4<u32>(arg_0.x, u_input.b, 0u, u_input.b))), Struct_4(arg_1, u_input.a.x, vec4<f32>(135f, 780f, 834f, -1729f), Struct_3(vec3<f32>(arg_1, arg_1, arg_1), vec4<u32>(u_input.b, arg_0.x, 45611u, 35204u))), Struct_5(0u, false, arg_1, vec3<bool>(true, false, false), u_input.b))), 3987u < ~u_input.b, any(vec3<bool>(true, true, true)))), true, true);
    let var_1 = max(0i, _wgslsmith_mult_i32(u_input.c, u_input.c));
    let var_2 = 1u != _wgslsmith_dot_vec3_u32(max(reverseBits(vec3<u32>(31581u, 54257u, 4294967295u)) & vec3<u32>(u_input.b, 45984u, u_input.b), max(vec3<u32>(0u, 0u, u_input.b), vec3<u32>(arg_0.x, arg_0.x, 88489u) & vec3<u32>(u_input.b, 1u, 19586u))), arg_0.zzz);
    let var_3 = firstTrailingBit(abs(~arg_0.zzw));
    let var_4 = Struct_2(Struct_1(vec4<i32>(-31161i, 27895i, firstTrailingBit(u_input.a.x), abs(_wgslsmith_clamp_i32(0i, u_input.a.x, 0i)))), select(true, false, true), Struct_1(select(vec4<i32>(firstTrailingBit(u_input.c), i32(-1i) * -36378i, _wgslsmith_add_i32(19742i, u_input.a.x), 28236i), ~countOneBits(vec4<i32>(u_input.a.x, var_1, var_1, -20701i)), vec4<bool>(var_2 || true, !var_2, any(var_0), true))));
    return Struct_3(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-576f, -1000f, arg_1))), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(551f, arg_1, arg_1), vec3<f32>(arg_1, -156f, 746f))), func_3(Struct_3(vec3<f32>(arg_1, arg_1, 302f), arg_0)))) - _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(-548f, arg_1, arg_1) - vec3<f32>(arg_1, 546f, -1580f))))))), ~abs(vec4<u32>(4294967295u, _wgslsmith_dot_vec4_u32(arg_0, vec4<u32>(u_input.b, var_3.x, 4294967295u, 0u)), 50223u, var_3.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(469f + -225f)), _wgslsmith_f_op_f32(max(-923f, _wgslsmith_f_op_f32(select(-527f, -602f, true)))), 1006f)), vec4<u32>(4294967295u, _wgslsmith_mult_u32(_wgslsmith_add_u32(u_input.b, 30682u) & 1u, _wgslsmith_mult_u32(0u, u_input.b)), ~max(~4294967295u, u_input.b), 0u));
    var_0 = func_1(var_0.b, _wgslsmith_f_op_f32(-691f * var_0.a.x));
    var_0 = func_1(var_0.b, _wgslsmith_div_f32(-1000f, 781f));
    var_0 = Struct_3(vec3<f32>(func_1(~abs(vec4<u32>(0u, var_0.b.x, u_input.b, 24341u)), 545f).a.x, _wgslsmith_f_op_f32(floor(var_0.a.x)), _wgslsmith_f_op_f32(-var_0.a.x)), _wgslsmith_mult_vec4_u32(~(~vec4<u32>(84179u, var_0.b.x, u_input.b, 4294967295u)), func_1(vec4<u32>(1u >> (var_0.b.x % 32u), 4294967295u, u_input.b, max(36813u, 59051u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0.a.x, var_0.a.x)) - _wgslsmith_f_op_f32(f32(-1f) * -214f))).b));
    var_0 = Struct_3(var_0.a, ~vec4<u32>(_wgslsmith_dot_vec4_u32(var_0.b, vec4<u32>(1u, u_input.b, var_0.b.x, 6098u)), u_input.b, 4294967295u, ~1u) & (var_0.b << (~var_0.b % vec4<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(~max(~vec3<u32>(1u, var_0.b.x, 1u), var_0.b.zww), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a.x, -991f, var_0.a.x) - vec3<f32>(var_0.a.x, -763f, -1177f))) + _wgslsmith_div_vec3_f32(vec3<f32>(var_0.a.x, var_0.a.x, -739f), _wgslsmith_f_op_vec3_f32(ceil(var_0.a))))), ~(~_wgslsmith_mod_vec2_u32(var_0.b.yx, vec2<u32>(46858u, u_input.b))), _wgslsmith_clamp_vec3_i32(firstTrailingBit(vec3<i32>(u_input.c, 7938i ^ u_input.a.x, 1i)), u_input.a, max(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(4857i, u_input.a.x, 1i, -11300i), vec4<i32>(-29860i, u_input.a.x, -2147483647i, 41898i)), firstLeadingBit(-2147483647i), ~0i), firstLeadingBit(firstLeadingBit(vec3<i32>(u_input.a.x, u_input.c, u_input.a.x))))));
}

