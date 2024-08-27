struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: i32,
    b: f32,
    c: bool,
    d: vec4<f32>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_1,
    c: Struct_2,
    d: u32,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<Struct_2, 32> = array<Struct_2, 32>(Struct_2(76543i, 1480f, true, vec4<f32>(-2157f, 1424f, -482f, 190f)), Struct_2(-1i, -1112f, false, vec4<f32>(-271f, -746f, 1250f, 229f)), Struct_2(35037i, -116f, false, vec4<f32>(-624f, -879f, 1228f, -2019f)), Struct_2(2147483647i, -737f, false, vec4<f32>(343f, -417f, 182f, -129f)), Struct_2(-21587i, 1589f, true, vec4<f32>(-2372f, -718f, 235f, 1525f)), Struct_2(2147483647i, 1682f, false, vec4<f32>(2623f, 735f, 1653f, -345f)), Struct_2(32386i, -174f, false, vec4<f32>(-211f, 692f, 1967f, 1319f)), Struct_2(-1i, 383f, false, vec4<f32>(-705f, -542f, 1000f, -563f)), Struct_2(2147483647i, -769f, true, vec4<f32>(2848f, -421f, 323f, -2399f)), Struct_2(i32(-2147483648), -1670f, false, vec4<f32>(-1349f, 549f, -336f, -610f)), Struct_2(-43505i, 627f, false, vec4<f32>(347f, -1442f, -150f, -101f)), Struct_2(0i, 633f, true, vec4<f32>(-259f, 219f, -987f, -159f)), Struct_2(2147483647i, -733f, false, vec4<f32>(426f, 812f, 660f, 1606f)), Struct_2(i32(-2147483648), -165f, false, vec4<f32>(130f, -1071f, 1000f, -609f)), Struct_2(-1i, 1919f, true, vec4<f32>(652f, -470f, -402f, -100f)), Struct_2(-13129i, -1481f, false, vec4<f32>(-936f, 1063f, -181f, -970f)), Struct_2(-1i, 1000f, true, vec4<f32>(507f, -330f, -217f, 302f)), Struct_2(1i, 1455f, false, vec4<f32>(1480f, -545f, 462f, -394f)), Struct_2(-1i, -439f, false, vec4<f32>(1459f, 229f, 1728f, 812f)), Struct_2(6285i, -2088f, false, vec4<f32>(1000f, 801f, 1999f, -771f)), Struct_2(86475i, 963f, true, vec4<f32>(505f, -1271f, -1581f, -411f)), Struct_2(-21281i, 185f, true, vec4<f32>(677f, -1207f, -1000f, 1313f)), Struct_2(-1i, -152f, true, vec4<f32>(802f, -495f, -626f, 1191f)), Struct_2(i32(-2147483648), 1854f, true, vec4<f32>(-352f, -1898f, -385f, -1034f)), Struct_2(20728i, -562f, true, vec4<f32>(2264f, 946f, -595f, 2065f)), Struct_2(-15693i, -1598f, false, vec4<f32>(134f, -331f, 750f, -366f)), Struct_2(0i, 1014f, false, vec4<f32>(-689f, 844f, 828f, 1333f)), Struct_2(-10093i, -1731f, false, vec4<f32>(-179f, 1972f, 931f, 2005f)), Struct_2(1i, -601f, true, vec4<f32>(-2270f, -218f, 1629f, -140f)), Struct_2(8899i, -219f, true, vec4<f32>(286f, -1000f, 1000f, 481f)), Struct_2(-1i, 422f, true, vec4<f32>(493f, -432f, 776f, 2001f)), Struct_2(1i, 618f, true, vec4<f32>(-1000f, 904f, -211f, 968f)));

var<private> global2: array<Struct_1, 31>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_2(arg_0: Struct_2, arg_1: i32) -> vec2<bool> {
    let var_0 = !all(select(!(!vec4<bool>(true, global0.c.c, arg_0.c, false)), !vec4<bool>(true, true, false, global0.c.c), (1u <= u_input.a.x) && all(vec4<bool>(false, arg_0.c, false, global0.c.c))));
    let var_1 = global0.e;
    var var_2 = vec2<u32>(countOneBits(u_input.a.x) | countOneBits(~_wgslsmith_sub_u32(u_input.a.x, 1u)), _wgslsmith_sub_u32(~max(global0.d, _wgslsmith_mod_u32(28706u, global0.d)), global0.a.x));
    global1 = array<Struct_2, 32>();
    var var_3 = false;
    return vec2<bool>(global0.c.c, false);
}

fn func_3(arg_0: Struct_2, arg_1: u32, arg_2: vec4<i32>) -> u32 {
    var var_0 = arg_0.c;
    var var_1 = Struct_3(u_input.a.xyy, global2[_wgslsmith_index_u32(12021u, 31u)], Struct_2(~_wgslsmith_div_i32(_wgslsmith_div_i32(global0.e.x, arg_0.a), _wgslsmith_dot_vec4_i32(arg_2, vec4<i32>(arg_2.x, 9300i, -1i, arg_2.x))), 1115f, firstTrailingBit(0u) == ~_wgslsmith_div_u32(u_input.a.x, 60079u), vec4<f32>(_wgslsmith_div_f32(123f, _wgslsmith_f_op_f32(floor(global0.b.a.x))), _wgslsmith_f_op_f32(f32(-1f) * -163f), _wgslsmith_f_op_f32(round(-661f)), -355f)), _wgslsmith_sub_u32(_wgslsmith_mod_u32(select(arg_1, abs(u_input.a.x), arg_0.c), 1u), u_input.a.x), global0.e);
    let var_2 = vec4<u32>(reverseBits(_wgslsmith_mod_u32(0u, ~1u)), reverseBits(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(~u_input.a, abs(vec4<u32>(var_1.a.x, 0u, 9005u, u_input.a.x))), firstLeadingBit(global0.d) & (arg_1 & 27626u))), ~select(~u_input.a.x, global0.a.x, func_2(global1[_wgslsmith_index_u32(1u, 32u)], var_1.e.x).x), var_1.d);
    global2 = array<Struct_1, 31>();
    return global0.d;
}

fn func_4(arg_0: u32, arg_1: vec3<u32>, arg_2: vec4<bool>, arg_3: vec2<f32>) -> vec2<bool> {
    global0 = Struct_3(~(~(min(vec3<u32>(57322u, u_input.a.x, 0u), u_input.a.yzz) | (u_input.a.zyy << (global0.a % vec3<u32>(32u))))), global0.b, global0.c, ~_wgslsmith_div_u32(arg_1.x, _wgslsmith_div_u32(19668u, u_input.a.x)) << (67299u % 32u), ~firstLeadingBit(-global0.e));
    global0 = Struct_3(countOneBits(~(~max(vec3<u32>(arg_0, global0.a.x, 7781u), arg_1))), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(select(u_input.a ^ u_input.a, _wgslsmith_mult_vec4_u32(u_input.a, u_input.a), true), reverseBits(vec4<u32>(arg_1.x, global0.a.x, arg_1.x, global0.a.x) | u_input.a)), 31u)], Struct_2(~global0.c.a, _wgslsmith_f_op_f32(global0.b.a.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.c.d.x) - 593f)), false, global0.c.d), 79909u, global0.e);
    var var_0 = Struct_2(1i, 945f, !arg_2.x, _wgslsmith_f_op_vec4_f32(sign(global0.c.d)));
    let var_1 = Struct_2(reverseBits(_wgslsmith_mod_i32(var_0.a, 2147483647i)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_3.x))))), 907f)), arg_2.x, global0.c.d);
    var var_2 = Struct_3(vec3<u32>(~_wgslsmith_sub_u32(~1u, arg_1.x & u_input.a.x), _wgslsmith_clamp_u32(~22249u >> (~global0.a.x % 32u), ~1u, 1u), _wgslsmith_mult_u32(func_3(Struct_2(-87532i, arg_3.x, var_1.c, var_0.d), _wgslsmith_div_u32(arg_0, 1u), vec4<i32>(var_1.a, 1i, 40843i, var_1.a) >> (u_input.a % vec4<u32>(32u))), 1u)), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(615f)) - _wgslsmith_f_op_f32(-1249f * arg_3.x)), global0.b.a.x, _wgslsmith_f_op_f32(arg_3.x - global0.b.a.x))), Struct_2(abs(var_0.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1809f)), !(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, var_0.a, global0.c.a, -1i), vec4<i32>(var_1.a, 12021i, -12796i, 9959i)) == global0.c.a), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(912f * 1471f)), var_1.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(527f - 706f)), 1142f)), ~global0.d, global0.e);
    return vec2<bool>(var_1.c, select(any(select(select(vec3<bool>(true, var_0.c, false), arg_2.wzz, true), !vec3<bool>(var_2.c.c, true, false), select(arg_2.yxz, vec3<bool>(true, false, true), global0.c.c))), false, false));
}

fn func_1(arg_0: vec3<i32>) -> Struct_3 {
    var var_0 = u_input.a.x;
    var var_1 = arg_0.x;
    var var_2 = _wgslsmith_sub_vec3_u32(~min(vec3<u32>(u_input.a.x, u_input.a.x, 1u) >> (vec3<u32>(1u, global0.a.x, global0.d) % vec3<u32>(32u)), vec3<u32>(firstTrailingBit(global0.a.x), u_input.a.x, global0.a.x)), select(~(~firstLeadingBit(vec3<u32>(u_input.a.x, u_input.a.x, 9343u))), ~_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a.x, 11482u, u_input.a.x), abs(u_input.a.zyx)), vec3<bool>(false, all(!vec3<bool>(global0.c.c, true, global0.c.c)), true)));
    var var_3 = any(select(func_2(Struct_2(-arg_0.x, -812f, !global0.c.c, _wgslsmith_f_op_vec4_f32(abs(global0.c.d))), ~arg_0.x), func_4(func_3(global0.c, reverseBits(41958u), -vec4<i32>(27522i, global0.e.x, global0.e.x, global0.c.a)), vec3<u32>(global0.d, 1u, 1u), vec4<bool>(global0.c.c || global0.c.c, any(vec4<bool>(true, global0.c.c, global0.c.c, global0.c.c)), any(vec2<bool>(true, global0.c.c)), global0.c.c), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(global0.c.d.yw, global0.c.d.wx)) + vec2<f32>(global0.c.d.x, -1343f))), global0.c.c));
    var var_4 = ~global0.a.x | 505u;
    return Struct_3(_wgslsmith_add_vec3_u32(vec3<u32>(~51080u, global0.a.x, u_input.a.x), ~(_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, 6192u, var_2.x), vec3<u32>(var_2.x, var_2.x, var_2.x), vec3<u32>(var_2.x, u_input.a.x, 0u)) & _wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 1u, var_2.x), vec3<u32>(79995u, u_input.a.x, 37154u)))), global2[_wgslsmith_index_u32(firstTrailingBit(u_input.a.x) << (~_wgslsmith_mod_u32(~1u, 1u) % 32u), 31u)], Struct_2(arg_0.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1013f)), -1000f)), true, global0.c.d), _wgslsmith_add_u32(~var_2.x, global0.a.x >> (~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.a.x, 4294967295u, 4294967295u), u_input.a) % 32u)), vec2<i32>(~_wgslsmith_clamp_i32(~global0.c.a, global0.c.a, _wgslsmith_mult_i32(-1i, -1532i)), global0.c.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a;
    global1 = array<Struct_2, 32>();
    let var_1 = global2[_wgslsmith_index_u32(1536u, 31u)];
    global1 = array<Struct_2, 32>();
    global0 = func_1(max(abs(~vec3<i32>(2147483647i, -2147483647i, global0.c.a)), _wgslsmith_mult_vec3_i32(vec3<i32>(1i, global0.e.x, global0.c.a), countOneBits(vec3<i32>(global0.c.a, 8697i, global0.c.a)))));
    var var_2 = Struct_3(_wgslsmith_add_vec3_u32(global0.a, var_0.xxy), global0.b, Struct_2(select(_wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(global0.e, global0.e), reverseBits(1i), firstLeadingBit(2147483647i)), _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(global0.e.x, global0.c.a, -44397i), vec3<i32>(global0.e.x, 2147483647i, -5058i)), func_1(vec3<i32>(0i, -9779i, global0.e.x)).e.x), all(vec2<bool>(global0.c.c, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.x))), global0.c.c, global0.c.d), global0.d, global0.e & abs(-vec2<i32>(global0.e.x, global0.e.x)));
    let var_3 = !vec4<bool>(var_2.c.c, false, func_4(var_0.x, vec3<u32>(func_3(global1[_wgslsmith_index_u32(4294967295u, 32u)], 4294967295u, vec4<i32>(-1i, 1i, 51225i, var_2.c.a)), 1u, var_2.a.x), vec4<bool>(var_2.c.c, true, any(vec4<bool>(var_2.c.c, false, true, var_2.c.c)), all(vec4<bool>(global0.c.c, true, global0.c.c, true))), vec2<f32>(_wgslsmith_f_op_f32(471f * 654f), _wgslsmith_f_op_f32(trunc(227f)))).x, !all(select(vec2<bool>(var_2.c.c, global0.c.c), vec2<bool>(global0.c.c, var_2.c.c), vec2<bool>(global0.c.c, false))));
    let var_4 = global0.a.x;
    var_0 = ~(select(~vec4<u32>(4294967295u, u_input.a.x, 0u, var_0.x), countOneBits(abs(vec4<u32>(42844u, var_0.x, 0u, 32312u))), !(var_2.c.b == -737f)) | ~_wgslsmith_mult_vec4_u32(vec4<u32>(global0.a.x, u_input.a.x, 44532u, u_input.a.x), vec4<u32>(var_2.d, global0.d, 11816u, u_input.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.b.a.zy);
}

