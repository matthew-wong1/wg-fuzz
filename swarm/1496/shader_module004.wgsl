struct Struct_1 {
    a: i32,
    b: bool,
    c: vec3<i32>,
    d: f32,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct Struct_3 {
    a: u32,
    b: vec4<i32>,
    c: vec2<f32>,
    d: f32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec3<u32>,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(2147483647i, 2147483647i);

var<private> global1: vec3<u32>;

var<private> global2: array<vec4<u32>, 15> = array<vec4<u32>, 15>(vec4<u32>(4294967295u, 0u, 0u, 3008u), vec4<u32>(0u, 43556u, 0u, 4294967295u), vec4<u32>(84607u, 1u, 66690u, 1u), vec4<u32>(68439u, 35698u, 57953u, 1u), vec4<u32>(0u, 14078u, 88657u, 1u), vec4<u32>(65408u, 23381u, 29283u, 4294967295u), vec4<u32>(0u, 58022u, 40555u, 0u), vec4<u32>(0u, 0u, 1120u, 52565u), vec4<u32>(0u, 4687u, 47724u, 1u), vec4<u32>(4294967295u, 17322u, 4294967295u, 1u), vec4<u32>(34916u, 4294967295u, 67619u, 4294967295u), vec4<u32>(57506u, 1u, 6567u, 0u), vec4<u32>(7752u, 19444u, 28867u, 4346u), vec4<u32>(8014u, 0u, 22577u, 2920u), vec4<u32>(1u, 1u, 38943u, 7981u));

var<private> global3: vec4<i32> = vec4<i32>(-1i, 1i, 2147483647i, 2147483647i);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_1() -> f32 {
    var var_0 = 1294f;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(634f * -481f), _wgslsmith_f_op_f32(133f * 2190f), true)) + _wgslsmith_f_op_f32(-1678f * -2415f)) * 316f));
}

fn func_3(arg_0: vec2<i32>, arg_1: bool, arg_2: Struct_3, arg_3: vec2<bool>) -> u32 {
    let var_0 = global3.zx;
    global3 = arg_2.b;
    var var_1 = arg_2.e;
    var var_2 = _wgslsmith_clamp_vec2_i32(vec2<i32>(var_0.x, 1i >> (_wgslsmith_add_u32(global1.x, 10638u) % 32u)) << (abs(global1.yz) % vec2<u32>(32u)), arg_0, ~(var_1.c.zy ^ vec2<i32>(arg_2.e.a, 0i)));
    var var_3 = arg_2;
    return 20611u;
}

fn func_2(arg_0: vec2<i32>, arg_1: vec3<bool>, arg_2: Struct_3, arg_3: bool) -> Struct_1 {
    var var_0 = any(!vec4<bool>(false && arg_1.x, any(vec4<bool>(arg_1.x, arg_3, arg_1.x, arg_3)), arg_1.x, any(vec4<bool>(arg_2.e.b, false, arg_1.x, false)))) & true;
    global2 = array<vec4<u32>, 15>();
    let var_1 = vec4<u32>(0u, ~u_input.c.x >> (62189u % 32u), _wgslsmith_div_u32(arg_2.a, func_3(u_input.e.yx, arg_3, Struct_3(~1u, select(arg_2.b, u_input.e, vec4<bool>(arg_3, true, arg_3, true)), arg_2.c, _wgslsmith_f_op_f32(127f * arg_2.c.x), arg_2.e), !(!vec2<bool>(arg_2.e.b, arg_2.e.b)))), u_input.a.x);
    return Struct_1(i32(-1i) * -arg_0.x, all(arg_1), max(vec3<i32>(firstLeadingBit(31033i), _wgslsmith_clamp_i32(arg_2.e.a, -2147483647i, global0.x & 15687i), ~(-2147483647i)), u_input.e.yzz), _wgslsmith_f_op_f32(-248f - arg_2.d));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: i32, arg_3: vec4<bool>) -> bool {
    let var_0 = reverseBits(~u_input.b);
    global0 = vec2<i32>(-1756i, _wgslsmith_mult_i32(~abs(global0.x ^ arg_0.c.x), max(u_input.d, max(global3.x, arg_1.x & 19505i))));
    var var_1 = arg_0.d;
    let var_2 = arg_0.d;
    global0 = (arg_1 & vec2<i32>(global3.x, -firstTrailingBit(arg_1.x))) | vec2<i32>(2147483647i, -abs(u_input.d));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1906f * var_2), _wgslsmith_f_op_f32(f32(-1f) * -284f)))))) < _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_0.d - arg_0.d)));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_3) -> Struct_1 {
    let var_0 = arg_1;
    var var_1 = arg_0;
    var var_2 = vec2<bool>(func_4(Struct_1(abs(u_input.e.x), true, _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.d, global0.x, u_input.d), arg_1.b.wzy), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.e.d) * _wgslsmith_f_op_f32(f32(-1f) * -1670f))), vec2<i32>(~(~(-2147483647i)), global0.x), u_input.d, vec4<bool>(false, true | var_1.a.x, arg_1.c.x <= _wgslsmith_f_op_f32(-329f - var_0.c.x), var_1.a.x)), !(true && arg_0.a.x));
    var var_3 = global0.x;
    let var_4 = select(vec3<bool>(var_2.x, !func_2(-global3.xz, vec3<bool>(true, var_2.x, true), arg_1, true).b, true), !vec3<bool>(var_2.x, !arg_0.a.x, false), !vec3<bool>(true, false, (true != var_2.x) | true));
    return Struct_1(_wgslsmith_clamp_i32(~min(-1i >> (u_input.c.x % 32u), u_input.d >> (57614u % 32u)), global0.x, 20038i), false, global3.xyx, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.c.x)), -523f)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = ~countOneBits(min(abs(u_input.c), ~vec3<u32>(1u, 44269u, 5519u) >> (vec3<u32>(u_input.a.x, u_input.a.x, u_input.c.x) % vec3<u32>(32u))));
    var var_0 = Struct_1(global0.x, _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(u_input.a, vec2<u32>(global1.x, global1.x)), ~u_input.a), firstTrailingBit(~u_input.a)) > global1.x, _wgslsmith_sub_vec3_i32(max(vec3<i32>(-1i) * -vec3<i32>(75102i, u_input.d, 1i), ~(~u_input.e.ywz)), u_input.e.yxz), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) * _wgslsmith_f_op_f32(func_1()))));
    var_0 = func_5(Struct_2(vec4<bool>(!var_0.b || !var_0.b, func_4(func_2(vec2<i32>(2147483647i, u_input.d), vec3<bool>(var_0.b, var_0.b, true), Struct_3(u_input.a.x, vec4<i32>(global3.x, -11808i, -27882i, 20997i), vec2<f32>(175f, -469f), var_0.d, Struct_1(global0.x, var_0.b, vec3<i32>(1i, -1i, -15498i), var_0.d)), var_0.b), vec2<i32>(-2147483647i, u_input.e.x) << (vec2<u32>(u_input.c.x, global1.x) % vec2<u32>(32u)), abs(u_input.e.x), vec4<bool>(true, false, var_0.b, false)), all(!vec4<bool>(false, true, var_0.b, false)), _wgslsmith_f_op_f32(func_1()) < _wgslsmith_f_op_f32(139f * var_0.d))), Struct_3(~(min(64514u, global1.x) | 21378u), _wgslsmith_add_vec4_i32(u_input.e, u_input.e), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.d, _wgslsmith_f_op_f32(-var_0.d)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.d, var_0.d)))), _wgslsmith_f_op_f32(var_0.d - _wgslsmith_f_op_f32(f32(-1f) * -759f)), func_2(u_input.e.wx, vec3<bool>(true, !var_0.b, var_0.d > var_0.d), Struct_3(~0u, select(vec4<i32>(global3.x, 43432i, 9654i, -1i), u_input.e, vec4<bool>(true, var_0.b, false, true)), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_0.d, 870f), vec2<f32>(var_0.d, var_0.d))), 339f, Struct_1(u_input.e.x, var_0.b, vec3<i32>(1i, 1i, 2147483647i), var_0.d)), all(vec3<bool>(var_0.b, true, true)))));
    global0 = _wgslsmith_add_vec2_i32(abs(u_input.e.xx), reverseBits(vec2<i32>(var_0.c.x, func_2(vec2<i32>(-7259i, -1i), vec3<bool>(var_0.b, false, true), Struct_3(1u, u_input.e, vec2<f32>(1719f, 202f), var_0.d, Struct_1(11665i, false, global3.yyx, -631f)), var_0.b || var_0.b).c.x)));
    global0 = vec2<i32>(global3.x, 1i);
    let var_1 = Struct_2(select(select(vec4<bool>(var_0.b, var_0.b, var_0.b, false), vec4<bool>(all(vec3<bool>(false, var_0.b, var_0.b)), false, var_0.b, any(vec2<bool>(var_0.b, var_0.b))), vec4<bool>(true, false, var_0.b, var_0.b)), !vec4<bool>(var_0.b, var_0.b, select(true, true, var_0.b), any(vec3<bool>(false, true, false))), vec4<bool>(true, true, true, true)));
    global1 = vec3<u32>(~global1.x, reverseBits(u_input.a.x & _wgslsmith_sub_u32(firstTrailingBit(global1.x), 22900u)), countOneBits(_wgslsmith_add_u32(select(u_input.a.x << (8406u % 32u), u_input.c.x, true), 71750u)));
    let x = u_input.a;
    s_output = StorageBuffer(-global3.yx, _wgslsmith_div_u32(global1.x, ~50704u), u_input.a.x, _wgslsmith_mult_u32(func_3(global3.zy, any(vec4<bool>(false, var_1.a.x, true, true)), Struct_3(global1.x, u_input.e, _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.d, var_0.d)), var_0.d, func_2(vec2<i32>(global0.x, global0.x), vec3<bool>(var_1.a.x, var_0.b, false), Struct_3(u_input.c.x, vec4<i32>(u_input.e.x, -4792i, 5113i, 17325i), vec2<f32>(-1141f, var_0.d), var_0.d, Struct_1(43650i, false, vec3<i32>(15616i, -2147483647i, 2147483647i), var_0.d)), true)), vec2<bool>(!var_0.b, global1.x != 4294967295u)), _wgslsmith_sub_u32(_wgslsmith_sub_u32(abs(7673u), global1.x), _wgslsmith_div_u32(abs(4294967295u), 2293u))));
}

