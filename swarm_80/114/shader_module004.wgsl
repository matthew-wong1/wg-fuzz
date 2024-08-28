struct Struct_1 {
    a: f32,
    b: vec4<u32>,
    c: bool,
    d: f32,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
    d: vec2<f32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 6>;

var<private> global1: array<f32, 22>;

var<private> global2: array<i32, 6> = array<i32, 6>(0i, 58932i, 45162i, 1i, -10131i, i32(-2147483648));

var<private> global3: array<Struct_1, 9> = array<Struct_1, 9>(Struct_1(1014f, vec4<u32>(4294967295u, 25489u, 4294967295u, 1u), true, 1688f), Struct_1(-352f, vec4<u32>(29354u, 28239u, 4294967295u, 4294967295u), false, 563f), Struct_1(256f, vec4<u32>(26529u, 1u, 22652u, 4294967295u), true, -1146f), Struct_1(-527f, vec4<u32>(4294967295u, 1u, 0u, 0u), true, -990f), Struct_1(1057f, vec4<u32>(0u, 27830u, 43744u, 10193u), true, 604f), Struct_1(-1728f, vec4<u32>(1u, 48661u, 1u, 4294967295u), false, 169f), Struct_1(-1539f, vec4<u32>(1u, 4294967295u, 1u, 4353u), false, -153f), Struct_1(-1251f, vec4<u32>(4294967295u, 78177u, 4294967295u, 1u), true, 1026f), Struct_1(1557f, vec4<u32>(82018u, 1u, 0u, 0u), true, 531f));

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_1(arg_0: Struct_1) -> u32 {
    var var_0 = abs(arg_0.b);
    let var_1 = 1u;
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-arg_0.a), ~reverseBits(_wgslsmith_sub_vec4_u32(~arg_0.b, vec4<u32>(1u, var_0.x, 40239u, u_input.a.x))), false, 1000f);
    global0 = array<bool, 6>();
    var var_3 = Struct_3(global3[_wgslsmith_index_u32(u_input.a.x | _wgslsmith_mult_u32(arg_0.b.x, _wgslsmith_dot_vec4_u32(arg_0.b, ~arg_0.b)), 9u)], _wgslsmith_sub_i32(abs(global2[_wgslsmith_index_u32(~(~var_1), 6u)]), i32(-1i) * -39229i), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(43178u, 22u)] - 736f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(4294967295u, 22u)])), _wgslsmith_f_op_f32(max(1000f, 1438f)), _wgslsmith_div_f32(global1[_wgslsmith_index_u32(50913u, 22u)], _wgslsmith_f_op_f32(ceil(-871f)))) * _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1[_wgslsmith_index_u32(33649u, 22u)], global1[_wgslsmith_index_u32(4294967295u, 22u)], -1000f, var_2.d), vec4<f32>(arg_0.a, -1657f, arg_0.d, var_2.d), vec4<bool>(false, arg_0.c, true, arg_0.c))) - vec4<f32>(309f, -176f, -1828f, -2602f))))));
    return 46979u << ((_wgslsmith_sub_u32(27473u, 0u) | select(~var_1, var_0.x, true)) % 32u);
}

fn func_3(arg_0: u32, arg_1: bool, arg_2: i32) -> i32 {
    var var_0 = ~_wgslsmith_mult_vec3_i32(abs(_wgslsmith_sub_vec3_i32(~vec3<i32>(2147i, global2[_wgslsmith_index_u32(1u, 6u)], -20423i), vec3<i32>(arg_2, arg_2, 4312i) >> (vec3<u32>(arg_0, 70262u, u_input.a.x) % vec3<u32>(32u)))), reverseBits(~(~vec3<i32>(arg_2, global2[_wgslsmith_index_u32(32456u, 6u)], global2[_wgslsmith_index_u32(18902u, 6u)]))));
    global3 = array<Struct_1, 9>();
    global3 = array<Struct_1, 9>();
    global0 = array<bool, 6>();
    var var_1 = vec3<i32>(-1i) * -firstTrailingBit(-_wgslsmith_sub_vec3_i32(vec3<i32>(global2[_wgslsmith_index_u32(0u, 6u)], 6903i, -1554i), vec3<i32>(var_0.x, arg_2, arg_2)));
    return arg_2;
}

fn func_2(arg_0: u32, arg_1: f32) -> u32 {
    var var_0 = vec3<i32>(_wgslsmith_clamp_i32(~(-(global2[_wgslsmith_index_u32(10331u, 6u)] | global2[_wgslsmith_index_u32(0u, 6u)])), func_3(43356u, false, i32(-1i) * -21481i), abs(-1i)), ~(-1i), global2[_wgslsmith_index_u32(firstTrailingBit(4294967295u), 6u)] & global2[_wgslsmith_index_u32(21573u, 6u)]);
    return ~0u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var var_1 = vec2<i32>(_wgslsmith_dot_vec3_i32(-(~_wgslsmith_add_vec3_i32(vec3<i32>(global2[_wgslsmith_index_u32(u_input.a.x, 6u)], global2[_wgslsmith_index_u32(0u, 6u)], global2[_wgslsmith_index_u32(u_input.a.x, 6u)]), vec3<i32>(1i, 58253i, global2[_wgslsmith_index_u32(u_input.a.x, 6u)]))), -(~_wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, global2[_wgslsmith_index_u32(1u, 6u)], 18209i), vec3<i32>(-33685i, -22097i, global2[_wgslsmith_index_u32(u_input.a.x, 6u)])))), -global2[_wgslsmith_index_u32(~(~22101u), 6u)] | abs(min(global2[_wgslsmith_index_u32(~0u, 6u)], ~2147483647i)));
    var var_2 = true;
    var_0 = !(!(!(!global0[_wgslsmith_index_u32(u_input.a.x, 6u)]))) || true;
    let var_3 = global3[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, u_input.a.x), 9u)];
    let var_4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(23130u, 22u)], 607f))))) + vec2<f32>(_wgslsmith_f_op_f32(step(1878f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.a)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1412f))));
    var var_5 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_4.x, 609f, 275f, 695f) * vec4<f32>(360f, global1[_wgslsmith_index_u32(1u, 22u)], 1000f, var_4.x)))))));
    let var_6 = select(_wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(~var_3.b, _wgslsmith_add_vec4_u32(vec4<u32>(var_3.b.x, u_input.a.x, var_3.b.x, u_input.a.x), vec4<u32>(var_3.b.x, u_input.a.x, 20256u, u_input.a.x))), vec4<u32>(max(var_3.b.x, u_input.a.x), _wgslsmith_clamp_u32(30140u, u_input.a.x, var_3.b.x), _wgslsmith_add_u32(4441u, 1u), 0u << (1u % 32u))) & var_3.b, ~vec4<u32>(4294967295u, _wgslsmith_clamp_u32(firstTrailingBit(u_input.a.x), var_3.b.x, ~1u), func_1(global3[_wgslsmith_index_u32(18953u, 9u)]), func_2(_wgslsmith_dot_vec3_u32(var_3.b.wzx, var_3.b.xww), _wgslsmith_f_op_f32(select(-541f, global1[_wgslsmith_index_u32(6483u, 22u)], var_3.c)))), all(select(select(vec3<bool>(true, false, var_3.c), vec3<bool>(false, global0[_wgslsmith_index_u32(var_3.b.x, 6u)], var_3.c), select(vec3<bool>(var_3.c, global0[_wgslsmith_index_u32(var_3.b.x, 6u)], false), vec3<bool>(false, var_3.c, true), global0[_wgslsmith_index_u32(0u, 6u)])), vec3<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 6u)] | true, true, var_3.a > 1000f), vec3<bool>(!global0[_wgslsmith_index_u32(28125u, 6u)], true, true))));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_add_vec2_i32(-_wgslsmith_div_vec2_i32(vec2<i32>(global2[_wgslsmith_index_u32(u_input.a.x, 6u)], global2[_wgslsmith_index_u32(var_3.b.x, 6u)]), vec2<i32>(36138i, var_1.x)), -abs(vec2<i32>(0i, 15502i))), ~global2[_wgslsmith_index_u32(var_3.b.x, 6u)], firstTrailingBit(-9460i) | _wgslsmith_add_i32(-(i32(-1i) * -20863i), ~(-4801i)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(max(var_3.d, 292f)), _wgslsmith_div_f32(321f, 657f)), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(sign(var_4)))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-1000f, var_4.x), _wgslsmith_f_op_vec2_f32(var_4 - var_5.wy)))), vec4<u32>(~(4294967295u | (var_3.b.x & 77915u)), 4294967295u, var_3.b.x, ~4294967295u >> (abs(var_3.b.x) % 32u)));
}

