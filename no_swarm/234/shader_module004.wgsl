struct Struct_1 {
    a: vec3<bool>,
    b: bool,
    c: i32,
    d: vec4<bool>,
}

struct Struct_2 {
    a: u32,
    b: vec3<bool>,
    c: vec2<i32>,
    d: u32,
    e: vec2<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
    d: Struct_1,
    e: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: Struct_1,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec3<i32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 28>;

var<private> global1: array<vec4<bool>, 4> = array<vec4<bool>, 4>(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false));

var<private> global2: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(vec3<bool>(true, true, false), true, -1i, vec4<bool>(false, false, false, false)), Struct_1(vec3<bool>(false, true, true), true, 15689i, vec4<bool>(false, true, false, false)), Struct_1(vec3<bool>(false, false, false), false, i32(-2147483648), vec4<bool>(false, true, false, true)), Struct_1(vec3<bool>(false, true, false), false, 1i, vec4<bool>(true, false, true, false)), Struct_1(vec3<bool>(true, false, false), true, i32(-2147483648), vec4<bool>(false, false, true, true)), Struct_1(vec3<bool>(true, true, false), false, 6274i, vec4<bool>(false, true, false, true)), Struct_1(vec3<bool>(true, true, true), false, 2147483647i, vec4<bool>(true, false, false, true)), Struct_1(vec3<bool>(true, true, false), false, -4785i, vec4<bool>(true, true, false, false)), Struct_1(vec3<bool>(false, false, false), true, -1i, vec4<bool>(false, false, true, true)), Struct_1(vec3<bool>(false, false, true), true, -52073i, vec4<bool>(true, false, true, true)), Struct_1(vec3<bool>(false, false, false), true, 24926i, vec4<bool>(false, true, true, true)), Struct_1(vec3<bool>(false, false, false), false, -7714i, vec4<bool>(true, false, false, true)), Struct_1(vec3<bool>(false, false, true), false, 1i, vec4<bool>(true, false, true, false)), Struct_1(vec3<bool>(false, true, true), true, 2147483647i, vec4<bool>(false, false, true, false)), Struct_1(vec3<bool>(false, false, false), true, -1i, vec4<bool>(true, true, false, false)), Struct_1(vec3<bool>(false, true, false), true, 0i, vec4<bool>(true, true, true, true)), Struct_1(vec3<bool>(true, false, false), true, 1i, vec4<bool>(true, false, false, true)), Struct_1(vec3<bool>(true, false, false), true, 0i, vec4<bool>(true, true, false, false)), Struct_1(vec3<bool>(false, true, true), false, i32(-2147483648), vec4<bool>(true, false, false, true)), Struct_1(vec3<bool>(true, false, true), true, 1i, vec4<bool>(false, true, false, false)), Struct_1(vec3<bool>(false, false, false), false, i32(-2147483648), vec4<bool>(false, true, true, false)), Struct_1(vec3<bool>(false, false, true), false, 25094i, vec4<bool>(true, false, true, true)), Struct_1(vec3<bool>(true, false, false), true, i32(-2147483648), vec4<bool>(false, true, true, true)), Struct_1(vec3<bool>(true, false, true), true, 1i, vec4<bool>(true, false, false, false)), Struct_1(vec3<bool>(true, false, true), false, 1431i, vec4<bool>(true, true, false, true)), Struct_1(vec3<bool>(true, false, true), true, 1i, vec4<bool>(true, true, false, false)), Struct_1(vec3<bool>(true, true, true), false, -611i, vec4<bool>(false, false, true, true)), Struct_1(vec3<bool>(false, true, true), true, 3228i, vec4<bool>(false, false, true, true)), Struct_1(vec3<bool>(true, false, true), true, 0i, vec4<bool>(true, true, false, true)));

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
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

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<i32>, arg_1: u32) -> f32 {
    global0 = array<vec2<bool>, 28>();
    let var_0 = Struct_3(Struct_1(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), false), !(any(vec3<bool>(false, false, false)) & any(vec3<bool>(true, true, true))), u_input.a, global1[_wgslsmith_index_u32(1651u, 4u)]), global2[_wgslsmith_index_u32(1u, 29u)], reverseBits(_wgslsmith_mod_i32(_wgslsmith_mult_i32(u_input.a, arg_0.x), min(u_input.a, -1i)) ^ -2147483647i), global2[_wgslsmith_index_u32(47575u, 29u)], Struct_2(~arg_1, vec3<bool>(false, true, any(vec4<bool>(false, true, true, true))), arg_0.xy >> (vec2<u32>(arg_1, ~u_input.b.x) % vec2<u32>(32u)), _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(u_input.b, u_input.b) ^ u_input.b, _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b.x, 11061u, 49875u), ~u_input.b)), vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1511f * 417f))), _wgslsmith_f_op_f32(-219f + _wgslsmith_f_op_f32(f32(-1f) * -481f)))));
    let var_1 = !select(!(!vec3<bool>(var_0.d.b, false, var_0.d.b)), vec3<bool>(var_0.e.b.x, true, true), select(vec3<bool>(true, arg_1 < var_0.e.a, var_0.b.b), !select(var_0.b.d.wxw, vec3<bool>(false, var_0.d.a.x, var_0.e.b.x), var_0.d.a.x), var_0.e.b.x));
    var var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_0.e.e.x)) * _wgslsmith_div_f32(-392f, var_0.e.e.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(494f + var_0.e.e.x), var_0.e.e.x)), _wgslsmith_f_op_f32(-var_0.e.e.x), _wgslsmith_f_op_f32(-var_0.e.e.x)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1102f * 1154f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(469f)) * _wgslsmith_f_op_f32(floor(var_0.e.e.x))), _wgslsmith_f_op_f32(exp2(var_0.e.e.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.e.e.x * 1000f)))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0.e.e.x, var_0.e.e.x, 1674f, var_0.e.e.x)))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0.e.e.x, var_0.e.e.x, -131f, 344f), vec4<f32>(-745f, var_0.e.e.x, var_0.e.e.x, -1116f))), vec4<f32>(-1056f, -426f, var_0.e.e.x, var_0.e.e.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0.e.e.x, var_0.e.e.x, -948f, var_0.e.e.x))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.e.e.x, -1587f, -135f, 2282f) - vec4<f32>(-181f, -169f, var_0.e.e.x, var_0.e.e.x)))))));
    global1 = array<vec4<bool>, 4>();
    return _wgslsmith_div_f32(-225f, _wgslsmith_f_op_f32(382f + _wgslsmith_f_op_f32(min(-1567f, var_2.x))));
}

fn func_2(arg_0: f32) -> vec2<u32> {
    let var_0 = Struct_4(_wgslsmith_f_op_f32(arg_0 * -1000f), global2[_wgslsmith_index_u32(1u, 29u)], u_input.b);
    let var_1 = vec3<bool>(!(!(!var_0.b.b)), true, _wgslsmith_f_op_f32(func_3(vec3<i32>(var_0.b.c, u_input.a, var_0.b.c) >> (~var_0.c % vec3<u32>(32u)), 0u)) > arg_0);
    var var_2 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(~var_0.c.x, 4294967295u | var_0.c.x), firstLeadingBit(~34592u), 1u, _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(u_input.b, var_0.c, vec3<u32>(24291u, 0u, 4294967295u)), vec3<u32>(1u, u_input.b.x, 120748u) ^ var_0.c)), vec4<u32>(var_0.c.x, var_0.c.x | u_input.b.x, ~u_input.b.x, reverseBits(~4294967295u))), select(vec4<u32>(35222u, 4294967295u, u_input.b.x, ~12860u), select(_wgslsmith_clamp_vec4_u32(vec4<u32>(48930u, 35308u, u_input.b.x, u_input.b.x), ~vec4<u32>(var_0.c.x, 33811u, 0u, u_input.b.x), reverseBits(vec4<u32>(4294967295u, var_0.c.x, u_input.b.x, u_input.b.x))), min(max(vec4<u32>(1u, u_input.b.x, 27961u, 4294967295u), vec4<u32>(var_0.c.x, var_0.c.x, u_input.b.x, u_input.b.x)), vec4<u32>(1u, 8810u, u_input.b.x, var_0.c.x) | vec4<u32>(u_input.b.x, var_0.c.x, u_input.b.x, var_0.c.x)), !select(var_0.b.d, vec4<bool>(var_1.x, false, var_1.x, false), true)), any(global1[_wgslsmith_index_u32(u_input.b.x, 4u)]) | !any(global0[_wgslsmith_index_u32(4294967295u, 28u)]))), 29u)];
    global1 = array<vec4<bool>, 4>();
    var var_3 = 1u;
    return _wgslsmith_mod_vec2_u32(vec2<u32>(1u, 4294967295u), countOneBits(select(var_0.c.xy, abs(vec2<u32>(42835u, var_0.c.x)), var_2.b)) >> (_wgslsmith_div_vec2_u32(u_input.b.xz, ~(~vec2<u32>(0u, u_input.b.x))) % vec2<u32>(32u)));
}

fn func_1(arg_0: i32, arg_1: Struct_4, arg_2: vec4<u32>, arg_3: Struct_4) -> u32 {
    var var_0 = arg_3;
    var_0 = arg_3;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.a)));
    var var_2 = arg_1.b.d.wxz;
    global2 = array<Struct_1, 29>();
    return ~_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.c.x, _wgslsmith_mod_u32(1u, 57723u)), func_2(arg_1.a) << (firstTrailingBit(vec2<u32>(u_input.b.x, var_0.c.x)) % vec2<u32>(32u)));
}

fn func_4(arg_0: bool) -> vec3<i32> {
    global1 = array<vec4<bool>, 4>();
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -439f);
    global0 = array<vec2<bool>, 28>();
    var var_1 = _wgslsmith_mult_i32(_wgslsmith_clamp_i32(2147483647i, -2147483647i, -(~(-u_input.a))), u_input.a);
    global1 = array<vec4<bool>, 4>();
    return _wgslsmith_sub_vec3_i32(select(vec3<i32>(14331i >> (u_input.b.x % 32u), ~u_input.a, -u_input.a) >> (~vec3<u32>(u_input.b.x, u_input.b.x, 4294967295u) % vec3<u32>(32u)), vec3<i32>(abs(u_input.a), max(u_input.a, min(u_input.a, u_input.a)), _wgslsmith_mult_i32(u_input.a | u_input.a, _wgslsmith_add_i32(u_input.a, -20072i))), true), _wgslsmith_div_vec3_i32((select(vec3<i32>(32256i, 48224i, u_input.a), vec3<i32>(u_input.a, u_input.a, u_input.a), true) ^ vec3<i32>(-1i, u_input.a, u_input.a)) ^ ~_wgslsmith_mult_vec3_i32(vec3<i32>(16406i, u_input.a, u_input.a), vec3<i32>(u_input.a, -8296i, 1i)), vec3<i32>(-1i) * -reverseBits(vec3<i32>(u_input.a, u_input.a, -2147483647i))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(0i, -888f, reverseBits(func_4(any(global0[_wgslsmith_index_u32(func_1(u_input.a, Struct_4(-274f, Struct_1(vec3<bool>(true, true, false), true, -4448i, vec4<bool>(false, false, false, true)), vec3<u32>(6853u, 57723u, 81016u)), vec4<u32>(u_input.b.x, 35830u, 1u, 28360u), Struct_4(-1108f, global2[_wgslsmith_index_u32(8546u, 29u)], u_input.b)), 28u)]))), vec4<i32>(~(~(-1i)), 2147483647i, u_input.a, ~(~(-1i))));
}

