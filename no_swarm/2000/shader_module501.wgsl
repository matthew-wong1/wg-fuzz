struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: u32,
    d: vec4<u32>,
    e: u32,
}

struct Struct_2 {
    a: bool,
    b: u32,
    c: f32,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<vec4<f32>, 29> = array<vec4<f32>, 29>(vec4<f32>(-146f, 885f, 1000f, 385f), vec4<f32>(-128f, 130f, 369f, 1962f), vec4<f32>(-1214f, -125f, -486f, -614f), vec4<f32>(-1965f, 772f, -1132f, 787f), vec4<f32>(-986f, 1000f, -458f, -889f), vec4<f32>(1754f, -1048f, 211f, -1132f), vec4<f32>(552f, -1000f, 940f, 877f), vec4<f32>(-1278f, 1000f, 827f, -160f), vec4<f32>(775f, -895f, 1230f, 418f), vec4<f32>(390f, 250f, -930f, -680f), vec4<f32>(141f, 1308f, 542f, -1157f), vec4<f32>(-483f, -1129f, -219f, -762f), vec4<f32>(-1438f, -1106f, -345f, -239f), vec4<f32>(-1450f, -511f, -939f, 638f), vec4<f32>(713f, 160f, -1852f, -700f), vec4<f32>(2318f, 1141f, -1000f, 424f), vec4<f32>(590f, 164f, 844f, 966f), vec4<f32>(-1840f, -626f, 322f, -1703f), vec4<f32>(1333f, 1048f, 413f, 206f), vec4<f32>(1586f, 688f, 1973f, 1052f), vec4<f32>(903f, -2376f, 916f, -1944f), vec4<f32>(-506f, 1279f, -737f, -1703f), vec4<f32>(207f, -1215f, 1145f, 1081f), vec4<f32>(-674f, -271f, -1637f, -1078f), vec4<f32>(337f, -597f, -262f, -560f), vec4<f32>(-984f, 843f, -104f, 230f), vec4<f32>(1302f, 743f, 375f, -298f), vec4<f32>(-935f, -780f, 105f, 2407f), vec4<f32>(-1761f, -956f, 1604f, -1564f));

var<private> global2: array<vec4<i32>, 17> = array<vec4<i32>, 17>(vec4<i32>(i32(-2147483648), 1i, -40997i, 9167i), vec4<i32>(2147483647i, -1i, 16929i, i32(-2147483648)), vec4<i32>(i32(-2147483648), 61170i, 1i, -1i), vec4<i32>(2147483647i, i32(-2147483648), i32(-2147483648), 43606i), vec4<i32>(4446i, 0i, 0i, 57413i), vec4<i32>(12423i, -41812i, 11744i, i32(-2147483648)), vec4<i32>(0i, -1i, 31101i, -38639i), vec4<i32>(i32(-2147483648), 0i, 1i, -1i), vec4<i32>(0i, i32(-2147483648), 0i, 2367i), vec4<i32>(4617i, -30870i, -17218i, 0i), vec4<i32>(18210i, 2147483647i, 1i, 2118i), vec4<i32>(-11540i, 42152i, -50472i, 0i), vec4<i32>(23588i, 133172i, 0i, 47523i), vec4<i32>(-1i, i32(-2147483648), -50899i, i32(-2147483648)), vec4<i32>(-1i, -1i, 7736i, 68560i), vec4<i32>(i32(-2147483648), -26652i, i32(-2147483648), -4625i), vec4<i32>(i32(-2147483648), 10476i, 2147483647i, -1i));

var<private> global3: bool = false;

var<private> global4: Struct_2 = Struct_2(false, 0u, 759f, Struct_1(1u, vec4<f32>(-824f, 142f, -1000f, -983f), 1u, vec4<u32>(58384u, 59190u, 55756u, 6852u), 1u));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: Struct_1) -> bool {
    let var_0 = arg_2;
    var var_1 = false;
    global3 = false;
    global4 = Struct_2(any(!(!vec2<bool>(global4.a, global4.a))), abs(63012u), arg_1.b.x, Struct_1(firstLeadingBit(4294967295u) & firstTrailingBit(_wgslsmith_sub_u32(1u, 1u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(global1[_wgslsmith_index_u32(var_0.a, 29u)])) * arg_1.b)), ~(~90288u), _wgslsmith_add_vec4_u32(arg_1.d, vec4<u32>(arg_2.c, u_input.a, arg_2.c, 3271u) ^ global4.d.d), ~4294967295u));
    var_1 = false;
    return arg_0.x < arg_0.x;
}

fn func_3() -> u32 {
    global0 = -27429i;
    global4 = Struct_2(any(select(vec3<bool>(!global4.a, select(true, global4.a, true), global4.a), vec3<bool>(global4.a | global4.a, any(vec4<bool>(global4.a, global4.a, false, global4.a)), true), select(vec3<bool>(false, false, global4.a), !vec3<bool>(global4.a, global4.a, global4.a), select(vec3<bool>(true, true, true), vec3<bool>(global4.a, false, global4.a), vec3<bool>(global4.a, global4.a, global4.a))))), global4.b, -329f, global4.d);
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(global4.d.b.x + 962f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global4.c, _wgslsmith_f_op_f32(trunc(global4.d.b.x)))) - -1682f) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4.c + -1069f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1192f) - global4.d.b.x), 1u >= min(global4.b, 1u)))));
    let var_1 = select(select(!vec3<bool>(true, any(vec4<bool>(false, global4.a, false, false)), false), !vec3<bool>(global4.a | true, global4.a, all(vec3<bool>(global4.a, true, global4.a))), !(!(!vec3<bool>(global4.a, global4.a, false)))), !(!vec3<bool>(u_input.a < u_input.a, global4.c <= var_0, any(vec3<bool>(global4.a, global4.a, true)))), !global4.a);
    var var_2 = Struct_3(vec3<f32>(552f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0)) + _wgslsmith_f_op_f32(var_0 + 1254f)), global4.c)), 1209f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(global4.d.b.wx))));
    return 4294967295u;
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_3, arg_2: Struct_3, arg_3: u32) -> Struct_2 {
    var var_0 = global4.d.d.ww;
    var var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(-global4.d.b.zyz), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(floor(arg_1.a.x)), 371f))));
    return Struct_2(arg_0.x, func_3(), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_1.b.x)) * arg_1.a.x), Struct_1(~_wgslsmith_div_u32(109153u, 28701u | u_input.a), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global4.c, global4.d.b.x, global4.c, 897f), vec4<f32>(1226f, 1000f, 1537f, global4.c))) + global4.d.b) - global4.d.b), 0u, ~(~abs(vec4<u32>(var_0.x, 60008u, arg_3, 2048u))), ~(~4294967295u & var_0.x)));
}

fn func_1(arg_0: u32, arg_1: i32) -> Struct_3 {
    global4 = func_4(vec4<bool>(any(!(!vec4<bool>(global4.a, false, false, false))), func_2(vec3<i32>(arg_1, arg_1, arg_1), global4.d, Struct_1(arg_0, _wgslsmith_f_op_vec4_f32(ceil(global4.d.b)), select(global4.d.c, global4.b, true), ~vec4<u32>(global4.d.d.x, 0u, 68281u, 159u), 0u)), all(select(vec4<bool>(true, false, global4.a, global4.a), select(vec4<bool>(true, true, global4.a, false), vec4<bool>(global4.a, global4.a, global4.a, true), vec4<bool>(global4.a, true, global4.a, false)), select(vec4<bool>(true, global4.a, false, false), vec4<bool>(global4.a, true, global4.a, global4.a), true))), true), Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(global4.d.b.yxy))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-429f, global4.d.b.x)))), Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global4.d.b.x, 723f, 478f) - global4.d.b.yyx)), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(816f, global4.d.b.x) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(global4.d.b.x, -1000f)))))), arg_0 << (func_3() % 32u));
    var var_0 = _wgslsmith_clamp_i32(~(~(arg_1 | arg_1)) & arg_1, arg_1, firstTrailingBit(select(select(_wgslsmith_sub_i32(arg_1, -1i), -arg_1, global4.a), _wgslsmith_add_i32(2147483647i, _wgslsmith_dot_vec4_i32(global2[_wgslsmith_index_u32(25702u, 17u)], vec4<i32>(2147483647i, arg_1, 43526i, arg_1))), all(vec2<bool>(global4.a, global4.a)) && !global4.a)));
    let var_1 = global4.d.d;
    global2 = array<vec4<i32>, 17>();
    var var_2 = -543f;
    return Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global4.d.b.xwz)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(global4.d.b.xx, _wgslsmith_f_op_vec2_f32(-global4.d.b.ww), select(vec2<bool>(global4.a, global4.a), vec2<bool>(false, true), any(vec4<bool>(false, global4.a, false, global4.a)))))));
}

fn func_5(arg_0: Struct_3, arg_1: Struct_3) -> u32 {
    let var_0 = select(select(!vec2<bool>(global4.a & global4.a, all(vec3<bool>(global4.a, global4.a, global4.a))), vec2<bool>(true, true), vec2<bool>(global4.a, all(!vec4<bool>(global4.a, global4.a, false, global4.a)))), vec2<bool>(global4.a, _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(global4.d.d.xy, vec2<u32>(4294967295u, global4.d.e)), vec2<u32>(41781u, 105234u)) != ~u_input.a), global4.a);
    var var_1 = _wgslsmith_f_op_f32(-global4.c);
    var var_2 = firstLeadingBit(-abs(~(~vec3<i32>(-1i, 23908i, -69326i))));
    var_1 = _wgslsmith_f_op_f32(289f * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -190f)))))));
    let var_3 = !(_wgslsmith_f_op_f32(-arg_1.b.x) <= global4.c);
    return global4.b;
}

fn func_6(arg_0: vec4<u32>, arg_1: u32, arg_2: f32, arg_3: vec3<u32>) -> StorageBuffer {
    var var_0 = Struct_2(global4.a, 15880u, -799f, Struct_1(arg_0.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2072f, arg_2, global4.d.b.x, 434f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(269f, global4.c, 1000f, -782f) + global1[_wgslsmith_index_u32(arg_3.x, 29u)])) - global4.d.b), _wgslsmith_mod_u32(4294967295u, func_4(select(vec4<bool>(global4.a, global4.a, global4.a, global4.a), vec4<bool>(false, true, global4.a, global4.a), false), func_1(42298u, -8325i), Struct_3(vec3<f32>(global4.c, arg_2, 285f), vec2<f32>(arg_2, -1000f)), u_input.a).b), ~vec4<u32>(global4.d.c, 15613u, abs(arg_0.x), 1u), 4294967295u));
    let var_1 = ~_wgslsmith_sub_i32(_wgslsmith_div_i32(0i, -1i), ~(-(~24100i)));
    global3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c)) != 295f;
    global2 = array<vec4<i32>, 17>();
    let var_2 = _wgslsmith_div_vec3_f32(vec3<f32>(-1758f, arg_2, 768f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2, var_0.d.b.x) * _wgslsmith_f_op_f32(-var_0.d.b.x)), _wgslsmith_f_op_f32(-428f + _wgslsmith_f_op_f32(select(arg_2, -207f, false))), _wgslsmith_f_op_f32(exp2(global4.c)))));
    return StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global4.d.b.x * -238f)))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global4.c), func_4(select(vec4<bool>(true, false, true, true), vec4<bool>(var_0.a, false, true, global4.a), false), func_1(var_0.b, var_1), Struct_3(vec3<f32>(-294f, 486f, 1368f), vec2<f32>(var_0.d.b.x, var_0.c)), arg_0.x ^ 55322u).c)), _wgslsmith_add_vec3_i32((max(vec3<i32>(-56988i, var_1, var_1), vec3<i32>(19211i, var_1, var_1)) ^ -vec3<i32>(var_1, 13501i, var_1)) ^ reverseBits(_wgslsmith_sub_vec3_i32(vec3<i32>(0i, var_1, var_1), vec3<i32>(var_1, var_1, var_1))), firstTrailingBit(firstTrailingBit(vec3<i32>(var_1, 1i, var_1)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mod_u32(firstLeadingBit(u_input.a), ~max(global4.b, _wgslsmith_mult_u32(1u, _wgslsmith_div_u32(109284u, global4.d.a))));
    let var_1 = 0u;
    global4 = Struct_2(!all(vec2<bool>(true, true)), 14517u, _wgslsmith_f_op_f32(-global4.d.b.x), global4.d);
    var var_2 = -334f;
    let var_3 = Struct_3(global4.d.b.zxz, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(round(global4.d.b.yw)))))));
    let var_4 = 1i;
    let x = u_input.a;
    s_output = func_6(vec4<u32>(~1u, func_5(var_3, func_1(_wgslsmith_mult_u32(var_1, var_1), var_4)), ~global4.d.d.x, ~4294967295u), _wgslsmith_dot_vec4_u32(global4.d.d, vec4<u32>(18199u, 0u, ~_wgslsmith_sub_u32(global4.b, var_1), 57211u)), _wgslsmith_f_op_f32(trunc(var_3.b.x)), reverseBits(global4.d.d.yzy) << (global4.d.d.zyy % vec3<u32>(32u)));
}

