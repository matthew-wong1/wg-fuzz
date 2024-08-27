struct Struct_1 {
    a: vec2<u32>,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec3<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<u32>,
    c: vec3<u32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(-51464i, i32(-2147483648));

var<private> global1: array<f32, 28> = array<f32, 28>(-1000f, 1374f, -641f, 131f, 1000f, 190f, 625f, 2502f, 719f, 866f, -678f, -239f, 131f, -1501f, 711f, 1000f, -649f, 708f, 1000f, 1630f, 1000f, -837f, -946f, 1724f, -271f, -1322f, 1241f, 983f);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> u32 {
    var var_0 = false;
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global1[_wgslsmith_index_u32(u_input.a, 28u)], global1[_wgslsmith_index_u32(1u, 28u)]), vec2<f32>(global1[_wgslsmith_index_u32(u_input.d.x, 28u)], -547f), false)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(u_input.d.x, 28u)], global1[_wgslsmith_index_u32(4294967295u, 28u)]))))))));
    var_0 = any(vec3<bool>(true, false, 0u == u_input.d.x));
    let var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(floor(-1365f)))));
    var var_3 = max(vec4<i32>(0i, global0.x, 0i, ~global0.x), min(min(u_input.e, vec4<i32>(_wgslsmith_mult_i32(u_input.b, 8613i), ~global0.x, u_input.b, -2147483647i)), _wgslsmith_add_vec4_i32(u_input.e, ~(~vec4<i32>(global0.x, u_input.c, global0.x, u_input.c)))));
    return _wgslsmith_dot_vec3_u32(min(countOneBits(vec3<u32>(31685u, u_input.d.x, 38433u)) << ((firstLeadingBit(u_input.d) << (u_input.d % vec3<u32>(32u))) % vec3<u32>(32u)), _wgslsmith_div_vec3_u32(max(u_input.d, _wgslsmith_mod_vec3_u32(vec3<u32>(42777u, 0u, 52504u), vec3<u32>(19781u, u_input.d.x, 3644u))), vec3<u32>(u_input.d.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d.x, 15885u, u_input.d.x, u_input.a), vec4<u32>(u_input.d.x, u_input.d.x, u_input.d.x, 11820u)), 69848u))), u_input.d);
}

fn func_2(arg_0: i32, arg_1: bool) -> u32 {
    var var_0 = 1541f;
    let var_1 = _wgslsmith_dot_vec2_i32(select(~_wgslsmith_sub_vec2_i32(u_input.e.wz, _wgslsmith_div_vec2_i32(u_input.e.yy, u_input.e.ww)), abs(vec2<i32>(arg_0, -56366i)) ^ ~vec2<i32>(arg_0, 0i), any(vec4<bool>(arg_1, arg_1, true, !arg_1))), -vec2<i32>(i32(-1i) * -6430i, global0.x));
    var var_2 = u_input.d << (~(u_input.d << (_wgslsmith_sub_vec3_u32(u_input.d, ~vec3<u32>(0u, 39968u, 60756u)) % vec3<u32>(32u))) % vec3<u32>(32u));
    global1 = array<f32, 28>();
    var var_3 = abs(min(u_input.a, func_3()));
    return 14395u;
}

fn func_4(arg_0: vec4<f32>, arg_1: vec4<f32>) -> Struct_1 {
    let var_0 = select(!select(vec2<bool>(true, true), select(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true)), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true)), 529f >= arg_1.x), !select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false))), !vec2<bool>(~48389u <= _wgslsmith_mult_u32(1u, u_input.a), true & all(vec2<bool>(true, false))), select(vec2<bool>(true, false), select(select(vec2<bool>(true, true), vec2<bool>(true, true), false), select(select(vec2<bool>(false, false), vec2<bool>(false, true), false), vec2<bool>(true, false), true), vec2<bool>(true, u_input.b <= 11218i)), select(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true)), select(select(vec2<bool>(true, false), vec2<bool>(true, true), false), vec2<bool>(false, false), global0.x < u_input.e.x), !select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true)))));
    let var_1 = var_0.x;
    global1 = array<f32, 28>();
    global0 = u_input.e.xz;
    let var_2 = 63612u;
    return Struct_1(select(abs(firstTrailingBit(u_input.d.yz)), vec2<u32>(u_input.d.x, 4294967295u), select(!(!vec2<bool>(var_1, var_0.x)), select(select(vec2<bool>(var_0.x, true), var_0, var_0), vec2<bool>(var_0.x, var_0.x), var_0), var_0)), 0i);
}

fn func_1(arg_0: vec2<u32>, arg_1: vec4<bool>, arg_2: bool) -> bool {
    global0 = ~select(u_input.e.ww, u_input.e.yw, vec2<bool>(false, true));
    var var_0 = arg_1.xyz;
    var var_1 = select(arg_1.zz, arg_1.zx, var_0.x);
    let var_2 = func_4(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(u_input.d.x, 28u)], -1902f, 396f, global1[_wgslsmith_index_u32(arg_0.x, 28u)]) * vec4<f32>(global1[_wgslsmith_index_u32(1u, 28u)], 469f, global1[_wgslsmith_index_u32(u_input.a, 28u)], -1368f)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global1[_wgslsmith_index_u32(1u, 28u)], global1[_wgslsmith_index_u32(76266u, 28u)], -679f, 640f)))) - _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1239f, 724f, 584f, -1000f))), _wgslsmith_div_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(arg_0.x, 28u)], global1[_wgslsmith_index_u32(14721u, 28u)], global1[_wgslsmith_index_u32(u_input.d.x, 28u)], global1[_wgslsmith_index_u32(arg_0.x, 28u)]), vec4<f32>(global1[_wgslsmith_index_u32(u_input.a, 28u)], global1[_wgslsmith_index_u32(arg_0.x, 28u)], global1[_wgslsmith_index_u32(arg_0.x, 28u)], -915f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1781f, -1000f, 926f, global1[_wgslsmith_index_u32(37588u, 28u)])), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(u_input.d.x, 28u)], -1415f, 1302f, 206f))))), vec4<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(reverseBits(func_2(0i, arg_2)), 28u)]), _wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(arg_0.x, 28u)])), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(337f - global1[_wgslsmith_index_u32(47954u, 28u)]))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-866f)))));
    var_0 = select(arg_1.zxw, select(!arg_1.ywz, select(vec3<bool>(true, any(arg_1.wzy), !arg_2), !vec3<bool>(true, var_1.x, arg_1.x), false || !arg_1.x), select(!select(vec3<bool>(false, arg_2, false), vec3<bool>(arg_2, false, true), vec3<bool>(false, var_0.x, var_0.x)), select(arg_1.xxz, vec3<bool>(arg_1.x, false, var_1.x), 16787u <= arg_0.x), all(vec3<bool>(true, var_0.x, arg_2)))), false);
    return !(!(!any(arg_1.ywx)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<u32>(2285u, 35105u);
    let var_1 = _wgslsmith_mod_u32(58596u, 1u);
    let var_2 = true;
    let var_3 = u_input.b > _wgslsmith_sub_i32(-50942i, -2147483647i);
    var var_4 = select(vec4<bool>(var_2, false, var_3, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1064f + -686f) - _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(0u, 28u)] * 3022f)) > _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(236f, global1[_wgslsmith_index_u32(0u, 28u)], var_3)), _wgslsmith_f_op_f32(-300f - 352f), var_2))), select(vec4<bool>(!(false && var_2), 0u >= ~var_1, true, var_3), vec4<bool>(func_1(~vec2<u32>(var_0.x, 0u), !vec4<bool>(var_2, var_2, true, var_2), !var_3), true, all(select(vec3<bool>(true, var_3, var_2), vec3<bool>(false, true, false), vec3<bool>(true, var_2, false))), select(false, var_2, all(vec4<bool>(var_3, false, false, var_2)))), false), !(!var_3));
    var var_5 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1409f))));
    let var_6 = Struct_1(~(countOneBits(_wgslsmith_clamp_vec2_u32(u_input.d.xz, u_input.d.zz, u_input.d.yz)) ^ select(u_input.d.yx, ~u_input.d.zy, var_3)), _wgslsmith_sub_i32(-1i, abs(48718i)));
    var var_7 = var_6;
    var var_8 = _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(i32(-1i) * -2147483647i, 43299i, global0.x, ~18033i), vec4<i32>(~(-24637i), u_input.c, ~var_7.b, -2147483647i), u_input.e), _wgslsmith_div_vec4_i32(vec4<i32>(var_7.b, func_4(vec4<f32>(global1[_wgslsmith_index_u32(28208u, 28u)], 1807f, global1[_wgslsmith_index_u32(6499u, 28u)], global1[_wgslsmith_index_u32(0u, 28u)]), vec4<f32>(275f, -2567f, 114f, 1049f)).b, abs(2147483647i), var_6.b << (var_7.a.x % 32u)), u_input.e)), ~(((u_input.e << (vec4<u32>(1u, 1u, 42313u, 1u) % vec4<u32>(32u))) | firstLeadingBit(u_input.e)) | vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, -2750i), u_input.e.ww), 1i, -1i, ~(-2147483647i))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(28244u, 28u)], 847f, -869f, global1[_wgslsmith_index_u32(var_7.a.x, 28u)])))) - vec4<f32>(_wgslsmith_div_f32(-2105f, global1[_wgslsmith_index_u32(var_0.x, 28u)]), _wgslsmith_f_op_f32(-229f - global1[_wgslsmith_index_u32(1u, 28u)]), -870f, _wgslsmith_f_op_f32(f32(-1f) * -1118f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, global1[_wgslsmith_index_u32(4294967295u, 28u)], global1[_wgslsmith_index_u32(var_7.a.x, 28u)], 433f) * vec4<f32>(1000f, global1[_wgslsmith_index_u32(81304u, 28u)], 2741f, 789f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(41726u, 28u)], -1458f, 797f, global1[_wgslsmith_index_u32(0u, 28u)]))))), vec4<u32>(u_input.a, var_6.a.x, countOneBits(countOneBits(~1u)), 84262u), _wgslsmith_div_vec3_u32(~reverseBits(u_input.d), u_input.d), vec4<u32>(min(var_6.a.x, var_0.x), ~13539u, ~(79076u | u_input.a), ~22895u));
}

