struct Struct_1 {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec4<u32>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: f32,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<u32>,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2(arg_0: f32, arg_1: bool) -> vec4<u32> {
    var var_0 = 819u >> (u_input.b.x % 32u);
    var_0 = 2131u;
    var_0 = reverseBits(abs(_wgslsmith_mod_u32(1u, u_input.b.x)));
    var_0 = 63610u;
    let var_1 = -1i;
    return ~select(countOneBits(vec4<u32>(1u | u_input.b.x, u_input.b.x, 97314u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.c, 58862u), vec3<u32>(u_input.c, u_input.c, 92506u)))), ~vec4<u32>(38214u, u_input.b.x, 1u, 74122u), !arg_1);
}

fn func_3(arg_0: vec2<bool>, arg_1: f32, arg_2: f32) -> u32 {
    let var_0 = Struct_1((firstTrailingBit(~vec3<i32>(2147483647i, u_input.a.x, 0i)) ^ ((u_input.a.xww << (u_input.b % vec3<u32>(32u))) & countOneBits(vec3<i32>(22680i, 1i, u_input.a.x)))) << (vec3<u32>(6316u, ~u_input.c, min(~u_input.c, ~3330u)) % vec3<u32>(32u)), _wgslsmith_sub_vec4_i32(firstTrailingBit(_wgslsmith_mod_vec4_i32(u_input.a & u_input.a, -u_input.a)), _wgslsmith_mult_vec4_i32(countOneBits(vec4<i32>(-2147483647i, u_input.a.x, u_input.a.x, -1i)), vec4<i32>(-2147483647i, u_input.a.x, u_input.a.x, u_input.a.x)) << (vec4<u32>(1u, 32083u >> (u_input.c % 32u), func_2(1437f, true).x, 0u) % vec4<u32>(32u))), vec4<u32>(4294967295u, u_input.c, u_input.b.x, _wgslsmith_div_u32(_wgslsmith_sub_u32(1u, u_input.b.x), ~u_input.b.x)) ^ ~abs(select(vec4<u32>(u_input.b.x, 17059u, 0u, u_input.c), vec4<u32>(u_input.c, u_input.c, 60155u, u_input.b.x), false)), u_input.b);
    var var_1 = _wgslsmith_f_op_f32(arg_2 - 146f);
    var_1 = _wgslsmith_f_op_f32(-arg_2);
    var_1 = arg_2;
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_2)));
    return ~(~_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 58001u), u_input.b.zx), 14983u) << (~var_0.c.x % 32u));
}

fn func_4(arg_0: vec4<u32>, arg_1: i32) -> Struct_2 {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + 362f), ~vec2<i32>(0i, firstLeadingBit(u_input.a.x)));
    var var_1 = vec4<bool>(all(select(select(select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), false), vec3<bool>(true, true, true), select(true, false, true)), vec3<bool>(var_0.b.x >= 1i, true, true), vec3<bool>(any(vec2<bool>(true, false)), true, true))), !all(vec3<bool>(true, true, false)), true, _wgslsmith_sub_i32(reverseBits(0i) << (0u % 32u), 1i) > arg_1);
    var_1 = !select(select(!(!vec4<bool>(true, var_1.x, var_1.x, true)), !select(vec4<bool>(var_1.x, var_1.x, true, var_1.x), vec4<bool>(var_1.x, false, var_1.x, var_1.x), var_1.x), true), vec4<bool>(var_1.x, (6427u >> (arg_0.x % 32u)) <= u_input.c, select(var_1.x, true, true), !var_1.x | var_1.x), all(select(var_1.wz, select(vec2<bool>(false, false), var_1.xw, var_1.x), var_1.x)));
    let var_2 = _wgslsmith_div_f32(_wgslsmith_div_f32(-268f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(var_0.a, var_0.a, var_1.x))))))), var_0.a);
    var_1 = select(select(select(select(vec4<bool>(true, var_1.x, var_1.x, var_1.x), vec4<bool>(var_1.x, var_1.x, false, var_1.x), all(vec4<bool>(var_1.x, true, var_1.x, false))), !vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), var_1.x), select(!select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, var_1.x), true), !select(vec4<bool>(false, true, var_1.x, var_1.x), vec4<bool>(true, var_1.x, false, var_1.x), vec4<bool>(var_1.x, false, false, var_1.x)), 38730u < ~arg_0.x), var_1.x), select(!select(!vec4<bool>(false, true, var_1.x, var_1.x), vec4<bool>(true, true, false, var_1.x), !vec4<bool>(true, var_1.x, true, var_1.x)), !select(!vec4<bool>(var_1.x, var_1.x, false, var_1.x), vec4<bool>(true, var_1.x, false, true), vec4<bool>(true, true, true, true)), select(!(!vec4<bool>(false, true, var_1.x, true)), select(!vec4<bool>(var_1.x, false, var_1.x, var_1.x), vec4<bool>(false, var_1.x, var_1.x, true), var_1.x), select(select(vec4<bool>(var_1.x, true, var_1.x, var_1.x), vec4<bool>(false, true, false, false), vec4<bool>(var_1.x, false, false, var_1.x)), !vec4<bool>(var_1.x, false, false, true), any(vec3<bool>(true, true, var_1.x))))), var_1.x);
    return var_0;
}

fn func_1() -> u32 {
    var var_0 = func_4(_wgslsmith_clamp_vec4_u32(func_2(-1203f, false), vec4<u32>(u_input.c, _wgslsmith_sub_u32(_wgslsmith_add_u32(u_input.b.x, u_input.b.x), _wgslsmith_clamp_u32(66655u, 17741u, 62368u)), func_3(vec2<bool>(true, false), _wgslsmith_div_f32(-183f, -1765f), _wgslsmith_f_op_f32(sign(1073f))), ~1u), select(~vec4<u32>(u_input.b.x, u_input.c, 75984u, u_input.c) >> (select(vec4<u32>(u_input.b.x, 0u, 14216u, 35544u), vec4<u32>(1u, 0u, u_input.c, u_input.c), false) % vec4<u32>(32u)), vec4<u32>(u_input.c, u_input.b.x, 4294967295u, func_2(-1776f, false).x), vec4<bool>(true, true, true, true))), -35130i);
    let var_1 = _wgslsmith_clamp_vec2_u32(countOneBits(u_input.b.xz), ~u_input.b.xy, _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b.x, u_input.c), func_2(_wgslsmith_f_op_f32(-var_0.a), 9050u < u_input.c).wx, _wgslsmith_div_vec2_u32(vec2<u32>(u_input.c, u_input.c), u_input.b.xz) ^ ~u_input.b.xz) & abs(~vec2<u32>(u_input.b.x, 0u)));
    var_0 = func_4(firstTrailingBit(~max(vec4<u32>(u_input.c, 1u, var_1.x, 25154u) ^ vec4<u32>(4294967295u, u_input.b.x, var_1.x, var_1.x), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c, 7483u, 1u, u_input.c), vec4<u32>(u_input.b.x, 4294967295u, var_1.x, 15702u)))), -_wgslsmith_add_i32(max(_wgslsmith_sub_i32(u_input.a.x, u_input.a.x), u_input.a.x), var_0.b.x));
    let var_2 = _wgslsmith_sub_vec3_u32(u_input.b, u_input.b);
    var var_3 = func_4(select(abs(_wgslsmith_sub_vec4_u32(vec4<u32>(var_1.x, 1u, var_2.x, u_input.c), vec4<u32>(19864u, var_2.x, var_2.x, var_2.x) ^ vec4<u32>(32663u, 1u, 1u, 1697u))), ~(~vec4<u32>(37615u, 38674u, 33258u, 14752u) | select(vec4<u32>(1u, var_1.x, 24987u, 0u), vec4<u32>(1613u, 4933u, u_input.c, 0u), false)), 1u < _wgslsmith_sub_u32(_wgslsmith_mult_u32(4294967295u, var_1.x), u_input.c)), 2147483647i);
    return ~0u;
}

fn func_5(arg_0: vec2<u32>) -> Struct_1 {
    var var_0 = func_4(vec4<u32>(1u, _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.b.x, 1u), _wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, arg_0.x), vec2<u32>(u_input.b.x, u_input.b.x))) >> (~u_input.c % 32u), 6680u, _wgslsmith_div_u32(arg_0.x, 7839u)), ~(-_wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.a.x, 58420i, 1i, 4595i), firstLeadingBit(vec4<i32>(-50809i, 1i, -40196i, u_input.a.x)))));
    var_0 = func_4(vec4<u32>(func_2(-1114f, true).x, 1u, ~u_input.c, 90663u), min(abs(-2147483647i), -1i));
    var_0 = func_4(abs(_wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, 1u, 4294967295u, 0u) >> (vec4<u32>(arg_0.x, 44449u, arg_0.x, 13246u) % vec4<u32>(32u)), reverseBits(vec4<u32>(arg_0.x, arg_0.x, u_input.c, 15873u))), ~(~vec4<u32>(u_input.b.x, u_input.c, arg_0.x, arg_0.x)))), select(~(-3580i), 1i, !((var_0.a < var_0.a) & false)));
    var var_1 = Struct_2(-496f, -((_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a.x, 28574i), var_0.b) & _wgslsmith_add_vec2_i32(vec2<i32>(15722i, 5131i), var_0.b)) << (vec2<u32>(u_input.b.x, u_input.b.x) % vec2<u32>(32u))));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.a), 819f) + 191f);
    return Struct_1(~vec3<i32>(-3400i, firstLeadingBit(var_0.b.x), firstLeadingBit(-1i)), ~u_input.a, ~(~abs(~vec4<u32>(arg_0.x, arg_0.x, 61206u, 37929u))), firstLeadingBit(select(u_input.b, vec3<u32>(arg_0.x, arg_0.x, arg_0.x), vec3<bool>(true, false, true)) & u_input.b) >> (abs(vec3<u32>(0u, 36420u, 7038u) | u_input.b) % vec3<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(1000f, u_input.a.xx);
    var var_1 = func_5(select(vec2<u32>(u_input.b.x | u_input.c, func_1()) << (~u_input.b.xz % vec2<u32>(32u)), ~firstLeadingBit(u_input.b.zx) >> (vec2<u32>(79959u, ~u_input.c) % vec2<u32>(32u)), true));
    var_1 = func_5(abs(_wgslsmith_mult_vec2_u32(var_1.c.wx, ~var_1.c.zw) >> (select(vec2<u32>(1u, 1u), _wgslsmith_mult_vec2_u32(vec2<u32>(var_1.d.x, u_input.c), vec2<u32>(114354u, u_input.b.x)), select(vec2<bool>(true, false), vec2<bool>(false, true), true)) % vec2<u32>(32u))));
    let var_2 = var_0;
    let var_3 = true;
    var_1 = Struct_1(-(~u_input.a.xxy), vec4<i32>(-_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, var_2.b.x, var_0.b.x, var_2.b.x), u_input.a), _wgslsmith_sub_i32(var_2.b.x, u_input.a.x)), u_input.a.x, _wgslsmith_mod_i32((i32(-1i) * -2147483647i) >> (u_input.c % 32u), var_2.b.x), _wgslsmith_dot_vec3_i32(-vec3<i32>(var_2.b.x, var_2.b.x, var_2.b.x) ^ firstLeadingBit(u_input.a.yxw), var_1.a & vec3<i32>(var_1.a.x, var_2.b.x, var_2.b.x))), var_1.c, vec3<u32>(~1u, u_input.c, 77814u));
    var_1 = Struct_1(var_1.a, _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a.x, _wgslsmith_div_i32(var_2.b.x ^ -32678i, _wgslsmith_add_i32(var_0.b.x, var_1.a.x)), var_1.a.x, _wgslsmith_dot_vec4_i32(abs(var_1.b), abs(vec4<i32>(var_2.b.x, var_0.b.x, var_0.b.x, u_input.a.x)))), ~(~u_input.a)), ~_wgslsmith_mod_vec4_u32(~(~var_1.c), var_1.c), func_5(_wgslsmith_sub_vec2_u32(~var_1.d.yz, _wgslsmith_add_vec2_u32(var_1.c.xy, firstLeadingBit(u_input.b.xz)))).c.zzx);
    var_1 = func_5(select(vec2<u32>(u_input.b.x, var_1.d.x) >> (firstLeadingBit(var_1.c.zz) % vec2<u32>(32u)), ~var_1.c.zz, !select(vec2<bool>(true, var_3), vec2<bool>(var_3, true), vec2<bool>(var_3, false))) >> (~(_wgslsmith_add_vec2_u32(vec2<u32>(var_1.c.x, 57082u), var_1.c.xw) >> (var_1.d.xy % vec2<u32>(32u))) % vec2<u32>(32u)));
    var var_4 = vec3<bool>(true, var_3, true);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(-2193f, -953f), var_1.c, abs(1i), i32(-1i) * -var_2.b.x);
}

