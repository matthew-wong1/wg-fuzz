struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: u32,
    d: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec4<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -620f;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_2, arg_1: vec4<f32>) -> bool {
    var var_0 = true;
    let var_1 = !vec3<bool>(any(select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false))) | any(vec3<bool>(true, true, true)), select(true, true, false), any(!select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), false)));
    var var_2 = arg_0;
    global0 = _wgslsmith_f_op_f32(-var_2.b.d.x);
    global0 = 142f;
    return !(_wgslsmith_clamp_i32(~(~var_2.a.b), _wgslsmith_div_i32(i32(-1i) * -1i, i32(-1i) * -95768i), -22726i) < 0i);
}

fn func_4(arg_0: i32, arg_1: bool, arg_2: Struct_2, arg_3: Struct_2) -> vec2<u32> {
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(868f + 694f) - 249f);
    let var_0 = select(!vec2<bool>(false, any(!vec4<bool>(true, true, true, arg_1))), select(select(!(!vec2<bool>(true, arg_1)), select(vec2<bool>(arg_1, arg_1), select(vec2<bool>(arg_1, arg_1), vec2<bool>(false, arg_1), false), false), all(vec2<bool>(arg_1, false))), select(vec2<bool>(arg_1, all(vec4<bool>(false, arg_1, true, true))), select(!vec2<bool>(arg_1, arg_1), vec2<bool>(arg_1, arg_1), true), select(select(vec2<bool>(true, arg_1), vec2<bool>(arg_1, arg_1), vec2<bool>(arg_1, arg_1)), vec2<bool>(false, arg_1), select(vec2<bool>(arg_1, true), vec2<bool>(false, arg_1), vec2<bool>(arg_1, true)))), select(!vec2<bool>(arg_1, true), vec2<bool>(arg_1, arg_1 & false), false)), false);
    var var_1 = arg_3;
    let var_2 = max(firstLeadingBit(~_wgslsmith_mult_u32(min(4294967295u, 1u), ~17010u)), ~(22939u << (abs(arg_3.b.a.x) % 32u)));
    var_1 = Struct_2(Struct_1(firstLeadingBit(reverseBits(firstTrailingBit(vec4<u32>(70550u, 0u, 8802u, var_1.b.a.x)))), 1i, countOneBits(var_1.a.a.x), arg_3.a.d), Struct_1(_wgslsmith_mod_vec4_u32(vec4<u32>(0u | arg_3.a.a.x, 1u, _wgslsmith_clamp_u32(u_input.b, 1u, 14282u), arg_3.a.a.x), vec4<u32>(_wgslsmith_add_u32(var_2, var_2), ~var_1.a.c, arg_3.b.c, var_1.b.c)), ~_wgslsmith_clamp_i32(0i, arg_2.b.b, 30933i) << (1u % 32u), countOneBits(var_1.a.c), _wgslsmith_f_op_vec4_f32(-arg_2.a.d)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-747f))))));
    return arg_2.a.a.xw;
}

fn func_2() -> f32 {
    let var_0 = _wgslsmith_sub_vec2_u32(~reverseBits(func_4(-u_input.c.x, func_3(Struct_2(Struct_1(vec4<u32>(u_input.b, 3091u, 14304u, u_input.b), u_input.c.x, 0u, vec4<f32>(-145f, -1176f, 323f, -995f)), Struct_1(vec4<u32>(34875u, u_input.a, u_input.a, 54728u), -6118i, 16774u, vec4<f32>(948f, 200f, -333f, 337f)), 496f), vec4<f32>(1000f, 1343f, -584f, -617f)), Struct_2(Struct_1(vec4<u32>(0u, u_input.a, 0u, u_input.b), 1i, u_input.a, vec4<f32>(579f, 891f, 779f, 1152f)), Struct_1(vec4<u32>(49076u, 82940u, 31666u, 109122u), u_input.c.x, 69420u, vec4<f32>(-2405f, 446f, -1543f, 473f)), -677f), Struct_2(Struct_1(vec4<u32>(u_input.a, u_input.a, 1u, u_input.b), u_input.c.x, u_input.b, vec4<f32>(2734f, 217f, 407f, -209f)), Struct_1(vec4<u32>(u_input.a, u_input.a, 4294967295u, 4294967295u), u_input.c.x, u_input.b, vec4<f32>(-485f, -617f, -102f, 700f)), -655f))), vec2<u32>(4294967295u, ~_wgslsmith_div_u32(u_input.a, ~u_input.b)));
    var var_1 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1060f, 864f, -323f, -771f)) + vec4<f32>(680f, 195f, 588f, 2354f)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(541f, -706f, 1000f, 973f)), vec4<f32>(-199f, -141f, 1348f, 323f)))))));
    var_1 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, 949f, 1066f, -564f) - vec4<f32>(var_1.x, -777f, 775f, 1000f))), vec4<f32>(_wgslsmith_div_f32(-1257f, var_1.x), _wgslsmith_f_op_f32(-var_1.x), var_1.x, -674f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.x, var_1.x, 1264f, 1000f), vec4<f32>(var_1.x, 203f, -955f, -272f), true)) + vec4<f32>(918f, var_1.x, var_1.x, 1335f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-224f, -267f, var_1.x, 821f))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(386f, -2415f, 752f, -1370f) + vec4<f32>(-1079f, var_1.x, 338f, -430f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(537f, var_1.x, var_1.x, var_1.x) * vec4<f32>(1936f, var_1.x, -184f, var_1.x)))))));
    let var_2 = Struct_2(Struct_1(~abs(vec4<u32>(3949u, 22669u, u_input.b, u_input.a) ^ vec4<u32>(24849u, 3577u, var_0.x, var_0.x)), u_input.c.x, 1u, _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1828f, _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_div_f32(var_1.x, 430f), _wgslsmith_f_op_f32(round(var_1.x)))))), Struct_1(firstTrailingBit(_wgslsmith_sub_vec4_u32(firstTrailingBit(vec4<u32>(0u, 0u, 26013u, 43185u)), vec4<u32>(32100u, 4294967295u, u_input.a, var_0.x))), u_input.c.x, 49930u, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.x, 280f) - _wgslsmith_f_op_f32(sign(376f))), var_1.x, -1488f)), _wgslsmith_f_op_f32(min(392f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.x, -1245f)), 643f)))));
    var_1 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.b.d.x * var_1.x))), -1414f), _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.c) - _wgslsmith_f_op_f32(1205f * var_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.c + var_1.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(681f + -167f)), 1f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_2.c))));
    return _wgslsmith_f_op_f32(abs(var_1.x));
}

fn func_1(arg_0: f32, arg_1: bool) -> vec4<u32> {
    global0 = _wgslsmith_f_op_f32(func_2());
    var var_0 = min(firstTrailingBit(~(~vec3<u32>(u_input.b, u_input.b, 1362u) & abs(vec3<u32>(u_input.a, 1u, 36815u)))), ~(~(~countOneBits(vec3<u32>(u_input.a, 20123u, u_input.a)))));
    var var_1 = Struct_2(Struct_1(~vec4<u32>(45651u, ~var_0.x, _wgslsmith_clamp_u32(u_input.a, u_input.a, u_input.b), 16115u), u_input.c.x, select(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 91948u, u_input.a, 0u), vec4<u32>(1u, 0u, u_input.a, 1u)) ^ u_input.a, ~50098u, any(!vec4<bool>(false, arg_1, false, arg_1))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-482f, arg_0, arg_0, arg_0), vec4<f32>(-2230f, -702f, arg_0, -1000f), false)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, -363f, 728f, 412f))))), Struct_1(vec4<u32>(u_input.a, 0u, 4294967295u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, var_0.x, 46024u, 4294967295u), vec4<u32>(var_0.x, var_0.x, 1u, 1u))), firstLeadingBit(firstLeadingBit(118300i)), ~u_input.a, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_0, arg_0, arg_0)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, 469f, arg_0, 268f)), vec4<bool>(arg_1, arg_1, false, arg_1)))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(arg_0)))));
    var_1 = Struct_2(var_1.b, var_1.a, 733f);
    var var_2 = false && !(any(select(vec3<bool>(false, arg_1, arg_1), vec3<bool>(true, arg_1, true), vec3<bool>(arg_1, true, arg_1))) || all(select(vec4<bool>(true, true, false, false), vec4<bool>(arg_1, arg_1, true, arg_1), arg_1)));
    return var_1.b.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~countOneBits(vec4<u32>(1u, 4294967295u, 60511u, u_input.b)) << ((~vec4<u32>(0u, 22182u, u_input.a, 4294967295u) << ((vec4<u32>(u_input.b, u_input.a, 13817u, 82184u) ^ vec4<u32>(39831u, u_input.b, u_input.a, 16931u)) % vec4<u32>(32u))) % vec4<u32>(32u))) << (vec4<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 80519u) & vec2<u32>(1u, u_input.b), _wgslsmith_div_vec2_u32(vec2<u32>(34853u, 4033u), vec2<u32>(u_input.b, 1u))), u_input.b, u_input.a, min(~u_input.b, firstTrailingBit(u_input.a)) & abs(u_input.b)) % vec4<u32>(32u));
    global0 = _wgslsmith_f_op_f32(round(-1018f));
    var_0 = vec4<u32>(~33597u, 0u, _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(10874u, 0u, u_input.b, var_0.x), reverseBits(vec4<u32>(25657u, var_0.x, var_0.x, var_0.x))), 1u), _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(~vec4<u32>(57407u, var_0.x, 0u, 28416u), func_1(753f, false)), (vec4<u32>(var_0.x, var_0.x, 4294967295u, u_input.b) & vec4<u32>(74541u, u_input.b, u_input.a, 13444u)) ^ vec4<u32>(36218u, u_input.b, 23310u, u_input.b))) & select(vec4<u32>(~1u, u_input.a, var_0.x, 4294967295u), _wgslsmith_clamp_vec4_u32(~(~vec4<u32>(28121u, u_input.a, var_0.x, u_input.a)), vec4<u32>(abs(u_input.b), _wgslsmith_mod_u32(4294967295u, 4294967295u), countOneBits(u_input.b), _wgslsmith_div_u32(var_0.x, 1812u)), func_1(_wgslsmith_f_op_f32(f32(-1f) * -414f), any(vec2<bool>(true, false)))), all(select(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false)), select(vec2<bool>(false, true), vec2<bool>(false, true), true), true)));
    let x = u_input.a;
    s_output = StorageBuffer(~4294967295u, 334f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-875f, _wgslsmith_f_op_f32(floor(-331f)), _wgslsmith_f_op_f32(563f - 1335f), _wgslsmith_f_op_f32(-1859f + 523f))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(703f)), _wgslsmith_f_op_f32(-1f)) - 1000f));
}

