struct Struct_1 {
    a: f32,
    b: f32,
    c: f32,
    d: vec4<u32>,
    e: vec4<bool>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: i32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<vec2<f32>, 11> = array<vec2<f32>, 11>(vec2<f32>(2146f, 1174f), vec2<f32>(-1505f, -266f), vec2<f32>(2019f, 523f), vec2<f32>(527f, -772f), vec2<f32>(1008f, -1000f), vec2<f32>(-118f, 1761f), vec2<f32>(-481f, 195f), vec2<f32>(-1171f, -333f), vec2<f32>(913f, 394f), vec2<f32>(219f, -1000f), vec2<f32>(-1000f, -440f));

var<private> global2: vec2<bool> = vec2<bool>(true, true);

var<private> global3: array<u32, 9>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3() -> f32 {
    global2 = !vec2<bool>(all(!vec4<bool>(true, global2.x, global2.x, global2.x)), global2.x);
    var var_0 = Struct_2(global2.x, Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1313f)), _wgslsmith_f_op_f32(-1607f + -1016f))), -124f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1272f, _wgslsmith_f_op_f32(sign(228f)))), vec4<u32>(~_wgslsmith_mult_u32(global3[_wgslsmith_index_u32(4294967295u, 9u)], 0u), ~global3[_wgslsmith_index_u32(firstLeadingBit(61520u), 9u)], _wgslsmith_mod_u32(_wgslsmith_clamp_u32(13280u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 9u)], 9u)], 9u)], global3[_wgslsmith_index_u32(4294967295u, 9u)]), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(4294967295u, 5340u))), ~(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(32152u, 9u)], 9u)], 9u)] & global3[_wgslsmith_index_u32(1u, 9u)])), vec4<bool>(true, 10313i > _wgslsmith_add_i32(u_input.a, u_input.a), false, true)));
    let var_1 = 4958u;
    global2 = var_0.b.e.wx;
    var_0 = Struct_2(true, Struct_1(_wgslsmith_f_op_f32(trunc(var_0.b.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.b + var_0.b.a))), _wgslsmith_f_op_f32(-var_0.b.a), countOneBits(~vec4<u32>(24020u, var_1, 20936u, global3[_wgslsmith_index_u32(3268u, 9u)])), !select(vec4<bool>(false, global2.x, var_0.a, global2.x), vec4<bool>(var_0.a, true, false, false), global2.x)));
    return var_0.b.c;
}

fn func_2() -> f32 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(-442f, -818f, global2.x)), 1048f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-782f))))), _wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(f32(-1f) * -1068f), _wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(select(vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(35115u, 9u)], 9u)], 1u, global3[_wgslsmith_index_u32(19600u, 9u)], global3[_wgslsmith_index_u32(1u, 9u)]), vec4<u32>(global3[_wgslsmith_index_u32(0u, 9u)], global3[_wgslsmith_index_u32(51467u, 9u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 9u)], 9u)], 58579u), !global2.x), select(vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 9u)], 9u)], 0u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(506u, 9u)], 9u)], global3[_wgslsmith_index_u32(28236u, 9u)]), select(vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(97606u, 9u)], 9u)], 9u)], global3[_wgslsmith_index_u32(4294967295u, 9u)], global3[_wgslsmith_index_u32(29860u, 9u)], 0u), vec4<u32>(0u, 3201u, 0u, global3[_wgslsmith_index_u32(1u, 9u)]), vec4<bool>(true, false, global2.x, false)), true)), abs(_wgslsmith_add_vec4_u32(min(vec4<u32>(30990u, global3[_wgslsmith_index_u32(0u, 9u)], 24255u, 1u), vec4<u32>(29995u, 58211u, global3[_wgslsmith_index_u32(0u, 9u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(66653u, 9u)], 9u)], 9u)])), countOneBits(vec4<u32>(45438u, 1u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(979u, 9u)], 9u)], 9u)], 11498u))))), !(!select(vec4<bool>(false, global2.x, global2.x, global2.x), select(vec4<bool>(true, false, false, false), vec4<bool>(global2.x, global2.x, true, global2.x), false), global2.x)));
    global3 = array<u32, 9>();
    var var_1 = vec4<f32>(var_0.a, _wgslsmith_f_op_f32(func_3()), var_0.b, -171f);
    let var_2 = abs(vec4<u32>(~var_0.d.x, reverseBits(~var_0.d.x), ~var_0.d.x, _wgslsmith_div_u32(_wgslsmith_sub_u32(1u, var_0.d.x), max(37147u, var_0.d.x)))) << (~abs(firstLeadingBit(var_0.d)) % vec4<u32>(32u));
    let var_3 = _wgslsmith_div_f32(1393f, var_1.x);
    return -670f;
}

fn func_1(arg_0: vec4<i32>) -> vec2<i32> {
    global2 = select(vec2<bool>(all(select(vec3<bool>(false, true, false), vec3<bool>(global2.x, true, global2.x), !vec3<bool>(global2.x, true, true))), false), vec2<bool>(true, true), select(!all(select(vec3<bool>(true, global2.x, false), vec3<bool>(global2.x, true, false), global2.x)), ~(u_input.a ^ u_input.a) < arg_0.x, false));
    var var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(-605f, -1375f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2()))) - _wgslsmith_f_op_f32(round(-1000f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(107f, -287f))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_2()))))))), vec4<u32>(countOneBits(min(_wgslsmith_dot_vec3_u32(vec3<u32>(global3[_wgslsmith_index_u32(109339u, 9u)], global3[_wgslsmith_index_u32(59418u, 9u)], 55848u), vec3<u32>(48330u, 62861u, 402u)), 32141u)), ~_wgslsmith_add_u32(_wgslsmith_mult_u32(global3[_wgslsmith_index_u32(4294967295u, 9u)], 18069u), 1u), global3[_wgslsmith_index_u32(abs(_wgslsmith_sub_u32(global3[_wgslsmith_index_u32(0u, 9u)], 1u)) << (_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, global3[_wgslsmith_index_u32(66559u, 9u)], global3[_wgslsmith_index_u32(40067u, 9u)]), vec3<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(29972u, 9u)], 9u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 9u)], 9u)], 9u)], 9u)], 51349u)), ~vec3<u32>(global3[_wgslsmith_index_u32(0u, 9u)], 0u, 1u)) % 32u), 9u)], _wgslsmith_dot_vec4_u32(~vec4<u32>(61171u, 67014u, 4294967295u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(10601u, 9u)], 9u)], 9u)]), _wgslsmith_add_vec4_u32(vec4<u32>(15438u, global3[_wgslsmith_index_u32(4294967295u, 9u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(19842u, 9u)], 9u)], 9u)], 9u)], 9u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 9u)], 9u)]), vec4<u32>(4294967295u, 59309u, 4294967295u, 95113u)) | (vec4<u32>(71486u, 93421u, global3[_wgslsmith_index_u32(0u, 9u)], 33187u) ^ vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 9u)], 9u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(60192u, 9u)], 9u)], global3[_wgslsmith_index_u32(15890u, 9u)], global3[_wgslsmith_index_u32(0u, 9u)])))), !vec4<bool>(reverseBits(arg_0.x) != (1i | u_input.a), !all(vec3<bool>(false, false, false)), false, global2.x & false));
    var_0 = Struct_1(_wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_0.c)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(257f - var_0.b)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.b))), vec4<u32>(~(~_wgslsmith_sub_u32(15012u, global3[_wgslsmith_index_u32(var_0.d.x, 9u)])), 101471u, 4294967295u, ~(~_wgslsmith_add_u32(global3[_wgslsmith_index_u32(1u, 9u)], 4294967295u))), !(!(!select(vec4<bool>(global2.x, false, var_0.e.x, var_0.e.x), var_0.e, vec4<bool>(global2.x, var_0.e.x, false, false)))));
    var_0 = Struct_1(var_0.a, var_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -824f)), ((_wgslsmith_sub_vec4_u32(var_0.d, vec4<u32>(4294967295u, 11169u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(var_0.d.x, 9u)], 9u)], global3[_wgslsmith_index_u32(6249u, 9u)])) << (var_0.d % vec4<u32>(32u))) ^ reverseBits(vec4<u32>(4294967295u, 50138u, global3[_wgslsmith_index_u32(var_0.d.x, 9u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(66178u, 9u)], 9u)], 9u)]))) >> ((var_0.d >> (select(firstTrailingBit(vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 9u)], 9u)], 1u, global3[_wgslsmith_index_u32(0u, 9u)], 0u)), max(var_0.d, vec4<u32>(8321u, var_0.d.x, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(var_0.d.x, 9u)], 9u)], 0u)), vec4<bool>(false, var_0.e.x, global2.x, true)) % vec4<u32>(32u))) % vec4<u32>(32u)), select(vec4<bool>(any(!vec2<bool>(global2.x, false)), any(var_0.e.xw), global2.x, all(vec4<bool>(true, false, var_0.e.x, var_0.e.x))), !(!(!var_0.e)), true));
    let var_1 = Struct_2(false, Struct_1(var_0.b, _wgslsmith_f_op_f32(-var_0.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(2189f)) * var_0.b) * 922f), ~(var_0.d ^ select(var_0.d, var_0.d, global2.x)), !vec4<bool>(any(vec2<bool>(false, var_0.e.x)), global2.x, any(var_0.e.zyw), false && var_0.e.x)));
    return ~(vec2<i32>(firstLeadingBit(max(26246i, u_input.a)), ~(~arg_0.x)) << ((_wgslsmith_clamp_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(25988u, 62306u), var_0.d.yw), var_0.d.yy, ~var_0.d.zx) ^ vec2<u32>(4294967295u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(_wgslsmith_div_u32(global3[_wgslsmith_index_u32(var_1.b.d.x, 9u)], 15359u), 9u)], 9u)])) % vec2<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1092f, 1562f));
    global1 = array<vec2<f32>, 11>();
    var var_0 = func_1(-_wgslsmith_div_vec4_i32(vec4<i32>(i32(-1i) * -1i, u_input.a, u_input.a, u_input.a & u_input.a), ~_wgslsmith_div_vec4_i32(vec4<i32>(8000i, u_input.a, 41208i, u_input.a), vec4<i32>(u_input.a, u_input.a, -49122i, 18923i))));
    global0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-410f, -111f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(116f * -1067f))))));
    var var_1 = _wgslsmith_mult_u32(~global3[_wgslsmith_index_u32(~((global3[_wgslsmith_index_u32(39653u, 9u)] ^ global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 9u)], 9u)], 9u)], 9u)]) << (75895u % 32u)), 9u)], 6047u);
    var var_2 = reverseBits(_wgslsmith_div_vec3_i32(max(vec3<i32>(1i, -9296i, -1i), abs(vec3<i32>(u_input.a, u_input.a, u_input.a))), -select(vec3<i32>(u_input.a, -13263i, var_0.x), vec3<i32>(u_input.a, 52066i, u_input.a), global2.x)) | vec3<i32>(~var_0.x, ~(u_input.a << (39018u % 32u)), -11488i));
    let x = u_input.a;
    s_output = StorageBuffer(-1i, 1f, -(_wgslsmith_div_i32(var_0.x, reverseBits(var_0.x)) ^ -var_0.x), ~vec2<u32>(25173u, _wgslsmith_add_u32(abs(32643u), global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(9925u, 9u)] & 30948u, 9u)])));
}

