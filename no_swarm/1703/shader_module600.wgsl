struct Struct_1 {
    a: bool,
    b: vec4<f32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: i32,
    c: bool,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: f32,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: bool;

var<private> global2: array<Struct_3, 19> = array<Struct_3, 19>(Struct_3(vec2<bool>(false, false), 1015f, Struct_1(true, vec4<f32>(-753f, -1407f, 767f, 2149f))), Struct_3(vec2<bool>(true, false), -669f, Struct_1(false, vec4<f32>(861f, 183f, 1295f, -1550f))), Struct_3(vec2<bool>(false, false), 1000f, Struct_1(false, vec4<f32>(1000f, -168f, -1102f, 556f))), Struct_3(vec2<bool>(false, true), 342f, Struct_1(false, vec4<f32>(-1063f, -182f, 1284f, 263f))), Struct_3(vec2<bool>(false, true), 342f, Struct_1(true, vec4<f32>(-1004f, 445f, 1500f, 194f))), Struct_3(vec2<bool>(false, false), 543f, Struct_1(false, vec4<f32>(638f, -585f, 244f, 827f))), Struct_3(vec2<bool>(false, false), 713f, Struct_1(false, vec4<f32>(-1492f, -1867f, -1293f, -570f))), Struct_3(vec2<bool>(false, false), -281f, Struct_1(false, vec4<f32>(435f, -604f, -331f, 1693f))), Struct_3(vec2<bool>(true, true), 893f, Struct_1(false, vec4<f32>(-385f, -1422f, -260f, -838f))), Struct_3(vec2<bool>(false, true), -402f, Struct_1(true, vec4<f32>(1000f, -1939f, -529f, -185f))), Struct_3(vec2<bool>(false, false), -1000f, Struct_1(false, vec4<f32>(1530f, 604f, -441f, -905f))), Struct_3(vec2<bool>(false, true), -904f, Struct_1(false, vec4<f32>(1000f, -796f, -556f, -1425f))), Struct_3(vec2<bool>(true, false), -235f, Struct_1(false, vec4<f32>(508f, -118f, 1000f, 224f))), Struct_3(vec2<bool>(false, true), 806f, Struct_1(false, vec4<f32>(-689f, 557f, 1567f, 2034f))), Struct_3(vec2<bool>(false, true), 1735f, Struct_1(true, vec4<f32>(-2356f, 347f, -396f, -2626f))), Struct_3(vec2<bool>(false, false), -1098f, Struct_1(true, vec4<f32>(-988f, 1000f, -1000f, 348f))), Struct_3(vec2<bool>(true, false), 568f, Struct_1(true, vec4<f32>(1126f, -974f, -125f, 764f))), Struct_3(vec2<bool>(false, true), -195f, Struct_1(true, vec4<f32>(-301f, 586f, -362f, -862f))), Struct_3(vec2<bool>(false, false), -1200f, Struct_1(true, vec4<f32>(1000f, -221f, 962f, -847f))));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_2, arg_1: f32) -> vec3<bool> {
    var var_0 = arg_0.d;
    let var_1 = Struct_3(select(arg_0.a, select(vec2<bool>(var_0.a & true, all(vec3<bool>(true, arg_0.a.x, arg_0.c))), vec2<bool>(true, arg_0.c), select(select(vec2<bool>(var_0.a, true), arg_0.a, var_0.a), arg_0.a, select(var_0.a, false, false))), select(arg_0.a, vec2<bool>(true, u_input.a == -2147483647i), select(select(vec2<bool>(var_0.a, false), vec2<bool>(false, arg_0.a.x), vec2<bool>(var_0.a, false)), arg_0.a, arg_0.a))), _wgslsmith_f_op_f32(f32(-1f) * -243f), arg_0.d);
    global0 = arg_0.d.b.yw;
    global1 = ~abs(~(~10544u)) <= ~(~_wgslsmith_dot_vec3_u32(min(vec3<u32>(86608u, 86u, 0u), vec3<u32>(24636u, 38776u, 1u)), ~vec3<u32>(0u, 1u, 112887u)));
    var var_2 = _wgslsmith_mult_i32(_wgslsmith_div_i32(~_wgslsmith_mult_i32(i32(-1i) * -10967i, abs(u_input.a)), -u_input.a), 1i);
    return vec3<bool>(var_1.a.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_0.b.x + _wgslsmith_f_op_f32(-427f * 112f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1372f)) - var_1.b), var_1.a.x)) >= _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(653f)), _wgslsmith_f_op_f32(f32(-1f) * -336f))), var_0.a);
}

fn func_2(arg_0: Struct_1) -> i32 {
    let var_0 = select(select(select(!func_3(Struct_2(vec2<bool>(false, true), u_input.a, arg_0.a, arg_0), 879f), vec3<bool>(arg_0.a, true, select(false, true, arg_0.a)), arg_0.a), vec3<bool>(arg_0.a, true, true), !(!select(vec3<bool>(true, arg_0.a, false), vec3<bool>(arg_0.a, true, false), arg_0.a))), !(!func_3(Struct_2(vec2<bool>(arg_0.a, false), u_input.a, true, arg_0), _wgslsmith_f_op_f32(f32(-1f) * -1000f))), !arg_0.a);
    global2 = array<Struct_3, 19>();
    let var_1 = select(select(!select(select(vec4<bool>(true, var_0.x, arg_0.a, false), vec4<bool>(var_0.x, arg_0.a, false, false), false), !vec4<bool>(true, var_0.x, var_0.x, false), vec4<bool>(true, true, true, true)), select(select(!vec4<bool>(false, arg_0.a, true, var_0.x), vec4<bool>(false, false, var_0.x, arg_0.a), vec4<bool>(false, false, var_0.x, true)), vec4<bool>(true, !var_0.x, true, true), select(!vec4<bool>(arg_0.a, true, arg_0.a, arg_0.a), select(vec4<bool>(var_0.x, false, true, false), vec4<bool>(var_0.x, arg_0.a, false, var_0.x), vec4<bool>(true, true, arg_0.a, false)), vec4<bool>(true, false, arg_0.a, false))), vec4<bool>(any(vec4<bool>(true, true, true, true)), true, true, arg_0.a)), vec4<bool>(func_3(Struct_2(!vec2<bool>(arg_0.a, true), -u_input.a, arg_0.a | true, arg_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-105f + arg_0.b.x))).x, !func_3(Struct_2(vec2<bool>(arg_0.a, true), u_input.a, arg_0.a, arg_0), global0.x).x, !(true && var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-342f - -583f)) >= arg_0.b.x), all(vec4<bool>(var_0.x, true, min(u_input.a, u_input.a) >= -1i, any(select(var_0, vec3<bool>(true, true, false), var_0)))));
    global1 = var_0.x;
    var var_2 = var_1;
    return 1i;
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: vec4<i32>) -> Struct_1 {
    global2 = array<Struct_3, 19>();
    var var_0 = vec2<i32>(arg_2.x, _wgslsmith_div_i32(-arg_2.x, -(~(~(-1i)))));
    var var_1 = arg_1;
    let var_2 = Struct_2(!select(vec2<bool>(true, arg_1.a & true), vec2<bool>(false, true && arg_1.a), global0.x == _wgslsmith_f_op_f32(-global0.x)), firstLeadingBit(u_input.a), true, arg_1);
    var var_3 = select(var_2.a, vec2<bool>(any(vec2<bool>(all(vec4<bool>(arg_1.a, var_2.a.x, arg_1.a, false)), true)), (true || any(vec2<bool>(var_1.a, arg_1.a))) || any(func_3(Struct_2(var_2.a, -43387i, var_2.a.x, arg_1), 1298f))), !(true | !arg_1.a) && true);
    return Struct_1(arg_1.a, var_1.b);
}

fn func_1(arg_0: vec3<bool>, arg_1: vec2<f32>) -> Struct_1 {
    global0 = arg_1;
    global1 = arg_0.x | false;
    let var_0 = func_4(func_2(Struct_1(true, _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, arg_1.x, global0.x, arg_1.x)))), Struct_1(true, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(2161f, global0.x, arg_1.x, global0.x), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-504f, arg_1.x, -128f, 268f), vec4<f32>(583f, arg_1.x, 825f, arg_1.x))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, arg_1.x, arg_1.x, -374f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1483f, arg_1.x, global0.x, arg_1.x) - vec4<f32>(846f, arg_1.x, 269f, global0.x)), any(arg_0.zz))))), _wgslsmith_mod_vec4_i32(select(select(firstTrailingBit(vec4<i32>(-2147483647i, 6480i, u_input.a, u_input.a)), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, 0i, 8801i, 2147483647i), vec4<i32>(2147483647i, -18892i, u_input.a, u_input.a)), vec4<bool>(arg_0.x, true, true, true)), vec4<i32>(_wgslsmith_clamp_i32(-2147483647i, 2147483647i, u_input.a), u_input.a, -u_input.a, -u_input.a), select(vec4<bool>(false, arg_0.x, arg_0.x, true), !vec4<bool>(false, true, arg_0.x, false), select(false, arg_0.x, arg_0.x))), abs(vec4<i32>(countOneBits(42781i), ~1i, _wgslsmith_mod_i32(-4522i, u_input.a), 33016i))));
    var var_1 = 36360u;
    var var_2 = Struct_3(arg_0.yz, _wgslsmith_f_op_f32(f32(-1f) * -1984f), func_4(1i, var_0, select(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, -35382i) | vec4<i32>(1193i, u_input.a, u_input.a, -44115i), ~vec4<i32>(u_input.a, 25085i, u_input.a, -1i)), vec4<i32>(-2147483647i, u_input.a, u_input.a, _wgslsmith_dot_vec3_i32(vec3<i32>(20781i, u_input.a, 27344i), vec3<i32>(-25846i, u_input.a, 56258i))), vec4<bool>(true, select(true, true, true), var_0.a, arg_0.x))));
    return func_4(1i, var_2.c, reverseBits(-max(~vec4<i32>(u_input.a, -15346i, -29610i, -50305i), abs(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a)))));
}

fn func_5(arg_0: f32, arg_1: vec2<i32>, arg_2: vec2<bool>, arg_3: Struct_1) -> vec4<i32> {
    let var_0 = 0u;
    global1 = -66140i == ~select(countOneBits(countOneBits(arg_1.x)), -1i, arg_2.x);
    let var_1 = !vec2<bool>(func_4(-(arg_1.x & -1i), arg_3, -_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, u_input.a, -2147483647i, u_input.a), vec4<i32>(u_input.a, -1i, -800i, 2147483647i))).a, false);
    var var_2 = _wgslsmith_clamp_u32(~(~(~reverseBits(var_0))), _wgslsmith_clamp_u32(_wgslsmith_mult_u32(firstLeadingBit(0u), var_0), _wgslsmith_clamp_u32(1u, ~_wgslsmith_add_u32(var_0, 4294967295u), var_0), ~4294967295u), var_0);
    let var_3 = select(arg_2, arg_2, true);
    return -vec4<i32>(~abs(1i), i32(-1i) * -33503i, ~u_input.a, u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<u32>(0u, 24662u, 0u);
    var var_1 = -vec4<i32>(~countOneBits(2147483647i), 59288i, 1i, -u_input.a) & (vec4<i32>(-u_input.a, countOneBits(22173i), ~u_input.a, 1i) & func_5(global0.x, vec2<i32>(0i, -17840i), select(vec2<bool>(true, true), vec2<bool>(false, false), true), func_1(vec3<bool>(true, false, true), vec2<f32>(global0.x, global0.x))));
    var var_2 = _wgslsmith_clamp_vec3_u32((~(~vec3<u32>(var_0.x, 55444u, 4294967295u)) | vec3<u32>(var_0.x, _wgslsmith_dot_vec4_u32(vec4<u32>(16381u, var_0.x, 2664u, var_0.x), vec4<u32>(10568u, var_0.x, var_0.x, 4294967295u)), abs(var_0.x))) & ~reverseBits(max(vec3<u32>(41971u, var_0.x, var_0.x), vec3<u32>(1142u, 1u, 0u))), _wgslsmith_div_vec3_u32(select(~(~vec3<u32>(3939u, var_0.x, 4294967295u)), max(vec3<u32>(var_0.x, 7550u, var_0.x), vec3<u32>(var_0.x, 0u, 1u)), true), _wgslsmith_mod_vec3_u32(_wgslsmith_clamp_vec3_u32(~vec3<u32>(1u, var_0.x, 19487u), ~vec3<u32>(1292u, 20072u, 0u), _wgslsmith_sub_vec3_u32(vec3<u32>(var_0.x, var_0.x, 62633u), vec3<u32>(var_0.x, 45689u, var_0.x))), _wgslsmith_mod_vec3_u32(vec3<u32>(92882u, var_0.x, 49372u), max(vec3<u32>(var_0.x, 5950u, var_0.x), vec3<u32>(3127u, var_0.x, 4294967295u))))), _wgslsmith_mult_vec3_u32(select(abs(vec3<u32>(8748u, 42521u, var_0.x)) << (~vec3<u32>(1u, 22126u, 36536u) % vec3<u32>(32u)), ~select(vec3<u32>(60692u, var_0.x, 94428u), vec3<u32>(4294967295u, var_0.x, var_0.x), vec3<bool>(true, true, true)), select(vec3<bool>(false, false, false), func_3(Struct_2(vec2<bool>(false, true), var_1.x, false, Struct_1(false, vec4<f32>(-217f, global0.x, 1339f, global0.x))), global0.x), func_4(-6395i, Struct_1(false, vec4<f32>(global0.x, global0.x, global0.x, 576f)), vec4<i32>(u_input.a, u_input.a, -1i, 16289i)).a)), countOneBits(abs(vec3<u32>(1u, 0u, 14433u))) & (firstTrailingBit(vec3<u32>(var_0.x, var_0.x, var_0.x)) >> (firstTrailingBit(vec3<u32>(var_0.x, var_0.x, 75448u)) % vec3<u32>(32u)))));
    let var_3 = vec2<bool>(!all(select(select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, false)), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true))), true);
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-431f + global0.x))), -1116f) + vec2<f32>(_wgslsmith_f_op_f32(floor(869f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1036f, _wgslsmith_f_op_f32(global0.x * 852f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-105f, 1336f)))))));
    var var_4 = u_input.a;
    var var_5 = global0.x;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a << (reverseBits(var_2.x) % 32u), var_1.x);
}

