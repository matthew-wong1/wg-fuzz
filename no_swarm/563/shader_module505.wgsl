struct Struct_1 {
    a: vec3<i32>,
    b: vec4<i32>,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: u32,
    d: vec3<u32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 22> = array<Struct_1, 22>(Struct_1(vec3<i32>(0i, i32(-2147483648), -1i), vec4<i32>(-4142i, -1i, -1i, -35441i), 0i), Struct_1(vec3<i32>(43193i, 5379i, -1i), vec4<i32>(-1946i, 1i, 14232i, 29568i), i32(-2147483648)), Struct_1(vec3<i32>(1i, -1i, 2380i), vec4<i32>(-11446i, -10097i, -60946i, -5406i), 2147483647i), Struct_1(vec3<i32>(i32(-2147483648), -1i, -36002i), vec4<i32>(0i, -15345i, 0i, -37981i), -18891i), Struct_1(vec3<i32>(6929i, 0i, 2147483647i), vec4<i32>(-1i, 0i, 0i, 2247i), -13369i), Struct_1(vec3<i32>(1i, 33719i, -1i), vec4<i32>(34046i, -24203i, 1i, 69024i), -17678i), Struct_1(vec3<i32>(i32(-2147483648), 0i, 1i), vec4<i32>(i32(-2147483648), 51752i, 1i, 4952i), -4856i), Struct_1(vec3<i32>(0i, 42386i, -40589i), vec4<i32>(41755i, i32(-2147483648), 34704i, 2147483647i), 64872i), Struct_1(vec3<i32>(2147483647i, 22734i, 6872i), vec4<i32>(0i, 0i, -1i, -57045i), i32(-2147483648)), Struct_1(vec3<i32>(0i, i32(-2147483648), 1i), vec4<i32>(12039i, 0i, -12921i, -1i), -36519i), Struct_1(vec3<i32>(-1i, i32(-2147483648), -92962i), vec4<i32>(i32(-2147483648), 16892i, 17627i, 2147483647i), 0i), Struct_1(vec3<i32>(-21512i, -1i, -1i), vec4<i32>(22320i, -78764i, 2147483647i, -5847i), i32(-2147483648)), Struct_1(vec3<i32>(42684i, -15149i, 38399i), vec4<i32>(10971i, 2200i, -44013i, i32(-2147483648)), 31505i), Struct_1(vec3<i32>(1i, -18232i, i32(-2147483648)), vec4<i32>(4361i, -89023i, 7088i, -31629i), 0i), Struct_1(vec3<i32>(-1i, -4923i, i32(-2147483648)), vec4<i32>(-1i, -36752i, 976i, 105174i), 23530i), Struct_1(vec3<i32>(-24566i, 2147483647i, 9304i), vec4<i32>(0i, -50889i, -12754i, -55665i), -9212i), Struct_1(vec3<i32>(-1i, 2147483647i, -1i), vec4<i32>(i32(-2147483648), 16347i, -12579i, -12511i), 1i), Struct_1(vec3<i32>(-7623i, 2147483647i, 29649i), vec4<i32>(-23361i, -3016i, -18830i, 82676i), 1498i), Struct_1(vec3<i32>(42169i, -1i, -40332i), vec4<i32>(-18003i, -21425i, 0i, 41704i), i32(-2147483648)), Struct_1(vec3<i32>(-1i, 1i, -11975i), vec4<i32>(-72628i, 0i, -1i, 0i), 2147483647i), Struct_1(vec3<i32>(-39267i, 0i, i32(-2147483648)), vec4<i32>(-7702i, -1i, i32(-2147483648), 2147483647i), 0i), Struct_1(vec3<i32>(63970i, 2147483647i, 1i), vec4<i32>(2147483647i, 37296i, -6566i, -1i), 13742i));

var<private> global1: f32 = -1307f;

var<private> global2: Struct_1 = Struct_1(vec3<i32>(0i, -12457i, -8920i), vec4<i32>(2147483647i, -5987i, -1i, 43223i), 1i);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: f32) -> vec2<i32> {
    global1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-319f, 286f, all(select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, false))))) - arg_3)));
    global0 = array<Struct_1, 22>();
    return countOneBits(reverseBits(_wgslsmith_add_vec2_i32(-(~vec2<i32>(arg_0.b.x, 42312i)), u_input.b.xz)));
}

fn func_2(arg_0: i32, arg_1: vec4<i32>, arg_2: bool, arg_3: u32) -> Struct_1 {
    global0 = array<Struct_1, 22>();
    var var_0 = Struct_1(global2.a, -vec4<i32>(-27715i, _wgslsmith_dot_vec2_i32(~global2.a.zz, func_3(global0[_wgslsmith_index_u32(arg_3, 22u)], Struct_1(vec3<i32>(-1i, 2147483647i, 0i), global2.b, 5927i), Struct_1(vec3<i32>(-1i, global2.a.x, global2.b.x), global2.b, u_input.b.x), 1241f)), max(_wgslsmith_clamp_i32(arg_1.x, global2.c, 19026i), -17937i), -35877i), ~(-2147483647i));
    var var_1 = vec4<i32>(-3491i, ~firstTrailingBit(global2.c), _wgslsmith_add_i32(2147483647i, min(_wgslsmith_div_i32(var_0.c, var_0.a.x), -16644i)) >> (_wgslsmith_dot_vec4_u32(abs(vec4<u32>(73862u, 0u, 16645u, 30507u)), firstTrailingBit(~vec4<u32>(arg_3, 0u, 1u, 494u))) % 32u), -(~global2.b.x & firstLeadingBit(-18102i)));
    let var_2 = _wgslsmith_div_u32(~(~0u), min(_wgslsmith_mod_u32(arg_3, ~arg_3), _wgslsmith_mult_u32(max(19339u, arg_3), ~arg_3)) >> (~(~arg_3) % 32u));
    global2 = Struct_1(min(vec3<i32>(global2.c, ~(-18956i), _wgslsmith_sub_i32(2147483647i, global2.c)), _wgslsmith_add_vec3_i32(arg_1.wzw, vec3<i32>(u_input.b.x, var_1.x, 1i)) ^ (var_0.b.xwy ^ arg_1.wyx)) & _wgslsmith_add_vec3_i32(var_0.b.zxx, vec3<i32>(~var_1.x, ~21873i, -2147483647i)), vec4<i32>(var_1.x, -2147483647i, _wgslsmith_sub_i32(-29431i, ~(~var_0.c)), arg_0), arg_0);
    return global0[_wgslsmith_index_u32(_wgslsmith_add_u32(~_wgslsmith_add_u32(0u, _wgslsmith_sub_u32(0u, var_2)) & arg_3, _wgslsmith_mod_u32(firstLeadingBit(~var_2), abs(var_2) | var_2)), 22u)];
}

fn func_1(arg_0: u32) -> Struct_1 {
    let var_0 = u_input.b.yx;
    let var_1 = _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -946f), 1151f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-903f, 215f), 1f, true))), true)));
    var var_2 = vec4<bool>(true, true, false, global2.b.x < -35577i);
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1450f * var_1))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_1))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(374f * 1000f) + _wgslsmith_f_op_f32(946f - var_1)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(543f + var_1)));
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1302f + _wgslsmith_f_op_f32(floor(var_1))))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(-788f, var_3)))) - var_3)));
    return func_2(~countOneBits(_wgslsmith_mod_i32(1i, countOneBits(u_input.b.x))), _wgslsmith_sub_vec4_i32(global2.b, vec4<i32>(var_0.x, _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a, 0i, global2.a.x), vec3<i32>(global2.a.x, global2.c, u_input.a), vec3<i32>(global2.a.x, -59912i, -1i)), -global2.a), 0i, global2.a.x)), !all(!vec2<bool>(var_2.x, var_2.x)), 57464u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(722f + _wgslsmith_f_op_f32(f32(-1f) * -1315f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-637f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1229f - 1271f), _wgslsmith_f_op_f32(select(813f, 814f, true))))), 121f);
    global0 = array<Struct_1, 22>();
    global2 = global0[_wgslsmith_index_u32(19048u, 22u)];
    let var_1 = Struct_1(countOneBits(global2.b.xwx), global2.b, _wgslsmith_add_i32(select(global2.b.x, select(~0i, countOneBits(global2.c), true), true), global2.a.x));
    global0 = array<Struct_1, 22>();
    var var_2 = func_1(~1u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(sign(-1583f)), select(var_1.a.yz, var_1.a.zz, false), 4294967295u, vec3<u32>(1u, 1u, min(~7447u, select(1u, 805u, false))) & countOneBits(firstLeadingBit(select(vec3<u32>(7361u, 0u, 18679u), vec3<u32>(4294967295u, 73399u, 0u), vec3<bool>(true, true, true)))), _wgslsmith_add_vec4_i32(-(~abs(var_2.b)), vec4<i32>(var_2.a.x ^ var_2.a.x, func_3(func_1(55065u), Struct_1(vec3<i32>(var_1.c, -12128i, 31073i), var_2.b, global2.a.x), func_1(1u), _wgslsmith_f_op_f32(var_0.x + var_0.x)).x, -35173i, -35392i)));
}

