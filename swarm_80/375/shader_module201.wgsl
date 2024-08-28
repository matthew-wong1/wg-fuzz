struct Struct_1 {
    a: vec3<bool>,
    b: bool,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: i32,
    c: u32,
    d: u32,
    e: vec2<bool>,
}

struct Struct_4 {
    a: vec2<i32>,
    b: Struct_2,
    c: Struct_3,
    d: bool,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_2,
    c: i32,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 7>;

var<private> global1: array<vec4<bool>, 4> = array<vec4<bool>, 4>(vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_1) -> f32 {
    let var_0 = _wgslsmith_mod_i32(-1i, firstLeadingBit(~(~(-4596i))));
    let var_1 = select(vec4<i32>(-3594i, u_input.a, -5018i, _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(u_input.c, var_0), u_input.c, var_0 >> (34880u % 32u), ~var_0), ~(~vec4<i32>(-33278i, -1i, 2147483647i, -2147483647i)))), vec4<i32>(_wgslsmith_div_i32(38955i, _wgslsmith_mod_i32(-54739i, 4056i)), u_input.c, -2147483647i, var_0), !select(arg_0.a.x, 1u <= _wgslsmith_dot_vec2_u32(vec2<u32>(4171u, u_input.b.x), u_input.b.yx), arg_0.a.x));
    global0 = array<vec4<u32>, 7>();
    var var_2 = var_1;
    var var_3 = Struct_5(Struct_4(-abs(vec2<i32>(var_2.x, 10313i) ^ vec2<i32>(-37266i, -2147483647i)), Struct_2(Struct_1(vec3<bool>(arg_0.b, arg_0.a.x, true), !arg_0.b, -1i), !vec2<bool>(arg_0.b, arg_0.b)), Struct_3(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1332f, 1612f, -636f, 196f), vec4<f32>(882f, 1174f, 2230f, -688f), vec4<bool>(arg_0.b, false, true, true))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-370f, 1000f, 895f, 1006f)))), max(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.c, 30828i), vec2<i32>(-9811i, var_1.x)), max(u_input.a, var_2.x)), _wgslsmith_dot_vec3_u32(vec3<u32>(34430u, 0u, u_input.b.x), u_input.b.yww), u_input.b.x, arg_0.a.zy), arg_0.a.x), Struct_2(arg_0, arg_0.a.xz), _wgslsmith_add_i32(max(_wgslsmith_mult_i32(min(var_0, 25632i), _wgslsmith_sub_i32(-25771i, arg_0.c)), _wgslsmith_clamp_i32(~var_1.x, _wgslsmith_add_i32(var_2.x, -2147483647i), select(15401i, -2147483647i, false))), _wgslsmith_mult_i32(_wgslsmith_mod_i32(i32(-1i) * -74110i, var_2.x), var_2.x)), _wgslsmith_f_op_f32(abs(544f)));
    return -749f;
}

fn func_2() -> vec4<f32> {
    global0 = array<vec4<u32>, 7>();
    global1 = array<vec4<bool>, 4>();
    global1 = array<vec4<bool>, 4>();
    var var_0 = -2632f;
    var var_1 = select(_wgslsmith_div_u32(50131u, u_input.b.x) << (abs(~firstLeadingBit(u_input.b.x)) % 32u), 1u | _wgslsmith_add_u32(~(~4294967295u), u_input.b.x), false);
    return vec4<f32>(787f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_1(vec3<bool>(false, true, true), false, u_input.c))) - -399f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-569f, -741f) + _wgslsmith_f_op_f32(ceil(-1149f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1021f * _wgslsmith_f_op_f32(func_3(Struct_1(vec3<bool>(false, false, false), false, u_input.c)))))) + -751f));
}

fn func_1(arg_0: vec3<bool>, arg_1: u32, arg_2: i32, arg_3: f32) -> Struct_4 {
    let var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(func_2()), firstTrailingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(-53547i, ~0i, i32(-1i) * -2147483647i), _wgslsmith_sub_vec3_i32(vec3<i32>(-3859i, arg_2, arg_2), ~vec3<i32>(arg_2, 10598i, 17536i)))), _wgslsmith_dot_vec3_u32(u_input.b.yxz, _wgslsmith_div_vec3_u32(vec3<u32>(1698u, 31448u, 4294967295u), u_input.b.ywx)) << (_wgslsmith_clamp_u32(abs(u_input.b.x) | (arg_1 << (arg_1 % 32u)), arg_1, ~31175u) % 32u), _wgslsmith_clamp_u32(u_input.b.x, ~u_input.b.x & 1u, max(u_input.b.x, _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(u_input.b.yyx, u_input.b.zww), ~vec3<u32>(804u, arg_1, u_input.b.x)))), arg_0.yx);
    let var_1 = _wgslsmith_f_op_vec4_f32(func_2());
    global0 = array<vec4<u32>, 7>();
    let var_2 = ~vec4<i32>(~var_0.b, ~(i32(-1i) * -16213i), 2147483647i, countOneBits(-_wgslsmith_clamp_i32(31231i, arg_2, var_0.b)));
    var var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(var_1.xww * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.x, -623f, var_0.a.x))))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(var_0.a.xzx, vec3<f32>(301f, var_1.x, var_0.a.x)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(var_0.a.zwy - var_0.a.wyw)))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(arg_3 * var_1.x), var_0.a.x, arg_3), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(702f, -1022f, 287f)) * _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_0.a.x, 1038f, -1217f)))))));
    return Struct_4(select(_wgslsmith_clamp_vec2_i32(firstLeadingBit(var_2.zw) | _wgslsmith_clamp_vec2_i32(vec2<i32>(-13762i, 34478i), vec2<i32>(7787i, u_input.c), vec2<i32>(1i, var_2.x)), -vec2<i32>(-56532i, var_2.x), ~(-vec2<i32>(2147483647i, var_0.b))), vec2<i32>(39931i, -18896i), var_0.e), Struct_2(Struct_1(!select(vec3<bool>(var_0.e.x, false, false), arg_0, arg_0), false, _wgslsmith_add_i32(-arg_2, 22990i)), select(select(arg_0.zy, var_0.e, arg_1 != arg_1), vec2<bool>(true, true), var_0.e)), var_0, any(arg_0));
}

fn func_4(arg_0: vec4<i32>, arg_1: vec3<bool>, arg_2: Struct_4) -> u32 {
    global1 = array<vec4<bool>, 4>();
    global0 = array<vec4<u32>, 7>();
    let var_0 = arg_2.b.a.a.x || arg_2.b.a.a.x;
    global0 = array<vec4<u32>, 7>();
    global0 = array<vec4<u32>, 7>();
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<i32>(0i << (u_input.b.x % 32u), -u_input.a, 7710i);
    let var_1 = ~select(_wgslsmith_sub_u32(u_input.b.x, func_4(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.c, var_0.x, var_0.x, var_0.x), vec4<i32>(var_0.x, 2147483647i, u_input.c, -1i)), vec3<bool>(true, true, true), func_1(vec3<bool>(true, true, true), 4294967295u, u_input.a, 403f))), _wgslsmith_add_u32(~(u_input.b.x & 0u), ~u_input.b.x), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(104f * 445f), _wgslsmith_div_f32(-1000f, -829f))) >= _wgslsmith_f_op_vec4_f32(func_2()).x);
    var var_2 = Struct_2(Struct_1(select(vec3<bool>(any(vec2<bool>(false, false)), true, true), func_1(vec3<bool>(true, true, true), 13288u, var_0.x, _wgslsmith_f_op_f32(1000f * -1016f)).b.a.a, !select(true, false, false)), true, -_wgslsmith_clamp_i32(u_input.c, _wgslsmith_sub_i32(-7889i, -6096i), max(-13208i, var_0.x))), !func_1(select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, true)), false), ~(~var_1), u_input.a, 502f).b.b);
    var var_3 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.x, u_input.b.x, 17266i, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(685f, -847f, 487f, -688f)))) * _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(func_2()), vec4<f32>(_wgslsmith_f_op_f32(step(-1000f, 338f)), _wgslsmith_f_op_f32(654f * -804f), _wgslsmith_div_f32(880f, 2577f), _wgslsmith_f_op_f32(f32(-1f) * -603f))))));
}

