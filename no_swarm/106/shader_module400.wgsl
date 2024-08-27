struct Struct_1 {
    a: vec2<i32>,
    b: vec3<f32>,
    c: vec3<u32>,
    d: bool,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: vec3<f32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 49531i;

var<private> global1: array<Struct_1, 12> = array<Struct_1, 12>(Struct_1(vec2<i32>(200i, -1i), vec3<f32>(2831f, -1000f, 1498f), vec3<u32>(6073u, 41983u, 4294967295u), true), Struct_1(vec2<i32>(-39260i, -1i), vec3<f32>(-1132f, 874f, 903f), vec3<u32>(80326u, 20716u, 636u), true), Struct_1(vec2<i32>(i32(-2147483648), 0i), vec3<f32>(787f, -970f, -246f), vec3<u32>(4294967295u, 0u, 4294967295u), false), Struct_1(vec2<i32>(2147483647i, -17074i), vec3<f32>(121f, 326f, 939f), vec3<u32>(76706u, 4294967295u, 15128u), false), Struct_1(vec2<i32>(-1i, -15397i), vec3<f32>(-764f, -443f, -343f), vec3<u32>(30981u, 4294967295u, 70273u), false), Struct_1(vec2<i32>(10730i, 24355i), vec3<f32>(1154f, -760f, -555f), vec3<u32>(32607u, 9808u, 46986u), false), Struct_1(vec2<i32>(3733i, -494i), vec3<f32>(-344f, 344f, -404f), vec3<u32>(0u, 8965u, 0u), false), Struct_1(vec2<i32>(11487i, 2147483647i), vec3<f32>(242f, 1519f, -549f), vec3<u32>(0u, 4294967295u, 0u), false), Struct_1(vec2<i32>(2147483647i, -3711i), vec3<f32>(-415f, -426f, 1000f), vec3<u32>(9776u, 0u, 6133u), true), Struct_1(vec2<i32>(i32(-2147483648), -8709i), vec3<f32>(250f, 1965f, 763f), vec3<u32>(15800u, 0u, 4294967295u), true), Struct_1(vec2<i32>(i32(-2147483648), -4677i), vec3<f32>(480f, -1836f, -778f), vec3<u32>(4294967295u, 10068u, 6524u), false), Struct_1(vec2<i32>(1i, 15684i), vec3<f32>(-1565f, 763f, -856f), vec3<u32>(33663u, 17456u, 1450u), true));

var<private> global2: array<f32, 30>;

var<private> global3: array<i32, 21> = array<i32, 21>(-43524i, -38738i, 46578i, i32(-2147483648), 2054i, 1i, 9547i, 0i, -1i, 74603i, 0i, -12847i, 2147483647i, -16635i, -17510i, -4499i, 6516i, 0i, 17967i, 23960i, 854i);

var<private> global4: Struct_3 = Struct_3(Struct_2(-1000f, Struct_1(vec2<i32>(-56249i, -4284i), vec3<f32>(1254f, -987f, -547f), vec3<u32>(14764u, 53290u, 14585u), true), Struct_1(vec2<i32>(34190i, -28915i), vec3<f32>(-662f, -1000f, 720f), vec3<u32>(42029u, 49789u, 4294967295u), false)), vec2<f32>(426f, -1202f));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2() -> Struct_3 {
    let var_0 = 36780u;
    global0 = 26812i;
    var var_1 = global4.a;
    var var_2 = var_1.b;
    global0 = var_1.c.a.x;
    return Struct_3(Struct_2(550f, Struct_1(countOneBits(var_2.a), _wgslsmith_f_op_vec3_f32(-var_2.b), vec3<u32>(48373u, 13227u, 1u) | firstLeadingBit(vec3<u32>(var_2.c.x, var_0, 1u)), true), var_1.c), vec2<f32>(global2[_wgslsmith_index_u32(0u, 30u)], _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(458f, 318f)))))));
}

fn func_1(arg_0: Struct_3) -> vec3<bool> {
    let var_0 = func_2();
    let var_1 = _wgslsmith_dot_vec3_i32(~firstTrailingBit(firstLeadingBit(select(vec3<i32>(-1i, var_0.a.b.a.x, -2147483647i), vec3<i32>(-29456i, global3[_wgslsmith_index_u32(arg_0.a.b.c.x, 21u)], global3[_wgslsmith_index_u32(global4.a.c.c.x, 21u)]), global4.a.c.d))), abs(select(vec3<i32>(global4.a.b.a.x, global3[_wgslsmith_index_u32(var_0.a.b.c.x, 21u)], -1i), u_input.a, !var_0.a.b.d)) ^ vec3<i32>(var_0.a.b.a.x, _wgslsmith_dot_vec2_i32(vec2<i32>(0i, -2147483647i), _wgslsmith_sub_vec2_i32(vec2<i32>(global4.a.b.a.x, -1485i), vec2<i32>(0i, 0i))), 0i));
    global0 = global4.a.c.a.x;
    var var_2 = _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(reverseBits(arg_0.a.c.c ^ var_0.a.c.c), vec3<u32>(global4.a.c.c.x, _wgslsmith_add_u32(~var_0.a.b.c.x, 1u), 2862u)), ~_wgslsmith_add_u32(81071u, arg_0.a.c.c.x));
    var var_3 = Struct_2(global4.b.x, func_2().a.c, func_2().a.c);
    return vec3<bool>(!(!(_wgslsmith_dot_vec4_u32(vec4<u32>(global4.a.b.c.x, global4.a.b.c.x, 0u, global4.a.b.c.x), vec4<u32>(0u, 0u, var_0.a.b.c.x, 39263u)) < _wgslsmith_clamp_u32(var_3.b.c.x, arg_0.a.c.c.x, 50797u))), _wgslsmith_f_op_f32(floor(388f)) == _wgslsmith_f_op_f32(exp2(var_0.a.b.b.x)), global4.a.c.d);
}

fn func_3(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: bool, arg_3: Struct_3) -> Struct_3 {
    global2 = array<f32, 30>();
    var var_0 = arg_1.x & arg_0.c.x;
    global0 = ~(global3[_wgslsmith_index_u32(arg_0.c.x, 21u)] >> (~(arg_0.c.x ^ 18115u) % 32u)) << (39790u % 32u);
    let var_1 = arg_0;
    var var_2 = ~_wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(~vec4<u32>(arg_1.x, arg_1.x, var_1.c.x, 0u) | ~vec4<u32>(var_1.c.x, arg_3.a.b.c.x, var_1.c.x, 25548u), _wgslsmith_mult_vec4_u32(~vec4<u32>(1u, 52897u, arg_3.a.c.c.x, arg_1.x), max(vec4<u32>(arg_3.a.b.c.x, arg_3.a.c.c.x, 4294967295u, arg_3.a.c.c.x), vec4<u32>(0u, arg_1.x, 7803u, 0u)))), countOneBits(_wgslsmith_mod_vec4_u32(vec4<u32>(arg_3.a.b.c.x, arg_0.c.x, var_1.c.x, arg_1.x) | vec4<u32>(36433u, var_1.c.x, global4.a.b.c.x, 32079u), select(vec4<u32>(0u, 57837u, arg_3.a.c.c.x, var_1.c.x), vec4<u32>(arg_1.x, 4294967295u, 2626u, 28851u), vec4<bool>(true, true, arg_3.a.c.d, true)))));
    return arg_3;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_3(Struct_1(vec2<i32>(global4.a.b.a.x, ~firstTrailingBit(global4.a.b.a.x)), _wgslsmith_f_op_vec3_f32(max(global4.a.b.b, _wgslsmith_f_op_vec3_f32(-global4.a.c.b))), global4.a.c.c, all(select(select(vec3<bool>(false, true, true), vec3<bool>(global4.a.c.d, true, global4.a.c.d), false), func_1(Struct_3(Struct_2(2380f, Struct_1(vec2<i32>(-19062i, 7790i), global4.a.c.b, global4.a.c.c, true), Struct_1(vec2<i32>(global3[_wgslsmith_index_u32(61269u, 21u)], 47875i), vec3<f32>(global2[_wgslsmith_index_u32(1u, 30u)], 1564f, -428f), global4.a.c.c, global4.a.c.d)), vec2<f32>(-1000f, global4.a.c.b.x))), !global4.a.b.d))), ~max(~_wgslsmith_mod_vec3_u32(global4.a.c.c, global4.a.b.c), vec3<u32>(global4.a.b.c.x, 4294967295u, global4.a.b.c.x)), global4.a.b.d, func_2());
    let var_1 = global4.a.b.d;
    var var_2 = vec2<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(max(countOneBits(vec3<u32>(48225u, var_0.a.b.c.x, var_0.a.c.c.x)), ~vec3<u32>(var_0.a.c.c.x, 69940u, global4.a.b.c.x)), _wgslsmith_mod_vec3_u32(vec3<u32>(39247u, var_0.a.c.c.x, 1u), reverseBits(vec3<u32>(43653u, global4.a.c.c.x, 48257u)))), var_0.a.b.c), global4.a.c.c.x);
    var_0 = Struct_3(var_0.a, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(1u, 30u)] + -412f), 1658f) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(var_0.b, var_0.b))))));
    global2 = array<f32, 30>();
    global1 = array<Struct_1, 12>();
    global4 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(2974f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global4.b * var_0.a.c.b.yy))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global2[_wgslsmith_index_u32(var_2.x, 30u)], 490f, 887f), vec3<f32>(620f, 268f, global4.b.x))), global4.a.b.b, vec3<bool>(true, global4.a.c.d, true))), vec3<f32>(global2[_wgslsmith_index_u32(var_0.a.c.c.x, 30u)], _wgslsmith_div_f32(func_3(global4.a.b, global4.a.c.c, var_0.a.c.d, Struct_3(var_0.a, var_0.b)).a.b.b.x, _wgslsmith_f_op_f32(-var_0.a.b.b.x)), global4.b.x)), select(abs(max(select(vec4<i32>(global3[_wgslsmith_index_u32(0u, 21u)], -1i, 2147483647i, 0i), vec4<i32>(global4.a.b.a.x, u_input.a.x, global3[_wgslsmith_index_u32(4294967295u, 21u)], u_input.a.x), vec4<bool>(global4.a.b.d, true, true, global4.a.c.d)), ~vec4<i32>(1i, -1i, -2682i, -2147483647i))), vec4<i32>(global4.a.b.a.x, -(global4.a.c.a.x >> (0u % 32u)), -45412i, ~global4.a.c.a.x), vec4<bool>(global4.a.b.d, true, func_3(Struct_1(global4.a.c.a, var_0.a.c.b, global4.a.b.c, true), var_0.a.c.c | var_0.a.c.c, var_0.a.b.d, func_2()).a.b.d, true)));
}

