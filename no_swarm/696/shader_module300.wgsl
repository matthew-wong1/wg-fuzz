struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: i32,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: f32,
    d: vec3<u32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 10> = array<Struct_2, 10>(Struct_2(vec3<i32>(20868i, -28124i, 19503i), 0i, Struct_1(-1226f), Struct_1(1446f), Struct_1(1296f)), Struct_2(vec3<i32>(-1i, 47960i, 1i), -82792i, Struct_1(-1524f), Struct_1(-2159f), Struct_1(-1000f)), Struct_2(vec3<i32>(5738i, 0i, -38987i), -12907i, Struct_1(-758f), Struct_1(-406f), Struct_1(1508f)), Struct_2(vec3<i32>(-17478i, -5225i, 2147483647i), 7041i, Struct_1(340f), Struct_1(-1633f), Struct_1(-308f)), Struct_2(vec3<i32>(-1i, 1i, -40172i), -1i, Struct_1(-209f), Struct_1(-314f), Struct_1(1000f)), Struct_2(vec3<i32>(i32(-2147483648), 2147483647i, i32(-2147483648)), 1i, Struct_1(693f), Struct_1(-402f), Struct_1(-1000f)), Struct_2(vec3<i32>(1i, -1i, 0i), 15163i, Struct_1(-714f), Struct_1(579f), Struct_1(148f)), Struct_2(vec3<i32>(-47160i, -6100i, -1i), -1082i, Struct_1(-1000f), Struct_1(197f), Struct_1(-840f)), Struct_2(vec3<i32>(-21946i, -6915i, 1i), 21262i, Struct_1(-183f), Struct_1(-766f), Struct_1(-1298f)), Struct_2(vec3<i32>(i32(-2147483648), -1i, i32(-2147483648)), -27867i, Struct_1(804f), Struct_1(384f), Struct_1(1226f)));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: vec4<i32>, arg_1: u32) -> bool {
    var var_0 = _wgslsmith_div_vec3_f32(vec3<f32>(210f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1475f))) + _wgslsmith_f_op_f32(623f - 1293f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1000f * 1334f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(388f)) * _wgslsmith_f_op_f32(trunc(1000f)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) - _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 970f, 412f)), vec3<f32>(-696f, -1313f, -147f))))));
    var var_1 = ~vec3<i32>(~(~(-10267i)), _wgslsmith_add_i32(-firstLeadingBit(u_input.a), _wgslsmith_mult_i32(abs(33222i), min(u_input.a, -12378i))), arg_0.x);
    return true;
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_1) -> bool {
    let var_0 = vec4<i32>(firstTrailingBit(-(~(-u_input.a))), 2147483647i, 2147483647i, reverseBits(_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(17626i, u_input.a, -1i)) ^ ~vec3<i32>(u_input.a, u_input.a, -39747i), _wgslsmith_add_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(4024i, 27734i, -15368i), vec3<i32>(-2147483647i, 2147483647i, 2147483647i)), -vec3<i32>(30351i, u_input.a, 1i)))));
    var var_1 = _wgslsmith_f_op_f32(-1153f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a * _wgslsmith_f_op_f32(abs(239f)))), _wgslsmith_f_op_f32(arg_1.a - _wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(arg_0.x * arg_0.x)))));
    let var_2 = var_0 & abs(max(var_0, ~var_0));
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(arg_1.a)))))));
    let var_3 = !vec3<bool>(false, select(func_2(select(var_0, var_0, vec4<bool>(true, false, false, true)), 1u), true, any(vec4<bool>(true, true, true, true))), false == (any(vec3<bool>(false, true, false)) | select(true, true, true)));
    return true;
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2) -> f32 {
    global0 = array<Struct_2, 10>();
    let var_0 = select(true, true, any(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), vec4<bool>(arg_1.a.x < u_input.a, func_2(vec4<i32>(1i, -63506i, u_input.a, 31239i), 0u), true, 195f <= arg_0.c.a), true)));
    var var_1 = vec4<i32>(-1i, _wgslsmith_add_i32(28431i, ~(~u_input.a) ^ _wgslsmith_dot_vec3_i32(arg_0.a, vec3<i32>(u_input.a, 1i, 23565i))), ~(-countOneBits(arg_1.a.x) << (1u % 32u)), 22097i);
    var_1 = vec4<i32>(u_input.a, u_input.a, i32(-1i) * -1i, -(~_wgslsmith_dot_vec3_i32(vec3<i32>(var_1.x, arg_1.a.x, 34440i) << (vec3<u32>(19812u, 0u, 58091u) % vec3<u32>(32u)), firstLeadingBit(vec3<i32>(var_1.x, u_input.a, 39965i)))));
    var var_2 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f * arg_1.d.a), arg_0.d.a)), arg_0.e.a));
    return _wgslsmith_f_op_f32(f32(-1f) * -942f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false & func_1(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(523f, -125f, -827f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1284f, 1002f, 1276f) * vec3<f32>(170f, -2980f, 1675f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1128f, -1217f, 475f) - vec3<f32>(1221f, -492f, 369f)))), Struct_1(-126f));
    global0 = array<Struct_2, 10>();
    var_0 = func_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, _wgslsmith_f_op_f32(func_3(Struct_2(vec3<i32>(u_input.a, -23171i, u_input.a), u_input.a, Struct_1(-849f), Struct_1(1336f), Struct_1(373f)), global0[_wgslsmith_index_u32(~1u, 10u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-778f, 929f)))) + vec3<f32>(-517f, _wgslsmith_f_op_f32(1f + 1000f), 1f)), Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-168f * _wgslsmith_f_op_f32(max(1379f, 740f)))))));
    let var_1 = !(1u == abs(~select(0u, 57971u, true)));
    var var_2 = vec3<i32>(-u_input.a, u_input.a >> (_wgslsmith_dot_vec3_u32(max(reverseBits(vec3<u32>(4294967295u, 70487u, 4294967295u)), vec3<u32>(0u, 3063u, 1u)), ~vec3<u32>(23474u, 10097u, 68447u)) % 32u), 2147483647i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(0u, 0u), -_wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, 2147483647i, -2147483647i), vec3<i32>(-1i, var_2.x, -557i)), 0i, ~var_2.x), max(vec3<i32>(var_2.x, var_2.x, var_2.x), vec3<i32>(0i, -2147483647i, u_input.a))), 1487f, vec3<u32>(4294967295u, ~_wgslsmith_mod_u32(0u, _wgslsmith_clamp_u32(1u, 43557u, 4294967295u)), _wgslsmith_add_u32(22711u, 1u)), _wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, var_2.x, 0i, var_2.x), vec4<i32>(45695i, var_2.x, -2147483647i, u_input.a)), select(19141i, u_input.a, false), select(u_input.a, var_2.x, var_1), -43732i), ~vec4<i32>(2147483647i, 13446i, var_2.x, u_input.a)) >> (reverseBits(~vec4<u32>(1u, 1u, 1u, 1u)) % vec4<u32>(32u)));
}

