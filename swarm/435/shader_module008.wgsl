struct Struct_1 {
    a: f32,
    b: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
    d: vec3<bool>,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: i32,
}

struct Struct_4 {
    a: vec4<u32>,
    b: vec3<u32>,
    c: Struct_1,
    d: Struct_1,
    e: bool,
}

struct Struct_5 {
    a: u32,
    b: i32,
    c: Struct_4,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec4<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<Struct_2, 20>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_3) -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1649f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.b.b.b.x)))) - arg_0.x);
    global1 = array<Struct_2, 20>();
    let var_1 = arg_1;
    var var_2 = Struct_5(_wgslsmith_mod_u32(u_input.a.x, u_input.a.x), 1i, Struct_4(reverseBits(~vec4<u32>(0u, u_input.a.x, 43374u, u_input.a.x)), _wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(abs(u_input.a), u_input.a), vec3<u32>(u_input.a.x, ~u_input.a.x, _wgslsmith_mod_u32(u_input.a.x, u_input.a.x))), arg_1.b.b, Struct_1(_wgslsmith_f_op_f32(-var_1.b.b.a), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -170f), _wgslsmith_f_op_f32(abs(-473f)))), (~u_input.a.x | min(u_input.a.x, u_input.a.x)) >= ~(~u_input.a.x)), arg_1.b);
    var_2 = Struct_5(4294967295u, _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, 28153i, 5241i), vec3<i32>(_wgslsmith_mult_i32(-20727i, u_input.c), min(-2147483647i, var_2.d.c), 31906i)), u_input.c), Struct_4(var_2.c.a, ~min(~vec3<u32>(u_input.a.x, u_input.a.x, 180u), ~vec3<u32>(var_2.a, 39901u, var_2.c.b.x)), arg_1.b.b, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -547f)), arg_1.b.b.b), all(!(!vec2<bool>(arg_1.a, var_2.d.d.x)))), Struct_2(Struct_1(1f, vec2<f32>(arg_1.b.b.b.x, 339f)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-426f * arg_1.b.a.a)), vec2<f32>(_wgslsmith_f_op_f32(select(-1016f, var_2.d.a.a, var_2.d.d.x)), arg_1.b.a.b.x)), var_2.d.c, var_1.b.d));
    return vec3<bool>(true, var_2.d.d.x, false);
}

fn func_2(arg_0: vec4<u32>) -> Struct_3 {
    global0 = reverseBits(arg_0.x);
    var var_0 = arg_0.yw;
    var var_1 = Struct_4(arg_0, vec3<u32>(~arg_0.x, 0u, 70720u), Struct_1(_wgslsmith_f_op_f32(step(1f, -1000f)), vec2<f32>(-1269f, _wgslsmith_f_op_f32(-320f * _wgslsmith_f_op_f32(select(966f, -1740f, true))))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(2243f, 147f), _wgslsmith_f_op_f32(827f - 1344f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-1873f, -1239f), vec2<f32>(-1123f, -1200f)) * vec2<f32>(-669f, 2374f)))), all(vec4<bool>(true, true, true, true)));
    let var_2 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(-182f, _wgslsmith_f_op_f32(trunc(var_1.c.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(470f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.d.a * var_1.c.b.x) + _wgslsmith_f_op_f32(-1346f - -389f)), _wgslsmith_f_op_f32(var_1.d.b.x - var_1.c.a)))));
    global1 = array<Struct_2, 20>();
    return Struct_3(203f >= _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_2.x - 1022f), var_1.d.a)))), Struct_2(var_1.c, var_1.c, _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.b, 0i), vec2<i32>(u_input.b, 1i) & vec2<i32>(6464i, 0i)), u_input.c), !func_3(var_2.xy, Struct_3(var_1.e, global1[_wgslsmith_index_u32(14553u, 20u)], -52621i))), u_input.c);
}

fn func_1(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: i32) -> Struct_1 {
    var var_0 = func_2(~vec4<u32>(abs(~33303u), u_input.a.x, ~u_input.a.x, ~u_input.a.x));
    var var_1 = Struct_5(u_input.a.x, select(max(var_0.b.c, -u_input.b & -14690i), 22460i, func_2(_wgslsmith_mult_vec4_u32(abs(vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, 1u)), ~vec4<u32>(42919u, 5282u, u_input.a.x, u_input.a.x))).a), Struct_4(~firstLeadingBit(firstTrailingBit(vec4<u32>(u_input.a.x, 1u, 4294967295u, u_input.a.x))), abs(min(u_input.a, ~u_input.a)), var_0.b.b, var_0.b.b, var_0.a), var_0.b);
    var var_2 = _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(307f, _wgslsmith_f_op_f32(max(-1443f, arg_0.a.b.x)))));
    let var_3 = select(u_input.a, u_input.a, var_1.d.d);
    var var_4 = var_1.d.d.x;
    return func_2(~(~vec4<u32>(_wgslsmith_div_u32(u_input.a.x, var_1.a), 1u, ~var_3.x, var_3.x))).b.b;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_4, arg_2: vec2<u32>) -> f32 {
    let var_0 = arg_1;
    let var_1 = select(~min(-vec4<i32>(u_input.c, u_input.b, u_input.b, u_input.c), vec4<i32>(_wgslsmith_mult_i32(2147483647i, u_input.b), u_input.b ^ -20212i, -u_input.b, _wgslsmith_mult_i32(8598i, -16631i))), _wgslsmith_add_vec4_i32(firstTrailingBit(_wgslsmith_clamp_vec4_i32(-vec4<i32>(-2147483647i, 33963i, -12392i, u_input.b), vec4<i32>(-2147483647i, 0i, u_input.b, u_input.c) << (var_0.a % vec4<u32>(32u)), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.c), vec4<i32>(u_input.b, u_input.c, u_input.c, 1i), vec4<i32>(-1496i, -4693i, u_input.b, u_input.c)))), -(vec4<i32>(-2147483647i, -2147483647i, -1i, u_input.c) >> (arg_1.a % vec4<u32>(32u)))), var_0.e);
    let var_2 = ~countOneBits(_wgslsmith_add_vec4_u32(arg_1.a, arg_1.a));
    global1 = array<Struct_2, 20>();
    global0 = 40684u;
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.d.b.x) + _wgslsmith_f_op_f32(f32(-1f) * -1153f))) - _wgslsmith_f_op_f32(max(-1248f, arg_1.c.b.x))), 628f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -(~1i);
    var var_1 = vec2<f32>(527f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(func_1(global1[_wgslsmith_index_u32(3169u, 20u)], _wgslsmith_f_op_vec2_f32(vec2<f32>(716f, 1148f) * vec2<f32>(1293f, -183f)), u_input.c), Struct_4(_wgslsmith_clamp_vec4_u32(vec4<u32>(86026u, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(1u, u_input.a.x, 1u, 36714u), vec4<u32>(u_input.a.x, u_input.a.x, 20036u, 1u)), u_input.a ^ vec3<u32>(4294967295u, 1u, u_input.a.x), func_2(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 25163u)).b.b, func_2(vec4<u32>(u_input.a.x, 0u, u_input.a.x, 4294967295u)).b.a, 0u != u_input.a.x), reverseBits(vec2<u32>(u_input.a.x, 4011u))))));
    let var_2 = 1u;
    let var_3 = u_input.b;
    let var_4 = -vec2<i32>(_wgslsmith_clamp_i32(~u_input.b, var_3 ^ 1513i, -34502i), -5188i);
    var var_5 = ~_wgslsmith_div_u32(var_2, 11289u);
    let var_6 = func_2(_wgslsmith_clamp_vec4_u32(vec4<u32>(select(reverseBits(var_2), var_2, true), ~_wgslsmith_clamp_u32(var_2, var_2, 1u), _wgslsmith_add_u32(~0u, _wgslsmith_mult_u32(u_input.a.x, 0u)), 0u), ~(~vec4<u32>(var_2, u_input.a.x, u_input.a.x, 1u)), vec4<u32>(var_2, u_input.a.x, var_2, countOneBits(~u_input.a.x)))).b;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(~0u, _wgslsmith_dot_vec4_u32(vec4<u32>(~4294967295u, var_2, ~4294967295u, _wgslsmith_add_u32(0u, u_input.a.x)), min(~vec4<u32>(var_2, var_2, var_2, u_input.a.x), firstLeadingBit(vec4<u32>(u_input.a.x, 13582u, var_2, 25667u)))), firstTrailingBit((u_input.a.x & 1u) | u_input.a.x)), _wgslsmith_clamp_vec3_i32(vec3<i32>(max(-2147483647i, u_input.b), -var_4.x, var_4.x | (-36860i ^ u_input.c)), abs(vec3<i32>(~(-37189i), -14952i, var_4.x)), _wgslsmith_mult_vec3_i32(vec3<i32>(var_3, u_input.b, ~var_3), vec3<i32>(-var_3, u_input.c >> (u_input.a.x % 32u), -1i))), vec4<u32>(~var_2, _wgslsmith_dot_vec3_u32(vec3<u32>(min(1u, u_input.a.x), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 1u, u_input.a.x), vec3<u32>(var_2, 4294967295u, u_input.a.x)), 0u), (vec3<u32>(var_2, 4294967295u, 37352u) & u_input.a) >> (~u_input.a % vec3<u32>(32u))), 33126u, var_2), _wgslsmith_f_op_f32(max(var_6.b.b.x, 542f)));
}

