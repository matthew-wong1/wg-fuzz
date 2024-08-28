struct Struct_1 {
    a: vec3<bool>,
    b: vec3<f32>,
    c: u32,
    d: vec2<f32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: f32,
    c: vec4<f32>,
    d: bool,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<f32>,
    c: f32,
    d: vec4<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 7>;

var<private> global1: f32;

var<private> global2: array<Struct_2, 13>;

var<private> global3: array<bool, 21>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: i32, arg_1: Struct_2, arg_2: f32) -> u32 {
    let var_0 = select(select(vec4<bool>(!(178f > arg_1.e.b.x), all(!arg_1.e.a.yz), true, true), select(select(!vec4<bool>(arg_1.e.a.x, arg_1.d, arg_1.d, arg_1.e.a.x), select(vec4<bool>(arg_1.d, global3[_wgslsmith_index_u32(arg_1.e.c, 21u)], false, arg_1.e.a.x), vec4<bool>(arg_1.e.a.x, global3[_wgslsmith_index_u32(arg_1.e.c, 21u)], true, global3[_wgslsmith_index_u32(0u, 21u)]), vec4<bool>(true, arg_1.e.a.x, true, false)), select(vec4<bool>(false, true, global3[_wgslsmith_index_u32(73008u, 21u)], true), vec4<bool>(false, true, false, global3[_wgslsmith_index_u32(1u, 21u)]), vec4<bool>(true, arg_1.d, false, arg_1.e.a.x))), vec4<bool>(false, true, arg_1.d, true), vec4<bool>(select(true, false, false), !global3[_wgslsmith_index_u32(0u, 21u)], all(vec4<bool>(true, arg_1.d, global3[_wgslsmith_index_u32(u_input.b.x, 21u)], false)), false)), vec4<bool>(global3[_wgslsmith_index_u32(_wgslsmith_div_u32(~43933u, u_input.b.x), 21u)], all(vec4<bool>(arg_1.d, global3[_wgslsmith_index_u32(arg_1.e.c, 21u)], true, true)) | arg_1.d, all(vec2<bool>(arg_1.e.a.x, true)), select(all(vec4<bool>(global3[_wgslsmith_index_u32(arg_1.a.x, 21u)], global3[_wgslsmith_index_u32(u_input.c.x, 21u)], global3[_wgslsmith_index_u32(28860u, 21u)], arg_1.e.a.x)), 434f == arg_1.c.x, arg_0 != arg_0))), select(select(select(select(vec4<bool>(arg_1.e.a.x, false, arg_1.d, arg_1.e.a.x), vec4<bool>(true, global3[_wgslsmith_index_u32(arg_1.a.x, 21u)], false, arg_1.e.a.x), vec4<bool>(false, true, false, false)), select(vec4<bool>(arg_1.e.a.x, arg_1.d, arg_1.d, false), vec4<bool>(false, false, global3[_wgslsmith_index_u32(u_input.a, 21u)], arg_1.d), false), vec4<bool>(true, true, arg_1.e.a.x, arg_1.d)), !select(vec4<bool>(false, false, arg_1.d, arg_1.e.a.x), vec4<bool>(false, global3[_wgslsmith_index_u32(17117u, 21u)], global3[_wgslsmith_index_u32(arg_1.a.x, 21u)], global3[_wgslsmith_index_u32(arg_1.e.c, 21u)]), false), all(arg_1.e.a.yx)), vec4<bool>(false && arg_1.d, false, !(!global3[_wgslsmith_index_u32(1u, 21u)]), any(arg_1.e.a)), !select(!vec4<bool>(false, true, global3[_wgslsmith_index_u32(arg_1.a.x, 21u)], global3[_wgslsmith_index_u32(arg_1.a.x, 21u)]), vec4<bool>(global3[_wgslsmith_index_u32(21133u, 21u)], global3[_wgslsmith_index_u32(u_input.b.x, 21u)], false, arg_1.d), vec4<bool>(true, false, arg_1.d, arg_1.e.a.x))), all(!select(select(vec4<bool>(true, arg_1.e.a.x, true, arg_1.e.a.x), vec4<bool>(true, arg_1.e.a.x, global3[_wgslsmith_index_u32(arg_1.a.x, 21u)], true), vec4<bool>(false, false, arg_1.d, global3[_wgslsmith_index_u32(13467u, 21u)])), !vec4<bool>(arg_1.e.a.x, true, arg_1.d, true), select(global3[_wgslsmith_index_u32(4294967295u, 21u)], false, false))));
    let var_1 = arg_0;
    let var_2 = Struct_2(arg_1.a, arg_1.c.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(arg_1.c, vec4<f32>(_wgslsmith_f_op_f32(select(arg_1.c.x, -1349f, true)), arg_1.e.d.x, arg_2, arg_2))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_1.c)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_2, 902f, arg_2, 369f), vec4<f32>(arg_1.c.x, arg_2, 469f, -578f))) * _wgslsmith_f_op_vec4_f32(exp2(arg_1.c))))), true, arg_1.e);
    var var_3 = firstLeadingBit(1i);
    var var_4 = arg_1.e;
    return ~_wgslsmith_dot_vec4_u32(arg_1.a | vec4<u32>(_wgslsmith_sub_u32(var_4.c, 2611u), var_2.e.c, 64532u, ~15668u), reverseBits(var_2.a));
}

fn func_2(arg_0: vec2<bool>, arg_1: vec2<f32>, arg_2: bool) -> f32 {
    let var_0 = Struct_2(vec4<u32>(_wgslsmith_mult_u32(func_3(1i, Struct_2(vec4<u32>(u_input.a, 4294967295u, u_input.a, 34528u), -1723f, vec4<f32>(479f, 813f, arg_1.x, -1304f), true, Struct_1(vec3<bool>(arg_2, true, false), vec3<f32>(arg_1.x, 1349f, arg_1.x), u_input.c.x, vec2<f32>(1185f, arg_1.x))), arg_1.x), u_input.a), ~_wgslsmith_div_u32(~1u, ~68604u), u_input.b.x, _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a, 4294967295u, 57686u, u_input.a), vec4<u32>(0u, u_input.d, 0u, 11696u)), u_input.d)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_1.x, arg_1.x)) - _wgslsmith_f_op_f32(select(arg_1.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_1.x * arg_1.x))), false))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(vec4<f32>(-1195f, arg_1.x, arg_1.x, -1707f), vec4<f32>(-169f, 868f, -1358f, -813f)))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1837f, -850f, -1345f, arg_1.x))), !select(vec4<bool>(true, true, arg_0.x, arg_2), vec4<bool>(false, global3[_wgslsmith_index_u32(u_input.d, 21u)], arg_0.x, false), true))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(514f, -1000f, arg_1.x, arg_1.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(176f, arg_1.x, -320f, -1596f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1173f, arg_1.x, 955f, arg_1.x))))))), any(select(select(!vec3<bool>(arg_0.x, global3[_wgslsmith_index_u32(1u, 21u)], global3[_wgslsmith_index_u32(u_input.c.x, 21u)]), vec3<bool>(false, true, false), u_input.b.x >= 43210u), vec3<bool>(all(vec3<bool>(arg_0.x, global3[_wgslsmith_index_u32(u_input.d, 21u)], false)), !arg_2, all(arg_0)), select(vec3<bool>(false, global3[_wgslsmith_index_u32(u_input.c.x, 21u)], true), !vec3<bool>(arg_0.x, global3[_wgslsmith_index_u32(19445u, 21u)], true), true))), Struct_1(!vec3<bool>(arg_0.x, arg_2, true), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(1200f, -154f, 118f), vec3<f32>(129f, -490f, arg_1.x))) * _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_1.x, arg_1.x, arg_1.x)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.x, 572f, -1075f) + vec3<f32>(arg_1.x, -1909f, arg_1.x)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-149f, arg_1.x, arg_1.x))), all(arg_0))), _wgslsmith_add_u32(12657u, u_input.d), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(-514f, -118f) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-422f, 1685f) + arg_1))))));
    return arg_1.x;
}

fn func_1(arg_0: vec3<f32>, arg_1: i32) -> bool {
    global1 = _wgslsmith_f_op_f32(round(-1079f));
    var var_0 = Struct_2(~(~vec4<u32>(~24894u, 57078u, ~u_input.c.x, abs(u_input.c.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(vec2<bool>(global3[_wgslsmith_index_u32(u_input.b.x, 21u)], global3[_wgslsmith_index_u32(56468u, 21u)]), _wgslsmith_f_op_vec2_f32(arg_0.xx * vec2<f32>(-1739f, 1000f)), 0u > u_input.c.x)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x * arg_0.x) - arg_0.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_0.x, arg_0.x, -192f, arg_0.x))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(126f, arg_0.x, arg_0.x, -2041f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1613f), _wgslsmith_f_op_f32(arg_0.x - arg_0.x), arg_0.x, _wgslsmith_f_op_f32(arg_0.x * 1394f)) - vec4<f32>(-274f, arg_0.x, arg_0.x, 1f))), all(!select(!vec3<bool>(true, true, global3[_wgslsmith_index_u32(u_input.c.x, 21u)]), vec3<bool>(false, global3[_wgslsmith_index_u32(u_input.a, 21u)], false), !global3[_wgslsmith_index_u32(u_input.c.x, 21u)])), Struct_1(!(!(!vec3<bool>(false, false, global3[_wgslsmith_index_u32(u_input.b.x, 21u)]))), _wgslsmith_f_op_vec3_f32(select(arg_0, _wgslsmith_f_op_vec3_f32(-arg_0), select(true, true, !global3[_wgslsmith_index_u32(1u, 21u)]))), ~(~25760u), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(arg_0.zz)), _wgslsmith_f_op_vec2_f32(arg_0.xz + _wgslsmith_f_op_vec2_f32(-arg_0.zz)))));
    var var_1 = ~abs(u_input.b);
    var var_2 = Struct_1(vec3<bool>(select(false, !var_0.e.a.x & (global3[_wgslsmith_index_u32(72952u, 21u)] & false), true), var_0.d, any(var_0.e.a)), _wgslsmith_f_op_vec3_f32(select(arg_0, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(692f, var_0.c.x, arg_0.x)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(var_0.c.zzw)), _wgslsmith_f_op_vec3_f32(arg_0 * vec3<f32>(786f, -638f, 1000f)), !vec3<bool>(true, global3[_wgslsmith_index_u32(0u, 21u)], false)))), any(vec3<bool>(all(var_0.e.a), var_0.e.a.x, all(var_0.e.a.zx))))), ~reverseBits(~var_0.a.x ^ (var_0.a.x << (37907u % 32u))), _wgslsmith_f_op_vec2_f32(-arg_0.yy));
    var_1 = vec3<u32>(u_input.a, 0u, ~_wgslsmith_mult_u32(reverseBits(4294967295u), var_0.a.x) | 0u);
    return select(all(vec3<bool>(false, var_0.e.c < ~var_1.x, global3[_wgslsmith_index_u32(var_1.x, 21u)])), select(1i >= arg_1, true, true), true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 369f;
    var var_1 = u_input.c.x;
    global2 = array<Struct_2, 13>();
    var var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(595f)) - _wgslsmith_f_op_f32(trunc(861f))) - 1611f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(718f + _wgslsmith_f_op_f32(abs(-1203f))) - 1f), 541f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1404f) * _wgslsmith_div_f32(660f, 1123f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -374f), _wgslsmith_f_op_f32(f32(-1f) * -253f)), func_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1022f, 1000f, -551f)), _wgslsmith_add_i32(0i, 58741i))))));
    var_1 = abs(firstTrailingBit(0u));
    var var_3 = Struct_2(firstTrailingBit(_wgslsmith_mod_vec4_u32(~abs(vec4<u32>(u_input.d, u_input.d, 1u, 76258u)), ~abs(vec4<u32>(u_input.c.x, 38212u, u_input.b.x, 0u)))), var_2.x, _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_2.x, var_2.x, var_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-820f - var_2.x) - _wgslsmith_f_op_f32(-var_2.x))))), global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(_wgslsmith_clamp_u32(u_input.b.x, u_input.b.x, u_input.d), 36188u)), u_input.b.zy), 21u)], Struct_1(!(!(!vec3<bool>(global3[_wgslsmith_index_u32(48403u, 21u)], global3[_wgslsmith_index_u32(4294967295u, 21u)], global3[_wgslsmith_index_u32(58244u, 21u)]))), _wgslsmith_f_op_vec3_f32(-var_2.ywx), 1u, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1269f, var_2.x), var_2.zz)), vec2<f32>(var_2.x, 174f))), _wgslsmith_f_op_vec2_f32(var_2.zy + vec2<f32>(1227f, 1036f)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec3_u32(~(~u_input.b), countOneBits(u_input.b)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-212f, var_2.x, 1000f, 214f) - _wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_3.e.b.x, 1743f, 604f, -2966f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(2261f, var_2.x, 1142f, var_3.c.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(932f, -616f, var_2.x, var_2.x) * var_3.c), all(vec4<bool>(global3[_wgslsmith_index_u32(6228u, 21u)], true, false, true)))))), var_3.b, _wgslsmith_clamp_vec4_u32(vec4<u32>(var_3.e.c, ~max(4294967295u, var_3.a.x), _wgslsmith_add_u32(1u, _wgslsmith_sub_u32(u_input.d, var_3.a.x)), abs(firstLeadingBit(var_3.e.c))), var_3.a, vec4<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(53176u, u_input.c.x, 74492u, 8824u), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.d, u_input.a, 4294967295u, u_input.c.x), var_3.a, vec4<u32>(var_3.a.x, var_3.e.c, var_3.e.c, u_input.a))), u_input.b.x, u_input.d, 33741u)), _wgslsmith_f_op_f32(388f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(var_2.x, var_3.b))))));
}

