struct Struct_1 {
    a: vec4<bool>,
    b: vec3<f32>,
    c: f32,
    d: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 24> = array<Struct_1, 24>(Struct_1(vec4<bool>(true, true, true, true), vec3<f32>(439f, -1806f, -304f), -218f, false), Struct_1(vec4<bool>(true, true, false, false), vec3<f32>(694f, 1857f, 1000f), -896f, false), Struct_1(vec4<bool>(true, true, true, false), vec3<f32>(-2768f, 510f, -1000f), 881f, false), Struct_1(vec4<bool>(false, false, false, false), vec3<f32>(336f, 267f, -1000f), -422f, false), Struct_1(vec4<bool>(true, false, false, true), vec3<f32>(682f, 1000f, 1125f), 1645f, true), Struct_1(vec4<bool>(false, true, false, false), vec3<f32>(1000f, -1000f, -1146f), 1000f, false), Struct_1(vec4<bool>(false, true, false, true), vec3<f32>(1000f, 1000f, -997f), -1110f, true), Struct_1(vec4<bool>(false, true, false, false), vec3<f32>(-600f, -1370f, 1142f), 360f, false), Struct_1(vec4<bool>(true, true, true, true), vec3<f32>(-2313f, -914f, 289f), -1567f, true), Struct_1(vec4<bool>(true, false, true, true), vec3<f32>(1588f, 449f, 161f), -411f, false), Struct_1(vec4<bool>(true, false, false, false), vec3<f32>(-1393f, -264f, -475f), -1419f, false), Struct_1(vec4<bool>(true, true, false, true), vec3<f32>(-441f, 820f, -311f), -872f, true), Struct_1(vec4<bool>(true, false, false, false), vec3<f32>(1168f, -1000f, 270f), 239f, true), Struct_1(vec4<bool>(false, false, true, true), vec3<f32>(-2335f, -2462f, 1000f), 1371f, false), Struct_1(vec4<bool>(true, false, false, false), vec3<f32>(709f, -115f, -1000f), 875f, true), Struct_1(vec4<bool>(false, false, false, false), vec3<f32>(740f, -391f, 718f), 1739f, false), Struct_1(vec4<bool>(false, false, false, true), vec3<f32>(481f, -663f, 502f), 180f, false), Struct_1(vec4<bool>(true, false, true, true), vec3<f32>(444f, -900f, 1374f), 1000f, false), Struct_1(vec4<bool>(false, true, true, true), vec3<f32>(1171f, -1442f, -494f), 148f, true), Struct_1(vec4<bool>(true, false, true, true), vec3<f32>(-1606f, 138f, -112f), -1000f, false), Struct_1(vec4<bool>(true, true, true, false), vec3<f32>(622f, -119f, -163f), 2012f, false), Struct_1(vec4<bool>(true, false, false, false), vec3<f32>(-2167f, 2131f, 1372f), 1061f, true), Struct_1(vec4<bool>(false, false, true, false), vec3<f32>(408f, 120f, 1053f), 1000f, true), Struct_1(vec4<bool>(false, false, false, false), vec3<f32>(910f, -263f, 1012f), -210f, false));

var<private> global1: array<vec3<bool>, 15>;

var<private> global2: array<vec2<u32>, 31>;

var<private> global3: array<Struct_1, 26>;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: vec2<f32>, arg_1: f32, arg_2: Struct_1) -> u32 {
    let var_0 = Struct_1(!vec4<bool>(arg_2.d, false, false, !(1u == u_input.a.x)), _wgslsmith_f_op_vec3_f32(-arg_2.b), _wgslsmith_f_op_f32(f32(-1f) * -1000f), all(vec4<bool>(arg_2.d & true, any(select(vec2<bool>(arg_2.a.x, true), arg_2.a.yy, vec2<bool>(true, false))), _wgslsmith_div_f32(arg_0.x, -611f) >= -779f, true)));
    let var_1 = ~_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(45709u, u_input.a.x, 0u, 1u), vec4<u32>(u_input.b, u_input.b, u_input.a.x, u_input.a.x)), u_input.a) >> (1701u % 32u), u_input.b << (min(~94748u, firstLeadingBit(4194u)) % 32u));
    global3 = array<Struct_1, 26>();
    var var_2 = abs(select(~_wgslsmith_div_vec2_u32(u_input.a.xy, u_input.a.yw) | vec2<u32>(_wgslsmith_mult_u32(18161u, var_1), var_1), _wgslsmith_clamp_vec2_u32(~(~vec2<u32>(u_input.b, var_1)), u_input.a.xy & _wgslsmith_sub_vec2_u32(vec2<u32>(var_1, u_input.c), vec2<u32>(17233u, 0u)), ~vec2<u32>(var_1, u_input.b)), !(!(!arg_2.d))));
    global3 = array<Struct_1, 26>();
    return ~4294967295u;
}

fn func_2(arg_0: u32) -> vec4<i32> {
    global2 = array<vec2<u32>, 31>();
    var var_0 = global3[_wgslsmith_index_u32(0u, 26u)];
    let var_1 = global0[_wgslsmith_index_u32(select(~arg_0, 0u, !var_0.a.x), 24u)];
    var var_2 = global0[_wgslsmith_index_u32(~_wgslsmith_add_u32(30381u, ~min(_wgslsmith_dot_vec4_u32(u_input.a, u_input.a), func_3(vec2<f32>(-1178f, -118f), var_1.b.x, Struct_1(vec4<bool>(false, var_0.d, true, true), vec3<f32>(var_1.c, var_0.c, -495f), -1558f, false)))), 24u)];
    let var_3 = Struct_1(select(vec4<bool>(any(select(var_0.a.yzz, var_2.a.xwy, false)), !all(vec2<bool>(false, false)), true, true | all(vec4<bool>(false, var_1.d, var_1.d, var_1.d))), !vec4<bool>(var_2.d | var_1.a.x, all(global1[_wgslsmith_index_u32(arg_0, 15u)]), true, !var_0.a.x), !vec4<bool>(any(vec4<bool>(true, var_1.a.x, var_2.d, false)), var_0.a.x, any(vec4<bool>(var_0.a.x, var_2.d, false, false)), true)), _wgslsmith_div_vec3_f32(var_1.b, _wgslsmith_f_op_vec3_f32(-var_2.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(688f * _wgslsmith_f_op_f32(step(-291f, var_2.b.x))))), all(select(select(!vec2<bool>(var_2.d, true), vec2<bool>(var_0.a.x, true), var_2.d), vec2<bool>(!var_0.d, true), var_0.a.x)));
    return _wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(~vec4<i32>(u_input.d.x, 0i, _wgslsmith_add_i32(-16933i, 0i), ~u_input.d.x), _wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.d.x, u_input.d.x, 9126i, -2147483647i), vec4<i32>(u_input.d.x, u_input.d.x, -12176i, 25786i)) << (u_input.a % vec4<u32>(32u)), vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d.x, u_input.d.x), u_input.d.yz), -31671i ^ u_input.d.x, firstTrailingBit(u_input.d.x), u_input.d.x))), select(countOneBits(vec4<i32>(abs(-21753i), firstTrailingBit(u_input.d.x), u_input.d.x, u_input.d.x | 2147483647i)), vec4<i32>(u_input.d.x, -u_input.d.x, u_input.d.x | 41567i, 1i) << (u_input.a % vec4<u32>(32u)), vec4<bool>(true, true, true, select(any(var_3.a), var_3.d, any(vec3<bool>(true, false, false))))));
}

fn func_4(arg_0: i32, arg_1: i32, arg_2: Struct_1) -> vec2<bool> {
    let var_0 = 1u;
    global3 = array<Struct_1, 26>();
    return vec2<bool>(any(select(select(select(vec3<bool>(arg_2.d, true, arg_2.d), global1[_wgslsmith_index_u32(71478u, 15u)], global1[_wgslsmith_index_u32(4294967295u, 15u)]), global1[_wgslsmith_index_u32(58023u, 15u)], !arg_2.d), select(select(vec3<bool>(false, arg_2.a.x, true), vec3<bool>(arg_2.a.x, true, true), vec3<bool>(true, true, arg_2.a.x)), vec3<bool>(true, true, false), !arg_2.d), (arg_2.d || true) || any(arg_2.a.zy))), false);
}

fn func_1() -> vec2<bool> {
    global0 = array<Struct_1, 24>();
    let var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(1434f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1186f) * 1214f))));
    global0 = array<Struct_1, 24>();
    let var_1 = global0[_wgslsmith_index_u32(u_input.c, 24u)];
    global3 = array<Struct_1, 26>();
    return func_4(1i, _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(func_2(u_input.b), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.d.x, -15629i, -27578i, -2147483647i), vec4<i32>(27082i, 5570i, 5709i, 21493i))) << (u_input.c % 32u), ~_wgslsmith_sub_i32(_wgslsmith_sub_i32(u_input.d.x, u_input.d.x), 14391i)), Struct_1(select(select(var_1.a, !var_1.a, var_1.d), vec4<bool>(all(var_1.a.zw), !var_1.d, any(vec4<bool>(true, var_1.a.x, var_1.a.x, true)), var_1.d), !var_1.d), var_1.b, 607f, var_1.d || !var_1.d));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !select(!select(func_1(), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(all(vec2<bool>(false, true)) | true, any(vec3<bool>(true, true, true))), vec2<bool>(false, false));
    let var_1 = Struct_1(vec4<bool>(var_0.x, !var_0.x, true, false), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(348f - -1448f)), -295f, -963f))), -1000f, true);
    let var_2 = Struct_1(vec4<bool>(!select(9904u > u_input.b, var_1.a.x, any(vec3<bool>(var_1.a.x, false, var_0.x))), true, var_0.x, any(select(!global1[_wgslsmith_index_u32(19146u, 15u)], select(global1[_wgslsmith_index_u32(u_input.c, 15u)], vec3<bool>(true, true, false), true), !vec3<bool>(var_0.x, false, true)))), vec3<f32>(_wgslsmith_f_op_f32(select(var_1.c, var_1.c, var_1.d)), _wgslsmith_f_op_f32(-var_1.c), var_1.b.x), var_1.b.x, true);
    var var_3 = _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(2393f, var_1.c))), _wgslsmith_f_op_f32(-var_1.b.x), var_2.c)));
    var_3 = _wgslsmith_f_op_vec3_f32(var_1.b + var_1.b);
    var var_4 = var_1.b;
    var_0 = vec2<bool>(((max(u_input.b, u_input.c) >> (abs(1u) % 32u)) & u_input.c) != _wgslsmith_mult_u32(u_input.c, abs(43149u)), _wgslsmith_dot_vec2_u32(global2[_wgslsmith_index_u32(reverseBits(reverseBits(18347u)), 31u)], u_input.a.wy) <= (u_input.b | 4294967295u));
    let var_5 = 1820i;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(~u_input.b, u_input.b, 1u, _wgslsmith_div_u32(~countOneBits(u_input.a.x), u_input.b)));
}

