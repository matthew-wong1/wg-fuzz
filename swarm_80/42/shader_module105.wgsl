struct Struct_1 {
    a: vec4<f32>,
    b: vec3<f32>,
    c: i32,
}

struct Struct_2 {
    a: i32,
    b: f32,
    c: vec4<u32>,
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

var<private> global0: array<vec3<f32>, 9> = array<vec3<f32>, 9>(vec3<f32>(830f, -615f, 639f), vec3<f32>(1055f, 896f, 1000f), vec3<f32>(847f, -357f, 1000f), vec3<f32>(-1000f, -1056f, -778f), vec3<f32>(-894f, -340f, -656f), vec3<f32>(2046f, -335f, 2417f), vec3<f32>(581f, 2206f, 1482f), vec3<f32>(-1000f, -1619f, -734f), vec3<f32>(-938f, -1863f, -126f));

var<private> global1: array<vec4<i32>, 31> = array<vec4<i32>, 31>(vec4<i32>(-6031i, -17602i, -13452i, -19527i), vec4<i32>(18621i, 1i, 53197i, -1i), vec4<i32>(i32(-2147483648), 1i, -18150i, 0i), vec4<i32>(-13419i, 50496i, -1i, -51983i), vec4<i32>(-1i, 6206i, 2147483647i, -1i), vec4<i32>(-15134i, 66865i, -1i, 23800i), vec4<i32>(74332i, 1i, -1i, 0i), vec4<i32>(0i, 1808i, i32(-2147483648), i32(-2147483648)), vec4<i32>(58567i, -1i, -38522i, 41330i), vec4<i32>(0i, -28575i, 2147483647i, i32(-2147483648)), vec4<i32>(8201i, 2147483647i, -41894i, i32(-2147483648)), vec4<i32>(-1i, 0i, -39742i, 18517i), vec4<i32>(2147483647i, i32(-2147483648), 1i, 18281i), vec4<i32>(57727i, i32(-2147483648), -25698i, -19222i), vec4<i32>(-23023i, -67312i, -30971i, -1i), vec4<i32>(28889i, -38527i, 0i, 11057i), vec4<i32>(37596i, -8972i, 0i, 12764i), vec4<i32>(-31208i, 0i, -25693i, -1031i), vec4<i32>(i32(-2147483648), -44271i, -28177i, 1i), vec4<i32>(-65344i, -15923i, -44938i, 1i), vec4<i32>(1i, -13101i, -29396i, 4736i), vec4<i32>(6991i, 20338i, 0i, 2147483647i), vec4<i32>(2147483647i, 0i, 2147483647i, 4547i), vec4<i32>(2147483647i, i32(-2147483648), 1i, 1239i), vec4<i32>(-1i, -18807i, 13718i, 56842i), vec4<i32>(0i, -12862i, 0i, 0i), vec4<i32>(11802i, -20032i, -1i, 2147483647i), vec4<i32>(6826i, 2147483647i, 0i, 45250i), vec4<i32>(1i, -4265i, 14603i, 2147483647i), vec4<i32>(1i, 0i, 37404i, 30218i), vec4<i32>(15659i, -29109i, -80620i, -21314i));

var<private> global2: array<vec3<f32>, 10>;

var<private> global3: array<Struct_2, 4>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> f32 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(1131f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2184f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-630f - 1043f), _wgslsmith_f_op_f32(769f + -1000f))), _wgslsmith_f_op_f32(-307f + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1000f * 1741f)))))), -1000f);
    var_0 = _wgslsmith_f_op_vec3_f32(trunc(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_mult_u32(1u, ~1u | _wgslsmith_dot_vec2_u32(vec2<u32>(36631u, 0u), vec2<u32>(50818u, 27715u))), ~_wgslsmith_mod_u32(_wgslsmith_mult_u32(51676u, 0u), ~1u), _wgslsmith_sub_u32(~(~76402u), select(80401u, 56826u, true) ^ ~4294967295u)), 9u)]));
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1655f, _wgslsmith_f_op_f32(max(var_0.x, var_0.x)), _wgslsmith_f_op_f32(var_0.x * var_0.x), 1194f)), vec4<f32>(var_0.x, _wgslsmith_f_op_f32(-1575f + var_0.x), _wgslsmith_f_op_f32(216f - _wgslsmith_f_op_f32(var_0.x - -1673f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(245f)))), false)), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(firstLeadingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(17783u, 1u, 39004u), vec3<u32>(62890u, 0u, 33235u))), ~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 0u, 84510u), vec3<u32>(1u, 52598u, 21043u))), vec2<u32>(countOneBits(0u), ~1u)), 9u)], 2727i);
    let var_2 = 1001f;
    let var_3 = vec2<i32>(_wgslsmith_div_i32(_wgslsmith_div_i32(max(var_1.c >> (1u % 32u), ~(-2147483647i)), min(-9619i, ~u_input.a)), -2147483647i), _wgslsmith_clamp_i32(23241i, var_1.c, _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(abs(vec2<i32>(u_input.a, 0i)), select(vec2<i32>(8386i, var_1.c), vec2<i32>(var_1.c, var_1.c), vec2<bool>(false, false))), ~(-1i))));
    return _wgslsmith_f_op_f32(floor(-581f));
}

fn func_2(arg_0: f32, arg_1: f32, arg_2: vec3<i32>) -> u32 {
    let var_0 = Struct_2(~(-11462i), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_3()))), countOneBits(min(vec4<u32>(0u, 5051u, 1u, 25526u), vec4<u32>(25843u, 12959u, 1u, 896u))) & ~_wgslsmith_div_vec4_u32(vec4<u32>(14829u, 4294967295u, 1u, 0u), _wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 37975u, 70778u), vec4<u32>(0u, 1u, 4294967295u, 15540u), vec4<u32>(54498u, 4294967295u, 0u, 8841u))));
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, var_0.b, arg_1, -1293f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_0, var_0.b, arg_0, var_0.b), vec4<f32>(arg_1, arg_0, 1310f, 1316f)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_0.b), -779f, -1145f) + _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_0, -693f, -1000f))))), abs(43829i));
    var var_2 = !select(vec4<bool>(all(vec3<bool>(false, false, false)), select(var_0.c.x, var_0.c.x, true) != (var_0.c.x & 21140u), any(vec3<bool>(false, false, true)), select(all(vec3<bool>(true, true, false)), true, true)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), true), all(vec3<bool>(true, true, true)));
    let var_3 = var_1.a.x;
    let var_4 = firstTrailingBit(select(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-24224i, 0i, -93035i, var_0.a), global1[_wgslsmith_index_u32(var_0.c.x, 31u)]), _wgslsmith_dot_vec4_i32(global1[_wgslsmith_index_u32(var_0.c.x, 31u)], vec4<i32>(2147483647i, u_input.a, -30856i, 21186i))) ^ (-vec2<i32>(40311i, var_0.a) << (var_0.c.zy % vec2<u32>(32u))), vec2<i32>(var_1.c, _wgslsmith_clamp_i32(~2147483647i, -19791i, ~(-1i))), var_2.x));
    return (18781u | _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(firstLeadingBit(vec2<u32>(0u, var_0.c.x)), select(var_0.c.wy, vec2<u32>(4294967295u, 5254u), var_2.x), var_0.c.zy ^ vec2<u32>(4294967295u, var_0.c.x)), var_0.c.yz)) >> (~1u % 32u);
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_2) -> i32 {
    global2 = array<vec3<f32>, 10>();
    let var_0 = Struct_2(-u_input.a | ((u_input.a ^ 2147483647i) | u_input.a), -237f, abs(vec4<u32>(arg_1.c.x, _wgslsmith_sub_u32(arg_1.c.x << (arg_1.c.x % 32u), arg_1.c.x), 19123u, _wgslsmith_clamp_u32(func_2(arg_1.b, arg_1.b, vec3<i32>(u_input.a, arg_1.a, 35076i)), arg_1.c.x, arg_1.c.x))));
    var var_1 = Struct_1(vec4<f32>(_wgslsmith_div_f32(-677f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.b + -312f) - _wgslsmith_f_op_f32(func_3()))), 1f, var_0.b, var_0.b), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(2116f, arg_1.b, arg_1.b))) - _wgslsmith_div_vec3_f32(global2[_wgslsmith_index_u32(var_0.c.x, 10u)], vec3<f32>(-519f, 1681f, -1039f)))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_0.b, arg_1.b, var_0.b))), vec3<f32>(227f, 1170f, arg_1.b))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(global2[_wgslsmith_index_u32(0u, 10u)], vec3<f32>(-233f, arg_1.b, arg_1.b)) * vec3<f32>(913f, var_0.b, arg_1.b)))), _wgslsmith_sub_i32(-4181i, select(-1651i, firstTrailingBit(2147483647i), select(true, true, arg_0.x)) | _wgslsmith_mult_i32(firstTrailingBit(2147483647i), -9106i)));
    var var_2 = 23786u;
    var var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(-var_1.a), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1372f, -912f, -1157f)))) - vec3<f32>(-1404f, var_1.a.x, -145f))), 1i);
    return _wgslsmith_mult_i32(~(-(~_wgslsmith_mod_i32(0i, arg_1.a))), -1i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var_0 = true;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-683f)))))));
    let var_2 = !vec3<bool>(true, !(var_1 > -1000f), !(!(var_1 <= -349f)));
    let var_3 = _wgslsmith_f_op_f32(var_1 - var_1);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec3_i32(-vec3<i32>(~u_input.a, i32(-1i) * -21511i, ~(-9476i)), vec3<i32>(-2147483647i, _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(global1[_wgslsmith_index_u32(46727u, 31u)], global1[_wgslsmith_index_u32(34488u, 31u)]), vec4<i32>(-11732i, u_input.a, 2147483647i, 1i) << (vec4<u32>(0u, 23362u, 25816u, 38637u) % vec4<u32>(32u))), -func_1(var_2.yy, Struct_2(2147483647i, 192f, vec4<u32>(0u, 4025u, 0u, 0u))))));
}

