struct Struct_1 {
    a: bool,
    b: u32,
    c: u32,
    d: u32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: vec2<u32>,
    d: i32,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: i32,
    c: Struct_2,
    d: vec2<u32>,
    e: vec4<i32>,
}

struct Struct_4 {
    a: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: vec4<u32> = vec4<u32>(1u, 4294967295u, 16945u, 21039u);

var<private> global2: array<vec3<u32>, 28>;

var<private> global3: vec2<i32> = vec2<i32>(0i, 0i);

var<private> global4: array<f32, 10>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3() -> vec3<bool> {
    global3 = countOneBits(~countOneBits(abs(vec2<i32>(-2147483647i, u_input.b))));
    global0 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-582f, global4[_wgslsmith_index_u32(_wgslsmith_div_u32(0u, u_input.a.x), 10u)])), -685f), _wgslsmith_f_op_f32(-850f * 950f));
    var var_0 = abs(vec2<i32>(i32(-1i) * -global3.x, u_input.b));
    let var_1 = all(select(select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false))), true), vec2<bool>(true, true), true));
    var var_2 = Struct_4(~((1u << (_wgslsmith_mult_u32(57824u, global1.x) % 32u)) << (abs(27523u) % 32u)));
    return select(vec3<bool>(u_input.a.x != u_input.a.x, true, !(!(!var_1))), vec3<bool>(false, false, var_1), var_1);
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: Struct_3, arg_3: vec4<i32>) -> f32 {
    global4 = array<f32, 10>();
    return 196f;
}

fn func_2() -> Struct_2 {
    let var_0 = ~vec2<i32>(~abs(u_input.b), u_input.b);
    let var_1 = ~u_input.a.x ^ u_input.a.x;
    var var_2 = _wgslsmith_f_op_f32(func_4(Struct_1(true, 4294967295u, 1u, ~(u_input.a.x ^ _wgslsmith_div_u32(var_1, u_input.a.x))), false, Struct_3(select(vec3<bool>(false, true, all(vec2<bool>(false, false))), func_3(), vec3<bool>(true, true, true)), countOneBits(_wgslsmith_mult_i32(7214i, select(global3.x, -2005i, false))), Struct_2(countOneBits(global1.wwy), Struct_1(0u <= global1.x, var_1, ~u_input.a.x, _wgslsmith_sub_u32(1u, u_input.a.x)), u_input.a, var_0.x, Struct_1(false, ~13159u, u_input.a.x, 34096u)), ~vec2<u32>(4294967295u, 0u) << (u_input.a % vec2<u32>(32u)), vec4<i32>(firstLeadingBit(~2147483647i), _wgslsmith_dot_vec4_i32(vec4<i32>(-30708i, 0i, 32123i, 4220i), ~vec4<i32>(var_0.x, var_0.x, u_input.b, 763i)), 48929i, global3.x)), -_wgslsmith_mod_vec4_i32(abs(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b, -1i, u_input.b, var_0.x), vec4<i32>(26269i, u_input.b, var_0.x, global3.x))), vec4<i32>(u_input.b, _wgslsmith_add_i32(var_0.x, var_0.x), ~(-34580i), ~u_input.b))));
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global4[_wgslsmith_index_u32(global1.x, 10u)], global4[_wgslsmith_index_u32(global1.x, 10u)]))) - vec2<f32>(493f, -156f)))) - vec2<f32>(_wgslsmith_f_op_f32(sign(global0.x)), -1047f));
    var var_3 = max(_wgslsmith_div_vec2_u32(~global1.zy, vec2<u32>(abs(0u << (global1.x % 32u)), ~global1.x)), firstTrailingBit(_wgslsmith_mod_vec2_u32(abs(vec2<u32>(79927u, var_1)), _wgslsmith_add_vec2_u32(~global1.wy, vec2<u32>(var_1, 4294967295u)))));
    return Struct_2(_wgslsmith_mult_vec3_u32(global2[_wgslsmith_index_u32(~firstLeadingBit(var_3.x) & _wgslsmith_sub_u32(var_3.x, 24629u), 28u)], _wgslsmith_mult_vec3_u32(vec3<u32>(~var_1, _wgslsmith_mult_u32(var_3.x, var_1), _wgslsmith_dot_vec3_u32(global1.xwy, vec3<u32>(4294967295u, u_input.a.x, 2058u))), _wgslsmith_add_vec3_u32(global2[_wgslsmith_index_u32(var_1, 28u)], global2[_wgslsmith_index_u32(4294967295u, 28u)]) >> (abs(vec3<u32>(20589u, global1.x, var_1)) % vec3<u32>(32u)))), Struct_1(true || !(-5692i < global3.x), 4294967295u, global1.x, var_1), abs(u_input.a), ~var_0.x, Struct_1(_wgslsmith_div_i32(var_0.x, _wgslsmith_div_i32(16285i, global3.x)) <= _wgslsmith_clamp_i32(var_0.x & 12217i, 1i, 12182i), ~1u, firstLeadingBit(4294967295u), u_input.a.x));
}

fn func_5(arg_0: vec3<i32>, arg_1: vec3<bool>, arg_2: Struct_2, arg_3: f32) -> u32 {
    global0 = vec2<f32>(_wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(abs(arg_2.b.c), 10u)] + -398f), _wgslsmith_f_op_f32(-arg_3));
    global4 = array<f32, 10>();
    global2 = array<vec3<u32>, 28>();
    let var_0 = Struct_1(true, _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(0u, 81833u, 22294u), _wgslsmith_add_u32(_wgslsmith_sub_u32(~arg_2.a.x, _wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(global1.x, 37840u))), ~(~14060u)), arg_2.a.x), ~max(u_input.a.x, ~(~0u)), _wgslsmith_mod_u32(global1.x, ~max(4294967295u, ~26641u)));
    let var_1 = Struct_4(_wgslsmith_mod_u32(~_wgslsmith_mod_u32(u_input.a.x, _wgslsmith_clamp_u32(117611u, var_0.b, 1u)), 30522u));
    return var_0.b;
}

fn func_6(arg_0: bool, arg_1: u32, arg_2: Struct_1, arg_3: bool) -> Struct_4 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1042f, -639f, -883f, global0.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global4[_wgslsmith_index_u32(arg_1, 10u)], 859f, global0.x, 1720f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(global4[_wgslsmith_index_u32(1u, 10u)], 436f, -385f, global4[_wgslsmith_index_u32(global1.x, 10u)]) * vec4<f32>(global0.x, global0.x, 1171f, -951f))))));
    global4 = array<f32, 10>();
    let var_1 = func_2().b;
    let var_2 = func_2();
    var var_3 = ~var_2.b.b;
    return Struct_4(_wgslsmith_div_u32(_wgslsmith_mult_u32(var_1.d ^ 4294967295u, u_input.a.x), var_1.d));
}

fn func_1(arg_0: Struct_2) -> bool {
    let var_0 = func_6(!all(vec3<bool>(!arg_0.e.a, true, false)), max(~firstLeadingBit(select(69405u, u_input.a.x, arg_0.b.a)), func_5(vec3<i32>(-1i, -24572i, arg_0.d) ^ _wgslsmith_mod_vec3_i32(vec3<i32>(1i, 1i, global3.x), vec3<i32>(480i, 29613i, arg_0.d)), !(!vec3<bool>(true, false, arg_0.b.a)), func_2(), 295f)), arg_0.e, arg_0.b.a);
    var var_1 = Struct_3(vec3<bool>(false, _wgslsmith_f_op_f32(exp2(global4[_wgslsmith_index_u32(1u, 10u)])) > -1249f, _wgslsmith_f_op_f32(func_4(func_2().b, arg_0.d <= 0i, Struct_3(vec3<bool>(arg_0.b.a, arg_0.e.a, arg_0.e.a), arg_0.d, arg_0, global1.zw, vec4<i32>(global3.x, u_input.b, 15505i, global3.x)), min(vec4<i32>(arg_0.d, -1i, 0i, u_input.b), vec4<i32>(arg_0.d, -1840i, -1i, u_input.b)))) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(1u, 10u)] * global0.x))), 8204i, func_2(), ~_wgslsmith_mult_vec2_u32(vec2<u32>(~u_input.a.x, 17113u), vec2<u32>(1u, _wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(arg_0.b.c, arg_0.e.d)))), select((min(vec4<i32>(u_input.b, -11224i, arg_0.d, 1i), vec4<i32>(1i, 1i, 17814i, arg_0.d)) >> (~vec4<u32>(arg_0.b.d, global1.x, u_input.a.x, 12678u) % vec4<u32>(32u))) | (_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b, u_input.b, -1i, -19445i), vec4<i32>(u_input.b, 0i, u_input.b, u_input.b)) ^ vec4<i32>(-5029i, 45075i, u_input.b, -2147483647i)), ~(-vec4<i32>(-1i, u_input.b, arg_0.d, 3654i)), true));
    let var_2 = arg_0;
    global4 = array<f32, 10>();
    global4 = array<f32, 10>();
    return false;
}

fn func_7(arg_0: bool, arg_1: Struct_4, arg_2: Struct_1) -> Struct_4 {
    var var_0 = 3537i;
    global1 = ~vec4<u32>(~(~_wgslsmith_mult_u32(arg_2.d, 53649u)), u_input.a.x, global1.x, ~u_input.a.x);
    global4 = array<f32, 10>();
    var var_1 = global1.x;
    let var_2 = arg_1;
    return func_6(!(!all(select(vec2<bool>(false, true), vec2<bool>(true, arg_0), vec2<bool>(true, false)))), 4294967295u, func_2().b, true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_7(all(select(vec3<bool>(func_1(Struct_2(vec3<u32>(0u, 12216u, 70016u), Struct_1(true, 0u, 47923u, 0u), global1.xy, global3.x, Struct_1(false, 4294967295u, global1.x, 3451u))), true, false), select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(false, true, false))), vec3<bool>(true, true, true))), func_6(select(true, func_5(vec3<i32>(global3.x, global3.x, -2147483647i), vec3<bool>(false, true, true), Struct_2(vec3<u32>(global1.x, global1.x, 0u), Struct_1(false, u_input.a.x, 50522u, u_input.a.x), global1.wx, -3003i, Struct_1(true, global1.x, u_input.a.x, 0u)), global4[_wgslsmith_index_u32(2377u, 10u)]) > global1.x, false), _wgslsmith_dot_vec2_u32(global1.ww & firstLeadingBit(vec2<u32>(34309u, u_input.a.x)), global1.yy), Struct_1(false, u_input.a.x, ~4294967295u, ~global1.x), func_2().b.a), func_2().e);
    var var_1 = Struct_4(func_2().e.d);
    var var_2 = -abs(vec2<i32>(-15733i, 2147483647i));
    var var_3 = _wgslsmith_div_vec3_i32(vec3<i32>(firstLeadingBit(reverseBits(-1i)), firstLeadingBit(0i), global3.x), vec3<i32>(1i >> (global1.x % 32u), -7254i, ~0i | global3.x));
    var var_4 = global0.x;
    global3 = var_3.xz;
    let var_5 = Struct_3(vec3<bool>(!all(vec4<bool>(true, true, true, true)), true, false), 8360i, func_2(), firstLeadingBit(_wgslsmith_mult_vec2_u32(vec2<u32>(8333u, global1.x) & ~vec2<u32>(1u, 45380u), max(~global1.ww, ~global1.wz))), reverseBits(_wgslsmith_div_vec4_i32(-(~vec4<i32>(0i, -1284i, -4752i, global3.x)), min(_wgslsmith_mod_vec4_i32(vec4<i32>(global3.x, -2147483647i, -2147483647i, global3.x), vec4<i32>(0i, var_3.x, -25321i, global3.x)), -vec4<i32>(var_2.x, 70226i, u_input.b, var_2.x)))));
    let var_6 = vec2<bool>(var_5.a.x, true);
    var var_7 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(var_5.d.x, 10u)] * -296f) + -471f), global4[_wgslsmith_index_u32(26589u, 10u)]), global0.x, -445f));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(-1i) * -var_5.e.zyw, global3.x, var_2.x);
}

