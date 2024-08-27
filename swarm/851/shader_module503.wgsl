struct Struct_1 {
    a: vec2<u32>,
    b: vec3<i32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec4<i32>,
    c: vec4<f32>,
    d: bool,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 24>;

var<private> global1: array<Struct_1, 30> = array<Struct_1, 30>(Struct_1(vec2<u32>(17522u, 10026u), vec3<i32>(8386i, 0i, 0i)), Struct_1(vec2<u32>(44054u, 20089u), vec3<i32>(28350i, i32(-2147483648), -44753i)), Struct_1(vec2<u32>(1u, 1u), vec3<i32>(-4231i, 1200i, 2147483647i)), Struct_1(vec2<u32>(48226u, 35189u), vec3<i32>(2147483647i, 5692i, 0i)), Struct_1(vec2<u32>(0u, 15059u), vec3<i32>(3354i, 1i, 31611i)), Struct_1(vec2<u32>(1u, 61177u), vec3<i32>(10088i, i32(-2147483648), -21893i)), Struct_1(vec2<u32>(21786u, 15817u), vec3<i32>(-33164i, 15990i, -23411i)), Struct_1(vec2<u32>(0u, 0u), vec3<i32>(70918i, 0i, i32(-2147483648))), Struct_1(vec2<u32>(46889u, 21721u), vec3<i32>(-6474i, 2147483647i, 1i)), Struct_1(vec2<u32>(4294967295u, 0u), vec3<i32>(-36869i, i32(-2147483648), 1i)), Struct_1(vec2<u32>(1u, 36680u), vec3<i32>(2147483647i, -3331i, -55323i)), Struct_1(vec2<u32>(1u, 0u), vec3<i32>(2147483647i, i32(-2147483648), 1i)), Struct_1(vec2<u32>(109926u, 0u), vec3<i32>(-27197i, 2147483647i, 52395i)), Struct_1(vec2<u32>(4031u, 55500u), vec3<i32>(10817i, i32(-2147483648), i32(-2147483648))), Struct_1(vec2<u32>(4563u, 3507u), vec3<i32>(1i, 21538i, -1i)), Struct_1(vec2<u32>(54550u, 108010u), vec3<i32>(-16647i, -7550i, -59896i)), Struct_1(vec2<u32>(42103u, 0u), vec3<i32>(3511i, 0i, i32(-2147483648))), Struct_1(vec2<u32>(67794u, 4294967295u), vec3<i32>(-1i, -1i, -18582i)), Struct_1(vec2<u32>(110050u, 0u), vec3<i32>(26072i, 2147483647i, 2147483647i)), Struct_1(vec2<u32>(0u, 0u), vec3<i32>(-1805i, -1i, 0i)), Struct_1(vec2<u32>(35533u, 32752u), vec3<i32>(20979i, i32(-2147483648), 8567i)), Struct_1(vec2<u32>(4294967295u, 1u), vec3<i32>(0i, 2147483647i, -2694i)), Struct_1(vec2<u32>(50940u, 0u), vec3<i32>(66052i, 24859i, i32(-2147483648))), Struct_1(vec2<u32>(14532u, 53452u), vec3<i32>(-752i, 51242i, 45458i)), Struct_1(vec2<u32>(0u, 7708u), vec3<i32>(0i, 1i, -42961i)), Struct_1(vec2<u32>(17853u, 4294967295u), vec3<i32>(i32(-2147483648), 2646i, -1i)), Struct_1(vec2<u32>(40582u, 0u), vec3<i32>(2147483647i, 0i, -60525i)), Struct_1(vec2<u32>(4294967295u, 0u), vec3<i32>(1i, 52291i, 1i)), Struct_1(vec2<u32>(58557u, 4294967295u), vec3<i32>(0i, 1i, -1i)), Struct_1(vec2<u32>(14908u, 57865u), vec3<i32>(623i, -44600i, -13487i)));

var<private> global2: array<i32, 32>;

var<private> global3: array<vec4<f32>, 3>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: i32, arg_1: Struct_3) -> vec2<bool> {
    var var_0 = _wgslsmith_div_i32(abs(-3124i), abs(-(_wgslsmith_dot_vec4_i32(vec4<i32>(global2[_wgslsmith_index_u32(727u, 32u)], -86523i, -1i, global2[_wgslsmith_index_u32(4294967295u, 32u)]), vec4<i32>(38173i, arg_0, 1i, arg_0)) & 8395i)));
    var var_1 = arg_1;
    let var_2 = vec4<bool>(any(vec2<bool>(true, true)), true, select(!all(vec2<bool>(false, false)), all(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true), false), select(false, true, true))), ~35198i == -(u_input.a.x | global2[_wgslsmith_index_u32(29041u, 32u)])), (_wgslsmith_mult_u32(1u, 1u) <= (_wgslsmith_clamp_u32(36690u, 4294967295u, 20131u) | ~21401u)) && any(select(vec2<bool>(true, false), vec2<bool>(false, false), true)));
    global3 = array<vec4<f32>, 3>();
    var var_3 = Struct_2(!vec4<bool>(var_2.x, var_2.x, var_2.x, any(!vec3<bool>(true, var_2.x, var_2.x))), select(_wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(abs(vec4<i32>(u_input.a.x, -23381i, 2147483647i, arg_0)), -vec4<i32>(arg_1.a, var_1.a, -1i, -2147483647i)), vec4<i32>(select(-5379i, -2147483647i, true), u_input.a.x, 0i, ~(-1i))), -vec4<i32>(u_input.a.x, arg_0 ^ arg_0, ~arg_1.a, u_input.a.x), var_2.x), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(global3[_wgslsmith_index_u32(~max(1u, 4294967295u), 3u)] - _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(step(global3[_wgslsmith_index_u32(4294967295u, 3u)], global3[_wgslsmith_index_u32(4294967295u, 3u)]))))), _wgslsmith_div_vec4_f32(global3[_wgslsmith_index_u32(firstLeadingBit(0u), 3u)], _wgslsmith_f_op_vec4_f32(-global3[_wgslsmith_index_u32(1u, 3u)])), !(!select(var_2, var_2, var_2.x)))), !((~var_1.a & -1i) >= -countOneBits(arg_0)));
    return !var_3.a.yx;
}

fn func_2(arg_0: u32, arg_1: f32, arg_2: f32) -> u32 {
    var var_0 = !select(select(func_3(abs(u_input.a.x), Struct_3(u_input.a.x)), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(any(vec3<bool>(false, true, false)), !any(vec4<bool>(true, true, true, false))), any(!func_3(u_input.a.x, Struct_3(u_input.a.x))));
    let var_1 = arg_2;
    return 22067u;
}

fn func_1(arg_0: vec3<bool>, arg_1: i32, arg_2: Struct_3) -> bool {
    let var_0 = u_input.a;
    var var_1 = _wgslsmith_sub_u32(34747u, select(~_wgslsmith_div_u32(1u, 1u), _wgslsmith_div_u32(_wgslsmith_mod_u32(1u, 73822u), ~1u), arg_0.x || arg_0.x));
    global3 = array<vec4<f32>, 3>();
    global1 = array<Struct_1, 30>();
    let var_2 = global3[_wgslsmith_index_u32(~((_wgslsmith_clamp_u32(61984u, func_2(1u, -283f, 1515f), 16854u) & 1u) & min(~3929u, firstTrailingBit(1u))), 3u)];
    return all(vec4<bool>(all(vec3<bool>(true, any(vec3<bool>(true, arg_0.x, true)), !arg_0.x)), select(_wgslsmith_f_op_f32(abs(var_2.x)) == var_2.x, global2[_wgslsmith_index_u32(1u, 32u)] > _wgslsmith_dot_vec2_i32(u_input.a, u_input.a), _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 7788u), vec2<u32>(71548u, 1u)) > _wgslsmith_clamp_u32(22267u, 0u, 36562u)), arg_0.x, true));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<i32>, 24>();
    global0 = array<vec3<i32>, 24>();
    let var_0 = select(!(!vec2<bool>(all(vec4<bool>(false, true, false, true)), func_1(vec3<bool>(false, false, true), 23052i, Struct_3(10332i)))), vec2<bool>(false & !all(vec3<bool>(false, false, true)), u_input.a.x < _wgslsmith_dot_vec2_i32(vec2<i32>(global2[_wgslsmith_index_u32(4294967295u, 32u)], u_input.a.x), vec2<i32>(-4203i, global2[_wgslsmith_index_u32(42421u, 32u)]))), select(!(!select(vec2<bool>(false, true), vec2<bool>(true, false), false)), select(vec2<bool>(true, true), !select(vec2<bool>(false, false), vec2<bool>(false, true), false), vec2<bool>(true, true)), vec2<bool>(true, true)));
    var var_1 = Struct_2(select(select(!select(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(true, true, false, var_0.x), false), !vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), true), vec4<bool>(var_0.x, true, var_0.x, true), var_0.x), reverseBits(_wgslsmith_mod_vec4_i32(-vec4<i32>(u_input.a.x, u_input.a.x, 2147483647i, global2[_wgslsmith_index_u32(44931u, 32u)]), -vec4<i32>(u_input.a.x, global2[_wgslsmith_index_u32(0u, 32u)], global2[_wgslsmith_index_u32(14661u, 32u)], 15140i) ^ vec4<i32>(4833i, u_input.a.x, global2[_wgslsmith_index_u32(40675u, 32u)], 13762i))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(floor(global3[_wgslsmith_index_u32(select(8163u, 38222u, false), 3u)])))))), all(select(!vec4<bool>(true, var_0.x, true, true), select(vec4<bool>(var_0.x, true, false, false), vec4<bool>(true, true, true, false), var_0.x), vec4<bool>(false, false, false, var_0.x))) == all(!var_0));
    var var_2 = Struct_3(2147483647i);
    let x = u_input.a;
    s_output = StorageBuffer(max(_wgslsmith_mult_u32(func_2(~4294967295u, _wgslsmith_f_op_f32(trunc(var_1.c.x)), -1034f), 50362u), 4294967295u), vec3<u32>(1u, 1u, 1u), firstTrailingBit(countOneBits(var_2.a)));
}

