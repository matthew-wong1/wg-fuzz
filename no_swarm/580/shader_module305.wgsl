struct Struct_1 {
    a: u32,
    b: vec2<f32>,
    c: f32,
    d: vec3<i32>,
    e: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 19> = array<vec4<u32>, 19>(vec4<u32>(90787u, 33793u, 78381u, 4294967295u), vec4<u32>(1u, 4294967295u, 12394u, 0u), vec4<u32>(42432u, 49906u, 0u, 4294967295u), vec4<u32>(4294967295u, 37810u, 4294967295u, 4294967295u), vec4<u32>(28702u, 1u, 0u, 1u), vec4<u32>(4294967295u, 9632u, 1u, 23602u), vec4<u32>(1u, 78581u, 4294967295u, 4294967295u), vec4<u32>(2276u, 50134u, 10721u, 58939u), vec4<u32>(36989u, 13993u, 4294967295u, 62786u), vec4<u32>(0u, 32407u, 24595u, 93526u), vec4<u32>(48756u, 12255u, 21230u, 73091u), vec4<u32>(19422u, 0u, 30155u, 1u), vec4<u32>(43963u, 21826u, 4294967295u, 79012u), vec4<u32>(34002u, 4294967295u, 21374u, 13020u), vec4<u32>(45643u, 4294967295u, 33716u, 0u), vec4<u32>(1u, 4726u, 49799u, 5606u), vec4<u32>(1u, 81579u, 27194u, 51362u), vec4<u32>(1555u, 25801u, 19959u, 1u), vec4<u32>(33364u, 8806u, 53806u, 0u));

var<private> global1: vec4<i32> = vec4<i32>(14186i, 0i, 53316i, -14837i);

var<private> global2: f32;

var<private> global3: Struct_1;

var<private> global4: array<vec4<bool>, 1> = array<vec4<bool>, 1>(vec4<bool>(false, true, true, false));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32, arg_1: Struct_1) -> vec3<bool> {
    global1 = vec4<i32>(u_input.b, _wgslsmith_dot_vec2_i32(-(vec2<i32>(-20422i, 903i) ^ (arg_1.d.zz >> (u_input.a.wx % vec2<u32>(32u)))), vec2<i32>(48033i, min(-17877i, global3.d.x))), i32(-1i) * -34444i, ~(-2147483647i));
    var var_0 = _wgslsmith_add_vec2_u32(u_input.a.yz, ~u_input.a.xy);
    let var_1 = Struct_1(_wgslsmith_add_u32(u_input.a.x, ~17559u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.e, _wgslsmith_div_f32(arg_1.e, 178f)) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(global3.b * vec2<f32>(global3.b.x, 1621f)), vec2<f32>(360f, 216f), vec2<bool>(true, true))))), global3.b.x, _wgslsmith_div_vec3_i32(abs(global1.wzw), -vec3<i32>(2147483647i, -2147483647i, -47183i)) & global1.zww, 119f);
    let var_2 = arg_1.e;
    let var_3 = ~abs(u_input.a);
    return vec3<bool>(any(vec3<bool>(true, true, true)), true, (((i32(-1i) * -2235i) << (firstLeadingBit(global3.a) % 32u)) << (72818u % 32u)) >= _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(max(vec4<i32>(2147483647i, u_input.b, arg_0, arg_0), vec4<i32>(arg_1.d.x, 1i, -1i, -5049i)), vec4<i32>(global3.d.x, global1.x, arg_0, 0i)), vec4<i32>(-1i) * -vec4<i32>(-47641i, u_input.b, global1.x, -2147483647i)));
}

fn func_2(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: f32) -> Struct_1 {
    var var_0 = arg_0;
    global4 = array<vec4<bool>, 1>();
    let var_1 = vec4<bool>(all(func_3(global1.x, arg_0)), all(!(!select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), false))), !(_wgslsmith_div_f32(308f, _wgslsmith_f_op_f32(-var_0.e)) <= arg_2), 80117u != u_input.a.x);
    let var_2 = arg_0;
    var_0 = Struct_1(17227u, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(trunc(arg_0.b)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(var_2.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -120f) + _wgslsmith_div_f32(-1567f, 869f)))) - _wgslsmith_f_op_f32(-var_0.b.x)), -(~abs(vec3<i32>(-15988i, u_input.b, 0i))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_2.e, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(556f - arg_0.b.x))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(252f, -239f)))))));
    return arg_0;
}

fn func_4(arg_0: i32, arg_1: Struct_1) -> i32 {
    var var_0 = arg_1.b;
    return u_input.b ^ _wgslsmith_mult_i32(-u_input.b, 7453i);
}

fn func_1(arg_0: vec2<u32>) -> u32 {
    var var_0 = Struct_1(max(global3.a, u_input.a.x), _wgslsmith_f_op_vec2_f32(-global3.b), global3.b.x, _wgslsmith_mod_vec3_i32(_wgslsmith_mult_vec3_i32(-vec3<i32>(global1.x, global1.x, global1.x) & global1.yxy, ~max(global3.d, vec3<i32>(-1i, -2147483647i, u_input.b))), vec3<i32>(_wgslsmith_sub_i32(~global1.x, global3.d.x), max(firstTrailingBit(global3.d.x), -u_input.b), global3.d.x)), -891f);
    let var_1 = 0i;
    let var_2 = 0u;
    var_0 = Struct_1(~(~(~(~var_2))), var_0.b, _wgslsmith_f_op_f32(ceil(-573f)), vec3<i32>(global1.x, -_wgslsmith_mod_i32(34433i, _wgslsmith_mult_i32(global1.x, 640i)), func_4(~_wgslsmith_add_i32(var_0.d.x, 1i), func_2(Struct_1(0u, var_0.b, global3.e, vec3<i32>(68096i, var_0.d.x, 1i), var_0.b.x), _wgslsmith_add_vec3_u32(u_input.a.yyz, vec3<u32>(0u, 1u, 4294967295u)), _wgslsmith_f_op_f32(503f - 189f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(global3.b.x, _wgslsmith_f_op_f32(-global3.c))), _wgslsmith_f_op_f32(f32(-1f) * -1000f), false & !any(vec2<bool>(true, true)))));
    global0 = array<vec4<u32>, 19>();
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~vec3<u32>(0u, global3.a >> (func_1(~vec2<u32>(global3.a, 1u)) % 32u), 5452u);
    let var_1 = Struct_1(1996u, vec2<f32>(global3.c, -264f), _wgslsmith_f_op_f32(round(global3.c)), _wgslsmith_mod_vec3_i32(global3.d, vec3<i32>(global3.d.x & global1.x, global3.d.x, ~u_input.b ^ func_2(Struct_1(global3.a, vec2<f32>(-1168f, global3.c), -862f, vec3<i32>(global1.x, u_input.b, -1i), 1527f), u_input.a.zzw, -1114f).d.x)), global3.b.x);
    let var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global3.b.x)) - _wgslsmith_f_op_f32(-global3.e)), _wgslsmith_f_op_f32(-var_1.e), -873f, 715f) * _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, global3.c, _wgslsmith_f_op_f32(-var_1.b.x), global3.c) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.b.x, global3.c, 559f, 1277f), vec4<f32>(var_1.c, global3.e, 949f, 1000f), global4[_wgslsmith_index_u32(global3.a, 1u)])) - _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1830f, 436f, var_1.e, -588f), vec4<f32>(-1754f, -520f, 218f, global3.b.x)))))));
    global3 = Struct_1(_wgslsmith_clamp_u32(func_2(Struct_1(min(var_0.x, var_0.x), _wgslsmith_f_op_vec2_f32(-global3.b), 755f, vec3<i32>(u_input.b, 25096i, -5860i), _wgslsmith_f_op_f32(var_1.b.x - 1045f)), reverseBits(abs(vec3<u32>(0u, u_input.a.x, 4294967295u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.c * global3.e))).a, ~(~(~u_input.a.x)), firstTrailingBit(func_1(var_0.yz))), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(floor(var_1.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.c) + var_2.x)))), 1f, -select(~(~var_1.d), -global3.d, vec3<bool>(true, true, global1.x < -8985i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(753f, _wgslsmith_f_op_f32(-2254f + var_1.c))) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -224f), _wgslsmith_f_op_f32(-var_1.c)))) - -304f));
    let var_3 = func_3(~abs(countOneBits(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, -2147483647i, u_input.b), global1.zwy))), var_1);
    var var_4 = func_2(Struct_1(var_1.a << (~4294967295u % 32u), var_1.b, _wgslsmith_f_op_f32(sign(global3.c)), global1.zxy, 1206f), vec3<u32>(_wgslsmith_dot_vec2_u32(~_wgslsmith_add_vec2_u32(u_input.a.xy, vec2<u32>(global3.a, var_0.x)), vec2<u32>(_wgslsmith_div_u32(var_1.a, u_input.a.x), ~u_input.a.x)), global3.a, _wgslsmith_sub_u32(~_wgslsmith_mod_u32(global3.a, var_1.a), u_input.a.x)), _wgslsmith_f_op_f32(abs(func_2(Struct_1(firstLeadingBit(0u), _wgslsmith_f_op_vec2_f32(-global3.b), _wgslsmith_f_op_f32(-var_1.e), var_1.d, -523f), _wgslsmith_clamp_vec3_u32(firstTrailingBit(vec3<u32>(54532u, 41930u, 0u)), vec3<u32>(22339u, var_1.a, 39281u), u_input.a.xzw), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(656f)) + -2008f)).b.x)));
    let var_5 = countOneBits(vec4<i32>(_wgslsmith_sub_i32(_wgslsmith_mod_i32(global1.x, -1i), 1i & global3.d.x), 1789i, _wgslsmith_mod_i32(_wgslsmith_add_i32(var_4.d.x, var_1.d.x), -2147483647i), (-2147483647i & (global3.d.x << (0u % 32u))) & -_wgslsmith_clamp_i32(u_input.b, 19830i, var_4.d.x)));
    var var_6 = !(!var_3);
    global0 = array<vec4<u32>, 19>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.zw, _wgslsmith_mod_vec3_u32(var_0, abs(~(~u_input.a.zxx))));
}

