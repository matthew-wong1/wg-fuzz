struct Struct_1 {
    a: i32,
    b: vec4<bool>,
    c: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: vec2<i32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: u32,
}

struct Struct_5 {
    a: f32,
    b: f32,
    c: Struct_4,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 8> = array<vec4<bool>, 8>(vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true));

var<private> global1: array<Struct_4, 29> = array<Struct_4, 29>(Struct_4(Struct_2(Struct_1(-14321i, vec4<bool>(false, true, true, false), vec3<bool>(true, false, false)), vec4<u32>(7069u, 1u, 17292u, 51191u), vec2<i32>(11007i, 2147483647i)), 18387u), Struct_4(Struct_2(Struct_1(2147483647i, vec4<bool>(false, true, true, true), vec3<bool>(false, true, true)), vec4<u32>(42820u, 4294967295u, 1u, 6982u), vec2<i32>(17623i, -63262i)), 12910u), Struct_4(Struct_2(Struct_1(i32(-2147483648), vec4<bool>(false, false, true, false), vec3<bool>(true, true, false)), vec4<u32>(1u, 0u, 2717u, 4294967295u), vec2<i32>(-1i, 0i)), 0u), Struct_4(Struct_2(Struct_1(-1i, vec4<bool>(false, false, false, true), vec3<bool>(true, false, true)), vec4<u32>(47028u, 0u, 45629u, 132896u), vec2<i32>(1i, -36779i)), 12222u), Struct_4(Struct_2(Struct_1(24555i, vec4<bool>(true, false, false, true), vec3<bool>(false, true, true)), vec4<u32>(1u, 38882u, 0u, 1186u), vec2<i32>(1463i, 1i)), 0u), Struct_4(Struct_2(Struct_1(34612i, vec4<bool>(true, false, false, false), vec3<bool>(true, false, false)), vec4<u32>(0u, 38686u, 7691u, 35578u), vec2<i32>(-38698i, 1999i)), 4294967295u), Struct_4(Struct_2(Struct_1(0i, vec4<bool>(false, true, false, true), vec3<bool>(false, false, true)), vec4<u32>(13887u, 0u, 4294967295u, 4294967295u), vec2<i32>(1i, -13940i)), 69423u), Struct_4(Struct_2(Struct_1(0i, vec4<bool>(true, true, false, false), vec3<bool>(false, false, true)), vec4<u32>(1u, 13347u, 1u, 27289u), vec2<i32>(-1i, -1i)), 18989u), Struct_4(Struct_2(Struct_1(-43801i, vec4<bool>(false, false, false, true), vec3<bool>(true, true, false)), vec4<u32>(17956u, 0u, 37004u, 4294967295u), vec2<i32>(17797i, 2147483647i)), 0u), Struct_4(Struct_2(Struct_1(-25576i, vec4<bool>(true, false, false, false), vec3<bool>(true, true, false)), vec4<u32>(6558u, 4294967295u, 71215u, 1u), vec2<i32>(-51741i, 9569i)), 67298u), Struct_4(Struct_2(Struct_1(-17333i, vec4<bool>(false, true, true, false), vec3<bool>(true, false, false)), vec4<u32>(577u, 4294967295u, 1u, 29649u), vec2<i32>(1i, -6994i)), 64228u), Struct_4(Struct_2(Struct_1(0i, vec4<bool>(false, false, true, false), vec3<bool>(false, true, false)), vec4<u32>(0u, 0u, 4294967295u, 21534u), vec2<i32>(-44778i, 14884i)), 8032u), Struct_4(Struct_2(Struct_1(-1i, vec4<bool>(false, true, true, false), vec3<bool>(true, true, false)), vec4<u32>(94319u, 19281u, 39406u, 1u), vec2<i32>(2147483647i, 2147483647i)), 153226u), Struct_4(Struct_2(Struct_1(12454i, vec4<bool>(true, false, true, true), vec3<bool>(true, false, true)), vec4<u32>(1u, 46065u, 47307u, 50016u), vec2<i32>(-33163i, -1i)), 58785u), Struct_4(Struct_2(Struct_1(i32(-2147483648), vec4<bool>(false, true, false, true), vec3<bool>(false, true, false)), vec4<u32>(34418u, 41448u, 7857u, 1u), vec2<i32>(2147483647i, 16111i)), 44022u), Struct_4(Struct_2(Struct_1(-23839i, vec4<bool>(false, true, true, false), vec3<bool>(true, true, true)), vec4<u32>(38527u, 1u, 77466u, 15441u), vec2<i32>(-1i, 2147483647i)), 55052u), Struct_4(Struct_2(Struct_1(19813i, vec4<bool>(true, true, false, false), vec3<bool>(true, false, true)), vec4<u32>(49464u, 1u, 5979u, 30616u), vec2<i32>(-1i, -35957i)), 1u), Struct_4(Struct_2(Struct_1(-21238i, vec4<bool>(true, true, false, false), vec3<bool>(false, true, true)), vec4<u32>(4294967295u, 7254u, 66094u, 0u), vec2<i32>(10201i, 19272i)), 0u), Struct_4(Struct_2(Struct_1(1713i, vec4<bool>(false, true, true, true), vec3<bool>(false, false, false)), vec4<u32>(116721u, 0u, 4294967295u, 16188u), vec2<i32>(2147483647i, -53242i)), 57160u), Struct_4(Struct_2(Struct_1(64339i, vec4<bool>(true, false, true, false), vec3<bool>(true, true, false)), vec4<u32>(4485u, 89888u, 1u, 43598u), vec2<i32>(26271i, 2147483647i)), 35995u), Struct_4(Struct_2(Struct_1(1i, vec4<bool>(false, false, true, true), vec3<bool>(true, false, true)), vec4<u32>(102479u, 12093u, 20622u, 1u), vec2<i32>(-22994i, 1i)), 2211u), Struct_4(Struct_2(Struct_1(-23685i, vec4<bool>(false, false, true, true), vec3<bool>(false, false, false)), vec4<u32>(1u, 0u, 50390u, 1847u), vec2<i32>(11230i, 0i)), 70021u), Struct_4(Struct_2(Struct_1(-38908i, vec4<bool>(true, true, false, true), vec3<bool>(false, false, true)), vec4<u32>(37730u, 35099u, 108006u, 0u), vec2<i32>(-31992i, i32(-2147483648))), 0u), Struct_4(Struct_2(Struct_1(-26893i, vec4<bool>(false, true, true, false), vec3<bool>(true, true, false)), vec4<u32>(45027u, 50314u, 41029u, 0u), vec2<i32>(i32(-2147483648), 2147483647i)), 32404u), Struct_4(Struct_2(Struct_1(-47100i, vec4<bool>(true, true, false, true), vec3<bool>(true, true, true)), vec4<u32>(5142u, 1u, 85384u, 37245u), vec2<i32>(i32(-2147483648), -1i)), 0u), Struct_4(Struct_2(Struct_1(i32(-2147483648), vec4<bool>(true, false, false, false), vec3<bool>(false, true, true)), vec4<u32>(1u, 4890u, 29635u, 50123u), vec2<i32>(1269i, -50672i)), 49307u), Struct_4(Struct_2(Struct_1(0i, vec4<bool>(true, false, true, true), vec3<bool>(true, false, true)), vec4<u32>(2897u, 4294967295u, 0u, 22615u), vec2<i32>(-2379i, -1i)), 103916u), Struct_4(Struct_2(Struct_1(0i, vec4<bool>(true, false, false, false), vec3<bool>(false, true, true)), vec4<u32>(0u, 25765u, 4294967295u, 4294967295u), vec2<i32>(0i, 1i)), 4294967295u), Struct_4(Struct_2(Struct_1(0i, vec4<bool>(false, true, true, false), vec3<bool>(false, false, false)), vec4<u32>(4294967295u, 613u, 0u, 1u), vec2<i32>(57890i, 1i)), 41402u));

var<private> global2: array<f32, 10> = array<f32, 10>(1693f, -522f, -1000f, -455f, 1024f, 113f, -800f, -1524f, 622f, 1347f);

var<private> global3: array<bool, 2> = array<bool, 2>(false, true);

var<private> global4: vec4<f32> = vec4<f32>(1444f, 1000f, -1368f, 242f);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_1() -> vec2<bool> {
    global1 = array<Struct_4, 29>();
    return !vec2<bool>(true, global3[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(11559u, 4294967295u), vec2<u32>(86064u, 1u)), vec2<u32>(u_input.a, 4294967295u) >> (vec2<u32>(u_input.a, 91861u) % vec2<u32>(32u))), 2u)]);
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1) -> vec4<f32> {
    global3 = array<bool, 2>();
    var var_0 = Struct_4(Struct_2(Struct_1(_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(0i, -67206i), vec2<i32>(0i, arg_1.a)), vec2<i32>(0i, arg_1.a)), select(arg_2.b, vec4<bool>(global3[_wgslsmith_index_u32(4294967295u, 2u)], true, arg_2.b.x, false), vec4<bool>(arg_2.c.x, true, global3[_wgslsmith_index_u32(16962u, 2u)], global3[_wgslsmith_index_u32(u_input.a, 2u)])), !(!arg_1.b.yyx)), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, 47648u, 1u, u_input.a) & select(vec4<u32>(0u, arg_0, 29129u, arg_0), vec4<u32>(arg_0, 4294967295u, u_input.a, 4294967295u), global0[_wgslsmith_index_u32(1092u, 8u)]), _wgslsmith_mult_vec4_u32(~vec4<u32>(arg_0, arg_0, u_input.a, arg_0), ~vec4<u32>(1u, u_input.a, 4294967295u, 0u))), _wgslsmith_clamp_vec2_i32(vec2<i32>(0i, _wgslsmith_add_i32(1i, u_input.b)), reverseBits(reverseBits(vec2<i32>(0i, -2147483647i))), vec2<i32>(abs(arg_2.a), i32(-1i) * -1i))), 49374u);
    let var_1 = _wgslsmith_clamp_vec2_i32(var_0.a.c, var_0.a.c, vec2<i32>(39524i, countOneBits(_wgslsmith_clamp_i32(-69894i, u_input.b, arg_1.a))));
    global3 = array<bool, 2>();
    var var_2 = countOneBits(arg_1.a);
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-650f, global4.x, 1589f, 120f) - vec4<f32>(global2[_wgslsmith_index_u32(4294967295u, 10u)], 2282f, global2[_wgslsmith_index_u32(arg_0, 10u)], global4.x)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-526f, -1349f, -1063f, global2[_wgslsmith_index_u32(126278u, 10u)]) + vec4<f32>(-662f, 134f, 117f, global4.x))))) - vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(global2[_wgslsmith_index_u32(u_input.a ^ 45075u, 10u)])), global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(var_0.b, _wgslsmith_add_u32(78503u, var_0.a.b.x)), 10u)]), global4.x, _wgslsmith_f_op_f32(f32(-1f) * -859f), global4.x));
}

fn func_2(arg_0: vec2<bool>) -> Struct_2 {
    global4 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-205f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(-177f)))), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(~4294967295u, 10u)] + global2[_wgslsmith_index_u32(0u, 10u)]), global2[_wgslsmith_index_u32(~(~141975u), 10u)]) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.a, 10u)]), _wgslsmith_div_f32(724f, global4.x), global4.x, 174f) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(u_input.a, Struct_1(1i, vec4<bool>(arg_0.x, false, true, true), vec3<bool>(arg_0.x, true, false)), Struct_1(2147483647i, global0[_wgslsmith_index_u32(15271u, 8u)], vec3<bool>(false, false, arg_0.x)))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-516f, 187f, 211f, global4.x), vec4<f32>(-1000f, -198f, global2[_wgslsmith_index_u32(4294967295u, 10u)], global4.x))))));
    global3 = array<bool, 2>();
    global3 = array<bool, 2>();
    global4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1525f, -689f, 249f, global4.x))) - _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-634f, global4.x, global2[_wgslsmith_index_u32(52360u, 10u)], global4.x)))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1792f, global4.x, -149f, 1085f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(790f, global4.x, 1000f, global4.x))), _wgslsmith_div_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(0u, 10u)], 1001f, 717f, global4.x), vec4<f32>(1309f, global4.x, global4.x, -851f))))));
    let var_0 = Struct_5(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(~_wgslsmith_sub_u32(_wgslsmith_add_u32(u_input.a, u_input.a), u_input.a), 10u)]), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.a, 10u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(global2[_wgslsmith_index_u32(1u, 10u)], global4.x) * global2[_wgslsmith_index_u32(min(0u, 18185u), 10u)]))), global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(0u, _wgslsmith_mult_u32(69775u, reverseBits(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, u_input.a))))), 29u)], vec2<bool>(false, true));
    return Struct_2(Struct_1(_wgslsmith_div_i32(var_0.c.a.a.a, countOneBits(~u_input.b)), select(var_0.c.a.a.b, global0[_wgslsmith_index_u32(firstTrailingBit(reverseBits(4294967295u)), 8u)], arg_0.x), select(vec3<bool>(true, false & var_0.c.a.a.c.x, var_0.b <= -445f), var_0.c.a.a.b.wwz, arg_0.x)), vec4<u32>(~0u, 37468u, 113750u >> (var_0.c.b % 32u), ~(~(~14413u))), vec2<i32>(-53963i, _wgslsmith_clamp_i32(-17315i, -1i, ~(~(-2147483647i)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_2(!(!select(vec2<bool>(global3[_wgslsmith_index_u32(u_input.a, 2u)], global3[_wgslsmith_index_u32(u_input.a, 2u)]), select(vec2<bool>(global3[_wgslsmith_index_u32(u_input.a, 2u)], false), vec2<bool>(true, false), true), func_1())));
    var var_1 = Struct_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(firstTrailingBit(var_0.b.x), 10u)]), global2[_wgslsmith_index_u32(var_0.b.x, 10u)], select(false, var_0.a.c.x, false) || false)) - _wgslsmith_f_op_f32(round(924f))), _wgslsmith_f_op_f32(-1161f * _wgslsmith_f_op_f32(floor(global4.x))), Struct_4(Struct_2(var_0.a, _wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(var_0.b, var_0.b), ~vec4<u32>(var_0.b.x, 2914u, 7005u, 0u)), vec2<i32>(u_input.b, var_0.c.x) >> (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u))), ~firstTrailingBit(~u_input.a)), var_0.a.b.wy);
    let var_2 = !(var_1.d.x != global3[_wgslsmith_index_u32(reverseBits(33621u), 2u)]);
    var var_3 = Struct_3(func_2(var_1.d));
    var var_4 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(4456u, 10u)]))) - global4.x)));
    let var_5 = firstLeadingBit(vec2<u32>(abs(var_3.a.b.x), ~(~u_input.a | abs(var_0.b.x))));
    var var_6 = Struct_1(2147483647i, select(!(!func_2(var_0.a.b.xy).a.b), !(!var_0.a.b), true), var_1.c.a.a.b.zzy);
    var var_7 = global4.x;
    var var_8 = var_1.b;
    let x = u_input.a;
    s_output = StorageBuffer(~var_3.a.b.x, vec4<i32>(firstLeadingBit(-1i), ~select(-1i, -1i, true), ~(~abs(u_input.b)), 2147483647i), var_0.b.xyw);
}

