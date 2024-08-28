struct Struct_1 {
    a: f32,
    b: f32,
    c: vec4<bool>,
    d: vec2<bool>,
    e: f32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: bool,
    c: vec4<i32>,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: vec3<i32>,
    b: f32,
    c: i32,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: f32,
    d: vec4<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 31> = array<Struct_2, 31>(Struct_2(vec4<f32>(427f, 1218f, -1804f, 1998f), true, vec4<i32>(30101i, 34796i, 18338i, 2147483647i)), Struct_2(vec4<f32>(-672f, -209f, 759f, 1359f), false, vec4<i32>(2147483647i, -1i, 0i, 25611i)), Struct_2(vec4<f32>(-468f, -393f, 149f, 142f), true, vec4<i32>(2147483647i, 0i, 19312i, 2147483647i)), Struct_2(vec4<f32>(-421f, 516f, -1057f, -1235f), true, vec4<i32>(-27521i, 1i, 2147483647i, -1i)), Struct_2(vec4<f32>(-162f, -1685f, -941f, -695f), false, vec4<i32>(0i, 37270i, 55062i, 3690i)), Struct_2(vec4<f32>(1527f, 737f, -529f, 405f), true, vec4<i32>(1i, 2147483647i, 0i, -15766i)), Struct_2(vec4<f32>(151f, 203f, 1121f, 1000f), false, vec4<i32>(i32(-2147483648), 1896i, -47724i, -1i)), Struct_2(vec4<f32>(1357f, 531f, 1000f, -659f), false, vec4<i32>(-48418i, 2147483647i, -42123i, 1i)), Struct_2(vec4<f32>(2008f, -455f, 328f, 2696f), false, vec4<i32>(-1i, -39501i, 8585i, -20893i)), Struct_2(vec4<f32>(209f, 437f, -825f, -353f), false, vec4<i32>(-9799i, 20859i, 1i, 37897i)), Struct_2(vec4<f32>(638f, 633f, 988f, -557f), false, vec4<i32>(29871i, -26425i, -19540i, 18708i)), Struct_2(vec4<f32>(-101f, -700f, 804f, -955f), false, vec4<i32>(1i, -12i, 86240i, i32(-2147483648))), Struct_2(vec4<f32>(1560f, -1216f, -918f, -1000f), true, vec4<i32>(-38237i, -93570i, 0i, 2147483647i)), Struct_2(vec4<f32>(499f, 667f, 1453f, -100f), false, vec4<i32>(2306i, -21989i, 33178i, 35937i)), Struct_2(vec4<f32>(1185f, -500f, -283f, 925f), true, vec4<i32>(i32(-2147483648), -68664i, -1733i, 2147483647i)), Struct_2(vec4<f32>(-1433f, 693f, 503f, -1412f), true, vec4<i32>(-63716i, 1i, -4164i, 1i)), Struct_2(vec4<f32>(-1000f, -614f, 651f, 1241f), true, vec4<i32>(-23261i, -1i, i32(-2147483648), 78409i)), Struct_2(vec4<f32>(-427f, -233f, 447f, 132f), false, vec4<i32>(1856i, i32(-2147483648), i32(-2147483648), 21314i)), Struct_2(vec4<f32>(-475f, -2028f, 799f, 142f), false, vec4<i32>(10055i, 11849i, -1i, -21734i)), Struct_2(vec4<f32>(-801f, -301f, 1130f, 1000f), true, vec4<i32>(34130i, 9979i, 5441i, -2133i)), Struct_2(vec4<f32>(-216f, 127f, 1166f, -465f), true, vec4<i32>(i32(-2147483648), -9147i, -9269i, 1i)), Struct_2(vec4<f32>(-174f, 528f, -486f, -359f), true, vec4<i32>(2147483647i, 33271i, -1i, 0i)), Struct_2(vec4<f32>(311f, 1000f, -341f, -350f), false, vec4<i32>(-40718i, -1i, -5736i, 11440i)), Struct_2(vec4<f32>(679f, -148f, 1612f, 442f), false, vec4<i32>(-1i, i32(-2147483648), -14402i, -37852i)), Struct_2(vec4<f32>(-880f, -1432f, -847f, -338f), false, vec4<i32>(-1i, 0i, i32(-2147483648), i32(-2147483648))), Struct_2(vec4<f32>(992f, 720f, 661f, 919f), true, vec4<i32>(1i, 21021i, -23250i, -13709i)), Struct_2(vec4<f32>(-1277f, -413f, 556f, -1329f), true, vec4<i32>(-48987i, i32(-2147483648), -7525i, -42712i)), Struct_2(vec4<f32>(2755f, -794f, -888f, 382f), true, vec4<i32>(i32(-2147483648), 17419i, -1i, i32(-2147483648))), Struct_2(vec4<f32>(-1000f, 1422f, 343f, -1000f), false, vec4<i32>(2147483647i, -63233i, 22850i, -56222i)), Struct_2(vec4<f32>(-1956f, 1469f, 911f, -1136f), false, vec4<i32>(-1i, 383i, -1i, -14787i)), Struct_2(vec4<f32>(541f, -1000f, 943f, 1000f), true, vec4<i32>(-5019i, 1886i, -1i, 2147483647i)));

var<private> global1: Struct_1 = Struct_1(-454f, 1247f, vec4<bool>(true, true, false, false), vec2<bool>(true, true), -110f);

var<private> global2: Struct_2 = Struct_2(vec4<f32>(-1192f, 730f, 635f, -113f), true, vec4<i32>(-1i, i32(-2147483648), i32(-2147483648), -1i));

var<private> global3: array<Struct_4, 22>;

var<private> global4: vec2<u32>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_1(arg_0: vec3<f32>, arg_1: bool) -> vec4<f32> {
    var var_0 = ~(~vec2<i32>(-(~global2.c.x), -32341i));
    global0 = array<Struct_2, 31>();
    global3 = array<Struct_4, 22>();
    var var_1 = ~(~(~_wgslsmith_div_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(global4.x, 61462u), vec2<u32>(0u, u_input.a)), vec2<u32>(89977u, 1u))));
    var var_2 = ~(~vec3<u32>(u_input.a, _wgslsmith_mod_u32(~27840u, global4.x), 4294967295u));
    return _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global2.a.x, 311f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -562f), _wgslsmith_f_op_f32(f32(-1f) * -169f), false)), 1641f))), global2.a));
}

fn func_3() -> vec4<bool> {
    global4 = vec2<u32>(u_input.a, ~31307u);
    var var_0 = global2.c.yyz | _wgslsmith_clamp_vec3_i32(global2.c.wzw, select(reverseBits(vec3<i32>(32725i, global2.c.x, global2.c.x)), -vec3<i32>(global2.c.x, 28144i, global2.c.x) | vec3<i32>(4810i, -13302i, -28965i), global1.c.x), global2.c.wzx);
    global3 = array<Struct_4, 22>();
    global1 = Struct_1(_wgslsmith_f_op_f32(-global1.b), -664f, select(!global1.c, !vec4<bool>(global1.d.x == false, global1.c.x || false, global1.c.x & true, true), !(!(!vec4<bool>(false, global2.b, false, false)))), !global1.c.ww, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global2.a.x, 1892f)))))));
    global0 = array<Struct_2, 31>();
    return select(global1.c, global1.c, any(select(select(select(vec4<bool>(false, global1.c.x, global1.c.x, true), vec4<bool>(false, global1.c.x, global2.b, false), global1.c), global1.c, global2.a.x >= 3480f), global1.c, !(!global1.c))));
}

fn func_2(arg_0: vec2<bool>) -> Struct_1 {
    let var_0 = Struct_1(787f, _wgslsmith_f_op_f32(ceil(-528f)), select(select(!global1.c, select(select(global1.c, global1.c, global1.c), !vec4<bool>(global2.b, false, false, false), arg_0.x), global1.d.x), func_3(), false), vec2<bool>(global2.b == true, global2.b), _wgslsmith_f_op_f32(round(-1048f)));
    let var_1 = Struct_1(-1306f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b)), vec4<bool>(all(!select(global1.d, global1.c.zx, arg_0)), true, arg_0.x, var_0.c.x), vec2<bool>(true, true), _wgslsmith_f_op_f32(405f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1299f, -691f))))));
    let var_2 = global2.c.x;
    let var_3 = Struct_2(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(120f, _wgslsmith_f_op_f32(f32(-1f) * -1580f), select(false, var_0.c.x, true))), global1.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global2.a.x, var_1.a)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global2.a.x))), _wgslsmith_f_op_f32(-global2.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_1.b)) * -1591f) * -818f)), (false || (!global2.b & var_0.d.x)) == !any(vec2<bool>(false, global1.c.x)), global2.c);
    global3 = array<Struct_4, 22>();
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_1.b))), 886f, func_3(), vec2<bool>(true, (4294967295u != ~u_input.a) == (firstTrailingBit(u_input.a) > ~u_input.a)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, var_0.e) - _wgslsmith_f_op_f32(ceil(global1.b))) - var_3.a.x))));
}

fn func_4(arg_0: vec4<i32>, arg_1: i32, arg_2: Struct_1) -> Struct_3 {
    let var_0 = global1.c.x;
    let var_1 = _wgslsmith_mult_i32(reverseBits(min(arg_0.x, 6557i)), -(~(1i & arg_0.x)));
    var var_2 = vec2<i32>(_wgslsmith_add_i32(~(-2147483647i), -14970i), -1i);
    let var_3 = func_3();
    var_2 = min(min(vec2<i32>(global2.c.x, _wgslsmith_sub_i32(~var_2.x, _wgslsmith_mult_i32(arg_1, -2147483647i))), -vec2<i32>(arg_1, global2.c.x)), vec2<i32>(_wgslsmith_mult_i32(_wgslsmith_add_i32(~(-1i), -18978i), arg_0.x), var_1));
    return Struct_3(_wgslsmith_f_op_f32(-global2.a.x));
}

fn func_5(arg_0: Struct_3, arg_1: Struct_3, arg_2: vec3<u32>, arg_3: vec2<i32>) -> i32 {
    var var_0 = max(-2147483647i, 2147483647i);
    var var_1 = _wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(~vec4<u32>(1u, arg_2.x, u_input.a, 0u), ~vec4<u32>(arg_2.x, 1u, 1u, u_input.a) & vec4<u32>(41507u, 66930u, 9375u, u_input.a)), firstTrailingBit(vec4<u32>(29945u, global4.x, 17415u, 55069u))) & ~(vec4<u32>(arg_2.x, min(40160u, 4294967295u), 9672u, abs(arg_2.x)) & select(vec4<u32>(u_input.a, arg_2.x, 1123u, 27057u), vec4<u32>(u_input.a, 28782u, arg_2.x, 4294967295u) >> (vec4<u32>(0u, 4294967295u, global4.x, 4294967295u) % vec4<u32>(32u)), !global1.d.x));
    let var_2 = 2147483647i;
    var_0 = firstTrailingBit(~0i);
    let var_3 = vec4<u32>(~0u, abs(_wgslsmith_mult_u32(global4.x, _wgslsmith_mult_u32(0u, _wgslsmith_dot_vec2_u32(var_1.yz, vec2<u32>(arg_2.x, 51646u))))), _wgslsmith_mult_u32(_wgslsmith_div_u32(1u, ~global4.x), var_1.x), _wgslsmith_dot_vec4_u32(select(abs(_wgslsmith_div_vec4_u32(vec4<u32>(var_1.x, u_input.a, global4.x, arg_2.x), vec4<u32>(0u, 0u, global4.x, arg_2.x))), _wgslsmith_add_vec4_u32(~vec4<u32>(arg_2.x, 1u, 68432u, u_input.a), ~vec4<u32>(var_1.x, arg_2.x, 4294967295u, global4.x)), true), ~vec4<u32>(global4.x, 0u, ~12848u, _wgslsmith_clamp_u32(23098u, arg_2.x, arg_2.x))));
    return ~(~_wgslsmith_dot_vec3_i32(select(vec3<i32>(arg_3.x, var_2, -11835i), vec3<i32>(var_2, arg_3.x, -31142i), global1.c.wxy), vec3<i32>(-2147483647i, 0i, var_2)) & _wgslsmith_add_i32(~1403i, global2.c.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<u32>(36004u | ~(~u_input.a), _wgslsmith_div_u32(0u, _wgslsmith_div_u32(~39682u, firstTrailingBit(~0u))), 28611u, abs(_wgslsmith_mult_u32(~u_input.a, global4.x >> (~u_input.a % 32u))));
    global2 = Struct_2(_wgslsmith_f_op_vec4_f32(func_1(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(global2.a.yyz, global2.a.xxy)), _wgslsmith_div_vec3_f32(vec3<f32>(global2.a.x, global2.a.x, global1.a), vec3<f32>(global1.b, global1.b, 853f))))), global2.b)), func_5(func_4(global2.c, global2.c.x | global2.c.x, func_2(vec2<bool>(global1.c.x, true))), func_4(global2.c & vec4<i32>(0i, 24430i, -2147483647i, -2147483647i), global2.c.x, Struct_1(495f, 555f, global1.c, vec2<bool>(true, global2.b), 349f)), max(vec3<u32>(38228u, 0u, 1u) << (var_0.wzy % vec3<u32>(32u)), vec3<u32>(u_input.a, var_0.x, u_input.a)), _wgslsmith_mod_vec2_i32(firstTrailingBit(vec2<i32>(global2.c.x, -1i)), ~vec2<i32>(-36107i, global2.c.x))) > firstLeadingBit(_wgslsmith_add_i32(_wgslsmith_div_i32(12521i, global2.c.x), _wgslsmith_dot_vec3_i32(global2.c.ywy, global2.c.yyx))), _wgslsmith_add_vec4_i32(~global2.c << ((~var_0 & (vec4<u32>(u_input.a, 55727u, var_0.x, 1u) >> (var_0 % vec4<u32>(32u)))) % vec4<u32>(32u)), global2.c));
    var var_1 = global0[_wgslsmith_index_u32(0u, 31u)];
    let var_2 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1003f)));
    var var_3 = select(_wgslsmith_mod_vec4_i32(firstTrailingBit(-var_1.c), firstLeadingBit(~var_1.c)), vec4<i32>(var_1.c.x, _wgslsmith_mod_i32(global2.c.x, -firstTrailingBit(1i)), abs(_wgslsmith_sub_i32(global2.c.x ^ var_1.c.x, global2.c.x)), _wgslsmith_mod_i32(1i ^ _wgslsmith_clamp_i32(2147483647i, 1i, -2147483647i), -global2.c.x)), global2.b & var_1.b);
    var_3 = ~var_1.c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec2_i32(var_3.xz, vec2<i32>((var_1.c.x << (31199u % 32u)) << (16376u % 32u), -2545i), -vec2<i32>(global2.c.x, var_1.c.x)), 1f, global2.a.x, vec4<f32>(global2.a.x, global2.a.x, var_1.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(global1.b)))))), -1744f);
}

