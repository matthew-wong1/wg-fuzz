struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: vec4<u32>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec3<u32>,
    c: vec3<i32>,
    d: i32,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<i32>,
    c: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 7> = array<i32, 7>(1i, 0i, -1i, -1i, 1i, 32347i, -6130i);

var<private> global1: array<bool, 9> = array<bool, 9>(true, true, true, true, true, true, false, true, true);

var<private> global2: array<i32, 23> = array<i32, 23>(55062i, -24179i, -15377i, 0i, 1i, -15628i, 258i, -30208i, 6708i, 0i, 2147483647i, 2147483647i, i32(-2147483648), i32(-2147483648), -75681i, 3153i, -17741i, 1i, -47936i, -6293i, 1i, -43155i, -18228i);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec3<bool> {
    var var_0 = Struct_2(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(8398u, 4294967295u, 1u, 1293u)), countOneBits(~vec4<u32>(4294967295u, 10010u, 4294967295u, 1u))), abs(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(85063u, 53811u, 27448u), vec3<u32>(0u, 1u, 43230u)), 9679u))), _wgslsmith_clamp_u32(1u, 4294967295u, reverseBits(~(~0u))), ~vec4<u32>(_wgslsmith_sub_u32(4294967295u, 48846u), _wgslsmith_div_u32(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 4294967295u, 4294967295u, 0u), vec4<u32>(29638u, 1u, 52038u, 54233u))), _wgslsmith_mult_u32(firstTrailingBit(0u), 44609u), countOneBits(abs(38706u))));
    var_0 = Struct_2(4294967295u, 1u, _wgslsmith_add_vec4_u32((_wgslsmith_clamp_vec4_u32(var_0.c, vec4<u32>(var_0.a, var_0.c.x, var_0.a, 0u), vec4<u32>(3101u, var_0.b, var_0.c.x, var_0.c.x)) & var_0.c) >> (~vec4<u32>(var_0.a, 76907u, var_0.a, 8500u) % vec4<u32>(32u)), var_0.c << (vec4<u32>(~4294967295u, ~22125u, ~var_0.a, ~0u) % vec4<u32>(32u))));
    let var_1 = 161f;
    let var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1, 889f) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1, var_1) + _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1, var_1) - vec2<f32>(-1000f, var_1))))));
    var var_3 = !vec4<bool>(!select(false, global1[_wgslsmith_index_u32(2315u, 9u)], true) && false, true, all(!(!vec4<bool>(global1[_wgslsmith_index_u32(var_0.c.x, 9u)], true, global1[_wgslsmith_index_u32(var_0.c.x, 9u)], global1[_wgslsmith_index_u32(26981u, 9u)]))), !(!any(vec4<bool>(false, true, true, global1[_wgslsmith_index_u32(59166u, 9u)]))));
    return !select(vec3<bool>(false, false, true), select(!(!var_3.wzy), var_3.xwy, global1[_wgslsmith_index_u32(9033u, 9u)]), vec3<bool>(true && var_3.x, false, true));
}

fn func_2() -> Struct_4 {
    let var_0 = Struct_3(select(func_3(), vec3<bool>(global1[_wgslsmith_index_u32(1u, 9u)], !any(vec2<bool>(global1[_wgslsmith_index_u32(52166u, 9u)], global1[_wgslsmith_index_u32(32553u, 9u)])), true && !global1[_wgslsmith_index_u32(577u, 9u)]), all(!vec4<bool>(true, global1[_wgslsmith_index_u32(21156u, 9u)], true, false))), vec3<u32>(~4294967295u << (~4294967295u % 32u), 18930u, min(~7844u, firstTrailingBit(24590u))) & max(vec3<u32>(1u, 1u, 1u), min(~vec3<u32>(1u, 18511u, 64791u), ~vec3<u32>(74178u, 1u, 32539u))), _wgslsmith_mult_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(-u_input.a, 33014i, global0[_wgslsmith_index_u32(countOneBits(41466u), 7u)]), ~vec3<i32>(u_input.a, global0[_wgslsmith_index_u32(66156u, 7u)], u_input.a)), -(vec3<i32>(-70425i, -2147483647i, -20694i) ^ vec3<i32>(u_input.a, -1236i, 42208i))), -25977i);
    let var_1 = var_0.a;
    global1 = array<bool, 9>();
    global1 = array<bool, 9>();
    let var_2 = vec2<f32>(-278f, _wgslsmith_f_op_f32(abs(-538f)));
    return Struct_4(Struct_1(func_3().zx), ~(-countOneBits(var_0.c)) ^ _wgslsmith_add_vec3_i32(~_wgslsmith_add_vec3_i32(var_0.c, var_0.c), max(reverseBits(vec3<i32>(-7485i, 2147483647i, -2147483647i)), reverseBits(var_0.c))), false);
}

fn func_4(arg_0: u32, arg_1: Struct_4, arg_2: vec4<u32>) -> u32 {
    let var_0 = -51537i;
    var var_1 = all(select(func_2().a.a, vec2<bool>(true, true), vec2<bool>(any(select(vec3<bool>(true, false, global1[_wgslsmith_index_u32(57553u, 9u)]), vec3<bool>(false, global1[_wgslsmith_index_u32(58024u, 9u)], true), arg_1.c)), all(select(vec4<bool>(global1[_wgslsmith_index_u32(arg_0, 9u)], global1[_wgslsmith_index_u32(arg_0, 9u)], false, true), vec4<bool>(arg_1.a.a.x, arg_1.a.a.x, true, global1[_wgslsmith_index_u32(86932u, 9u)]), arg_1.c)))));
    var var_2 = firstLeadingBit(4294967295u);
    let var_3 = arg_1.a;
    var var_4 = Struct_3(!select(vec3<bool>(true, arg_1.c, all(vec3<bool>(false, true, true))), func_3(), true), abs(~_wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(arg_2.wzx, vec3<u32>(3911u, arg_2.x, 0u)), arg_2.xxx)), vec3<i32>(_wgslsmith_clamp_i32(global0[_wgslsmith_index_u32(abs(~37196u), 7u)], global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(34773u, arg_0, 89835u), 23u)], countOneBits(global2[_wgslsmith_index_u32(1u, 23u)] ^ 1i)), _wgslsmith_div_i32(_wgslsmith_div_i32(firstLeadingBit(var_0), u_input.a), ~(-2147483647i) | min(-22251i, arg_1.b.x)), 1i), -22122i);
    return ~74161u;
}

fn func_1(arg_0: vec3<bool>) -> f32 {
    global2 = array<i32, 23>();
    var var_0 = _wgslsmith_clamp_i32(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(func_4(4042u, func_2(), vec4<u32>(~36915u, _wgslsmith_div_u32(38660u, 4294967295u), 0u, 4294967295u)), ~_wgslsmith_mod_u32(_wgslsmith_mult_u32(12681u, 62232u), ~1u)), 7u)], global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(~(~4294967295u), reverseBits(11443u)), 23u)], ~(-1i));
    var_0 = countOneBits(-2147483647i);
    global2 = array<i32, 23>();
    let var_1 = Struct_1(arg_0.xy);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2235f - _wgslsmith_div_f32(588f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -624f))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(210f - -1220f), _wgslsmith_f_op_f32(-225f + _wgslsmith_div_f32(786f, 776f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(vec3<bool>(global1[_wgslsmith_index_u32(40524u, 9u)], false, global1[_wgslsmith_index_u32(1964u, 9u)]))), _wgslsmith_f_op_f32(f32(-1f) * -1520f)), 1229f)));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-283f, 406f, 1120f, var_0.x)))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_0.x, -239f, _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(var_0.x + var_0.x))))));
    let var_2 = reverseBits(~max(~vec3<u32>(0u, 7744u, 1u), vec3<u32>(1u, 32103u, 1u)));
    let var_3 = _wgslsmith_add_vec2_i32(vec2<i32>(u_input.a, reverseBits(global0[_wgslsmith_index_u32(21347u, 7u)])), vec2<i32>(1i, -countOneBits(firstLeadingBit(-14671i))));
    var var_4 = Struct_4(Struct_1(func_2().a.a), ~(vec3<i32>(u_input.a, u_input.a, u_input.a) ^ _wgslsmith_add_vec3_i32(vec3<i32>(u_input.a, global2[_wgslsmith_index_u32(var_2.x, 23u)], 0i), vec3<i32>(1i, u_input.a, 1i))) >> (var_2 % vec3<u32>(32u)), all(vec4<bool>(var_1.x != var_0.x, false, any(vec4<bool>(global1[_wgslsmith_index_u32(1u, 9u)], true, global1[_wgslsmith_index_u32(4294967295u, 9u)], global1[_wgslsmith_index_u32(8986u, 9u)])), func_2().a.a.x)) | true);
    var var_5 = vec4<bool>(true, false, select(!func_3().x == any(select(vec4<bool>(true, global1[_wgslsmith_index_u32(73462u, 9u)], true, var_4.a.a.x), vec4<bool>(false, global1[_wgslsmith_index_u32(4294967295u, 9u)], global1[_wgslsmith_index_u32(var_2.x, 9u)], var_4.a.a.x), global1[_wgslsmith_index_u32(46909u, 9u)])), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(409f, var_0.x))) <= var_1.x, true), any(!select(!var_4.a.a, vec2<bool>(true, false), true)));
    var_5 = select(!select(vec4<bool>(true, any(vec4<bool>(false, global1[_wgslsmith_index_u32(61715u, 9u)], var_5.x, true)), 11662u <= var_2.x, any(vec2<bool>(var_5.x, global1[_wgslsmith_index_u32(var_2.x, 9u)]))), !(!vec4<bool>(var_5.x, var_5.x, true, global1[_wgslsmith_index_u32(69109u, 9u)])), select(!vec4<bool>(var_4.a.a.x, global1[_wgslsmith_index_u32(var_2.x, 9u)], var_5.x, global1[_wgslsmith_index_u32(var_2.x, 9u)]), select(vec4<bool>(global1[_wgslsmith_index_u32(var_2.x, 9u)], var_4.a.a.x, global1[_wgslsmith_index_u32(var_2.x, 9u)], var_4.a.a.x), vec4<bool>(false, false, global1[_wgslsmith_index_u32(64859u, 9u)], global1[_wgslsmith_index_u32(4294967295u, 9u)]), global1[_wgslsmith_index_u32(6535u, 9u)]), false)), select(!vec4<bool>(all(vec4<bool>(var_5.x, true, false, var_4.a.a.x)), false == var_4.c, global1[_wgslsmith_index_u32(~var_2.x, 9u)], any(vec2<bool>(false, var_4.c))), vec4<bool>(true, 1u == var_2.x, global1[_wgslsmith_index_u32(82380u, 9u)], global1[_wgslsmith_index_u32(firstLeadingBit(var_2.x), 9u)]), !select(!vec4<bool>(false, global1[_wgslsmith_index_u32(var_2.x, 9u)], global1[_wgslsmith_index_u32(19106u, 9u)], false), select(vec4<bool>(global1[_wgslsmith_index_u32(0u, 9u)], true, false, true), vec4<bool>(true, false, var_5.x, var_5.x), var_4.a.a.x), !global1[_wgslsmith_index_u32(4294967295u, 9u)])), !select(!select(vec4<bool>(var_4.a.a.x, var_5.x, var_5.x, true), vec4<bool>(global1[_wgslsmith_index_u32(var_2.x, 9u)], true, var_4.a.a.x, false), vec4<bool>(true, false, var_4.a.a.x, false)), select(vec4<bool>(var_5.x, global1[_wgslsmith_index_u32(var_2.x, 9u)], false, true), vec4<bool>(var_4.a.a.x, var_4.a.a.x, false, var_4.a.a.x), var_4.c & global1[_wgslsmith_index_u32(var_2.x, 9u)]), vec4<bool>(true, true, false, !var_4.a.a.x)));
    var_0 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(var_1, vec4<f32>(803f, var_1.x, var_1.x, var_0.x))) * vec4<f32>(var_0.x, 563f, 201f, var_1.x)))) - _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_1)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.x, var_1.x, 537f, 132f), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_1.x, var_1.x, var_0.x, 709f))), select(vec4<bool>(true, var_4.a.a.x, var_5.x, true), vec4<bool>(global1[_wgslsmith_index_u32(19909u, 9u)], var_5.x, false, var_4.c), vec4<bool>(false, true, true, true)))))))));
    global1 = array<bool, 9>();
    let x = u_input.a;
    s_output = StorageBuffer(select(reverseBits(~countOneBits(var_3)), vec2<i32>(26237i, _wgslsmith_dot_vec3_i32(vec3<i32>(44326i, -56850i, -24179i), var_4.b) | 2147483647i), true), _wgslsmith_div_f32(var_1.x, var_1.x));
}

