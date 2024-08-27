struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: i32,
    b: vec4<f32>,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 25> = array<vec3<i32>, 25>(vec3<i32>(18734i, 24490i, 54547i), vec3<i32>(1i, -38538i, 0i), vec3<i32>(-1i, -13673i, 32005i), vec3<i32>(1i, -19459i, -1i), vec3<i32>(-36106i, 2147483647i, 1i), vec3<i32>(-2226i, 35676i, 1i), vec3<i32>(2147483647i, -27522i, -1i), vec3<i32>(1i, 42299i, 0i), vec3<i32>(1i, 1i, -15096i), vec3<i32>(3399i, 48620i, -1426i), vec3<i32>(-18041i, 52754i, -24474i), vec3<i32>(i32(-2147483648), i32(-2147483648), -55331i), vec3<i32>(37786i, -20897i, 1i), vec3<i32>(8145i, 2147483647i, 0i), vec3<i32>(6621i, 0i, 14226i), vec3<i32>(46144i, i32(-2147483648), -16456i), vec3<i32>(-1i, i32(-2147483648), 1i), vec3<i32>(-1i, 0i, 0i), vec3<i32>(i32(-2147483648), -4033i, -1i), vec3<i32>(26316i, -59942i, -1i), vec3<i32>(-14136i, -41142i, i32(-2147483648)), vec3<i32>(14164i, -1i, i32(-2147483648)), vec3<i32>(-1i, -38460i, 27043i), vec3<i32>(-28528i, 0i, i32(-2147483648)), vec3<i32>(0i, 0i, i32(-2147483648)));

var<private> global1: array<vec3<u32>, 26> = array<vec3<u32>, 26>(vec3<u32>(23816u, 69370u, 1u), vec3<u32>(4294967295u, 15169u, 79273u), vec3<u32>(0u, 6607u, 56629u), vec3<u32>(44248u, 0u, 24511u), vec3<u32>(92288u, 7244u, 1u), vec3<u32>(21700u, 1u, 9660u), vec3<u32>(4294967295u, 4294967295u, 16760u), vec3<u32>(0u, 7566u, 1u), vec3<u32>(1u, 1u, 4294967295u), vec3<u32>(4294967295u, 4294967295u, 2893u), vec3<u32>(4294967295u, 30582u, 0u), vec3<u32>(1u, 4294967295u, 3927u), vec3<u32>(4294967295u, 0u, 2878u), vec3<u32>(0u, 24978u, 34076u), vec3<u32>(75388u, 8958u, 14931u), vec3<u32>(1u, 14518u, 4294967295u), vec3<u32>(4294967295u, 1u, 129211u), vec3<u32>(0u, 106256u, 89237u), vec3<u32>(30937u, 0u, 2937u), vec3<u32>(0u, 41554u, 2537u), vec3<u32>(19274u, 62410u, 4294967295u), vec3<u32>(0u, 0u, 1u), vec3<u32>(8934u, 30772u, 42442u), vec3<u32>(0u, 19744u, 1u), vec3<u32>(9250u, 0u, 34062u), vec3<u32>(69737u, 29024u, 1u));

var<private> global2: Struct_2;

var<private> global3: vec4<f32>;

var<private> global4: array<vec2<f32>, 9> = array<vec2<f32>, 9>(vec2<f32>(714f, -916f), vec2<f32>(-695f, -1201f), vec2<f32>(-1158f, -880f), vec2<f32>(1259f, 1388f), vec2<f32>(-201f, -231f), vec2<f32>(1095f, 167f), vec2<f32>(-170f, 1000f), vec2<f32>(1768f, 370f), vec2<f32>(-635f, 924f));

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
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

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_2(arg_0: f32) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.b.x));
    var var_1 = true;
    var var_2 = Struct_3((i32(-1i) * -67010i) < (max(global2.a, -u_input.a.x) >> (54256u % 32u)));
    var var_3 = _wgslsmith_f_op_f32(-1002f * _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(global2.b.x, _wgslsmith_f_op_f32(ceil(-1075f))))));
    var_3 = global3.x;
    return Struct_2(~_wgslsmith_div_i32(global2.a, 11254i), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(sign(global2.b)))));
}

fn func_3(arg_0: Struct_2, arg_1: f32, arg_2: f32) -> vec2<i32> {
    let var_0 = _wgslsmith_div_vec3_u32(abs(_wgslsmith_mult_vec3_u32(abs(vec3<u32>(u_input.b.x, u_input.b.x, 1u)), _wgslsmith_add_vec3_u32(global1[_wgslsmith_index_u32(33190u, 26u)], global1[_wgslsmith_index_u32(u_input.d, 26u)]))), vec3<u32>(4294967295u, u_input.c, 38601u)) >> (vec3<u32>(~(_wgslsmith_dot_vec3_u32(u_input.b, global1[_wgslsmith_index_u32(u_input.d, 26u)]) ^ 4294967295u), _wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(1u, u_input.b.x, u_input.d)), ~firstLeadingBit(global1[_wgslsmith_index_u32(u_input.c, 26u)])), 1u) % vec3<u32>(32u));
    global1 = array<vec3<u32>, 26>();
    global2 = Struct_2(~1i, global2.b);
    var var_1 = Struct_2(global2.a, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_0.b)))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1383f, _wgslsmith_f_op_f32(142f - global3.x), arg_0.b.x, -852f), global2.b))));
    global2 = arg_0;
    return max(u_input.a, select(_wgslsmith_mult_vec2_i32(vec2<i32>(-1i) * -u_input.a, vec2<i32>(arg_0.a, var_1.a >> (1u % 32u))), countOneBits(~_wgslsmith_clamp_vec2_i32(vec2<i32>(1i, 0i), vec2<i32>(var_1.a, 82829i), vec2<i32>(39782i, var_1.a))), select(all(vec2<bool>(true, true)), false, any(vec3<bool>(true, true, false)) == (arg_0.a > var_1.a))));
}

fn func_1(arg_0: u32) -> f32 {
    var var_0 = func_2(global2.b.x);
    var_0 = func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(156f + 570f) * var_0.b.x)) - global3.x));
    let var_1 = Struct_3(true);
    var var_2 = _wgslsmith_mod_vec2_i32(~(~_wgslsmith_mult_vec2_i32(select(vec2<i32>(1i, -16908i), vec2<i32>(u_input.a.x, 27239i), vec2<bool>(true, false)), -vec2<i32>(0i, 2147483647i))), -abs(func_3(func_2(global3.x), global3.x, _wgslsmith_f_op_f32(step(global2.b.x, global2.b.x)))));
    var var_3 = Struct_1(_wgslsmith_mod_u32(arg_0, _wgslsmith_dot_vec3_u32(~_wgslsmith_sub_vec3_u32(vec3<u32>(10950u, u_input.c, 10382u), global1[_wgslsmith_index_u32(1u, 26u)]), firstLeadingBit(_wgslsmith_sub_vec3_u32(vec3<u32>(55950u, 21541u, 0u), vec3<u32>(u_input.d, 17829u, 0u))))));
    return global3.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(0u)))), _wgslsmith_f_op_f32(round(func_2(1684f).b.x)))));
    var var_1 = _wgslsmith_div_vec2_u32(select(_wgslsmith_div_vec2_u32(_wgslsmith_mult_vec2_u32(u_input.b.yx, u_input.b.zy), vec2<u32>(2077u, u_input.b.x) | vec2<u32>(7304u, 19837u)), vec2<u32>(u_input.b.x, _wgslsmith_div_u32(1u, u_input.b.x)), all(vec4<bool>(true, false, false, false))), u_input.b.yx) >> (~min(_wgslsmith_add_vec2_u32(u_input.b.xz, max(vec2<u32>(u_input.c, 13948u), u_input.b.yy)), u_input.b.zy) % vec2<u32>(32u));
    let var_2 = Struct_3(any(select(vec2<bool>(true, any(vec3<bool>(false, true, false))), vec2<bool>(-2147483647i > u_input.a.x, true), vec2<bool>(true, true))));
    var var_3 = Struct_4(Struct_1(countOneBits(~var_1.x & ~var_1.x)), var_2, vec4<f32>(_wgslsmith_f_op_f32(step(1778f, _wgslsmith_f_op_f32(select(-219f, _wgslsmith_div_f32(global2.b.x, global3.x), var_2.a)))), _wgslsmith_f_op_f32(-global3.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(120f * -1956f))) * global3.x), _wgslsmith_f_op_f32(-372f - -788f)));
    var_0 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(trunc(-740f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global3.x), -895f)), _wgslsmith_f_op_vec3_f32(-var_3.c.wwz), select(vec3<bool>(var_2.a, !var_2.a, false), vec3<bool>(true, var_2.a, true), vec3<bool>(any(vec4<bool>(false, true, true, true)), var_2.a, -1000f >= var_0.x))))));
    var var_4 = -472f;
    var var_5 = vec2<i32>(-2147483647i & _wgslsmith_dot_vec2_i32(u_input.a, u_input.a | (u_input.a << (vec2<u32>(33497u, var_3.a.a) % vec2<u32>(32u)))), ~(((global2.a & global2.a) ^ _wgslsmith_mod_i32(u_input.a.x, u_input.a.x)) | 47153i));
    let var_6 = Struct_1(23115u);
    let var_7 = _wgslsmith_mult_u32(var_1.x, abs(_wgslsmith_sub_u32(~1u, u_input.d)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global2.b) * vec4<f32>(_wgslsmith_f_op_f32(-global2.b.x), _wgslsmith_f_op_f32(step(493f, -575f)), global3.x, var_3.c.x)) + global2.b), ~u_input.b.xz, ~_wgslsmith_add_u32(116273u, _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(35986u, 0u, 4294967295u, 108846u), vec4<u32>(var_1.x, 0u, var_3.a.a, var_7)), 4294967295u | var_6.a)));
}

