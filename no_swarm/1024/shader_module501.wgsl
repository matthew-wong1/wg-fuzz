struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: vec2<i32>,
    d: u32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec4<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<f32>,
    c: Struct_1,
}

struct Struct_4 {
    a: vec2<u32>,
    b: vec2<u32>,
}

struct Struct_5 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec2<u32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: f32, arg_2: i32, arg_3: vec2<u32>) -> vec4<bool> {
    return !(!vec4<bool>(true, true, true, any(vec2<bool>(false, false))));
}

fn func_2(arg_0: vec4<bool>) -> Struct_2 {
    var var_0 = Struct_5(false);
    let var_1 = all(select(select(func_3(Struct_2(2147483647i, Struct_1(vec4<u32>(4294967295u, 0u, 19826u, 0u), u_input.c, vec2<i32>(17279i, 0i), 34175u), vec4<i32>(u_input.a, 2147483647i, -1i, u_input.d)), 785f, _wgslsmith_clamp_i32(u_input.a, 0i, u_input.a), u_input.b), func_3(Struct_2(u_input.a, Struct_1(vec4<u32>(u_input.c, u_input.b.x, 30196u, u_input.b.x), u_input.b.x, vec2<i32>(u_input.a, u_input.a), 4294967295u), vec4<i32>(-19419i, -53949i, u_input.d, -24044i)), _wgslsmith_f_op_f32(round(831f)), u_input.a | u_input.d, ~vec2<u32>(u_input.b.x, u_input.b.x)), arg_0.x), vec4<bool>(all(arg_0.yxx), false, !all(vec3<bool>(false, var_0.a, false)), false), var_0.a));
    var var_2 = Struct_4(vec2<u32>((1u >> (~u_input.c % 32u)) << (54490u % 32u), abs(u_input.b.x)), max(vec2<u32>(u_input.b.x, ~_wgslsmith_dot_vec4_u32(vec4<u32>(64256u, 1u, 4294967295u, 69218u), vec4<u32>(0u, 0u, 0u, u_input.b.x))), u_input.b));
    let var_3 = Struct_2(u_input.a, Struct_1(~vec4<u32>(~var_2.a.x, var_2.b.x, max(u_input.b.x, 0u), _wgslsmith_mult_u32(u_input.c, u_input.b.x)), 1076u, -(~firstLeadingBit(vec2<i32>(-544i, 2147483647i))), 72653u), firstTrailingBit(vec4<i32>(u_input.d | u_input.a, -19041i, abs(u_input.a), 1i)));
    var_2 = Struct_4(vec2<u32>(reverseBits(var_3.b.a.x), 4294967295u), ~vec2<u32>(var_3.b.b, ~reverseBits(var_3.b.d)));
    return var_3;
}

fn func_1(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: i32, arg_3: bool) -> u32 {
    var var_0 = Struct_3(func_2(vec4<bool>(!(!arg_3), true, true, true & any(vec2<bool>(false, false)))), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(108f, -424f, true)) + _wgslsmith_f_op_f32(242f + -1044f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(203f))))))), func_2(!vec4<bool>(arg_3, true, true, arg_3)).b);
    var var_1 = ~u_input.d;
    var_0 = Struct_3(var_0.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_0.b.x, 134f))), vec2<f32>(var_0.b.x, -1126f), select(vec2<bool>(arg_3, arg_3), vec2<bool>(true, arg_3), true))) + var_0.b)), Struct_1(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.a.b.b, 8807u, ~0u, var_0.c.b), arg_0.a, abs(var_0.a.b.a) ^ abs(arg_1)), countOneBits(_wgslsmith_clamp_u32(func_2(vec4<bool>(arg_3, arg_3, true, arg_3)).b.a.x, max(arg_0.d, 4294967295u), u_input.c)), -arg_0.c, 65662u));
    let var_2 = Struct_5(any(vec3<bool>(484f > _wgslsmith_f_op_f32(var_0.b.x * var_0.b.x), any(!vec3<bool>(arg_3, true, arg_3)), all(vec4<bool>(true, arg_3, arg_3, arg_3)))));
    var_1 = 0i;
    return _wgslsmith_add_u32(~var_0.c.d, arg_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_add_u32(~38790u | u_input.c, ~_wgslsmith_dot_vec2_u32(vec2<u32>(func_1(Struct_1(vec4<u32>(u_input.c, u_input.c, 45563u, 4294967295u), 20657u, vec2<i32>(u_input.a, -2147483647i), 35042u), vec4<u32>(u_input.b.x, 7035u, u_input.b.x, 4294967295u), u_input.d, true), _wgslsmith_div_u32(u_input.c, 8327u)), max(max(u_input.b, u_input.b), u_input.b >> (u_input.b % vec2<u32>(32u)))));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-173f * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(170f - -991f), _wgslsmith_f_op_f32(380f - -1233f))))), 1103f);
    let var_2 = Struct_2(_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.d, u_input.a, -4483i), vec3<i32>(6367i, u_input.a, 1i)), firstLeadingBit(_wgslsmith_sub_vec3_i32(vec3<i32>(1i, u_input.a, -2346i), vec3<i32>(u_input.d, 2147483647i, -17969i)))), ~vec3<i32>(~u_input.d, select(u_input.d, -1i, true), -u_input.a)), func_2(vec4<bool>(all(select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true))), any(vec4<bool>(true, true, true, true)), false, true)).b, ~vec4<i32>(~(~u_input.d), max(u_input.d, -62320i), u_input.d, u_input.a));
    var var_3 = !(!(!vec4<bool>(any(vec3<bool>(false, false, false)), true, -436f >= var_1.x, -30529i < var_2.a)));
    let var_4 = vec3<f32>(_wgslsmith_f_op_f32(round(-1051f)), var_1.x, 451f);
    let var_5 = var_2.b.a.ywz;
    let x = u_input.a;
    s_output = StorageBuffer(~var_2.b.a, _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(~var_2.b.a, ~var_2.b.a), select(1u, var_5.x >> (u_input.c % 32u), var_3.x)) | ~_wgslsmith_dot_vec2_u32(u_input.b, var_2.b.a.zx), vec2<u32>(~var_5.x, _wgslsmith_div_u32(1u, u_input.b.x)) & u_input.b, ~abs(var_2.c));
}

