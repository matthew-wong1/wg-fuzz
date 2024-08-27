struct Struct_1 {
    a: u32,
    b: vec4<u32>,
    c: vec3<u32>,
    d: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec4<i32>,
}

struct Struct_3 {
    a: u32,
    b: f32,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 24>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: bool) -> f32 {
    global0 = array<vec4<i32>, 24>();
    global0 = array<vec4<i32>, 24>();
    var var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(2637f, 3059f, 1455f, -211f) + vec4<f32>(-458f, -104f, -383f, -1765f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1364f, -539f, -1417f, -1673f) + vec4<f32>(1562f, 335f, -204f, 1632f)))))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(795f, -610f, 1529f, -1000f) + vec4<f32>(298f, -908f, -524f, 107f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-1441f, -202f, 295f, 1000f) + _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1011f, -381f, 1000f, 1134f))))))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x));
    global0 = array<vec4<i32>, 24>();
    return _wgslsmith_f_op_f32(-var_0.x);
}

fn func_3(arg_0: u32, arg_1: vec3<i32>, arg_2: bool) -> f32 {
    var var_0 = vec3<u32>(38320u, 4294967295u, 0u);
    global0 = array<vec4<i32>, 24>();
    let var_1 = abs(vec4<u32>(abs(var_0.x ^ 0u), select(_wgslsmith_dot_vec4_u32(vec4<u32>(34969u, 14522u, 4294967295u, 47004u), vec4<u32>(var_0.x, var_0.x, 1u, var_0.x)), ~arg_0, select(true, false, arg_2)), ~(87573u | arg_0), 4294967295u)) >> (~vec4<u32>(var_0.x, reverseBits(4294967295u) | ~var_0.x, ~(~44499u), abs(~8032u)) % vec4<u32>(32u));
    let var_2 = _wgslsmith_dot_vec2_u32(~countOneBits(~var_1.zw), vec2<u32>(1u, ~(_wgslsmith_dot_vec2_u32(var_0.yx, var_0.yx) & arg_0)));
    var var_3 = countOneBits(arg_1.x ^ 37806i);
    return 1144f;
}

fn func_4(arg_0: vec4<bool>, arg_1: vec4<f32>, arg_2: vec3<u32>) -> f32 {
    global0 = array<vec4<i32>, 24>();
    global0 = array<vec4<i32>, 24>();
    let var_0 = select(arg_0.xx, vec2<bool>(arg_0.x, !all(select(vec2<bool>(arg_0.x, arg_0.x), arg_0.yz, vec2<bool>(arg_0.x, true)))), all(arg_0.wwy));
    global0 = array<vec4<i32>, 24>();
    global0 = array<vec4<i32>, 24>();
    return 102f;
}

fn func_1(arg_0: vec4<u32>, arg_1: Struct_3, arg_2: Struct_2) -> vec4<i32> {
    var var_0 = _wgslsmith_f_op_f32(func_4(arg_2.a.d, vec4<f32>(_wgslsmith_f_op_f32(arg_1.b + _wgslsmith_f_op_f32(func_2(min(vec4<i32>(27004i, arg_2.c.x, u_input.d.x, u_input.d.x), u_input.d), Struct_1(arg_2.a.a, vec4<u32>(arg_1.a, 52364u, arg_1.c, arg_2.a.c.x), vec3<u32>(60968u, 29312u, 81140u), vec4<bool>(false, arg_2.b, arg_2.b, true)), true))), _wgslsmith_f_op_f32(arg_1.b - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(arg_1.a, vec3<i32>(u_input.c, -23228i, u_input.d.x), arg_2.a.d.x)) * _wgslsmith_f_op_f32(f32(-1f) * -1721f))), arg_1.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(0u, _wgslsmith_mod_vec3_i32(arg_2.c.wwy, arg_2.c.yww), -1068f == arg_1.b)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1387f)))), vec3<u32>(abs(~_wgslsmith_sub_u32(arg_2.a.a, arg_2.a.c.x)), _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.x, u_input.b), vec2<u32>(32806u, 80802u)), arg_1.c << (38322u % 32u), _wgslsmith_clamp_u32(u_input.a, 7288u, 83590u), arg_2.a.b.x), arg_2.a.b), 21975u)));
    var var_1 = arg_2.a.d.wy;
    var_1 = !select(arg_2.a.d.zy, select(select(vec2<bool>(false, var_1.x), vec2<bool>(arg_2.b, false), vec2<bool>(arg_2.a.d.x, true)), arg_2.a.d.wz, select(vec2<bool>(false, var_1.x), vec2<bool>(true, true), arg_2.a.d.yy)), arg_2.a.d.wx);
    var var_2 = arg_1.b;
    var var_3 = vec4<f32>(arg_1.b, -449f, 890f, arg_1.b);
    return global0[_wgslsmith_index_u32(max(22456u | arg_2.a.c.x, 4294967295u), 24u)];
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<i32>, 24>();
    var var_0 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(1104f - 658f), _wgslsmith_f_op_f32(960f - 241f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -505f), -1000f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(167f, -188f)))))))));
    let var_1 = Struct_2(Struct_1(~0u, ~vec4<u32>(u_input.a, ~u_input.a, _wgslsmith_clamp_u32(20794u, 4294967295u, u_input.a), ~u_input.b), vec3<u32>(_wgslsmith_mult_u32(abs(u_input.b), u_input.a), 0u, ~max(4294967295u, 0u)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)), true, select(func_1(vec4<u32>(4294967295u, u_input.b, select(62397u, u_input.a, false), 0u), Struct_3(~u_input.b, _wgslsmith_f_op_f32(404f - var_0.x), countOneBits(0u)), Struct_2(Struct_1(70647u, vec4<u32>(u_input.a, u_input.b, u_input.b, 64121u), vec3<u32>(4294967295u, 71876u, 69051u), vec4<bool>(true, false, true, true)), 759u != u_input.a, abs(vec4<i32>(28061i, u_input.c, u_input.c, 2147483647i)))), global0[_wgslsmith_index_u32(u_input.a | _wgslsmith_mod_u32(~u_input.b, _wgslsmith_mod_u32(u_input.a, 1u)), 24u)], select(any(vec3<bool>(true, true, false)), true, 74424u != u_input.a) & true));
    let var_2 = var_1.c.x;
    var var_3 = Struct_3(_wgslsmith_clamp_u32(4294967295u, max(4294967295u, 41670u), ~(26305u & firstTrailingBit(u_input.b))), var_0.x, _wgslsmith_dot_vec2_u32(vec2<u32>(abs(~1u), _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, 61379u, u_input.b), vec4<u32>(0u, u_input.b, u_input.a, 26184u)), u_input.a << (var_1.a.a % 32u))), _wgslsmith_div_vec2_u32(var_1.a.c.xx >> (vec2<u32>(4294967295u, var_1.a.c.x) % vec2<u32>(32u)), vec2<u32>(1u, 1u)) & vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 1u, 68204u), vec3<u32>(1u, var_1.a.c.x, u_input.b)), ~u_input.a)));
    global0 = array<vec4<i32>, 24>();
    var var_4 = Struct_3(u_input.a, 765f, reverseBits(select(1u | ~u_input.b, 25856u, true)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(~70206u, _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.a.c.x, var_4.c), var_1.a.c.yx), _wgslsmith_add_u32(4294967295u, 0u)), var_3.c, var_1.a.c.x & ~(u_input.a << (9741u % 32u))), ~_wgslsmith_mod_u32(max(58279u, 0u), ~var_3.c) & (4294967295u >> ((var_4.a ^ max(1670u, 1u)) % 32u)));
}

