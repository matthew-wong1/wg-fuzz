struct Struct_1 {
    a: vec2<bool>,
    b: vec3<f32>,
    c: vec3<i32>,
}

struct Struct_2 {
    a: i32,
    b: vec4<i32>,
    c: Struct_1,
    d: vec3<f32>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 18>;

var<private> global1: array<vec4<f32>, 1>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32, arg_1: bool, arg_2: Struct_2) -> vec3<i32> {
    let var_0 = arg_2.c.c.x;
    let var_1 = !select(!(!vec3<bool>(arg_1, arg_1, arg_2.c.a.x)), vec3<bool>(arg_2.c.a.x, true, false), true);
    var var_2 = _wgslsmith_clamp_i32(arg_2.b.x, ~24443i >> (1u % 32u), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.a, ~1u) ^ 1u, 18u)]);
    var_2 = ~arg_2.a;
    var var_3 = vec2<f32>(arg_2.c.b.x, 1f);
    return abs(select(~u_input.c.yzy, ~select(vec3<i32>(u_input.c.x, global0[_wgslsmith_index_u32(arg_0, 18u)], -52658i), _wgslsmith_mod_vec3_i32(arg_2.c.c, vec3<i32>(var_0, -26367i, -1i)), var_1.x), ((global0[_wgslsmith_index_u32(0u, 18u)] & -63162i) < (i32(-1i) * -1i)) && arg_2.c.a.x));
}

fn func_2(arg_0: i32) -> vec3<f32> {
    var var_0 = select(-u_input.c.wyz, -reverseBits(func_3(43034u, false, Struct_2(u_input.c.x, vec4<i32>(-2147483647i, 2147483647i, u_input.b.x, global0[_wgslsmith_index_u32(u_input.a, 18u)]), Struct_1(vec2<bool>(false, true), vec3<f32>(-417f, 1237f, -1590f), u_input.c.xwy), vec3<f32>(-1618f, 1000f, -1160f))) & max(vec3<i32>(global0[_wgslsmith_index_u32(11205u, 18u)], global0[_wgslsmith_index_u32(u_input.a, 18u)], global0[_wgslsmith_index_u32(u_input.a, 18u)]), vec3<i32>(0i, arg_0, arg_0))), vec3<bool>(all(vec2<bool>(all(vec2<bool>(false, true)), all(vec3<bool>(false, false, false)))), true, true));
    let var_1 = 0u;
    var var_2 = Struct_3(~(~vec3<u32>(9719u, u_input.a, 3068u)) >> (~vec3<u32>(~1u, 1u, firstTrailingBit(1u)) % vec3<u32>(32u)), ~_wgslsmith_clamp_vec4_u32(~vec4<u32>(u_input.a, u_input.a, var_1, 4294967295u) | vec4<u32>(11826u, 4294967295u, 4294967295u, 14523u), _wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, var_1, var_1, var_1), _wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, var_1, var_1, 25829u), vec4<u32>(4294967295u, 20795u, 4294967295u, var_1))), _wgslsmith_add_vec4_u32(vec4<u32>(67867u, 0u, 61874u, u_input.a), vec4<u32>(var_1, 4294967295u, var_1, var_1)) >> (_wgslsmith_clamp_vec4_u32(vec4<u32>(var_1, var_1, var_1, 10313u), vec4<u32>(46568u, 2547u, 24893u, var_1), vec4<u32>(var_1, var_1, u_input.a, u_input.a)) % vec4<u32>(32u))), vec3<i32>(firstLeadingBit(-30174i), _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-9929i, arg_0, var_0.x), u_input.c.zyz), 1i), ~u_input.b.x) << (vec3<u32>(~1u << (~var_1 % 32u), _wgslsmith_sub_u32(1u, var_1), ~var_1) % vec3<u32>(32u)));
    var_0 = _wgslsmith_sub_vec3_i32(-vec3<i32>(~var_0.x, 1i, -_wgslsmith_mult_i32(arg_0, u_input.c.x)), vec3<i32>(_wgslsmith_mult_i32(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(var_2.b, vec4<u32>(var_2.b.x, var_2.a.x, var_2.b.x, var_2.b.x)), 18u)], ~var_0.x) >> (~var_2.a.x % 32u), -2147483647i, -arg_0));
    let var_3 = Struct_1(vec2<bool>(false, !any(vec4<bool>(true, true, true, true))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(127f, _wgslsmith_f_op_f32(-389f + -792f), _wgslsmith_f_op_f32(289f + 675f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1062f, 494f, 1711f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-518f, -100f, 2218f))), vec3<bool>(-26106i > global0[_wgslsmith_index_u32(var_2.b.x, 18u)], false, all(vec4<bool>(false, true, false, true))))))), abs(firstLeadingBit(vec3<i32>(_wgslsmith_clamp_i32(0i, arg_0, 23495i), min(2147483647i, arg_0), -1i))));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(249f, var_3.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-174f + 899f) - var_3.b.x)))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_2, arg_3: bool) -> Struct_2 {
    global1 = array<vec4<f32>, 1>();
    let var_0 = Struct_3(~vec3<u32>(~1u, ~u_input.d, 30483u), abs(~vec4<u32>(4294967295u, 0u, 0u, u_input.a)) & ~_wgslsmith_div_vec4_u32(abs(vec4<u32>(u_input.a, u_input.d, u_input.a, u_input.d)), vec4<u32>(0u, u_input.d, u_input.a, 1u)), firstLeadingBit(_wgslsmith_add_vec3_i32(vec3<i32>(firstLeadingBit(global0[_wgslsmith_index_u32(u_input.a, 18u)]), 0i, -66179i), _wgslsmith_sub_vec3_i32(vec3<i32>(arg_0.b.x, arg_0.c.c.x, u_input.c.x), abs(arg_1.b.wyx)))));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(global1[_wgslsmith_index_u32(77736u, 1u)], global1[_wgslsmith_index_u32(var_0.b.x, 1u)])))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(global1[_wgslsmith_index_u32(~(~1u), 1u)])) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_1.d.x, -1358f, arg_1.d.x, arg_1.d.x))) + vec4<f32>(622f, arg_0.d.x, arg_1.d.x, -1000f))))));
    global1 = array<vec4<f32>, 1>();
    let var_2 = Struct_1(select(arg_1.c.a, !vec2<bool>(arg_1.c.a.x || true, arg_1.c.a.x), select(!select(vec2<bool>(false, false), vec2<bool>(false, false), arg_2.c.a.x), select(vec2<bool>(arg_3, arg_1.c.a.x), select(vec2<bool>(arg_3, arg_0.c.a.x), vec2<bool>(arg_3, false), false), !vec2<bool>(arg_1.c.a.x, arg_0.c.a.x)), arg_3)), arg_1.d, arg_0.c.c);
    return arg_0;
}

fn func_1(arg_0: f32, arg_1: bool, arg_2: Struct_1) -> vec2<bool> {
    global1 = array<vec4<f32>, 1>();
    global0 = array<i32, 18>();
    let var_0 = func_4(Struct_2(~_wgslsmith_mult_i32(-2147483647i, _wgslsmith_mult_i32(arg_2.c.x, 95716i)), ~vec4<i32>(2147483647i, _wgslsmith_dot_vec2_i32(u_input.c.yz, vec2<i32>(41630i, -1i)), u_input.c.x, 1i), arg_2, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_2(u_input.c.x)))), Struct_2(firstLeadingBit(-_wgslsmith_div_i32(2147483647i, global0[_wgslsmith_index_u32(0u, 18u)])), _wgslsmith_div_vec4_i32(~(~vec4<i32>(2147483647i, 0i, global0[_wgslsmith_index_u32(u_input.a, 18u)], 12522i)), u_input.c), arg_2, _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(344f, -120f, 776f), vec3<f32>(1174f, arg_0, arg_0))) * vec3<f32>(189f, arg_2.b.x, arg_0))))), Struct_2(35318i, vec4<i32>(-7884i, -4818i, u_input.b.x, -6926i), Struct_1(arg_2.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(296f, -1000f, -844f), vec3<f32>(arg_0, arg_0, arg_2.b.x))), -_wgslsmith_add_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(97281u, 18u)], u_input.c.x, arg_2.c.x), vec3<i32>(-55745i, 2147483647i, global0[_wgslsmith_index_u32(u_input.d, 18u)]))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(-1029f, arg_0, arg_2.a.x)), 202f, _wgslsmith_f_op_f32(f32(-1f) * -803f)) + _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_2.b.x, arg_0, -1821f))))), !(global0[_wgslsmith_index_u32(1u, 18u)] >= -max(2147483647i, u_input.c.x)));
    global1 = array<vec4<f32>, 1>();
    global1 = array<vec4<f32>, 1>();
    return arg_2.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<u32>(u_input.d, _wgslsmith_dot_vec3_u32(vec3<u32>(~u_input.d, 1u, ~2472u) | _wgslsmith_add_vec3_u32(abs(vec3<u32>(16028u, u_input.d, u_input.d)), vec3<u32>(u_input.a, u_input.d, u_input.a) ^ vec3<u32>(u_input.a, 33179u, 1u)), _wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.d, 4294967295u, u_input.a), vec3<u32>(u_input.a, 4294967295u, 4294967295u)) << (abs(vec3<u32>(u_input.d, 58187u, u_input.a)) % vec3<u32>(32u)), vec3<u32>(u_input.d, ~u_input.d, ~u_input.a))), firstLeadingBit(u_input.d) << (17577u % 32u), ~0u);
    let var_1 = any(vec4<bool>(true, all(select(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false)), vec2<bool>(true, true), func_1(530f, false, Struct_1(vec2<bool>(true, false), vec3<f32>(1388f, -148f, -660f), vec3<i32>(u_input.b.x, u_input.c.x, u_input.b.x))))), true, true));
    global1 = array<vec4<f32>, 1>();
    global1 = array<vec4<f32>, 1>();
    var var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-1830f - -391f), 1465f, _wgslsmith_f_op_f32(-1f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1122f, 1012f, _wgslsmith_f_op_f32(f32(-1f) * -1115f))));
    let var_3 = Struct_1(select(func_1(var_2.x, any(vec4<bool>(false, var_1, false, true)), func_4(Struct_2(u_input.b.x, u_input.c, Struct_1(vec2<bool>(var_1, var_1), vec3<f32>(-116f, var_2.x, var_2.x), u_input.c.wyx), vec3<f32>(var_2.x, var_2.x, var_2.x)), func_4(Struct_2(u_input.c.x, u_input.c, Struct_1(vec2<bool>(false, var_1), vec3<f32>(-678f, var_2.x, 1417f), vec3<i32>(global0[_wgslsmith_index_u32(u_input.d, 18u)], global0[_wgslsmith_index_u32(4294967295u, 18u)], 1i)), vec3<f32>(1057f, -481f, 923f)), Struct_2(u_input.c.x, u_input.c, Struct_1(vec2<bool>(true, true), vec3<f32>(-1364f, 776f, var_2.x), vec3<i32>(u_input.b.x, -97981i, global0[_wgslsmith_index_u32(4294967295u, 18u)])), vec3<f32>(var_2.x, var_2.x, var_2.x)), Struct_2(global0[_wgslsmith_index_u32(var_0.x, 18u)], u_input.c, Struct_1(vec2<bool>(true, true), vec3<f32>(-1257f, -2734f, var_2.x), vec3<i32>(2147483647i, 1292i, global0[_wgslsmith_index_u32(u_input.a, 18u)])), vec3<f32>(var_2.x, var_2.x, var_2.x)), var_1), func_4(Struct_2(19704i, vec4<i32>(-25634i, 0i, -1i, global0[_wgslsmith_index_u32(u_input.a, 18u)]), Struct_1(vec2<bool>(false, true), vec3<f32>(1186f, 2176f, var_2.x), vec3<i32>(-21376i, 31671i, 2147483647i)), vec3<f32>(var_2.x, 567f, var_2.x)), Struct_2(u_input.c.x, u_input.c, Struct_1(vec2<bool>(true, false), vec3<f32>(var_2.x, var_2.x, 364f), vec3<i32>(global0[_wgslsmith_index_u32(u_input.d, 18u)], u_input.b.x, global0[_wgslsmith_index_u32(4294967295u, 18u)])), vec3<f32>(var_2.x, 320f, 1170f)), Struct_2(7848i, vec4<i32>(global0[_wgslsmith_index_u32(var_0.x, 18u)], u_input.c.x, global0[_wgslsmith_index_u32(4294967295u, 18u)], global0[_wgslsmith_index_u32(var_0.x, 18u)]), Struct_1(vec2<bool>(var_1, var_1), vec3<f32>(var_2.x, var_2.x, var_2.x), u_input.c.zww), vec3<f32>(1347f, var_2.x, 245f)), false), var_1).c), !func_1(_wgslsmith_f_op_f32(abs(-488f)), !var_1, func_4(Struct_2(0i, vec4<i32>(-1i, global0[_wgslsmith_index_u32(14216u, 18u)], 1i, u_input.b.x), Struct_1(vec2<bool>(var_1, true), vec3<f32>(-658f, 337f, -548f), vec3<i32>(u_input.b.x, u_input.c.x, global0[_wgslsmith_index_u32(u_input.a, 18u)])), vec3<f32>(var_2.x, var_2.x, 1145f)), Struct_2(global0[_wgslsmith_index_u32(var_0.x, 18u)], u_input.c, Struct_1(vec2<bool>(false, false), vec3<f32>(-649f, var_2.x, -1005f), u_input.c.zxz), vec3<f32>(-452f, -953f, 846f)), Struct_2(global0[_wgslsmith_index_u32(51704u, 18u)], vec4<i32>(-7957i, u_input.b.x, global0[_wgslsmith_index_u32(u_input.a, 18u)], global0[_wgslsmith_index_u32(u_input.d, 18u)]), Struct_1(vec2<bool>(true, var_1), vec3<f32>(var_2.x, -531f, -3328f), vec3<i32>(global0[_wgslsmith_index_u32(var_0.x, 18u)], global0[_wgslsmith_index_u32(4294967295u, 18u)], u_input.c.x)), vec3<f32>(var_2.x, var_2.x, var_2.x)), var_1).c), true), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, var_2.x, var_2.x)))))))), -u_input.c.xwz << (min(~reverseBits(var_0.xxx), ~(~vec3<u32>(var_0.x, u_input.d, 46549u))) % vec3<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(794f, 113f), var_0.xyz);
}

