struct Struct_1 {
    a: bool,
    b: vec3<u32>,
    c: vec2<u32>,
    d: bool,
    e: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<f32>,
    d: Struct_1,
    e: f32,
}

struct Struct_3 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(false, vec3<u32>(4294967295u, 4294967295u, 0u), vec2<u32>(0u, 1u), true, vec2<i32>(12574i, 1i));

var<private> global1: Struct_2 = Struct_2(Struct_1(false, vec3<u32>(26742u, 1u, 27700u), vec2<u32>(0u, 4294967295u), false, vec2<i32>(2147483647i, -1i)), Struct_1(true, vec3<u32>(35333u, 0u, 0u), vec2<u32>(38138u, 75359u), true, vec2<i32>(41607i, -1i)), vec4<f32>(-1765f, -310f, 175f, 1000f), Struct_1(true, vec3<u32>(0u, 28842u, 0u), vec2<u32>(1u, 12596u), false, vec2<i32>(-17648i, -7336i)), 1000f);

var<private> global2: array<bool, 30>;

var<private> global3: array<bool, 18> = array<bool, 18>(true, false, false, true, true, true, true, false, true, true, false, false, true, true, false, true, false, false);

var<private> global4: f32 = 1714f;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_2() -> f32 {
    global2 = array<bool, 30>();
    var var_0 = ~(-vec2<i32>(~global1.a.e.x ^ ~global0.e.x, global1.a.e.x));
    var var_1 = _wgslsmith_f_op_f32(-global1.e);
    var var_2 = global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(~(~global1.d.c.x), 4294967295u), 30u)];
    global3 = array<bool, 18>();
    return _wgslsmith_f_op_f32(global1.e + global1.e);
}

fn func_3(arg_0: u32) -> vec2<bool> {
    var var_0 = Struct_1(!global1.d.d, vec3<u32>(1u, arg_0, _wgslsmith_mod_u32(4294967295u, countOneBits(global1.d.c.x >> (global0.c.x % 32u)))), abs(~_wgslsmith_div_vec2_u32(abs(vec2<u32>(57603u, u_input.a)), vec2<u32>(global1.b.b.x, 4294967295u) | vec2<u32>(0u, 4294967295u))), _wgslsmith_f_op_f32(trunc(580f)) > _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -551f), global1.c.x)), vec2<i32>(-2147483647i, 1i) & (vec2<i32>(-1i) * -vec2<i32>(global0.e.x, -2147483647i)));
    let var_1 = global0.e.x;
    let var_2 = _wgslsmith_f_op_f32(-655f - global1.c.x);
    global0 = Struct_1(var_0.a, vec3<u32>(38394u, ~_wgslsmith_dot_vec2_u32(~var_0.c, vec2<u32>(12247u, global1.b.c.x)), 39021u), firstLeadingBit(~var_0.b.yy ^ global0.c), false, vec2<i32>(_wgslsmith_sub_i32(-firstTrailingBit(global1.a.e.x), ~(-2147483647i) >> (max(u_input.a, 1u) % 32u)), var_0.e.x));
    let var_3 = global1.d;
    return vec2<bool>(true, 2147483647i != _wgslsmith_dot_vec3_i32(vec3<i32>(1i, 1i, 1i), firstLeadingBit(countOneBits(vec3<i32>(var_0.e.x, var_3.e.x, var_3.e.x)))));
}

fn func_1(arg_0: vec2<u32>) -> bool {
    let var_0 = global1.b.b.x;
    let var_1 = !(-1071f != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-606f + 2232f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2()))));
    let var_2 = !select(select(!(!vec2<bool>(var_1, false)), select(vec2<bool>(var_1, true), func_3(global1.a.b.x), !vec2<bool>(global2[_wgslsmith_index_u32(global1.a.b.x, 30u)], global0.d)), var_1), vec2<bool>(true, func_3(countOneBits(global0.c.x)).x), vec2<bool>(false, all(select(vec3<bool>(global2[_wgslsmith_index_u32(arg_0.x, 30u)], global1.a.a, global1.b.a), vec3<bool>(global0.d, true, true), vec3<bool>(var_1, false, var_1)))));
    let var_3 = max(countOneBits(arg_0), ~(global1.d.b.yx >> (firstLeadingBit(global0.b.xy) % vec2<u32>(32u))));
    global1 = Struct_2(Struct_1(any(vec3<bool>(!var_1, any(vec4<bool>(false, var_2.x, false, global3[_wgslsmith_index_u32(global1.a.b.x, 18u)])), true)), _wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u << (0u % 32u), ~1u, ~33689u), ~(~global0.b)), _wgslsmith_add_vec2_u32(vec2<u32>(countOneBits(arg_0.x), _wgslsmith_sub_u32(1u, global1.b.c.x)), var_3), false, _wgslsmith_add_vec2_i32(-global1.a.e, abs(_wgslsmith_div_vec2_i32(global1.d.e, vec2<i32>(-15312i, -1i))))), global1.b, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global1.c.x, -2480f, _wgslsmith_f_op_f32(global1.e * -872f), _wgslsmith_f_op_f32(abs(global1.e))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(550f, 743f, global1.c.x, global1.c.x) * vec4<f32>(global1.c.x, global1.e, global1.e, -597f)) - _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global1.c.x, 1169f, 1000f, 1267f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global1.c)))), Struct_1(true, ~(~global0.b << ((global1.b.b >> (global1.a.b % vec3<u32>(32u))) % vec3<u32>(32u))), ~global0.b.zx, func_3(_wgslsmith_clamp_u32(~35365u, _wgslsmith_sub_u32(var_3.x, arg_0.x), 4294967295u)).x, vec2<i32>(global1.a.e.x, global1.d.e.x)), global1.c.x);
    return !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(-global1.e)))) != global1.e);
}

fn func_4(arg_0: vec3<f32>, arg_1: bool, arg_2: Struct_1) -> vec2<u32> {
    global4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global1.c.x)) + _wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_f_op_f32(-arg_0.x)))));
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(global1.e)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(967f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-145f)))));
    let var_1 = arg_2;
    global3 = array<bool, 18>();
    var var_2 = Struct_1(false, reverseBits(global1.b.b), ~(_wgslsmith_mult_vec2_u32(~vec2<u32>(0u, 58073u), vec2<u32>(0u, 1u)) & arg_2.c), !(!(global2[_wgslsmith_index_u32(select(11637u, 1594u, global3[_wgslsmith_index_u32(arg_2.c.x, 18u)]), 30u)] == all(vec3<bool>(false, arg_1, false)))), global1.d.e);
    return select(~((_wgslsmith_mult_vec2_u32(vec2<u32>(10048u, var_2.b.x), vec2<u32>(58656u, 1u)) >> (_wgslsmith_clamp_vec2_u32(arg_2.c, vec2<u32>(u_input.a, arg_2.c.x), vec2<u32>(var_1.c.x, 35792u)) % vec2<u32>(32u))) | global1.a.b.xy), _wgslsmith_add_vec2_u32(global1.a.c, firstTrailingBit(global1.a.c ^ vec2<u32>(global1.a.b.x, var_2.b.x)) >> ((select(vec2<u32>(var_1.b.x, 69992u), arg_2.c, global0.a) | arg_2.c) % vec2<u32>(32u))), vec2<bool>(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_div_u32(abs(1u), 70208u), 27843u | _wgslsmith_dot_vec2_u32(global1.b.c, global1.d.b.zz)), 30u)], !(true && all(vec3<bool>(true, true, false)))));
}

fn func_5(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: f32) -> Struct_2 {
    var var_0 = _wgslsmith_mult_u32(min(abs(reverseBits(arg_0.c.x)), ~arg_0.c.x), 0u);
    var var_1 = true;
    let var_2 = Struct_2(arg_0, arg_0, vec4<f32>(_wgslsmith_f_op_f32(abs(global1.c.x)), _wgslsmith_f_op_f32(arg_1.x - 2151f), _wgslsmith_f_op_f32(select(-647f, _wgslsmith_f_op_f32(max(global1.e, -632f)), any(select(vec3<bool>(false, false, global2[_wgslsmith_index_u32(32788u, 30u)]), vec3<bool>(false, true, global0.a), vec3<bool>(global0.a, false, true))))), -781f), Struct_1(global1.b.d, global0.b, vec2<u32>(~61021u >> (1u % 32u), ~(~u_input.a)), all(vec3<bool>(!global3[_wgslsmith_index_u32(0u, 18u)], arg_0.a, true)), _wgslsmith_add_vec2_i32(global1.a.e, _wgslsmith_sub_vec2_i32(vec2<i32>(-76127i, -2147483647i), global1.b.e << (vec2<u32>(0u, u_input.a) % vec2<u32>(32u))))), _wgslsmith_f_op_f32(-885f + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.c.x), global1.e))));
    global0 = var_2.a;
    global2 = array<bool, 30>();
    return Struct_2(var_2.b, Struct_1(!((u_input.a & global1.b.c.x) > ~9240u), vec3<u32>(arg_0.c.x, abs(_wgslsmith_add_u32(arg_0.c.x, 17725u)), _wgslsmith_dot_vec3_u32(vec3<u32>(36630u, 54606u, var_2.d.b.x), vec3<u32>(var_2.a.b.x, arg_0.b.x, 139923u)) >> (_wgslsmith_add_u32(var_2.d.b.x, arg_0.c.x) % 32u)), vec2<u32>(42723u, ~1u), global0.a, _wgslsmith_mult_vec2_i32(vec2<i32>(-2147483647i, i32(-1i) * -2147483647i), _wgslsmith_sub_vec2_i32(-global0.e, abs(global1.d.e)))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_1.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1269f + _wgslsmith_f_op_f32(var_2.e * global1.c.x)), arg_1.x), _wgslsmith_f_op_f32(global1.e * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(100f - var_2.e) + _wgslsmith_f_op_f32(f32(-1f) * -565f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_1.x))), _wgslsmith_f_op_f32(-626f * 515f))), arg_0, global1.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<bool, 18>();
    global4 = _wgslsmith_f_op_f32(-global1.e);
    var var_0 = func_5(Struct_1(all(select(vec4<bool>(true, global2[_wgslsmith_index_u32(2577u, 30u)], global0.a, global1.d.d), vec4<bool>(false, global1.a.a, global3[_wgslsmith_index_u32(0u, 18u)], global1.d.d), select(global3[_wgslsmith_index_u32(u_input.a, 18u)], true, global2[_wgslsmith_index_u32(8564u, 30u)]))), global0.b, func_4(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1612f, global1.e, global1.c.x)), _wgslsmith_f_op_vec3_f32(step(global1.c.xxz, vec3<f32>(global1.e, global1.c.x, global1.e)))), func_1(global1.a.b.zy), global1.a), func_1(_wgslsmith_mult_vec2_u32(~vec2<u32>(global1.b.b.x, 66827u), vec2<u32>(44737u, 4294967295u))), vec2<i32>(global0.e.x, 1i)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(global1.c.xw, vec2<f32>(-146f, 400f)))), 2130f);
    var var_1 = !vec3<bool>(select(global2[_wgslsmith_index_u32(1u, 30u)], all(vec2<bool>(global1.b.a, var_0.b.a)) && (var_0.d.d | true), global0.d), true, func_3(4294967295u).x || (global0.c.x != abs(global0.c.x)));
    let var_2 = global1.c.x;
    let var_3 = _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1000f, _wgslsmith_f_op_f32(round(var_0.e)), var_0.c.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.c.xyx)))))));
    var var_4 = reverseBits(firstTrailingBit((global0.e.x >> (select(4294967295u, u_input.a, false) % 32u)) & firstTrailingBit(var_0.a.e.x)));
    var var_5 = select(select(vec3<bool>(true, !any(vec4<bool>(false, global3[_wgslsmith_index_u32(global1.a.c.x, 18u)], true, global1.d.d)), all(!vec4<bool>(true, global1.b.a, global0.a, true))), select(vec3<bool>(all(vec4<bool>(true, var_0.d.a, global3[_wgslsmith_index_u32(var_0.a.b.x, 18u)], false)), 49825u < u_input.a, false), vec3<bool>(true, true, true), _wgslsmith_f_op_f32(-var_0.e) >= var_0.c.x), !vec3<bool>(true, global3[_wgslsmith_index_u32(~global1.a.b.x, 18u)], var_0.a.d)), !(!vec3<bool>(var_0.d.a, all(vec3<bool>(global2[_wgslsmith_index_u32(global1.b.c.x, 30u)], true, true)), false)), select(select(select(!vec3<bool>(var_0.b.d, global2[_wgslsmith_index_u32(global0.b.x, 30u)], false), select(vec3<bool>(var_1.x, global2[_wgslsmith_index_u32(1u, 30u)], true), vec3<bool>(false, true, var_0.b.a), vec3<bool>(global2[_wgslsmith_index_u32(u_input.a, 30u)], false, true)), !global1.d.a), vec3<bool>(2147483647i > global1.b.e.x, var_0.a.d || global1.d.d, var_0.a.d), select(!vec3<bool>(true, var_1.x, global3[_wgslsmith_index_u32(4294967295u, 18u)]), select(vec3<bool>(var_1.x, true, true), vec3<bool>(false, global1.b.a, global1.a.d), vec3<bool>(global1.d.a, global1.b.d, global2[_wgslsmith_index_u32(var_0.a.b.x, 30u)])), global1.d.c.x < 0u)), !select(!vec3<bool>(false, global0.a, true), vec3<bool>(false, true, false), select(vec3<bool>(false, global1.d.d, global0.d), vec3<bool>(global2[_wgslsmith_index_u32(u_input.a, 30u)], global1.d.d, global2[_wgslsmith_index_u32(0u, 30u)]), vec3<bool>(true, var_0.b.d, true))), !select(!vec3<bool>(false, global1.a.a, false), !vec3<bool>(global2[_wgslsmith_index_u32(1u, 30u)], global2[_wgslsmith_index_u32(8332u, 30u)], false), vec3<bool>(false, true, false))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_3.zy)));
}

