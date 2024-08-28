struct Struct_1 {
    a: f32,
    b: vec3<f32>,
    c: bool,
    d: vec3<u32>,
}

struct Struct_2 {
    a: bool,
    b: vec3<bool>,
    c: vec2<i32>,
    d: i32,
    e: vec4<u32>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: f32,
    c: u32,
    d: f32,
}

struct Struct_4 {
    a: Struct_1,
    b: i32,
    c: Struct_2,
    d: vec4<i32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
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

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: i32, arg_1: vec4<bool>, arg_2: Struct_4) -> i32 {
    let var_0 = any(select(arg_1.zzx, !(!select(arg_1.yyx, vec3<bool>(arg_1.x, arg_2.c.b.x, arg_2.c.b.x), arg_1.zwz)), !(!arg_1.yyx)));
    let var_1 = select(!vec4<bool>(select(all(vec4<bool>(var_0, var_0, true, false)), select(arg_2.a.c, arg_1.x, true), all(arg_2.c.b)), true, any(!vec4<bool>(true, true, true, var_0)), all(select(arg_1.zy, arg_2.c.b.zz, vec2<bool>(var_0, false)))), !arg_1, vec4<bool>(arg_1.x, select(false, true || (arg_2.d.x > 7791i), true), var_0, all(select(!vec3<bool>(var_0, arg_1.x, var_0), vec3<bool>(true, true, true), vec3<bool>(arg_2.c.b.x, true, arg_2.e.c)))));
    var var_2 = -((arg_0 ^ (1i << (1u % 32u))) ^ -19137i);
    var_2 = _wgslsmith_dot_vec4_i32(vec4<i32>(-abs(_wgslsmith_mod_i32(18829i, arg_0)), firstTrailingBit(~arg_0), _wgslsmith_dot_vec3_i32(~select(vec3<i32>(arg_0, 30127i, arg_0), arg_2.d.xyy, arg_1.yyy), ~firstTrailingBit(vec3<i32>(1i, arg_2.b, -1i))), arg_2.b), reverseBits(-(vec4<i32>(35893i, 46999i, arg_0, arg_0) & arg_2.d) ^ abs(_wgslsmith_sub_vec4_i32(arg_2.d, arg_2.d))));
    var var_3 = _wgslsmith_clamp_i32(i32(-1i) * -(arg_2.d.x << ((u_input.a.x & 124788u) % 32u)), 14641i, min(~(-1i), 0i));
    return _wgslsmith_dot_vec2_i32(arg_2.c.c, firstLeadingBit(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, arg_2.d.x, arg_2.d.x, arg_0), arg_2.d), arg_0)));
}

fn func_2() -> f32 {
    var var_0 = Struct_4(Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1035f, -182f, false)) * 1f))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1095f, 669f, -803f)))), vec3<f32>(_wgslsmith_f_op_f32(-949f * 658f), 1856f, _wgslsmith_f_op_f32(-239f + 1244f)), vec3<bool>(true, true, true))), true, _wgslsmith_div_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, u_input.a.x, u_input.a.x), vec3<u32>(4294967295u, u_input.b, u_input.b)), select(select(vec3<u32>(41103u, 0u, 35972u), vec3<u32>(u_input.b, u_input.a.x, u_input.b), true), vec3<u32>(u_input.b, u_input.b, u_input.b), vec3<bool>(true, true, true)))), _wgslsmith_mod_i32(24314i, min(11377i, 2147483647i)), Struct_2(true, vec3<bool>(!all(vec2<bool>(true, false)), min(5764u, u_input.a.x) != u_input.b, all(vec4<bool>(true, false, false, false)) || true), vec2<i32>(10615i, abs(26945i)) << (u_input.a % vec2<u32>(32u)), ~(~(-1i)), ~(~vec4<u32>(u_input.b, 49046u, u_input.b, u_input.a.x) ^ (vec4<u32>(u_input.b, 0u, 97689u, u_input.a.x) & vec4<u32>(u_input.b, u_input.a.x, 0u, u_input.a.x)))), vec4<i32>(~func_3(0i, vec4<bool>(true, false, true, false), Struct_4(Struct_1(-236f, vec3<f32>(319f, 659f, -857f), false, vec3<u32>(u_input.a.x, 0u, u_input.a.x)), 1i, Struct_2(false, vec3<bool>(false, false, false), vec2<i32>(-1i, -2147483647i), -1i, vec4<u32>(4633u, 67049u, u_input.b, u_input.a.x)), vec4<i32>(-1i, -2147483647i, -7981i, -16418i), Struct_1(-209f, vec3<f32>(-1805f, 2064f, 194f), false, vec3<u32>(u_input.b, 17530u, 18102u)))), ~6873i, 1i, firstTrailingBit(0i) & 1i) ^ firstTrailingBit(vec4<i32>(-19509i, 0i, -53954i, 1i) >> (_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, u_input.b, 10791u, 4294967295u), vec4<u32>(33593u, u_input.b, u_input.a.x, 4294967295u), vec4<u32>(17924u, 99797u, 4294967295u, u_input.b)) % vec4<u32>(32u))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(840f)))), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -505f), _wgslsmith_f_op_f32(-928f + 1001f), -889f))), true, vec3<u32>(~(~0u), ~(1u >> (u_input.b % 32u)), _wgslsmith_div_u32(u_input.b, ~u_input.b))));
    var var_1 = ~var_0.d;
    var_0 = Struct_4(var_0.e, -47290i & ~(var_0.b | var_1.x), Struct_2(true, vec3<bool>(!var_0.a.c | var_0.c.b.x, true, any(vec4<bool>(true, var_0.c.a, false, var_0.c.a))), vec2<i32>(var_0.b, min(-var_0.d.x, var_1.x)), var_0.c.c.x, vec4<u32>(firstLeadingBit(41636u), ~var_0.a.d.x, _wgslsmith_add_u32(firstLeadingBit(1u), 45506u), u_input.b)), reverseBits(var_0.d) >> (vec4<u32>(var_0.a.d.x, select(0u, var_0.e.d.x, var_0.c.b.x) ^ ~u_input.b, var_0.c.e.x, u_input.a.x) % vec4<u32>(32u)), Struct_1(var_0.e.a, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(var_0.e.b + vec3<f32>(650f, 715f, 686f)))))), all(vec2<bool>(true, true)) && !var_0.e.c, firstLeadingBit(var_0.a.d)));
    var_1 = vec4<i32>(-54271i, 1i, _wgslsmith_clamp_i32(var_0.c.d, -2147483647i, ~_wgslsmith_dot_vec2_i32(~var_1.wy, vec2<i32>(1i, var_1.x))), abs(var_0.d.x));
    let var_2 = firstLeadingBit(_wgslsmith_div_vec4_i32(~_wgslsmith_mult_vec4_i32(var_0.d, var_0.d), vec4<i32>(abs(var_1.x), firstTrailingBit(-23376i), i32(-1i) * -10331i, ~0i))) >> (~(~vec4<u32>(1u, 1u, 1u, 1u) & vec4<u32>(_wgslsmith_dot_vec3_u32(var_0.e.d, vec3<u32>(2853u, u_input.b, 0u)), ~u_input.a.x, u_input.a.x >> (u_input.b % 32u), ~var_0.e.d.x)) % vec4<u32>(32u));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1547f, -328f)));
}

fn func_1() -> bool {
    var var_0 = Struct_3(firstTrailingBit(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b, u_input.b, countOneBits(0u)), ~vec3<u32>(61865u, 4294967295u, 0u))), -486f, u_input.b, _wgslsmith_f_op_f32(abs(-751f)));
    let var_1 = ~(~_wgslsmith_mod_u32(~(var_0.c << (71839u % 32u)), 4294967295u));
    let var_2 = -vec2<i32>(1i, -42852i);
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2()));
    var var_4 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_0.d - 744f)))), 3449f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_2())))));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<bool>(true, (_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(394f)))) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -660f))) && true, (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-388f + 311f)) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(578f + -515f) * _wgslsmith_f_op_f32(step(2255f, 1096f)))) | !any(vec3<bool>(true, true, true)), true & func_1());
    var var_1 = select(vec4<u32>(1u, min(countOneBits(_wgslsmith_sub_u32(4294967295u, u_input.b)), 1u), min(_wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(22151u, u_input.b)) ^ ~0u, ~u_input.a.x), u_input.a.x), ~vec4<u32>(25304u, u_input.b, abs(_wgslsmith_add_u32(21862u, u_input.a.x)), 37425u), vec4<bool>(true, true, true, true));
    var_0 = select(vec4<bool>(true, !any(var_0.yzy), func_1(), true), !vec4<bool>(var_0.x, var_0.x, true, true), !(!select(!vec4<bool>(var_0.x, var_0.x, false, var_0.x), select(vec4<bool>(true, true, true, true), vec4<bool>(true, var_0.x, var_0.x, var_0.x), vec4<bool>(true, true, true, var_0.x)), vec4<bool>(false, true, false, var_0.x))));
    var_1 = abs(~vec4<u32>(~var_1.x, ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, var_1.x, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, u_input.b, u_input.a.x, 28286u)), 101155u, _wgslsmith_dot_vec2_u32(u_input.a | u_input.a, ~vec2<u32>(4294967295u, 1u))));
    let var_2 = _wgslsmith_mult_vec2_i32(vec2<i32>(1i, 1i), reverseBits(vec2<i32>(i32(-1i) * -2147483647i, -2147483647i) << (_wgslsmith_sub_vec2_u32(vec2<u32>(var_1.x, 17748u), vec2<u32>(34092u, 1u)) % vec2<u32>(32u))));
    var var_3 = Struct_2(true | !all(select(vec3<bool>(var_0.x, true, false), var_0.xzz, var_0.ywz)), vec3<bool>(!all(vec4<bool>(true, var_0.x, var_0.x, var_0.x)) | var_0.x, all(!vec3<bool>(false, var_0.x, true)), true), _wgslsmith_mult_vec2_i32(vec2<i32>(func_3(max(-1i, var_2.x), vec4<bool>(var_0.x, var_0.x, false, var_0.x), Struct_4(Struct_1(850f, vec3<f32>(1142f, 1221f, 200f), var_0.x, vec3<u32>(4294967295u, u_input.b, 4294967295u)), -1i, Struct_2(true, var_0.zxw, var_2, 13992i, vec4<u32>(1u, var_1.x, 23470u, u_input.a.x)), vec4<i32>(var_2.x, var_2.x, -1i, var_2.x), Struct_1(283f, vec3<f32>(2653f, -1000f, -1947f), false, var_1.yxz))), -2147483647i), abs(vec2<i32>(_wgslsmith_sub_i32(var_2.x, var_2.x), 2147483647i))), -31499i, firstLeadingBit(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(29314u, 0u, u_input.b, u_input.b), vec4<u32>(19427u, 1u, u_input.b, u_input.b)), var_1.x >> (u_input.b % 32u), ~97292u, 10518u) >> ((abs(vec4<u32>(var_1.x, var_1.x, u_input.b, 4294967295u)) | ~vec4<u32>(4294967295u, 27715u, u_input.b, 57671u)) % vec4<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -224f), abs(vec3<i32>(-1i, var_2.x, 1i)));
}

