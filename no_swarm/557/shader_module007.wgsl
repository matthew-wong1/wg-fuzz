struct Struct_1 {
    a: vec4<i32>,
    b: vec4<u32>,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: vec3<bool>) -> vec2<f32> {
    var var_0 = Struct_1(select(-arg_0.a, max(_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_0.a.x, 20654i, arg_1, arg_0.a.x), arg_0.a, vec4<i32>(-1i, u_input.c.x, arg_1, arg_1) >> (vec4<u32>(u_input.a, 7222u, 102549u, arg_0.b.x) % vec4<u32>(32u))), _wgslsmith_mod_vec4_i32(arg_0.a, vec4<i32>(4259i, -16945i, arg_1, -1i))), any(arg_2.xy)), arg_0.b, -_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(arg_0.a.wx, vec2<i32>(u_input.c.x, arg_0.a.x) >> (arg_0.b.xy % vec2<u32>(32u))), u_input.c.x));
    var_0 = arg_0;
    var var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(min(-147f, _wgslsmith_div_f32(-307f, -374f))))))));
    var var_2 = vec3<bool>(!(true || arg_2.x), any(vec3<bool>(true, true, any(vec3<bool>(false, false, arg_2.x)) && true)), false);
    let var_3 = vec3<bool>(var_2.x, all(vec4<bool>(var_2.x, var_2.x, 4294967295u < arg_0.b.x, true)) && !(var_2.x == true), true);
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(366f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(494f + -877f)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-580f, 986f)))) * _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(vec2<f32>(936f, -1806f), vec2<f32>(1000f, -526f)))))));
}

fn func_2() -> bool {
    let var_0 = Struct_1(vec4<i32>(i32(-1i) * -8893i, _wgslsmith_mod_i32(_wgslsmith_mod_i32(~u_input.c.x, u_input.d), reverseBits(_wgslsmith_div_i32(-13143i, 1i))), ~abs(select(u_input.d, u_input.d, false)), -56244i), ~(~(~vec4<u32>(21249u, 66273u, u_input.a, u_input.a))), -u_input.c.x);
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(974f, 1138f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(481f, 1403f)), true)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(var_0, -33395i, vec3<bool>(true, false, true)))))) * _wgslsmith_f_op_vec2_f32(func_3(var_0, var_0.a.x, vec3<bool>(true, true, true))));
    var var_2 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1282f, _wgslsmith_f_op_f32(-1043f * 1490f), -1465f), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_1.x, -469f, var_1.x), vec3<f32>(-625f, -279f, -841f)) * vec3<f32>(899f, var_1.x, 2672f)), select(select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, true)), select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true)), vec3<bool>(true, true, true)))) + _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_1.x, var_1.x, 609f))))))));
    let var_3 = var_0;
    let var_4 = 84199u;
    return var_3.c < _wgslsmith_div_i32(~reverseBits(var_3.c) | u_input.c.x, ~var_0.a.x);
}

fn func_1(arg_0: vec4<bool>, arg_1: vec3<bool>, arg_2: Struct_1, arg_3: u32) -> bool {
    let var_0 = vec3<bool>(func_2(), select(true, any(!arg_0.ywz), ~_wgslsmith_dot_vec2_i32(vec2<i32>(arg_2.c, 0i), u_input.c) == (-2147483647i | _wgslsmith_sub_i32(-2479i, arg_2.a.x))), arg_0.x);
    var var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1057f))));
    let var_2 = arg_2;
    let var_3 = -571f;
    var var_4 = ~vec3<u32>(arg_2.b.x, u_input.b << (_wgslsmith_div_u32(max(24814u, 12312u), arg_2.b.x) % 32u), u_input.a);
    return var_4.x <= ~_wgslsmith_dot_vec4_u32(~var_2.b, _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, var_4.x, 0u, var_2.b.x), arg_2.b));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(select(!select(vec2<bool>(true, false), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false)), true), vec2<bool>(true, true), func_1(vec4<bool>(true, any(vec3<bool>(false, false, true)), any(vec3<bool>(false, true, false)), true), select(vec3<bool>(true, false, false), select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), true), true), Struct_1(vec4<i32>(u_input.d, 0i, -9845i, u_input.d), ~vec4<u32>(u_input.b, 4294967295u, 4294967295u, 81183u), u_input.c.x), 0u ^ _wgslsmith_dot_vec4_u32(vec4<u32>(8974u, u_input.b, 0u, u_input.a), vec4<u32>(u_input.a, 4294967295u, u_input.a, u_input.b)))), select(select(!select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false)), vec2<bool>(true, true), any(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), false))), vec2<bool>(true, !all(vec3<bool>(true, true, true))), vec2<bool>(true, true)), vec2<bool>(!all(vec2<bool>(false, false)), true));
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1842f + -333f) * _wgslsmith_f_op_f32(floor(-380f))))), -722f, _wgslsmith_div_f32(847f, _wgslsmith_f_op_f32(f32(-1f) * -246f)), _wgslsmith_f_op_vec2_f32(func_3(Struct_1(vec4<i32>(-1i, u_input.d, -2005i, -2147483647i) | vec4<i32>(-2147483647i, -2147483647i, u_input.c.x, u_input.d), ~vec4<u32>(14333u, 0u, u_input.a, 49229u), _wgslsmith_dot_vec3_i32(vec3<i32>(23506i, 2147483647i, u_input.c.x), vec3<i32>(2147483647i, u_input.c.x, u_input.c.x))), firstLeadingBit(u_input.d), !(!vec3<bool>(var_0.x, var_0.x, var_0.x)))).x));
    let var_2 = Struct_1(~(~_wgslsmith_sub_vec4_i32(max(vec4<i32>(-1i, -19765i, u_input.c.x, -45629i), vec4<i32>(-28120i, -29973i, 26541i, 1i)), select(vec4<i32>(u_input.c.x, u_input.c.x, u_input.d, 11541i), vec4<i32>(-16252i, -50508i, -8064i, 0i), true))), ~(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, u_input.b, 34158u, u_input.a), ~vec4<u32>(14783u, 4294967295u, u_input.b, u_input.b)) ^ min(_wgslsmith_sub_vec4_u32(vec4<u32>(65802u, u_input.b, 30124u, 4294967295u), vec4<u32>(40028u, 1u, 4294967295u, 1263u)), vec4<u32>(u_input.b, 0u, u_input.b, u_input.a) & vec4<u32>(0u, u_input.a, u_input.b, u_input.a))), u_input.c.x);
    var_1 = vec4<f32>(var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), -1132f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_1.x, -364f, var_0.x)))))));
    var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_1.x, var_1.x, var_1.x, var_1.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(944f, -1459f, -1559f, -1073f) + vec4<f32>(var_1.x, var_1.x, var_1.x, var_1.x)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2248f, -848f, var_1.x, -2310f))), any(select(vec3<bool>(var_0.x, var_0.x, false), vec3<bool>(var_0.x, var_0.x, true), true))))));
    var var_3 = var_1.yw;
    var_1 = vec4<f32>(_wgslsmith_f_op_f32(sign(-379f)), _wgslsmith_f_op_f32(-var_1.x), var_3.x, _wgslsmith_f_op_f32(-708f + 163f));
    var var_4 = _wgslsmith_add_u32(1u, 1u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(var_1.yw * var_1.ww));
}

