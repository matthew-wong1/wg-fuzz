struct Struct_1 {
    a: u32,
    b: u32,
    c: bool,
    d: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> vec3<i32> {
    return ~(-min(~vec3<i32>(-9135i, -35701i, u_input.c), reverseBits(vec3<i32>(-11671i, u_input.c, u_input.a.x) << (vec3<u32>(0u, 0u, u_input.b.x) % vec3<u32>(32u)))));
}

fn func_2() -> vec4<bool> {
    var var_0 = reverseBits(vec2<i32>(~(~u_input.a.x ^ u_input.c), u_input.c | _wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.c, u_input.a.x, u_input.c), func_3())));
    global0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(1282f, _wgslsmith_f_op_f32(-526f + 799f), global0.x) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(vec3<f32>(global0.x, 112f, -1553f), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, 1000f, 557f) * vec3<f32>(-1675f, 848f, global0.x))))) - _wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, global0.x, -220f) + vec3<f32>(-412f, -921f, -682f)), vec3<f32>(-1407f, 1324f, global0.x)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(vec3<f32>(global0.x, global0.x, 115f), vec3<f32>(861f, global0.x, global0.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-193f, 1000f, global0.x) - vec3<f32>(711f, global0.x, global0.x))))))));
    var_0 = firstTrailingBit(u_input.a);
    let var_1 = min(1i, firstTrailingBit(2147483647i));
    let var_2 = min(_wgslsmith_clamp_i32(~2147483647i, firstLeadingBit(_wgslsmith_mod_i32(var_1, 0i)) >> (4294967295u % 32u), 1i), 13644i);
    return !select(select(select(select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false), false), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, any(vec3<bool>(false, false, true))), true), !(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false))), false);
}

fn func_4(arg_0: vec4<bool>) -> Struct_1 {
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(step(1032f, 1000f)), global0.x, -489f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1185f, -967f, -181f), vec3<f32>(global0.x, global0.x, global0.x))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, global0.x, -532f) - vec3<f32>(2869f, -983f, global0.x)))))));
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global0.x, -1098f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x + 413f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(global0.x, -490f, global0.x), vec3<f32>(-272f, 729f, -328f)))))));
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(246f, var_0.x, var_0.x), var_0) + _wgslsmith_f_op_vec3_f32(-var_0)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-403f, 514f, 2213f), _wgslsmith_f_op_vec3_f32(-var_0)))));
    var var_1 = _wgslsmith_mult_u32(~(~(~(~1u))), _wgslsmith_clamp_u32(0u, _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(u_input.b.yy | u_input.b.yy, u_input.b.yx), vec2<u32>(70839u, _wgslsmith_div_u32(4294967295u, 6138u))), firstLeadingBit(32019u)));
    var_1 = u_input.b.x;
    return Struct_1(0u & _wgslsmith_clamp_u32(43894u, abs(0u), abs(1u)), _wgslsmith_div_u32(1u, ~u_input.b.x), arg_0.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, global0.x)))))));
}

fn func_1(arg_0: i32) -> i32 {
    global0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -259f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -706f) + -149f), global0.x));
    let var_0 = func_4(func_2());
    let var_1 = firstLeadingBit(_wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(~_wgslsmith_sub_vec3_u32(u_input.b.yyx, vec3<u32>(30259u, var_0.a, 1u)), ~(u_input.b.yzy | vec3<u32>(883u, 74046u, var_0.b))), abs(u_input.b.wzw)));
    var var_2 = abs(_wgslsmith_dot_vec4_i32(abs(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.c, 1i, 14480i, arg_0), _wgslsmith_div_vec4_i32(vec4<i32>(arg_0, 22226i, 52066i, 2147483647i), vec4<i32>(arg_0, 0i, 8433i, -18995i)), vec4<i32>(arg_0, 0i, 2147483647i, arg_0) << (vec4<u32>(0u, 1u, u_input.b.x, var_1.x) % vec4<u32>(32u)))), vec4<i32>(_wgslsmith_clamp_i32(-u_input.c, 2147483647i, -1i), select(-22099i, select(59849i, 0i, false), true), firstLeadingBit(1i), -2147483647i)));
    let var_3 = _wgslsmith_clamp_u32(firstTrailingBit(4294967295u), min(4294967295u, _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(~u_input.b, vec4<u32>(u_input.b.x, 21025u, 59872u, 4294967295u), vec4<u32>(var_1.x, 0u, 1u, u_input.b.x)), ~vec4<u32>(47207u, var_1.x, var_1.x, u_input.b.x))), 35224u | (((var_1.x ^ 0u) >> (~var_0.a % 32u)) & ~4294967295u));
    return ~((-arg_0 & -25512i) ^ firstTrailingBit(0i));
}

fn func_5(arg_0: vec3<f32>, arg_1: bool, arg_2: u32, arg_3: Struct_1) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(332f - -139f))), 361f)))));
    var var_1 = func_4(vec4<bool>(arg_3.c, true, all(!vec2<bool>(arg_1, true)), _wgslsmith_mult_u32(select(10656u, 4294967295u, arg_1), 74166u) == arg_3.b));
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_div_f32(global0.x, 355f), _wgslsmith_f_op_f32(min(global0.x, -1493f)), -1847f))), vec3<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-898f * arg_3.d)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -658f))))) - _wgslsmith_f_op_vec3_f32(abs(arg_0)));
    let var_2 = vec3<i32>(-56006i, 35199i, -41547i);
    var_1 = arg_3;
    return var_1.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_clamp_u32(func_5(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-479f, 609f, -174f))), _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-1474f, -1807f, global0.x), vec3<f32>(-2232f, global0.x, global0.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, 1020f, global0.x) + vec3<f32>(global0.x, -126f, global0.x)))), _wgslsmith_mod_i32(func_1(u_input.c), u_input.a.x) < u_input.c, u_input.b.x, Struct_1(_wgslsmith_dot_vec2_u32(vec2<u32>(30964u, u_input.b.x), u_input.b.wz) | (u_input.b.x << (1u % 32u)), u_input.b.x, all(vec2<bool>(true, false)) | any(vec3<bool>(false, false, true)), 439f)), 13725u, ~_wgslsmith_clamp_u32(~abs(u_input.b.x), u_input.b.x, ~_wgslsmith_mod_u32(21927u, u_input.b.x)));
    var var_1 = _wgslsmith_mod_vec2_i32(~vec2<i32>(func_3().x, max(max(49185i, u_input.a.x), func_1(-1i))), max(_wgslsmith_add_vec2_i32(u_input.a, vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 0i, 1i), vec3<i32>(17643i, u_input.c, 32380i)), u_input.a.x)), vec2<i32>(~firstLeadingBit(u_input.c), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, u_input.a.x, u_input.c, 1i), ~vec4<i32>(u_input.c, u_input.a.x, 53896i, u_input.a.x)))));
    var var_2 = countOneBits(reverseBits(max(~abs(u_input.b.xx), _wgslsmith_sub_vec2_u32(u_input.b.wz, firstLeadingBit(u_input.b.yy)))));
    let var_3 = select(vec3<bool>(true, false, !all(select(vec2<bool>(true, false), vec2<bool>(false, true), false))), !vec3<bool>(true & all(vec3<bool>(true, true, false)), true, true), !(!((2147483647i | u_input.c) > _wgslsmith_add_i32(41252i, -71181i))));
    var var_4 = vec2<bool>(func_4(select(vec4<bool>(var_3.x, true, true, var_3.x), vec4<bool>(u_input.b.x != u_input.b.x, !var_3.x, var_3.x, !var_3.x), var_3.x)).c, var_3.x);
    global0 = vec3<f32>(-2452f, -2039f, _wgslsmith_f_op_f32(f32(-1f) * -190f));
    var var_5 = max(vec4<i32>(u_input.a.x, func_3().x, ~countOneBits(u_input.c >> (19790u % 32u)), firstLeadingBit(-2147483647i)), vec4<i32>(min(var_1.x, -1i & var_1.x), -(u_input.c & 1i), ~5677i, u_input.a.x));
    var var_6 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.x, -102f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(325f - global0.x)))), vec4<f32>(global0.x, _wgslsmith_f_op_f32(-global0.x), 853f, -796f), select(select(vec4<bool>(true, false, var_3.x, var_4.x), !vec4<bool>(true, var_3.x, false, var_4.x), select(vec4<bool>(true, false, var_3.x, false), vec4<bool>(true, var_3.x, false, true), vec4<bool>(true, var_3.x, var_4.x, var_3.x))), !vec4<bool>(false, false, true, var_4.x), !(!vec4<bool>(var_4.x, var_3.x, var_4.x, true))))));
    var_6 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_6.x, 1000f, var_6.x, global0.x), vec4<f32>(global0.x, var_6.x, 1000f, -1182f), vec4<bool>(true, true, var_4.x, var_4.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-518f, 408f, 749f, var_6.x))) * _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_6.x, 438f, -941f, global0.x))))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1800f, var_6.x, global0.x, var_6.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(-1i, ~firstLeadingBit(max(var_5.zxw, var_5.wxx) >> (~vec3<u32>(62901u, var_2.x, u_input.b.x) % vec3<u32>(32u))), 261f, firstLeadingBit(_wgslsmith_mod_i32(-2147483647i, ~var_1.x)) << (max(reverseBits(var_2.x), var_2.x >> ((var_2.x << (u_input.b.x % 32u)) % 32u)) % 32u));
}

