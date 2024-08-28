struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: u32,
    d: vec4<i32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 5>;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> u32 {
    global0 = array<vec3<u32>, 5>();
    global0 = array<vec3<u32>, 5>();
    var var_0 = select(vec2<bool>(any(vec2<bool>(true, true)), true), vec2<bool>(all(vec4<bool>(true, true, true, true)) | (~(-1i) <= u_input.b), !any(vec4<bool>(true, true, true, true))), !((-u_input.a == ~u_input.c) && true));
    global0 = array<vec3<u32>, 5>();
    let var_1 = select(select(select(vec4<bool>(var_0.x, true, true, true), !select(vec4<bool>(true, true, true, false), vec4<bool>(false, var_0.x, false, true), var_0.x), !vec4<bool>(false, var_0.x, var_0.x, var_0.x)), !(!vec4<bool>(var_0.x, var_0.x, false, false)), all(vec4<bool>(true, true, true, true))), vec4<bool>(any(select(vec3<bool>(true, true, true), !vec3<bool>(var_0.x, var_0.x, false), select(vec3<bool>(var_0.x, var_0.x, true), vec3<bool>(var_0.x, false, false), vec3<bool>(true, var_0.x, var_0.x)))), all(!vec4<bool>(false, false, var_0.x, var_0.x)), true, any(vec4<bool>(var_0.x, var_0.x, true, true))), select(!select(!vec4<bool>(true, true, var_0.x, true), select(vec4<bool>(var_0.x, var_0.x, var_0.x, false), vec4<bool>(false, var_0.x, false, var_0.x), false), !vec4<bool>(false, var_0.x, false, var_0.x)), !vec4<bool>(true, !var_0.x, false, false), var_0.x));
    return _wgslsmith_mult_u32(~15742u, _wgslsmith_div_u32(4294967295u, ~(0u & u_input.e.x) << (_wgslsmith_sub_u32(u_input.e.x, ~4294967295u) % 32u)));
}

fn func_2() -> Struct_1 {
    global0 = array<vec3<u32>, 5>();
    let var_0 = ~func_3();
    global0 = array<vec3<u32>, 5>();
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -863f), -1640f, _wgslsmith_f_op_f32(min(-1000f, 1168f)), _wgslsmith_f_op_f32(-2084f * 605f)) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(954f, 457f, 779f, 1259f))), _wgslsmith_div_vec4_f32(vec4<f32>(1234f, -1511f, -1088f, -876f), vec4<f32>(-605f, -186f, -1000f, 190f))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-2353f, -685f, -1305f, 746f))))));
    let var_2 = Struct_1(_wgslsmith_mod_u32(4294967295u, ~(func_3() >> (29502u % 32u))));
    return var_2;
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    return Struct_1(1u);
}

fn func_5(arg_0: u32, arg_1: Struct_1, arg_2: vec3<bool>) -> Struct_1 {
    global0 = array<vec3<u32>, 5>();
    global0 = array<vec3<u32>, 5>();
    var var_0 = func_2();
    var var_1 = ~vec2<i32>(_wgslsmith_div_i32(u_input.a, u_input.b), -1i);
    var_1 = ~(~vec2<i32>(_wgslsmith_div_i32(~8942i, ~(-28884i)), u_input.a));
    return arg_1;
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<bool>) -> i32 {
    global0 = array<vec3<u32>, 5>();
    global0 = array<vec3<u32>, 5>();
    let var_0 = arg_0;
    var var_1 = Struct_1(reverseBits(_wgslsmith_mod_u32(_wgslsmith_sub_u32(_wgslsmith_mult_u32(var_0.a, 14658u), 103836u), ~arg_0.a)));
    var var_2 = vec2<i32>(~(~(~u_input.a)), _wgslsmith_mult_i32(u_input.b >> (~0u % 32u), -1i)) ^ ~reverseBits(_wgslsmith_div_vec2_i32(vec2<i32>(2147483647i, -23298i), ~vec2<i32>(u_input.c, -1i)));
    return _wgslsmith_sub_i32(_wgslsmith_mult_i32(_wgslsmith_div_i32(~_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, 0i), vec2<i32>(0i, var_2.x)), _wgslsmith_sub_i32(~var_2.x, var_2.x ^ u_input.a)), 2147483647i), var_2.x);
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    global0 = array<vec3<u32>, 5>();
    var var_0 = max(13340i, ~(u_input.a ^ abs(_wgslsmith_clamp_i32(u_input.a, u_input.b, 49791i))));
    var var_1 = u_input.a;
    var_1 = func_6(Struct_1(arg_0.a), func_5(_wgslsmith_div_u32(4294967295u, _wgslsmith_div_u32(select(0u, arg_1.a, true), 1u)), func_4(func_2()), vec3<bool>(true, true, true)), vec4<bool>(!all(vec2<bool>(false, false)), any(vec2<bool>(false, false)) | true, false, false));
    let var_2 = countOneBits(~_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c, 2147483647i, ~(-2296i), firstTrailingBit(u_input.b)), ~_wgslsmith_clamp_vec4_i32(vec4<i32>(1i, 2147483647i, u_input.c, u_input.b), vec4<i32>(u_input.a, -35177i, 1i, -100030i), vec4<i32>(29412i, u_input.a, u_input.c, u_input.a))));
    return arg_0;
}

fn func_7(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: vec3<bool>) -> i32 {
    global0 = array<vec3<u32>, 5>();
    global0 = array<vec3<u32>, 5>();
    global0 = array<vec3<u32>, 5>();
    var var_0 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.x, arg_1.x, arg_1.x)) + vec3<f32>(arg_1.x, 1822f, 382f)) * _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_1.x, 744f, -1371f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(226f, 700f, -1000f), vec3<f32>(-332f, -469f, -885f), arg_2)))))));
    var var_1 = arg_2.x;
    return ~(56389i & u_input.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.d;
    var var_1 = Struct_1(firstLeadingBit(1u));
    global0 = array<vec3<u32>, 5>();
    var var_2 = vec4<i32>(select(u_input.c, 23488i, true || any(select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true)))), 2147483647i, ~u_input.b, func_7(func_1(Struct_1(u_input.d), Struct_1(1u | var_1.a)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(abs(-570f)), _wgslsmith_f_op_f32(795f * -116f))), select(!select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, true)), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true)), select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true))), vec3<bool>(true, true, true))));
    var var_3 = false;
    let var_4 = var_2.wwy;
    global0 = array<vec3<u32>, 5>();
    var var_5 = Struct_1(0u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(905f - 2343f) + -1179f), _wgslsmith_mult_vec2_i32(countOneBits(~(-vec2<i32>(u_input.a, u_input.a))), _wgslsmith_sub_vec2_i32(~vec2<i32>(u_input.a, var_4.x) | vec2<i32>(var_4.x, var_2.x), vec2<i32>(i32(-1i) * -1i, _wgslsmith_dot_vec2_i32(var_2.yy, vec2<i32>(var_4.x, var_2.x))))), ~4294967295u, vec4<i32>(-1i) * -_wgslsmith_sub_vec4_i32(vec4<i32>(var_4.x, u_input.c, 13541i, 0i), vec4<i32>(var_2.x, var_4.x, -19193i, 0i)), vec2<u32>(~(~func_2().a), ~var_1.a << ((20769u | _wgslsmith_mult_u32(var_1.a, 4294967295u)) % 32u)));
}

