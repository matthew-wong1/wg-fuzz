struct Struct_1 {
    a: vec4<i32>,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3() -> u32 {
    let var_0 = Struct_1(_wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_div_i32(~u_input.a.x, u_input.a.x), reverseBits(~2147483647i), u_input.c.x, _wgslsmith_dot_vec2_i32(u_input.c.zx, u_input.a.xy)), min(~(~u_input.a), vec4<i32>(u_input.b, _wgslsmith_dot_vec3_i32(u_input.c, u_input.a.wxw), i32(-1i) * -2848i, 2147483647i))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-679f - -294f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1938f + 1110f))), _wgslsmith_f_op_f32(f32(-1f) * -190f), 1082f));
    var var_1 = Struct_1(vec4<i32>(1i, ~(-(-57787i | u_input.c.x)), -var_0.a.x, (u_input.a.x << (1u % 32u)) ^ 1i), _wgslsmith_f_op_vec3_f32(var_0.b * _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.b)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(var_0.b, var_0.b)))))));
    let var_2 = var_0;
    var var_3 = 77549u >= _wgslsmith_sub_u32(firstTrailingBit(abs(12033u)) & firstLeadingBit(28631u), ~min(_wgslsmith_mult_u32(1u, 4294967295u), 10622u));
    let var_4 = var_2;
    return 46825u;
}

fn func_2() -> vec4<i32> {
    let var_0 = Struct_1(vec4<i32>(_wgslsmith_mult_i32(i32(-1i) * -43998i, countOneBits(~u_input.c.x)), _wgslsmith_dot_vec2_i32(u_input.a.xz, u_input.a.yw << (vec2<u32>(1u, 1u) % vec2<u32>(32u))), _wgslsmith_dot_vec4_i32(u_input.a, _wgslsmith_mult_vec4_i32(u_input.a, vec4<i32>(-27965i, -21890i, u_input.a.x, u_input.a.x))) | -countOneBits(u_input.c.x), u_input.c.x), vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1187f + -2420f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-394f * 579f) - -915f), 226f));
    let var_1 = _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.x) * -1224f), _wgslsmith_f_op_f32(ceil(var_0.b.x))), var_0.b.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b.x, var_0.b.x)) + var_0.b.yy)));
    var var_2 = vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_div_u32(reverseBits(1u), firstTrailingBit(0u)) ^ min(1u, firstTrailingBit(1u)), countOneBits(41793u)), _wgslsmith_dot_vec3_u32(vec3<u32>(func_3(), abs(~0u), _wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(1u, 5169u, 1u)), vec3<u32>(0u, 4294967295u, 29143u))), ~(select(vec3<u32>(36841u, 0u, 4294967295u), vec3<u32>(5484u, 45929u, 49728u), true) ^ select(vec3<u32>(4294967295u, 109516u, 4294967295u), vec3<u32>(0u, 20550u, 4294967295u), false))), ~(~min(select(0u, 1u, false), ~15875u)), 1u);
    var_2 = max(_wgslsmith_mult_vec4_u32(~vec4<u32>(var_2.x, 4294967295u, var_2.x, 4294967295u), ~(~vec4<u32>(1251u, 11191u, var_2.x, 43535u))), min(firstLeadingBit(~vec4<u32>(1u, 1782u, var_2.x, 1u)), firstLeadingBit(vec4<u32>(var_2.x, var_2.x, 4294967295u, 0u)) ^ vec4<u32>(4294967295u, 71847u, var_2.x, var_2.x))) >> ((reverseBits(abs(abs(vec4<u32>(var_2.x, 69088u, var_2.x, var_2.x)))) << (abs(abs(vec4<u32>(var_2.x, var_2.x, var_2.x, 4294967295u))) % vec4<u32>(32u))) % vec4<u32>(32u));
    var_2 = ~_wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(var_2.x, var_2.x, 4972u, 0u) & vec4<u32>(var_2.x, var_2.x, 4294967295u, 12537u), vec4<u32>(var_2.x, var_2.x, 1u, 13481u)), vec4<u32>(var_2.x, var_2.x, 8909u, var_2.x) ^ ~vec4<u32>(0u, var_2.x, 6894u, 0u)) << (select(reverseBits(vec4<u32>(var_2.x, var_2.x, _wgslsmith_mult_u32(var_2.x, 1u), var_2.x)), abs(~select(vec4<u32>(var_2.x, var_2.x, var_2.x, 0u), vec4<u32>(11422u, 0u, 30787u, 4294967295u), false)), select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, true), true), true), vec4<bool>(true, true, true, true), abs(u_input.a.x) >= _wgslsmith_add_i32(14366i, var_0.a.x))) % vec4<u32>(32u));
    return firstTrailingBit(_wgslsmith_div_vec4_i32(_wgslsmith_add_vec4_i32(-max(vec4<i32>(u_input.a.x, -2147483647i, var_0.a.x, -38198i), vec4<i32>(u_input.b, -1i, var_0.a.x, u_input.a.x)), select(-u_input.a, var_0.a, all(vec3<bool>(true, true, false)))), _wgslsmith_clamp_vec4_i32(u_input.a, countOneBits(-var_0.a), var_0.a)));
}

fn func_1(arg_0: Struct_1, arg_1: bool) -> bool {
    var var_0 = vec2<u32>(1u, ~1u);
    var var_1 = Struct_1(-_wgslsmith_sub_vec4_i32(-reverseBits(vec4<i32>(arg_0.a.x, -20996i, 1i, arg_0.a.x)), _wgslsmith_add_vec4_i32(u_input.a, ~arg_0.a)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_0.b.x, arg_0.b.x, arg_0.b.x))));
    let var_2 = Struct_1(func_2(), vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_1.b.x * -745f), _wgslsmith_f_op_f32(f32(-1f) * -994f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_1.b.x - _wgslsmith_f_op_f32(min(-569f, -379f))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(var_1.b.x, var_1.b.x))))));
    let var_3 = arg_0;
    var var_4 = vec3<bool>(true, true, true);
    return (1639f == _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_0.b.x), _wgslsmith_f_op_f32(var_2.b.x * -1000f))), -564f)) || any(vec4<bool>(true, var_4.x, 746f != var_3.b.x, !(var_4.x || arg_1)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(select(vec4<bool>(all(vec4<bool>(false, false, true, false)) & true, true, u_input.a.x == -11235i, any(vec3<bool>(true, true, true))), !vec4<bool>(any(vec2<bool>(true, false)), func_1(Struct_1(vec4<i32>(u_input.a.x, u_input.c.x, 60767i, 1i), vec3<f32>(1621f, 1102f, 295f)), false), true, true), !(!select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true), false))), select(select(select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true))), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, any(vec4<bool>(false, false, false, false)))), vec4<bool>(any(vec4<bool>(true, true, true, true)), true, true, true), vec4<bool>(all(select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true))), true, true, true)), !(!(!all(vec4<bool>(true, false, true, true)))));
    var var_1 = Struct_1(u_input.a, vec3<f32>(1f, 1f, 1f));
    var var_2 = vec4<u32>(~firstTrailingBit(_wgslsmith_sub_u32(68160u, 0u)), _wgslsmith_mod_u32(_wgslsmith_div_u32(min(4294967295u, 4294967295u), 1u), ~1u), 9495u, 1u) ^ (vec4<u32>(1u, 1u, countOneBits(~30554u), select(1u, 72054u, false)) ^ min(vec4<u32>(firstTrailingBit(16199u), ~73417u, select(33477u, 26490u, var_0.x), max(0u, 0u)), firstLeadingBit(_wgslsmith_div_vec4_u32(vec4<u32>(0u, 1u, 5953u, 1u), vec4<u32>(4294967295u, 10925u, 4294967295u, 52265u)))));
    var_2 = ~(countOneBits(~(vec4<u32>(31722u, 8168u, var_2.x, var_2.x) << (vec4<u32>(18132u, 125002u, var_2.x, 1707u) % vec4<u32>(32u)))) | ~(~vec4<u32>(1u, 2905u, 80192u, var_2.x)));
    let var_3 = countOneBits(2147483647i);
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(2896u, var_2.x, 0u), ~vec3<u32>(var_2.x, var_2.x, 4294967295u)), var_2.x, ~(var_2.x ^ 6499u), ~var_2.x), min(_wgslsmith_add_u32(14719u, min(~var_2.x, var_2.x)), _wgslsmith_div_u32(~var_2.x, ~0u)));
}

