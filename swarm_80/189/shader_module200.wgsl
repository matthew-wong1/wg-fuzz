struct Struct_1 {
    a: f32,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec2<u32>,
    c: Struct_2,
    d: Struct_1,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: i32,
}

struct Struct_5 {
    a: Struct_4,
    b: vec4<u32>,
    c: i32,
    d: Struct_4,
    e: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 1> = array<Struct_2, 1>(Struct_2(Struct_1(517f, -2142f), vec4<u32>(4294967295u, 1u, 1u, 42723u), Struct_1(1236f, 691f)));

var<private> global1: array<Struct_5, 15> = array<Struct_5, 15>(Struct_5(Struct_4(Struct_2(Struct_1(182f, 471f), vec4<u32>(81667u, 4294967295u, 57611u, 58789u), Struct_1(-368f, -1786f)), 0i), vec4<u32>(1u, 3859u, 7662u, 13940u), i32(-2147483648), Struct_4(Struct_2(Struct_1(-160f, 197f), vec4<u32>(0u, 0u, 1430u, 12697u), Struct_1(-150f, 607f)), -26903i), false), Struct_5(Struct_4(Struct_2(Struct_1(1791f, 1268f), vec4<u32>(83209u, 1u, 4294967295u, 0u), Struct_1(-136f, -618f)), 0i), vec4<u32>(4294967295u, 13404u, 1177u, 21850u), 21643i, Struct_4(Struct_2(Struct_1(479f, 293f), vec4<u32>(15425u, 0u, 20050u, 27944u), Struct_1(1000f, 1062f)), -20980i), true), Struct_5(Struct_4(Struct_2(Struct_1(1000f, 931f), vec4<u32>(0u, 34612u, 27333u, 4294967295u), Struct_1(585f, 165f)), 20641i), vec4<u32>(4079u, 1u, 0u, 0u), -1i, Struct_4(Struct_2(Struct_1(1195f, 1000f), vec4<u32>(0u, 1u, 4294967295u, 0u), Struct_1(1322f, -140f)), -1i), false), Struct_5(Struct_4(Struct_2(Struct_1(-975f, -1198f), vec4<u32>(1u, 0u, 79839u, 1u), Struct_1(551f, -268f)), -19402i), vec4<u32>(0u, 4294967295u, 24600u, 0u), 0i, Struct_4(Struct_2(Struct_1(-2346f, -298f), vec4<u32>(4294967295u, 0u, 4294967295u, 91375u), Struct_1(114f, -1291f)), -1i), false), Struct_5(Struct_4(Struct_2(Struct_1(-172f, -178f), vec4<u32>(1u, 58354u, 0u, 83u), Struct_1(-3149f, 924f)), -9443i), vec4<u32>(42933u, 3771u, 4294967295u, 18809u), 0i, Struct_4(Struct_2(Struct_1(-594f, 368f), vec4<u32>(101341u, 87882u, 4294967295u, 43007u), Struct_1(649f, 1020f)), i32(-2147483648)), true), Struct_5(Struct_4(Struct_2(Struct_1(-675f, -180f), vec4<u32>(62076u, 0u, 55180u, 4294967295u), Struct_1(783f, 1383f)), 23169i), vec4<u32>(38598u, 1u, 111911u, 1u), 0i, Struct_4(Struct_2(Struct_1(676f, -1210f), vec4<u32>(1u, 0u, 0u, 0u), Struct_1(-918f, -1085f)), 0i), false), Struct_5(Struct_4(Struct_2(Struct_1(-453f, 662f), vec4<u32>(4294967295u, 1u, 4294967295u, 10749u), Struct_1(-820f, -1000f)), -46445i), vec4<u32>(119267u, 1578u, 4294967295u, 9629u), 51348i, Struct_4(Struct_2(Struct_1(2201f, -1273f), vec4<u32>(0u, 65181u, 4294967295u, 1u), Struct_1(1000f, -1095f)), -1i), true), Struct_5(Struct_4(Struct_2(Struct_1(814f, 1274f), vec4<u32>(1u, 1u, 1u, 15567u), Struct_1(-1324f, -1116f)), 0i), vec4<u32>(14670u, 50641u, 50609u, 1u), -59184i, Struct_4(Struct_2(Struct_1(1000f, -1000f), vec4<u32>(1u, 4294967295u, 1u, 5855u), Struct_1(-1158f, -205f)), i32(-2147483648)), false), Struct_5(Struct_4(Struct_2(Struct_1(-1544f, 197f), vec4<u32>(0u, 36946u, 1u, 4294967295u), Struct_1(1245f, -2157f)), -29744i), vec4<u32>(67061u, 4294967295u, 4294967295u, 26707u), -41404i, Struct_4(Struct_2(Struct_1(819f, 246f), vec4<u32>(0u, 0u, 47630u, 0u), Struct_1(611f, 230f)), -4731i), false), Struct_5(Struct_4(Struct_2(Struct_1(617f, -944f), vec4<u32>(1u, 1u, 40135u, 91825u), Struct_1(267f, -498f)), -44258i), vec4<u32>(0u, 86765u, 9007u, 19492u), -17510i, Struct_4(Struct_2(Struct_1(318f, 1000f), vec4<u32>(3644u, 4787u, 4294967295u, 0u), Struct_1(-753f, -1000f)), -16566i), true), Struct_5(Struct_4(Struct_2(Struct_1(-1089f, -551f), vec4<u32>(20098u, 4294967295u, 4294967295u, 21932u), Struct_1(1376f, 984f)), 1i), vec4<u32>(4294967295u, 58608u, 21590u, 0u), 2147483647i, Struct_4(Struct_2(Struct_1(-963f, 267f), vec4<u32>(14088u, 1927u, 4294967295u, 1410u), Struct_1(-179f, 2102f)), 2147483647i), true), Struct_5(Struct_4(Struct_2(Struct_1(-574f, 389f), vec4<u32>(22281u, 0u, 0u, 4294967295u), Struct_1(1000f, 725f)), 1i), vec4<u32>(4294967295u, 0u, 44570u, 20837u), 68726i, Struct_4(Struct_2(Struct_1(-280f, -1421f), vec4<u32>(4294967295u, 1u, 4294967295u, 0u), Struct_1(-1202f, -1000f)), -1i), true), Struct_5(Struct_4(Struct_2(Struct_1(-544f, -1000f), vec4<u32>(42623u, 4294967295u, 4254u, 33894u), Struct_1(1152f, 1257f)), -5381i), vec4<u32>(4294967295u, 4294967295u, 96943u, 4294967295u), 2147483647i, Struct_4(Struct_2(Struct_1(-1000f, 261f), vec4<u32>(4294967295u, 21048u, 24299u, 1u), Struct_1(1000f, -237f)), -5401i), false), Struct_5(Struct_4(Struct_2(Struct_1(-378f, -158f), vec4<u32>(52128u, 14886u, 27976u, 1u), Struct_1(538f, 1000f)), i32(-2147483648)), vec4<u32>(1u, 7601u, 4294967295u, 37253u), -1i, Struct_4(Struct_2(Struct_1(-758f, -571f), vec4<u32>(1u, 1u, 0u, 4294967295u), Struct_1(1320f, 703f)), i32(-2147483648)), true), Struct_5(Struct_4(Struct_2(Struct_1(-309f, 1200f), vec4<u32>(10878u, 0u, 27304u, 43331u), Struct_1(-2003f, -1007f)), -5409i), vec4<u32>(0u, 18234u, 71792u, 0u), -1400i, Struct_4(Struct_2(Struct_1(-142f, -275f), vec4<u32>(0u, 33795u, 95731u, 38400u), Struct_1(222f, -685f)), -10027i), true));

var<private> global2: u32;

var<private> global3: array<Struct_1, 27>;

var<private> global4: array<u32, 7> = array<u32, 7>(75995u, 5367u, 25081u, 4294967295u, 59583u, 1u, 0u);

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: f32, arg_1: vec3<i32>) -> i32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(107f)), -1669f, _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(min(-577f, 291f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, arg_0, -1302f, arg_0) * vec4<f32>(-634f, -125f, arg_0, arg_0)), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, -2095f, -277f, 1438f) + vec4<f32>(arg_0, 777f, arg_0, arg_0)), vec4<bool>(false, false, true, false))))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) * arg_0), _wgslsmith_f_op_f32(arg_0 * arg_0), _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0, -647f) - _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0, arg_0))))), select(vec4<bool>(false, (0i < u_input.a) | true, any(vec3<bool>(true, true, true)), any(vec4<bool>(false, true, true, true)) || true), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, false), false)), !select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, true)), vec4<bool>(525f >= arg_0, any(vec2<bool>(false, false)), false, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, any(vec3<bool>(false, false, true)))))));
    global0 = array<Struct_2, 1>();
    var var_1 = vec4<f32>(1078f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.x)))), 576f, _wgslsmith_f_op_f32(-arg_0));
    var var_2 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-246f, 277f, arg_0, _wgslsmith_f_op_f32(arg_0 * arg_0))), vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1030f))))), var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(451f - _wgslsmith_f_op_f32(round(-3004f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x - -1274f))), var_0.x)));
    let var_3 = select(vec3<u32>(~1u, 4294967295u, _wgslsmith_clamp_u32(global4[_wgslsmith_index_u32(~0u, 7u)], 16413u, abs(4294967295u))) & ~vec3<u32>(global4[_wgslsmith_index_u32(~1u, 7u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 7u)], 7u)], 7u)], 7u)] & global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(28910u, 7u)], 7u)], 7u)], _wgslsmith_dot_vec3_u32(vec3<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(23537u, 7u)], 7u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(29523u, 7u)], 7u)], 31620u), vec3<u32>(4294967295u, global4[_wgslsmith_index_u32(59533u, 7u)], global4[_wgslsmith_index_u32(62592u, 7u)]))), reverseBits(_wgslsmith_clamp_vec3_u32(vec3<u32>(~global4[_wgslsmith_index_u32(4294967295u, 7u)], global4[_wgslsmith_index_u32(~1u, 7u)], 14523u), reverseBits(firstLeadingBit(vec3<u32>(0u, 102123u, global4[_wgslsmith_index_u32(15931u, 7u)]))), ~vec3<u32>(0u, global4[_wgslsmith_index_u32(4294967295u, 7u)], 60065u))), !(!any(vec2<bool>(false, false)) & !all(vec3<bool>(true, false, true))));
    return max(-arg_1.x, 49801i) & _wgslsmith_dot_vec4_i32(~select(vec4<i32>(2147483647i, -7676i, 2147483647i, arg_1.x), vec4<i32>(-1i, u_input.a, 0i, arg_1.x), vec4<bool>(true, true, true, false)) << (~reverseBits(vec4<u32>(1u, global4[_wgslsmith_index_u32(4294967295u, 7u)], var_3.x, var_3.x)) % vec4<u32>(32u)), vec4<i32>(u_input.a, _wgslsmith_dot_vec3_i32(-arg_1, ~vec3<i32>(u_input.a, 2147483647i, arg_1.x)), -u_input.a | (-2147483647i | u_input.a), 1i >> ((39521u << (var_3.x % 32u)) % 32u)));
}

fn func_2(arg_0: Struct_1) -> bool {
    var var_0 = Struct_5(Struct_4(global0[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, ~_wgslsmith_mod_u32(global4[_wgslsmith_index_u32(0u, 7u)], 81321u)), 7u)], 1u)], _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(-12914i, u_input.a)), ~(-41188i), ~u_input.a), vec3<i32>(u_input.a, func_3(2413f, vec3<i32>(4776i, 17934i, -5794i)), _wgslsmith_div_i32(u_input.a, -2147483647i)))), firstTrailingBit(abs(_wgslsmith_mod_vec4_u32(vec4<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(24549u, 7u)], 7u)], 7u)], 21967u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 7u)], 7u)], 0u), vec4<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(53773u, 7u)], 7u)], 7u)], global4[_wgslsmith_index_u32(20712u, 7u)], 1u, global4[_wgslsmith_index_u32(0u, 7u)]))) >> (_wgslsmith_sub_vec4_u32(max(vec4<u32>(global4[_wgslsmith_index_u32(20270u, 7u)], 1u, 4294967295u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 7u)], 7u)]), vec4<u32>(global4[_wgslsmith_index_u32(10937u, 7u)], 1u, global4[_wgslsmith_index_u32(1u, 7u)], 74392u)), vec4<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(62035u, 7u)], 7u)], 0u, 0u, 0u) >> (vec4<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(30114u, 7u)], 7u)], 4251u, 72956u, 0u) % vec4<u32>(32u))) % vec4<u32>(32u))), _wgslsmith_clamp_i32(u_input.a, ~u_input.a, ~(-49082i)), Struct_4(Struct_2(global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(_wgslsmith_clamp_u32(abs(global4[_wgslsmith_index_u32(1u, 7u)]), 19695u, ~27429u), 7u)], 27u)], ~vec4<u32>(56950u, 14197u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(42428u, 7u)], 7u)], 1u), Struct_1(arg_0.a, -553f)), 0i), true | (u_input.a <= 22260i));
    global1 = array<Struct_5, 15>();
    global2 = ~31665u << (max(var_0.a.a.b.x, abs(~(~4533u))) % 32u);
    let var_1 = !(any(!vec4<bool>(var_0.e, true, true, var_0.e)) & any(select(vec3<bool>(var_0.e, false, var_0.e), select(vec3<bool>(var_0.e, true, var_0.e), vec3<bool>(true, var_0.e, var_0.e), var_0.e), select(vec3<bool>(true, true, var_0.e), vec3<bool>(false, var_0.e, false), var_0.e))));
    var var_2 = Struct_5(Struct_4(Struct_2(global3[_wgslsmith_index_u32(firstTrailingBit(1u) >> (1u % 32u), 27u)], var_0.b, var_0.d.a.a), var_0.c), _wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(~max(var_0.d.a.b, var_0.d.a.b), abs(_wgslsmith_clamp_vec4_u32(var_0.b, var_0.a.a.b, var_0.d.a.b))), _wgslsmith_clamp_vec4_u32(firstLeadingBit(~var_0.a.a.b), vec4<u32>(var_0.d.a.b.x | global4[_wgslsmith_index_u32(var_0.d.a.b.x, 7u)], 64138u << (global4[_wgslsmith_index_u32(0u, 7u)] % 32u), global4[_wgslsmith_index_u32(var_0.d.a.b.x, 7u)] >> (var_0.d.a.b.x % 32u), _wgslsmith_div_u32(var_0.b.x, var_0.a.a.b.x)), vec4<u32>(~12544u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(var_0.b.x, 7u)] << (4294967295u % 32u), 7u)], abs(var_0.a.a.b.x), var_0.b.x << (43791u % 32u)))), -16609i | var_0.d.b, var_0.d, var_0.e);
    return true;
}

fn func_1() -> vec2<u32> {
    let var_0 = 2044f;
    let var_1 = select(true, !func_2(global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(38386u, 7u)], 27u)]), -2147483647i > u_input.a);
    let var_2 = vec2<bool>(var_1, true);
    global2 = 0u;
    global4 = array<u32, 7>();
    return _wgslsmith_clamp_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(reverseBits(1u), 1u), max(~(~vec2<u32>(4294967295u, 33058u)), _wgslsmith_sub_vec2_u32(select(vec2<u32>(69888u, global4[_wgslsmith_index_u32(0u, 7u)]), vec2<u32>(26909u, 1u), var_1), firstLeadingBit(vec2<u32>(1u, 55585u))))), _wgslsmith_clamp_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(global4[_wgslsmith_index_u32(1u, 7u)], 0u), global4[_wgslsmith_index_u32(countOneBits(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 7u)], 7u)]), 7u)]), _wgslsmith_mod_vec2_u32(~vec2<u32>(10911u, 47903u), reverseBits(vec2<u32>(1u, global4[_wgslsmith_index_u32(0u, 7u)]))), ~vec2<u32>(1u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 7u)], 7u)]) ^ ~vec2<u32>(46943u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 7u)], 7u)])) ^ vec2<u32>(~_wgslsmith_div_u32(66691u, 56551u), global4[_wgslsmith_index_u32(abs(global4[_wgslsmith_index_u32(16368u, 7u)]) ^ global4[_wgslsmith_index_u32(reverseBits(20379u), 7u)], 7u)]), _wgslsmith_clamp_vec2_u32(countOneBits(select(vec2<u32>(109450u, 0u), vec2<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 7u)], 7u)], 71603u), u_input.a > u_input.a)), reverseBits(vec2<u32>(firstTrailingBit(0u), 3115u)), ~_wgslsmith_clamp_vec2_u32(~vec2<u32>(global4[_wgslsmith_index_u32(4294967295u, 7u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(249u, 7u)], 7u)], 7u)]), abs(vec2<u32>(0u, 69875u)), vec2<u32>(global4[_wgslsmith_index_u32(4294967295u, 7u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(21831u, 7u)], 7u)], 7u)], 7u)]) >> (vec2<u32>(8103u, 4294967295u) % vec2<u32>(32u)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 1>();
    var var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1070f, -148f, -714f, -860f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1461f, 426f, -1703f, -345f) - vec4<f32>(-1766f, 194f, 209f, 399f)), vec4<bool>(true, false, true, true))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1948f, -165f, -1101f, 1000f) + vec4<f32>(-1576f, -2961f, 736f, 236f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1313f, 1491f, 1000f, 578f))))), _wgslsmith_add_vec2_u32(_wgslsmith_clamp_vec2_u32(reverseBits(func_1()), ~firstTrailingBit(vec2<u32>(4294967295u, 35239u)), ~vec2<u32>(global4[_wgslsmith_index_u32(1u, 7u)], global4[_wgslsmith_index_u32(7253u, 7u)])), ~(~vec2<u32>(1u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(42746u, 7u)], 7u)], 7u)])) & reverseBits(~vec2<u32>(13519u, 1u))), Struct_2(global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(countOneBits(global4[_wgslsmith_index_u32(~51566u, 7u)]), 7u)], 27u)], vec4<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 7u)], 7u)], 0u, global4[_wgslsmith_index_u32(1u, 7u)], _wgslsmith_mult_u32(4294967295u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(41502u, 7u)], 7u)])) & ~(vec4<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 7u)], 7u)], global4[_wgslsmith_index_u32(82856u, 7u)], 4294967295u, 0u) >> (vec4<u32>(global4[_wgslsmith_index_u32(17273u, 7u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 7u)], 7u)], global4[_wgslsmith_index_u32(1u, 7u)], 4294967295u) % vec4<u32>(32u))), Struct_1(_wgslsmith_f_op_f32(floor(1000f)), 1000f)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-408f))), -1298f), global0[_wgslsmith_index_u32(37332u, 1u)]);
    global2 = ~var_0.b.x;
    global3 = array<Struct_1, 27>();
    let var_1 = _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, u_input.a), vec2<i32>(_wgslsmith_dot_vec3_i32(select(vec3<i32>(1i, 21664i, u_input.a), vec3<i32>(u_input.a, u_input.a, u_input.a), true), vec3<i32>(~u_input.a, reverseBits(-27066i), 2147483647i)), i32(-1i) * -(~3736i)));
    let x = u_input.a;
    s_output = StorageBuffer(~var_0.e.b.x, reverseBits(-(~_wgslsmith_sub_vec2_i32(vec2<i32>(2147483647i, -2147483647i), vec2<i32>(0i, var_1)))), 41524i, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(~(func_1().x | ~var_0.c.b.x), 7u)] & global4[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(var_0.e.b.yyw, countOneBits(var_0.c.b.xzy)), 7u)], 7u)]);
}

