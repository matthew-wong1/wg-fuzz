struct Struct_1 {
    a: u32,
    b: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_1,
    c: Struct_1,
    d: vec3<f32>,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 27> = array<vec2<bool>, 27>(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true));

var<private> global1: Struct_2 = Struct_2(Struct_1(2212u, vec3<f32>(114f, -1097f, 417f)), Struct_1(96860u, vec3<f32>(202f, -496f, -307f)));

var<private> global2: array<vec2<bool>, 18> = array<vec2<bool>, 18>(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true));

var<private> global3: array<vec3<f32>, 22> = array<vec3<f32>, 22>(vec3<f32>(154f, -1431f, 1985f), vec3<f32>(795f, 1000f, 601f), vec3<f32>(-1371f, -877f, -321f), vec3<f32>(-649f, -2102f, 199f), vec3<f32>(1961f, -2969f, 1262f), vec3<f32>(1354f, 443f, 186f), vec3<f32>(-1415f, -106f, -794f), vec3<f32>(-1413f, 1474f, 1841f), vec3<f32>(-820f, -1401f, -203f), vec3<f32>(777f, 1197f, -2755f), vec3<f32>(-1773f, -1000f, 595f), vec3<f32>(303f, -1478f, -911f), vec3<f32>(1971f, 622f, -1747f), vec3<f32>(-1805f, -1097f, 1314f), vec3<f32>(2920f, 1382f, -272f), vec3<f32>(1168f, 535f, -278f), vec3<f32>(-1085f, -669f, 1983f), vec3<f32>(579f, 229f, 1068f), vec3<f32>(-464f, 1341f, 1901f), vec3<f32>(-773f, 298f, -1709f), vec3<f32>(-361f, 1578f, -823f), vec3<f32>(1749f, -730f, -849f));

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_2() -> i32 {
    var var_0 = global1.b;
    let var_1 = firstLeadingBit(0i);
    let var_2 = var_1 | -9781i;
    var var_3 = 2008i;
    let var_4 = 986f;
    return var_2;
}

fn func_3(arg_0: vec4<i32>) -> Struct_2 {
    var var_0 = vec2<bool>(true, true);
    let var_1 = 761f;
    let var_2 = _wgslsmith_dot_vec4_i32(arg_0, select(~(~arg_0), ~arg_0 >> (~vec4<u32>(0u, global1.b.a, global1.a.a, 8493u) % vec4<u32>(32u)), arg_0.x >= 42241i)) ^ u_input.a;
    var var_3 = !(1761f >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global1.b.b.x)) * 515f)));
    var var_4 = Struct_1(~(~select(52068u, _wgslsmith_add_u32(global1.b.a, global1.a.a), true | var_0.x)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1 - var_1) - _wgslsmith_f_op_f32(global1.b.b.x + global1.b.b.x))), _wgslsmith_f_op_f32(-var_1), var_1));
    return Struct_2(Struct_1(_wgslsmith_sub_u32(10396u, ~global1.b.a), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_4.b)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global1.b.b)))), global1.b);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3, arg_2: bool) -> vec3<bool> {
    var var_0 = arg_1;
    var var_1 = _wgslsmith_clamp_vec2_u32(_wgslsmith_clamp_vec2_u32(select(select(arg_1.a.wx, ~var_0.a.zx, all(vec3<bool>(false, true, false))), ~(~var_0.a.xx), select(vec2<bool>(arg_2, arg_2), !vec2<bool>(arg_2, arg_2), !global0[_wgslsmith_index_u32(8939u, 27u)])), vec2<u32>(49519u, arg_1.a.x), ~_wgslsmith_mod_vec2_u32(countOneBits(vec2<u32>(global1.a.a, var_0.a.x)), firstLeadingBit(var_0.a.xy))), arg_1.a.yw & ~(~var_0.a.wx), ~(vec2<u32>(~1u, abs(arg_0.b.a)) ^ var_0.a.wy));
    var var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.d.x)));
    global1 = Struct_2(func_3(vec4<i32>(_wgslsmith_add_i32(arg_1.e.x, arg_1.e.x), _wgslsmith_mod_i32(0i, u_input.b), _wgslsmith_sub_i32(u_input.a, arg_1.e.x), -arg_1.e.x) >> ((reverseBits(vec4<u32>(global1.a.a, global1.a.a, var_0.b.a, global1.a.a)) & vec4<u32>(global1.a.a, 4294967295u, 4294967295u, 11663u)) % vec4<u32>(32u))).b, func_3(~(vec4<i32>(-11652i, 27023i, -1i, var_0.e.x) | vec4<i32>(arg_1.e.x, arg_1.e.x, -7687i, -10857i)) & _wgslsmith_mult_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(32402i, arg_1.e.x, -20843i, -6345i), vec4<i32>(13114i, 33141i, 0i, -26340i), vec4<i32>(var_0.e.x, var_0.e.x, var_0.e.x, 2147483647i)), vec4<i32>(arg_1.e.x, -27225i, 0i, var_0.e.x))).b);
    let var_3 = -209f;
    return select(select(select(select(vec3<bool>(arg_2, arg_2, arg_2), vec3<bool>(arg_2, true, arg_2), true), vec3<bool>(true, global1.a.a != 0u, arg_2 && true), select(select(vec3<bool>(true, arg_2, arg_2), vec3<bool>(true, arg_2, arg_2), vec3<bool>(true, arg_2, arg_2)), vec3<bool>(true, true, false), !vec3<bool>(arg_2, false, arg_2))), vec3<bool>(all(global0[_wgslsmith_index_u32(1u, 27u)]), false, all(select(vec4<bool>(false, arg_2, true, true), vec4<bool>(arg_2, arg_2, true, true), vec4<bool>(arg_2, arg_2, arg_2, true)))), !(!select(vec3<bool>(false, arg_2, arg_2), vec3<bool>(true, false, arg_2), vec3<bool>(arg_2, true, false)))), !select(vec3<bool>(false, any(vec3<bool>(true, true, true)), arg_2), select(select(vec3<bool>(true, false, true), vec3<bool>(arg_2, arg_2, arg_2), vec3<bool>(false, true, arg_2)), !vec3<bool>(arg_2, arg_2, arg_2), true), true), true);
}

fn func_1(arg_0: u32, arg_1: vec3<bool>, arg_2: bool) -> f32 {
    global0 = array<vec2<bool>, 27>();
    var var_0 = func_4(func_3(select(vec4<i32>(func_2(), _wgslsmith_mult_i32(40799i, u_input.b), u_input.b, 28974i | u_input.a), abs(-vec4<i32>(-1i, u_input.a, -71087i, u_input.a)), !vec4<bool>(arg_2, arg_1.x, arg_1.x, arg_1.x))), Struct_3(vec4<u32>(reverseBits(0u), global1.b.a, abs(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0, 4294967295u, 9127u, global1.a.a), vec4<u32>(global1.a.a, 29399u, 1u, 0u))), firstLeadingBit(global1.a.a)), func_3(_wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.b, u_input.b, u_input.a, 0i), vec4<i32>(-1i, 25081i, u_input.b, 2147483647i)), vec4<i32>(13840i, -2147483647i, u_input.b, 55832i) | vec4<i32>(u_input.a, 49323i, u_input.b, 49040i))).a, Struct_1(arg_0, vec3<f32>(global1.b.b.x, _wgslsmith_div_f32(global1.b.b.x, 681f), 467f)), _wgslsmith_f_op_vec3_f32(global1.a.b - _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(global1.a.b, global3[_wgslsmith_index_u32(0u, 22u)]))), vec3<i32>(i32(-1i) * -2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.b), vec2<i32>(22503i, u_input.b)), countOneBits(11257i)) | max(~vec3<i32>(-1i, u_input.a, u_input.b), -vec3<i32>(u_input.b, u_input.a, -55215i))), u_input.a < min(_wgslsmith_div_i32(14554i, _wgslsmith_add_i32(u_input.b, u_input.b)), -2147483647i));
    let var_1 = Struct_1(1u, _wgslsmith_f_op_vec3_f32(global3[_wgslsmith_index_u32(1u, 22u)] + global1.a.b));
    let var_2 = !vec3<bool>(!(!(global1.b.a == global1.b.a)), select(_wgslsmith_f_op_f32(select(global1.a.b.x, global1.b.b.x, false)) <= _wgslsmith_f_op_f32(1000f - var_1.b.x), false != func_4(Struct_2(global1.a, Struct_1(0u, var_1.b)), Struct_3(vec4<u32>(23586u, global1.a.a, 73877u, 43582u), Struct_1(4294967295u, global3[_wgslsmith_index_u32(var_1.a, 22u)]), var_1, global1.a.b, vec3<i32>(u_input.b, -2147483647i, u_input.a)), arg_1.x).x, true), !(~global1.b.a >= 84016u));
    let var_3 = func_3(~max(countOneBits(vec4<i32>(u_input.a, u_input.a, -43182i, u_input.b)), max(vec4<i32>(u_input.a, u_input.a, 51505i, u_input.b), vec4<i32>(60385i, u_input.a, u_input.b, u_input.b))) >> (_wgslsmith_clamp_vec4_u32(vec4<u32>(global1.b.a, _wgslsmith_sub_u32(global1.b.a, 1u), global1.a.a, global1.b.a), select(vec4<u32>(4294967295u, arg_0, arg_0, global1.b.a) | vec4<u32>(4294967295u, 0u, global1.b.a, 123538u), _wgslsmith_mod_vec4_u32(vec4<u32>(70669u, var_1.a, arg_0, var_1.a), vec4<u32>(var_1.a, 0u, var_1.a, 1u)), select(vec4<bool>(false, false, true, var_0.x), vec4<bool>(false, var_0.x, false, var_0.x), true)), _wgslsmith_mult_vec4_u32(firstLeadingBit(vec4<u32>(global1.b.a, global1.a.a, 110899u, global1.b.a)), select(vec4<u32>(arg_0, var_1.a, 20873u, arg_0), vec4<u32>(var_1.a, 4294967295u, 1u, var_1.a), true))) % vec4<u32>(32u)));
    return var_3.a.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(-774f + -3114f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global1.a.b.x)) - global1.a.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.b.b.x - _wgslsmith_f_op_f32(-global1.a.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b.b.x)));
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    global1 = Struct_2(global1.a, global1.b);
    var var_2 = -78599i;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_1(13248u, vec3<bool>(true, false, true), true))))))));
    let var_4 = Struct_3(~vec4<u32>(global1.b.a, 0u, global1.a.a, 64870u) & (vec4<u32>(~global1.b.a, 1u | global1.a.a, ~global1.b.a, _wgslsmith_dot_vec3_u32(vec3<u32>(global1.a.a, 4294967295u, 10225u), vec3<u32>(global1.a.a, 4294967295u, 17003u))) | abs(select(vec4<u32>(1u, global1.b.a, 17476u, 0u), vec4<u32>(31135u, global1.b.a, 4294967295u, 11996u), vec4<bool>(false, true, false, false)))), func_3(~(-_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b, u_input.a, -1i, u_input.b), vec4<i32>(u_input.a, u_input.b, 22081i, 17380i), vec4<i32>(39217i, u_input.b, u_input.a, -31573i)))).b, global1.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global3[_wgslsmith_index_u32(min(0u, _wgslsmith_mult_u32(global1.b.a, global1.a.a)), 22u)]) * _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 1000f, global1.b.b.x) - global3[_wgslsmith_index_u32(4294967295u, 22u)])))))), vec3<i32>(~(_wgslsmith_mod_i32(u_input.b, -31130i) >> (1u % 32u)), u_input.a, -(u_input.b | -39129i)));
    let var_5 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_4.d.x + -1119f), _wgslsmith_f_op_f32(var_4.d.x * _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.x - 443f), 393f)), all(select(vec3<bool>(false, true, select(true, true, true)), !select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), true), select(func_4(Struct_2(Struct_1(1u, var_0.zwx), var_4.b), var_4, true), vec3<bool>(false, true, true), all(vec3<bool>(false, true, true)))))));
    var var_6 = !any(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(abs(_wgslsmith_add_u32(4294967295u, var_4.a.x)), vec3<bool>(true, true, true), all(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, false))))) + _wgslsmith_f_op_f32(-var_5)), _wgslsmith_add_i32(max(~var_4.e.x, var_4.e.x), func_2()), global1.a.b.x);
}

