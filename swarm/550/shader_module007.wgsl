struct Struct_1 {
    a: i32,
    b: vec4<u32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<u32>,
}

struct Struct_4 {
    a: vec3<i32>,
}

struct Struct_5 {
    a: u32,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
    d: vec2<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: i32,
    d: u32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 18> = array<f32, 18>(-711f, 1294f, -370f, -275f, -278f, -755f, 391f, 614f, -1250f, 1109f, -1000f, -1000f, -2484f, -1642f, -602f, 476f, 1546f, 572f);

var<private> global1: vec4<u32> = vec4<u32>(11368u, 104187u, 4294967295u, 0u);

var<private> global2: array<vec3<bool>, 31>;

var<private> global3: Struct_5 = Struct_5(4294967295u, Struct_2(4240i, Struct_1(8247i, vec4<u32>(45152u, 61404u, 4294967295u, 1u)), Struct_1(2147483647i, vec4<u32>(22609u, 0u, 35856u, 6635u)), Struct_1(i32(-2147483648), vec4<u32>(113u, 58921u, 22353u, 1u)), 2147483647i));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_4, arg_1: vec4<f32>) -> i32 {
    var var_0 = Struct_5(global1.x, global3.b);
    global1 = select(~countOneBits((vec4<u32>(u_input.d.x, u_input.d.x, 4294967295u, var_0.b.b.b.x) << (vec4<u32>(var_0.a, var_0.b.c.b.x, 1u, global3.a) % vec4<u32>(32u))) ^ var_0.b.b.b), firstLeadingBit(var_0.b.d.b ^ (firstTrailingBit(var_0.b.b.b) & _wgslsmith_mod_vec4_u32(vec4<u32>(global3.a, 1u, u_input.d.x, global3.a), vec4<u32>(u_input.d.x, u_input.d.x, global3.a, 0u)))), !(!any(vec2<bool>(true, true))));
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -712f);
    global1 = reverseBits(var_0.b.d.b);
    return -2147483647i;
}

fn func_2(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: Struct_2) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(874f, -1053f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(190f + _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.d.x, 18u)])) * _wgslsmith_f_op_f32(-326f + global0[_wgslsmith_index_u32(max(arg_0.b.x, 49683u), 18u)]))));
    let var_1 = Struct_2(~_wgslsmith_add_i32(_wgslsmith_mod_i32(_wgslsmith_clamp_i32(u_input.e.x, -68648i, global3.b.a), ~(-27503i)), _wgslsmith_mult_i32(-2147483647i, 1i)), Struct_1(26963i, vec4<u32>(u_input.d.x, 4294967295u, ~(~global1.x), 1405u)), arg_0, global3.b.c, arg_2.a);
    var var_2 = Struct_2(arg_2.c.a, Struct_1(abs(func_3(Struct_4(vec3<i32>(49848i, arg_0.a, global3.b.e)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(1u, 18u)], 537f, -1405f, global0[_wgslsmith_index_u32(arg_0.b.x, 18u)])))), global3.b.c.b), Struct_1(var_1.d.a, firstLeadingBit(vec4<u32>(var_1.b.b.x, 1u, 9464u, 72738u) >> (arg_2.d.b % vec4<u32>(32u)))), Struct_1(_wgslsmith_mult_i32(i32(-1i) * -1i, var_1.c.a), ~abs(select(var_1.b.b, vec4<u32>(arg_0.b.x, var_1.c.b.x, 9473u, global1.x), vec4<bool>(false, false, false, false)))), firstLeadingBit(1i));
    let var_3 = Struct_4(abs(countOneBits(vec3<i32>(0i, 1i, 0i))));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(4294967295u, 18u)] * global0[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_add_u32(abs(u_input.d.x), global3.b.c.b.x), ~7562u), 18u)]) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(global1.x, 18u)] - global0[_wgslsmith_index_u32(arg_2.d.b.x, 18u)]) * _wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(arg_2.c.b.x, 18u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1000f)))) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(1u, 18u)]))), global0[_wgslsmith_index_u32(arg_2.b.b.x, 18u)], false))));
    return var_1.d;
}

fn func_1(arg_0: i32, arg_1: Struct_1) -> Struct_5 {
    global2 = array<vec3<bool>, 31>();
    global3 = Struct_5(0u, global3.b);
    global2 = array<vec3<bool>, 31>();
    global3 = Struct_5(countOneBits(arg_1.b.x), Struct_2(abs(~(-arg_1.a)), global3.b.c, func_2(Struct_1(max(-1i, global3.b.b.a), vec4<u32>(global3.a, u_input.d.x, 26109u, 7797u)), ~vec4<i32>(-1i, 2147483647i, u_input.e.x, 20313i), global3.b), Struct_1(firstTrailingBit(_wgslsmith_mult_i32(global3.b.d.a, 95025i)), arg_1.b), global3.b.c.a));
    let var_0 = vec4<bool>(false, true, true && (global0[_wgslsmith_index_u32(~global3.a, 18u)] < _wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(58122u, 18u)]))), !(global0[_wgslsmith_index_u32(arg_1.b.x, 18u)] <= 102f));
    return Struct_5(select(~_wgslsmith_mod_u32(~101848u, _wgslsmith_dot_vec3_u32(arg_1.b.wxw, global1.wxw)), ~arg_1.b.x << (~(~global3.b.c.b.x) % 32u), all(vec4<bool>(!var_0.x, var_0.x, all(vec4<bool>(var_0.x, var_0.x, var_0.x, false)), true))), Struct_2(select(-8070i, 4379i, _wgslsmith_mod_u32(7476u, global3.b.c.b.x) <= global1.x), arg_1, global3.b.b, global3.b.c, min(_wgslsmith_clamp_i32(countOneBits(global3.b.d.a), 19849i, arg_0 << (global3.a % 32u)), 8048i)));
}

fn func_4(arg_0: f32, arg_1: vec2<bool>, arg_2: Struct_5, arg_3: u32) -> f32 {
    global3 = Struct_5(0u, func_1(arg_2.b.b.a, func_1(-(i32(-1i) * -31043i), global3.b.c).b.c).b);
    global3 = func_1(_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(~vec4<i32>(arg_2.b.e, 2147483647i, u_input.b.x, -2147483647i), vec4<i32>(arg_2.b.c.a, u_input.b.x, arg_2.b.b.a, -10632i) & vec4<i32>(arg_2.b.c.a, u_input.a, u_input.c, -3706i)), firstTrailingBit(abs(vec4<i32>(global3.b.e, -31999i, 60204i, arg_2.b.e)))) & _wgslsmith_div_i32(0i, ~u_input.a), global3.b.b);
    let var_0 = arg_1;
    var var_1 = Struct_4(u_input.e);
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(_wgslsmith_div_f32(-1514f, global0[_wgslsmith_index_u32(u_input.d.x, 18u)]), select(vec2<bool>(false, false), vec2<bool>(false, false), false), func_1(u_input.b.x, global3.b.d), global1.x))) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(575f, 1904f))), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(floor(669f)), _wgslsmith_f_op_f32(-124f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(379f, global0[_wgslsmith_index_u32(global3.b.b.b.x, 18u)])) - 1460f))));
    var var_1 = func_1(u_input.a, func_1(u_input.c, func_2(Struct_1(max(-56973i, 0i), vec4<u32>(u_input.d.x, 9633u, 86890u, u_input.d.x)), min(vec4<i32>(2147483647i, 0i, u_input.a, 49258i) & vec4<i32>(u_input.b.x, global3.b.d.a, 28023i, u_input.b.x), vec4<i32>(-21393i, 1i, u_input.a, global3.b.e)), Struct_2(countOneBits(global3.b.a), Struct_1(u_input.a, vec4<u32>(global1.x, global3.a, 0u, global3.b.b.b.x)), global3.b.c, global3.b.b, _wgslsmith_mult_i32(15306i, global3.b.d.a)))).b.c);
    var var_2 = var_0.x;
    var var_3 = Struct_3(Struct_2(-abs(firstTrailingBit(-6163i)), func_2(func_1(var_1.b.d.a, Struct_1(u_input.b.x, vec4<u32>(0u, u_input.d.x, 0u, var_1.b.d.b.x))).b.b, _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a, 9296i, var_1.b.b.a, -29049i), vec4<i32>(2147483647i, -16952i, var_1.b.b.a, u_input.e.x), _wgslsmith_div_vec4_i32(vec4<i32>(var_1.b.c.a, global3.b.b.a, u_input.a, -3702i), vec4<i32>(-12401i, global3.b.c.a, var_1.b.a, global3.b.b.a))), func_1(-var_1.b.e, Struct_1(-32804i, var_1.b.c.b)).b), func_1(-8251i, Struct_1(~(-19370i), vec4<u32>(0u, u_input.d.x, 6036u, global1.x))).b.b, var_1.b.c, -44097i), ~(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.d.x, var_1.a, 1u, var_1.b.b.b.x), ~vec4<u32>(global1.x, 1u, global3.b.c.b.x, var_1.b.c.b.x)) >> (~_wgslsmith_add_vec4_u32(vec4<u32>(global1.x, 43997u, 28322u, global3.b.d.b.x), var_1.b.d.b) % vec4<u32>(32u))));
    global1 = ~vec4<u32>(~4294967295u & firstLeadingBit(var_1.a), select(6834u, var_3.b.x, true), ~1u << (var_1.a % 32u), _wgslsmith_sub_u32(4294967295u, ~1u)) & ~(~(var_1.b.d.b & (var_3.a.c.b >> (vec4<u32>(27184u, 92738u, 0u, global1.x) % vec4<u32>(32u)))));
    var var_4 = ~(~min(global3.b.b.b.zwx & var_3.b.wyy, max(global1.wwz, ~var_1.b.c.b.www)));
    var var_5 = _wgslsmith_f_op_f32(max(700f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_0.x - -626f))))))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.e, -745f, _wgslsmith_mult_i32(global3.b.a, 1i), countOneBits(var_1.a ^ 58350u), var_3.a.c.b);
}

