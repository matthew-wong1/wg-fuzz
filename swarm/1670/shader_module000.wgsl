struct Struct_1 {
    a: bool,
    b: f32,
    c: vec3<i32>,
    d: f32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: bool,
    c: vec3<i32>,
    d: u32,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec4<f32>,
    c: Struct_2,
    d: i32,
    e: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: vec2<i32>,
    c: Struct_1,
    d: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 32>;

var<private> global1: Struct_1;

var<private> global2: array<vec3<u32>, 2> = array<vec3<u32>, 2>(vec3<u32>(1u, 1234u, 72157u), vec3<u32>(1u, 44865u, 27120u));

var<private> global3: array<vec2<f32>, 21> = array<vec2<f32>, 21>(vec2<f32>(-526f, 1111f), vec2<f32>(1000f, 125f), vec2<f32>(-589f, -2010f), vec2<f32>(-141f, -602f), vec2<f32>(1986f, -185f), vec2<f32>(1531f, -767f), vec2<f32>(1041f, 623f), vec2<f32>(-1000f, -126f), vec2<f32>(-1151f, -888f), vec2<f32>(-1283f, -1000f), vec2<f32>(-2080f, -492f), vec2<f32>(-957f, -2160f), vec2<f32>(-200f, -1598f), vec2<f32>(318f, 1220f), vec2<f32>(1550f, 281f), vec2<f32>(614f, -2138f), vec2<f32>(1193f, -321f), vec2<f32>(189f, -2297f), vec2<f32>(417f, -1000f), vec2<f32>(-844f, 251f), vec2<f32>(857f, 171f));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: f32) -> vec4<f32> {
    global0 = array<i32, 32>();
    var var_0 = ~min(~vec4<u32>(u_input.c & 23515u, 4294967295u, 4294967295u, ~13021u), vec4<u32>(u_input.a, u_input.b, ~_wgslsmith_div_u32(u_input.b, u_input.c), _wgslsmith_mult_u32(u_input.a, countOneBits(u_input.b))));
    var_0 = min(abs(reverseBits(~(~vec4<u32>(0u, u_input.c, 59096u, var_0.x)))), reverseBits(vec4<u32>(_wgslsmith_sub_u32(4294967295u << (u_input.c % 32u), _wgslsmith_add_u32(4294967295u, u_input.b)), _wgslsmith_dot_vec3_u32(global2[_wgslsmith_index_u32(1u, 2u)], var_0.zyy), ~var_0.x, 4294967295u)));
    global3 = array<vec2<f32>, 21>();
    global3 = array<vec2<f32>, 21>();
    return _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1149f, 112f)) - _wgslsmith_f_op_f32(arg_0 * -143f)))), arg_0, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(global1.d, 533f)), arg_0))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global1.d * _wgslsmith_div_f32(arg_0, 261f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, 1000f, arg_0, global1.d))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-2065f, global1.d, arg_0, -502f))) - _wgslsmith_div_vec4_f32(vec4<f32>(arg_0, -1288f, -260f, global1.d), vec4<f32>(arg_0, 1125f, global1.b, global1.b)))))));
}

fn func_2() -> Struct_1 {
    global1 = Struct_1(!any(vec4<bool>(false, global1.b >= global1.d, 28189u != u_input.c, true)), 432f, vec3<i32>(1i, min(_wgslsmith_div_i32(global1.c.x, _wgslsmith_mod_i32(global0[_wgslsmith_index_u32(u_input.a, 32u)], 28028i)), global1.c.x), global1.c.x), 934f);
    global3 = array<vec2<f32>, 21>();
    var var_0 = min(vec3<u32>(0u, countOneBits(~4294967295u), u_input.b), firstLeadingBit(~_wgslsmith_mult_vec3_u32(countOneBits(global2[_wgslsmith_index_u32(20574u, 2u)]), vec3<u32>(u_input.b, u_input.a, u_input.a))));
    let var_1 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b)), global1.b, global1.d, _wgslsmith_f_op_f32(global1.d - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(-1000f)))))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(func_3(-1035f)))));
    let var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(var_1 + _wgslsmith_f_op_vec4_f32(-var_1)), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1333f, -1138f, global1.b, global1.d)))))))), false, vec3<i32>(_wgslsmith_mult_i32(min(u_input.e, -2147483647i), i32(-1i) * -10413i), ~(-1i), -45179i ^ firstTrailingBit(global0[_wgslsmith_index_u32(11096u, 32u)])) & select(-global1.c, u_input.d.wzy, select(vec3<bool>(global1.a, global1.a, global1.a), vec3<bool>(true, global1.a, false), false)), 11453u, Struct_1(true, _wgslsmith_f_op_f32(min(var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_1.x)) + _wgslsmith_f_op_f32(-global1.b)))), _wgslsmith_mult_vec3_i32(-global1.c, vec3<i32>(-2147483647i, u_input.e, ~(-2147483647i))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -940f)))));
    return var_2.e;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3, arg_2: u32) -> Struct_3 {
    var var_0 = ~u_input.d;
    var var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(-arg_1.c.a), any(vec3<bool>(any(!vec2<bool>(arg_0.a, arg_1.e.a)), true, arg_1.e.a)), firstLeadingBit(~firstLeadingBit(vec3<i32>(-8069i, arg_0.c.x, global0[_wgslsmith_index_u32(u_input.a, 32u)]))), arg_1.c.d, Struct_1(false, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_1.b.x + -211f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1343f * arg_1.c.a.x)))), vec3<i32>(arg_1.c.e.c.x, _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, arg_1.e.c.x, global0[_wgslsmith_index_u32(arg_1.c.d, 32u)]), vec3<i32>(-40519i, arg_0.c.x, global1.c.x)), ~global0[_wgslsmith_index_u32(52232u, 32u)]), abs(0i)), _wgslsmith_f_op_f32(abs(global1.d))));
    let var_2 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_3(-336f)).x * _wgslsmith_f_op_f32(530f - arg_0.d)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1974f, 351f, true))))), vec2<i32>(func_2().c.x >> (~select(60397u, arg_1.c.d, true) % 32u), ~(_wgslsmith_mult_i32(u_input.e, u_input.d.x) << (_wgslsmith_sub_u32(1u, arg_1.a.x) % 32u))), func_2(), Struct_3(vec4<u32>(_wgslsmith_sub_u32(select(0u, var_1.d, true), ~1u), ~(var_1.d ^ u_input.c), ~arg_1.c.d, arg_2), arg_1.b, arg_1.c, global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(var_1.d, arg_2), 32u)], Struct_1(!func_2().a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -665f) * _wgslsmith_f_op_f32(sign(-211f))), global1.c, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-860f, -507f))))));
    var var_3 = global1.b;
    let var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(var_2.d.c.a, var_1.a, ~4294967295u == u_input.a)));
    return arg_1;
}

fn func_5(arg_0: Struct_3, arg_1: Struct_1) -> Struct_2 {
    global3 = array<vec2<f32>, 21>();
    global3 = array<vec2<f32>, 21>();
    let var_0 = func_4(func_2(), arg_0, 1u).c.e;
    global1 = arg_1;
    var var_1 = arg_0.b.zxw;
    return func_4(arg_1, arg_0, u_input.a ^ u_input.b).c;
}

fn func_6(arg_0: Struct_2, arg_1: Struct_4) -> Struct_1 {
    var var_0 = Struct_2(arg_1.d.c.a, arg_0.b, vec3<i32>(1i, -743i, 2147483647i), ~_wgslsmith_sub_u32(arg_0.d, u_input.a), func_2());
    let var_1 = func_4(arg_1.c, func_4(Struct_1(true, arg_0.e.b, func_2().c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a.x + -187f))), arg_1.d, 23328u), firstTrailingBit(~(~(~53298u))));
    var var_2 = !(!global1.a);
    global2 = array<vec3<u32>, 2>();
    var var_3 = arg_1.d;
    return Struct_1(!var_1.c.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5(arg_1.d, func_5(Struct_3(var_1.a, vec4<f32>(arg_0.a.x, var_1.c.a.x, var_1.e.d, var_1.c.a.x), var_3.c, -14945i, Struct_1(true, global1.d, vec3<i32>(var_3.c.e.c.x, -18309i, -2147483647i), arg_1.a)), Struct_1(false, var_1.e.b, arg_0.c, -368f)).e).e.b + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_3.c.e.d))))), ~vec3<i32>((1i >> (arg_1.d.a.x % 32u)) >> (abs(arg_1.d.a.x) % 32u), -(u_input.d.x | var_1.d), arg_0.e.c.x), 1689f);
}

fn func_7(arg_0: Struct_1, arg_1: f32, arg_2: Struct_4) -> Struct_1 {
    var var_0 = _wgslsmith_clamp_u32(_wgslsmith_div_u32(u_input.b, _wgslsmith_dot_vec3_u32(~reverseBits(arg_2.d.a.yyy), vec3<u32>(~93566u, u_input.a, 63564u))), _wgslsmith_clamp_u32(func_5(func_4(Struct_1(arg_0.a, arg_0.d, arg_0.c, arg_1), arg_2.d, firstTrailingBit(1u)), func_6(arg_2.d.c, arg_2)).d, 1u, ~21523u), func_4(func_4(Struct_1(all(vec2<bool>(global1.a, global1.a)), _wgslsmith_f_op_f32(f32(-1f) * -226f), ~vec3<i32>(-2147483647i, -2147483647i, global0[_wgslsmith_index_u32(0u, 32u)]), func_2().b), arg_2.d, u_input.b).c.e, Struct_3(~arg_2.d.a, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1284f, 1000f, 2025f, arg_2.d.c.a.x)), arg_2.d.b), Struct_2(_wgslsmith_f_op_vec4_f32(-arg_2.d.c.a), true, select(vec3<i32>(arg_2.d.e.c.x, 2147483647i, arg_0.c.x), arg_2.d.c.e.c, vec3<bool>(arg_2.d.c.e.a, true, true)), u_input.c, func_4(arg_0, arg_2.d, 4294967295u).c.e), u_input.e, Struct_1(select(global1.a, false, false), _wgslsmith_f_op_f32(-arg_0.b), vec3<i32>(global1.c.x, -1i, -1i), func_4(arg_2.c, arg_2.d, u_input.b).c.e.b)), u_input.b).c.d);
    var var_1 = !(!vec3<bool>(true, arg_2.c.a, true));
    let var_2 = vec3<i32>(_wgslsmith_clamp_i32(_wgslsmith_mod_i32(global1.c.x, global0[_wgslsmith_index_u32((4294967295u >> (arg_2.d.c.d % 32u)) & ~arg_2.d.a.x, 32u)]), func_2().c.x, _wgslsmith_div_i32(arg_2.b.x, _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(-2147483647i, global1.c.x, arg_0.c.x), arg_2.d.c.e.c), _wgslsmith_add_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(u_input.a, 32u)], 38307i, -2147483647i), arg_2.d.e.c)))), 2147483647i, countOneBits(1i));
    global1 = func_5(arg_2.d, Struct_1(!func_4(arg_0, Struct_3(vec4<u32>(0u, 13100u, 4294967295u, u_input.b), arg_2.d.c.a, Struct_2(vec4<f32>(1000f, 868f, global1.b, 331f), arg_0.a, var_2, u_input.b, Struct_1(false, -262f, vec3<i32>(var_2.x, var_2.x, 0i), arg_2.a)), 54048i, Struct_1(arg_2.c.a, 1158f, global1.c, arg_1)), arg_2.d.c.d).c.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_4(Struct_1(arg_0.a, global1.b, u_input.d.xyy, 154f), arg_2.d, 1u).b.x * _wgslsmith_f_op_f32(arg_2.a + arg_0.b)), arg_1), -_wgslsmith_div_vec3_i32(arg_2.d.c.e.c, arg_2.c.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_0.b - arg_0.b)))))).e;
    let var_3 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1533f, arg_0.b, global1.d) * arg_2.d.b.yzw)))), func_4(func_6(func_5(arg_2.d, Struct_1(false, -205f, global1.c, -1450f)), arg_2), func_4(Struct_1(var_1.x, global1.d, vec3<i32>(var_2.x, u_input.e, u_input.e), -538f), arg_2.d, 0u), u_input.a).b.yyz), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(arg_2.d.b.yzx, _wgslsmith_f_op_vec3_f32(arg_2.d.c.a.zxx + _wgslsmith_f_op_vec3_f32(-arg_2.d.c.a.wwx)))))));
    return arg_0;
}

fn func_1(arg_0: vec2<f32>, arg_1: Struct_1) -> f32 {
    global1 = func_7(func_6(func_5(func_4(func_2(), Struct_3(vec4<u32>(4294967295u, u_input.a, u_input.c, 8011u), vec4<f32>(arg_0.x, 1077f, 1150f, arg_1.d), Struct_2(vec4<f32>(global1.d, -901f, arg_0.x, global1.b), false, vec3<i32>(-5007i, u_input.d.x, 24869i), u_input.b, Struct_1(true, -998f, vec3<i32>(arg_1.c.x, 1i, global1.c.x), -1237f)), 1i, Struct_1(true, global1.b, vec3<i32>(-38307i, 9255i, global1.c.x), -683f)), ~10183u), Struct_1(true, _wgslsmith_f_op_f32(-global1.b), vec3<i32>(1i, global0[_wgslsmith_index_u32(u_input.b, 32u)], -1i), arg_0.x)), Struct_4(_wgslsmith_div_f32(_wgslsmith_div_f32(-1000f, -1413f), arg_1.b), func_4(Struct_1(arg_1.a, 324f, u_input.d.xyw, 1000f), func_4(Struct_1(false, 604f, vec3<i32>(80165i, global0[_wgslsmith_index_u32(u_input.b, 32u)], -2147483647i), 417f), Struct_3(vec4<u32>(u_input.c, u_input.b, 1u, 1235u), vec4<f32>(arg_1.d, 1000f, 155f, -1759f), Struct_2(vec4<f32>(arg_0.x, -513f, arg_1.d, arg_0.x), global1.a, u_input.d.wyy, u_input.b, Struct_1(global1.a, arg_1.d, global1.c, 463f)), 2147483647i, arg_1), 57053u), _wgslsmith_mod_u32(u_input.b, 4294967295u)).c.e.c.yz, Struct_1(!arg_1.a, -255f, u_input.d.wxz << (vec3<u32>(28213u, 98910u, 51049u) % vec3<u32>(32u)), global1.d), Struct_3(vec4<u32>(u_input.a, u_input.a, u_input.b, 36086u), _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.d, arg_0.x, arg_0.x, -329f) + vec4<f32>(370f, 350f, arg_0.x, arg_1.b)), Struct_2(vec4<f32>(-1556f, -1000f, 817f, arg_0.x), true, u_input.d.zzw, u_input.b, arg_1), firstLeadingBit(1i), func_2()))), global1.d, Struct_4(arg_1.d, vec2<i32>(-global0[_wgslsmith_index_u32(19988u, 32u)], ~u_input.d.x), Struct_1(true, -251f, abs(arg_1.c) >> (vec3<u32>(u_input.a, 140126u, u_input.b) % vec3<u32>(32u)), _wgslsmith_f_op_f32(622f + _wgslsmith_f_op_f32(-global1.b))), Struct_3(select(min(vec4<u32>(u_input.b, u_input.b, 0u, u_input.c), vec4<u32>(1642u, u_input.c, 4294967295u, u_input.c)), vec4<u32>(4294967295u, u_input.c, u_input.c, 20060u), false), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, 289f, 1077f, global1.d) + vec4<f32>(arg_1.d, arg_0.x, -882f, 2496f)) * _wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_1.b, arg_1.b, arg_0.x, global1.d), vec4<f32>(492f, 1313f, arg_0.x, 3478f)))), Struct_2(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(525f, arg_0.x, 837f, -973f))), select(arg_1.a, global1.a, false), -vec3<i32>(global1.c.x, global0[_wgslsmith_index_u32(0u, 32u)], -1i), ~16324u, func_5(Struct_3(vec4<u32>(u_input.a, u_input.b, 1u, u_input.c), vec4<f32>(1000f, arg_1.b, arg_0.x, arg_1.d), Struct_2(vec4<f32>(-1218f, 926f, arg_0.x, arg_0.x), false, u_input.d.wzw, u_input.b, Struct_1(false, -507f, vec3<i32>(u_input.e, -2147483647i, -2147483647i), -1415f)), 0i, arg_1), Struct_1(false, global1.b, vec3<i32>(global1.c.x, global0[_wgslsmith_index_u32(12894u, 32u)], u_input.e), arg_1.b)).e), 45119i, Struct_1(-1i >= global0[_wgslsmith_index_u32(u_input.b, 32u)], global1.d, vec3<i32>(global0[_wgslsmith_index_u32(u_input.b, 32u)], 2147483647i, 1i), global1.d))));
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(arg_0.x)), 1044f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) + arg_1.d), 325f) * _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.b, 410f, -953f, global1.b) + vec4<f32>(1305f, 1000f, -919f, global1.d)))))));
    global1 = func_6(func_5(func_4(func_4(arg_1, Struct_3(vec4<u32>(u_input.a, 4294967295u, u_input.b, u_input.a), vec4<f32>(-424f, var_0.x, -138f, 459f), Struct_2(vec4<f32>(arg_0.x, arg_1.d, -113f, var_0.x), false, vec3<i32>(2147483647i, -2147483647i, u_input.d.x), 39190u, arg_1), arg_1.c.x, Struct_1(arg_1.a, arg_1.d, vec3<i32>(2147483647i, global1.c.x, -2147483647i), -2548f)), select(55405u, 49541u, arg_1.a)).e, func_4(Struct_1(global1.a, 2348f, vec3<i32>(2147483647i, u_input.d.x, global0[_wgslsmith_index_u32(u_input.a, 32u)]), arg_1.b), func_4(Struct_1(false, -687f, vec3<i32>(u_input.d.x, 38077i, global1.c.x), arg_0.x), Struct_3(vec4<u32>(4294967295u, u_input.a, u_input.a, 1u), vec4<f32>(global1.d, 210f, arg_0.x, arg_0.x), Struct_2(vec4<f32>(var_0.x, -747f, arg_1.b, var_0.x), arg_1.a, u_input.d.xxw, 1u, Struct_1(global1.a, -1353f, global1.c, arg_0.x)), 24082i, arg_1), 54214u), ~4294967295u), (4294967295u | u_input.b) >> (89518u % 32u)), func_7(arg_1, 704f, Struct_4(_wgslsmith_div_f32(arg_0.x, 662f), vec2<i32>(arg_1.c.x, arg_1.c.x), func_2(), func_4(arg_1, Struct_3(vec4<u32>(u_input.b, 1u, 4294967295u, 4294967295u), vec4<f32>(-173f, global1.d, 1601f, arg_0.x), Struct_2(vec4<f32>(-607f, var_0.x, 1400f, var_0.x), global1.a, vec3<i32>(-2147483647i, arg_1.c.x, global1.c.x), u_input.c, Struct_1(true, 605f, vec3<i32>(-2147483647i, global1.c.x, -32073i), global1.d)), -25574i, Struct_1(true, -1479f, vec3<i32>(u_input.d.x, global1.c.x, -8882i), global1.d)), 6855u)))), Struct_4(_wgslsmith_f_op_f32(select(1365f, arg_0.x, any(select(vec4<bool>(false, false, true, global1.a), vec4<bool>(arg_1.a, false, global1.a, global1.a), true)))), u_input.d.zz, func_4(arg_1, Struct_3(vec4<u32>(9340u, u_input.c, u_input.a, u_input.a), vec4<f32>(608f, var_0.x, 854f, arg_1.d), Struct_2(vec4<f32>(478f, var_0.x, -1122f, -1035f), true, arg_1.c, 0u, Struct_1(global1.a, global1.b, global1.c, -169f)), firstLeadingBit(u_input.e), func_2()), reverseBits(4294967295u) << (u_input.a % 32u)).e, Struct_3(select(firstTrailingBit(vec4<u32>(4294967295u, u_input.c, 1u, u_input.c)), ~vec4<u32>(u_input.c, u_input.c, 0u, u_input.c), false), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(239f, -241f, 819f, arg_1.b) * vec4<f32>(arg_0.x, var_0.x, -144f, -218f)))), Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(218f, -1000f, global1.b, var_0.x)), func_4(Struct_1(arg_1.a, arg_0.x, global1.c, -414f), Struct_3(vec4<u32>(1u, 0u, u_input.b, u_input.c), vec4<f32>(var_0.x, 1503f, 354f, arg_0.x), Struct_2(vec4<f32>(global1.b, -791f, arg_1.d, 1000f), global1.a, vec3<i32>(-1i, 42013i, u_input.e), u_input.b, Struct_1(false, 1062f, vec3<i32>(global0[_wgslsmith_index_u32(0u, 32u)], -1i, global0[_wgslsmith_index_u32(u_input.b, 32u)]), arg_0.x)), u_input.e, Struct_1(true, -407f, vec3<i32>(2588i, 7540i, 0i), 1337f)), u_input.b).c.b, _wgslsmith_mult_vec3_i32(u_input.d.yzz, vec3<i32>(arg_1.c.x, 0i, u_input.e)), 20178u, Struct_1(arg_1.a, -1031f, vec3<i32>(1052i, global0[_wgslsmith_index_u32(0u, 32u)], -17830i), global1.b)), _wgslsmith_sub_i32(global1.c.x, -30608i), Struct_1(!arg_1.a, _wgslsmith_f_op_f32(f32(-1f) * -493f), _wgslsmith_mult_vec3_i32(u_input.d.xww, arg_1.c), arg_1.b))));
    var_0 = vec4<f32>(arg_0.x, var_0.x, arg_0.x, _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(978f + var_0.x), var_0.x)))));
    let var_1 = func_4(Struct_1(true, _wgslsmith_f_op_f32(global1.d + -948f), ~u_input.d.yyw, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-714f, _wgslsmith_f_op_f32(-var_0.x)))), func_4(func_7(Struct_1(true, var_0.x, vec3<i32>(u_input.d.x, -2147483647i, u_input.e), func_4(Struct_1(arg_1.a, arg_0.x, arg_1.c, var_0.x), Struct_3(vec4<u32>(0u, 1u, u_input.a, u_input.c), vec4<f32>(var_0.x, arg_1.d, arg_1.d, -1417f), Struct_2(vec4<f32>(global1.d, -1000f, global1.b, 846f), arg_1.a, arg_1.c, u_input.a, arg_1), u_input.d.x, Struct_1(global1.a, arg_0.x, vec3<i32>(-2147483647i, global1.c.x, 2147483647i), global1.b)), 16484u).b.x), -2068f, Struct_4(_wgslsmith_f_op_f32(-global1.d), abs(vec2<i32>(arg_1.c.x, -2147483647i)), Struct_1(true, arg_1.b, arg_1.c, arg_1.b), Struct_3(vec4<u32>(9704u, 17892u, 79199u, u_input.a), vec4<f32>(126f, arg_1.d, arg_0.x, arg_0.x), Struct_2(vec4<f32>(892f, 1078f, global1.b, -841f), global1.a, global1.c, u_input.a, arg_1), 1i, Struct_1(false, 742f, vec3<i32>(global1.c.x, arg_1.c.x, 0i), global1.d)))), Struct_3(max(vec4<u32>(4294967295u, u_input.c, u_input.a, 1u), _wgslsmith_clamp_vec4_u32(vec4<u32>(26058u, u_input.a, 4294967295u, 0u), vec4<u32>(u_input.b, 18702u, u_input.a, 20886u), vec4<u32>(64917u, 0u, 4294967295u, u_input.a))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(662f, arg_1.b, -1497f, -351f) + vec4<f32>(global1.d, -621f, -1838f, -1000f))), Struct_2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1539f, arg_0.x, arg_0.x, -283f), vec4<f32>(global1.b, arg_1.d, -1000f, -598f), vec4<bool>(arg_1.a, true, global1.a, global1.a))), true, firstLeadingBit(vec3<i32>(global1.c.x, -1i, 0i)), 46276u, func_6(Struct_2(vec4<f32>(143f, -1415f, 1323f, 1908f), false, global1.c, u_input.b, Struct_1(arg_1.a, arg_0.x, vec3<i32>(u_input.e, u_input.e, -1i), global1.b)), Struct_4(-814f, vec2<i32>(1i, 0i), arg_1, Struct_3(vec4<u32>(18889u, 4294967295u, 41854u, u_input.b), vec4<f32>(1000f, 1000f, var_0.x, 545f), Struct_2(vec4<f32>(1000f, 1304f, 108f, arg_0.x), true, vec3<i32>(u_input.e, 40428i, 40243i), 120206u, arg_1), 0i, arg_1)))), _wgslsmith_sub_i32(i32(-1i) * -2147483647i, arg_1.c.x ^ u_input.e), Struct_1(all(vec4<bool>(true, arg_1.a, arg_1.a, global1.a)), func_4(arg_1, Struct_3(vec4<u32>(8070u, u_input.b, u_input.c, u_input.a), vec4<f32>(698f, var_0.x, arg_0.x, var_0.x), Struct_2(vec4<f32>(arg_0.x, arg_1.b, 1000f, 1097f), true, vec3<i32>(global0[_wgslsmith_index_u32(u_input.b, 32u)], 19084i, 2147483647i), 24904u, Struct_1(arg_1.a, global1.b, vec3<i32>(2147483647i, u_input.d.x, 0i), arg_1.d)), arg_1.c.x, Struct_1(true, 1759f, global1.c, global1.b)), u_input.b).c.e.d, ~vec3<i32>(arg_1.c.x, 2147483647i, -39083i), _wgslsmith_f_op_f32(f32(-1f) * -373f))), u_input.a), countOneBits(~1u ^ ~(~u_input.b))).c;
    return global1.b;
}

fn func_8(arg_0: vec3<u32>, arg_1: vec3<bool>, arg_2: vec2<i32>, arg_3: vec3<u32>) -> Struct_3 {
    var var_0 = ~min(select(_wgslsmith_mult_u32(arg_0.x, u_input.b), countOneBits(4294967295u) << (0u % 32u), false), ~(u_input.c >> (1u % 32u)));
    let var_1 = func_7(func_7(func_2(), 864f, Struct_4(-845f, ~(~vec2<i32>(30001i, -45912i)), func_6(func_5(Struct_3(vec4<u32>(arg_0.x, u_input.a, arg_3.x, 1u), vec4<f32>(1227f, global1.d, 1615f, global1.b), Struct_2(vec4<f32>(global1.b, global1.b, -3069f, global1.b), false, vec3<i32>(28492i, global1.c.x, 1i), arg_3.x, Struct_1(global1.a, global1.d, vec3<i32>(global1.c.x, 36159i, 45432i), global1.b)), 0i, Struct_1(arg_1.x, global1.d, u_input.d.zzw, 225f)), Struct_1(false, global1.b, vec3<i32>(2564i, u_input.e, arg_2.x), -394f)), Struct_4(421f, vec2<i32>(arg_2.x, u_input.d.x), Struct_1(global1.a, global1.b, u_input.d.xxy, 946f), Struct_3(vec4<u32>(arg_0.x, 4294967295u, 0u, u_input.b), vec4<f32>(-946f, 904f, global1.d, -389f), Struct_2(vec4<f32>(-1000f, global1.d, -582f, -220f), false, vec3<i32>(u_input.e, global0[_wgslsmith_index_u32(arg_3.x, 32u)], global1.c.x), 4294967295u, Struct_1(arg_1.x, -864f, vec3<i32>(global1.c.x, 2872i, -1i), global1.d)), 1i, Struct_1(false, -290f, u_input.d.yzx, 657f)))), func_4(Struct_1(global1.a, global1.b, vec3<i32>(37930i, global1.c.x, arg_2.x), global1.d), Struct_3(vec4<u32>(arg_0.x, u_input.b, 0u, 1u), vec4<f32>(-894f, -1000f, -521f, global1.d), Struct_2(vec4<f32>(687f, global1.d, global1.d, global1.b), false, vec3<i32>(global1.c.x, u_input.d.x, -2147483647i), 1u, Struct_1(true, global1.d, global1.c, global1.d)), arg_2.x, Struct_1(global1.a, -681f, vec3<i32>(64893i, 2147483647i, global0[_wgslsmith_index_u32(arg_0.x, 32u)]), 707f)), arg_3.x))), global1.d, Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_3(290f)).x + -937f), ~abs(_wgslsmith_div_vec2_i32(u_input.d.zz, arg_2)), func_2(), func_4(func_6(Struct_2(vec4<f32>(-669f, global1.d, global1.b, 1162f), arg_1.x, u_input.d.zwy, arg_0.x, Struct_1(global1.a, global1.d, u_input.d.xzz, global1.d)), Struct_4(692f, u_input.d.zz, Struct_1(true, global1.d, global1.c, global1.d), Struct_3(vec4<u32>(4294967295u, 1u, arg_3.x, u_input.b), vec4<f32>(global1.d, global1.d, 881f, -1000f), Struct_2(vec4<f32>(-1251f, global1.d, global1.d, global1.b), true, vec3<i32>(u_input.e, global0[_wgslsmith_index_u32(4294967295u, 32u)], -52049i), 15175u, Struct_1(false, global1.b, global1.c, global1.d)), 0i, Struct_1(false, -1054f, u_input.d.zyy, 881f)))), func_4(Struct_1(arg_1.x, global1.d, vec3<i32>(u_input.e, global1.c.x, 33834i), global1.b), func_4(Struct_1(true, 184f, vec3<i32>(arg_2.x, u_input.d.x, global0[_wgslsmith_index_u32(arg_3.x, 32u)]), global1.b), Struct_3(vec4<u32>(u_input.a, 14431u, 4294967295u, 103075u), vec4<f32>(global1.b, -160f, global1.b, -1092f), Struct_2(vec4<f32>(-343f, 712f, global1.d, -1895f), arg_1.x, u_input.d.xyz, arg_3.x, Struct_1(global1.a, 1823f, u_input.d.xzw, global1.b)), 1i, Struct_1(global1.a, global1.b, global1.c, global1.d)), u_input.a), _wgslsmith_div_u32(40411u, 14764u)), ~_wgslsmith_sub_u32(arg_3.x, 1u))));
    var var_2 = Struct_2(vec4<f32>(_wgslsmith_f_op_vec4_f32(func_3(var_1.d)).x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2().b - func_4(var_1, Struct_3(vec4<u32>(49360u, u_input.c, 14801u, 4294967295u), vec4<f32>(1107f, -616f, -1072f, -1647f), Struct_2(vec4<f32>(var_1.d, 573f, var_1.d, global1.b), true, vec3<i32>(arg_2.x, global0[_wgslsmith_index_u32(arg_0.x, 32u)], 2147483647i), 4294967295u, var_1), -7670i, var_1), arg_0.x).b.x) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(global1.d))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global1.d), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.d + global1.b) - _wgslsmith_f_op_f32(-global1.d)), (-35670i < global0[_wgslsmith_index_u32(4294967295u, 32u)]) & false)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(619f)) * _wgslsmith_f_op_f32(floor(var_1.d)))), !(!(global1.a | func_5(Struct_3(vec4<u32>(4294967295u, 1u, arg_3.x, arg_3.x), vec4<f32>(global1.b, global1.b, global1.b, 293f), Struct_2(vec4<f32>(1110f, -1330f, global1.b, 490f), var_1.a, vec3<i32>(-8497i, 0i, var_1.c.x), 1u, Struct_1(false, global1.b, global1.c, var_1.d)), arg_2.x, Struct_1(global1.a, global1.d, var_1.c, 119f)), Struct_1(arg_1.x, global1.b, var_1.c, 1120f)).e.a)), var_1.c, 1u, func_5(func_4(Struct_1(!var_1.a, var_1.b, vec3<i32>(-40881i, -22547i, global1.c.x) & vec3<i32>(1i, u_input.e, global0[_wgslsmith_index_u32(arg_3.x, 32u)]), global1.d), Struct_3(vec4<u32>(38402u, u_input.b, 1u, 1u) ^ vec4<u32>(25371u, arg_0.x, arg_3.x, arg_0.x), vec4<f32>(global1.d, var_1.d, var_1.d, -757f), func_4(var_1, Struct_3(vec4<u32>(18285u, arg_3.x, 0u, 26034u), vec4<f32>(1924f, var_1.b, global1.d, var_1.b), Struct_2(vec4<f32>(var_1.b, var_1.b, var_1.b, 1000f), var_1.a, global1.c, 0u, var_1), 4932i, Struct_1(global1.a, 486f, vec3<i32>(var_1.c.x, -2147483647i, u_input.d.x), -856f)), u_input.a).c, 35221i, var_1), ~arg_3.x), var_1).e);
    let var_3 = Struct_3(vec4<u32>(_wgslsmith_mult_u32(firstTrailingBit(~var_2.d), var_2.d), ~u_input.b >> (_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(arg_0, global2[_wgslsmith_index_u32(arg_3.x, 2u)]), 0u, _wgslsmith_dot_vec3_u32(global2[_wgslsmith_index_u32(arg_3.x, 2u)], arg_3)) % 32u), u_input.c, u_input.c), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_2.a + vec4<f32>(global1.b, var_2.e.b, -889f, -234f)))))), Struct_2(_wgslsmith_f_op_vec4_f32(trunc(var_2.a)), !all(!vec4<bool>(true, global1.a, false, arg_1.x)), firstLeadingBit(~_wgslsmith_mod_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(arg_0.x, 32u)], global1.c.x, 1i), var_2.e.c)), ~firstLeadingBit(~4294967295u), func_4(var_1, func_4(var_2.e, func_4(Struct_1(var_1.a, var_2.e.d, var_2.e.c, 1084f), Struct_3(vec4<u32>(u_input.c, 0u, var_2.d, var_2.d), vec4<f32>(var_1.b, 857f, -1032f, -348f), Struct_2(var_2.a, false, vec3<i32>(-2182i, global0[_wgslsmith_index_u32(arg_3.x, 32u)], global1.c.x), arg_0.x, Struct_1(true, var_2.e.d, vec3<i32>(u_input.e, 0i, -12843i), 311f)), var_1.c.x, var_1), 4294967295u), 93165u), arg_0.x).c.e), var_1.c.x, var_1);
    var var_4 = ~var_3.a.yxz;
    return func_4(var_2.e, var_3, 52847u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_8(~vec3<u32>(_wgslsmith_mult_u32(~u_input.b, u_input.a), ~46220u, ~1u), vec3<bool>(global1.a, global1.a, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global1.d - -1000f), global1.b)) >= _wgslsmith_f_op_f32(func_1(global3[_wgslsmith_index_u32(u_input.b | 1u, 21u)], Struct_1(global1.a, -656f, u_input.d.xww, global1.b)))), vec2<i32>(func_4(func_5(Struct_3(vec4<u32>(u_input.c, u_input.a, 0u, 1u), vec4<f32>(global1.b, 473f, global1.d, 283f), Struct_2(vec4<f32>(521f, global1.d, 279f, -343f), true, vec3<i32>(1i, 17978i, global0[_wgslsmith_index_u32(u_input.c, 32u)]), 50164u, Struct_1(global1.a, global1.d, u_input.d.xwx, global1.b)), global0[_wgslsmith_index_u32(49903u, 32u)], Struct_1(global1.a, -182f, global1.c, -1114f)), func_6(Struct_2(vec4<f32>(global1.d, global1.d, -1000f, 1126f), true, vec3<i32>(-6048i, u_input.e, u_input.e), u_input.b, Struct_1(global1.a, 100f, global1.c, global1.b)), Struct_4(-2349f, vec2<i32>(global1.c.x, 38833i), Struct_1(false, global1.d, vec3<i32>(global1.c.x, 2147483647i, u_input.d.x), 2315f), Struct_3(vec4<u32>(u_input.a, u_input.b, 4294967295u, 0u), vec4<f32>(-500f, global1.d, global1.d, 2031f), Struct_2(vec4<f32>(global1.b, -900f, -1276f, global1.b), global1.a, vec3<i32>(22464i, global1.c.x, -1i), u_input.a, Struct_1(global1.a, global1.d, u_input.d.xxx, global1.b)), global0[_wgslsmith_index_u32(u_input.c, 32u)], Struct_1(true, global1.b, u_input.d.yzz, -1563f))))).e, func_4(func_7(Struct_1(global1.a, global1.b, vec3<i32>(global1.c.x, global0[_wgslsmith_index_u32(4294967295u, 32u)], u_input.e), 297f), 526f, Struct_4(global1.d, u_input.d.zw, Struct_1(global1.a, 1456f, global1.c, -524f), Struct_3(vec4<u32>(94893u, 30167u, u_input.b, 50365u), vec4<f32>(global1.d, 1978f, global1.b, global1.d), Struct_2(vec4<f32>(global1.b, 848f, -1019f, global1.b), global1.a, vec3<i32>(global0[_wgslsmith_index_u32(u_input.b, 32u)], global1.c.x, u_input.d.x), 4294967295u, Struct_1(true, -966f, u_input.d.zwx, -310f)), u_input.e, Struct_1(global1.a, global1.d, vec3<i32>(u_input.d.x, global0[_wgslsmith_index_u32(1u, 32u)], global1.c.x), global1.d)))), func_4(Struct_1(global1.a, global1.d, vec3<i32>(u_input.d.x, -6952i, global0[_wgslsmith_index_u32(0u, 32u)]), -1085f), Struct_3(vec4<u32>(u_input.c, 0u, u_input.a, 81217u), vec4<f32>(global1.d, 359f, global1.d, global1.d), Struct_2(vec4<f32>(634f, global1.d, global1.d, -652f), global1.a, vec3<i32>(2147483647i, global0[_wgslsmith_index_u32(u_input.a, 32u)], 1i), u_input.b, Struct_1(true, global1.d, vec3<i32>(10554i, -1i, -11194i), 927f)), global0[_wgslsmith_index_u32(u_input.c, 32u)], Struct_1(global1.a, -789f, vec3<i32>(u_input.e, -2147483647i, -13978i), global1.b)), u_input.b), ~u_input.a), 89884u).e.c.x, -(~global0[_wgslsmith_index_u32(1u, 32u)])), select(vec3<u32>(~4294967295u, func_5(Struct_3(vec4<u32>(u_input.a, u_input.b, 4294967295u, 54701u), vec4<f32>(-1031f, global1.d, -1316f, global1.b), Struct_2(vec4<f32>(2042f, -276f, global1.d, -1322f), false, global1.c, u_input.a, Struct_1(global1.a, 907f, u_input.d.xzx, 1245f)), global1.c.x, Struct_1(false, 1784f, global1.c, -1328f)), Struct_1(global1.a, -701f, vec3<i32>(1i, global1.c.x, u_input.e), global1.d)).d, u_input.b), _wgslsmith_add_vec3_u32(vec3<u32>(62865u, u_input.a, 46788u), global2[_wgslsmith_index_u32(3781u, 2u)]) << (~vec3<u32>(89876u, 22520u, u_input.c) % vec3<u32>(32u)), !select(!vec3<bool>(false, true, global1.a), select(vec3<bool>(global1.a, global1.a, false), vec3<bool>(global1.a, false, false), vec3<bool>(false, global1.a, global1.a)), func_4(Struct_1(global1.a, 532f, vec3<i32>(-1i, global0[_wgslsmith_index_u32(64913u, 32u)], -1i), -113f), Struct_3(vec4<u32>(u_input.b, u_input.c, 1003u, 56822u), vec4<f32>(global1.b, global1.d, global1.d, global1.d), Struct_2(vec4<f32>(global1.d, -110f, 1000f, global1.b), true, vec3<i32>(u_input.e, -1i, global0[_wgslsmith_index_u32(1u, 32u)]), u_input.c, Struct_1(global1.a, 1317f, vec3<i32>(1i, u_input.d.x, u_input.d.x), global1.b)), global0[_wgslsmith_index_u32(u_input.c, 32u)], Struct_1(global1.a, -2175f, vec3<i32>(2147483647i, global1.c.x, global1.c.x), global1.d)), u_input.c).e.a)));
    let var_1 = func_5(Struct_3(var_0.a, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-413f, 846f, 1780f, -797f) * vec4<f32>(783f, var_0.b.x, -1857f, 590f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(var_0.c.a)))), func_8(~(global2[_wgslsmith_index_u32(1u, 2u)] ^ global2[_wgslsmith_index_u32(4294967295u, 2u)]), !vec3<bool>(false, false, var_0.c.b), var_0.c.c.zz, vec3<u32>(1u, 1u, 1u)).c, global1.c.x, var_0.e), Struct_1(false, global1.d, max(_wgslsmith_mult_vec3_i32(vec3<i32>(-36423i, -15320i, -16517i), u_input.d.yxz), _wgslsmith_mult_vec3_i32(-vec3<i32>(42101i, 2147483647i, 2147483647i), -var_0.c.c)), _wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_div_f32(_wgslsmith_f_op_vec4_f32(func_3(var_0.c.a.x)).x, _wgslsmith_f_op_f32(-1000f * var_0.c.e.b)))).x));
    var var_2 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(1000f, -1700f), _wgslsmith_f_op_vec4_f32(func_3(var_0.c.e.d)).x) * _wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.e.b, var_0.e.b) * _wgslsmith_f_op_vec2_f32(global3[_wgslsmith_index_u32(var_0.c.d, 21u)] + global3[_wgslsmith_index_u32(u_input.c, 21u)])), var_1.e))), min(_wgslsmith_div_vec2_i32(-abs(global1.c.yy), vec2<i32>(_wgslsmith_add_i32(11957i, global1.c.x), func_2().c.x)), func_2().c.yz), var_1.e, Struct_3(vec4<u32>(firstTrailingBit(_wgslsmith_clamp_u32(u_input.b, 57435u, 68158u)), u_input.a, min(_wgslsmith_div_u32(var_0.c.d, 2231u), 10778u), ~1u), vec4<f32>(var_0.b.x, var_0.c.e.d, _wgslsmith_f_op_f32(-var_0.e.b), 446f), Struct_2(_wgslsmith_f_op_vec4_f32(-func_4(var_0.c.e, Struct_3(var_0.a, var_1.a, Struct_2(var_1.a, false, vec3<i32>(2147483647i, u_input.d.x, 53948i), var_0.c.d, Struct_1(false, global1.d, u_input.d.wyw, 239f)), 12361i, Struct_1(true, var_0.b.x, u_input.d.yzx, global1.d)), u_input.a).b), !(-1617f <= global1.d), vec3<i32>(u_input.e, select(global1.c.x, var_1.c.x, var_1.b), global1.c.x), 1u, Struct_1(!var_0.e.a, func_7(Struct_1(var_1.e.a, 1288f, vec3<i32>(-1i, 14189i, u_input.e), var_1.e.d), -320f, Struct_4(var_1.e.b, global1.c.zy, var_0.e, Struct_3(vec4<u32>(1u, 40571u, var_0.a.x, 1u), vec4<f32>(-139f, 417f, 1000f, var_1.a.x), Struct_2(vec4<f32>(var_0.e.b, var_0.c.a.x, var_1.a.x, -102f), true, vec3<i32>(var_0.c.e.c.x, u_input.d.x, u_input.e), var_0.c.d, var_0.c.e), global0[_wgslsmith_index_u32(var_1.d, 32u)], var_1.e))).b, ~vec3<i32>(2147483647i, 2147483647i, var_1.c.x), _wgslsmith_f_op_f32(1000f - -187f))), -1i, var_0.c.e));
    let var_3 = var_2.d.a.yz;
    var var_4 = -41964i;
    global3 = array<vec2<f32>, 21>();
    var var_5 = 0u;
    let var_6 = func_8(vec3<u32>(4294967295u ^ (var_1.d ^ 0u), 78911u, 0u), !select(vec3<bool>(any(vec4<bool>(true, var_1.b, true, var_2.c.a)), var_1.b, true), vec3<bool>(true, !global1.a, true), any(vec2<bool>(global1.a, true))), vec2<i32>(global0[_wgslsmith_index_u32(4294967295u, 32u)], reverseBits(u_input.e)), vec3<u32>(32180u, var_3.x, 1u));
    let var_7 = func_4(var_1.e, var_6, var_6.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d);
}

