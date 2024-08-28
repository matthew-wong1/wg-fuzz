struct Struct_1 {
    a: bool,
    b: vec4<i32>,
    c: vec4<bool>,
    d: f32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec3<i32>,
    c: u32,
    d: vec3<bool>,
}

struct Struct_3 {
    a: bool,
    b: i32,
    c: vec3<i32>,
}

struct Struct_4 {
    a: f32,
    b: Struct_3,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(1u, 11772u);

var<private> global1: i32 = -32085i;

var<private> global2: array<vec3<u32>, 11>;

var<private> global3: array<vec4<u32>, 16>;

var<private> global4: array<u32, 30> = array<u32, 30>(82456u, 1u, 1u, 146098u, 0u, 82447u, 1u, 41344u, 23306u, 4294967295u, 0u, 0u, 4294967295u, 4294967295u, 1u, 10187u, 28018u, 4294967295u, 48825u, 0u, 1u, 9790u, 55177u, 28043u, 7166u, 1u, 0u, 0u, 9093u, 5523u);

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_2(arg_0: bool) -> Struct_4 {
    let var_0 = select(arg_0, arg_0, !select(true, select(arg_0, false, arg_0), arg_0)) & true;
    global2 = array<vec3<u32>, 11>();
    var var_1 = u_input.b.yy;
    var_1 = reverseBits(_wgslsmith_sub_vec2_i32(vec2<i32>(firstLeadingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 2147483647i), vec2<i32>(var_1.x, u_input.d))), ~(u_input.d >> (global0.x % 32u))), _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.d, 1i), max(~u_input.b.zz, u_input.b.yy))));
    let var_2 = _wgslsmith_add_u32(_wgslsmith_sub_u32(firstLeadingBit(_wgslsmith_mod_u32(_wgslsmith_mult_u32(17493u, 39449u), ~global4[_wgslsmith_index_u32(0u, 30u)])), ~countOneBits(reverseBits(32473u))), _wgslsmith_div_u32(2171u, ~_wgslsmith_mult_u32(firstTrailingBit(4294967295u), ~27582u)));
    return Struct_4(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(437f - -1724f) - _wgslsmith_f_op_f32(f32(-1f) * -156f)) * _wgslsmith_f_op_f32(f32(-1f) * -337f)), -459f)), Struct_3(!(_wgslsmith_f_op_f32(sign(1000f)) < _wgslsmith_f_op_f32(415f - 1446f)), -3017i, (vec3<i32>(var_1.x, -1i, var_1.x) | (u_input.b | u_input.b)) & ~firstTrailingBit(vec3<i32>(var_1.x, u_input.b.x, var_1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(716f - _wgslsmith_f_op_f32(step(-1112f, -1034f)))))));
}

fn func_1(arg_0: vec2<bool>, arg_1: i32) -> bool {
    global1 = u_input.b.x;
    let var_0 = func_2(arg_0.x);
    global4 = array<u32, 30>();
    global4 = array<u32, 30>();
    global0 = ~u_input.c;
    return (var_0.a == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-172f, -1510f) + _wgslsmith_f_op_f32(max(-547f, var_0.a))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-685f, 860f, false))))) || true;
}

fn func_3(arg_0: u32, arg_1: vec3<u32>, arg_2: u32, arg_3: vec2<i32>) -> bool {
    let var_0 = Struct_4(1f, Struct_3(true, firstLeadingBit(-_wgslsmith_clamp_i32(-17848i, u_input.b.x, -50078i)), vec3<i32>(arg_3.x, ~(u_input.a | arg_3.x), 2147483647i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(233f * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -112f)))) * 917f));
    var var_1 = _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1867f, -1207f, var_0.b.a))))))));
    var_1 = 158f;
    let var_2 = var_0.b;
    global3 = array<vec4<u32>, 16>();
    return true;
}

fn func_4(arg_0: bool, arg_1: bool, arg_2: vec4<bool>) -> Struct_3 {
    global0 = u_input.c;
    global0 = ~reverseBits(~vec2<u32>(83157u, ~global4[_wgslsmith_index_u32(global0.x, 30u)]));
    let var_0 = 2357f;
    var var_1 = Struct_1(arg_0, vec4<i32>(17134i, u_input.d, 7945i, 10630i), vec4<bool>(!(!(!arg_0)), (~u_input.b.x != _wgslsmith_dot_vec3_i32(u_input.b, vec3<i32>(u_input.d, u_input.b.x, u_input.a))) && (true & !arg_0), arg_0 && true, true), var_0);
    global2 = array<vec3<u32>, 11>();
    return func_2(false).b;
}

fn func_5(arg_0: Struct_3, arg_1: bool) -> Struct_4 {
    var var_0 = Struct_4(594f, Struct_3(true, ~_wgslsmith_dot_vec2_i32(-vec2<i32>(arg_0.b, 39805i), min(vec2<i32>(1i, 0i), vec2<i32>(u_input.b.x, 44218i))), reverseBits(select(arg_0.c, _wgslsmith_add_vec3_i32(arg_0.c, vec3<i32>(40163i, arg_0.c.x, u_input.d)), vec3<bool>(arg_0.a, false, arg_1)))), -604f);
    var var_1 = Struct_4(var_0.c, arg_0, _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_0.a, 1000f)) * _wgslsmith_f_op_f32(max(-1000f, var_0.c))) - 1024f)));
    var var_2 = ~arg_0.c.x;
    var var_3 = !vec3<bool>(1320f < var_1.a, arg_1, true);
    global3 = array<vec4<u32>, 16>();
    return func_2(var_0.b.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(func_4(!any(vec3<bool>(true, true, true)), !(_wgslsmith_mult_u32(67176u, u_input.c.x) > 3913u), vec4<bool>(func_1(vec2<bool>(true, false), 1i) || false, select(true, true, false), true == func_3(global0.x, vec3<u32>(9690u, global0.x, global0.x), global0.x, u_input.b.yy), all(vec2<bool>(false, false)))), false);
    global4 = array<u32, 30>();
    var var_1 = Struct_4(-1860f, Struct_3(!var_0.b.a, _wgslsmith_div_i32(_wgslsmith_clamp_i32(1i, ~0i, 0i & var_0.b.c.x), ~(-62668i)), u_input.b), -771f);
    let var_2 = Struct_2(~(~u_input.c), var_1.b.c, min(1u, abs(_wgslsmith_mod_u32(firstTrailingBit(u_input.c.x), 0u))), !(!select(vec3<bool>(var_1.b.a, var_1.b.a, false), vec3<bool>(var_1.b.a, var_1.b.a, false), var_0.b.a)));
    var var_3 = abs(~(~countOneBits(1u) >> (0u % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec2_u32(u_input.c, var_2.a), u_input.c.x);
}

