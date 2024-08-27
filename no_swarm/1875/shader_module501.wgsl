struct Struct_1 {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<f32>,
    c: vec2<i32>,
    d: vec3<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 28>;

var<private> global1: array<vec2<i32>, 3>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> vec2<i32> {
    var var_0 = Struct_4(global0[_wgslsmith_index_u32(u_input.b.x, 28u)], _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(vec3<f32>(1385f, -160f, 1641f), vec3<f32>(568f, 1057f, 185f)))))));
    var var_1 = !vec3<bool>(all(vec2<bool>(false, any(vec4<bool>(false, true, true, false)))), select(all(vec2<bool>(true, true)), true, global0[_wgslsmith_index_u32(22252u, 28u)] >= global0[_wgslsmith_index_u32(countOneBits(0u), 28u)]), any(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), true)));
    var var_2 = vec2<f32>(849f, _wgslsmith_f_op_f32(step(var_0.b.x, 416f)));
    let var_3 = -global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(~firstTrailingBit(u_input.a), ~abs(u_input.b.yy)), u_input.b.zz), 28u)];
    let var_4 = !var_1.xx;
    return -vec2<i32>(var_0.a, global0[_wgslsmith_index_u32(0u, 28u)]);
}

fn func_2() -> u32 {
    global0 = array<i32, 28>();
    global1 = array<vec2<i32>, 3>();
    var var_0 = ~global0[_wgslsmith_index_u32(51227u, 28u)];
    var var_1 = true;
    let var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2506f, -165f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 362f)))), Struct_1(select(_wgslsmith_clamp_vec4_i32(~vec4<i32>(global0[_wgslsmith_index_u32(0u, 28u)], 2147483647i, -2147483647i, -49366i), vec4<i32>(-22621i, global0[_wgslsmith_index_u32(u_input.a.x, 28u)], global0[_wgslsmith_index_u32(u_input.a.x, 28u)], -43133i), vec4<i32>(-11863i, global0[_wgslsmith_index_u32(0u, 28u)], global0[_wgslsmith_index_u32(5858u, 28u)], -6564i) ^ vec4<i32>(global0[_wgslsmith_index_u32(u_input.c, 28u)], -25166i, 2147483647i, global0[_wgslsmith_index_u32(u_input.c, 28u)])), _wgslsmith_clamp_vec4_i32(vec4<i32>(-1343i, 82504i, global0[_wgslsmith_index_u32(4294967295u, 28u)], global0[_wgslsmith_index_u32(u_input.b.x, 28u)]) ^ vec4<i32>(global0[_wgslsmith_index_u32(4294967295u, 28u)], global0[_wgslsmith_index_u32(u_input.c, 28u)], global0[_wgslsmith_index_u32(0u, 28u)], global0[_wgslsmith_index_u32(u_input.a.x, 28u)]), _wgslsmith_mod_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 28u)], 38235i, -75270i, global0[_wgslsmith_index_u32(4294967295u, 28u)]), vec4<i32>(-2147483647i, -1i, global0[_wgslsmith_index_u32(44693u, 28u)], -30016i)), ~vec4<i32>(-2147483647i, global0[_wgslsmith_index_u32(14974u, 28u)], global0[_wgslsmith_index_u32(u_input.c, 28u)], global0[_wgslsmith_index_u32(u_input.a.x, 28u)])), vec4<bool>(false, u_input.b.x <= 2506u, true, true)), func_3(), select(min(~vec2<u32>(u_input.b.x, 4294967295u), _wgslsmith_mult_vec2_u32(vec2<u32>(35234u, 30285u), vec2<u32>(u_input.a.x, u_input.c))), abs(u_input.a), vec2<bool>(true, all(vec4<bool>(false, true, true, false))))), Struct_1(~(-vec4<i32>(-31152i, -1i, 1i, 24649i)) | vec4<i32>(global0[_wgslsmith_index_u32(30755u, 28u)] ^ 47831i, _wgslsmith_dot_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(u_input.c, 28u)], global0[_wgslsmith_index_u32(1u, 28u)], -13422i, -11746i), vec4<i32>(global0[_wgslsmith_index_u32(u_input.c, 28u)], global0[_wgslsmith_index_u32(0u, 28u)], -2147483647i, global0[_wgslsmith_index_u32(u_input.c, 28u)])), firstTrailingBit(global0[_wgslsmith_index_u32(4294967295u, 28u)]), global0[_wgslsmith_index_u32(~u_input.a.x, 28u)]), global1[_wgslsmith_index_u32(reverseBits(1u), 3u)], vec2<u32>(1u, ~(~1u))));
    return firstTrailingBit(u_input.a.x);
}

fn func_4(arg_0: bool, arg_1: vec4<u32>, arg_2: Struct_2, arg_3: i32) -> Struct_3 {
    global0 = array<i32, 28>();
    global1 = array<vec2<i32>, 3>();
    global1 = array<vec2<i32>, 3>();
    global1 = array<vec2<i32>, 3>();
    let var_0 = Struct_3(Struct_2(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-arg_2.a.x), _wgslsmith_f_op_f32(arg_2.a.x * 533f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_2.a) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(241f, arg_2.a.x))), arg_0)), Struct_1(~countOneBits(arg_2.b.a), arg_2.b.a.xx, ~arg_1.zx | vec2<u32>(4294967295u, u_input.b.x)), arg_2.c));
    return Struct_3(Struct_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(arg_2.a.x + arg_2.a.x), 284f) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.a.a) - _wgslsmith_f_op_vec2_f32(-var_0.a.a))), Struct_1(arg_2.b.a, select(global1[_wgslsmith_index_u32(63u, 3u)] | var_0.a.b.b, -vec2<i32>(arg_2.b.b.x, arg_2.b.b.x), !vec2<bool>(arg_0, false)), _wgslsmith_div_vec2_u32(vec2<u32>(4773u, 0u) << (arg_2.c.c % vec2<u32>(32u)), select(var_0.a.b.c, vec2<u32>(var_0.a.c.c.x, 4294967295u), vec2<bool>(true, false)))), Struct_1(~vec4<i32>(arg_2.c.b.x, global0[_wgslsmith_index_u32(u_input.a.x, 28u)], -1i, -18311i), ~select(vec2<i32>(-1i, -2147483647i), vec2<i32>(37471i, global0[_wgslsmith_index_u32(80397u, 28u)]), false), vec2<u32>(arg_1.x & u_input.c, 4294967295u))));
}

fn func_5(arg_0: Struct_3, arg_1: Struct_3, arg_2: vec4<f32>, arg_3: i32) -> vec3<bool> {
    let var_0 = Struct_1(vec4<i32>(_wgslsmith_dot_vec4_i32(max(arg_0.a.c.a, ~arg_1.a.c.a), arg_1.a.c.a), abs(func_3().x), -arg_3, _wgslsmith_sub_i32(-54674i, ~(-1i)) & firstTrailingBit(-2147483647i)), arg_0.a.c.a.yw, vec2<u32>(reverseBits(~_wgslsmith_add_u32(36408u, 47447u)), _wgslsmith_clamp_u32(4294967295u, firstLeadingBit(4294967295u), abs(~4294967295u))));
    global0 = array<i32, 28>();
    let var_1 = Struct_3(func_4(true, vec4<u32>(~arg_1.a.c.c.x, max(u_input.c, 52017u), 59645u, max(12228u, 0u)) << (~(vec4<u32>(13325u, arg_0.a.b.c.x, 3034u, 54135u) | vec4<u32>(var_0.c.x, arg_1.a.c.c.x, u_input.a.x, 1u)) % vec4<u32>(32u)), func_4(false, ~(vec4<u32>(1u, 0u, arg_1.a.b.c.x, arg_1.a.b.c.x) << (vec4<u32>(1u, var_0.c.x, 1u, 24758u) % vec4<u32>(32u))), func_4(true, ~vec4<u32>(11015u, 0u, 4530u, arg_0.a.c.c.x), func_4(true, vec4<u32>(arg_1.a.b.c.x, 0u, 1u, 37366u), arg_1.a, var_0.a.x).a, abs(arg_3)).a, global0[_wgslsmith_index_u32(1u, 28u)]).a, -min(arg_0.a.c.a.x, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(46715u, 65112u), u_input.a), 28u)])).a);
    let var_2 = ~(-(-1i | ~arg_1.a.b.a.x) >> (u_input.a.x % 32u));
    var var_3 = !(!any(vec2<bool>(true, true))) && true;
    return !select(!vec3<bool>(true, true, var_0.c.x == 3442u), vec3<bool>(true, true, true), false);
}

fn func_6(arg_0: vec3<f32>, arg_1: vec3<bool>) -> Struct_3 {
    let var_0 = Struct_4(select(firstTrailingBit(~1i), firstTrailingBit(-global0[_wgslsmith_index_u32(0u, 28u)]) ^ abs(1i), func_5(Struct_3(Struct_2(vec2<f32>(arg_0.x, arg_0.x), Struct_1(vec4<i32>(global0[_wgslsmith_index_u32(0u, 28u)], -210i, global0[_wgslsmith_index_u32(u_input.c, 28u)], 7290i), vec2<i32>(global0[_wgslsmith_index_u32(0u, 28u)], global0[_wgslsmith_index_u32(u_input.a.x, 28u)]), u_input.a), Struct_1(vec4<i32>(global0[_wgslsmith_index_u32(u_input.c, 28u)], 2147483647i, -2147483647i, global0[_wgslsmith_index_u32(u_input.b.x, 28u)]), vec2<i32>(0i, global0[_wgslsmith_index_u32(19356u, 28u)]), u_input.a))), func_4(false, vec4<u32>(u_input.a.x, 84846u, 20711u, 67895u), Struct_2(arg_0.yy, Struct_1(vec4<i32>(global0[_wgslsmith_index_u32(u_input.c, 28u)], global0[_wgslsmith_index_u32(4294967295u, 28u)], global0[_wgslsmith_index_u32(41666u, 28u)], global0[_wgslsmith_index_u32(16888u, 28u)]), vec2<i32>(global0[_wgslsmith_index_u32(39224u, 28u)], 10398i), u_input.a), Struct_1(vec4<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 28u)], global0[_wgslsmith_index_u32(34265u, 28u)], global0[_wgslsmith_index_u32(u_input.c, 28u)], global0[_wgslsmith_index_u32(u_input.c, 28u)]), vec2<i32>(global0[_wgslsmith_index_u32(26272u, 28u)], -1i), vec2<u32>(1u, 0u))), 2147483647i), _wgslsmith_div_vec4_f32(vec4<f32>(522f, arg_0.x, 865f, arg_0.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, 1136f, arg_0.x, arg_0.x))), firstTrailingBit(1i)).x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(arg_0, vec3<f32>(arg_0.x, -306f, arg_0.x), false))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, 303f, arg_0.x) * _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-591f, 555f, arg_0.x)))))));
    let var_1 = countOneBits(0i);
    let var_2 = var_0;
    var var_3 = func_4(!all(arg_1), ~vec4<u32>(_wgslsmith_div_u32(u_input.b.x, 0u), u_input.c, _wgslsmith_mult_u32(47172u, 42522u), ~4294967295u) << (vec4<u32>(~4294967295u, firstTrailingBit(u_input.c | 1u), abs(u_input.b.x), 111290u) % vec4<u32>(32u)), func_4(select(false, !(false && arg_1.x), true), ~_wgslsmith_add_vec4_u32(vec4<u32>(9921u, 26637u, 1u, u_input.b.x), reverseBits(vec4<u32>(u_input.b.x, 6247u, u_input.c, 1u))), Struct_2(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b.x, var_0.b.x) * vec2<f32>(var_0.b.x, var_0.b.x)))), func_4(var_0.b.x == -317f, min(vec4<u32>(u_input.c, u_input.c, 23176u, u_input.a.x), vec4<u32>(4294967295u, u_input.a.x, 11191u, 7650u)), func_4(false, vec4<u32>(u_input.c, u_input.c, u_input.a.x, u_input.b.x), Struct_2(vec2<f32>(-401f, 110f), Struct_1(vec4<i32>(-17732i, 0i, -2147483647i, global0[_wgslsmith_index_u32(u_input.c, 28u)]), global1[_wgslsmith_index_u32(u_input.c, 3u)], u_input.a), Struct_1(vec4<i32>(-47473i, global0[_wgslsmith_index_u32(1u, 28u)], var_0.a, var_0.a), global1[_wgslsmith_index_u32(4294967295u, 3u)], u_input.a)), -26311i).a, var_0.a).a.b, Struct_1(-vec4<i32>(2821i, var_2.a, 1i, global0[_wgslsmith_index_u32(0u, 28u)]), vec2<i32>(global0[_wgslsmith_index_u32(u_input.b.x, 28u)], var_2.a) & vec2<i32>(26485i, 57916i), vec2<u32>(u_input.a.x, 1u))), reverseBits(~49173i)).a, _wgslsmith_sub_i32(_wgslsmith_mult_i32(min(func_4(true, vec4<u32>(u_input.c, 0u, u_input.a.x, 96557u), Struct_2(vec2<f32>(809f, arg_0.x), Struct_1(vec4<i32>(1i, -12849i, 2147483647i, var_1), global1[_wgslsmith_index_u32(0u, 3u)], vec2<u32>(u_input.b.x, 1u)), Struct_1(vec4<i32>(var_1, -26912i, var_2.a, -1i), vec2<i32>(var_1, global0[_wgslsmith_index_u32(104163u, 28u)]), u_input.b.zz)), var_2.a).a.c.a.x, 14763i), (var_0.a ^ global0[_wgslsmith_index_u32(22073u, 28u)]) & var_1), var_1));
    let var_4 = _wgslsmith_sub_i32(-2147483647i, global0[_wgslsmith_index_u32(var_3.a.b.c.x, 28u)]);
    return func_4(all(arg_1), vec4<u32>(~(~max(13753u, 43049u)), _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(min(vec4<u32>(33708u, u_input.c, var_3.a.b.c.x, var_3.a.c.c.x), vec4<u32>(var_3.a.c.c.x, 0u, 29622u, 0u)), vec4<u32>(u_input.a.x, 7233u, var_3.a.b.c.x, var_3.a.b.c.x) ^ vec4<u32>(u_input.a.x, 23769u, var_3.a.b.c.x, 1u), max(vec4<u32>(13320u, var_3.a.c.c.x, var_3.a.c.c.x, 62526u), vec4<u32>(u_input.b.x, 1u, var_3.a.c.c.x, var_3.a.b.c.x))), ~select(vec4<u32>(6840u, u_input.a.x, u_input.b.x, 11328u), vec4<u32>(2068u, u_input.b.x, u_input.a.x, 83527u), vec4<bool>(arg_1.x, true, false, arg_1.x))), 4294967295u, firstLeadingBit(var_3.a.c.c.x)), func_4(var_3.a.a.x == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x * var_0.b.x)), vec4<u32>(abs(0u), u_input.c, var_3.a.b.c.x ^ 314u, u_input.a.x) ^ ~vec4<u32>(0u, 119778u, var_3.a.c.c.x, 69984u), Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.b.x, 1022f))), Struct_1(~vec4<i32>(-1i, var_3.a.c.b.x, 0i, var_2.a), global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.a.x, var_3.a.c.c.x), 3u)], ~u_input.b.zy), Struct_1(select(vec4<i32>(-1i, var_2.a, var_4, var_2.a), var_3.a.b.a, vec4<bool>(arg_1.x, false, arg_1.x, arg_1.x)), select(vec2<i32>(global0[_wgslsmith_index_u32(1u, 28u)], var_1), var_3.a.b.b, false), vec2<u32>(11736u, var_3.a.c.c.x))), -(-var_2.a ^ ~(-5735i))).a, global0[_wgslsmith_index_u32(u_input.a.x, 28u)]);
}

fn func_1(arg_0: u32, arg_1: Struct_2, arg_2: Struct_1) -> bool {
    var var_0 = func_6(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-1157f - -1000f), arg_1.a.x, -756f) + vec3<f32>(1f, -1846f, _wgslsmith_f_op_f32(ceil(arg_1.a.x)))))), func_5(Struct_3(arg_1), func_4(_wgslsmith_f_op_f32(floor(arg_1.a.x)) > -750f, vec4<u32>(select(u_input.c, arg_0, false), func_2(), ~1u, 0u), Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1597f, arg_1.a.x)), arg_2, Struct_1(arg_2.a, vec2<i32>(global0[_wgslsmith_index_u32(1959u, 28u)], 29293i), vec2<u32>(63591u, 4294967295u))), _wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.b.a.x, arg_1.b.a.x, -11274i), vec3<i32>(global0[_wgslsmith_index_u32(24963u, 28u)], arg_1.b.a.x, -4145i)) | _wgslsmith_sub_i32(arg_2.a.x, arg_2.a.x)), vec4<f32>(_wgslsmith_f_op_f32(-905f * _wgslsmith_f_op_f32(-arg_1.a.x)), -830f, _wgslsmith_f_op_f32(select(arg_1.a.x, _wgslsmith_f_op_f32(-arg_1.a.x), any(vec4<bool>(false, true, true, true)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1680f)))), abs(-(~arg_1.b.b.x))));
    return all(vec2<bool>(true, true)) || (-1210f < _wgslsmith_f_op_f32(step(arg_1.a.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(-1000f, arg_1.a.x, true)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstTrailingBit(~1u);
    var var_1 = select(vec3<bool>(-1i > global0[_wgslsmith_index_u32(firstTrailingBit(~22177u), 28u)], false, !(abs(78222u) == _wgslsmith_dot_vec2_u32(u_input.b.yx, u_input.b.xy))), vec3<bool>(true, func_1(max(u_input.b.x, 1u), Struct_2(vec2<f32>(1000f, -1000f), Struct_1(vec4<i32>(global0[_wgslsmith_index_u32(0u, 28u)], -1i, global0[_wgslsmith_index_u32(u_input.b.x, 28u)], -1336i), vec2<i32>(-49487i, global0[_wgslsmith_index_u32(u_input.a.x, 28u)]), u_input.a), Struct_1(vec4<i32>(global0[_wgslsmith_index_u32(118197u, 28u)], -1i, 3527i, 1i), global1[_wgslsmith_index_u32(u_input.a.x, 3u)], u_input.a)), Struct_1(vec4<i32>(22925i, global0[_wgslsmith_index_u32(32115u, 28u)], global0[_wgslsmith_index_u32(0u, 28u)], -2147483647i), global1[_wgslsmith_index_u32(53534u, 3u)], u_input.a)) | !func_1(1u, Struct_2(vec2<f32>(-267f, -1112f), Struct_1(vec4<i32>(global0[_wgslsmith_index_u32(53671u, 28u)], -1i, 0i, global0[_wgslsmith_index_u32(4294967295u, 28u)]), global1[_wgslsmith_index_u32(1u, 3u)], vec2<u32>(60924u, var_0)), Struct_1(vec4<i32>(-1i, global0[_wgslsmith_index_u32(1u, 28u)], 1i, -151i), global1[_wgslsmith_index_u32(0u, 3u)], u_input.b.zy)), Struct_1(vec4<i32>(1i, 2147483647i, global0[_wgslsmith_index_u32(4862u, 28u)], -4563i), global1[_wgslsmith_index_u32(0u, 3u)], u_input.b.xy)), true), vec3<bool>(true, true, true));
    var var_2 = _wgslsmith_dot_vec3_u32(~u_input.b, u_input.b);
    let var_3 = func_6(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(1047f + -1319f), -1346f, 554f)), !vec3<bool>(max(u_input.c, var_0) > max(u_input.c, var_0), all(!vec3<bool>(var_1.x, true, var_1.x)), func_1(u_input.b.x, func_4(var_1.x, vec4<u32>(38909u, u_input.a.x, u_input.a.x, u_input.a.x), Struct_2(vec2<f32>(-333f, 1000f), Struct_1(vec4<i32>(8452i, global0[_wgslsmith_index_u32(1u, 28u)], global0[_wgslsmith_index_u32(40138u, 28u)], 0i), global1[_wgslsmith_index_u32(28910u, 3u)], u_input.b.zy), Struct_1(vec4<i32>(global0[_wgslsmith_index_u32(73083u, 28u)], 2147483647i, -23174i, 0i), global1[_wgslsmith_index_u32(0u, 3u)], u_input.a)), global0[_wgslsmith_index_u32(4294967295u, 28u)]).a, Struct_1(vec4<i32>(-2147483647i, 31501i, global0[_wgslsmith_index_u32(106682u, 28u)], 11130i), vec2<i32>(2147483647i, global0[_wgslsmith_index_u32(var_0, 28u)]), u_input.b.zx))));
    var var_4 = -34727i << (~(~(~(4294967295u ^ u_input.c))) % 32u);
    global0 = array<i32, 28>();
    global0 = array<i32, 28>();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(var_0, 1u, var_3.a.c.c.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1194f, -114f, 2722f) * vec3<f32>(-103f, -2846f, -1064f)) - _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_3.a.a.x, var_3.a.a.x, 748f)))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-510f, var_3.a.a.x, 1000f), vec3<f32>(var_3.a.a.x, 279f, 214f), var_1.x))))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.a.a.x, var_3.a.a.x, var_3.a.a.x) - vec3<f32>(var_3.a.a.x, var_3.a.a.x, -837f)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_3.a.a.x, -1076f, var_3.a.a.x))), true)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_3.a.a.x, var_3.a.a.x, -1000f), vec3<f32>(var_3.a.a.x, var_3.a.a.x, 1281f))))), global1[_wgslsmith_index_u32(7110u, 3u)], firstTrailingBit(~vec3<i32>(_wgslsmith_dot_vec3_i32(var_3.a.c.a.yxz, vec3<i32>(global0[_wgslsmith_index_u32(var_3.a.b.c.x, 28u)], 2454i, 27842i)), i32(-1i) * -8812i, var_3.a.b.b.x)), u_input.a.x ^ countOneBits(firstTrailingBit(_wgslsmith_mult_u32(57724u, 1u))));
}

