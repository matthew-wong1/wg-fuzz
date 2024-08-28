struct Struct_1 {
    a: vec4<f32>,
    b: vec3<u32>,
    c: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 5>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1(arg_0: vec4<bool>, arg_1: vec4<bool>, arg_2: vec2<i32>, arg_3: vec4<f32>) -> f32 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1559f + -268f), 494f, true)), -936f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(arg_3.x)))), 494f)), countOneBits(vec3<u32>(23368u | u_input.a, 48016u, ~9232u)) >> (vec3<u32>(_wgslsmith_add_u32(1u >> (u_input.a % 32u), u_input.a), _wgslsmith_mod_u32(min(u_input.a, 4294967295u), ~u_input.a), 0u) % vec3<u32>(32u)), arg_1.x);
    var var_1 = _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-773f, -1881f)));
    global0 = array<vec3<i32>, 5>();
    let var_2 = vec3<bool>(true, arg_1.x, !arg_0.x);
    let var_3 = countOneBits(min(~abs(select(vec2<u32>(65281u, 0u), var_0.b.zx, var_0.c)), var_0.b.zz));
    return _wgslsmith_f_op_f32(f32(-1f) * -693f);
}

fn func_3() -> vec4<f32> {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-563f, 101f, -697f, 1350f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(574f, -361f, 139f, 773f) + vec4<f32>(-1377f, 934f, 499f, -1880f)))))), vec4<f32>(1f, _wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(f32(-1f) * -167f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(147f - 1078f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(796f)), _wgslsmith_f_op_f32(f32(-1f) * -1425f)))))), vec3<u32>(1u, _wgslsmith_div_u32(~4294967295u, _wgslsmith_mod_u32(4294967295u >> (1u % 32u), ~u_input.a)), ~u_input.a), all(select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), false)));
    var var_1 = var_0;
    var var_2 = Struct_1(var_0.a, ~(~var_0.b), select(var_1.c, false, !var_0.c));
    global0 = array<vec3<i32>, 5>();
    var var_3 = var_0;
    return _wgslsmith_f_op_vec4_f32(trunc(var_3.a));
}

fn func_2(arg_0: f32, arg_1: vec4<u32>) -> vec2<i32> {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(func_3()))), vec3<u32>(arg_1.x, ~_wgslsmith_mod_u32(u_input.a, arg_1.x), (1u >> (0u % 32u)) ^ arg_1.x) << (vec3<u32>(arg_1.x, ~(arg_1.x >> (arg_1.x % 32u)), ~(~4294967295u)) % vec3<u32>(32u)), ((true & any(vec2<bool>(false, true))) || true) | false);
    var var_1 = Struct_1(vec4<f32>(var_0.a.x, var_0.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) + -1000f), arg_0), max(~firstTrailingBit(arg_1.xwx) ^ ~firstTrailingBit(var_0.b), firstTrailingBit(reverseBits(arg_1.zzy))), !(!(_wgslsmith_f_op_f32(sign(459f)) <= _wgslsmith_f_op_f32(-arg_0))));
    var var_2 = select(!(!select(select(vec2<bool>(true, var_1.c), vec2<bool>(var_1.c, true), false), vec2<bool>(var_0.c, var_0.c), var_1.c)), select(select(select(select(vec2<bool>(var_0.c, false), vec2<bool>(false, var_1.c), vec2<bool>(true, var_1.c)), vec2<bool>(false, var_0.c), vec2<bool>(true, false)), select(!vec2<bool>(var_0.c, var_0.c), select(vec2<bool>(false, false), vec2<bool>(var_1.c, var_0.c), var_1.c), true), any(vec2<bool>(var_0.c, var_0.c))), select(select(vec2<bool>(true, false), vec2<bool>(var_0.c, var_1.c), !vec2<bool>(var_1.c, false)), !vec2<bool>(var_1.c, var_1.c), all(!vec2<bool>(var_0.c, var_0.c))), vec2<bool>(all(vec3<bool>(var_0.c, true, false)) | !var_0.c, select(false, any(vec3<bool>(true, var_1.c, var_1.c)), any(vec4<bool>(true, var_1.c, var_0.c, var_0.c))))), select(vec2<bool>(true, var_0.c), !(!select(vec2<bool>(var_0.c, true), vec2<bool>(var_1.c, false), vec2<bool>(var_1.c, var_1.c))), select(false, true, true)));
    global0 = array<vec3<i32>, 5>();
    var var_3 = var_0.c;
    return vec2<i32>(-select(-2702i, -1i, false), _wgslsmith_add_i32(i32(-1i) * -min(1476i, 1i), 0i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(vec4<f32>(1f, _wgslsmith_div_f32(1699f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -223f))), -114f, 265f), ~(~(~abs(vec3<u32>(u_input.a, u_input.a, 0u)))), _wgslsmith_dot_vec2_i32(min(_wgslsmith_add_vec2_i32(vec2<i32>(3370i, -23367i), vec2<i32>(-34305i, -7369i)), vec2<i32>(2147483647i, -2147483647i) << (vec2<u32>(4294967295u, u_input.a) % vec2<u32>(32u))), func_2(_wgslsmith_f_op_f32(func_1(vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, true), vec2<i32>(2147483647i, -1i), vec4<f32>(-285f, 831f, -1655f, -619f))), vec4<u32>(1u, 1u, 38972u, u_input.a))) > -3573i);
    var var_1 = var_0.a.x;
    var_1 = -1374f;
    let var_2 = _wgslsmith_f_op_vec4_f32(-var_0.a);
    let var_3 = ~vec4<u32>(1u, ~firstTrailingBit(13179u & u_input.a), ~_wgslsmith_mult_u32(1u, max(0u, 1u)), var_0.b.x);
    let var_4 = ~_wgslsmith_mod_u32(var_0.b.x, ~var_0.b.x);
    let var_5 = abs(min(firstTrailingBit(var_4), var_4) << (_wgslsmith_clamp_u32(u_input.a, _wgslsmith_dot_vec4_u32(var_3, _wgslsmith_mult_vec4_u32(var_3, var_3)), var_0.b.x) % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec3_u32(var_0.b, abs(reverseBits(var_0.b) & _wgslsmith_clamp_vec3_u32(var_0.b, vec3<u32>(21208u, var_0.b.x, 4294967295u), var_3.zwy))), abs(_wgslsmith_mult_vec4_u32(~_wgslsmith_add_vec4_u32(var_3, var_3), var_3)), _wgslsmith_f_op_f32(f32(-1f) * -628f));
}

