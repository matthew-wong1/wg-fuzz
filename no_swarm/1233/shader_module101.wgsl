struct Struct_1 {
    a: vec2<f32>,
    b: u32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: vec3<bool>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: bool,
    c: vec3<u32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 13>;

var<private> global1: array<u32, 28>;

var<private> global2: array<Struct_3, 28> = array<Struct_3, 28>(Struct_3(vec4<bool>(false, false, false, false), true, vec3<u32>(14290u, 10921u, 4294967295u), Struct_2(vec3<i32>(1i, -74058i, -27959i), Struct_1(vec2<f32>(-517f, 1800f), 25589u), vec3<bool>(true, true, true))), Struct_3(vec4<bool>(true, true, false, false), false, vec3<u32>(35444u, 4294967295u, 46244u), Struct_2(vec3<i32>(-44653i, -1i, -1i), Struct_1(vec2<f32>(222f, 1182f), 1u), vec3<bool>(true, false, false))), Struct_3(vec4<bool>(true, true, true, false), false, vec3<u32>(0u, 1763u, 4294967295u), Struct_2(vec3<i32>(i32(-2147483648), 18793i, 0i), Struct_1(vec2<f32>(-2067f, 1677f), 0u), vec3<bool>(true, false, false))), Struct_3(vec4<bool>(true, false, true, true), true, vec3<u32>(15915u, 55711u, 8571u), Struct_2(vec3<i32>(29881i, i32(-2147483648), 50341i), Struct_1(vec2<f32>(1257f, 474f), 39173u), vec3<bool>(true, true, true))), Struct_3(vec4<bool>(true, true, false, false), true, vec3<u32>(0u, 1u, 0u), Struct_2(vec3<i32>(29601i, i32(-2147483648), 0i), Struct_1(vec2<f32>(-300f, -1198f), 0u), vec3<bool>(false, false, true))), Struct_3(vec4<bool>(true, true, true, false), false, vec3<u32>(1u, 51962u, 35677u), Struct_2(vec3<i32>(i32(-2147483648), 14885i, i32(-2147483648)), Struct_1(vec2<f32>(243f, -1036f), 0u), vec3<bool>(true, false, false))), Struct_3(vec4<bool>(true, false, true, false), false, vec3<u32>(1u, 4294967295u, 15562u), Struct_2(vec3<i32>(5593i, 1i, 5165i), Struct_1(vec2<f32>(461f, -1366f), 15305u), vec3<bool>(false, true, false))), Struct_3(vec4<bool>(true, true, false, false), true, vec3<u32>(1u, 4294967295u, 44283u), Struct_2(vec3<i32>(2147483647i, 16404i, 23392i), Struct_1(vec2<f32>(627f, -235f), 31846u), vec3<bool>(true, true, true))), Struct_3(vec4<bool>(true, false, false, false), true, vec3<u32>(1u, 4294967295u, 63811u), Struct_2(vec3<i32>(25288i, 45849i, 54666i), Struct_1(vec2<f32>(-2282f, 1213f), 1u), vec3<bool>(true, false, true))), Struct_3(vec4<bool>(false, false, true, true), true, vec3<u32>(47262u, 4294967295u, 0u), Struct_2(vec3<i32>(0i, 0i, 2147483647i), Struct_1(vec2<f32>(1927f, 840f), 73610u), vec3<bool>(true, false, false))), Struct_3(vec4<bool>(false, false, false, true), true, vec3<u32>(0u, 0u, 1u), Struct_2(vec3<i32>(1i, i32(-2147483648), 47233i), Struct_1(vec2<f32>(-518f, 1029f), 18647u), vec3<bool>(false, true, true))), Struct_3(vec4<bool>(false, false, false, false), true, vec3<u32>(12207u, 0u, 4294967295u), Struct_2(vec3<i32>(2697i, 49323i, -1i), Struct_1(vec2<f32>(-680f, 796f), 1u), vec3<bool>(true, true, true))), Struct_3(vec4<bool>(true, true, false, true), false, vec3<u32>(39067u, 96036u, 26882u), Struct_2(vec3<i32>(13793i, i32(-2147483648), 1i), Struct_1(vec2<f32>(-842f, -2568f), 1u), vec3<bool>(false, true, false))), Struct_3(vec4<bool>(false, false, true, false), true, vec3<u32>(4294967295u, 59624u, 8864u), Struct_2(vec3<i32>(0i, 18025i, i32(-2147483648)), Struct_1(vec2<f32>(146f, -1185f), 4294967295u), vec3<bool>(true, false, true))), Struct_3(vec4<bool>(false, true, true, false), true, vec3<u32>(10007u, 7642u, 4294967295u), Struct_2(vec3<i32>(45669i, -5559i, i32(-2147483648)), Struct_1(vec2<f32>(-791f, -788f), 4294967295u), vec3<bool>(true, false, false))), Struct_3(vec4<bool>(true, false, false, true), false, vec3<u32>(1u, 0u, 29120u), Struct_2(vec3<i32>(0i, -1i, -1i), Struct_1(vec2<f32>(1367f, -538f), 1u), vec3<bool>(false, false, false))), Struct_3(vec4<bool>(true, false, false, false), false, vec3<u32>(3068u, 46864u, 1u), Struct_2(vec3<i32>(-75997i, i32(-2147483648), 1i), Struct_1(vec2<f32>(-2138f, -152f), 19102u), vec3<bool>(true, false, false))), Struct_3(vec4<bool>(true, false, false, false), false, vec3<u32>(1u, 1u, 1u), Struct_2(vec3<i32>(2147483647i, -34615i, 56690i), Struct_1(vec2<f32>(-1032f, 1411f), 32895u), vec3<bool>(false, false, true))), Struct_3(vec4<bool>(false, true, true, false), true, vec3<u32>(18407u, 66042u, 1u), Struct_2(vec3<i32>(24071i, -1i, 66164i), Struct_1(vec2<f32>(1000f, -602f), 26011u), vec3<bool>(false, true, false))), Struct_3(vec4<bool>(true, false, false, true), false, vec3<u32>(23039u, 22722u, 27711u), Struct_2(vec3<i32>(35340i, 0i, -1i), Struct_1(vec2<f32>(-287f, -522f), 18599u), vec3<bool>(true, true, false))), Struct_3(vec4<bool>(true, false, true, false), false, vec3<u32>(3378u, 1u, 28001u), Struct_2(vec3<i32>(1i, 1i, i32(-2147483648)), Struct_1(vec2<f32>(706f, -1457f), 12592u), vec3<bool>(true, false, true))), Struct_3(vec4<bool>(true, false, true, true), true, vec3<u32>(2417u, 4294967295u, 287u), Struct_2(vec3<i32>(-1i, i32(-2147483648), 0i), Struct_1(vec2<f32>(1359f, -874f), 4294967295u), vec3<bool>(false, false, false))), Struct_3(vec4<bool>(true, false, false, false), true, vec3<u32>(42233u, 30953u, 0u), Struct_2(vec3<i32>(-1i, 2147483647i, 1i), Struct_1(vec2<f32>(306f, 193f), 4294967295u), vec3<bool>(false, true, true))), Struct_3(vec4<bool>(false, true, false, false), false, vec3<u32>(1u, 19919u, 101324u), Struct_2(vec3<i32>(-6208i, 2147483647i, i32(-2147483648)), Struct_1(vec2<f32>(-577f, -1324f), 0u), vec3<bool>(false, true, true))), Struct_3(vec4<bool>(false, false, true, false), true, vec3<u32>(0u, 7898u, 4294967295u), Struct_2(vec3<i32>(-34646i, -14870i, 0i), Struct_1(vec2<f32>(1000f, -391f), 1u), vec3<bool>(true, true, true))), Struct_3(vec4<bool>(false, false, true, false), false, vec3<u32>(8883u, 1u, 0u), Struct_2(vec3<i32>(1i, 0i, 0i), Struct_1(vec2<f32>(-463f, 1745f), 40829u), vec3<bool>(false, true, false))), Struct_3(vec4<bool>(true, false, false, true), false, vec3<u32>(4294967295u, 1u, 52487u), Struct_2(vec3<i32>(1i, -37138i, -18738i), Struct_1(vec2<f32>(-1208f, 620f), 47614u), vec3<bool>(false, false, true))), Struct_3(vec4<bool>(true, true, false, true), true, vec3<u32>(54731u, 4294967295u, 4294967295u), Struct_2(vec3<i32>(i32(-2147483648), -34281i, 1i), Struct_1(vec2<f32>(-1143f, 2611f), 4294967295u), vec3<bool>(true, true, false))));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_2() -> u32 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-486f, -369f) * _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(700f, 543f))))) * vec2<f32>(1000f, _wgslsmith_f_op_f32(max(-264f, _wgslsmith_f_op_f32(f32(-1f) * -1241f))))), 12993u);
    let var_1 = all(select(vec2<bool>(true, (var_0.b | global1[_wgslsmith_index_u32(1u, 28u)]) >= ~0u), vec2<bool>(true, true), !(!select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true)))));
    var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-var_0.a), 16900u);
    global0 = array<vec3<f32>, 13>();
    var var_2 = !select(!(!select(vec3<bool>(var_1, true, false), vec3<bool>(var_1, false, var_1), var_1)), vec3<bool>(!(var_1 | true), var_1, false), vec3<bool>(var_1, !any(vec4<bool>(false, true, var_1, var_1)), firstLeadingBit(var_0.b) < 9447u));
    return 15504u;
}

fn func_3(arg_0: i32, arg_1: vec2<i32>, arg_2: vec4<u32>) -> vec4<u32> {
    global1 = array<u32, 28>();
    var var_0 = !vec2<bool>(true, !(1u <= global1[_wgslsmith_index_u32(arg_2.x >> (0u % 32u), 28u)]));
    var var_1 = 1u;
    let var_2 = -2147483647i;
    var var_3 = Struct_2((vec3<i32>(_wgslsmith_add_i32(-47941i, -14131i), -2147483647i, 2147483647i) & (vec3<i32>(arg_0, var_2, 1i) ^ ~vec3<i32>(2147483647i, -6439i, var_2))) << (~arg_2.xww % vec3<u32>(32u)), Struct_1(vec2<f32>(-241f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(163f, 584f, false)))), countOneBits(44098u)), select(select(!select(vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(var_0.x, true, var_0.x), var_0.x), select(vec3<bool>(var_0.x, var_0.x, var_0.x), !vec3<bool>(var_0.x, var_0.x, false), false), false), !select(select(vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(false, true, var_0.x), vec3<bool>(var_0.x, false, false)), !vec3<bool>(false, var_0.x, true), true), vec3<bool>(var_0.x || (var_0.x || var_0.x), all(vec3<bool>(var_0.x, var_0.x, var_0.x)), true)));
    return min(arg_2, vec4<u32>(_wgslsmith_sub_u32(min(arg_2.x, var_3.b.b), ~global1[_wgslsmith_index_u32(var_3.b.b, 28u)]), _wgslsmith_dot_vec2_u32(arg_2.ww, ~arg_2.xw), 4294967295u, ~1u) ^ firstLeadingBit(_wgslsmith_add_vec4_u32(min(vec4<u32>(global1[_wgslsmith_index_u32(arg_2.x, 28u)], arg_2.x, var_3.b.b, 35339u), arg_2), arg_2)));
}

fn func_1() -> u32 {
    let var_0 = select(vec4<u32>(1u, func_2(), 34746u, ~_wgslsmith_div_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 28u)], 28u)], 28u)], 28u)], global1[_wgslsmith_index_u32(4294967295u, 28u)])) & vec4<u32>(~countOneBits(15689u), ~114210u, 1u, global1[_wgslsmith_index_u32(4294967295u, 28u)]), select(vec4<u32>(0u, 5562u, global1[_wgslsmith_index_u32(91763u, 28u)], global1[_wgslsmith_index_u32(4294967295u, 28u)]) | vec4<u32>(1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 28u)], 28u)], 28u)], 28u)], 28u)], 28u)], 28u)], 117636u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 28u)], 28u)]), func_3(-u_input.a, -vec2<i32>(21998i, u_input.a), _wgslsmith_sub_vec4_u32(vec4<u32>(91711u, 1u, 27712u, global1[_wgslsmith_index_u32(31412u, 28u)]), vec4<u32>(0u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(12058u, 28u)], 28u)], 28u)], 28u)], 28u)], 28u)], 36231u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 28u)], 28u)]))), true) << (vec4<u32>(~func_2(), abs(0u), _wgslsmith_dot_vec3_u32(~vec3<u32>(0u, 35553u, global1[_wgslsmith_index_u32(38603u, 28u)]), ~vec3<u32>(global1[_wgslsmith_index_u32(4294967295u, 28u)], global1[_wgslsmith_index_u32(4294967295u, 28u)], 29530u)), countOneBits(global1[_wgslsmith_index_u32(max(global1[_wgslsmith_index_u32(72366u, 28u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 28u)], 28u)], 28u)]), 28u)])) % vec4<u32>(32u)), !select(select(select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true)), vec4<bool>(true, true, true, true), true), vec4<bool>(true, true, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(98294u, 28u)], 28u)] > global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 28u)], 28u)], true), vec4<bool>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(87523u, 28u)], 28u)] > global1[_wgslsmith_index_u32(4294967295u, 28u)], true, true, -1i < u_input.a)));
    global0 = array<vec3<f32>, 13>();
    var var_1 = all(select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true)), !select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true)), true), select(!select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, false), false), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false)), any(vec2<bool>(true, true)))), vec4<bool>(true, true, true, true)));
    var var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -379f), -346f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1005f, _wgslsmith_f_op_f32(125f + -1132f)) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -875f)), vec2<f32>(-1376f, 586f))))), 5250u << (select(var_0.x, var_0.x, all(vec4<bool>(true, true, true, true))) % 32u));
    var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.a.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(var_2.a.x)))))), 46557u);
    return ~(~select(var_0.x, ~func_3(u_input.a, vec2<i32>(55300i, 2147483647i), vec4<u32>(var_0.x, global1[_wgslsmith_index_u32(var_0.x, 28u)], var_2.b, 35952u)).x, any(vec4<bool>(true, true, true, true))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_3, 28>();
    global1 = array<u32, 28>();
    global1 = array<u32, 28>();
    global0 = array<vec3<f32>, 13>();
    global0 = array<vec3<f32>, 13>();
    let var_0 = vec4<u32>(0u, _wgslsmith_add_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_mod_u32(global1[_wgslsmith_index_u32(50606u, 28u)], global1[_wgslsmith_index_u32(1u, 28u)]) & 38628u, _wgslsmith_mult_u32(1u, ~55419u)), 28u)], 28u)], 28u)], 0u), func_1(), global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(firstTrailingBit(global1[_wgslsmith_index_u32(0u, 28u)]) & ~func_1(), 28u)], 28u)]);
    let var_1 = Struct_2(min(vec3<i32>(u_input.a, _wgslsmith_mult_i32(u_input.a, u_input.a), _wgslsmith_dot_vec2_i32(~vec2<i32>(u_input.a, u_input.a), firstLeadingBit(vec2<i32>(u_input.a, -1i)))), ~(-select(vec3<i32>(u_input.a, 0i, 0i), vec3<i32>(-17835i, u_input.a, u_input.a), true))), Struct_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(567f, 571f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-209f, -1235f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(552f, -1344f))), select(vec2<bool>(false, false), vec2<bool>(false, false), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false))))), ~(~(~43270u))), vec3<bool>(!all(vec4<bool>(false, true, true, false)), any(select(vec4<bool>(true, true, false, true), select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, false)), select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true)))), !select(true, true, true)));
    global0 = array<vec3<f32>, 13>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec3_i32(-vec3<i32>(~u_input.a, u_input.a, max(u_input.a, u_input.a)), var_1.a));
}

