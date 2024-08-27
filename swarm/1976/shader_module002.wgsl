struct Struct_1 {
    a: f32,
    b: vec2<i32>,
    c: vec3<bool>,
    d: f32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: vec3<f32>,
    b: u32,
    c: Struct_1,
    d: vec4<u32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 4294967295u;

var<private> global1: array<Struct_3, 24> = array<Struct_3, 24>(Struct_3(vec3<f32>(-1358f, -181f, 580f), 121102u, Struct_1(2091f, vec2<i32>(-13229i, 2147483647i), vec3<bool>(true, true, false), 1278f), vec4<u32>(41835u, 102402u, 10972u, 20196u), Struct_2(-25375i)), Struct_3(vec3<f32>(181f, -2091f, 413f), 0u, Struct_1(-341f, vec2<i32>(2147483647i, 2147483647i), vec3<bool>(true, true, true), 3051f), vec4<u32>(4294967295u, 14609u, 1u, 62379u), Struct_2(2147483647i)), Struct_3(vec3<f32>(1283f, -931f, 208f), 4294967295u, Struct_1(1000f, vec2<i32>(1i, 2604i), vec3<bool>(false, true, false), 961f), vec4<u32>(4294967295u, 4294967295u, 4294967295u, 0u), Struct_2(0i)), Struct_3(vec3<f32>(-580f, 198f, 457f), 121550u, Struct_1(-1019f, vec2<i32>(-1i, 0i), vec3<bool>(false, true, false), -1826f), vec4<u32>(0u, 4294967295u, 22038u, 25049u), Struct_2(-42216i)), Struct_3(vec3<f32>(-1141f, -624f, -638f), 1u, Struct_1(124f, vec2<i32>(0i, 1i), vec3<bool>(false, true, true), -123f), vec4<u32>(4294967295u, 62027u, 53576u, 36429u), Struct_2(-32466i)), Struct_3(vec3<f32>(1567f, 848f, 1000f), 0u, Struct_1(-1278f, vec2<i32>(0i, 69276i), vec3<bool>(false, false, false), -1211f), vec4<u32>(1u, 4294967295u, 38277u, 20830u), Struct_2(-1i)), Struct_3(vec3<f32>(970f, -290f, -2272f), 10871u, Struct_1(500f, vec2<i32>(0i, 13048i), vec3<bool>(false, true, true), -1204f), vec4<u32>(0u, 81335u, 36633u, 0u), Struct_2(-11288i)), Struct_3(vec3<f32>(-372f, 614f, -952f), 4294967295u, Struct_1(1386f, vec2<i32>(13636i, 20136i), vec3<bool>(false, true, false), 138f), vec4<u32>(52021u, 382u, 70200u, 1u), Struct_2(0i)), Struct_3(vec3<f32>(-2388f, -768f, -614f), 4294967295u, Struct_1(707f, vec2<i32>(14388i, 0i), vec3<bool>(false, false, false), 380f), vec4<u32>(0u, 4294967295u, 1u, 0u), Struct_2(0i)), Struct_3(vec3<f32>(-1036f, -388f, -1971f), 1u, Struct_1(-748f, vec2<i32>(13101i, 0i), vec3<bool>(false, false, false), -386f), vec4<u32>(29785u, 4294967295u, 19921u, 118515u), Struct_2(-1i)), Struct_3(vec3<f32>(-2578f, 1000f, 2167f), 1u, Struct_1(438f, vec2<i32>(i32(-2147483648), 2147483647i), vec3<bool>(true, false, false), 823f), vec4<u32>(0u, 1u, 5959u, 1u), Struct_2(1i)), Struct_3(vec3<f32>(193f, -418f, -1609f), 12231u, Struct_1(-950f, vec2<i32>(2147483647i, -1i), vec3<bool>(true, true, true), 101f), vec4<u32>(0u, 4294967295u, 1u, 70706u), Struct_2(i32(-2147483648))), Struct_3(vec3<f32>(511f, -240f, 1555f), 4294967295u, Struct_1(-1000f, vec2<i32>(1i, -8206i), vec3<bool>(false, true, true), 234f), vec4<u32>(1u, 1u, 0u, 66046u), Struct_2(-3212i)), Struct_3(vec3<f32>(1000f, 1404f, -1000f), 4294967295u, Struct_1(678f, vec2<i32>(1i, 45680i), vec3<bool>(false, false, false), 226f), vec4<u32>(0u, 41011u, 15812u, 1u), Struct_2(i32(-2147483648))), Struct_3(vec3<f32>(1000f, -1443f, 130f), 71122u, Struct_1(-408f, vec2<i32>(2147483647i, 18853i), vec3<bool>(false, true, false), -201f), vec4<u32>(0u, 0u, 9439u, 61023u), Struct_2(-29190i)), Struct_3(vec3<f32>(278f, 1314f, -1709f), 0u, Struct_1(630f, vec2<i32>(39481i, i32(-2147483648)), vec3<bool>(true, true, true), -769f), vec4<u32>(18405u, 66141u, 81470u, 28197u), Struct_2(39668i)), Struct_3(vec3<f32>(1126f, -972f, -132f), 1u, Struct_1(-747f, vec2<i32>(i32(-2147483648), -246i), vec3<bool>(true, false, true), -648f), vec4<u32>(0u, 1u, 0u, 1u), Struct_2(2147483647i)), Struct_3(vec3<f32>(-1158f, -1692f, 1257f), 3171u, Struct_1(543f, vec2<i32>(5275i, 1i), vec3<bool>(false, false, false), -1124f), vec4<u32>(0u, 20718u, 5099u, 62445u), Struct_2(840i)), Struct_3(vec3<f32>(380f, 908f, -881f), 18765u, Struct_1(-2054f, vec2<i32>(-35146i, i32(-2147483648)), vec3<bool>(false, true, true), -194f), vec4<u32>(4294967295u, 40612u, 102150u, 21449u), Struct_2(1i)), Struct_3(vec3<f32>(1000f, -176f, -1221f), 4294967295u, Struct_1(535f, vec2<i32>(i32(-2147483648), i32(-2147483648)), vec3<bool>(false, false, false), 680f), vec4<u32>(29136u, 4294967295u, 8192u, 9267u), Struct_2(1i)), Struct_3(vec3<f32>(1791f, 1018f, 413f), 1835u, Struct_1(1744f, vec2<i32>(-23855i, -10604i), vec3<bool>(true, false, false), -812f), vec4<u32>(1u, 4294967295u, 0u, 0u), Struct_2(i32(-2147483648))), Struct_3(vec3<f32>(-878f, -1038f, 1000f), 66094u, Struct_1(-1000f, vec2<i32>(-1i, 44350i), vec3<bool>(true, true, true), 1087f), vec4<u32>(9280u, 1u, 1u, 0u), Struct_2(1i)), Struct_3(vec3<f32>(1704f, -1578f, 578f), 4294967295u, Struct_1(171f, vec2<i32>(46069i, 42062i), vec3<bool>(true, true, true), 524f), vec4<u32>(4294967295u, 28977u, 4294967295u, 8571u), Struct_2(-63526i)), Struct_3(vec3<f32>(-265f, -1086f, -1020f), 0u, Struct_1(-299f, vec2<i32>(-761i, 8119i), vec3<bool>(false, false, true), 853f), vec4<u32>(65032u, 1u, 40711u, 17435u), Struct_2(-16027i)));

var<private> global2: array<bool, 12> = array<bool, 12>(true, true, false, true, true, true, true, true, false, false, false, true);

var<private> global3: i32;

var<private> global4: f32 = -615f;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: bool) -> Struct_2 {
    global3 = abs(u_input.d);
    return Struct_2(max(_wgslsmith_dot_vec4_i32(select(vec4<i32>(18830i, u_input.d, 13094i, 0i) | vec4<i32>(-1i, u_input.d, -1i, u_input.d), vec4<i32>(-15745i, u_input.d, -2147483647i, -1i), select(vec4<bool>(global2[_wgslsmith_index_u32(u_input.a, 12u)], false, false, true), vec4<bool>(global2[_wgslsmith_index_u32(u_input.b.x, 12u)], global2[_wgslsmith_index_u32(u_input.b.x, 12u)], global2[_wgslsmith_index_u32(1u, 12u)], false), global2[_wgslsmith_index_u32(u_input.a, 12u)])), vec4<i32>(14902i, u_input.d, i32(-1i) * -1i, i32(-1i) * -2147483647i)), ~47682i));
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_2) -> Struct_3 {
    global0 = _wgslsmith_div_u32(1u, u_input.b.x);
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1f)));
    var var_1 = arg_1;
    let var_2 = Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1738f, -225f, 235f)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1939f, 1000f, 2069f))), !vec3<bool>(global2[_wgslsmith_index_u32(u_input.b.x, 12u)], global2[_wgslsmith_index_u32(4294967295u, 12u)], false))))), 0u, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(-737f))))), reverseBits(vec2<i32>(var_1.a, var_1.a) >> (~u_input.b.yz % vec2<u32>(32u))), select(select(!vec3<bool>(true, false, arg_0.x), arg_0.yzw, !arg_0.wzz), select(select(vec3<bool>(true, global2[_wgslsmith_index_u32(0u, 12u)], true), arg_0.ywx, vec3<bool>(arg_0.x, arg_0.x, global2[_wgslsmith_index_u32(u_input.c.x, 12u)])), vec3<bool>(global2[_wgslsmith_index_u32(1u, 12u)], arg_0.x, arg_0.x), true), select(arg_0.yyy, arg_0.xwy, arg_0.yyz)), -167f), countOneBits(u_input.c), arg_1);
    var var_3 = func_2(global2[_wgslsmith_index_u32((firstTrailingBit(u_input.c.x) & 1u) & (~firstLeadingBit(1u) | _wgslsmith_mult_u32(~var_2.b, 6856u)), 12u)]);
    return Struct_3(vec3<f32>(1353f, -357f, var_2.c.a), var_2.b, Struct_1(1000f, -firstTrailingBit(min(var_2.c.b, var_2.c.b)), select(!select(arg_0.xyy, vec3<bool>(false, false, false), vec3<bool>(global2[_wgslsmith_index_u32(var_2.b, 12u)], false, false)), select(!vec3<bool>(arg_0.x, false, false), !arg_0.wxx, any(vec4<bool>(true, global2[_wgslsmith_index_u32(var_2.d.x, 12u)], false, arg_0.x))), any(!vec3<bool>(true, var_2.c.c.x, global2[_wgslsmith_index_u32(4294967295u, 12u)]))), var_2.c.d), ~u_input.c, Struct_2(~(~(-1i))));
}

fn func_1() -> u32 {
    global2 = array<bool, 12>();
    var var_0 = func_3(vec4<bool>(global2[_wgslsmith_index_u32(1416u, 12u)] & global2[_wgslsmith_index_u32(~(~u_input.b.x), 12u)], !(!any(vec2<bool>(false, global2[_wgslsmith_index_u32(u_input.b.x, 12u)]))), true, !any(vec4<bool>(true, global2[_wgslsmith_index_u32(30008u, 12u)], false, global2[_wgslsmith_index_u32(u_input.b.x, 12u)]))), func_2(!(!global2[_wgslsmith_index_u32(u_input.a, 12u)])));
    var var_1 = 1722f;
    let var_2 = func_3(vec4<bool>(var_0.c.c.x, !all(select(var_0.c.c.zz, var_0.c.c.xy, false)), firstTrailingBit(var_0.b) <= countOneBits(44338u), var_0.c.c.x && select(var_0.c.c.x & var_0.c.c.x, !var_0.c.c.x, true)), func_3(!(!select(vec4<bool>(false, false, true, var_0.c.c.x), vec4<bool>(global2[_wgslsmith_index_u32(u_input.c.x, 12u)], false, false, global2[_wgslsmith_index_u32(95977u, 12u)]), vec4<bool>(var_0.c.c.x, false, var_0.c.c.x, false))), Struct_2(1i)).e);
    var var_3 = _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.c.b.x, firstLeadingBit(select(-1i, u_input.d, global2[_wgslsmith_index_u32(77211u, 12u)]))), vec2<i32>(-_wgslsmith_add_i32(var_0.e.a, u_input.d), _wgslsmith_clamp_i32(-17102i, select(var_2.e.a, 0i, false), abs(var_0.c.b.x)))), var_2.c.b.x);
    return 4294967295u;
}

fn func_4(arg_0: vec3<u32>, arg_1: vec3<i32>) -> StorageBuffer {
    let var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-551f, -242f, 1070f)))), ~arg_0.x ^ ~(~u_input.b.x & reverseBits(1u)), Struct_1(-774f, abs(~arg_1.yy ^ arg_1.zz), select(!select(vec3<bool>(global2[_wgslsmith_index_u32(arg_0.x, 12u)], false, global2[_wgslsmith_index_u32(u_input.a, 12u)]), vec3<bool>(false, true, global2[_wgslsmith_index_u32(4294967295u, 12u)]), true), !select(vec3<bool>(global2[_wgslsmith_index_u32(4997u, 12u)], true, global2[_wgslsmith_index_u32(4294967295u, 12u)]), vec3<bool>(false, false, global2[_wgslsmith_index_u32(78747u, 12u)]), global2[_wgslsmith_index_u32(u_input.c.x, 12u)]), select(!vec3<bool>(global2[_wgslsmith_index_u32(1u, 12u)], global2[_wgslsmith_index_u32(u_input.b.x, 12u)], global2[_wgslsmith_index_u32(32388u, 12u)]), !vec3<bool>(global2[_wgslsmith_index_u32(1u, 12u)], false, global2[_wgslsmith_index_u32(arg_0.x, 12u)]), !vec3<bool>(global2[_wgslsmith_index_u32(4294967295u, 12u)], false, false))), _wgslsmith_f_op_f32(round(195f))), vec4<u32>(_wgslsmith_mult_u32(~0u, u_input.b.x), u_input.c.x, select(~1u, arg_0.x, true), 12605u), func_2(true && ((0u ^ u_input.a) <= u_input.a)));
    var var_1 = !(u_input.d == var_0.e.a);
    global1 = array<Struct_3, 24>();
    let var_2 = countOneBits(_wgslsmith_sub_vec4_u32(min(vec4<u32>(~u_input.b.x, firstLeadingBit(var_0.d.x), ~var_0.d.x, _wgslsmith_clamp_u32(var_0.b, 42826u, 4294967295u)), ~(~var_0.d)), max(~(~vec4<u32>(var_0.b, arg_0.x, arg_0.x, arg_0.x)), ~u_input.c)));
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-1374f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -111f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -723f) + -937f))) + 825f), -1000f, var_0.c.a);
    return StorageBuffer(_wgslsmith_mod_u32(_wgslsmith_sub_u32(~56719u, ~u_input.b.x), max(_wgslsmith_clamp_u32(~1u, 4294967295u, var_2.x << (9951u % 32u)), _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(arg_0.xy, vec2<u32>(10137u, u_input.c.x)), vec2<u32>(46380u, u_input.b.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(var_0.a, var_3.zzz, vec3<bool>(var_0.c.c.x, var_0.c.c.x, global2[_wgslsmith_index_u32(var_2.x, 12u)])))))), _wgslsmith_add_vec4_i32(vec4<i32>(~(2147483647i >> (var_0.d.x % 32u)), firstLeadingBit(_wgslsmith_div_i32(arg_1.x, 77i)), -88728i, -7034i), ~vec4<i32>(var_0.e.a, 13613i, u_input.d, -arg_1.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(countOneBits(_wgslsmith_add_vec3_u32(vec3<u32>(func_1(), max(4294967295u, 25793u), u_input.c.x), u_input.c.xzy)), vec3<i32>(2147483647i, i32(-1i) * -13439i, -1i));
}

