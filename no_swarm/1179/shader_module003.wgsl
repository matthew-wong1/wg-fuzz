struct Struct_1 {
    a: vec4<f32>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 3> = array<i32, 3>(-59877i, 53916i, -30185i);

var<private> global1: array<Struct_3, 27>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> u32 {
    var var_0 = 1u;
    return ~_wgslsmith_div_u32(42859u, _wgslsmith_sub_u32(u_input.c, 4294967295u));
}

fn func_2() -> Struct_3 {
    let var_0 = Struct_3(vec2<u32>(4294967295u | func_3(), u_input.c), u_input.c);
    let var_1 = vec3<u32>(1u ^ _wgslsmith_clamp_u32(u_input.c, ~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 1u, 4294967295u), vec3<u32>(var_0.b, u_input.c, 4294967295u)), _wgslsmith_mult_u32(14744u, var_0.a.x >> (u_input.c % 32u))), reverseBits(1u & u_input.c) << (firstLeadingBit(firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, 41577u, u_input.c), vec3<u32>(var_0.a.x, u_input.c, 1u)))) % 32u), var_0.b);
    let var_2 = all(select(vec2<bool>(12932i == countOneBits(global0[_wgslsmith_index_u32(1u, 3u)]), true), select(vec2<bool>(all(vec3<bool>(false, true, false)), true), vec2<bool>(true, false), vec2<bool>(all(vec3<bool>(true, false, false)), true)), vec2<bool>(true, false)));
    let var_3 = -1155f;
    global1 = array<Struct_3, 27>();
    return var_0;
}

fn func_4(arg_0: i32, arg_1: Struct_3) -> vec3<bool> {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(428f, _wgslsmith_div_f32(410f, 1000f), _wgslsmith_f_op_f32(step(1000f, 159f)), _wgslsmith_f_op_f32(min(-2085f, 223f))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(1298f, 191f, -130f, 1091f) + vec4<f32>(-1755f, 647f, -1169f, -1220f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-394f, 345f, 704f, 860f) - vec4<f32>(-281f, 987f, -1495f, -1273f)), true)))) + _wgslsmith_f_op_vec4_f32(round(vec4<f32>(1f, _wgslsmith_f_op_f32(step(1847f, -643f)), -435f, _wgslsmith_f_op_f32(f32(-1f) * -734f))))), abs(~(vec4<u32>(0u, u_input.c, 4294967295u, 42107u) | ~vec4<u32>(arg_1.a.x, arg_1.b, u_input.c, u_input.c))));
    let var_1 = i32(-1i) * -23628i;
    let var_2 = arg_1;
    var var_3 = vec2<bool>((~_wgslsmith_add_u32(14081u, u_input.c) << (~var_0.b.x % 32u)) < func_3(), !(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -319f))) < _wgslsmith_f_op_f32(930f + 444f)));
    var_3 = select(vec2<bool>(all(select(!vec3<bool>(false, var_3.x, var_3.x), vec3<bool>(var_3.x, true, var_3.x), !vec3<bool>(false, var_3.x, var_3.x))), !var_3.x), select(!vec2<bool>(true, var_3.x), !(!vec2<bool>(var_3.x, false)), !(!(u_input.b.x < 0i))), select(all(vec2<bool>(true, true)), !var_3.x, all(select(vec2<bool>(true, true), select(vec2<bool>(var_3.x, false), vec2<bool>(var_3.x, false), var_3.x), any(vec2<bool>(true, false))))));
    return select(select(vec3<bool>(any(!vec3<bool>(var_3.x, true, var_3.x)), var_3.x | var_3.x, true), vec3<bool>(select(true, true, !var_3.x), true && (var_0.a.x >= var_0.a.x), var_3.x), true), select(!select(!vec3<bool>(var_3.x, var_3.x, true), vec3<bool>(var_3.x, false, var_3.x), var_3.x), vec3<bool>(!(false || var_3.x), var_3.x, true), !(!select(vec3<bool>(true, false, var_3.x), vec3<bool>(var_3.x, var_3.x, false), vec3<bool>(true, var_3.x, false)))), true);
}

fn func_5(arg_0: vec2<bool>, arg_1: vec3<bool>, arg_2: bool) -> u32 {
    global0 = array<i32, 3>();
    var var_0 = ~752u;
    let var_1 = ~_wgslsmith_add_vec2_i32(vec2<i32>(u_input.a.x, (global0[_wgslsmith_index_u32(u_input.c, 3u)] >> (u_input.c % 32u)) << (1u % 32u)), vec2<i32>(_wgslsmith_mult_i32(1i, ~(-29888i)), u_input.b.x));
    return u_input.c >> (~47070u % 32u);
}

fn func_1(arg_0: u32, arg_1: i32, arg_2: vec2<u32>) -> bool {
    let var_0 = abs(_wgslsmith_add_u32(23314u, func_5(!select(vec2<bool>(true, true), vec2<bool>(true, false), true), func_4(-arg_1, func_2()), true)));
    global0 = array<i32, 3>();
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-417f, -802f, 1177f, 140f)) - vec4<f32>(-2971f, 1240f, 2276f, 1335f))), vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(-587f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -331f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(519f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1104f))), !vec4<bool>(false, true, true, any(vec2<bool>(false, true))))), _wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, 12160u, 89968u, arg_2.x), _wgslsmith_mult_vec4_u32(vec4<u32>(92805u, 1u, arg_0, 32931u), vec4<u32>(0u, 39486u, 0u, u_input.c))), 1u, 0u, ~arg_2.x), ~(~(~vec4<u32>(u_input.c, 1u, u_input.c, 11129u)))));
    var var_2 = _wgslsmith_clamp_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(4294967295u, 3u)], firstLeadingBit(_wgslsmith_dot_vec2_i32(u_input.a.ww, vec2<i32>(global0[_wgslsmith_index_u32(4294967295u, 3u)], u_input.a.x)))), u_input.b.xz, u_input.a.yy);
    var var_3 = max(vec4<i32>(2147483647i, max(u_input.a.x, _wgslsmith_add_i32(1i, global0[_wgslsmith_index_u32(func_2().b, 3u)])), select(-1i, -_wgslsmith_sub_i32(u_input.a.x, 2147483647i), all(vec4<bool>(false, false, false, false)) | true), countOneBits(arg_1)), -vec4<i32>(min(~(-11216i), -2147483647i & global0[_wgslsmith_index_u32(4294967295u, 3u)]), var_2.x, 40382i, abs(_wgslsmith_mod_i32(37553i, var_2.x))));
    return var_1.a.x == var_1.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<bool>(true, (!any(vec3<bool>(true, true, false)) | any(vec4<bool>(true, false, true, false))) | !any(select(vec2<bool>(false, false), vec2<bool>(true, false), false)), true, !func_1(u_input.c, _wgslsmith_sub_i32(u_input.a.x >> (9255u % 32u), global0[_wgslsmith_index_u32(abs(1u), 3u)]), vec2<u32>(abs(u_input.c), ~1u)));
    let var_1 = Struct_1(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1316f, 424f) + _wgslsmith_f_op_f32(max(181f, 317f))), -1242f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-144f, 1323f, false))), _wgslsmith_f_op_f32(round(-525f))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1750f, -1564f, -1077f, 111f)) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1000f, -495f, -528f, -1351f))))))), vec4<u32>(15488u, ~_wgslsmith_sub_u32(4294967295u, abs(4294967295u)), abs(56850u), 81023u));
    global0 = array<i32, 3>();
    global0 = array<i32, 3>();
    var var_2 = func_3();
    var var_3 = global1[_wgslsmith_index_u32(1u, 27u)];
    let var_4 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(351f + var_1.a.x) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(-661f)))), var_1.a.x))), var_1.b ^ abs(vec4<u32>(~u_input.c, 1u, var_1.b.x, var_1.b.x | 22310u)), var_1.a.x, _wgslsmith_f_op_f32(f32(-1f) * -1704f));
}

