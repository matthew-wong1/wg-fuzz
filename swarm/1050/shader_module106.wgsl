struct Struct_1 {
    a: vec2<f32>,
    b: vec4<f32>,
    c: vec4<f32>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec3<f32>,
    c: vec4<bool>,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: f32,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: Struct_1) -> f32 {
    let var_0 = arg_1.yy;
    let var_1 = arg_2.b.zyx;
    var var_2 = ~(~u_input.a);
    let var_3 = arg_2.d;
    var_2 = u_input.a;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-534f * var_1.x)))) - -560f);
}

fn func_3(arg_0: Struct_2, arg_1: f32, arg_2: Struct_3) -> vec4<f32> {
    var var_0 = countOneBits(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, 34736u, u_input.a ^ 0u, 1u) | ~select(vec4<u32>(88048u, u_input.a, u_input.a, 1u), vec4<u32>(u_input.a, 0u, u_input.a, 24411u), arg_2.c), vec4<u32>(countOneBits(u_input.a), 20172u, reverseBits(u_input.a), select(4294967295u, 49625u, arg_0.a)) ^ vec4<u32>(1u, 32442u, u_input.a | 1u, _wgslsmith_mod_u32(u_input.a, u_input.a))));
    var_0 = vec4<u32>(4294967295u, ~48465u, var_0.x >> (~(u_input.a ^ var_0.x) % 32u), 27349u) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, u_input.a, firstTrailingBit(4294967295u), _wgslsmith_add_u32(0u, u_input.a)), vec4<u32>(_wgslsmith_mod_u32(firstTrailingBit(4294967295u), u_input.a), 8727u, u_input.a, ~abs(21910u))) % vec4<u32>(32u));
    let var_1 = 1u;
    var var_2 = arg_2;
    var var_3 = arg_2.d;
    return _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1676f)) - _wgslsmith_f_op_f32(arg_1 * var_2.b.x)), _wgslsmith_f_op_f32(sign(-1021f)), _wgslsmith_f_op_f32(-var_2.b.x), -369f) + vec4<f32>(_wgslsmith_f_op_f32(step(1014f, _wgslsmith_f_op_f32(-436f * -450f))), _wgslsmith_f_op_f32(-var_2.b.x), -555f, -694f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, arg_2.b.x, 408f, var_2.b.x) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.b.x, arg_2.b.x, 726f, var_2.b.x) - vec4<f32>(arg_1, arg_2.b.x, -162f, -1088f))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_1, -827f, arg_1, -718f))) - _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_1, 1458f, -180f, 148f)))))), vec4<bool>(!(~var_0.x >= _wgslsmith_mult_u32(96450u, 1u)), !(!arg_2.c.x) & arg_2.d.a, var_3.a, any(!select(vec3<bool>(false, arg_2.a.x, false), vec3<bool>(var_2.c.x, true, true), arg_2.d.a)))));
}

fn func_1(arg_0: Struct_3, arg_1: vec3<i32>, arg_2: Struct_3, arg_3: vec4<u32>) -> vec2<u32> {
    var var_0 = reverseBits(-_wgslsmith_clamp_i32(arg_1.x, _wgslsmith_clamp_i32(arg_1.x, -25212i, -1i), arg_1.x ^ -66760i) & arg_1.x);
    let var_1 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_2.b.x, arg_0.b.x, arg_0.b.x, -964f)))) + _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(arg_0.b.x + 1487f), arg_2.b.x, _wgslsmith_f_op_f32(-arg_2.b.x), _wgslsmith_f_op_f32(func_2(Struct_1(vec2<f32>(arg_2.b.x, 698f), vec4<f32>(arg_0.b.x, arg_0.b.x, arg_0.b.x, -849f), vec4<f32>(-1695f, 910f, -108f, arg_2.b.x), arg_1), arg_3.yxx, Struct_1(vec2<f32>(arg_0.b.x, 1688f), vec4<f32>(440f, -168f, arg_0.b.x, arg_2.b.x), vec4<f32>(2147f, -1000f, arg_2.b.x, arg_2.b.x), vec3<i32>(arg_1.x, 2147483647i, arg_1.x))))), _wgslsmith_f_op_vec4_f32(func_3(arg_0.d, _wgslsmith_f_op_f32(-arg_0.b.x), arg_2))))), vec4<f32>(arg_2.b.x, _wgslsmith_div_f32(arg_2.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-782f + arg_0.b.x) + arg_0.b.x)), arg_2.b.x, _wgslsmith_f_op_f32(arg_2.b.x * arg_2.b.x))));
    var var_2 = arg_0;
    let var_3 = Struct_1(arg_0.b.yx, _wgslsmith_f_op_vec4_f32(var_1 - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-486f, _wgslsmith_f_op_f32(f32(-1f) * -2265f), _wgslsmith_f_op_f32(-var_2.b.x), arg_0.b.x))), var_1, ~arg_1);
    var_0 = _wgslsmith_mod_i32(_wgslsmith_mult_i32(firstTrailingBit(2147483647i), arg_1.x & ~(-1278i)), max(-((i32(-1i) * -21931i) | _wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.x, arg_1.x), arg_1.xx)), 1i));
    return ~arg_3.xz;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~_wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(4294967295u, u_input.a)), func_1(Struct_3(vec3<bool>(true, false, true), vec3<f32>(-1176f, 859f, 2196f), vec4<bool>(true, false, false, true), Struct_2(true)), vec3<i32>(-2147483647i, -2147483647i, 50637i), Struct_3(vec3<bool>(true, true, false), vec3<f32>(1413f, -1182f, -1115f), vec4<bool>(true, false, false, false), Struct_2(true)), vec4<u32>(u_input.a, 1u, u_input.a, 15796u)) & (vec2<u32>(0u, u_input.a) ^ vec2<u32>(62036u, u_input.a))), min(vec2<u32>(0u >> (u_input.a % 32u), u_input.a), vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, u_input.a, 16698u), vec4<u32>(u_input.a, u_input.a, u_input.a, 25588u)), reverseBits(0u))));
    let var_1 = -1256f;
    let var_2 = max(~(-12386i), _wgslsmith_div_i32(_wgslsmith_mod_i32(1234i, i32(-1i) * -53432i), abs(2147483647i)));
    let var_3 = select(select(select(vec3<bool>(u_input.a <= 4294967295u, false, false), vec3<bool>(false, var_1 < var_1, false), select(select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), true), select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true)), vec3<bool>(true, true, false))), vec3<bool>(true, any(vec2<bool>(false, false)) & true, !all(vec2<bool>(true, true))), true), vec3<bool>(true, true, true), vec3<bool>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 0u, 0u, 56844u) & vec4<u32>(0u, u_input.a, 4294967295u, u_input.a), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, u_input.a, 13172u, 28849u), vec4<u32>(19052u, 539u, 1u, u_input.a), vec4<u32>(var_0.x, 0u, 6629u, 1u))) < 4294967295u, true, true));
    let var_4 = Struct_1(_wgslsmith_f_op_vec4_f32(func_3(Struct_2(var_3.x), 513f, Struct_3(var_3, vec3<f32>(_wgslsmith_f_op_f32(func_2(Struct_1(vec2<f32>(var_1, var_1), vec4<f32>(-1137f, var_1, var_1, var_1), vec4<f32>(1000f, var_1, 109f, -1994f), vec3<i32>(var_2, 58410i, -2432i)), vec3<u32>(18581u, u_input.a, u_input.a), Struct_1(vec2<f32>(-1163f, 2766f), vec4<f32>(-448f, -1000f, var_1, -164f), vec4<f32>(-1670f, -515f, var_1, var_1), vec3<i32>(var_2, -2147483647i, -28367i)))), _wgslsmith_div_f32(156f, -1139f), _wgslsmith_f_op_f32(var_1 - var_1)), select(!vec4<bool>(var_3.x, var_3.x, false, var_3.x), !vec4<bool>(true, true, false, var_3.x), vec4<bool>(var_3.x, true, true, true)), Struct_2(var_3.x)))).yz, vec4<f32>(-2247f, 472f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1269f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(var_1, -803f)), _wgslsmith_f_op_f32(-var_1))) + -862f)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(floor(var_1)), _wgslsmith_f_op_f32(floor(1691f)), 596f) * vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -864f), _wgslsmith_f_op_f32(f32(-1f) * -557f), _wgslsmith_f_op_f32(f32(-1f) * -953f), var_1)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -1163f, var_1, var_1) - vec4<f32>(var_1, 1102f, var_1, var_1))) * vec4<f32>(var_1, 2600f, _wgslsmith_f_op_f32(var_1 * var_1), _wgslsmith_f_op_f32(select(-395f, -1250f, true)))), vec4<bool>(true, true, true, true))), vec3<i32>(_wgslsmith_mult_i32(~var_2, 1i), var_2, var_2));
    let var_5 = ~_wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_mult_i32(~var_4.d.x, var_4.d.x), var_4.d.x), var_4.d.yx);
    let var_6 = u_input.a | ~(~(~max(8616u, 42897u)));
    let var_7 = var_4.d;
    var var_8 = vec3<i32>(reverseBits(-_wgslsmith_dot_vec3_i32(var_7, firstLeadingBit(vec3<i32>(var_5, var_7.x, var_5)))), -7696i, var_7.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(sign(var_4.a.x)), vec2<i32>(var_2, 1i), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(127f, var_1) - _wgslsmith_f_op_f32(1824f - -733f)) * -989f))), -21384i, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(419f, var_1), _wgslsmith_f_op_f32(func_2(var_4, vec3<u32>(u_input.a, ~0u, ~u_input.a), var_4)), any(!var_3.yy))));
}

