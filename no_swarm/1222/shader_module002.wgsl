struct Struct_1 {
    a: vec4<f32>,
    b: vec3<i32>,
    c: vec4<f32>,
    d: i32,
    e: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: f32,
    c: Struct_1,
    d: vec3<bool>,
    e: vec3<f32>,
}

struct Struct_4 {
    a: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 23>;

var<private> global1: array<f32, 23>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3() -> i32 {
    let var_0 = all(select(select(vec2<bool>(all(vec4<bool>(false, false, true, true)), select(true, false, true)), select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(false, false), true), vec2<bool>(true, true)), vec2<bool>(true, select(4294967295u != global0[_wgslsmith_index_u32(0u, 23u)], true, false)), all(vec2<bool>(false, false)) == any(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true)))));
    global1 = array<f32, 23>();
    global0 = array<u32, 23>();
    global1 = array<f32, 23>();
    let var_1 = vec2<i32>(_wgslsmith_mod_i32((1i << (0u % 32u)) << (~(~global0[_wgslsmith_index_u32(73573u, 23u)]) % 32u), i32(-1i) * -firstTrailingBit(0i)), abs(15746i));
    return ~reverseBits(_wgslsmith_mult_i32(~firstLeadingBit(var_1.x), 73238i));
}

fn func_2() -> Struct_3 {
    let var_0 = -vec4<i32>(firstLeadingBit(_wgslsmith_dot_vec4_i32(~vec4<i32>(1109i, -36456i, -40340i, 0i), countOneBits(vec4<i32>(-1i, -32693i, 0i, -29997i)))), ~_wgslsmith_div_i32(69306i, _wgslsmith_add_i32(5615i, -13618i)), -reverseBits(2147483647i), ~1i);
    var var_1 = Struct_2(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(8362u, 23u)] - _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 23u)], 23u)] + -711f)), 106f, _wgslsmith_f_op_f32(133f * -1316f), -1359f), _wgslsmith_sub_vec3_i32(vec3<i32>(var_0.x, _wgslsmith_mult_i32(var_0.x, -1i), i32(-1i) * -32886i), reverseBits(_wgslsmith_div_vec3_i32(vec3<i32>(0i, var_0.x, var_0.x), vec3<i32>(1i, 38959i, var_0.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(u_input.a.x, 23u)], global1[_wgslsmith_index_u32(318u, 23u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 23u)], 23u)], 2149f))), _wgslsmith_mod_i32(var_0.x, var_0.x), reverseBits(~(~u_input.a.yy))), ~(~(~reverseBits(u_input.a))));
    global1 = array<f32, 23>();
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(var_1.a.c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_1.a.c))))) * _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_1.a.c.x))), var_1.a.a.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_1.a.a.x), -393f, all(vec3<bool>(true, false, true)))), -946f), _wgslsmith_f_op_vec4_f32(round(var_1.a.a))));
    let var_3 = _wgslsmith_sub_u32(~countOneBits(abs(select(global0[_wgslsmith_index_u32(u_input.a.x, 23u)], 48493u, true))), 65319u);
    return Struct_3(vec3<i32>(70627i | var_1.a.d, _wgslsmith_add_i32(var_0.x, _wgslsmith_add_i32(~7275i, firstTrailingBit(var_0.x))), func_3()), -1007f, var_1.a, vec3<bool>(all(vec3<bool>(var_0.x >= var_0.x, true, true)), true, false), var_1.a.c.wxw);
}

fn func_1() -> Struct_3 {
    var var_0 = true | any(select(vec4<bool>(true, true, all(vec4<bool>(false, false, false, true)), true), !select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false), true), true));
    return func_2();
}

fn func_4(arg_0: vec3<f32>, arg_1: i32, arg_2: Struct_3, arg_3: u32) -> vec3<i32> {
    global1 = array<f32, 23>();
    var var_0 = max(vec2<u32>(u_input.a.x >> (abs(4294967295u) % 32u), func_2().c.e.x) ^ vec2<u32>(abs(0u), reverseBits(~u_input.a.x)), _wgslsmith_mod_vec2_u32(max(vec2<u32>(select(32982u, arg_2.c.e.x, arg_2.d.x), 1u), arg_2.c.e), min(arg_2.c.e, vec2<u32>(~66789u, u_input.a.x))));
    let var_1 = Struct_4(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(~arg_2.c.e, select(u_input.a.zz, ~arg_2.c.e, select(arg_2.d.zy, arg_2.d.yy, false))), ~_wgslsmith_add_u32(50707u, func_1().c.e.x)));
    var var_2 = !arg_2.d.yx;
    var_0 = vec2<u32>(var_0.x, ~40947u);
    return vec3<i32>(~(-(arg_1 ^ arg_2.c.d)), -_wgslsmith_add_i32(abs(1i), 726i), ~(_wgslsmith_add_i32(7910i, 1i) >> (arg_2.c.e.x % 32u))) >> (vec3<u32>(global0[_wgslsmith_index_u32((4294967295u >> (var_0.x % 32u)) & ~4294967295u, 23u)] | var_0.x, min(_wgslsmith_sub_u32(68259u >> (var_1.a % 32u), 1u), global0[_wgslsmith_index_u32(arg_3, 23u)]), 15156u) % vec3<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(_wgslsmith_sub_vec3_i32(min(_wgslsmith_clamp_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(0i, -56139i, -1i), vec3<i32>(41803i, -43912i, -1i), vec3<i32>(-2147483647i, -2147483647i, 3159i)), vec3<i32>(1i, -2147483647i, -2147483647i), -vec3<i32>(17044i, 1i, -24927i)), ~vec3<i32>(-1i, -1i, 29801i) >> (~u_input.a % vec3<u32>(32u))), func_4(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(34563u, 23u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 23u)], 23u)], global1[_wgslsmith_index_u32(30761u, 23u)]) + vec3<f32>(global1[_wgslsmith_index_u32(u_input.a.x, 23u)], -178f, -364f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(4294967295u, 23u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 23u)], 23u)], -1393f))), ~_wgslsmith_mod_i32(9429i, 1i), func_1(), 11643u)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -904f) + global1[_wgslsmith_index_u32(u_input.a.x, 23u)]))), Struct_1(_wgslsmith_f_op_vec4_f32(func_2().c.a * _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global1[_wgslsmith_index_u32(2776u, 23u)], -1398f, global1[_wgslsmith_index_u32(21991u, 23u)], 1240f)))), vec3<i32>(1i, 1i, 1i), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-2549f, -430f, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 23u)], 23u)], 23u)], 23u)], 23u)], 595f) * vec4<f32>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 23u)], 23u)], -1322f, global1[_wgslsmith_index_u32(1u, 23u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 23u)], 23u)])) + _wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(u_input.a.x, 23u)], 481f, global1[_wgslsmith_index_u32(u_input.a.x, 23u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 23u)], 23u)], 23u)]) - vec4<f32>(-1587f, -1808f, -456f, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(114762u, 23u)], 23u)], 23u)]))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(u_input.a.x, 23u)], global1[_wgslsmith_index_u32(4294967295u, 23u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(589u, 23u)], 23u)], 440f)), func_2().d.x)), _wgslsmith_add_i32(33828i, 26239i), vec2<u32>(max(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.a.x, 4294967295u), u_input.a), u_input.a.x), u_input.a.x)), !func_1().d, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.a.x << (u_input.a.x % 32u), 23u)]) + 193f), global1[_wgslsmith_index_u32(26311u << (~(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 23u)], 23u)], 23u)]) % 32u), 23u)], 311f));
    let var_1 = global1[_wgslsmith_index_u32(~(~4294967295u), 23u)];
    let var_2 = var_0;
    global0 = array<u32, 23>();
    let var_3 = global0[_wgslsmith_index_u32(~(~reverseBits(~78137u)), 23u)];
    let var_4 = _wgslsmith_f_op_f32(min(-111f, var_2.c.c.x));
    let var_5 = Struct_3(var_0.c.b, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(global1[_wgslsmith_index_u32(min(min(123373u, var_2.c.e.x), countOneBits(var_0.c.e.x)), 23u)])))), var_2.c, vec3<bool>(false, false & all(var_2.d.xx), any(vec4<bool>(all(vec2<bool>(true, false)), false, var_0.d.x || var_0.d.x, all(vec2<bool>(var_0.d.x, true))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.e)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.e.x + 302f) * 159f), _wgslsmith_f_op_f32(select(-423f, -116f, all(var_0.d)))) - _wgslsmith_div_f32(1222f, -1405f)), var_2.a >> ((abs(max(u_input.a, vec3<u32>(global0[_wgslsmith_index_u32(var_0.c.e.x, 23u)], 4294967295u, global0[_wgslsmith_index_u32(var_5.c.e.x, 23u)]))) | _wgslsmith_div_vec3_u32(~u_input.a, u_input.a)) % vec3<u32>(32u)));
}

