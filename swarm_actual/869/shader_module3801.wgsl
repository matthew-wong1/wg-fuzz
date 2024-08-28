struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: u32,
    b: vec4<u32>,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 3> = array<i32, 3>(-17344i, 22253i, -51840i);

var<private> global1: array<vec3<i32>, 23> = array<vec3<i32>, 23>(vec3<i32>(-32141i, 0i, 12117i), vec3<i32>(9826i, -39148i, 34529i), vec3<i32>(1i, 12542i, 31288i), vec3<i32>(0i, -1197i, i32(-2147483648)), vec3<i32>(-24274i, 0i, 12378i), vec3<i32>(34381i, 1i, -25740i), vec3<i32>(1i, 0i, i32(-2147483648)), vec3<i32>(1i, -1i, 2147483647i), vec3<i32>(-36843i, -5708i, 0i), vec3<i32>(i32(-2147483648), i32(-2147483648), 44669i), vec3<i32>(i32(-2147483648), 8433i, 0i), vec3<i32>(-45332i, -14839i, 1i), vec3<i32>(-38083i, -35083i, -27804i), vec3<i32>(40574i, 1i, 9929i), vec3<i32>(2147483647i, 1i, i32(-2147483648)), vec3<i32>(-9679i, 20668i, 1i), vec3<i32>(2147483647i, -24683i, 8866i), vec3<i32>(i32(-2147483648), 2147483647i, -21718i), vec3<i32>(-40576i, -13944i, i32(-2147483648)), vec3<i32>(i32(-2147483648), 2147483647i, 1i), vec3<i32>(14456i, -67961i, 0i), vec3<i32>(i32(-2147483648), 39723i, -29334i), vec3<i32>(-1i, 2147483647i, -1i));

var<private> global2: array<vec2<f32>, 1> = array<vec2<f32>, 1>(vec2<f32>(2391f, -342f));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec4<f32>) -> vec2<bool> {
    global0 = array<i32, 3>();
    global2 = array<vec2<f32>, 1>();
    global1 = array<vec3<i32>, 23>();
    let var_0 = Struct_2(0u, ~countOneBits(vec4<u32>(u_input.d.x, 57947u, ~26550u, 0u | u_input.d.x)), select(vec2<bool>(true, true), vec2<bool>(true, _wgslsmith_dot_vec4_i32(u_input.a, u_input.a) == -5321i), vec2<bool>(any(vec3<bool>(true, true, true)), false || all(vec2<bool>(true, false)))));
    let var_1 = -u_input.a.x;
    return vec2<bool>(true, true);
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: bool) -> vec4<u32> {
    global0 = array<i32, 3>();
    global1 = array<vec3<i32>, 23>();
    var var_0 = all(vec3<bool>(any(!select(vec4<bool>(arg_0.x, arg_0.x, false, arg_2), vec4<bool>(arg_2, arg_0.x, arg_0.x, arg_2), false)), false, true));
    let var_1 = Struct_2(_wgslsmith_clamp_u32(0u, u_input.b, 228u), ~vec4<u32>(1u, u_input.d.x, countOneBits(54615u), u_input.b), !select(select(select(arg_0, vec2<bool>(arg_2, true), arg_0.x), arg_0, vec2<bool>(true, arg_2)), vec2<bool>(arg_0.x, arg_0.x), vec2<bool>(true, true)));
    var var_2 = var_1.b.yyx;
    return ~firstLeadingBit(_wgslsmith_mult_vec4_u32(firstTrailingBit(~var_1.b), _wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(var_1.b, vec4<u32>(26900u, 1u, var_2.x, 0u)), var_1.b)));
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1) -> Struct_2 {
    global1 = array<vec3<i32>, 23>();
    var var_0 = _wgslsmith_f_op_f32(arg_2.a.x - -1000f);
    var_0 = _wgslsmith_f_op_f32(-arg_1.a.x);
    let var_1 = ~(~countOneBits(vec3<u32>(reverseBits(1u), u_input.b, 1u)));
    global0 = array<i32, 3>();
    return Struct_2(firstLeadingBit(24250u), func_4(select(vec2<bool>(true, true), select(select(vec2<bool>(false, true), vec2<bool>(false, true), false), func_3(vec4<f32>(-287f, -2425f, arg_1.a.x, arg_2.a.x)), vec2<bool>(true, true)), any(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false)))), Struct_1(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.a.x, -2117f)), _wgslsmith_f_op_vec2_f32(step(arg_1.a, vec2<f32>(arg_1.a.x, 1687f)))))), true), vec2<bool>(true, var_1.x != ~u_input.b));
}

fn func_1() -> Struct_1 {
    let var_0 = func_2(938f, Struct_1(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global2[_wgslsmith_index_u32(u_input.b, 1u)]) + _wgslsmith_f_op_vec2_f32(vec2<f32>(163f, 2124f) * global2[_wgslsmith_index_u32(10067u, 1u)]))))), Struct_1(_wgslsmith_f_op_vec2_f32(global2[_wgslsmith_index_u32(min(select(u_input.c, u_input.b, true), ~0u), 1u)] * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(global2[_wgslsmith_index_u32(1u, 1u)], global2[_wgslsmith_index_u32(u_input.b, 1u)], false))))));
    var var_1 = Struct_1(global2[_wgslsmith_index_u32(var_0.b.x, 1u)]);
    let var_2 = !vec3<bool>(true, min(~var_0.b.x, ~u_input.b) == ~1u, u_input.a.x >= -1720i);
    let var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -828f), var_1.a.x)));
    let var_4 = select(var_2, !(!(!select(var_2, vec3<bool>(false, false, var_0.c.x), false))), select(select(vec3<bool>(all(vec4<bool>(true, true, var_2.x, var_2.x)), -2541f >= var_3.a.x, true), !vec3<bool>(var_0.c.x, var_2.x, var_2.x), true), !vec3<bool>(true, func_3(vec4<f32>(310f, var_3.a.x, var_1.a.x, var_3.a.x)).x, !var_0.c.x), true));
    return Struct_1(_wgslsmith_div_vec2_f32(var_1.a, _wgslsmith_f_op_vec2_f32(ceil(var_3.a))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_clamp_vec4_i32(vec4<i32>(-_wgslsmith_dot_vec3_i32(~global1[_wgslsmith_index_u32(9377u, 23u)], _wgslsmith_add_vec3_i32(vec3<i32>(-24412i, u_input.a.x, -1i), vec3<i32>(-75906i, 30725i, u_input.a.x))), -(~global0[_wgslsmith_index_u32(u_input.c, 3u)]), -1359i, -57294i), vec4<i32>(~(-2147483647i), i32(-1i) * -(global0[_wgslsmith_index_u32(4294967295u, 3u)] >> (0u % 32u)), ~max(global0[_wgslsmith_index_u32(u_input.c, 3u)], -2147483647i) << (_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(18750u, 73688u, 4294967295u, u_input.b), vec4<u32>(4294967295u, 0u, u_input.b, 4823u)), vec4<u32>(0u, u_input.d.x, 0u, u_input.d.x)) % 32u), ~(_wgslsmith_dot_vec4_i32(u_input.a, u_input.a) & ~0i)), ~(-u_input.a));
    global1 = array<vec3<i32>, 23>();
    var var_1 = func_1();
    var var_2 = _wgslsmith_div_vec2_u32(u_input.d.zy, abs(_wgslsmith_clamp_vec2_u32(firstLeadingBit(select(u_input.d.zy, vec2<u32>(64026u, u_input.c), false)), abs(func_4(vec2<bool>(false, true), Struct_1(global2[_wgslsmith_index_u32(u_input.b, 1u)]), true).yz), vec2<u32>(countOneBits(28590u), ~u_input.d.x))));
    var_2 = _wgslsmith_add_vec2_u32(select(vec2<u32>(~1u, _wgslsmith_mod_u32(~u_input.c, _wgslsmith_sub_u32(0u, var_2.x))), select(abs(~u_input.d.yz), ~vec2<u32>(u_input.b, 0u), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(true, true), true)), vec2<u32>(_wgslsmith_div_u32(u_input.c & (33511u & var_2.x), 29330u), func_2(_wgslsmith_f_op_f32(-var_1.a.x), func_1(), Struct_1(_wgslsmith_div_vec2_f32(vec2<f32>(394f, var_1.a.x), vec2<f32>(var_1.a.x, 2402f)))).a));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d);
}

