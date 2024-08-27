struct Struct_1 {
    a: vec3<bool>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: Struct_1,
    d: bool,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_2) -> vec2<i32> {
    var var_0 = max(7848i, 1i);
    let var_1 = _wgslsmith_mult_vec4_i32(~_wgslsmith_sub_vec4_i32(min(firstLeadingBit(vec4<i32>(0i, 0i, 14486i, 13720i)), countOneBits(vec4<i32>(59453i, -1i, 35313i, -9491i))), firstLeadingBit(-vec4<i32>(-59048i, -21157i, -1i, 0i))), _wgslsmith_clamp_vec4_i32(vec4<i32>(min(_wgslsmith_dot_vec4_i32(vec4<i32>(49812i, 2147483647i, 1i, 45336i), vec4<i32>(0i, -2147483647i, 2147483647i, 0i)), 0i), -(-50223i << (arg_0.a % 32u)), 1i, -28079i), _wgslsmith_clamp_vec4_i32(~vec4<i32>(0i, -8306i, -58716i, 0i), -vec4<i32>(-1i, 2147483647i, -2147483647i, 2147483647i), vec4<i32>(1i, 1i, 1i, 1i)) & select(firstTrailingBit(vec4<i32>(-29285i, 0i, -1i, 1i)), vec4<i32>(0i, -2147483647i, 71140i, -24810i), select(vec4<bool>(true, arg_1.a.x, arg_1.a.x, false), vec4<bool>(true, false, false, arg_1.a.x), vec4<bool>(arg_1.a.x, false, true, false))), -_wgslsmith_clamp_vec4_i32(~vec4<i32>(1i, 9153i, 1i, -37226i), ~vec4<i32>(-43753i, -9461i, 2147483647i, -41427i), ~vec4<i32>(0i, 5792i, 1i, -91481i))));
    var_0 = var_1.x;
    let var_2 = Struct_1(vec3<bool>(all(select(vec3<bool>(true, true, false), vec3<bool>(arg_1.a.x, false, arg_1.a.x), vec3<bool>(arg_1.a.x, true, arg_1.a.x))), false, true), arg_1.b);
    var_0 = ~_wgslsmith_mod_i32(abs((var_1.x | var_1.x) & reverseBits(4714i)), var_1.x);
    return vec2<i32>(-(~(~(-var_1.x))), -1i);
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_1(!vec3<bool>(!all(vec2<bool>(false, true)), true, all(vec4<bool>(true, false, false, true))), _wgslsmith_div_vec2_u32(~(~u_input.a.yw) ^ countOneBits(_wgslsmith_clamp_vec2_u32(vec2<u32>(57031u, 0u), u_input.a.xx, vec2<u32>(u_input.a.x, 1u))), ~_wgslsmith_sub_vec2_u32(u_input.a.xw, ~vec2<u32>(45357u, 1u))));
    let var_1 = ~_wgslsmith_sub_vec2_i32(func_3(Struct_2(var_0.b.x), var_0, Struct_2(u_input.a.x)), -(~(-vec2<i32>(24427i, 10553i))));
    var var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(2245f, _wgslsmith_f_op_f32(round(-482f)))) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(196f * 1163f) - 1000f))))));
    let var_3 = select(vec3<bool>(all(!vec4<bool>(var_0.a.x, true, true, true)), var_0.a.x, var_0.a.x), select(vec3<bool>(true, false, false), vec3<bool>(var_0.a.x, true, false), any(select(vec4<bool>(false, var_0.a.x, true, var_0.a.x), select(vec4<bool>(false, true, var_0.a.x, var_0.a.x), vec4<bool>(false, var_0.a.x, true, true), vec4<bool>(var_0.a.x, var_0.a.x, false, true)), !vec4<bool>(var_0.a.x, false, false, var_0.a.x)))), vec3<bool>(~_wgslsmith_mult_u32(var_0.b.x, 1u) != countOneBits(min(1u, 33945u)), true & var_0.a.x, all(select(!vec2<bool>(var_0.a.x, var_0.a.x), select(var_0.a.yy, var_0.a.zx, vec2<bool>(var_0.a.x, var_0.a.x)), all(vec4<bool>(var_0.a.x, true, var_0.a.x, false))))));
    var_2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1000f, -1185f, false | var_0.a.x))) - 680f), 496f, true));
    return Struct_2(min(abs(~14954u), ~_wgslsmith_dot_vec4_u32(u_input.a, u_input.a)));
}

fn func_4(arg_0: f32, arg_1: Struct_2, arg_2: vec2<f32>) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(arg_0 * 1131f), _wgslsmith_f_op_f32(arg_0 * -850f), 1353f, -282f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, 358f, -1334f, -634f) - vec4<f32>(903f, arg_0, arg_0, arg_2.x)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1616f, arg_2.x, arg_2.x, -102f), vec4<f32>(-1082f, arg_0, arg_0, arg_2.x)))))), all(vec3<bool>(true, all(vec3<bool>(true, true, true)), true))))));
    let var_1 = Struct_1(vec3<bool>(true, true, true), ~abs(~vec2<u32>(arg_1.a, 4294967295u)));
    var var_2 = -reverseBits(_wgslsmith_dot_vec4_i32(vec4<i32>(-36107i, -2147483647i, 1i, ~(-18424i)), _wgslsmith_clamp_vec4_i32(abs(vec4<i32>(1i, -2147483647i, 1i, 1i)), vec4<i32>(-46233i, -3701i, -1i, -1i), _wgslsmith_clamp_vec4_i32(vec4<i32>(1929i, -1i, 2147483647i, -11698i), vec4<i32>(-1i, -2147483647i, 46754i, 2147483647i), vec4<i32>(0i, 21541i, -65452i, -1i)))));
    return Struct_3(func_3(Struct_2(~u_input.a.x), Struct_1(vec3<bool>(var_0.x < arg_0, false, false), ~vec2<u32>(0u, 43399u)), arg_1).x, arg_1, var_1, var_1.a.x, select(vec3<bool>(var_1.a.x, true, true), select(var_1.a, vec3<bool>(true, true, true), true), select(false, !(var_1.a.x && var_1.a.x), all(!vec4<bool>(var_1.a.x, true, var_1.a.x, false)))));
}

fn func_1(arg_0: u32) -> Struct_2 {
    let var_0 = 2848i;
    var var_1 = func_4(723f, func_2(), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1373f, -331f)))));
    var_1 = Struct_3(0i, var_1.b, Struct_1(func_4(_wgslsmith_f_op_f32(max(-658f, _wgslsmith_f_op_f32(f32(-1f) * -355f))), func_4(_wgslsmith_f_op_f32(-1506f + 473f), func_2(), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1000f, -386f), vec2<f32>(-949f, -327f)))).b, vec2<f32>(1f, 1f)).c.a, var_1.c.b), select(select(var_1.d, false, !var_1.d), (firstLeadingBit(var_0) == -2147483647i) != !var_1.e.x, select(any(select(vec4<bool>(false, var_1.d, true, var_1.c.a.x), vec4<bool>(true, var_1.e.x, var_1.d, true), true)), any(var_1.e), var_1.e.x)), var_1.e);
    var_1 = func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(147f)))) - _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-437f * 662f), _wgslsmith_f_op_f32(123f * 2697f))))), var_1.b, _wgslsmith_f_op_vec2_f32(vec2<f32>(549f, _wgslsmith_f_op_f32(-647f + _wgslsmith_f_op_f32(min(-1780f, -557f)))) - _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(658f, -932f))))));
    let var_2 = var_1.c.a;
    return var_1.b;
}

fn func_5(arg_0: Struct_2, arg_1: vec2<i32>) -> StorageBuffer {
    var var_0 = select(_wgslsmith_mod_i32(arg_1.x, arg_1.x), _wgslsmith_dot_vec2_i32(arg_1, func_3(arg_0, Struct_1(vec3<bool>(true, true, true), max(vec2<u32>(u_input.a.x, 35227u), vec2<u32>(19620u, u_input.a.x))), arg_0)), true);
    var var_1 = ~vec4<i32>(_wgslsmith_div_i32(arg_1.x, ~16485i), -arg_1.x, -1i, 24716i) >> (vec4<u32>(countOneBits(~(~u_input.a.x)), _wgslsmith_clamp_u32(u_input.a.x, ~arg_0.a, ~(~4294967295u)), 25017u, reverseBits(0u)) % vec4<u32>(32u));
    var var_2 = !vec4<bool>(!(all(vec2<bool>(false, false)) | all(vec4<bool>(true, false, true, true))), any(vec2<bool>(true, true)), !(-1i <= select(-7666i, arg_1.x, true)), true);
    let var_3 = -228f;
    var var_4 = Struct_3(_wgslsmith_mult_i32(~arg_1.x << (~11021u % 32u), ~max(var_1.x, var_1.x)) >> (0u % 32u), Struct_2(firstTrailingBit(_wgslsmith_mult_u32(arg_0.a, arg_0.a) << (u_input.a.x % 32u))), func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1275f)), arg_0, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3, var_3)))))).c, var_2.x, vec3<bool>(any(vec4<bool>(var_2.x, true, var_2.x, var_2.x)), var_2.x & any(vec4<bool>(true, var_2.x, true, true)), false));
    return StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3) - var_3)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(325f + _wgslsmith_div_f32(var_3, var_3)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(3956f)), _wgslsmith_f_op_f32(exp2(var_3))))), _wgslsmith_f_op_f32(abs(var_3))), (u_input.a.x << (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 4294967295u, var_4.c.b.x, 74584u) >> (vec4<u32>(0u, arg_0.a, 1u, u_input.a.x) % vec4<u32>(32u)), min(u_input.a, u_input.a)) % 32u)) >> ((_wgslsmith_add_u32(arg_0.a, abs(1u)) >> (select(~var_4.b.a, _wgslsmith_sub_u32(var_4.c.b.x, 24846u), select(false, true, var_4.c.a.x)) % 32u)) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    let var_1 = 794f;
    let var_2 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(-468f + var_1), _wgslsmith_f_op_f32(-var_1))))));
    var var_3 = _wgslsmith_mult_vec2_i32(-(-vec2<i32>(2147483647i, 1i) >> ((~u_input.a.yy ^ vec2<u32>(68286u, u_input.a.x)) % vec2<u32>(32u))), _wgslsmith_clamp_vec2_i32(countOneBits(vec2<i32>(-30169i, -36089i)), vec2<i32>(-9291i, -62087i), vec2<i32>(-firstTrailingBit(1i), max(0i, ~(-2713i)))));
    var var_4 = !(!vec2<bool>(all(vec2<bool>(true, false)), true));
    let x = u_input.a;
    s_output = func_5(func_1(u_input.a.x), vec2<i32>(_wgslsmith_add_i32(-2147483647i, _wgslsmith_mod_i32(var_3.x, var_3.x ^ var_3.x)), var_3.x));
}

