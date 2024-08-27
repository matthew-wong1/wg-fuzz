struct Struct_1 {
    a: u32,
    b: vec3<i32>,
    c: vec3<bool>,
    d: bool,
    e: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: bool,
    d: Struct_1,
    e: vec2<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: Struct_2,
    d: i32,
}

struct Struct_4 {
    a: f32,
    b: Struct_3,
    c: vec3<bool>,
    d: Struct_2,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 7> = array<u32, 7>(90118u, 4294967295u, 54748u, 0u, 99345u, 1u, 26379u);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec4<u32>) -> vec3<bool> {
    var var_0 = arg_0;
    let var_1 = 1000f;
    var var_2 = Struct_1(countOneBits(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(47449u, 7u)], 7u)], 53215u), vec2<u32>(4294967295u, 0u)), _wgslsmith_dot_vec2_u32(var_0.wx, var_0.yz))) | 1u, firstLeadingBit(vec3<i32>(u_input.a >> (var_0.x % 32u), countOneBits(firstLeadingBit(2147483647i)), i32(-1i) * -u_input.a)), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), any(vec4<bool>(true, true, true, false)))), vec3<bool>(true, true, all(vec4<bool>(true, true, true, true))), vec3<bool>(0i != _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.a, 37783i), vec3<i32>(1i, 18701i, u_input.a)), !all(vec2<bool>(true, true)), all(vec3<bool>(false, false, false)))), false, !(!select(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true)), vec2<bool>(true, true), true)));
    global0 = array<u32, 7>();
    let var_3 = 7713u;
    return var_2.c;
}

fn func_2(arg_0: vec2<f32>, arg_1: vec4<u32>, arg_2: i32) -> vec3<u32> {
    global0 = array<u32, 7>();
    var var_0 = true;
    let var_1 = func_3((~vec4<u32>(arg_1.x, arg_1.x, arg_1.x, 0u) ^ max(~arg_1, _wgslsmith_mod_vec4_u32(vec4<u32>(0u, 83359u, arg_1.x, arg_1.x), vec4<u32>(1u, 38305u, 1u, arg_1.x)))) >> (vec4<u32>(~90025u, ~(arg_1.x | arg_1.x), global0[_wgslsmith_index_u32(0u, 7u)], 4294967295u) % vec4<u32>(32u)));
    var var_2 = Struct_1(_wgslsmith_mod_u32(0u, min(1u, arg_1.x ^ countOneBits(72111u))), min(countOneBits(~vec3<i32>(-65634i, u_input.a, u_input.a)), reverseBits(firstLeadingBit(vec3<i32>(u_input.a, u_input.a, -2147483647i)) << (~vec3<u32>(1u, 0u, 104371u) % vec3<u32>(32u)))), vec3<bool>(var_1.x, var_1.x, func_3(vec4<u32>(1u, ~6797u, 4294967295u, global0[_wgslsmith_index_u32(countOneBits(arg_1.x), 7u)])).x), false, var_1.yy);
    let var_3 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1962f, arg_0.x, false)) * 1f), arg_0.x) - -1749f), Struct_3(Struct_1(16913u, ~var_2.b, select(!var_2.c, var_2.c, any(var_1)), !var_2.e.x, var_2.c.yx), var_1.x, Struct_2(Struct_1(1u, -var_2.b, var_2.c, any(vec4<bool>(var_1.x, var_2.e.x, var_2.c.x, var_1.x)), vec2<bool>(var_2.d, true)), firstTrailingBit(vec2<i32>(u_input.a, var_2.b.x)), false, Struct_1(max(global0[_wgslsmith_index_u32(arg_1.x, 7u)], 1u), var_2.b, !vec3<bool>(false, var_1.x, false), var_1.x, var_1.yy), !var_2.c.yy), -1i), vec3<bool>(true, var_1.x, true), Struct_2(Struct_1(_wgslsmith_mult_u32(5904u, 30168u), min(countOneBits(vec3<i32>(u_input.a, -73437i, u_input.a)), var_2.b), select(func_3(vec4<u32>(1172u, global0[_wgslsmith_index_u32(0u, 7u)], arg_1.x, arg_1.x)), var_2.c, true || var_2.e.x), !var_2.c.x, vec2<bool>(var_2.d, all(vec2<bool>(var_2.d, var_2.c.x)))), var_2.b.xy, !(!var_2.e.x), Struct_1(_wgslsmith_mult_u32(~4193u, max(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 7u)], 7u)], 0u)), _wgslsmith_sub_vec3_i32(_wgslsmith_div_vec3_i32(var_2.b, vec3<i32>(arg_2, 2147483647i, 25470i)), vec3<i32>(-24056i, 23600i, u_input.a)), vec3<bool>(var_1.x, var_2.c.x, -1i <= arg_2), false, var_1.yy), !vec2<bool>(any(vec4<bool>(var_2.d, var_2.c.x, var_2.c.x, var_2.e.x)), any(vec4<bool>(true, true, false, var_1.x)))), _wgslsmith_sub_vec2_i32(~select(-var_2.b.zy, var_2.b.yx, var_2.e), _wgslsmith_mult_vec2_i32(~var_2.b.zx >> (arg_1.zz % vec2<u32>(32u)), _wgslsmith_add_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(37001i, arg_2), var_2.b.xy), var_2.b.xy))));
    return vec3<u32>(~(~(~global0[_wgslsmith_index_u32(4294967295u, 7u)]) ^ 1u), ~(~(24200u >> (arg_1.x % 32u))), _wgslsmith_dot_vec3_u32(vec3<u32>(57024u, _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.x, var_2.a), arg_1.xy), global0[_wgslsmith_index_u32(select(var_2.a, arg_1.x, var_2.c.x), 7u)]), 70331u), _wgslsmith_add_vec3_u32(reverseBits(arg_1.zww), firstTrailingBit(_wgslsmith_mult_vec3_u32(vec3<u32>(arg_1.x, 0u, var_3.b.c.a.a), vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_2.a, 7u)], 7u)], var_2.a, arg_1.x))))));
}

fn func_1(arg_0: Struct_1, arg_1: u32) -> f32 {
    let var_0 = _wgslsmith_div_vec2_i32(~_wgslsmith_add_vec2_i32(_wgslsmith_add_vec2_i32(max(arg_0.b.xx, arg_0.b.xz), arg_0.b.zy), vec2<i32>(0i, 18109i) & _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a, u_input.a), arg_0.b.yy)), vec2<i32>(u_input.a, abs(max(max(1i, 2147483647i), 0i))));
    let var_1 = func_2(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-995f + 1161f)))), _wgslsmith_f_op_f32(round(-674f))), ~(~max(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, arg_1, arg_1, 40211u), vec4<u32>(4294967295u, 0u, arg_1, arg_1)), vec4<u32>(52610u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 7u)], 7u)], arg_0.a, arg_0.a))), -firstLeadingBit(select(-1i, abs(2172i), !arg_0.e.x)));
    var var_2 = _wgslsmith_dot_vec2_u32(var_1.xz, vec2<u32>(0u, _wgslsmith_add_u32(arg_1, _wgslsmith_dot_vec4_u32(~vec4<u32>(62930u, var_1.x, 12744u, 4294967295u), ~vec4<u32>(1u, global0[_wgslsmith_index_u32(0u, 7u)], 13827u, 56428u)))));
    global0 = array<u32, 7>();
    let var_3 = _wgslsmith_dot_vec3_i32(reverseBits(_wgslsmith_mult_vec3_i32(-vec3<i32>(1i, u_input.a, arg_0.b.x) ^ -arg_0.b, vec3<i32>(u_input.a, var_0.x, -4052i) | vec3<i32>(0i, u_input.a, var_0.x))), reverseBits(arg_0.b));
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(240f, -780f)), _wgslsmith_f_op_f32(min(382f, 903f))) + -641f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-763f - -792f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -165f) + _wgslsmith_f_op_f32(f32(-1f) * -202f))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 7>();
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(969f)) * _wgslsmith_f_op_f32(1409f * 1020f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1203f), -738f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-793f + -1171f) + _wgslsmith_f_op_f32(trunc(-1453f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-497f * 1606f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-936f, -416f)) - -128f) * -345f)), 1254f);
    let var_1 = Struct_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(Struct_1(190118u, vec3<i32>(u_input.a, -2147483647i, -2147483647i), vec3<bool>(true, false, true), true, vec2<bool>(false, false)), global0[_wgslsmith_index_u32(0u, 7u)])) * _wgslsmith_div_f32(-232f, -1345f)))), var_0.x), Struct_3(Struct_1(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(global0[_wgslsmith_index_u32(3486u, 7u)], 1u), 7u)], 7u)], abs(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(33930i, u_input.a, 1i))), vec3<bool>(true, true, true), true, vec2<bool>(true, all(vec3<bool>(false, true, true)))), u_input.a > ~abs(-1i), Struct_2(Struct_1(global0[_wgslsmith_index_u32(63992u, 7u)], _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, 32156i, -20222i), vec3<i32>(-1i, u_input.a, u_input.a)), vec3<bool>(true, true, true), true, vec2<bool>(true, true)), vec2<i32>(abs(u_input.a), -53454i), false, Struct_1(_wgslsmith_add_u32(7209u, global0[_wgslsmith_index_u32(0u, 7u)]), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.a, 0i, -1i), vec3<i32>(u_input.a, -1i, u_input.a)), vec3<bool>(false, true, true), any(vec2<bool>(true, true)), vec2<bool>(true, true)), vec2<bool>(true, true)), max(_wgslsmith_dot_vec3_i32(vec3<i32>(12446i, 0i, -1i), vec3<i32>(u_input.a, -2147483647i, u_input.a)), u_input.a) << (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(65983u, 7u)], 7u)] % 32u)), vec3<bool>(true, !select(true, any(vec4<bool>(false, false, false, true)), true), false), Struct_2(Struct_1(global0[_wgslsmith_index_u32(~abs(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 7u)], 7u)], 7u)], 7u)]), 7u)], vec3<i32>(_wgslsmith_mult_i32(6194i, u_input.a), -24308i, -u_input.a), vec3<bool>(true, var_0.x > 695f, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 7u)], 7u)] != 128913u), true, vec2<bool>(true, global0[_wgslsmith_index_u32(42819u, 7u)] == 16134u)), _wgslsmith_clamp_vec2_i32(firstTrailingBit(vec2<i32>(u_input.a, u_input.a)) & _wgslsmith_add_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(-1i, u_input.a)), abs(vec2<i32>(-1i, -10932i)), -vec2<i32>(-1i, 2147483647i)), true, Struct_1(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(16330u, 7u)], 7u)], -vec3<i32>(u_input.a, -51996i, u_input.a), vec3<bool>(true, true, false), true, select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true))), func_3(vec4<u32>(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(10535u, 7u)], 7u)], ~4294967295u, 9776u, global0[_wgslsmith_index_u32(0u, 7u)] | global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(8149u, 7u)], 7u)], 7u)], 7u)])).yz), vec2<i32>(-1155i, firstLeadingBit(min(i32(-1i) * -73759i, u_input.a))));
    global0 = array<u32, 7>();
    var var_2 = 1u;
    let var_3 = vec3<bool>(true, _wgslsmith_mult_i32(~firstLeadingBit(2147483647i), _wgslsmith_div_i32(_wgslsmith_mod_i32(-2147483647i, 11176i), firstLeadingBit(var_1.d.d.b.x))) > 2147483647i, true);
    let var_4 = (abs(vec3<i32>(-1i) * -vec3<i32>(var_1.d.d.b.x, var_1.b.d, 0i)) ^ vec3<i32>(-abs(u_input.a), 11924i, u_input.a)) | -vec3<i32>(var_1.b.a.b.x, var_1.d.a.b.x >> (~global0[_wgslsmith_index_u32(9308u, 7u)] % 32u), -1i);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(12014u, ~_wgslsmith_add_u32(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(var_1.d.a.a, 4294967295u, 31003u), vec3<u32>(global0[_wgslsmith_index_u32(4294967295u, 7u)], 134875u, 4294967295u)))), ~_wgslsmith_div_vec3_u32(reverseBits(vec3<u32>(35526u, 58749u, var_1.b.c.a.a)) ^ (vec3<u32>(61057u, var_1.b.a.a, global0[_wgslsmith_index_u32(38938u, 7u)]) >> (vec3<u32>(var_1.b.c.a.a, global0[_wgslsmith_index_u32(5709u, 7u)], 19281u) % vec3<u32>(32u))), _wgslsmith_mult_vec3_u32(~vec3<u32>(19775u, global0[_wgslsmith_index_u32(96866u, 7u)], global0[_wgslsmith_index_u32(13219u, 7u)]), min(vec3<u32>(4294967295u, 1u, global0[_wgslsmith_index_u32(77075u, 7u)]), vec3<u32>(global0[_wgslsmith_index_u32(0u, 7u)], var_1.d.a.a, 4294967295u)))), 43452u, -1455f);
}

