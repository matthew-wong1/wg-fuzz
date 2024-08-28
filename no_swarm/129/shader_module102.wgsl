struct Struct_1 {
    a: vec2<bool>,
    b: vec2<bool>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: u32,
    b: vec2<i32>,
    c: Struct_1,
    d: vec3<bool>,
    e: Struct_2,
}

struct Struct_4 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec4<i32>,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 5>;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_1() -> i32 {
    return ~(0i >> (~u_input.b % 32u));
}

fn func_3(arg_0: vec3<bool>) -> u32 {
    global0 = array<bool, 5>();
    global0 = array<bool, 5>();
    var var_0 = Struct_2(11928u);
    let var_1 = select(select(select(!arg_0.xx, !select(arg_0.xx, vec2<bool>(global0[_wgslsmith_index_u32(var_0.a, 5u)], arg_0.x), global0[_wgslsmith_index_u32(0u, 5u)]), vec2<bool>(any(vec4<bool>(true, global0[_wgslsmith_index_u32(var_0.a, 5u)], true, global0[_wgslsmith_index_u32(0u, 5u)])), true)), vec2<bool>(arg_0.x, any(select(arg_0.xz, arg_0.yz, vec2<bool>(arg_0.x, global0[_wgslsmith_index_u32(u_input.a, 5u)])))), select(true, any(select(vec4<bool>(arg_0.x, false, false, arg_0.x), vec4<bool>(arg_0.x, global0[_wgslsmith_index_u32(0u, 5u)], global0[_wgslsmith_index_u32(1u, 5u)], global0[_wgslsmith_index_u32(1u, 5u)]), arg_0.x)), true)), vec2<bool>(global0[_wgslsmith_index_u32(u_input.b, 5u)], true), any(select(!(!arg_0), !arg_0, all(vec4<bool>(false, false, true, global0[_wgslsmith_index_u32(4294967295u, 5u)])) && select(false, global0[_wgslsmith_index_u32(u_input.a, 5u)], global0[_wgslsmith_index_u32(1u, 5u)]))));
    global0 = array<bool, 5>();
    return 146367u;
}

fn func_2(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: vec4<u32>) -> Struct_2 {
    global0 = array<bool, 5>();
    let var_0 = Struct_2(43485u);
    let var_1 = ~func_3(vec3<bool>(true, arg_0.b.x, global0[_wgslsmith_index_u32(0u, 5u)] && false));
    let var_2 = Struct_4(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(arg_1.x)))));
    var var_3 = _wgslsmith_mod_vec3_i32(reverseBits(vec3<i32>(173i, min(-32616i, -2147483647i), ~(-2147483647i)) << (_wgslsmith_div_vec3_u32(vec3<u32>(24730u, 81205u, 1u), arg_2.xxx) % vec3<u32>(32u))), vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(~0i, 14227i, max(0i, 15690i)), firstTrailingBit(_wgslsmith_clamp_vec3_i32(vec3<i32>(0i, 21766i, -2147483647i), vec3<i32>(-27983i, 11912i, 2147483647i), vec3<i32>(2147483647i, 0i, -2147483647i)))), _wgslsmith_dot_vec4_i32(vec4<i32>(-22009i, 15315i, 62270i, 0i), vec4<i32>(-2147483647i, 26395i, -1i, -1i)) ^ firstTrailingBit(firstLeadingBit(2147483647i)), _wgslsmith_dot_vec2_i32(min(_wgslsmith_mult_vec2_i32(vec2<i32>(17251i, -31890i), vec2<i32>(1601i, 53895i)), abs(vec2<i32>(1i, -33108i))), _wgslsmith_add_vec2_i32(firstLeadingBit(vec2<i32>(-25353i, 0i)), -vec2<i32>(-69845i, -2147483647i)))));
    return Struct_2(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 1u << (u_input.a % 32u), ~var_1, 15037u), _wgslsmith_sub_vec4_u32(~arg_2, ~vec4<u32>(u_input.b, 0u, 7409u, 9021u))) | ~reverseBits(var_0.a));
}

fn func_4(arg_0: Struct_2) -> Struct_2 {
    var var_0 = _wgslsmith_dot_vec3_i32(vec3<i32>(abs(_wgslsmith_dot_vec4_i32(vec4<i32>(-48428i, 14645i, 2147483647i, 2147483647i), vec4<i32>(-13574i, 65261i, -69719i, -2147483647i)) >> ((arg_0.a & 108455u) % 32u)), i32(-1i) * -13597i, min(~_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 2999i, 0i), vec3<i32>(-4375i, 28399i, 693i)), firstLeadingBit(-14942i))), -_wgslsmith_mult_vec3_i32(firstLeadingBit(~vec3<i32>(-1i, 5725i, 945i)), ~vec3<i32>(1i, 1i, 1i)));
    var var_1 = Struct_1(!select(vec2<bool>(false, false), vec2<bool>(arg_0.a > u_input.a, any(vec3<bool>(global0[_wgslsmith_index_u32(arg_0.a, 5u)], true, true))), select(!vec2<bool>(global0[_wgslsmith_index_u32(u_input.b, 5u)], global0[_wgslsmith_index_u32(104737u, 5u)]), vec2<bool>(global0[_wgslsmith_index_u32(0u, 5u)], global0[_wgslsmith_index_u32(arg_0.a, 5u)]), global0[_wgslsmith_index_u32(4294967295u, 5u)])), vec2<bool>(true, true), vec4<bool>(false, all(!(!vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.b, 5u)], global0[_wgslsmith_index_u32(4294967295u, 5u)], true))), global0[_wgslsmith_index_u32(u_input.a >> (abs(55500u) % 32u), 5u)] && global0[_wgslsmith_index_u32(u_input.b, 5u)], global0[_wgslsmith_index_u32(u_input.b, 5u)]));
    global0 = array<bool, 5>();
    var var_2 = 12390i;
    var_2 = 3865i;
    return func_2(Struct_1(!vec2<bool>(global0[_wgslsmith_index_u32(~4294967295u, 5u)], global0[_wgslsmith_index_u32(~u_input.a, 5u)]), var_1.b, var_1.c), vec4<f32>(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-656f)) - -260f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1293f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1539f)) - 291f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1324f, 1906f)))), reverseBits(vec4<u32>(45654u, _wgslsmith_clamp_u32(u_input.a, arg_0.a, u_input.b), u_input.b >> (arg_0.a % 32u), ~4294967295u)) >> (vec4<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(arg_0.a, 4294967295u, u_input.a), vec3<u32>(arg_0.a, u_input.a, 0u)), vec3<u32>(4294967295u, 29019u, u_input.a)), firstTrailingBit(~13536u), u_input.b, ~abs(4294967295u)) % vec4<u32>(32u)));
}

fn func_5(arg_0: Struct_4, arg_1: Struct_2, arg_2: Struct_4) -> Struct_2 {
    let var_0 = true;
    var var_1 = -2147483647i;
    var_1 = -(~(~36783i));
    global0 = array<bool, 5>();
    global0 = array<bool, 5>();
    return func_4(arg_1);
}

fn func_6(arg_0: Struct_3, arg_1: Struct_1) -> Struct_4 {
    let var_0 = _wgslsmith_f_op_f32(-1593f * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-255f, _wgslsmith_f_op_f32(488f - _wgslsmith_f_op_f32(round(126f))))));
    var var_1 = arg_0.b.x;
    global0 = array<bool, 5>();
    let var_2 = false;
    var var_3 = vec3<bool>(arg_0.c.b.x, any(select(arg_0.c.c.wzy, !(!arg_0.c.c.zyx), select(!vec3<bool>(arg_0.c.b.x, false, arg_1.a.x), !arg_0.c.c.yxw, all(vec2<bool>(true, arg_0.c.c.x))))), !(var_2 | true));
    return Struct_4(1937f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = (~vec2<i32>(1i, 1i) << (~_wgslsmith_sub_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(88046u, 0u)), _wgslsmith_add_vec2_u32(vec2<u32>(1u, u_input.a), vec2<u32>(4294967295u, 0u))) % vec2<u32>(32u))) << (_wgslsmith_mod_vec2_u32(~(~(~vec2<u32>(u_input.a, 1u))), ~(~(vec2<u32>(58546u, 0u) & vec2<u32>(33384u, u_input.b)))) % vec2<u32>(32u));
    var var_1 = var_0.x;
    let var_2 = Struct_1(!vec2<bool>(all(vec4<bool>(true, true, true, global0[_wgslsmith_index_u32(0u, 5u)])) | global0[_wgslsmith_index_u32(1u, 5u)], -19836i <= func_1()), vec2<bool>(any(!vec3<bool>(false, true, global0[_wgslsmith_index_u32(67287u, 5u)])), any(!vec2<bool>(global0[_wgslsmith_index_u32(u_input.a, 5u)], global0[_wgslsmith_index_u32(u_input.b, 5u)]))), !(!vec4<bool>(true, false, global0[_wgslsmith_index_u32(u_input.a, 5u)], var_0.x == -2147483647i)));
    let var_3 = func_6(Struct_3(u_input.b, _wgslsmith_clamp_vec2_i32(select(vec2<i32>(var_0.x, -15079i), var_0, var_2.a.x), vec2<i32>(12769i, var_0.x) << (~vec2<u32>(4294967295u, 4294967295u) % vec2<u32>(32u)), min(var_0, abs(vec2<i32>(var_0.x, -2147483647i)))), Struct_1(var_2.b, select(var_2.c.zz, vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.a, 5u)]), all(vec3<bool>(false, global0[_wgslsmith_index_u32(1u, 5u)], false))), !select(var_2.c, var_2.c, true)), var_2.c.yzx, func_5(Struct_4(1129f), func_4(func_2(var_2, vec4<f32>(242f, -692f, 332f, 1108f), vec4<u32>(u_input.b, 12100u, 21009u, u_input.a))), Struct_4(455f))), Struct_1(!select(vec2<bool>(true, true), vec2<bool>(true, global0[_wgslsmith_index_u32(0u, 5u)]), !var_2.c.wx), select(select(var_2.a, var_2.c.zw, select(vec2<bool>(global0[_wgslsmith_index_u32(u_input.a, 5u)], false), var_2.a, var_2.b)), var_2.c.xz, false), select(var_2.c, !(!vec4<bool>(true, true, global0[_wgslsmith_index_u32(4294967295u, 5u)], true)), all(var_2.c.zy))));
    global0 = array<bool, 5>();
    global0 = array<bool, 5>();
    global0 = array<bool, 5>();
    var var_4 = var_2;
    var_4 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_u32(~14411u, 4805u), vec3<i32>(_wgslsmith_sub_i32(~(-var_0.x), -13768i), _wgslsmith_dot_vec2_i32(vec2<i32>(-12219i, 2147483647i) | vec2<i32>(1i, var_0.x), var_0) | ~(~43776i), 1i), max(vec4<i32>(0i, select(var_0.x, var_0.x, var_4.c.x) << (_wgslsmith_clamp_u32(54796u, 1u, u_input.b) % 32u), reverseBits(~1i), -(~57705i)), vec4<i32>(~(-29260i), ~(i32(-1i) * -28643i), var_0.x, var_0.x)), u_input.b, _wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, u_input.a & 1u, _wgslsmith_clamp_u32(u_input.a, 30703u, u_input.b)), vec3<u32>(u_input.a, u_input.a, 4294967295u)));
}

