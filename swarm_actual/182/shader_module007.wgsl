struct Struct_1 {
    a: vec2<u32>,
    b: f32,
    c: vec2<u32>,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: vec4<u32>,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 31>;

var<private> global1: u32 = 1u;

var<private> global2: array<u32, 16>;

var<private> global3: array<vec4<f32>, 31> = array<vec4<f32>, 31>(vec4<f32>(-1708f, 300f, 767f, 1000f), vec4<f32>(1511f, -432f, -287f, -2641f), vec4<f32>(-686f, -1394f, 884f, -1807f), vec4<f32>(366f, 463f, 479f, -1242f), vec4<f32>(-166f, 555f, -589f, -1000f), vec4<f32>(1956f, 407f, 258f, 961f), vec4<f32>(-591f, 356f, 708f, 1000f), vec4<f32>(-112f, 548f, 2137f, 1583f), vec4<f32>(499f, -1000f, -1009f, 410f), vec4<f32>(-823f, 1057f, 1000f, -485f), vec4<f32>(407f, -344f, -798f, -1000f), vec4<f32>(-326f, 1000f, 129f, 1480f), vec4<f32>(979f, 515f, -179f, -415f), vec4<f32>(-523f, -310f, 312f, -1041f), vec4<f32>(285f, 1000f, 1686f, -456f), vec4<f32>(-1329f, 374f, 1617f, -1008f), vec4<f32>(-1696f, 272f, 137f, -1805f), vec4<f32>(242f, -804f, 156f, 625f), vec4<f32>(2759f, -971f, 192f, -256f), vec4<f32>(577f, 801f, -577f, 197f), vec4<f32>(607f, -450f, -624f, 261f), vec4<f32>(287f, 165f, -1038f, 388f), vec4<f32>(-656f, 360f, -223f, -235f), vec4<f32>(140f, 630f, 1779f, 752f), vec4<f32>(1522f, 1715f, -983f, -733f), vec4<f32>(801f, -2335f, -726f, 1439f), vec4<f32>(-1358f, -1262f, 1112f, -2580f), vec4<f32>(-480f, -148f, -1000f, 974f), vec4<f32>(1159f, 540f, -1143f, -500f), vec4<f32>(-379f, 116f, 2985f, -1630f), vec4<f32>(1442f, -881f, 545f, -731f));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: Struct_1) -> i32 {
    global0 = array<vec3<bool>, 31>();
    global3 = array<vec4<f32>, 31>();
    var var_0 = arg_0;
    global0 = array<vec3<bool>, 31>();
    var var_1 = arg_0;
    return ~_wgslsmith_sub_i32(_wgslsmith_add_i32(1i, _wgslsmith_clamp_i32(2147483647i, ~2147483647i, 0i)), -2147483647i);
}

fn func_2(arg_0: bool, arg_1: f32) -> f32 {
    global1 = 20974u;
    let var_0 = reverseBits(_wgslsmith_mult_i32(min(_wgslsmith_dot_vec3_i32(-vec3<i32>(-28062i, -2147483647i, 1i), -vec3<i32>(2147483647i, -23555i, 0i)), 15807i), _wgslsmith_clamp_i32(1i, firstLeadingBit(-12282i), func_3(Struct_1(u_input.c, -252f, vec2<u32>(global2[_wgslsmith_index_u32(0u, 16u)], 1u), vec3<f32>(-118f, arg_1, -1143f))))));
    let var_1 = Struct_1(vec2<u32>(~u_input.c.x, u_input.a | u_input.b), arg_1, max(_wgslsmith_div_vec2_u32(select(vec2<u32>(7053u, u_input.a), vec2<u32>(4294967295u, 0u), false), ~vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 16u)], 16u)], 0u)), _wgslsmith_mod_vec2_u32(vec2<u32>(1u, ~u_input.a), select(vec2<u32>(global2[_wgslsmith_index_u32(5848u, 16u)], 11701u), u_input.c, vec2<bool>(false, false)) | vec2<u32>(u_input.a, u_input.b))), vec3<f32>(463f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1445f))) + _wgslsmith_f_op_f32(min(-290f, 2659f))), _wgslsmith_f_op_f32(step(-630f, -271f))));
    let var_2 = ~_wgslsmith_add_vec2_i32(firstLeadingBit(~(vec2<i32>(10556i, var_0) << (vec2<u32>(u_input.a, u_input.b) % vec2<u32>(32u)))), countOneBits(max(vec2<i32>(0i, var_0), vec2<i32>(var_0, var_0)) >> (~vec2<u32>(global2[_wgslsmith_index_u32(1u, 16u)], 0u) % vec2<u32>(32u))));
    let var_3 = var_1;
    return -1000f;
}

fn func_1(arg_0: vec2<bool>, arg_1: i32) -> f32 {
    global0 = array<vec3<bool>, 31>();
    var var_0 = Struct_1(select(u_input.c, vec2<u32>(26900u, ~(~1u)), ~(~u_input.a) >= ~_wgslsmith_sub_u32(4294967295u, 13254u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(259f)) + _wgslsmith_f_op_f32(func_2(true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1928f * 935f) - _wgslsmith_f_op_f32(130f - -273f))))), ~(~((vec2<u32>(1u, 1u) ^ vec2<u32>(1u, u_input.b)) ^ ~u_input.c)), _wgslsmith_div_vec3_f32(vec3<f32>(1123f, _wgslsmith_f_op_f32(-790f - _wgslsmith_f_op_f32(round(-788f))), _wgslsmith_f_op_f32(step(536f, _wgslsmith_f_op_f32(f32(-1f) * -751f)))), vec3<f32>(430f, 1822f, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-2004f, 371f), _wgslsmith_f_op_f32(904f + 496f))))));
    var var_1 = vec3<bool>(any(vec3<bool>(false, all(vec2<bool>(false, arg_0.x)), !all(vec4<bool>(true, false, true, true)))), !(arg_0.x | (arg_1 == arg_1)) & true, arg_0.x);
    var var_2 = vec3<f32>(-865f, _wgslsmith_f_op_f32(func_2(false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(434f, -509f)) * var_0.b) + 1000f))), 156f);
    let var_3 = Struct_1(vec2<u32>(global2[_wgslsmith_index_u32(~_wgslsmith_div_u32(~65657u, var_0.a.x), 16u)], reverseBits(firstLeadingBit(_wgslsmith_div_u32(var_0.a.x, 64341u)))), -1000f, _wgslsmith_sub_vec2_u32(vec2<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, var_0.a.x, 19824u), vec3<u32>(global2[_wgslsmith_index_u32(31717u, 16u)], 1570u, var_0.a.x)), ~19341u << (min(var_0.a.x, u_input.c.x) % 32u)), ~(vec2<u32>(62635u, var_0.a.x) | ~vec2<u32>(53024u, var_0.a.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1956f, -1049f, 581f))))));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(var_2.x, var_3.d.x), -643f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.b + -872f) * var_3.b)), var_0.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(2019f, 180f))) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-496f + -228f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-792f)) - _wgslsmith_f_op_f32(f32(-1f) * -294f))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1000f - 279f))) * _wgslsmith_f_op_f32(func_1(select(vec2<bool>(true, true), vec2<bool>(false, true), false), 1i)))));
    let var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(exp2(var_0)), var_0) - _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(965f + var_0), _wgslsmith_f_op_f32(var_0 * -985f)), -1785f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-812f, 2257f, true)))))));
    var var_2 = Struct_1(vec2<u32>(1u, u_input.a), _wgslsmith_div_f32(var_1.x, 500f), vec2<u32>(0u, ~u_input.c.x), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(var_1)), _wgslsmith_f_op_vec3_f32(select(var_1, var_1, global0[_wgslsmith_index_u32(4294967295u, 31u)])))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1003f, -869f, var_1.x)), var_1, all(vec4<bool>(true, true, false, false)) || all(vec4<bool>(false, false, true, true)))))));
    let var_3 = Struct_1(vec2<u32>(~u_input.b, 127121u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_1.x))), vec2<u32>(1u, 0u) ^ (u_input.c | _wgslsmith_clamp_vec2_u32(vec2<u32>(0u, global2[_wgslsmith_index_u32(1u, 16u)]), ~var_2.c, ~vec2<u32>(var_2.a.x, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 16u)], 16u)]))), var_2.d);
    global3 = array<vec4<f32>, 31>();
    let var_4 = 0u;
    var var_5 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_3.d)))))) - var_3.d);
    var var_6 = Struct_1(_wgslsmith_sub_vec2_u32(select(min(_wgslsmith_mult_vec2_u32(vec2<u32>(var_3.a.x, 0u), vec2<u32>(var_3.a.x, 1u)), var_2.a), ~vec2<u32>(var_4, 28665u), vec2<bool>(true, true)), ~firstTrailingBit(vec2<u32>(10357u, 0u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 + _wgslsmith_f_op_f32(trunc(var_0)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - var_2.b) * _wgslsmith_f_op_f32(-1877f - 2353f)))), reverseBits(min(var_3.c, var_3.c >> (vec2<u32>(0u, u_input.a) % vec2<u32>(32u)))) >> ((~(~vec2<u32>(u_input.b, 4294967295u)) | _wgslsmith_div_vec2_u32(~u_input.c, vec2<u32>(15961u, var_4))) % vec2<u32>(32u)), var_3.d);
    var_2 = Struct_1(vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a, 16u)] | global2[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(firstTrailingBit(1u), 16u)], 16u)], 16u)], ~1u ^ var_4), -331f, ~(~vec2<u32>(var_6.a.x, var_2.c.x) >> (min(var_3.a, var_6.c) % vec2<u32>(32u))) | vec2<u32>(71700u, ~var_3.c.x), var_1);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(min(var_0, _wgslsmith_div_f32(1000f, 823f))), var_2.b))), -1000f, (vec4<u32>(select(global2[_wgslsmith_index_u32(var_4, 16u)], var_4, false), 8560u, var_2.c.x, ~274u) | vec4<u32>(global2[_wgslsmith_index_u32(1u, 16u)] & var_3.c.x, ~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 16u)], 16u)], _wgslsmith_div_u32(var_4, var_2.a.x), var_4)) & ~(_wgslsmith_add_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(16351u, 16u)], var_6.a.x, var_2.c.x, 18210u), vec4<u32>(var_3.c.x, var_3.c.x, global2[_wgslsmith_index_u32(u_input.b, 16u)], 1u)) >> (vec4<u32>(0u, 1u, var_2.c.x, 0u) % vec4<u32>(32u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-517f, _wgslsmith_f_op_f32(ceil(var_2.b)))) + _wgslsmith_f_op_f32(step(1000f, -870f))) * var_5.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_2(false, 1000f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_1.x)) - var_0)) + _wgslsmith_f_op_f32(-var_5.x)));
}

