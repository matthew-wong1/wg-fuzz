struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct Struct_3 {
    a: i32,
    b: i32,
    c: f32,
    d: u32,
    e: i32,
}

struct Struct_4 {
    a: vec4<i32>,
    b: Struct_3,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 13> = array<vec4<f32>, 13>(vec4<f32>(128f, 254f, -1213f, -353f), vec4<f32>(374f, 1978f, -2063f, 107f), vec4<f32>(-560f, 749f, 1000f, 763f), vec4<f32>(-1000f, 513f, 1000f, 390f), vec4<f32>(903f, -123f, 1200f, -838f), vec4<f32>(-1799f, -2169f, 1145f, 1081f), vec4<f32>(-377f, 308f, -672f, -177f), vec4<f32>(-883f, 363f, -542f, 833f), vec4<f32>(925f, -566f, 1605f, 807f), vec4<f32>(342f, 1665f, 523f, 797f), vec4<f32>(-449f, 2993f, 107f, 394f), vec4<f32>(-1000f, -1155f, -1000f, -1059f), vec4<f32>(-707f, -661f, 1051f, -1570f));

var<private> global1: f32 = -582f;

var<private> global2: Struct_3 = Struct_3(6204i, 2147483647i, 237f, 15202u, 1i);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec2<f32>, arg_1: u32, arg_2: Struct_4) -> u32 {
    global1 = _wgslsmith_f_op_f32(arg_0.x * _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1274f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.c))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.c - global2.c) * arg_2.b.c)));
    global1 = _wgslsmith_f_op_f32(step(global2.c, 1456f));
    return 0u;
}

fn func_2(arg_0: bool, arg_1: vec3<bool>, arg_2: vec2<f32>) -> vec2<i32> {
    global2 = Struct_3(global2.b, global2.b, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(global2.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1441f + -260f) - _wgslsmith_f_op_f32(min(arg_2.x, arg_2.x))) * arg_2.x))), global2.d, -_wgslsmith_sub_i32(-(~1i), u_input.c ^ -1i));
    let var_0 = Struct_3(-1i, -1i >> (_wgslsmith_clamp_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(46136u, 1u, 4294967295u, global2.d), vec4<u32>(35463u, 4294967295u, 7130u, 4294967295u)), ~func_3(arg_2, 10778u, Struct_4(vec4<i32>(global2.b, global2.e, 39474i, 0i), Struct_3(global2.a, 2147483647i, global2.c, global2.d, global2.b), Struct_2(vec4<bool>(arg_0, arg_1.x, arg_0, arg_1.x)))), 1u) % 32u), 196f, ~1u, u_input.b);
    global1 = arg_2.x;
    global0 = array<vec4<f32>, 13>();
    let var_1 = Struct_2(!(!vec4<bool>(all(arg_1), any(vec4<bool>(arg_0, true, false, true)), arg_0, any(arg_1))));
    return select(select(abs(max(vec2<i32>(-1i, 1i) << (vec2<u32>(var_0.d, var_0.d) % vec2<u32>(32u)), _wgslsmith_sub_vec2_i32(vec2<i32>(global2.a, u_input.c), vec2<i32>(1i, var_0.e)))), vec2<i32>(~_wgslsmith_mult_i32(var_0.e, 2147483647i), var_0.b), true), _wgslsmith_div_vec2_i32(~vec2<i32>(global2.a, var_0.b), _wgslsmith_mult_vec2_i32(max(vec2<i32>(global2.a, var_0.b), vec2<i32>(2147483647i, -2147483647i)) | vec2<i32>(-6966i, var_0.a), ~_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a, -46345i), vec2<i32>(u_input.b, 7930i)))), any(vec2<bool>(true, true)) | !arg_0);
}

fn func_1() -> f32 {
    var var_0 = _wgslsmith_clamp_vec2_i32(_wgslsmith_div_vec2_i32(_wgslsmith_mult_vec2_i32(min(_wgslsmith_mult_vec2_i32(vec2<i32>(1i, -68204i), vec2<i32>(u_input.a, 0i)), vec2<i32>(-1i, -16854i)), vec2<i32>(-18054i, countOneBits(global2.b))), vec2<i32>(0i, global2.b)), select(func_2(true, vec3<bool>(true, false, true), vec2<f32>(global2.c, 2758f)) << (vec2<u32>(~global2.d, _wgslsmith_div_u32(global2.d, global2.d)) % vec2<u32>(32u)), _wgslsmith_clamp_vec2_i32(abs(vec2<i32>(u_input.a, global2.e)), vec2<i32>(_wgslsmith_mod_i32(global2.b, 1i), -2147483647i), _wgslsmith_clamp_vec2_i32(select(vec2<i32>(-1i, -2147483647i), vec2<i32>(global2.a, 24881i), vec2<bool>(false, true)), vec2<i32>(global2.a, 0i) & vec2<i32>(global2.b, 15178i), select(vec2<i32>(global2.a, u_input.c), vec2<i32>(2147483647i, global2.b), true))), true), vec2<i32>(-2147483647i, -u_input.a << (~firstLeadingBit(1u) % 32u)));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(914f, global2.c, global2.c)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(308f, -375f, 1827f))) + _wgslsmith_f_op_vec3_f32(min(vec3<f32>(global2.c, global2.c, global2.c), vec3<f32>(global2.c, global2.c, global2.c))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global2.c), global2.c, global2.c) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.c, global2.c, global2.c) * vec3<f32>(-1000f, global2.c, global2.c)), vec3<f32>(-1000f, -1000f, global2.c), vec3<bool>(false, false, true)))), vec3<bool>((global2.d <= 17373u) & true, any(vec3<bool>(false, false, false)), true))));
    var var_2 = _wgslsmith_mod_u32(max(_wgslsmith_mod_u32(~global2.d, _wgslsmith_mod_u32(_wgslsmith_clamp_u32(728u, global2.d, 26611u), ~55820u)), global2.d), 4294967295u);
    var var_3 = global2.c;
    var var_4 = Struct_3(~_wgslsmith_dot_vec4_i32(vec4<i32>(abs(-1i), _wgslsmith_dot_vec2_i32(vec2<i32>(-29954i, u_input.b), vec2<i32>(8729i, u_input.a)), 0i, abs(var_0.x)), _wgslsmith_clamp_vec4_i32(vec4<i32>(global2.b, 0i, global2.a, -1i), firstTrailingBit(vec4<i32>(-19347i, u_input.a, 6209i, -27340i)), select(vec4<i32>(var_0.x, global2.e, 1i, var_0.x), vec4<i32>(-9830i, global2.b, -1i, u_input.a), false))), u_input.c, global2.c, 4294967295u, var_0.x);
    return _wgslsmith_f_op_f32(floor(var_4.c));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(global2.e, _wgslsmith_mod_i32(9518i, _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(~vec3<i32>(global2.e, -2147483647i, 25631i), _wgslsmith_mult_vec3_i32(vec3<i32>(-76098i, -1i, -1i), vec3<i32>(u_input.a, 0i, -14644i))), -vec3<i32>(u_input.c, -15167i, global2.e))), _wgslsmith_f_op_f32(func_1()), 0u, u_input.b);
    var var_1 = Struct_2(vec4<bool>(true, all(vec2<bool>(true, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1071f)) >= _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.c, 344f) * _wgslsmith_f_op_f32(-global2.c)), !(~41800i >= u_input.b)));
    var var_2 = Struct_4(vec4<i32>(global2.a, 689i, -1i, global2.a), var_0, Struct_2(select(!vec4<bool>(var_1.a.x, true, var_1.a.x, true), vec4<bool>(var_1.a.x, 1i == u_input.c, true, false), false)));
    let var_3 = Struct_1(2147483647i);
    var_1 = var_2.c;
    var_1 = Struct_2(select(vec4<bool>(any(vec3<bool>(var_1.a.x, true, var_1.a.x)), !(true || var_2.c.a.x), any(vec4<bool>(var_1.a.x, var_1.a.x, var_2.c.a.x, false)), var_1.a.x), var_1.a, var_1.a));
    var var_4 = var_1.a.xx;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(global2.c - var_2.b.c))), ~vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.d, 4294967295u), vec2<u32>(36684u, var_0.d)) & 1u, select(22843u, 1u, var_1.a.x) << (~0u % 32u)));
}

