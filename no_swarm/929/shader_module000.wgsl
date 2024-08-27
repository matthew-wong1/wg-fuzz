struct Struct_1 {
    a: f32,
    b: f32,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 4> = array<bool, 4>(false, false, false, false);

var<private> global1: vec4<u32> = vec4<u32>(42933u, 44490u, 0u, 1u);

var<private> global2: u32;

var<private> global3: array<u32, 27> = array<u32, 27>(0u, 0u, 1u, 0u, 4294967295u, 4294967295u, 4294967295u, 1u, 36254u, 1u, 44018u, 0u, 0u, 1u, 28393u, 7954u, 42353u, 0u, 4294967295u, 0u, 0u, 9774u, 44198u, 17812u, 4294967295u, 0u, 0u);

var<private> global4: array<Struct_2, 28> = array<Struct_2, 28>(Struct_2(Struct_1(895f, 1000f, true), Struct_1(-1280f, -395f, true), vec2<u32>(57435u, 4294967295u)), Struct_2(Struct_1(-116f, 847f, false), Struct_1(-1203f, -1468f, true), vec2<u32>(4294967295u, 31912u)), Struct_2(Struct_1(1306f, -465f, true), Struct_1(-1830f, -809f, true), vec2<u32>(1u, 4294967295u)), Struct_2(Struct_1(-576f, -226f, true), Struct_1(364f, -1320f, true), vec2<u32>(4294967295u, 4294967295u)), Struct_2(Struct_1(1228f, -980f, true), Struct_1(-709f, -1000f, false), vec2<u32>(9854u, 1090u)), Struct_2(Struct_1(-1037f, -148f, true), Struct_1(-1179f, 1381f, false), vec2<u32>(1u, 4294967295u)), Struct_2(Struct_1(292f, 949f, false), Struct_1(-852f, 423f, true), vec2<u32>(44550u, 1u)), Struct_2(Struct_1(-1022f, 515f, false), Struct_1(-1016f, 211f, false), vec2<u32>(17682u, 0u)), Struct_2(Struct_1(-349f, -591f, true), Struct_1(-966f, -1116f, false), vec2<u32>(74015u, 43339u)), Struct_2(Struct_1(-106f, -1127f, false), Struct_1(2022f, -1212f, true), vec2<u32>(25786u, 22915u)), Struct_2(Struct_1(1362f, 331f, false), Struct_1(288f, -588f, true), vec2<u32>(28663u, 2434u)), Struct_2(Struct_1(-464f, -394f, false), Struct_1(675f, 1491f, true), vec2<u32>(1u, 46853u)), Struct_2(Struct_1(-609f, -1055f, false), Struct_1(-364f, 369f, true), vec2<u32>(14298u, 4294967295u)), Struct_2(Struct_1(1000f, -932f, false), Struct_1(-1099f, -526f, true), vec2<u32>(4294967295u, 188u)), Struct_2(Struct_1(-835f, 157f, false), Struct_1(812f, -1126f, true), vec2<u32>(0u, 57837u)), Struct_2(Struct_1(1448f, -721f, true), Struct_1(272f, 1481f, false), vec2<u32>(0u, 63003u)), Struct_2(Struct_1(1581f, 266f, true), Struct_1(-133f, -1681f, false), vec2<u32>(40572u, 4294967295u)), Struct_2(Struct_1(-987f, 986f, false), Struct_1(1000f, -1000f, true), vec2<u32>(4294967295u, 38949u)), Struct_2(Struct_1(-170f, 1290f, false), Struct_1(1000f, 1000f, false), vec2<u32>(0u, 43381u)), Struct_2(Struct_1(-299f, -962f, true), Struct_1(401f, -1316f, false), vec2<u32>(4294967295u, 12746u)), Struct_2(Struct_1(313f, -256f, false), Struct_1(391f, 423f, false), vec2<u32>(58253u, 0u)), Struct_2(Struct_1(-1000f, 1882f, false), Struct_1(-287f, -173f, false), vec2<u32>(43680u, 0u)), Struct_2(Struct_1(-1461f, -1000f, true), Struct_1(-236f, 840f, true), vec2<u32>(1u, 4294967295u)), Struct_2(Struct_1(785f, -1427f, false), Struct_1(859f, -1427f, false), vec2<u32>(29977u, 37086u)), Struct_2(Struct_1(-2356f, 1060f, false), Struct_1(-209f, 761f, false), vec2<u32>(21779u, 1u)), Struct_2(Struct_1(544f, -1103f, false), Struct_1(-779f, -701f, true), vec2<u32>(8859u, 79042u)), Struct_2(Struct_1(-1629f, 240f, true), Struct_1(-788f, -1600f, false), vec2<u32>(1u, 82362u)), Struct_2(Struct_1(-445f, 1000f, true), Struct_1(-576f, -1647f, true), vec2<u32>(0u, 61242u)));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<bool>, arg_1: vec4<f32>, arg_2: f32, arg_3: Struct_1) -> i32 {
    var var_0 = arg_0.x;
    let var_1 = ~global1.zzw;
    var var_2 = _wgslsmith_f_op_vec2_f32(-arg_1.zy);
    let var_3 = Struct_2(Struct_1(-1425f, 1233f, any(vec4<bool>(arg_0.x, global0[_wgslsmith_index_u32(1u, 4u)], true, false))), Struct_1(_wgslsmith_f_op_f32(exp2(arg_1.x)), 2632f, arg_0.x), _wgslsmith_add_vec2_u32(select(~(~global1.ww), ~var_1.yz, !global0[_wgslsmith_index_u32(~global1.x, 4u)]), abs(~_wgslsmith_sub_vec2_u32(vec2<u32>(41197u, 4294967295u), var_1.zy))));
    global0 = array<bool, 4>();
    return firstLeadingBit(reverseBits(-131i));
}

fn func_2() -> Struct_2 {
    let var_0 = _wgslsmith_clamp_vec3_i32(~(~vec3<i32>(-25608i, 1i, -9311i)), vec3<i32>(-13288i, min(-(~u_input.a.x), abs(func_3(vec4<bool>(false, global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(37652u, 27u)], 4u)], false, global0[_wgslsmith_index_u32(1u, 4u)]), vec4<f32>(798f, 1616f, 732f, 434f), -1544f, Struct_1(-671f, 2733f, false)))), u_input.a.x), vec3<i32>(u_input.a.x, ~u_input.a.x, countOneBits(reverseBits(~(-22904i)))));
    global4 = array<Struct_2, 28>();
    var var_1 = Struct_1(-714f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(283f, 973f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(1824f, 1276f))))) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -115f) - _wgslsmith_f_op_f32(sign(-2721f)))))), all(vec3<bool>(!global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global1.x, 27u)], 4u)], -2147483647i > _wgslsmith_mult_i32(u_input.a.x, -48126i), global0[_wgslsmith_index_u32(abs(global3[_wgslsmith_index_u32(firstLeadingBit(4294967295u), 27u)]), 4u)])));
    let var_2 = firstLeadingBit(-2147483647i);
    let var_3 = global4[_wgslsmith_index_u32(~(~(~(~_wgslsmith_mult_u32(38893u, global1.x)))), 28u)];
    return Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a + var_3.b.a) - _wgslsmith_f_op_f32(max(-577f, _wgslsmith_div_f32(var_3.b.b, -928f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(var_1.a)))) * -1820f), !(!(!var_3.b.c))), Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-270f)) * _wgslsmith_f_op_f32(floor(893f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1020f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_1.b + 1366f))) - var_1.a), false), vec2<u32>(~global1.x, 0u));
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: Struct_2, arg_3: vec4<f32>) -> vec3<f32> {
    var var_0 = vec3<f32>(arg_1, _wgslsmith_f_op_f32(sign(533f)), func_2().a.b);
    var var_1 = select(select(!(!(!vec2<bool>(arg_2.a.c, arg_2.a.c))), vec2<bool>(arg_2.b.c, any(select(vec3<bool>(global0[_wgslsmith_index_u32(global1.x, 4u)], arg_0.c, arg_0.c), vec3<bool>(true, true, true), vec3<bool>(true, global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global1.x, 27u)], 4u)], arg_2.a.c)))), vec2<bool>(false, !any(vec2<bool>(false, arg_0.c)))), vec2<bool>(true, true), select(vec2<bool>(arg_2.b.c, func_2().a.c), !select(!vec2<bool>(global0[_wgslsmith_index_u32(41340u, 4u)], global0[_wgslsmith_index_u32(arg_2.c.x, 4u)]), select(vec2<bool>(global0[_wgslsmith_index_u32(4622u, 4u)], false), vec2<bool>(arg_2.b.c, false), vec2<bool>(true, false)), select(vec2<bool>(arg_2.b.c, arg_0.c), vec2<bool>(arg_0.c, false), vec2<bool>(false, arg_0.c))), !arg_0.c));
    let var_2 = Struct_2(func_2().a, func_2().a, arg_2.c);
    var var_3 = var_2.a;
    let var_4 = arg_0;
    return _wgslsmith_f_op_vec3_f32(sign(arg_3.wwx));
}

fn func_5(arg_0: vec3<f32>, arg_1: vec4<u32>, arg_2: Struct_2) -> Struct_1 {
    let var_0 = func_2().a;
    var var_1 = _wgslsmith_clamp_vec3_i32(-((-vec3<i32>(57801i, -27032i, u_input.a.x) ^ max(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<i32>(1i, u_input.a.x, u_input.a.x))) ^ -(~vec3<i32>(-21183i, u_input.a.x, -2147483647i))), firstLeadingBit(vec3<i32>(u_input.a.x, u_input.a.x >> (global1.x % 32u), 6955i)), -_wgslsmith_div_vec3_i32(~vec3<i32>(u_input.a.x, 42670i, u_input.a.x), -vec3<i32>(u_input.a.x, 0i, u_input.a.x)) >> ((countOneBits(global1.yww >> (global1.zzz % vec3<u32>(32u))) | _wgslsmith_mod_vec3_u32(~vec3<u32>(36787u, 0u, global1.x), vec3<u32>(arg_2.c.x, arg_2.c.x, global3[_wgslsmith_index_u32(global1.x, 27u)]) & vec3<u32>(8299u, 1u, 22952u))) % vec3<u32>(32u)));
    var var_2 = ~_wgslsmith_add_u32(0u, ~(~42240u));
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1483f, _wgslsmith_f_op_f32(arg_2.a.b * -904f), -597f))));
    var var_4 = (_wgslsmith_dot_vec3_i32(~(vec3<i32>(-12292i, 1i, u_input.a.x) & vec3<i32>(71110i, var_1.x, var_1.x)), _wgslsmith_div_vec3_i32(select(vec3<i32>(var_1.x, u_input.a.x, u_input.a.x), vec3<i32>(u_input.a.x, 6785i, 1i), true), ~vec3<i32>(var_1.x, var_1.x, u_input.a.x))) & (i32(-1i) * -2147483647i)) << (_wgslsmith_sub_u32(max(global3[_wgslsmith_index_u32(global1.x, 27u)], arg_1.x), global1.x ^ global3[_wgslsmith_index_u32(arg_2.c.x, 27u)]) % 32u);
    return arg_2.b;
}

fn func_1(arg_0: Struct_1) -> vec3<f32> {
    let var_0 = func_5(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.a, arg_0.a, arg_0.b) + vec3<f32>(341f, arg_0.b, arg_0.b)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(130f, 2032f, arg_0.b)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_4(Struct_1(-363f, -748f, arg_0.c), 387f, func_2(), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_0.a, -1547f, 1000f, arg_0.b))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(400f, arg_0.a, -538f), vec3<f32>(241f, 1000f, 913f))) * _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-805f, 775f, arg_0.b)))))), abs(abs(_wgslsmith_clamp_vec4_u32(vec4<u32>(15039u, global3[_wgslsmith_index_u32(0u, 27u)], 1u, 1u), vec4<u32>(global1.x, 0u, 0u, 53831u) | vec4<u32>(global1.x, global3[_wgslsmith_index_u32(14831u, 27u)], 1u, 1u), ~vec4<u32>(33323u, 57711u, 4294967295u, global1.x)))), Struct_2(arg_0, func_2().b, abs(vec2<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(32120u, 27u)], 27u)], 4294967295u) << (global1.yw % vec2<u32>(32u)))));
    global4 = array<Struct_2, 28>();
    let var_1 = _wgslsmith_add_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(global3[_wgslsmith_index_u32(~global1.x, 27u)], 78799u), vec2<u32>(global3[_wgslsmith_index_u32(~(~71088u), 27u)], ~(~global1.x))), global1.wx);
    var var_2 = func_2().a;
    let var_3 = Struct_2(Struct_1(var_0.b, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_0.a - arg_0.a), var_0.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-556f - var_2.b)))), !(var_1.x == 1u) & all(vec4<bool>(true, var_2.c, true, arg_0.c))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.a + var_0.b), var_2.b)), -509f, all(select(!vec3<bool>(false, var_0.c, global0[_wgslsmith_index_u32(39270u, 4u)]), select(vec3<bool>(true, var_2.c, true), vec3<bool>(global0[_wgslsmith_index_u32(58387u, 4u)], var_2.c, true), vec3<bool>(false, true, false)), !vec3<bool>(var_2.c, var_0.c, true)))), min(global1.wz, ~(vec2<u32>(0u, global3[_wgslsmith_index_u32(24327u, 27u)]) & var_1)) >> (vec2<u32>(global3[_wgslsmith_index_u32(global1.x, 27u)], _wgslsmith_dot_vec2_u32(vec2<u32>(global1.x, var_1.x), global1.zz)) % vec2<u32>(32u)));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_div_f32(func_5(vec3<f32>(-1000f, -1825f, -258f), vec4<u32>(0u, var_3.c.x, global1.x, global1.x), var_3).b, _wgslsmith_f_op_f32(floor(-527f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-614f, var_2.b) - -1521f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a))), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.b, -600f, 869f) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1231f, arg_0.a, var_2.b)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_0.a, 744f, 1425f))))))));
}

fn func_6(arg_0: vec3<f32>, arg_1: f32, arg_2: vec4<f32>) -> i32 {
    let var_0 = 0u;
    global4 = array<Struct_2, 28>();
    let var_1 = vec2<bool>(all(vec3<bool>(false | func_5(arg_0, vec4<u32>(4294967295u, 1u, 25806u, global1.x), global4[_wgslsmith_index_u32(1u, 28u)]).c, global0[_wgslsmith_index_u32(var_0, 4u)], global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(var_0, global1.x, 4294967295u), 4u)])), global0[_wgslsmith_index_u32(var_0, 4u)]);
    var var_2 = _wgslsmith_div_vec3_u32(global1.yxw, _wgslsmith_add_vec3_u32(countOneBits(~(global1.wzx << (global1.wwy % vec3<u32>(32u)))), abs((vec3<u32>(var_0, var_0, global3[_wgslsmith_index_u32(var_0, 27u)]) & vec3<u32>(global3[_wgslsmith_index_u32(var_0, 27u)], 8089u, 45338u)) << ((global1.zwx << (global1.yxx % vec3<u32>(32u))) % vec3<u32>(32u)))));
    var var_3 = func_5(_wgslsmith_f_op_vec3_f32(arg_0 * _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_0.x, 833f, -1762f))), arg_2.yxx) - _wgslsmith_f_op_vec3_f32(abs(arg_0)))), select(~max(vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(73784u, 27u)], 27u)], 102189u, var_0, 56676u), vec4<u32>(4294967295u, var_2.x, global3[_wgslsmith_index_u32(19703u, 27u)], 65629u)) >> ((vec4<u32>(global1.x, global1.x, var_0, 1u) | select(vec4<u32>(4294967295u, var_2.x, var_2.x, global3[_wgslsmith_index_u32(88946u, 27u)]), vec4<u32>(0u, 0u, 1u, var_2.x), true)) % vec4<u32>(32u)), vec4<u32>(~60182u, ~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global1.x, 27u)], 27u)], 27u)], ~var_2.x, global1.x) ^ ~(~vec4<u32>(4294967295u, 4294967295u, global3[_wgslsmith_index_u32(var_0, 27u)], var_2.x)), var_1.x || select(true, global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(~30969u, 27u)], 4u)], true)), global4[_wgslsmith_index_u32(global1.x, 28u)]);
    return u_input.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -u_input.a.x;
    let var_1 = !(!vec4<bool>(global0[_wgslsmith_index_u32(46016u, 4u)], true, -2147483647i >= (0i << (global1.x % 32u)), global0[_wgslsmith_index_u32(1u, 4u)]));
    var var_2 = func_6(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-622f, -2387f, -549f) - vec3<f32>(1861f, -1272f, 564f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(168f, 1438f, -784f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(func_1(Struct_1(1000f, -1066f, false))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(604f, 328f, 724f)) + _wgslsmith_f_op_vec3_f32(round(vec3<f32>(1079f, -1000f, 817f))))))), func_2().b.a, vec4<f32>(-800f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -403f))), _wgslsmith_f_op_f32(abs(-420f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-670f))), _wgslsmith_f_op_vec3_f32(func_1(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -370f), _wgslsmith_f_op_f32(f32(-1f) * -552f), true))).x));
    global1 = ~select(~vec4<u32>(max(4294967295u, global1.x), global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(4996u, 67558u), 27u)], 38906u, 22329u), reverseBits(vec4<u32>(global1.x, global1.x, 127228u, 25170u)) ^ vec4<u32>(countOneBits(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 27u)], 27u)]), 1u, global3[_wgslsmith_index_u32(global1.x >> (1u % 32u), 27u)], 1u << (global3[_wgslsmith_index_u32(global1.x, 27u)] % 32u)), !global0[_wgslsmith_index_u32(global1.x, 4u)]);
    let var_3 = all(vec2<bool>(false, var_1.x));
    var var_4 = _wgslsmith_div_vec2_i32(~select(firstLeadingBit(select(vec2<i32>(u_input.a.x, u_input.a.x), vec2<i32>(34931i, u_input.a.x), var_1.yw)), u_input.a, vec2<bool>(var_3, func_5(vec3<f32>(1000f, -937f, 309f), vec4<u32>(global1.x, 30901u, global1.x, 1u), Struct_2(Struct_1(1462f, 763f, true), Struct_1(2367f, -1709f, var_3), global1.yx)).c)), vec2<i32>(-u_input.a.x, -(~abs(-6473i))));
    let x = u_input.a;
    s_output = StorageBuffer(global1.x, ~func_6(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-145f, 590f, 3557f))), 1418f, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-300f, -851f, 110f, 300f) - vec4<f32>(-1000f, -248f, 292f, 1178f)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1137f, -1712f, -131f, 754f))))), max(~(~vec4<u32>(global1.x, global3[_wgslsmith_index_u32(1u, 27u)], 1u, 8019u)) << (_wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(13260u, global1.x, 35794u, 6507u), vec4<u32>(0u, global3[_wgslsmith_index_u32(7593u, 27u)], 50748u, 1u)), vec4<u32>(global1.x, global3[_wgslsmith_index_u32(1u, 27u)], 1u, 0u) ^ vec4<u32>(global1.x, 30134u, global1.x, 70439u)) % vec4<u32>(32u)), vec4<u32>(max(14242u, _wgslsmith_mod_u32(global1.x, 1u)), func_2().c.x, 1u, 38660u)), 1044f);
}

