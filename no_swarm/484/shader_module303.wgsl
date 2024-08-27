struct Struct_1 {
    a: vec2<i32>,
    b: i32,
    c: f32,
    d: vec4<i32>,
    e: bool,
}

struct Struct_2 {
    a: u32,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec3<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: i32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 3>;

var<private> global1: Struct_2 = Struct_2(9092u, vec2<bool>(true, true));

var<private> global2: array<Struct_1, 31> = array<Struct_1, 31>(Struct_1(vec2<i32>(1i, 13223i), -1i, 1590f, vec4<i32>(0i, 3202i, 14406i, 0i), false), Struct_1(vec2<i32>(-6209i, 15770i), 21147i, -285f, vec4<i32>(-4518i, -36989i, -28301i, -1i), false), Struct_1(vec2<i32>(i32(-2147483648), -25453i), 1i, -1828f, vec4<i32>(2147483647i, -42781i, 36781i, -6624i), true), Struct_1(vec2<i32>(-22551i, 2147483647i), -28633i, -1000f, vec4<i32>(29497i, 2147483647i, -1i, -1i), false), Struct_1(vec2<i32>(1i, 29843i), 2056i, -903f, vec4<i32>(-49928i, 5323i, -37244i, 2147483647i), false), Struct_1(vec2<i32>(0i, 40182i), i32(-2147483648), -799f, vec4<i32>(2147483647i, -26570i, i32(-2147483648), 32401i), true), Struct_1(vec2<i32>(i32(-2147483648), 0i), 2147483647i, 1000f, vec4<i32>(-7525i, i32(-2147483648), 1i, 0i), false), Struct_1(vec2<i32>(1i, i32(-2147483648)), 8827i, 1000f, vec4<i32>(2147483647i, -45521i, -28904i, 5610i), true), Struct_1(vec2<i32>(2147483647i, 1i), -1i, -1104f, vec4<i32>(i32(-2147483648), 1316i, 1i, 19967i), false), Struct_1(vec2<i32>(8547i, -2838i), -34441i, -106f, vec4<i32>(-12410i, -1i, 0i, 2147483647i), true), Struct_1(vec2<i32>(15412i, -8510i), 2147483647i, 771f, vec4<i32>(5120i, i32(-2147483648), -22494i, i32(-2147483648)), false), Struct_1(vec2<i32>(-45171i, 12460i), 0i, 218f, vec4<i32>(-69930i, 27613i, 47732i, i32(-2147483648)), true), Struct_1(vec2<i32>(0i, -1i), 2147483647i, 865f, vec4<i32>(23890i, 71897i, 2147483647i, i32(-2147483648)), false), Struct_1(vec2<i32>(40149i, -21768i), 86054i, 202f, vec4<i32>(19312i, i32(-2147483648), 37100i, -24055i), true), Struct_1(vec2<i32>(62446i, -43369i), 1i, 531f, vec4<i32>(18039i, i32(-2147483648), -64243i, -18651i), true), Struct_1(vec2<i32>(1i, -37546i), 41379i, -444f, vec4<i32>(-14020i, 0i, 17361i, 58921i), true), Struct_1(vec2<i32>(-11477i, 41135i), -12192i, -658f, vec4<i32>(-25125i, -30085i, -1i, -49329i), true), Struct_1(vec2<i32>(-1i, i32(-2147483648)), 0i, -676f, vec4<i32>(0i, 1i, -4582i, -1i), false), Struct_1(vec2<i32>(1i, 1i), 0i, 112f, vec4<i32>(0i, i32(-2147483648), 1i, -1i), false), Struct_1(vec2<i32>(-1i, 0i), -3760i, -917f, vec4<i32>(49866i, 44788i, 72092i, 1i), false), Struct_1(vec2<i32>(13375i, i32(-2147483648)), 1i, -635f, vec4<i32>(-16730i, -20466i, 0i, 2147483647i), true), Struct_1(vec2<i32>(1i, -24947i), -22409i, -392f, vec4<i32>(45640i, 1i, 44453i, -21047i), false), Struct_1(vec2<i32>(0i, 943i), 2147483647i, 328f, vec4<i32>(-1i, 4192i, 35703i, -8632i), false), Struct_1(vec2<i32>(-42815i, 0i), 5808i, 542f, vec4<i32>(-81551i, -57518i, 71146i, 0i), true), Struct_1(vec2<i32>(-45756i, 0i), -51906i, -688f, vec4<i32>(56156i, -30091i, -29782i, 0i), true), Struct_1(vec2<i32>(1i, 1i), -11965i, 378f, vec4<i32>(-1i, -37769i, 1i, 2147483647i), false), Struct_1(vec2<i32>(19760i, -41866i), 88957i, -688f, vec4<i32>(-19058i, 1i, 0i, -24837i), true), Struct_1(vec2<i32>(9496i, -1i), -24418i, -1423f, vec4<i32>(-49390i, 2147483647i, 25519i, 0i), true), Struct_1(vec2<i32>(-10373i, 29170i), 32114i, -628f, vec4<i32>(2147483647i, 2147483647i, 1i, -19322i), false), Struct_1(vec2<i32>(-15619i, 15945i), 43963i, -386f, vec4<i32>(-15507i, 35941i, -4853i, 1i), true), Struct_1(vec2<i32>(-23799i, i32(-2147483648)), 18778i, 1102f, vec4<i32>(1i, 7155i, 2147483647i, 0i), false));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> vec4<i32> {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -464f), 1000f, false || global1.b.x))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1190f, 353f, global1.b.x))))))) + 436f);
    let var_1 = vec2<bool>(global1.b.x, true);
    let var_2 = vec4<bool>(select(~(~1u), u_input.b, u_input.e.x == firstTrailingBit(global0[_wgslsmith_index_u32(32104u, 3u)])) <= _wgslsmith_dot_vec2_u32(u_input.d.zx | vec2<u32>(0u, global1.a), select(vec2<u32>(40714u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.e.x, 3u)], 3u)]), vec2<u32>(0u, 62323u), global1.b.x) >> (u_input.d.xx % vec2<u32>(32u))), firstTrailingBit(_wgslsmith_add_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 3u)], 3u)], global1.a)) > ~_wgslsmith_dot_vec4_u32(vec4<u32>(global1.a, 4294967295u, 1u, global0[_wgslsmith_index_u32(62402u, 3u)]), vec4<u32>(global0[_wgslsmith_index_u32(1u, 3u)], 75446u, 0u, 1u)), true, !((firstLeadingBit(u_input.a) & -1i) <= ((u_input.c << (global1.a % 32u)) << (abs(u_input.b) % 32u))));
    var var_3 = var_2.x || true;
    let var_4 = var_2.yy;
    return _wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_div_i32(reverseBits(-23124i) << ((u_input.b << (u_input.e.x % 32u)) % 32u), reverseBits(u_input.c & u_input.a)), ~u_input.c, u_input.c, _wgslsmith_dot_vec2_i32(~(-vec2<i32>(21218i, u_input.a)), max(vec2<i32>(0i, u_input.a), vec2<i32>(u_input.a, u_input.c)))), _wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(u_input.c, 47149i, 1i)), -vec3<i32>(-13647i, 0i, u_input.c)), 10566i & u_input.a, -u_input.a | ~u_input.a, -u_input.a), -_wgslsmith_div_vec4_i32(~vec4<i32>(u_input.c, u_input.c, -14852i, u_input.a), firstLeadingBit(vec4<i32>(u_input.c, 31922i, u_input.c, 40766i)))));
}

fn func_2(arg_0: bool) -> f32 {
    let var_0 = Struct_2(firstTrailingBit(_wgslsmith_mod_u32(~4294967295u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(9875u, global0[_wgslsmith_index_u32(0u, 3u)], 1u, global1.a), vec4<u32>(37390u, global0[_wgslsmith_index_u32(45636u, 3u)], 9824u, 4294967295u)))), select(vec2<bool>(any(vec4<bool>(arg_0, global1.b.x, arg_0, false)), false), vec2<bool>(arg_0, !global1.b.x), global1.b.x));
    global2 = array<Struct_1, 31>();
    global2 = array<Struct_1, 31>();
    let var_1 = firstLeadingBit(_wgslsmith_sub_vec4_i32(func_3(), vec4<i32>(27743i, ~max(u_input.a, -1i), ~u_input.c, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, -2147483647i, 0i), vec3<i32>(-1i, 0i, u_input.a)))));
    var var_2 = var_0;
    return 952f;
}

fn func_4(arg_0: bool, arg_1: f32, arg_2: Struct_1, arg_3: Struct_1) -> f32 {
    var var_0 = select(vec4<bool>(false, !arg_2.e, any(select(select(vec3<bool>(true, arg_0, arg_2.e), vec3<bool>(false, false, true), true), vec3<bool>(arg_2.e, false, arg_2.e), vec3<bool>(true, arg_0, false))), false), vec4<bool>(true, !arg_2.e, arg_2.e, global1.b.x), select(!(!select(vec4<bool>(true, false, true, global1.b.x), vec4<bool>(true, true, arg_3.e, global1.b.x), vec4<bool>(global1.b.x, arg_2.e, true, false))), select(!(!vec4<bool>(true, arg_3.e, true, true)), vec4<bool>(true, arg_3.e, true, false), select(select(vec4<bool>(false, global1.b.x, false, global1.b.x), vec4<bool>(arg_0, arg_3.e, arg_2.e, true), vec4<bool>(false, arg_0, arg_3.e, true)), !vec4<bool>(arg_2.e, arg_0, global1.b.x, arg_3.e), true)), true | (global1.a >= _wgslsmith_add_u32(31969u, 5490u))));
    var var_1 = true;
    global2 = array<Struct_1, 31>();
    var var_2 = true && !all(!select(var_0.wzx, vec3<bool>(var_0.x, true, false), var_0.wzz));
    var var_3 = func_3().x;
    return arg_3.c;
}

fn func_1() -> f32 {
    return _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1735f + -1502f) - _wgslsmith_f_op_f32(func_2(any(global1.b)))) <= 1024f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1373f + -942f))), _wgslsmith_f_op_f32(func_2(true)))), Struct_1(~_wgslsmith_sub_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.c, 62277i), vec2<i32>(u_input.a, -15466i)), vec2<i32>(u_input.a, u_input.c)), u_input.a, _wgslsmith_f_op_f32(_wgslsmith_div_f32(1163f, 934f) - _wgslsmith_f_op_f32(trunc(-1038f))), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.c, 20752i, -1i, 10228i) ^ vec4<i32>(u_input.c, 0i, -11279i, 0i), ~vec4<i32>(u_input.c, u_input.c, u_input.a, u_input.a)) << (~(vec4<u32>(1u, 49027u, global1.a, 4095u) ^ vec4<u32>(0u, global0[_wgslsmith_index_u32(u_input.b, 3u)], global1.a, global1.a)) % vec4<u32>(32u)), global1.b.x), Struct_1(_wgslsmith_mod_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a, 1i), vec2<i32>(-2147483647i, u_input.c), vec2<i32>(u_input.c, u_input.a)), _wgslsmith_div_vec2_i32(vec2<i32>(-34384i, u_input.a), vec2<i32>(0i, 1004i))) & vec2<i32>(_wgslsmith_sub_i32(u_input.c, u_input.c), -1i), reverseBits(~(-9189i)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(false)), _wgslsmith_f_op_f32(min(-340f, -461f)))), vec4<i32>(u_input.a, _wgslsmith_mod_i32(i32(-1i) * -1i, -17264i), _wgslsmith_mult_i32(func_3().x, -48231i), ~u_input.a), all(vec2<bool>(true, true)))));
}

fn func_5(arg_0: bool, arg_1: f32) -> Struct_2 {
    let var_0 = vec3<f32>(_wgslsmith_div_f32(arg_1, _wgslsmith_f_op_f32(-arg_1)), arg_1, 975f);
    let var_1 = -323f;
    global2 = array<Struct_1, 31>();
    var var_2 = -_wgslsmith_clamp_vec4_i32(-vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, 1i, 2147483647i), vec3<i32>(-29385i, 2147483647i, u_input.a)), max(u_input.a, u_input.c), u_input.c, ~u_input.c), -_wgslsmith_mod_vec4_i32(-vec4<i32>(-2147483647i, u_input.c, 38175i, u_input.a), vec4<i32>(u_input.a, u_input.a, -2147483647i, -2147483647i)), vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_sub_i32(10719i, -29364i), _wgslsmith_add_i32(u_input.a, u_input.a)), _wgslsmith_clamp_i32(u_input.a, u_input.c, _wgslsmith_sub_i32(u_input.a, 246i)), -(u_input.a & 41804i), _wgslsmith_mod_i32(6084i, 42815i) & -u_input.c));
    let var_3 = -1250f;
    return Struct_2(1u, !(!global1.b));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 31>();
    global0 = array<u32, 3>();
    global1 = func_5(_wgslsmith_f_op_f32(func_1()) < _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -4489f), 345f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1276f + -1000f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_div_f32(737f, -271f) + _wgslsmith_f_op_f32(select(-687f, 612f, global1.b.x))), _wgslsmith_f_op_f32(-290f - -127f))))));
    let var_0 = Struct_1(vec2<i32>(1i, abs(6817i)), abs(-u_input.c), 1943f, _wgslsmith_div_vec4_i32(min(vec4<i32>(29930i, u_input.c, u_input.a, 4352i) << (_wgslsmith_div_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(global1.a, 3u)], global1.a, global0[_wgslsmith_index_u32(global1.a, 3u)], u_input.b), vec4<u32>(1u, global0[_wgslsmith_index_u32(u_input.e.x, 3u)], global0[_wgslsmith_index_u32(21450u, 3u)], 1u)) % vec4<u32>(32u)), (vec4<i32>(-8573i, u_input.a, u_input.a, u_input.c) >> (vec4<u32>(17615u, global1.a, global1.a, 1u) % vec4<u32>(32u))) | abs(vec4<i32>(u_input.c, -70621i, 3146i, 2147483647i))), vec4<i32>(13310i, 18559i, 0i, abs(1i))), global1.b.x | true);
    global2 = array<Struct_1, 31>();
    var var_1 = true;
    var var_2 = Struct_2(_wgslsmith_div_u32(1u, countOneBits(32646u)), select(select(!vec2<bool>(var_0.e, true), vec2<bool>(global1.b.x, global1.b.x | var_0.e), !vec2<bool>(var_0.e, true)), func_5(!global1.b.x | !global1.b.x, _wgslsmith_f_op_f32(-var_0.c)).b, vec2<bool>(false, all(vec4<bool>(var_0.e, global1.b.x, var_0.e, true)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.c, u_input.d, var_0.d.x, firstTrailingBit(~firstLeadingBit(min(vec4<u32>(global1.a, 0u, var_2.a, var_2.a), vec4<u32>(global0[_wgslsmith_index_u32(u_input.b, 3u)], global1.a, u_input.d.x, global0[_wgslsmith_index_u32(u_input.e.x, 3u)])))));
}

