struct Struct_1 {
    a: vec3<f32>,
    b: vec2<f32>,
    c: vec3<i32>,
    d: f32,
    e: vec3<i32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: i32,
    c: bool,
}

struct Struct_3 {
    a: u32,
    b: vec2<bool>,
}

struct Struct_4 {
    a: i32,
    b: Struct_3,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 27>;

var<private> global1: array<Struct_3, 30>;

var<private> global2: vec3<u32> = vec3<u32>(11411u, 0u, 4294967295u);

var<private> global3: array<Struct_3, 8> = array<Struct_3, 8>(Struct_3(4294967295u, vec2<bool>(false, true)), Struct_3(22478u, vec2<bool>(false, false)), Struct_3(4294967295u, vec2<bool>(false, true)), Struct_3(97653u, vec2<bool>(false, true)), Struct_3(14230u, vec2<bool>(true, true)), Struct_3(20180u, vec2<bool>(true, true)), Struct_3(1u, vec2<bool>(true, false)), Struct_3(47363u, vec2<bool>(true, true)));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_4, arg_2: vec4<u32>) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_1.c.d, arg_1.c.a.x))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(-953f, -966f, arg_1.b.b.x)), _wgslsmith_f_op_f32(arg_1.c.b.x - -208f))) * 757f)));
    global1 = array<Struct_3, 30>();
    global0 = array<vec3<u32>, 27>();
    global0 = array<vec3<u32>, 27>();
    let var_1 = _wgslsmith_add_vec4_u32(u_input.a, vec4<u32>(0u, _wgslsmith_mod_u32(global2.x, ~(~34366u)), ~arg_1.b.a, 17233u ^ ~firstTrailingBit(4294967295u)));
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.a.x, -977f));
}

fn func_2(arg_0: Struct_4, arg_1: f32, arg_2: Struct_1) -> i32 {
    let var_0 = Struct_2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(min(arg_1, -586f)), _wgslsmith_f_op_f32(func_3(Struct_2(vec4<f32>(arg_0.c.b.x, arg_1, 654f, arg_1), arg_0.a, false), arg_0, vec4<u32>(global2.x, 67520u, u_input.d, u_input.a.x))), _wgslsmith_f_op_f32(571f * -1036f), -738f), vec4<f32>(arg_1, arg_2.a.x, arg_0.c.b.x, _wgslsmith_f_op_f32(abs(689f))), arg_0.b.b.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.d, arg_1, 990f, -1725f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-277f, arg_0.c.a.x, arg_1, -162f))))), arg_2.e.x, !arg_0.b.b.x);
    global3 = array<Struct_3, 8>();
    let var_1 = true;
    var var_2 = ~arg_0.c.e;
    var var_3 = var_0.a;
    return _wgslsmith_mult_i32(_wgslsmith_clamp_i32(-5373i, ~arg_2.c.x, 38234i << (global2.x % 32u)), 20533i);
}

fn func_4(arg_0: u32, arg_1: vec4<i32>, arg_2: Struct_1) -> Struct_1 {
    let var_0 = global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.a.x, _wgslsmith_div_u32(_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(u_input.a.xxy, u_input.a.wxy), max(arg_0, global2.x), ~global2.x) << (4294967295u % 32u), firstLeadingBit(_wgslsmith_clamp_u32(min(0u, 50359u), 72u, ~arg_0)))), 8u)];
    global0 = array<vec3<u32>, 27>();
    let var_1 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_2.a.x - -216f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-486f, -1597f) * _wgslsmith_f_op_f32(336f * -1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_2.d, arg_2.b.x)) + _wgslsmith_f_op_f32(round(arg_2.d)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(arg_2.a, _wgslsmith_f_op_vec3_f32(-arg_2.a)) + _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(871f, arg_2.a.x, 665f)), vec3<f32>(arg_2.a.x, arg_2.d, 298f)))), vec3<bool>(select(false, all(vec3<bool>(var_0.b.x, var_0.b.x, false)), true), true, var_0.b.x)))));
    let var_2 = ~u_input.a.xw;
    let var_3 = Struct_1(vec3<f32>(arg_2.d, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.x, var_1.x)), arg_2.d), _wgslsmith_f_op_vec2_f32(-arg_2.a.xx), arg_1.yww, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(709f - _wgslsmith_div_f32(arg_2.a.x, var_1.x)), arg_2.b.x)) - arg_2.b.x), max(max(vec3<i32>(u_input.e.x, arg_1.x, ~(-2147483647i)), abs(vec3<i32>(u_input.e.x, arg_1.x, arg_1.x))), -arg_1.xwz));
    return arg_2;
}

fn func_1(arg_0: vec3<bool>, arg_1: vec2<bool>, arg_2: Struct_3) -> vec3<u32> {
    let var_0 = Struct_3(_wgslsmith_sub_u32(~global2.x, ~((global2.x >> (arg_2.a % 32u)) >> (~arg_2.a % 32u))), vec2<bool>(all(select(vec2<bool>(arg_2.b.x, arg_0.x), vec2<bool>(arg_1.x, true), arg_2.b.x)), !(!(true != arg_1.x))));
    var var_1 = func_4(min(arg_2.a, _wgslsmith_div_u32(u_input.d, 0u) | global2.x), vec4<i32>(reverseBits(u_input.b), _wgslsmith_sub_i32(select(~(-16511i), _wgslsmith_dot_vec2_i32(u_input.e, u_input.e), all(vec4<bool>(arg_1.x, true, true, false))), -3041i), 1i >> (_wgslsmith_mod_u32(1u, ~u_input.d) % 32u), _wgslsmith_add_i32(func_2(Struct_4(26340i, Struct_3(41532u, vec2<bool>(true, false)), Struct_1(vec3<f32>(-826f, -663f, -1028f), vec2<f32>(1378f, -213f), vec3<i32>(u_input.c, 1i, 12440i), 208f, vec3<i32>(-1i, u_input.c, -2147483647i))), 174f, Struct_1(vec3<f32>(1318f, 1786f, -610f), vec2<f32>(-1000f, 884f), vec3<i32>(u_input.b, u_input.c, -1i), 1393f, vec3<i32>(-18763i, u_input.e.x, u_input.b))) >> (~u_input.a.x % 32u), ~(-u_input.e.x))), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-709f, 435f, -532f))) - vec3<f32>(1f, 1f, 1f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(955f, 1857f)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1214f, 1000f))), false)) - vec2<f32>(_wgslsmith_f_op_f32(select(1000f, 1265f, false)), _wgslsmith_f_op_f32(-204f + 420f))), max(~(~vec3<i32>(u_input.e.x, u_input.e.x, u_input.b)), vec3<i32>(reverseBits(-2147483647i), -5839i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, 22152i, 0i, -2147483647i), vec4<i32>(u_input.b, u_input.b, -61035i, u_input.e.x)))), _wgslsmith_f_op_f32(-468f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1831f + -858f))), _wgslsmith_mod_vec3_i32(-max(vec3<i32>(u_input.e.x, 2147483647i, u_input.b), vec3<i32>(1i, u_input.e.x, u_input.e.x)), _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.c, -61460i, -1i), vec3<i32>(-8740i, u_input.b, 75424i), vec3<i32>(71925i, u_input.c, u_input.c)) & ~vec3<i32>(u_input.e.x, u_input.c, -3440i))));
    var var_2 = firstTrailingBit(vec3<u32>(_wgslsmith_div_u32(17415u, 891u), global2.x, _wgslsmith_clamp_u32(u_input.a.x, 31425u, select(10625u ^ global2.x, arg_2.a, true))));
    global2 = ~(~(u_input.a.xyy & _wgslsmith_mod_vec3_u32(vec3<u32>(1u, arg_2.a, 25853u) | u_input.a.wyx, u_input.a.zxx)));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1053f, var_1.a.x))));
    return vec3<u32>(0u, max(52957u, 18096u), arg_2.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1000f - -1682f))) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -255f)))), -125f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -645f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(2398f, -839f)) * _wgslsmith_f_op_f32(872f - 1580f)))), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(865f + -1358f) - _wgslsmith_f_op_f32(max(-448f, -2027f))), _wgslsmith_f_op_f32(-1f)))), ~(abs(vec3<i32>(41364i, 1i, -26066i)) >> (vec3<u32>(4294967295u, u_input.d, 1u) % vec3<u32>(32u))) >> (~func_1(vec3<bool>(false, true, false), vec2<bool>(true, true), global3[_wgslsmith_index_u32(select(global2.x, 1u, false), 8u)]) % vec3<u32>(32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1122f) + func_4(abs(1u), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.c, 0i, 23751i, 0i), vec4<i32>(u_input.b, 1i, 2502i, u_input.c)), Struct_1(vec3<f32>(-734f, 569f, 720f), vec2<f32>(-1196f, -1636f), vec3<i32>(-13809i, u_input.c, u_input.e.x), -1000f, vec3<i32>(u_input.b, u_input.e.x, -41498i))).b.x) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(-704f + _wgslsmith_f_op_f32(sign(487f))))), vec3<i32>(9914i, -27032i, -1i) | vec3<i32>(-24273i | u_input.c, -1i, firstLeadingBit(u_input.e.x ^ -58257i)));
    var var_1 = _wgslsmith_mod_u32((4294967295u << (_wgslsmith_add_u32(countOneBits(global2.x), _wgslsmith_mult_u32(0u, 4294967295u)) % 32u)) << (global2.x % 32u), ~(~4294967295u));
    global1 = array<Struct_3, 30>();
    let var_2 = u_input.a;
    let var_3 = !(!(_wgslsmith_f_op_f32(var_0.a.x * _wgslsmith_f_op_f32(182f + -1405f)) < -946f));
    global3 = array<Struct_3, 8>();
    let x = u_input.a;
    s_output = StorageBuffer(1i, ~vec3<u32>(_wgslsmith_mult_u32(u_input.a.x, 43646u), _wgslsmith_div_u32(global2.x, 57714u), abs(var_2.x)) | ~func_1(!vec3<bool>(true, true, var_3), vec2<bool>(true, true), Struct_3(global2.x, vec2<bool>(false, var_3))), -_wgslsmith_mult_i32(u_input.e.x, _wgslsmith_dot_vec3_i32(var_0.e, var_0.c)) & -u_input.b);
}

