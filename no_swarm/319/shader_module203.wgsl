struct Struct_1 {
    a: i32,
    b: f32,
    c: i32,
    d: u32,
    e: vec3<i32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: Struct_1,
    d: vec3<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: Struct_1,
    d: vec3<f32>,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 2147483647i;

var<private> global1: i32 = 2147483647i;

var<private> global2: array<vec2<bool>, 31> = array<vec2<bool>, 31>(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true));

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
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

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: Struct_4) -> u32 {
    global1 = -_wgslsmith_dot_vec2_i32(arg_0.a.c.e.yx, -(~arg_0.a.d.zz));
    let var_0 = arg_0.a.b;
    let var_1 = !select(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 0u, 89218u, u_input.b), ~vec4<u32>(arg_0.a.c.d, var_0.d, 4294967295u, var_0.d)), 1u), 31u)], select(!select(global2[_wgslsmith_index_u32(u_input.b, 31u)], vec2<bool>(true, false), false), vec2<bool>(all(vec3<bool>(false, false, true)), true), vec2<bool>(true, true)), any(select(global2[_wgslsmith_index_u32(6939u, 31u)], select(vec2<bool>(false, true), global2[_wgslsmith_index_u32(var_0.d, 31u)], vec2<bool>(true, true)), true)));
    global0 = u_input.d.x;
    global0 = -(~(_wgslsmith_add_i32(select(11362i, 0i, true), -u_input.c.x) >> (1u % 32u)));
    return ~arg_0.a.b.d | min(select(6018u & _wgslsmith_mod_u32(u_input.b, 53330u), ~14541u, false), 62182u);
}

fn func_2(arg_0: Struct_3, arg_1: i32, arg_2: f32, arg_3: Struct_1) -> Struct_1 {
    global1 = _wgslsmith_sub_i32(-5373i, _wgslsmith_mod_i32(-(select(-14802i, -47508i, true) >> (arg_3.d % 32u)), u_input.c.x));
    let var_0 = arg_3.d ^ min(arg_3.d, 0u);
    let var_1 = Struct_4(arg_0.a);
    var var_2 = arg_3.b;
    var var_3 = select(vec2<u32>(func_3(Struct_4(Struct_2(vec2<u32>(u_input.b, var_1.a.a.x), arg_3, Struct_1(arg_0.e.e.x, -1371f, -2147483647i, u_input.b, vec3<i32>(u_input.c.x, arg_1, -10917i)), vec3<i32>(arg_0.e.a, arg_1, 1i)))), ~u_input.b), vec2<u32>(~_wgslsmith_div_u32(42028u, ~16569u), var_1.a.c.d), !any(!select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(true, false, true))));
    return Struct_1(-_wgslsmith_add_i32(_wgslsmith_div_i32(-19791i, 6210i), _wgslsmith_dot_vec3_i32(vec3<i32>(arg_1, arg_1, arg_3.c), vec3<i32>(-37606i, 62564i, var_1.a.d.x))) | 2170i, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_1.a.b.b, _wgslsmith_f_op_f32(-var_1.a.c.b)))))), ~_wgslsmith_dot_vec2_i32(min(arg_0.a.d.yx, arg_3.e.zy), vec2<i32>(var_1.a.b.a, _wgslsmith_dot_vec2_i32(arg_3.e.yz, arg_0.a.b.e.yx))), (~_wgslsmith_add_u32(arg_3.d, 4294967295u) << (~(~var_0) % 32u)) | _wgslsmith_sub_u32(~50452u, ~(~var_1.a.c.d)), -arg_0.a.c.e);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: bool) -> i32 {
    var var_0 = Struct_3(arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_0.b.b)) + _wgslsmith_f_op_f32(floor(1000f))))) + _wgslsmith_f_op_f32(f32(-1f) * -522f)), Struct_1(firstLeadingBit(arg_0.b.a), arg_0.b.b, -u_input.d.x, func_2(Struct_3(Struct_2(vec2<u32>(58528u, u_input.b), Struct_1(16806i, arg_0.c.b, -1i, arg_0.b.d, vec3<i32>(-20978i, arg_0.b.a, 1i)), arg_0.c, arg_0.b.e), arg_1.c.b, func_2(Struct_3(arg_0, -1444f, Struct_1(-8356i, -1000f, 25311i, 4294967295u, vec3<i32>(2147483647i, u_input.a, arg_0.b.a)), vec3<f32>(1572f, -603f, 403f), Struct_1(u_input.c.x, 869f, arg_0.d.x, arg_1.c.d, vec3<i32>(arg_0.b.e.x, arg_1.c.a, 1i))), 26114i, -1153f, arg_0.c), vec3<f32>(792f, arg_1.b.b, arg_0.b.b), func_2(Struct_3(arg_1, 1317f, arg_1.b, vec3<f32>(arg_1.b.b, 169f, arg_0.c.b), Struct_1(27882i, 101f, arg_1.c.e.x, arg_0.a.x, vec3<i32>(arg_0.d.x, u_input.d.x, -17982i))), 10327i, 1435f, Struct_1(2147483647i, -1668f, -1i, u_input.b, arg_1.d))), _wgslsmith_dot_vec4_i32(u_input.d, u_input.d), 680f, arg_0.c).d, ~_wgslsmith_div_vec3_i32(vec3<i32>(u_input.c.x, 78572i, arg_0.c.c), u_input.d.xwy)), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1200f))) * arg_0.b.b), -592f, arg_0.b.b), func_2(Struct_3(Struct_2(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(u_input.b, u_input.b)), arg_1.b, arg_0.b, vec3<i32>(-2147483647i, arg_0.d.x, arg_0.b.c)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_0.b.b + arg_0.c.b), arg_1.c.b)), arg_1.b, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.b.b, arg_1.b.b, 536f)))), arg_1.b), arg_1.c.e.x, arg_1.b.b, func_2(Struct_3(Struct_2(vec2<u32>(arg_0.c.d, 14997u), Struct_1(-1i, -360f, u_input.a, arg_0.a.x, u_input.c), Struct_1(-1170i, 1755f, arg_0.b.a, 0u, vec3<i32>(1i, arg_1.d.x, 0i)), arg_1.c.e), -933f, func_2(Struct_3(arg_1, -1037f, arg_0.b, vec3<f32>(arg_0.b.b, -498f, -1427f), arg_0.b), 45941i, arg_1.c.b, Struct_1(arg_1.c.a, arg_1.b.b, -30802i, 36742u, arg_1.c.e)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-968f, arg_1.c.b, arg_1.c.b), vec3<f32>(arg_1.c.b, -163f, 168f))), func_2(Struct_3(Struct_2(arg_0.a, arg_1.b, Struct_1(arg_0.d.x, 1000f, u_input.a, 1u, arg_1.d), vec3<i32>(0i, arg_1.c.e.x, -8381i)), arg_1.c.b, arg_0.b, vec3<f32>(arg_0.b.b, 670f, arg_1.b.b), Struct_1(u_input.a, -1430f, arg_1.d.x, 0u, arg_0.c.e)), u_input.d.x, arg_1.b.b, Struct_1(u_input.a, arg_0.b.b, 52182i, u_input.b, arg_1.d))), -29556i, arg_0.c.b, Struct_1(i32(-1i) * -2147483647i, _wgslsmith_f_op_f32(-arg_1.b.b), arg_0.c.c, arg_1.b.d | u_input.b, ~vec3<i32>(179i, -36097i, u_input.d.x)))));
    global0 = arg_0.b.c;
    var var_1 = Struct_4(Struct_2(arg_1.a, func_2(Struct_3(Struct_2(vec2<u32>(u_input.b, 1u), Struct_1(26857i, -335f, -21296i, 4294967295u, arg_1.d), arg_0.c, arg_0.b.e), _wgslsmith_f_op_f32(min(1130f, -572f)), Struct_1(11646i, 995f, 1i, 65164u, vec3<i32>(arg_1.b.c, 11140i, arg_0.c.a)), _wgslsmith_div_vec3_f32(vec3<f32>(var_0.b, arg_1.b.b, 1615f), vec3<f32>(var_0.a.c.b, var_0.a.b.b, arg_0.c.b)), func_2(Struct_3(var_0.a, 2551f, Struct_1(u_input.c.x, 2509f, var_0.c.c, var_0.c.d, vec3<i32>(2147483647i, arg_1.c.e.x, u_input.c.x)), var_0.d, var_0.a.c), 20624i, var_0.b, arg_0.b)), 2147483647i, var_0.d.x, arg_1.b), Struct_1(var_0.a.d.x, _wgslsmith_f_op_f32(-221f * func_2(Struct_3(Struct_2(vec2<u32>(u_input.b, 1u), arg_1.b, Struct_1(-31804i, arg_1.c.b, -16063i, 1u, arg_0.b.e), arg_1.b.e), var_0.a.c.b, arg_0.c, var_0.d, var_0.a.b), arg_0.c.e.x, -406f, arg_0.b).b), u_input.d.x, 1u, firstTrailingBit(reverseBits(vec3<i32>(2147483647i, -28028i, u_input.d.x)))), -(vec3<i32>(-1i) * -vec3<i32>(-1i, var_0.e.c, -2147483647i))));
    var_0 = Struct_3(arg_0, _wgslsmith_div_f32(arg_0.c.b, _wgslsmith_f_op_f32(step(arg_1.c.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(295f, -122f)) * _wgslsmith_f_op_f32(441f - arg_0.c.b))))), Struct_1(var_1.a.c.e.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(1000f, 491f)), -911f)))), i32(-1i) * -31335i, arg_1.c.d, min(_wgslsmith_clamp_vec3_i32(vec3<i32>(2147483647i, -64691i, 954i), var_0.e.e, _wgslsmith_div_vec3_i32(arg_1.d, var_0.e.e)), vec3<i32>(var_1.a.d.x, arg_1.b.c, 2147483647i))), var_0.d, arg_1.b);
    var var_2 = var_1.a;
    return 1i;
}

fn func_1(arg_0: vec3<bool>, arg_1: vec2<f32>) -> f32 {
    global1 = _wgslsmith_sub_i32(func_4(Struct_2(select(max(vec2<u32>(u_input.b, 4294967295u), vec2<u32>(0u, u_input.b)), _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.b, 4294967295u), vec2<u32>(24316u, u_input.b)), any(vec3<bool>(arg_0.x, arg_0.x, arg_0.x))), func_2(Struct_3(Struct_2(vec2<u32>(u_input.b, 0u), Struct_1(u_input.c.x, 1136f, u_input.c.x, u_input.b, u_input.d.wxz), Struct_1(u_input.c.x, 365f, 12220i, 0u, u_input.d.ywz), vec3<i32>(-48592i, u_input.c.x, u_input.c.x)), -881f, Struct_1(19361i, arg_1.x, u_input.c.x, 4294967295u, u_input.d.xyy), vec3<f32>(arg_1.x, arg_1.x, arg_1.x), Struct_1(-37360i, arg_1.x, 19153i, 4294967295u, u_input.d.xww)), _wgslsmith_mult_i32(u_input.c.x, 0i), _wgslsmith_f_op_f32(-arg_1.x), Struct_1(-1i, arg_1.x, -2147483647i, 1u, vec3<i32>(-1i, -1i, u_input.a))), func_2(Struct_3(Struct_2(vec2<u32>(u_input.b, u_input.b), Struct_1(-58269i, arg_1.x, u_input.a, 32894u, vec3<i32>(u_input.d.x, 0i, u_input.a)), Struct_1(-2147483647i, 1000f, u_input.d.x, u_input.b, u_input.d.xyx), vec3<i32>(u_input.d.x, 27077i, u_input.c.x)), -850f, Struct_1(u_input.a, 1345f, u_input.c.x, u_input.b, u_input.d.zxy), vec3<f32>(2017f, arg_1.x, arg_1.x), Struct_1(u_input.c.x, arg_1.x, u_input.d.x, 6353u, vec3<i32>(-37482i, u_input.d.x, u_input.d.x))), min(57549i, -9632i), _wgslsmith_f_op_f32(arg_1.x - arg_1.x), func_2(Struct_3(Struct_2(vec2<u32>(1u, 103287u), Struct_1(-6266i, arg_1.x, u_input.d.x, 4294967295u, vec3<i32>(-20464i, -1i, -1i)), Struct_1(u_input.a, arg_1.x, -25826i, 1u, vec3<i32>(u_input.c.x, 2147483647i, -2147483647i)), u_input.d.zzw), arg_1.x, Struct_1(u_input.a, 565f, u_input.a, 52204u, vec3<i32>(41967i, u_input.c.x, u_input.a)), vec3<f32>(arg_1.x, arg_1.x, arg_1.x), Struct_1(u_input.c.x, -1154f, u_input.d.x, 25577u, vec3<i32>(u_input.a, u_input.d.x, 7454i))), u_input.d.x, 501f, Struct_1(-655i, arg_1.x, 2147483647i, u_input.b, vec3<i32>(19066i, 9863i, u_input.c.x)))), abs(vec3<i32>(u_input.c.x, -54304i, u_input.c.x))), Struct_2(~vec2<u32>(17992u, u_input.b), func_2(Struct_3(Struct_2(vec2<u32>(96289u, 3913u), Struct_1(9218i, arg_1.x, u_input.d.x, 4850u, u_input.d.yww), Struct_1(1i, arg_1.x, u_input.d.x, 38551u, vec3<i32>(u_input.a, u_input.c.x, 2147483647i)), vec3<i32>(-2147483647i, 21787i, 2147483647i)), 371f, Struct_1(u_input.d.x, arg_1.x, u_input.d.x, u_input.b, vec3<i32>(u_input.d.x, 1i, u_input.a)), vec3<f32>(arg_1.x, -171f, arg_1.x), Struct_1(31064i, -1308f, u_input.c.x, u_input.b, vec3<i32>(u_input.a, 0i, -10848i))), u_input.d.x, _wgslsmith_f_op_f32(-arg_1.x), Struct_1(2147483647i, 432f, -2147483647i, 1u, u_input.c)), func_2(Struct_3(Struct_2(vec2<u32>(0u, u_input.b), Struct_1(-13969i, 519f, u_input.d.x, u_input.b, vec3<i32>(1i, 1i, u_input.c.x)), Struct_1(0i, arg_1.x, 0i, 58217u, vec3<i32>(u_input.d.x, 2147483647i, u_input.d.x)), vec3<i32>(u_input.a, -76129i, u_input.d.x)), arg_1.x, Struct_1(23195i, 472f, 31884i, u_input.b, u_input.c), vec3<f32>(-1766f, arg_1.x, arg_1.x), Struct_1(u_input.c.x, 953f, u_input.d.x, u_input.b, vec3<i32>(u_input.c.x, u_input.d.x, u_input.a))), u_input.d.x, -329f, func_2(Struct_3(Struct_2(vec2<u32>(u_input.b, 43469u), Struct_1(u_input.c.x, arg_1.x, 47121i, u_input.b, vec3<i32>(19725i, 2147483647i, u_input.c.x)), Struct_1(u_input.d.x, -1730f, 24704i, u_input.b, vec3<i32>(u_input.c.x, u_input.a, u_input.d.x)), vec3<i32>(94570i, -37075i, 5460i)), arg_1.x, Struct_1(u_input.d.x, 152f, u_input.c.x, u_input.b, u_input.c), vec3<f32>(1666f, arg_1.x, -1000f), Struct_1(32035i, arg_1.x, -2147483647i, u_input.b, vec3<i32>(-53481i, -28181i, 1i))), u_input.a, -919f, Struct_1(u_input.d.x, arg_1.x, -16032i, 27386u, u_input.c))), vec3<i32>(~2147483647i, ~u_input.c.x, u_input.a)), !(!arg_0.x)), -(~(-_wgslsmith_dot_vec4_i32(u_input.d, vec4<i32>(u_input.c.x, -2147483647i, u_input.a, u_input.a)))));
    let var_0 = arg_1.x;
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, var_0, 2038f) + vec3<f32>(753f, var_0, var_0)))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1069f, var_0, -399f)), vec3<f32>(-1168f, _wgslsmith_f_op_f32(-1290f + -103f), _wgslsmith_f_op_f32(f32(-1f) * -399f))))) * vec3<f32>(var_0, 149f, func_2(Struct_3(Struct_2(vec2<u32>(11178u, 0u), Struct_1(10493i, arg_1.x, 1i, u_input.b, u_input.c), Struct_1(-967i, -1000f, u_input.c.x, 15753u, vec3<i32>(u_input.a, -2147483647i, u_input.a)), vec3<i32>(u_input.c.x, -39464i, 0i)), arg_1.x, Struct_1(22622i, 354f, u_input.d.x, u_input.b, u_input.c), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(324f, -2051f, arg_1.x), vec3<f32>(arg_1.x, var_0, 625f), arg_0)), func_2(Struct_3(Struct_2(vec2<u32>(u_input.b, 1u), Struct_1(u_input.d.x, arg_1.x, u_input.d.x, u_input.b, u_input.c), Struct_1(22104i, -416f, -1i, 23393u, u_input.c), vec3<i32>(3537i, u_input.c.x, u_input.c.x)), var_0, Struct_1(u_input.a, 537f, 20720i, u_input.b, vec3<i32>(u_input.d.x, -6167i, -26023i)), vec3<f32>(arg_1.x, arg_1.x, arg_1.x), Struct_1(35142i, 1465f, 48545i, u_input.b, u_input.d.xwy)), u_input.d.x, 277f, Struct_1(0i, -566f, -9839i, u_input.b, vec3<i32>(u_input.d.x, u_input.c.x, u_input.a)))), u_input.a, -584f, Struct_1(1i, arg_1.x, reverseBits(-23405i), u_input.b << (u_input.b % 32u), vec3<i32>(2147483647i, u_input.c.x, u_input.c.x) | vec3<i32>(-2147483647i, 26562i, 0i))).b));
    global1 = _wgslsmith_dot_vec2_i32(u_input.c.zz >> ((countOneBits(_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 0u), vec2<u32>(1u, u_input.b), vec2<u32>(66431u, u_input.b))) << (~(vec2<u32>(u_input.b, u_input.b) & vec2<u32>(2104u, 21838u)) % vec2<u32>(32u))) % vec2<u32>(32u)), vec2<i32>(~(max(u_input.a, u_input.d.x) & u_input.a), u_input.d.x));
    var var_2 = func_2(Struct_3(Struct_2(~(vec2<u32>(4294967295u, u_input.b) >> (vec2<u32>(u_input.b, 0u) % vec2<u32>(32u))), func_2(Struct_3(Struct_2(vec2<u32>(u_input.b, u_input.b), Struct_1(5715i, arg_1.x, u_input.c.x, 1459u, u_input.c), Struct_1(-2147483647i, 365f, u_input.a, u_input.b, u_input.d.zxx), u_input.d.xyw), -651f, Struct_1(u_input.a, 1389f, u_input.a, u_input.b, u_input.d.xyx), vec3<f32>(494f, -496f, 1070f), Struct_1(u_input.a, arg_1.x, u_input.c.x, 28594u, vec3<i32>(u_input.d.x, u_input.c.x, u_input.a))), -2147483647i >> (1u % 32u), -487f, func_2(Struct_3(Struct_2(vec2<u32>(u_input.b, u_input.b), Struct_1(-1i, -3036f, u_input.d.x, u_input.b, u_input.d.yxw), Struct_1(-12798i, arg_1.x, u_input.d.x, 23463u, vec3<i32>(u_input.d.x, u_input.d.x, u_input.c.x)), vec3<i32>(u_input.a, 18627i, 15977i)), 2632f, Struct_1(-1i, 191f, u_input.d.x, 66842u, vec3<i32>(1i, -2147483647i, u_input.d.x)), vec3<f32>(var_0, var_0, -770f), Struct_1(u_input.d.x, -779f, -1i, 1251u, vec3<i32>(-51115i, 2147483647i, u_input.d.x))), 22648i, 617f, Struct_1(u_input.d.x, var_0, u_input.c.x, 0u, vec3<i32>(u_input.d.x, 0i, u_input.c.x)))), Struct_1(func_2(Struct_3(Struct_2(vec2<u32>(991u, u_input.b), Struct_1(33732i, 1849f, u_input.c.x, u_input.b, u_input.d.xwz), Struct_1(18043i, 419f, -2147483647i, 49954u, u_input.c), u_input.d.wzy), 282f, Struct_1(u_input.d.x, 716f, -5946i, 0u, vec3<i32>(u_input.c.x, 33050i, 86687i)), vec3<f32>(var_0, 810f, arg_1.x), Struct_1(u_input.c.x, var_0, u_input.a, 82628u, vec3<i32>(0i, u_input.a, 1i))), u_input.d.x, arg_1.x, Struct_1(1i, var_1.x, 1i, u_input.b, u_input.c)).e.x, arg_1.x, -u_input.c.x, ~u_input.b, -vec3<i32>(u_input.a, u_input.a, -1i)), firstTrailingBit(u_input.d.zxy & u_input.c)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 - var_0) - var_0))), Struct_1(_wgslsmith_mult_i32(firstLeadingBit(u_input.d.x), u_input.d.x), -122f, 16826i, u_input.b ^ max(10719u, u_input.b), abs(~vec3<i32>(2147483647i, -34614i, u_input.a))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(453f, var_0, -717f) - vec3<f32>(-947f, var_0, 1261f)))), Struct_1(u_input.c.x, var_1.x, u_input.d.x, u_input.b, ~_wgslsmith_div_vec3_i32(u_input.c, vec3<i32>(u_input.d.x, u_input.c.x, -5747i)))), ~(~countOneBits(52525i)), 409f, func_2(Struct_3(Struct_2(abs(vec2<u32>(u_input.b, 1u)), func_2(Struct_3(Struct_2(vec2<u32>(0u, 1u), Struct_1(u_input.d.x, -218f, -7449i, u_input.b, u_input.d.wyw), Struct_1(u_input.c.x, var_0, 2147483647i, u_input.b, u_input.c), u_input.d.zzx), var_0, Struct_1(u_input.c.x, 766f, u_input.d.x, u_input.b, u_input.c), vec3<f32>(290f, arg_1.x, -192f), Struct_1(-25841i, -1203f, u_input.d.x, u_input.b, vec3<i32>(u_input.d.x, u_input.a, u_input.d.x))), u_input.a, arg_1.x, Struct_1(-1i, var_0, 1i, u_input.b, u_input.c)), Struct_1(u_input.a, arg_1.x, -1i, 3502u, vec3<i32>(u_input.d.x, u_input.a, u_input.d.x)), max(vec3<i32>(u_input.d.x, -2147483647i, -44872i), u_input.d.xyy)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) * 191f), Struct_1(~0i, var_1.x, -u_input.d.x, ~u_input.b, min(u_input.c, u_input.c)), vec3<f32>(_wgslsmith_f_op_f32(-var_0), -391f, _wgslsmith_f_op_f32(min(-281f, -1160f))), Struct_1(i32(-1i) * -7038i, _wgslsmith_f_op_f32(select(arg_1.x, -813f, true)), i32(-1i) * -14074i, firstTrailingBit(760u), -vec3<i32>(-1i, u_input.d.x, -2147483647i))), _wgslsmith_dot_vec3_i32(u_input.c, vec3<i32>(-27279i, 70934i >> (u_input.b % 32u), u_input.c.x)), var_0, Struct_1(u_input.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1141f)) + _wgslsmith_f_op_f32(-arg_1.x)), u_input.c.x, u_input.b, select(vec3<i32>(u_input.d.x, u_input.c.x, 2147483647i), vec3<i32>(u_input.a, 32113i, 0i), arg_0.x) | vec3<i32>(0i, 20767i, u_input.a))));
    return _wgslsmith_f_op_f32(sign(725f));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_add_i32(17615i, ~(~(-(~1i))));
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-581f + _wgslsmith_f_op_f32(-1000f + -125f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-588f - 1478f), _wgslsmith_f_op_f32(select(260f, _wgslsmith_f_op_f32(func_1(vec3<bool>(true, true, true), vec2<f32>(509f, 777f))), true)))));
    var var_1 = select(vec2<bool>(all(vec3<bool>(true, true, true)), true), vec2<bool>(!all(vec2<bool>(true, true)), true), select(!(!global2[_wgslsmith_index_u32(u_input.b, 31u)]), !select(vec2<bool>(true, true), select(global2[_wgslsmith_index_u32(u_input.b, 31u)], vec2<bool>(false, false), false), true), _wgslsmith_sub_u32(0u, countOneBits(u_input.b)) <= ~1u));
    var var_2 = abs(49942u);
    var_2 = max(~(u_input.b | u_input.b), u_input.b | 102378u);
    global1 = _wgslsmith_add_i32(-_wgslsmith_mult_i32(1i, u_input.d.x), 18888i);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.x, _wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(781f - 444f)));
}

