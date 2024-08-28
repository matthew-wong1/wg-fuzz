struct Struct_1 {
    a: i32,
    b: f32,
}

struct Struct_2 {
    a: f32,
    b: vec4<bool>,
    c: Struct_1,
    d: vec3<u32>,
}

struct Struct_3 {
    a: u32,
    b: vec4<f32>,
    c: vec2<i32>,
    d: Struct_1,
    e: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 1>;

var<private> global1: vec2<f32> = vec2<f32>(1000f, -1377f);

var<private> global2: Struct_3;

var<private> global3: array<i32, 30>;

var<private> global4: bool;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2(arg_0: Struct_3, arg_1: bool, arg_2: Struct_3, arg_3: Struct_3) -> Struct_3 {
    var var_0 = ~(39213u ^ _wgslsmith_mult_u32(arg_2.a, ~_wgslsmith_mult_u32(global2.a, 16698u)));
    var var_1 = arg_1 | true;
    global1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1477f))))), arg_3.d.b);
    let var_2 = _wgslsmith_f_op_vec2_f32(exp2(arg_0.b.yx));
    let var_3 = arg_0;
    return arg_0;
}

fn func_3(arg_0: f32, arg_1: Struct_3, arg_2: vec2<u32>, arg_3: vec2<bool>) -> u32 {
    let var_0 = reverseBits(firstTrailingBit(-(abs(u_input.a) >> (vec3<u32>(10276u, 24391u, 39286u) % vec3<u32>(32u)))));
    global3 = array<i32, 30>();
    global0 = array<Struct_2, 1>();
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.b.x * -1842f) * _wgslsmith_f_op_f32(min(global1.x, global2.d.b))), 1760f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.b.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global2.e)))), 1290f);
    var var_2 = arg_1;
    return _wgslsmith_div_u32(var_2.a, var_2.a);
}

fn func_1(arg_0: vec4<u32>) -> i32 {
    var var_0 = global2.d;
    global4 = ~abs(global2.a) == abs(~func_3(var_0.b, func_2(Struct_3(global2.a, global2.b, vec2<i32>(-46384i, 1i), global2.d, -1082f), false, Struct_3(arg_0.x, vec4<f32>(-887f, -1056f, 816f, var_0.b), vec2<i32>(-40656i, 11807i), global2.d, global1.x), Struct_3(arg_0.x, vec4<f32>(209f, 668f, global2.b.x, -833f), vec2<i32>(2147483647i, 1i), Struct_1(1i, var_0.b), 305f)), select(vec2<u32>(1u, 0u), vec2<u32>(arg_0.x, 4294967295u), vec2<bool>(false, true)), select(vec2<bool>(true, true), vec2<bool>(true, false), true)));
    return func_2(func_2(Struct_3(global2.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global2.b * vec4<f32>(-1519f, var_0.b, global2.d.b, global1.x))), select(global2.c, vec2<i32>(-2147483647i, -2147483647i), true), Struct_1(1i, var_0.b), func_2(Struct_3(1u, vec4<f32>(231f, var_0.b, 2247f, 903f), vec2<i32>(-1i, u_input.a.x), Struct_1(u_input.a.x, global1.x), var_0.b), any(vec3<bool>(true, true, true)), Struct_3(0u, global2.b, vec2<i32>(global2.d.a, 47606i), Struct_1(-39078i, 627f), 2301f), Struct_3(global2.a, global2.b, u_input.a.zz, Struct_1(u_input.a.x, -188f), -1513f)).b.x), true, func_2(Struct_3(_wgslsmith_add_u32(20403u, arg_0.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1188f, global2.d.b, global1.x, 361f)), global2.c, func_2(Struct_3(global2.a, vec4<f32>(-119f, 112f, 773f, -922f), vec2<i32>(-1i, u_input.a.x), global2.d, 360f), true, Struct_3(global2.a, global2.b, global2.c, global2.d, var_0.b), Struct_3(global2.a, global2.b, global2.c, global2.d, 1703f)).d, _wgslsmith_f_op_f32(var_0.b + var_0.b)), true, func_2(func_2(Struct_3(arg_0.x, global2.b, global2.c, Struct_1(u_input.a.x, 976f), -213f), true, Struct_3(0u, global2.b, vec2<i32>(4071i, u_input.a.x), Struct_1(-18250i, global1.x), global2.e), Struct_3(arg_0.x, vec4<f32>(-1393f, global1.x, 1288f, -294f), u_input.a.zx, Struct_1(1i, global2.d.b), global2.d.b)), all(vec4<bool>(true, false, false, false)), Struct_3(global2.a, global2.b, u_input.a.yx, Struct_1(19355i, 1140f), -154f), Struct_3(arg_0.x, global2.b, vec2<i32>(global3[_wgslsmith_index_u32(37u, 30u)], -44484i), Struct_1(20052i, var_0.b), 921f)), func_2(func_2(Struct_3(1u, vec4<f32>(global2.e, -456f, -1000f, -629f), vec2<i32>(global3[_wgslsmith_index_u32(global2.a, 30u)], -1i), Struct_1(57332i, global1.x), global1.x), true, Struct_3(4294967295u, vec4<f32>(-1100f, var_0.b, -318f, var_0.b), vec2<i32>(0i, u_input.a.x), Struct_1(global2.d.a, global1.x), var_0.b), Struct_3(arg_0.x, vec4<f32>(var_0.b, var_0.b, var_0.b, global1.x), vec2<i32>(60533i, -2147483647i), global2.d, global1.x)), var_0.b >= 246f, func_2(Struct_3(global2.a, vec4<f32>(914f, var_0.b, global1.x, global1.x), u_input.a.yy, global2.d, global1.x), false, Struct_3(global2.a, global2.b, u_input.a.xz, global2.d, global1.x), Struct_3(global2.a, vec4<f32>(global2.e, global1.x, 510f, 2207f), global2.c, Struct_1(1i, -282f), -615f)), Struct_3(0u, vec4<f32>(var_0.b, 479f, -131f, -946f), vec2<i32>(var_0.a, 2147483647i), Struct_1(0i, 188f), -1282f))), Struct_3(countOneBits(_wgslsmith_mult_u32(77012u, arg_0.x)), global2.b, u_input.a.zy, global2.d, 659f)), global3[_wgslsmith_index_u32(0u, 30u)] != u_input.a.x, Struct_3(0u, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(global2.b)) + vec4<f32>(global1.x, _wgslsmith_f_op_f32(-103f + global1.x), _wgslsmith_f_op_f32(f32(-1f) * -1104f), _wgslsmith_f_op_f32(f32(-1f) * -1318f))), vec2<i32>(-u_input.a.x, -2147483647i), func_2(Struct_3(_wgslsmith_dot_vec3_u32(arg_0.wwy, arg_0.zyw), global2.b, u_input.a.yy, global2.d, _wgslsmith_f_op_f32(-var_0.b)), false, func_2(Struct_3(global2.a, global2.b, global2.c, global2.d, var_0.b), true, func_2(Struct_3(0u, global2.b, vec2<i32>(0i, 2147483647i), global2.d, -1520f), false, Struct_3(27781u, global2.b, vec2<i32>(global3[_wgslsmith_index_u32(46517u, 30u)], 0i), global2.d, global2.b.x), Struct_3(arg_0.x, vec4<f32>(var_0.b, -349f, global1.x, var_0.b), u_input.a.xy, Struct_1(u_input.a.x, 1378f), 241f)), Struct_3(0u, vec4<f32>(global2.e, global2.d.b, global2.b.x, -789f), u_input.a.yx, Struct_1(-12025i, 797f), global1.x)), Struct_3(0u, vec4<f32>(-1000f, global1.x, global1.x, global2.e), -vec2<i32>(u_input.a.x, u_input.a.x), Struct_1(1i, var_0.b), -1536f)).d, -729f), func_2(Struct_3(arg_0.x, global2.b, _wgslsmith_div_vec2_i32(global2.c, u_input.a.zx), Struct_1(~var_0.a, -454f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.b.x - var_0.b))), all(!select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), true)), Struct_3(4294967295u, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-global2.b), global2.b), abs(abs(u_input.a.yx)), global2.d, func_2(func_2(Struct_3(21490u, global2.b, vec2<i32>(var_0.a, 2147483647i), global2.d, 906f), true, Struct_3(28794u, vec4<f32>(global1.x, 338f, 1000f, 489f), vec2<i32>(-38370i, -6828i), Struct_1(var_0.a, global2.d.b), 1405f), Struct_3(26831u, global2.b, vec2<i32>(3523i, -1i), Struct_1(1i, 883f), 419f)), any(vec3<bool>(false, false, true)), func_2(Struct_3(global2.a, vec4<f32>(global1.x, -813f, var_0.b, -130f), u_input.a.zx, global2.d, global1.x), true, Struct_3(933u, vec4<f32>(var_0.b, global2.d.b, global1.x, global1.x), vec2<i32>(-1i, u_input.a.x), global2.d, global2.e), Struct_3(27718u, global2.b, u_input.a.xy, global2.d, -1042f)), Struct_3(108223u, global2.b, global2.c, Struct_1(u_input.a.x, var_0.b), var_0.b)).b.x), func_2(Struct_3(~arg_0.x, global2.b, vec2<i32>(global2.d.a, global2.d.a), Struct_1(-2147483647i, global1.x), _wgslsmith_f_op_f32(abs(425f))), true, func_2(Struct_3(arg_0.x, global2.b, global2.c, global2.d, -1053f), true, Struct_3(arg_0.x, global2.b, vec2<i32>(u_input.a.x, u_input.a.x), global2.d, global2.d.b), func_2(Struct_3(global2.a, global2.b, vec2<i32>(16227i, -29663i), Struct_1(global3[_wgslsmith_index_u32(41055u, 30u)], 312f), -363f), true, Struct_3(global2.a, vec4<f32>(-374f, 1523f, global2.e, 608f), global2.c, Struct_1(0i, 885f), -1426f), Struct_3(arg_0.x, global2.b, u_input.a.xz, Struct_1(-14784i, 906f), 346f))), Struct_3(global2.a, _wgslsmith_div_vec4_f32(vec4<f32>(var_0.b, global1.x, global1.x, 146f), global2.b), global2.c ^ vec2<i32>(u_input.a.x, -15302i), global2.d, _wgslsmith_div_f32(475f, 521f))))).d.a;
}

fn func_4(arg_0: f32, arg_1: f32, arg_2: f32, arg_3: Struct_3) -> Struct_1 {
    let var_0 = vec2<bool>(0u >= (abs(~arg_3.a) | _wgslsmith_mult_u32(arg_3.a, arg_3.a & 4294967295u)), any(!select(select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), true), vec3<bool>(true, true, false), vec3<bool>(false, true, true))));
    global3 = array<i32, 30>();
    let var_1 = Struct_1(min(-1i, arg_3.c.x), 400f);
    var var_2 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2 + 320f)), -1730f)), vec2<f32>(776f, global1.x)));
    var var_3 = vec2<i32>(firstLeadingBit(-(2147483647i << (func_2(Struct_3(global2.a, vec4<f32>(-1288f, arg_2, 766f, -601f), vec2<i32>(16695i, -1i), global2.d, arg_0), false, arg_3, arg_3).a % 32u))), ~_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(-vec4<i32>(global3[_wgslsmith_index_u32(0u, 30u)], -2147483647i, u_input.a.x, -19701i), _wgslsmith_sub_vec4_i32(vec4<i32>(16400i, global2.c.x, 7416i, u_input.a.x), vec4<i32>(-10889i, 0i, global3[_wgslsmith_index_u32(arg_3.a, 30u)], u_input.a.x))), vec4<i32>(u_input.a.x, 32617i, global3[_wgslsmith_index_u32(39204u, 30u)] | global2.d.a, var_1.a)));
    return func_2(arg_3, var_0.x, Struct_3(global2.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global2.b)), vec2<i32>(0i | arg_3.d.a, select(_wgslsmith_div_i32(1i, 25534i), abs(95607i), true)), Struct_1(~global2.d.a, func_2(arg_3, arg_3.a <= 1u, func_2(arg_3, false, Struct_3(global2.a, vec4<f32>(877f, global2.d.b, 460f, 918f), global2.c, Struct_1(var_1.a, 303f), 1640f), Struct_3(4294967295u, vec4<f32>(646f, arg_3.d.b, 2990f, 284f), arg_3.c, var_1, 613f)), func_2(arg_3, var_0.x, arg_3, Struct_3(arg_3.a, vec4<f32>(var_2.x, -155f, var_1.b, arg_0), vec2<i32>(global2.c.x, global2.d.a), global2.d, global2.d.b))).e), _wgslsmith_f_op_f32(sign(arg_3.e))), arg_3).d;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<i32, 30>();
    global0 = array<Struct_2, 1>();
    var var_0 = vec2<u32>(~4294967295u, _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(~global2.a, global2.a), _wgslsmith_clamp_vec2_u32(vec2<u32>(global2.a, global2.a) ^ vec2<u32>(25639u, global2.a), _wgslsmith_clamp_vec2_u32(vec2<u32>(global2.a, 0u), vec2<u32>(26603u, global2.a), vec2<u32>(global2.a, global2.a)), vec2<u32>(global2.a, global2.a) | vec2<u32>(50615u, 20012u)), ~(~vec2<u32>(global2.a, global2.a))), vec2<u32>(~(4294967295u << (global2.a % 32u)), ~(~global2.a))));
    let var_1 = func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global2.d.b), _wgslsmith_f_op_f32(-global2.d.b), false)) - global2.b.x) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x + _wgslsmith_f_op_f32(select(2244f, global1.x, false))))), 305f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(620f, global2.e)))) + _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(global1.x * global1.x))))), Struct_3(global2.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(global2.b, vec4<f32>(-1000f, global2.b.x, 1303f, global2.e))), _wgslsmith_f_op_vec4_f32(max(global2.b, vec4<f32>(1020f, global1.x, 1000f, 504f)))) + _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(global2.b * vec4<f32>(889f, 470f, 222f, -3127f)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(global1.x, global2.e, -1000f, -1176f), global2.b))))), vec2<i32>(func_1(select(vec4<u32>(4294967295u, 56974u, 5638u, 11930u), vec4<u32>(38434u, var_0.x, global2.a, var_0.x), vec4<bool>(true, false, true, false))), ~u_input.a.x), func_2(func_2(Struct_3(20760u, vec4<f32>(-1565f, -781f, global1.x, 1012f), global2.c, global2.d, global1.x), false, Struct_3(var_0.x, vec4<f32>(2088f, global1.x, -299f, global1.x), vec2<i32>(-20181i, u_input.a.x), Struct_1(2147483647i, 321f), global2.b.x), Struct_3(var_0.x, global2.b, u_input.a.yy, global2.d, global2.b.x)), true, Struct_3(global2.a, vec4<f32>(-512f, global2.b.x, -754f, global1.x), vec2<i32>(global2.d.a, -2147483647i), Struct_1(2147483647i, 682f), _wgslsmith_f_op_f32(-global1.x)), Struct_3(_wgslsmith_mod_u32(global2.a, 81421u), _wgslsmith_f_op_vec4_f32(global2.b - vec4<f32>(499f, 1480f, 731f, 1457f)), ~vec2<i32>(global2.c.x, global3[_wgslsmith_index_u32(8254u, 30u)]), Struct_1(global2.c.x, -439f), _wgslsmith_f_op_f32(global1.x - global2.b.x))).d, 568f));
    var var_2 = firstLeadingBit(vec3<u32>(9978u, func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-353f + -1069f)), func_2(Struct_3(global2.a, global2.b, vec2<i32>(var_1.a, -2147483647i), global2.d, 2636f), global1.x != -428f, Struct_3(0u, global2.b, u_input.a.zx, global2.d, global1.x), Struct_3(global2.a, global2.b, vec2<i32>(19446i, u_input.a.x), Struct_1(-2147483647i, var_1.b), global2.e)), ~select(vec2<u32>(0u, global2.a), vec2<u32>(var_0.x, 24141u), vec2<bool>(false, true)), vec2<bool>(-1261f != global1.x, false)), 32884u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(global2.b.x)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)))), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2418f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-626f + 1315f), var_1.b))))), ~(~var_2.zx << (_wgslsmith_mod_vec2_u32(~vec2<u32>(var_2.x, 1u), _wgslsmith_clamp_vec2_u32(var_2.yy, vec2<u32>(0u, global2.a), var_2.xz)) % vec2<u32>(32u))));
}

