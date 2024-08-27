struct Struct_1 {
    a: u32,
    b: u32,
    c: vec2<f32>,
    d: vec4<u32>,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 22>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3() -> vec4<bool> {
    global0 = array<vec4<i32>, 22>();
    var var_0 = -1445f;
    var var_1 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(sign(-235f)), _wgslsmith_f_op_f32(select(-930f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(895f, 1013f, false)), _wgslsmith_f_op_f32(2768f * 1482f)), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(523f)) + -1090f) - 1f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-415f, -242f, 664f)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1041f, -627f, 1456f)) + vec3<f32>(_wgslsmith_div_f32(1350f, 278f), 1f, -370f))), all(!select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), 0u >= u_input.a))));
    var_1 = _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1000f, -1935f)) * var_1.x), var_1.x), 569f, 451f)));
    global0 = array<vec4<i32>, 22>();
    return select(select(vec4<bool>(true, true, true, true), !(!select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false), false)), true), select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), false), vec4<bool>(true, true, true, true), true), select(vec4<bool>(true, false, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true)), true == all(vec2<bool>(true, true))), true != (any(vec3<bool>(false, true, false)) | false)), !(!(!select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, true), false))));
}

fn func_2(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1) -> u32 {
    global0 = array<vec4<i32>, 22>();
    let var_0 = !(!select(vec4<bool>(true, arg_2.c.x == 636f, true, !arg_0.e.x), !(!vec4<bool>(arg_2.e.x, arg_2.e.x, arg_2.e.x, true)), select(vec4<bool>(arg_2.e.x, true, arg_2.e.x, arg_2.e.x), func_3(), select(arg_2.e.x, true, arg_2.e.x))));
    let var_1 = Struct_1(4294967295u, arg_2.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(arg_2.c)) - _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1237f, -568f)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(140f, arg_2.c.x), arg_2.c, var_0.x)), arg_0.e.zy))))), vec4<u32>(1u, _wgslsmith_div_u32(~arg_0.d.x, 34032u), 1u, u_input.a), vec3<bool>(all(var_0), !any(var_0) || arg_2.e.x, all(vec4<bool>(false, true, true, true))));
    global0 = array<vec4<i32>, 22>();
    var var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.c.x, _wgslsmith_f_op_f32(max(690f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.c.x * arg_2.c.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(-207f + _wgslsmith_f_op_f32(arg_2.c.x * var_1.c.x)))));
    return 94145u;
}

fn func_1(arg_0: vec4<f32>, arg_1: f32, arg_2: Struct_1) -> vec4<u32> {
    global0 = array<vec4<i32>, 22>();
    global0 = array<vec4<i32>, 22>();
    let var_0 = _wgslsmith_f_op_f32(arg_0.x + -176f);
    let var_1 = Struct_1(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 1u, u_input.a, u_input.a) & vec4<u32>(0u, 0u, u_input.a, 25027u), min(vec4<u32>(0u, arg_2.a, arg_2.a, u_input.a), arg_2.d)), 10790u, _wgslsmith_div_u32(1u, _wgslsmith_dot_vec4_u32(arg_2.d, arg_2.d)), countOneBits(~arg_2.d.x)), _wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.a, arg_2.d.x, 1u, 4294967295u), arg_2.d)), 1u, arg_2.c, ~(~arg_2.d) >> ((abs(arg_2.d | arg_2.d) ^ vec4<u32>(firstLeadingBit(77636u), _wgslsmith_div_u32(42115u, 31032u), ~u_input.a, _wgslsmith_dot_vec2_u32(arg_2.d.wz, arg_2.d.zx))) % vec4<u32>(32u)), arg_2.e);
    global0 = array<vec4<i32>, 22>();
    return select(vec4<u32>(~firstTrailingBit(0u >> (0u % 32u)), 1u, arg_2.d.x, func_2(Struct_1(var_1.a >> (37105u % 32u), min(var_1.a, 21154u), _wgslsmith_f_op_vec2_f32(sign(arg_2.c)), vec4<u32>(7297u, 43165u, arg_2.b, 35813u), select(var_1.e, arg_2.e, arg_2.e.x)), _wgslsmith_div_i32(_wgslsmith_clamp_i32(1i, 4995i, -59280i), 14728i), Struct_1(_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.d.x, 1u, var_1.d.x, arg_2.b), vec4<u32>(u_input.a, 21517u, u_input.a, 32621u)), u_input.a & var_1.d.x, vec2<f32>(1650f, arg_1), ~vec4<u32>(arg_2.a, 13902u, 0u, arg_2.d.x), arg_2.e))), ~(vec4<u32>(80213u & u_input.a, arg_2.b, 1u, 0u) & var_1.d), vec4<bool>(any(arg_2.e.xy), true, true, !(_wgslsmith_f_op_f32(-851f + 2304f) == _wgslsmith_f_op_f32(arg_0.x * 902f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(u_input.a, ~46152u, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)))), max(select(func_1(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1000f, 767f, -367f, -702f))), -151f, Struct_1(u_input.a, 1409u, vec2<f32>(1582f, 766f), vec4<u32>(u_input.a, 34121u, 4144u, 42116u), vec3<bool>(false, false, false))), _wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(11803u, 4294967295u, u_input.a, u_input.a), vec4<u32>(u_input.a, 4294967295u, u_input.a, 70123u)), ~vec4<u32>(87995u, u_input.a, 58434u, 38915u), vec4<u32>(1u, 1u, u_input.a, 34906u)), select(select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true), false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), vec4<u32>(u_input.a << (_wgslsmith_clamp_u32(u_input.a, 15437u, 4294967295u) % 32u), ~countOneBits(17233u), 1u, 1u)), !(!vec3<bool>(false, true, all(vec3<bool>(false, false, true)))));
    var var_1 = Struct_1(~var_0.d.x, u_input.a, var_0.c, _wgslsmith_mult_vec4_u32(countOneBits(_wgslsmith_mult_vec4_u32(var_0.d, ~var_0.d)), var_0.d), !select(vec3<bool>(true, true, true), !var_0.e, false));
    var_0 = Struct_1(select(39898u, _wgslsmith_mod_u32(var_1.a, 0u | _wgslsmith_div_u32(u_input.a, 64864u)), var_1.e.x), ~(~var_1.d.x), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2674f), -296f), vec4<u32>(55075u, 4294967295u, 0u & var_0.a, ~1u), vec3<bool>(var_1.e.x | true, any(!func_3()), all(var_1.e.yy)));
    var var_2 = Struct_1(_wgslsmith_clamp_u32(var_1.b, 0u, ~var_0.d.x & abs(u_input.a)) ^ u_input.a, var_1.b, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.c.x, 522f))), var_0.c, var_0.e.x)), _wgslsmith_f_op_vec2_f32(-var_0.c), !select(!var_1.e.yy, select(var_1.e.yx, var_1.e.yx, vec2<bool>(var_1.e.x, false)), !var_0.e.xx))), ~_wgslsmith_sub_vec4_u32(min(_wgslsmith_mod_vec4_u32(var_1.d, var_1.d), var_0.d), select(vec4<u32>(64129u, 1u, 1u, u_input.a), var_1.d, var_0.e.x) | vec4<u32>(1u, u_input.a, var_1.d.x, u_input.a)), var_0.e);
    var_2 = Struct_1(6831u, ~_wgslsmith_mult_u32(1u, 72731u), vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_2.c.x * 448f), _wgslsmith_div_f32(var_0.c.x, _wgslsmith_f_op_f32(ceil(var_0.c.x))), !(var_0.e.x | var_1.e.x))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(199f, -239f)))))), ~_wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_dot_vec2_u32(var_1.d.yw, var_1.d.wx), 0u, u_input.a, u_input.a), vec4<u32>(3482u, 1u << (var_1.b % 32u), func_2(Struct_1(var_1.a, 29145u, vec2<f32>(-546f, -1113f), vec4<u32>(4294967295u, u_input.a, 0u, 0u), vec3<bool>(true, true, var_0.e.x)), -16845i, Struct_1(11881u, var_1.d.x, var_1.c, var_0.d, var_1.e)), _wgslsmith_dot_vec4_u32(var_1.d, vec4<u32>(0u, 53281u, 7661u, 24919u)))), var_0.e);
    var var_3 = Struct_1(~0u, _wgslsmith_clamp_u32(firstLeadingBit(11966u), ~firstTrailingBit(~78243u), ~0u), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(var_2.c, var_2.c) + _wgslsmith_div_vec2_f32(var_1.c, var_1.c))), _wgslsmith_f_op_vec2_f32(abs(var_2.c)), var_2.e.x)), vec4<u32>(u_input.a, var_0.b, 7275u, max(func_2(Struct_1(var_0.d.x, 89885u, vec2<f32>(var_1.c.x, -1000f), vec4<u32>(var_1.d.x, 23798u, 32945u, 4294967295u), var_1.e), -1i, Struct_1(1u, u_input.a, var_0.c, vec4<u32>(var_1.d.x, 10977u, u_input.a, var_0.b), var_0.e)), var_1.d.x | var_1.d.x)) >> (vec4<u32>(~(~u_input.a), var_1.a, ~5480u, ~9831u) % vec4<u32>(32u)), var_1.e);
    let var_4 = var_1.c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(2178f, _wgslsmith_f_op_f32(var_2.c.x - var_0.c.x)))), 0u);
}

