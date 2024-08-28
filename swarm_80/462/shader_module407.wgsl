struct Struct_1 {
    a: i32,
    b: u32,
    c: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_2,
    c: vec2<bool>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: u32,
    d: i32,
    e: i32,
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

var<private> global0: u32;

var<private> global1: array<vec3<f32>, 31> = array<vec3<f32>, 31>(vec3<f32>(1917f, -1364f, -388f), vec3<f32>(-904f, -892f, 1435f), vec3<f32>(-1556f, 803f, -293f), vec3<f32>(1000f, -224f, 1524f), vec3<f32>(805f, 182f, -866f), vec3<f32>(346f, -918f, -526f), vec3<f32>(608f, -225f, 2961f), vec3<f32>(-467f, -566f, -108f), vec3<f32>(1526f, 1000f, 672f), vec3<f32>(1565f, -718f, -1299f), vec3<f32>(522f, -851f, -1408f), vec3<f32>(754f, 1000f, 1589f), vec3<f32>(-416f, -750f, -542f), vec3<f32>(-1405f, 1000f, 1993f), vec3<f32>(690f, 433f, 2004f), vec3<f32>(-274f, 761f, 1368f), vec3<f32>(1000f, -265f, 533f), vec3<f32>(-534f, -1035f, 1445f), vec3<f32>(1779f, 1326f, -277f), vec3<f32>(-1107f, 986f, 1000f), vec3<f32>(213f, -373f, -504f), vec3<f32>(1003f, 630f, 1000f), vec3<f32>(709f, -1020f, -1891f), vec3<f32>(1285f, 1020f, 1450f), vec3<f32>(-197f, -768f, -165f), vec3<f32>(-121f, 192f, -209f), vec3<f32>(164f, 805f, -291f), vec3<f32>(-286f, -515f, 408f), vec3<f32>(2255f, -1764f, -1000f), vec3<f32>(-696f, 313f, 1000f), vec3<f32>(925f, -1000f, 1058f));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_4) -> f32 {
    global0 = ~(arg_1.b.d.b | ~_wgslsmith_dot_vec3_u32(~vec3<u32>(20730u, u_input.c, arg_0.b.a.b), vec3<u32>(41734u, 4294967295u, u_input.b.x)));
    var var_0 = all(select(select(vec4<bool>(any(vec2<bool>(arg_0.a.x, arg_1.a.x)), arg_0.a.x, all(arg_0.a), u_input.c >= u_input.c), arg_0.a, true), select(!arg_1.a, select(arg_1.a, select(arg_1.a, arg_0.a, arg_0.a), select(vec4<bool>(arg_1.a.x, arg_0.a.x, false, arg_1.a.x), vec4<bool>(arg_1.a.x, arg_0.a.x, arg_0.a.x, arg_0.a.x), vec4<bool>(true, arg_0.a.x, arg_0.a.x, arg_1.a.x))), arg_0.a.x), arg_0.a.x));
    global1 = array<vec3<f32>, 31>();
    global0 = _wgslsmith_add_u32(arg_1.b.b.b, u_input.c);
    var var_1 = 32903u >= firstTrailingBit(~arg_1.b.a.b);
    return _wgslsmith_f_op_f32(-arg_1.b.b.c.x);
}

fn func_2(arg_0: vec4<bool>, arg_1: vec3<bool>, arg_2: Struct_4) -> Struct_3 {
    var var_0 = Struct_3(vec2<i32>(-1i) * -_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.e, arg_2.b.a.a), reverseBits(vec2<i32>(-34880i, u_input.e)), vec2<i32>(-44633i, 5202i)), Struct_2(Struct_1(-12930i, 96813u, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.b.d.c.x, 1564f, 1524f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.b.a.c.x, -954f, arg_2.b.a.c.x) + vec3<f32>(arg_2.b.a.c.x, arg_2.b.d.c.x, arg_2.b.b.c.x)))), arg_2.b.a, ~(-u_input.d), arg_2.b.d), vec2<bool>(all(vec3<bool>(!arg_1.x, arg_2.a.x, arg_1.x)), all(!vec2<bool>(arg_0.x, false)) || (4294967295u >= ~u_input.b.x)));
    global0 = 3485u >> (arg_2.b.d.b % 32u);
    global1 = array<vec3<f32>, 31>();
    var var_1 = _wgslsmith_mult_u32(55189u, ~(~1u));
    var var_2 = vec4<f32>(-914f, -1051f, -714f, _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(arg_2, Struct_4(vec4<bool>(false, arg_2.a.x, false, false), arg_2.b))) - _wgslsmith_f_op_f32(floor(-892f))), _wgslsmith_f_op_f32(var_0.b.b.c.x - _wgslsmith_f_op_f32(-arg_2.b.b.c.x))))));
    return Struct_3(_wgslsmith_mult_vec2_i32(var_0.a, var_0.a), Struct_2(var_0.b.b, Struct_1(~(-18585i), var_0.b.d.b, _wgslsmith_f_op_vec3_f32(floor(var_0.b.b.c))), _wgslsmith_dot_vec2_i32(-var_0.a, var_0.a) << (~(var_0.b.a.b | 6612u) % 32u), arg_2.b.b), arg_1.yy);
}

fn func_4(arg_0: Struct_3, arg_1: f32, arg_2: i32) -> f32 {
    let var_0 = vec2<bool>(arg_0.c.x, arg_0.c.x);
    global0 = ~(~arg_0.b.a.b);
    var var_1 = vec3<f32>(arg_0.b.b.c.x, arg_0.b.b.c.x, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(905f, _wgslsmith_f_op_f32(select(1667f, -259f, !arg_0.c.x))))));
    let var_2 = func_2(select(select(select(vec4<bool>(arg_0.c.x, arg_0.c.x, var_0.x, arg_0.c.x), !vec4<bool>(true, false, var_0.x, var_0.x), true), !select(vec4<bool>(true, arg_0.c.x, var_0.x, false), vec4<bool>(var_0.x, var_0.x, var_0.x, arg_0.c.x), vec4<bool>(arg_0.c.x, var_0.x, arg_0.c.x, arg_0.c.x)), !vec4<bool>(false, arg_0.c.x, arg_0.c.x, true)), select(select(select(vec4<bool>(arg_0.c.x, arg_0.c.x, false, true), vec4<bool>(var_0.x, false, false, var_0.x), vec4<bool>(false, var_0.x, true, arg_0.c.x)), !vec4<bool>(arg_0.c.x, arg_0.c.x, true, var_0.x), !vec4<bool>(true, false, arg_0.c.x, arg_0.c.x)), select(select(vec4<bool>(false, var_0.x, arg_0.c.x, arg_0.c.x), vec4<bool>(false, true, false, true), vec4<bool>(var_0.x, false, false, false)), select(vec4<bool>(false, arg_0.c.x, arg_0.c.x, true), vec4<bool>(true, var_0.x, false, true), false), select(vec4<bool>(var_0.x, arg_0.c.x, var_0.x, true), vec4<bool>(false, true, false, var_0.x), var_0.x)), vec4<bool>(arg_0.c.x != true, var_0.x, !arg_0.c.x, !arg_0.c.x)), !arg_0.c.x), vec3<bool>(all(vec2<bool>(func_2(vec4<bool>(var_0.x, arg_0.c.x, true, false), vec3<bool>(var_0.x, true, var_0.x), Struct_4(vec4<bool>(false, arg_0.c.x, var_0.x, false), Struct_2(arg_0.b.a, arg_0.b.d, arg_2, arg_0.b.b))).c.x, arg_0.c.x)), any(select(vec3<bool>(var_0.x, false, var_0.x), !vec3<bool>(false, arg_0.c.x, var_0.x), !vec3<bool>(var_0.x, var_0.x, true))), false), Struct_4(vec4<bool>(true, max(137042u, arg_0.b.a.b) < arg_0.b.b.b, true, any(vec4<bool>(var_0.x, var_0.x, false, arg_0.c.x))), Struct_2(Struct_1(-28352i, arg_0.b.b.b, vec3<f32>(var_1.x, 854f, -2073f)), Struct_1(max(arg_0.b.c, 11157i), _wgslsmith_dot_vec2_u32(u_input.a.ww, u_input.a.zw), vec3<f32>(664f, var_1.x, -1000f)), 39372i, func_2(!vec4<bool>(var_0.x, false, var_0.x, var_0.x), select(vec3<bool>(var_0.x, arg_0.c.x, var_0.x), vec3<bool>(true, true, false), vec3<bool>(arg_0.c.x, arg_0.c.x, var_0.x)), Struct_4(vec4<bool>(arg_0.c.x, true, false, var_0.x), arg_0.b)).b.a))).b;
    let var_3 = (false && ((var_0.x | (var_0.x & false)) || (abs(arg_0.b.a.b) <= ~0u))) | false;
    return _wgslsmith_f_op_f32(arg_0.b.d.c.x * 830f);
}

fn func_1(arg_0: bool, arg_1: vec4<i32>, arg_2: vec4<i32>) -> u32 {
    global1 = array<vec3<f32>, 31>();
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(global1[_wgslsmith_index_u32(4294967295u, 31u)], _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(-1000f - 606f), _wgslsmith_f_op_f32(step(-799f, 266f)), 827f), vec3<f32>(_wgslsmith_f_op_f32(trunc(-655f)), -1000f, _wgslsmith_f_op_f32(abs(-103f)))))) * vec3<f32>(-485f, -560f, _wgslsmith_f_op_f32(f32(-1f) * -223f)));
    let var_1 = var_0.zx;
    let var_2 = min(0i, arg_1.x);
    var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(928f, _wgslsmith_f_op_f32(sign(661f)), 1f)) + vec3<f32>(var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_1.x)) * _wgslsmith_f_op_f32(1072f + _wgslsmith_f_op_f32(var_1.x * -943f))), _wgslsmith_f_op_f32(func_4(func_2(!vec4<bool>(arg_0, false, true, false), vec3<bool>(false, true, arg_0), Struct_4(vec4<bool>(true, arg_0, true, true), Struct_2(Struct_1(0i, u_input.c, vec3<f32>(1705f, var_1.x, 1941f)), Struct_1(9674i, u_input.c, global1[_wgslsmith_index_u32(u_input.b.x, 31u)]), 2595i, Struct_1(1i, 0u, global1[_wgslsmith_index_u32(0u, 31u)])))), _wgslsmith_f_op_f32(1977f + _wgslsmith_f_op_f32(1502f * 390f)), (i32(-1i) * -2147483647i) | arg_1.x))));
    return _wgslsmith_dot_vec3_u32(select(abs(u_input.a.yxx), vec3<u32>(6604u, countOneBits(u_input.c) ^ ~u_input.c, (11957u << (u_input.c % 32u)) | 65755u), true), u_input.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.d & u_input.d;
    global0 = _wgslsmith_mult_u32(func_1(all(vec4<bool>(false, false, false, true)), -select(vec4<i32>(-4327i, u_input.d, 61237i, u_input.e), vec4<i32>(u_input.d, -1i, u_input.e, u_input.e), vec4<bool>(true, true, true, false)), -reverseBits(vec4<i32>(0i, u_input.d, 36106i, -30742i))) & u_input.b.x, ~u_input.c ^ 1u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_2(vec4<bool>(true, true, true, true), vec3<bool>(false, true, false), Struct_4(vec4<bool>(true, true, true, false), Struct_2(Struct_1(u_input.d, 4294967295u, global1[_wgslsmith_index_u32(22110u, 31u)]), Struct_1(53417i, u_input.c, vec3<f32>(2409f, -321f, -1148f)), -1i, Struct_1(u_input.d, u_input.c, global1[_wgslsmith_index_u32(1u, 31u)])))).b.d.c.xx - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1121f, 571f), _wgslsmith_f_op_vec2_f32(vec2<f32>(178f, 1000f) - vec2<f32>(-428f, 1004f)), vec2<bool>(false, true)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-583f, -1375f))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-558f, -231f) * vec2<f32>(-1345f, 1693f))))));
}

