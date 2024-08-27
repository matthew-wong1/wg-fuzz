struct Struct_1 {
    a: vec3<i32>,
    b: vec2<u32>,
    c: bool,
    d: vec2<u32>,
    e: vec4<i32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: bool,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec4<f32>,
}

struct Struct_4 {
    a: Struct_1,
    b: i32,
}

struct Struct_5 {
    a: f32,
    b: u32,
    c: vec4<f32>,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 5> = array<vec3<u32>, 5>(vec3<u32>(35047u, 61864u, 12774u), vec3<u32>(4294967295u, 24371u, 128377u), vec3<u32>(56324u, 47364u, 84603u), vec3<u32>(48974u, 33634u, 31285u), vec3<u32>(26948u, 4294967295u, 0u));

var<private> global1: array<Struct_4, 11> = array<Struct_4, 11>(Struct_4(Struct_1(vec3<i32>(0i, 0i, 1i), vec2<u32>(56619u, 51424u), false, vec2<u32>(74372u, 1u), vec4<i32>(-1i, -54674i, 900i, 13417i)), i32(-2147483648)), Struct_4(Struct_1(vec3<i32>(-35290i, -42885i, -33398i), vec2<u32>(4294967295u, 29381u), false, vec2<u32>(852u, 19400u), vec4<i32>(-50979i, 0i, -26873i, 2147483647i)), 0i), Struct_4(Struct_1(vec3<i32>(14994i, -1i, 1i), vec2<u32>(4294967295u, 1u), false, vec2<u32>(29677u, 49174u), vec4<i32>(-25385i, -74466i, -1i, i32(-2147483648))), -1i), Struct_4(Struct_1(vec3<i32>(0i, -55929i, -14850i), vec2<u32>(47025u, 6133u), true, vec2<u32>(74152u, 35735u), vec4<i32>(-22096i, -30174i, -1i, -50345i)), 3687i), Struct_4(Struct_1(vec3<i32>(5734i, 2147483647i, i32(-2147483648)), vec2<u32>(61082u, 0u), true, vec2<u32>(20107u, 92449u), vec4<i32>(i32(-2147483648), -1i, -76434i, 0i)), -1i), Struct_4(Struct_1(vec3<i32>(2268i, 2463i, -2488i), vec2<u32>(30708u, 0u), true, vec2<u32>(79391u, 4294967295u), vec4<i32>(-1i, i32(-2147483648), 1i, 0i)), 2535i), Struct_4(Struct_1(vec3<i32>(-49068i, -5808i, -1i), vec2<u32>(0u, 33955u), false, vec2<u32>(1u, 40832u), vec4<i32>(67208i, 12223i, 2147483647i, -12199i)), 1i), Struct_4(Struct_1(vec3<i32>(1i, 5212i, 22714i), vec2<u32>(4294967295u, 14678u), true, vec2<u32>(44124u, 4294967295u), vec4<i32>(0i, -28067i, 36665i, -1i)), -1i), Struct_4(Struct_1(vec3<i32>(i32(-2147483648), -1i, 0i), vec2<u32>(1u, 0u), true, vec2<u32>(15512u, 0u), vec4<i32>(35639i, 0i, i32(-2147483648), 17078i)), 2147483647i), Struct_4(Struct_1(vec3<i32>(2147483647i, 2147483647i, -43855i), vec2<u32>(66861u, 1u), true, vec2<u32>(1u, 0u), vec4<i32>(0i, 7187i, 2147483647i, -38911i)), -36944i), Struct_4(Struct_1(vec3<i32>(-18057i, 0i, -28173i), vec2<u32>(1u, 26368u), false, vec2<u32>(36418u, 4294967295u), vec4<i32>(1i, 0i, 17286i, -26927i)), 0i));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: vec4<u32>) -> bool {
    let var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_1.a.x, -100f, arg_1.a.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1351f, 1000f, arg_1.a.x))))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-153f)) + 2181f), arg_1.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_1.a.x, arg_1.a.x))), _wgslsmith_f_op_f32(round(796f))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_1.a.x, -921f, arg_1.a.x, -299f), vec4<f32>(arg_1.a.x, arg_1.a.x, -1610f, -416f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-200f, arg_1.a.x, -365f, -244f)))));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(exp2(var_0.b.yx)))));
    global0 = array<vec3<u32>, 5>();
    global0 = array<vec3<u32>, 5>();
    let var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(var_0.b.zw + var_0.b.xy), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(arg_1.a, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_1.a.x, 1592f), vec2<f32>(arg_1.a.x, arg_1.a.x), vec2<bool>(arg_1.b, arg_1.b)))))))), _wgslsmith_mod_u32(arg_1.d.d.x, _wgslsmith_sub_u32(countOneBits(1u), arg_2.x)) < arg_2.x, Struct_1(vec3<i32>(_wgslsmith_sub_i32(arg_1.d.a.x, 1i), _wgslsmith_sub_i32(arg_1.c.e.x, -2147483647i), arg_1.c.e.x), _wgslsmith_sub_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(7695u, arg_2.x), vec2<u32>(52325u, 1175u), ~vec2<u32>(53295u, 0u)), u_input.a.xx), arg_1.b, vec2<u32>(~arg_1.d.b.x ^ arg_1.d.d.x, 1u), vec4<i32>(~23118i ^ _wgslsmith_sub_i32(arg_0.x, arg_1.d.a.x), abs(-arg_1.c.e.x), _wgslsmith_add_i32(arg_0.x, -62257i) >> (34177u % 32u), min(-arg_0.x, i32(-1i) * -2338i))), Struct_1(-vec3<i32>(47404i | arg_1.d.e.x, 1i, arg_1.c.a.x), _wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a.x, 44338u), _wgslsmith_add_vec2_u32(arg_2.xx, arg_2.xz)), reverseBits(u_input.a.xz << (u_input.a.xz % vec2<u32>(32u)))), true, vec2<u32>(_wgslsmith_dot_vec2_u32(select(arg_2.wy, u_input.a.yz, arg_1.b), vec2<u32>(1u, 1u)), max(_wgslsmith_sub_u32(91760u, arg_2.x), 0u)), ~_wgslsmith_add_vec4_i32(-arg_1.c.e, arg_1.d.e << (arg_2 % vec4<u32>(32u)))));
    return _wgslsmith_f_op_f32(select(var_0.b.x, var_2.a.x, all(vec4<bool>(!arg_1.d.c, any(vec3<bool>(var_2.d.c, var_2.b, false)), false, false)))) > _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-483f - 1722f)) * -611f)));
}

fn func_2(arg_0: vec2<u32>) -> f32 {
    var var_0 = Struct_5(1f, 4294967295u, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-285f, -1000f, 600f, 1562f)), vec4<f32>(1467f, -1112f, 1391f, -1172f)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1010f, 930f, 1530f, 398f)))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -1100f, 453f, -994f))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1000f, 525f, -1379f, -866f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-485f, 1265f, -314f, -1155f) + vec4<f32>(-1526f, -329f, 757f, 647f))))))), select(select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), false), vec2<bool>(false, true)), vec2<bool>(true, true), vec2<bool>(false, true)));
    var var_1 = all(vec4<bool>(var_0.d.x, func_3(~vec3<i32>(-11995i, -38115i, -38132i), Struct_2(var_0.c.xz, false, Struct_1(vec3<i32>(2147483647i, -1i, 0i), u_input.a.xz, var_0.d.x, vec2<u32>(23648u, 0u), vec4<i32>(-1i, 19520i, -14448i, 1i)), Struct_1(vec3<i32>(-9641i, -1i, 0i), vec2<u32>(33611u, 4294967295u), true, arg_0, vec4<i32>(1i, -1i, 37130i, -2147483647i))), ~vec4<u32>(arg_0.x, 35581u, 45250u, 0u)), false, false | (var_0.b <= var_0.b))) && (var_0.b >= var_0.b);
    let var_2 = select(!vec3<bool>(any(vec4<bool>(var_0.d.x, true, var_0.d.x, var_0.d.x)) && !var_0.d.x, all(!vec4<bool>(var_0.d.x, var_0.d.x, true, true)), _wgslsmith_mult_u32(1u, var_0.b) >= abs(4294967295u)), !vec3<bool>(var_0.d.x, !all(vec4<bool>(true, false, var_0.d.x, var_0.d.x)), var_0.d.x), select(select(!select(vec3<bool>(true, var_0.d.x, var_0.d.x), vec3<bool>(false, false, false), vec3<bool>(false, var_0.d.x, true)), select(!vec3<bool>(false, false, var_0.d.x), !vec3<bool>(false, var_0.d.x, true), var_0.a <= -906f), select(vec3<bool>(false, true, var_0.d.x), select(vec3<bool>(var_0.d.x, var_0.d.x, var_0.d.x), vec3<bool>(true, var_0.d.x, true), vec3<bool>(var_0.d.x, var_0.d.x, var_0.d.x)), select(vec3<bool>(var_0.d.x, false, true), vec3<bool>(true, var_0.d.x, var_0.d.x), var_0.d.x))), vec3<bool>((var_0.b >> (arg_0.x % 32u)) == _wgslsmith_div_u32(var_0.b, 55116u), true, true), vec3<bool>(true, var_0.d.x, any(select(vec4<bool>(var_0.d.x, var_0.d.x, true, false), vec4<bool>(false, var_0.d.x, var_0.d.x, true), vec4<bool>(false, var_0.d.x, var_0.d.x, false))))));
    var var_3 = var_0.c.wzy;
    var_3 = var_0.c.xyw;
    return _wgslsmith_f_op_f32(-var_3.x);
}

fn func_4(arg_0: Struct_5, arg_1: vec3<bool>) -> Struct_5 {
    global1 = array<Struct_4, 11>();
    var var_0 = -969f;
    let var_1 = Struct_2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.c.zw), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(arg_0.a * 1141f), 1000f)))), 37874u <= (arg_0.b >> (25787u % 32u)), Struct_1(vec3<i32>(-1i, reverseBits(-2147483647i), -15097i) >> (countOneBits(u_input.a) % vec3<u32>(32u)), u_input.a.zz, arg_0.d.x, ~_wgslsmith_div_vec2_u32(vec2<u32>(arg_0.b, arg_0.b), ~vec2<u32>(arg_0.b, 1u)), vec4<i32>(1i, 1i, 1i, 1i)), Struct_1(_wgslsmith_clamp_vec3_i32(~vec3<i32>(-14203i, -993i, 2147483647i), vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(7798i, -1i), vec2<i32>(-9745i, 1i)), -2147483647i, i32(-1i) * -6325i), vec3<i32>(~(-2147483647i), -2147483647i, 0i)), _wgslsmith_add_vec2_u32(abs(~vec2<u32>(arg_0.b, arg_0.b)), abs(vec2<u32>(u_input.a.x, u_input.a.x))), true, abs(vec2<u32>(countOneBits(42277u), 30817u)), -vec4<i32>(abs(1i), i32(-1i) * -15914i, 1i, ~2147483647i)));
    var var_2 = var_1.c.e;
    var var_3 = arg_0.c;
    return Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-545f))) + 1305f)), firstTrailingBit(u_input.a.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_0.c * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_3.x, -124f, var_3.x, 782f)))))), select(arg_0.d, arg_0.d, !(!(!arg_0.d))));
}

fn func_5(arg_0: Struct_5, arg_1: bool) -> Struct_4 {
    var var_0 = Struct_4(Struct_1(~firstTrailingBit(-vec3<i32>(1i, 1292i, -52687i)), u_input.a.zy, all(vec4<bool>(!arg_1, true && arg_1, true, arg_1 && arg_1)), ~(~(vec2<u32>(0u, arg_0.b) ^ u_input.a.yx)), -vec4<i32>(1i, 1i, 1i, 1i)), -countOneBits(~(-23077i)));
    let var_1 = Struct_1(var_0.a.a, u_input.a.zx, var_0.b <= ((-var_0.b | 1900i) | 1i), firstTrailingBit(~var_0.a.d) ^ _wgslsmith_mod_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(arg_0.b, arg_0.b), u_input.a.zy), ~var_0.a.d >> (firstTrailingBit(var_0.a.b) % vec2<u32>(32u))), var_0.a.e);
    let var_2 = ~(var_1.e.x & _wgslsmith_dot_vec2_i32(var_0.a.e.zw, _wgslsmith_add_vec2_i32(var_1.a.yz, var_1.e.ww) & select(vec2<i32>(2147483647i, var_1.a.x), vec2<i32>(1i, 37127i), var_0.a.c)));
    var_0 = Struct_4(Struct_1(var_1.e.zzw, vec2<u32>(0u, ~(~4294967295u)), firstTrailingBit(~var_0.a.d.x) != _wgslsmith_mod_u32(16434u, ~1u), vec2<u32>(u_input.a.x, 27773u), ~var_1.e), firstLeadingBit(var_0.b));
    let var_3 = func_4(func_4(Struct_5(_wgslsmith_f_op_f32(f32(-1f) * -1759f), var_1.d.x, func_4(func_4(arg_0, vec3<bool>(false, true, var_0.a.c)), !vec3<bool>(true, var_1.c, var_1.c)).c, !select(vec2<bool>(false, false), arg_0.d, false)), !select(select(vec3<bool>(true, arg_0.d.x, false), vec3<bool>(var_0.a.c, true, var_1.c), true), !vec3<bool>(arg_0.d.x, var_1.c, arg_0.d.x), vec3<bool>(false, false, arg_0.d.x))), select(vec3<bool>(arg_0.d.x, !any(vec3<bool>(false, arg_1, true)), true & arg_0.d.x), vec3<bool>(all(!vec4<bool>(false, var_0.a.c, false, arg_0.d.x)), var_1.c && var_1.c, select(!arg_1, true, false)), select(select(select(vec3<bool>(true, true, false), vec3<bool>(arg_0.d.x, true, var_1.c), false), select(vec3<bool>(false, var_0.a.c, arg_1), vec3<bool>(var_1.c, arg_0.d.x, var_0.a.c), vec3<bool>(var_0.a.c, arg_0.d.x, var_0.a.c)), select(vec3<bool>(arg_1, true, false), vec3<bool>(var_0.a.c, var_1.c, var_0.a.c), vec3<bool>(false, true, var_0.a.c))), select(!vec3<bool>(false, arg_1, arg_1), !vec3<bool>(arg_0.d.x, false, true), true), vec3<bool>(false, !var_0.a.c, all(vec3<bool>(false, true, var_1.c))))));
    return global1[_wgslsmith_index_u32(9800u ^ _wgslsmith_div_u32(~0u, var_1.b.x << (4294967295u % 32u)), 11u)];
}

fn func_1(arg_0: Struct_1, arg_1: u32) -> Struct_1 {
    global1 = array<Struct_4, 11>();
    var var_0 = func_5(func_4(Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(u_input.a.zy))), abs(countOneBits(109983u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2055f, 268f, -686f, 1071f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(787f, 1230f, 543f, 1655f) - vec4<f32>(921f, -611f, 913f, -935f))), vec2<bool>(func_3(arg_0.e.zwz, Struct_2(vec2<f32>(535f, -295f), arg_0.c, Struct_1(arg_0.e.zww, arg_0.d, false, u_input.a.xz, arg_0.e), Struct_1(arg_0.e.wyz, arg_0.d, arg_0.c, arg_0.b, arg_0.e)), vec4<u32>(4294967295u, 1u, 1u, arg_0.b.x)), arg_0.c)), !select(select(vec3<bool>(false, true, true), vec3<bool>(arg_0.c, arg_0.c, true), true), !vec3<bool>(true, arg_0.c, true), vec3<bool>(true, arg_0.c, arg_0.c))), firstLeadingBit(_wgslsmith_clamp_i32(arg_0.e.x, arg_0.e.x >> (4973u % 32u), arg_0.e.x)) < _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(1626i, arg_0.a.x), arg_0.a.zy), _wgslsmith_sub_vec2_i32(vec2<i32>(-27473i, 1i), arg_0.a.zy)), ~(~arg_0.a.x)));
    var var_1 = func_5(Struct_5(106f, 4294967295u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(962f, -522f, 229f, 1788f)))), select(!(!vec2<bool>(var_0.a.c, true)), !(!vec2<bool>(false, var_0.a.c)), all(vec2<bool>(true, true)))), !(~_wgslsmith_sub_u32(arg_0.d.x, var_0.a.b.x) > 0u));
    var_0 = func_5(func_4(func_4(Struct_5(_wgslsmith_f_op_f32(trunc(-1065f)), 2074u, vec4<f32>(-1000f, 396f, 378f, -555f), vec2<bool>(true, false)), select(select(vec3<bool>(var_0.a.c, false, var_0.a.c), vec3<bool>(var_1.a.c, var_1.a.c, true), true), select(vec3<bool>(var_0.a.c, true, false), vec3<bool>(true, true, var_0.a.c), false), select(vec3<bool>(true, arg_0.c, true), vec3<bool>(false, var_0.a.c, var_0.a.c), vec3<bool>(var_1.a.c, true, false)))), !select(select(vec3<bool>(var_0.a.c, false, arg_0.c), vec3<bool>(false, false, true), true), vec3<bool>(var_1.a.c, arg_0.c, var_1.a.c), true)), var_1.a.c);
    var_0 = global1[_wgslsmith_index_u32(u_input.a.x & 110287u, 11u)];
    return var_1.a;
}

fn func_6(arg_0: vec3<u32>, arg_1: u32, arg_2: Struct_1) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-349f - -798f), _wgslsmith_div_f32(301f, _wgslsmith_f_op_f32(f32(-1f) * -853f)), ~arg_2.e.x > arg_2.a.x))) * -1313f);
    global0 = array<vec3<u32>, 5>();
    var var_1 = arg_2.c;
    let var_2 = -389f;
    let var_3 = vec2<bool>(true, true);
    return 26495u;
}

fn func_7(arg_0: u32, arg_1: u32) -> Struct_1 {
    global1 = array<Struct_4, 11>();
    global0 = array<vec3<u32>, 5>();
    global0 = array<vec3<u32>, 5>();
    var var_0 = all(vec3<bool>(all(vec3<bool>(func_1(Struct_1(vec3<i32>(-18411i, 33344i, -87150i), u_input.a.zy, false, vec2<u32>(arg_1, u_input.a.x), vec4<i32>(-1i, 2147483647i, -1i, -1i)), 53316u).c, true, true)), true, all(select(vec4<bool>(true, true, false, false), select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, false), true), vec4<bool>(false, true, false, true)))));
    var var_1 = true;
    return Struct_1(~countOneBits(-vec3<i32>(2147483647i, 2147483647i, 41871i)) << (select(vec3<u32>(0u, ~arg_1, ~u_input.a.x), _wgslsmith_mult_vec3_u32(u_input.a & vec3<u32>(12276u, u_input.a.x, 48023u), vec3<u32>(1u, arg_0, u_input.a.x)), vec3<bool>(true, true, true)) % vec3<u32>(32u)), ~vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 22360u), abs(u_input.a.yx)), _wgslsmith_mod_u32(u_input.a.x, max(38521u, 10354u))), !(!any(vec2<bool>(false, true))) || select(func_1(func_1(Struct_1(vec3<i32>(-16696i, 12986i, -22263i), u_input.a.zx, true, vec2<u32>(1u, 0u), vec4<i32>(-13248i, -1i, -22325i, -1i)), 4294967295u), 4294967295u).c, all(vec4<bool>(false, false, false, true)), !select(true, false, true)), ~vec2<u32>(u_input.a.x, 1u), -vec4<i32>(56016i >> (arg_1 % 32u), select(-1546i, 13623i, false), -11036i, 76280i) ^ ~((vec4<i32>(1i, -12994i, 16755i, -1i) >> (vec4<u32>(arg_1, 4294967295u, arg_0, u_input.a.x) % vec4<u32>(32u))) >> (abs(vec4<u32>(u_input.a.x, 0u, 0u, 116935u)) % vec4<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_4, 11>();
    let var_0 = func_7(7125u, ~func_6(countOneBits(reverseBits(vec3<u32>(1u, 1u, u_input.a.x))), 1u, func_1(Struct_1(vec3<i32>(-3127i, 1i, 36220i), vec2<u32>(0u, 39158u), false, u_input.a.zy, vec4<i32>(1512i, -60176i, 21942i, -47276i)), min(u_input.a.x, u_input.a.x))));
    var var_1 = func_7(_wgslsmith_mod_u32(~(~4294967295u), _wgslsmith_mod_u32(41554u, 55441u)), 119310u);
    var var_2 = var_1.e.x << (25618u % 32u);
    let var_3 = func_4(Struct_5(_wgslsmith_f_op_f32(f32(-1f) * -735f), ~58871u, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-1755f + -1000f), -1967f, -547f, -516f) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1807f, 1409f, -393f, 408f), vec4<f32>(-952f, -1092f, -377f, -705f), vec4<bool>(var_0.c, true, false, var_1.c))))), vec2<bool>(true, true)), select(!vec3<bool>(var_1.c, false, func_1(Struct_1(var_1.e.yww, var_1.d, false, var_1.b, vec4<i32>(33480i, -15450i, var_1.a.x, var_0.a.x)), var_0.d.x).c), !select(vec3<bool>(var_0.c, true, true), select(vec3<bool>(true, false, var_1.c), vec3<bool>(var_1.c, false, true), vec3<bool>(var_1.c, false, var_0.c)), true), true));
    let var_4 = reverseBits(func_6(min(_wgslsmith_add_vec3_u32(vec3<u32>(34092u, u_input.a.x, var_1.d.x), vec3<u32>(1u, 110020u, 4294967295u)), global0[_wgslsmith_index_u32(var_1.d.x, 5u)]) & vec3<u32>(var_1.b.x, ~var_3.b, 4294967295u), var_3.b, var_0));
    global1 = array<Struct_4, 11>();
    var_2 = var_1.e.x;
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(-1i), vec4<u32>(countOneBits(50634u), var_0.b.x, _wgslsmith_dot_vec3_u32(~_wgslsmith_mult_vec3_u32(u_input.a, u_input.a), vec3<u32>(4294967295u, var_1.d.x, var_3.b)), var_0.d.x), vec4<i32>(var_1.a.x >> (var_4 % 32u), var_1.a.x, var_1.a.x, -(~var_0.a.x) << (~(33568u ^ var_0.b.x) % 32u)));
}

