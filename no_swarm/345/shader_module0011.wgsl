struct Struct_1 {
    a: bool,
    b: vec2<i32>,
    c: bool,
    d: u32,
    e: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 22>;

var<private> global1: bool = true;

var<private> global2: vec2<f32> = vec2<f32>(-2297f, -159f);

var<private> global3: array<Struct_2, 29> = array<Struct_2, 29>(Struct_2(Struct_1(true, vec2<i32>(-78633i, 1i), true, 30406u, vec3<f32>(326f, -1480f, 598f)), Struct_1(true, vec2<i32>(i32(-2147483648), -19384i), false, 49414u, vec3<f32>(-1350f, 1000f, 439f))), Struct_2(Struct_1(true, vec2<i32>(0i, -1i), false, 21065u, vec3<f32>(-620f, 1984f, -569f)), Struct_1(true, vec2<i32>(-18256i, 21918i), true, 47041u, vec3<f32>(262f, 1084f, 1667f))), Struct_2(Struct_1(false, vec2<i32>(41601i, i32(-2147483648)), true, 9357u, vec3<f32>(1449f, -2381f, 755f)), Struct_1(true, vec2<i32>(-38925i, -29340i), false, 4294967295u, vec3<f32>(-1479f, 1069f, 968f))), Struct_2(Struct_1(true, vec2<i32>(43627i, -45231i), false, 13168u, vec3<f32>(-263f, 1687f, 903f)), Struct_1(false, vec2<i32>(-1i, -1i), true, 4294967295u, vec3<f32>(-873f, 1197f, -405f))), Struct_2(Struct_1(false, vec2<i32>(0i, 51892i), true, 0u, vec3<f32>(355f, 1354f, 571f)), Struct_1(true, vec2<i32>(2147483647i, 1i), false, 4294967295u, vec3<f32>(-231f, 685f, -1379f))), Struct_2(Struct_1(false, vec2<i32>(2147483647i, 2147483647i), true, 1u, vec3<f32>(1000f, -857f, 145f)), Struct_1(true, vec2<i32>(33606i, 19308i), false, 4294967295u, vec3<f32>(-1000f, 379f, -1790f))), Struct_2(Struct_1(false, vec2<i32>(14859i, -1i), true, 1u, vec3<f32>(336f, -342f, -1000f)), Struct_1(false, vec2<i32>(-29015i, 44812i), false, 82615u, vec3<f32>(1313f, 598f, -2504f))), Struct_2(Struct_1(false, vec2<i32>(10058i, i32(-2147483648)), false, 4294967295u, vec3<f32>(1384f, 250f, -291f)), Struct_1(true, vec2<i32>(77878i, 1i), false, 67821u, vec3<f32>(191f, -129f, 347f))), Struct_2(Struct_1(true, vec2<i32>(-30692i, 2147483647i), true, 8776u, vec3<f32>(1328f, -108f, -535f)), Struct_1(true, vec2<i32>(-1i, -18021i), true, 0u, vec3<f32>(288f, -1000f, -1402f))), Struct_2(Struct_1(true, vec2<i32>(1i, 15038i), true, 27262u, vec3<f32>(1407f, -2316f, -1068f)), Struct_1(true, vec2<i32>(-1i, 11443i), false, 4294967295u, vec3<f32>(1293f, 113f, 1000f))), Struct_2(Struct_1(true, vec2<i32>(-3222i, 1i), true, 4294967295u, vec3<f32>(-315f, 413f, -1258f)), Struct_1(false, vec2<i32>(i32(-2147483648), 2147483647i), false, 4294967295u, vec3<f32>(-3663f, -1413f, 2158f))), Struct_2(Struct_1(true, vec2<i32>(0i, -21177i), true, 4294967295u, vec3<f32>(-1667f, -660f, -1339f)), Struct_1(false, vec2<i32>(-1i, -10889i), false, 52894u, vec3<f32>(1000f, 1353f, 694f))), Struct_2(Struct_1(false, vec2<i32>(-18156i, 19410i), false, 0u, vec3<f32>(112f, 1000f, -656f)), Struct_1(true, vec2<i32>(-1i, -24425i), false, 1u, vec3<f32>(-1000f, 637f, -1275f))), Struct_2(Struct_1(false, vec2<i32>(1i, 1i), false, 4294967295u, vec3<f32>(368f, 1125f, -591f)), Struct_1(false, vec2<i32>(-15469i, -50041i), true, 4294967295u, vec3<f32>(1211f, 993f, 1117f))), Struct_2(Struct_1(true, vec2<i32>(1i, 41694i), true, 1u, vec3<f32>(-473f, -2340f, 1532f)), Struct_1(true, vec2<i32>(2147483647i, i32(-2147483648)), false, 4294967295u, vec3<f32>(-627f, 520f, -725f))), Struct_2(Struct_1(false, vec2<i32>(-5091i, 0i), true, 0u, vec3<f32>(-312f, 1401f, -807f)), Struct_1(false, vec2<i32>(14031i, 2147483647i), true, 1u, vec3<f32>(242f, 1000f, -252f))), Struct_2(Struct_1(true, vec2<i32>(-58051i, 23432i), false, 67063u, vec3<f32>(1000f, 467f, 324f)), Struct_1(false, vec2<i32>(2147483647i, -10698i), true, 117691u, vec3<f32>(984f, 2011f, 389f))), Struct_2(Struct_1(false, vec2<i32>(-3580i, 26416i), true, 89889u, vec3<f32>(985f, 1354f, -639f)), Struct_1(true, vec2<i32>(-1i, 21192i), true, 41759u, vec3<f32>(-430f, -204f, 1454f))), Struct_2(Struct_1(false, vec2<i32>(1i, 0i), true, 0u, vec3<f32>(512f, 294f, -1640f)), Struct_1(true, vec2<i32>(1i, 23697i), true, 59713u, vec3<f32>(-186f, 420f, 384f))), Struct_2(Struct_1(false, vec2<i32>(-41444i, 1i), false, 1u, vec3<f32>(-300f, -1000f, 115f)), Struct_1(true, vec2<i32>(1i, 43161i), true, 42976u, vec3<f32>(669f, -380f, -1404f))), Struct_2(Struct_1(false, vec2<i32>(i32(-2147483648), 2147483647i), false, 2590u, vec3<f32>(1701f, 231f, -164f)), Struct_1(true, vec2<i32>(43637i, 1i), false, 9504u, vec3<f32>(406f, -1401f, 1745f))), Struct_2(Struct_1(true, vec2<i32>(41207i, 1i), false, 62578u, vec3<f32>(-266f, -387f, 164f)), Struct_1(true, vec2<i32>(1i, 2147483647i), true, 0u, vec3<f32>(546f, -582f, 430f))), Struct_2(Struct_1(true, vec2<i32>(20605i, 2147483647i), false, 0u, vec3<f32>(983f, -131f, 1000f)), Struct_1(true, vec2<i32>(24504i, 12052i), true, 19400u, vec3<f32>(-1677f, 1310f, -1001f))), Struct_2(Struct_1(false, vec2<i32>(-7377i, i32(-2147483648)), true, 35139u, vec3<f32>(-1622f, 1111f, -1691f)), Struct_1(true, vec2<i32>(3683i, 0i), false, 7338u, vec3<f32>(368f, 1716f, 1276f))), Struct_2(Struct_1(false, vec2<i32>(1i, 780i), false, 4294967295u, vec3<f32>(-1206f, -773f, 450f)), Struct_1(true, vec2<i32>(-22773i, i32(-2147483648)), false, 0u, vec3<f32>(1624f, -473f, 327f))), Struct_2(Struct_1(false, vec2<i32>(2147483647i, -1733i), true, 10246u, vec3<f32>(-618f, -295f, 920f)), Struct_1(true, vec2<i32>(5668i, i32(-2147483648)), false, 0u, vec3<f32>(-731f, -355f, -1005f))), Struct_2(Struct_1(true, vec2<i32>(-17733i, -1i), false, 2476u, vec3<f32>(456f, 331f, 1167f)), Struct_1(false, vec2<i32>(0i, 2147483647i), false, 13115u, vec3<f32>(-670f, 1000f, -643f))), Struct_2(Struct_1(false, vec2<i32>(-28849i, 1i), false, 56163u, vec3<f32>(-357f, 1639f, 244f)), Struct_1(false, vec2<i32>(4715i, -1i), false, 14592u, vec3<f32>(-542f, 129f, 258f))), Struct_2(Struct_1(false, vec2<i32>(-18449i, i32(-2147483648)), false, 1u, vec3<f32>(-378f, -297f, 2087f)), Struct_1(true, vec2<i32>(-1i, -1i), true, 0u, vec3<f32>(-291f, 1445f, -719f))));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_1) -> f32 {
    var var_0 = ~vec2<u32>(4294967295u, _wgslsmith_add_u32(select(0u, countOneBits(4294967295u), arg_0.a), 88381u));
    let var_1 = -_wgslsmith_dot_vec2_i32(vec2<i32>(abs(-1i & arg_0.b.x), 0i), vec2<i32>(-2977i, -(~64326i)));
    var_0 = ~vec2<u32>(countOneBits(~(~arg_0.d)), _wgslsmith_clamp_u32(~1u | abs(u_input.a), _wgslsmith_sub_u32(0u | arg_0.d, _wgslsmith_div_u32(arg_0.d, var_0.x)), arg_0.d));
    let var_2 = Struct_1(false, abs(_wgslsmith_sub_vec2_i32(_wgslsmith_mult_vec2_i32(arg_0.b, abs(vec2<i32>(var_1, -28255i))), max(_wgslsmith_sub_vec2_i32(vec2<i32>(var_1, var_1), vec2<i32>(1i, 20356i)), arg_0.b))), any(!select(!vec3<bool>(arg_0.c, false, false), select(vec3<bool>(false, arg_0.a, false), vec3<bool>(arg_0.a, arg_0.a, arg_0.a), vec3<bool>(false, arg_0.c, arg_0.a)), arg_0.b.x <= 0i)), arg_0.d, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(arg_0.e, vec3<f32>(286f, 1306f, global0[_wgslsmith_index_u32(53760u, 22u)])), vec3<f32>(global2.x, arg_0.e.x, -104f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(822f, -153f, -1000f), vec3<f32>(-126f, global0[_wgslsmith_index_u32(u_input.a, 22u)], 1354f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-234f, 1767f, arg_0.e.x)))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-468f, _wgslsmith_f_op_f32(-465f - 2053f), global2.x))), any(select(vec4<bool>(false, true, arg_0.a, arg_0.c), select(vec4<bool>(arg_0.c, true, true, true), vec4<bool>(arg_0.a, arg_0.c, arg_0.a, arg_0.c), true), vec4<bool>(false, arg_0.a, arg_0.a, arg_0.c))))));
    var var_3 = global3[_wgslsmith_index_u32(~_wgslsmith_mult_u32(~var_2.d, var_0.x), 29u)];
    return _wgslsmith_f_op_f32(-arg_0.e.x);
}

fn func_2(arg_0: vec2<i32>) -> f32 {
    var var_0 = -1000f;
    global3 = array<Struct_2, 29>();
    var var_1 = ~u_input.a;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1191f, global0[_wgslsmith_index_u32(4294967295u, 22u)]) * global0[_wgslsmith_index_u32(~(~u_input.a), 22u)])));
    global0 = array<f32, 22>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(413f, _wgslsmith_f_op_f32(func_3(Struct_1(true, vec2<i32>(0i, 2147483647i) >> (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u)), true, u_input.a ^ u_input.a, _wgslsmith_f_op_vec3_f32(vec3<f32>(global2.x, global0[_wgslsmith_index_u32(u_input.a, 22u)], global2.x) - vec3<f32>(global2.x, global2.x, -500f))))))));
}

fn func_1(arg_0: u32) -> i32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(-1872f, _wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(1u, 22u)], -1770f)))))), _wgslsmith_f_op_f32(func_2(vec2<i32>(-2147483647i >> (arg_0 % 32u), _wgslsmith_dot_vec3_i32(vec3<i32>(-28131i, -20072i, 8759i), vec3<i32>(5291i, -30740i, 2147483647i))))), _wgslsmith_f_op_f32(1728f + 577f)) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global2.x, _wgslsmith_div_f32(_wgslsmith_div_f32(-1628f, global0[_wgslsmith_index_u32(63984u, 22u)]), global2.x), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(arg_0, 22u)]))))), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global2.x, 591f, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(72109u, 22u)])))), vec3<bool>(true, true, true))));
    let var_1 = vec4<bool>(all(vec3<bool>(true, true, true)), true, any(vec3<bool>(false, !all(vec4<bool>(false, true, false, true)), true)), true);
    var_0 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(659f, 671f, -1511f) - vec3<f32>(-1579f, global0[_wgslsmith_index_u32(38554u, 22u)], global2.x))))));
    var var_2 = max(84070u, _wgslsmith_add_u32(min(_wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(arg_0, 1u)), min(vec2<u32>(14207u, arg_0), vec2<u32>(0u, 4294967295u))), _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0, arg_0), vec2<u32>(arg_0, arg_0)), u_input.a)), arg_0));
    global3 = array<Struct_2, 29>();
    return ~(0i | (i32(-1i) * -_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 3775i), vec2<i32>(25492i, -1i))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = false;
    let var_1 = vec3<i32>(~_wgslsmith_add_i32(~0i, 65525i), _wgslsmith_add_i32(_wgslsmith_mult_i32(~(~(-21696i)), 1i), func_1(u_input.a)), min(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -49093i, -64976i, 1i), vec4<i32>(-5458i, -16950i, 1i, 2147483647i)) ^ -78289i, ~2147483647i) ^ max(min(func_1(14015u), 0i), 0i));
    global1 = var_0;
    global3 = array<Struct_2, 29>();
    global3 = array<Struct_2, 29>();
    let x = u_input.a;
    s_output = StorageBuffer(1538u, 38798i, _wgslsmith_div_vec2_u32((~vec2<u32>(u_input.a, 4294967295u) & (vec2<u32>(u_input.a, u_input.a) << (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u)))) >> (select(~vec2<u32>(81752u, 1u), firstTrailingBit(vec2<u32>(1u, 4294967295u)), select(vec2<bool>(true, false), vec2<bool>(var_0, var_0), vec2<bool>(true, false))) % vec2<u32>(32u)), abs(min(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, 11348u), vec2<u32>(u_input.a, 11814u)), ~vec2<u32>(2973u, u_input.a)))));
}

