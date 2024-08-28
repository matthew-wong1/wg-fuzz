struct Struct_1 {
    a: u32,
    b: i32,
    c: vec2<bool>,
    d: f32,
    e: vec2<bool>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: vec4<bool>,
    e: vec4<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
}

struct Struct_4 {
    a: vec4<f32>,
    b: u32,
    c: bool,
}

struct Struct_5 {
    a: bool,
    b: u32,
    c: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: u32,
    d: vec4<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: vec2<f32>;

var<private> global2: array<vec4<u32>, 29> = array<vec4<u32>, 29>(vec4<u32>(31505u, 0u, 37905u, 71731u), vec4<u32>(73570u, 56083u, 4294967295u, 87897u), vec4<u32>(1u, 0u, 12727u, 15012u), vec4<u32>(43015u, 0u, 0u, 24552u), vec4<u32>(4294967295u, 4294967295u, 53097u, 0u), vec4<u32>(7410u, 22058u, 4294967295u, 89816u), vec4<u32>(1u, 0u, 2295u, 1u), vec4<u32>(4294967295u, 1u, 4294967295u, 33517u), vec4<u32>(1u, 4294967295u, 20700u, 0u), vec4<u32>(1u, 4294967295u, 6580u, 4294967295u), vec4<u32>(1u, 38345u, 0u, 30274u), vec4<u32>(21801u, 1u, 404u, 72630u), vec4<u32>(31373u, 1u, 0u, 34822u), vec4<u32>(4294967295u, 47435u, 5030u, 53914u), vec4<u32>(0u, 1u, 16675u, 0u), vec4<u32>(55753u, 64769u, 1u, 0u), vec4<u32>(0u, 28544u, 4294967295u, 1u), vec4<u32>(4294967295u, 0u, 4294967295u, 4294967295u), vec4<u32>(1u, 0u, 1u, 8019u), vec4<u32>(1u, 1u, 28701u, 64553u), vec4<u32>(0u, 1u, 36621u, 44838u), vec4<u32>(0u, 10111u, 1u, 1u), vec4<u32>(3252u, 1u, 4294967295u, 0u), vec4<u32>(2563u, 0u, 60970u, 1u), vec4<u32>(0u, 0u, 0u, 5015u), vec4<u32>(4294967295u, 0u, 0u, 1u), vec4<u32>(51621u, 34939u, 72329u, 30488u), vec4<u32>(11089u, 39044u, 35686u, 4294967295u), vec4<u32>(0u, 51036u, 34024u, 4294967295u));

var<private> global3: array<Struct_4, 9>;

var<private> global4: Struct_3 = Struct_3(Struct_1(1u, 0i, vec2<bool>(false, true), 505f, vec2<bool>(true, false)), 0u);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: vec3<f32>) -> i32 {
    let var_0 = global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~abs(~abs(u_input.b)), u_input.b), 9u)];
    global2 = array<vec4<u32>, 29>();
    var var_1 = _wgslsmith_clamp_vec2_u32(u_input.d.xw, u_input.b, vec2<u32>(~3464u, u_input.b.x));
    let var_2 = Struct_4(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(global4.a.d, global4.a.d, -503f, global1.x) + _wgslsmith_f_op_vec4_f32(-var_0.a)), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global4.a.d, global4.a.d, 228f, global4.a.d), vec4<f32>(arg_2.x, global1.x, global1.x, -1602f)) - _wgslsmith_f_op_vec4_f32(var_0.a - var_0.a)), vec4<bool>(var_0.c, arg_0.c.x, false, arg_0.c.x || true))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(var_0.a)) * _wgslsmith_f_op_vec4_f32(var_0.a * vec4<f32>(var_0.a.x, var_0.a.x, arg_1.x, arg_2.x))) + vec4<f32>(_wgslsmith_f_op_f32(arg_0.d - 1070f), _wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(floor(1158f)), _wgslsmith_f_op_f32(trunc(542f))))), 38835u, all(!(!select(vec4<bool>(arg_0.c.x, var_0.c, arg_0.c.x, var_0.c), vec4<bool>(false, global4.a.c.x, var_0.c, false), false))));
    let var_3 = 1000f;
    return arg_0.b;
}

fn func_2() -> Struct_5 {
    var var_0 = ~(~((_wgslsmith_mult_u32(global4.a.a, 0u) & 4294967295u) | global4.b));
    let var_1 = Struct_2(_wgslsmith_f_op_f32(-1f), global4.a, Struct_1(firstLeadingBit(0u), global4.a.b, global4.a.c, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global1.x, global4.a.d)) + _wgslsmith_f_op_f32(-global1.x)), _wgslsmith_f_op_f32(max(204f, _wgslsmith_f_op_f32(-global1.x)))), !(!(!global4.a.c))), !(!select(!vec4<bool>(false, global4.a.c.x, true, global4.a.e.x), vec4<bool>(false, false, false, true), select(vec4<bool>(global4.a.c.x, global4.a.e.x, false, global4.a.c.x), vec4<bool>(false, false, global4.a.c.x, true), vec4<bool>(true, true, global4.a.c.x, false)))), ~vec4<u32>(1062u, global4.b, ~1u, global4.a.a));
    global2 = array<vec4<u32>, 29>();
    let var_2 = select((~0i >= firstTrailingBit(min(2147483647i, global4.a.b))) == !(!any(var_1.d.yyz)), max(35478i, 1i) == _wgslsmith_div_i32(global4.a.b, -func_3(Struct_1(14688u, var_1.c.b, vec2<bool>(false, var_1.d.x), 1220f, vec2<bool>(var_1.b.e.x, true)), vec3<f32>(global4.a.d, var_1.c.d, 271f), vec3<f32>(var_1.c.d, global1.x, global4.a.d))), var_1.d.x);
    let var_3 = Struct_3(global4.a, abs(~var_1.b.a));
    return Struct_5(var_2, ~min(_wgslsmith_dot_vec2_u32(var_1.e.zz ^ vec2<u32>(global4.a.a, var_1.e.x), u_input.d.zw), select(firstTrailingBit(u_input.d.x), 10246u & global4.b, var_3.a.c.x && var_1.b.c.x)), _wgslsmith_f_op_f32(round(1000f)));
}

fn func_4(arg_0: f32, arg_1: Struct_5, arg_2: Struct_1) -> vec2<f32> {
    var var_0 = ~4294967295u;
    let var_1 = !(any(vec3<bool>(global4.a.c.x, global4.b != 1u, true)) | func_2().a);
    global2 = array<vec4<u32>, 29>();
    var var_2 = 15074u;
    global1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, 682f)))))));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.c, -1000f)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-436f, 1065f), vec2<f32>(global1.x, -975f), true))), vec2<f32>(1369f, -488f)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(arg_0, global4.a.d))), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(global4.a.d, global1.x)))))));
}

fn func_1() -> bool {
    var var_0 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global4.a.d, _wgslsmith_f_op_f32(f32(-1f) * -1452f), _wgslsmith_f_op_f32(exp2(global1.x)))) - _wgslsmith_div_vec3_f32(vec3<f32>(-377f, -1464f, _wgslsmith_f_op_f32(max(1996f, 1758f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1307f, 985f, -1217f) + vec3<f32>(global4.a.d, -1096f, -1947f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-722f, global4.a.d, -1299f)))))));
    global1 = _wgslsmith_f_op_vec2_f32(func_4(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(var_0.x)), _wgslsmith_f_op_f32(986f * _wgslsmith_f_op_f32(633f * global1.x)))), func_2(), Struct_1(~1u, _wgslsmith_mod_i32(21927i, reverseBits(-29675i)) & (abs(11856i) & global4.a.b), global4.a.c, _wgslsmith_f_op_f32(max(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)))), vec2<bool>(global4.a.c.x, any(vec4<bool>(false, true, true, global4.a.c.x))))));
    var var_1 = ~34258u;
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -321f), 247f, 512f, _wgslsmith_f_op_f32(global1.x - -1000f)) - vec4<f32>(_wgslsmith_f_op_f32(-282f - _wgslsmith_f_op_f32(ceil(global1.x))), 1662f, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-1413f, 1798f))), var_0.x)));
    var var_3 = !vec2<bool>(global4.a.c.x, !global4.a.e.x);
    return !global4.a.e.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = max(u_input.e, firstLeadingBit(vec4<i32>(-20104i, ~global4.a.b << (~3954u % 32u), firstTrailingBit(42361i), ~reverseBits(global4.a.b))));
    global2 = array<vec4<u32>, 29>();
    global0 = 1i;
    let var_1 = !(!vec3<bool>(global4.a.e.x, global4.a.c.x, false));
    global2 = array<vec4<u32>, 29>();
    global3 = array<Struct_4, 9>();
    global4 = Struct_3(Struct_1(4294967295u, var_0.x, select(var_1.xz, !vec2<bool>(global4.a.e.x, global4.a.c.x), func_1()), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global4.a.d)))), select(select(!global4.a.e, vec2<bool>(false, global4.a.c.x), select(global4.a.c, global4.a.e, vec2<bool>(true, global4.a.e.x))), global4.a.e, !global4.a.e.x)), ~(~global4.b));
    global3 = array<Struct_4, 9>();
    let x = u_input.a;
    s_output = StorageBuffer(~(-70792i), vec2<u32>(u_input.c, u_input.c), ~u_input.d.x);
}

