struct Struct_1 {
    a: vec4<f32>,
    b: f32,
    c: vec4<bool>,
    d: u32,
    e: vec3<bool>,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: i32,
    c: vec2<u32>,
    d: Struct_1,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
}

struct Struct_5 {
    a: bool,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_2(arg_0: Struct_5) -> vec2<bool> {
    return !(!(!vec2<bool>(false, arg_0.a)));
}

fn func_3(arg_0: vec2<u32>) -> vec2<u32> {
    var var_0 = Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-493f, -844f, -1116f, 194f) + vec4<f32>(576f, 1111f, -468f, 1259f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-342f, -891f, -756f, -598f)), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true), true))), vec4<f32>(-346f, -1000f, _wgslsmith_f_op_f32(step(1109f, -408f)), _wgslsmith_f_op_f32(-1000f + -552f)), true)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(339f, -1353f, 469f, 1245f)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-751f, -1475f, -1000f, 397f), vec4<f32>(1631f, -1000f, -166f, 1815f))), true)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1060f, -357f, 684f, 659f))))), _wgslsmith_f_op_f32(863f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1043f))) + _wgslsmith_f_op_f32(1636f + -317f))), vec4<bool>(any(select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, false, false)), vec3<bool>(true, false, false), vec3<bool>(true, true, true))), select(abs(-38471i), ~0i, true) <= -38864i, true, true), 10569u, !select(vec3<bool>(true, all(vec4<bool>(true, true, true, false)), true), select(select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), true));
    var var_1 = Struct_5(true, arg_0.x);
    let var_2 = 63884u;
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.b))), var_0.a.x)), 2040f, _wgslsmith_f_op_f32(var_0.a.x * _wgslsmith_f_op_f32(f32(-1f) * -2875f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(-344f)), _wgslsmith_f_op_f32(var_0.a.x + var_0.a.x), !var_0.c.x)) * var_0.b)));
    var_1 = Struct_5(func_2(Struct_5(var_0.e.x, var_2)).x, var_1.b);
    return reverseBits(reverseBits(firstLeadingBit(arg_0)));
}

fn func_1() -> vec3<bool> {
    let var_0 = u_input.b ^ (_wgslsmith_sub_vec2_u32(select(vec2<u32>(u_input.a, 4294967295u), min(u_input.b, u_input.b), func_2(Struct_5(false, u_input.b.x))), func_3(vec2<u32>(4294967295u, 4294967295u))) >> (abs(select(vec2<u32>(0u, 31412u), vec2<u32>(u_input.a, 77870u), false) & ~vec2<u32>(u_input.a, u_input.a)) % vec2<u32>(32u)));
    let var_1 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(-1209f, _wgslsmith_f_op_f32(f32(-1f) * -941f))))), -1233f, _wgslsmith_f_op_f32(abs(475f)), -609f), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-264f, _wgslsmith_f_op_f32(1000f - -814f), _wgslsmith_div_f32(590f, 702f), _wgslsmith_f_op_f32(565f * 659f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(536f, -1962f, 665f, -555f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-119f, 183f, -742f, 1041f)))), select(select(false, false, true) & true, true, func_2(Struct_5(true, 24476u)).x))));
    var var_2 = Struct_1(var_1, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.x, 1045f))))), vec4<bool>(true, true, true, true), reverseBits(abs(u_input.b.x) ^ _wgslsmith_sub_u32(u_input.a, var_0.x)) & var_0.x, !select(vec3<bool>(true, true, true), vec3<bool>(u_input.b.x >= 30344u, func_2(Struct_5(true, u_input.b.x)).x, false), select(select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), false), vec3<bool>(false, false, false), select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false)))));
    var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_1 - _wgslsmith_div_vec4_f32(vec4<f32>(var_1.x, 171f, 885f, var_2.a.x), var_2.a))), _wgslsmith_f_op_f32(ceil(138f)), !select(var_2.c, !(!vec4<bool>(true, var_2.e.x, false, var_2.e.x)), !vec4<bool>(true, var_2.e.x, false, var_2.c.x)), ~_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(_wgslsmith_add_vec2_u32(u_input.b, u_input.b), func_3(vec2<u32>(u_input.b.x, 1u)), u_input.b), u_input.b), var_2.e);
    var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(var_1 - var_1), -211f, select(select(!var_2.c, vec4<bool>(all(vec3<bool>(true, true, false)), any(var_2.c.wyy), false, true), true), var_2.c, !(!(!var_2.c))), ~(~((u_input.a & 4294967295u) | 11402u)), !var_2.e);
    return var_2.c.zyx;
}

fn func_4(arg_0: vec3<bool>, arg_1: u32) -> Struct_2 {
    let var_0 = abs(u_input.b.x);
    var var_1 = countOneBits(1i);
    var var_2 = Struct_5(false, _wgslsmith_sub_u32(_wgslsmith_mod_u32(~44828u, u_input.a), 1u));
    let var_3 = _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(abs(~max(vec4<u32>(var_0, 0u, 34547u, arg_1), vec4<u32>(u_input.a, 4294967295u, var_2.b, var_0))), vec4<u32>(~1u, 1u, firstTrailingBit(~var_2.b), ~u_input.a | u_input.b.x)), u_input.a);
    let var_4 = Struct_4(Struct_2(~(~vec3<u32>(arg_1, 29664u, arg_1))), Struct_2(vec3<u32>(var_2.b, ~(~u_input.a), 28590u)));
    return var_4.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b.x;
    var var_1 = func_4(select(select(select(vec3<bool>(false, false, false), func_1(), vec3<bool>(true, true, true)), vec3<bool>(true, true, false), select(select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true)), select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), true), select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, true)))), vec3<bool>(any(vec2<bool>(true, true)), true, func_1().x && false), func_2(Struct_5(true, var_0)).x), ~(u_input.a >> (109621u % 32u)));
    var var_2 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(-1951f)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(140f + 140f) + -1021f)), _wgslsmith_f_op_f32(min(-260f, -543f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1473f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -426f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(174f, _wgslsmith_f_op_f32(263f + -1518f))) * -299f)), _wgslsmith_f_op_f32(sign(-1000f)), !select(vec4<bool>(any(vec3<bool>(true, false, false)), false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), ~_wgslsmith_div_u32(var_0, ~u_input.b.x) | var_0, select(vec3<bool>(!func_2(Struct_5(false, var_0)).x, true, true), select(select(func_1(), vec3<bool>(true, true, true), vec3<bool>(false, false, true)), func_1(), select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), 19629u <= var_0));
    var var_3 = _wgslsmith_sub_vec3_u32(vec3<u32>(~var_0, ~_wgslsmith_div_u32(63294u, 47144u), 7170u), _wgslsmith_div_vec3_u32(~(~vec3<u32>(var_2.d, 53100u, 29443u)), ~firstTrailingBit(var_1.a))) & _wgslsmith_mult_vec3_u32(var_1.a, ~var_1.a);
    let var_4 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_2.a.x * var_2.a.x))) > _wgslsmith_div_f32(var_2.a.x, 667f);
    var_1 = Struct_2(var_1.a);
    var var_5 = ~(~(~(~49680u)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(38455i, -28772i), vec2<i32>(1i, -2147483647i) << (_wgslsmith_mult_vec2_u32(u_input.b, vec2<u32>(u_input.a, ~var_3.x)) % vec2<u32>(32u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_2.a.x, -214f, 776f), var_2.a.zwz, vec3<bool>(false, false, true))))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-407f + var_2.b), _wgslsmith_f_op_f32(1674f + 738f), _wgslsmith_f_op_f32(-var_2.a.x)))));
}

