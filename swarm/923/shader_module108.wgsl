struct Struct_1 {
    a: bool,
    b: i32,
    c: vec4<i32>,
    d: vec4<u32>,
    e: u32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec3<bool>,
    d: vec2<bool>,
}

struct Struct_3 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: f32,
    d: vec2<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 16>;

var<private> global1: array<Struct_1, 31> = array<Struct_1, 31>(Struct_1(true, 10805i, vec4<i32>(-3341i, 48191i, -531i, 0i), vec4<u32>(0u, 0u, 1u, 12205u), 43625u), Struct_1(false, 2147483647i, vec4<i32>(-1i, 0i, 2147483647i, 149i), vec4<u32>(19509u, 1u, 1u, 4294967295u), 4294967295u), Struct_1(true, 1i, vec4<i32>(-27583i, 85561i, i32(-2147483648), -38557i), vec4<u32>(52150u, 0u, 0u, 4294967295u), 0u), Struct_1(false, 0i, vec4<i32>(19376i, 11123i, -53270i, 2147483647i), vec4<u32>(0u, 7262u, 6046u, 1u), 1u), Struct_1(true, 1i, vec4<i32>(1i, -26264i, 13741i, -1i), vec4<u32>(4294967295u, 4294967295u, 10913u, 0u), 0u), Struct_1(true, -366i, vec4<i32>(-1i, -23313i, 0i, 34723i), vec4<u32>(14870u, 4294967295u, 4294967295u, 0u), 93020u), Struct_1(true, 1i, vec4<i32>(-29083i, -36523i, i32(-2147483648), -1i), vec4<u32>(20489u, 39292u, 42208u, 0u), 40952u), Struct_1(true, 1i, vec4<i32>(-35737i, -1i, -14225i, 0i), vec4<u32>(38511u, 20679u, 4294967295u, 4294967295u), 1u), Struct_1(true, -10171i, vec4<i32>(16144i, -5520i, -20228i, 52848i), vec4<u32>(4294967295u, 1u, 4294967295u, 10130u), 15927u), Struct_1(true, 1i, vec4<i32>(4935i, -39029i, 1i, -1i), vec4<u32>(27403u, 1u, 83967u, 76368u), 1u), Struct_1(true, 0i, vec4<i32>(-3532i, 25810i, 1i, -3063i), vec4<u32>(4294967295u, 0u, 42084u, 4294967295u), 71630u), Struct_1(false, 0i, vec4<i32>(-21721i, -16586i, 0i, 22263i), vec4<u32>(1u, 0u, 4294967295u, 35946u), 4294967295u), Struct_1(false, 0i, vec4<i32>(1i, i32(-2147483648), 0i, 2147483647i), vec4<u32>(45535u, 1u, 54146u, 1u), 47184u), Struct_1(false, 2147483647i, vec4<i32>(i32(-2147483648), 25948i, 8203i, -22916i), vec4<u32>(0u, 0u, 30881u, 25768u), 0u), Struct_1(true, 8264i, vec4<i32>(1i, 2147483647i, 0i, -56500i), vec4<u32>(4294967295u, 33448u, 18829u, 129783u), 45420u), Struct_1(true, i32(-2147483648), vec4<i32>(2147483647i, -486i, 1i, 21188i), vec4<u32>(1u, 7946u, 35206u, 92881u), 58070u), Struct_1(false, 0i, vec4<i32>(52800i, i32(-2147483648), 2147483647i, -30558i), vec4<u32>(62158u, 0u, 1u, 22720u), 21389u), Struct_1(true, -20315i, vec4<i32>(1i, 15694i, 51624i, -105539i), vec4<u32>(54184u, 27077u, 2313u, 1u), 33926u), Struct_1(false, -1i, vec4<i32>(1i, 5689i, i32(-2147483648), i32(-2147483648)), vec4<u32>(29107u, 1u, 4993u, 0u), 27605u), Struct_1(false, 11499i, vec4<i32>(i32(-2147483648), 0i, -7842i, 0i), vec4<u32>(4294967295u, 1u, 0u, 4294967295u), 4294967295u), Struct_1(true, -20781i, vec4<i32>(i32(-2147483648), 0i, -7608i, 2147483647i), vec4<u32>(0u, 0u, 0u, 4294967295u), 22355u), Struct_1(false, -1i, vec4<i32>(-36084i, 4301i, i32(-2147483648), -1i), vec4<u32>(3302u, 1u, 1u, 0u), 1u), Struct_1(true, 0i, vec4<i32>(2147483647i, 2147483647i, 1i, 2147483647i), vec4<u32>(23793u, 0u, 64181u, 1u), 27147u), Struct_1(true, 0i, vec4<i32>(-1i, 50123i, -50884i, -1i), vec4<u32>(14724u, 44320u, 49097u, 0u), 22176u), Struct_1(true, i32(-2147483648), vec4<i32>(-1i, -5054i, -50267i, -1i), vec4<u32>(4294967295u, 33124u, 1u, 0u), 0u), Struct_1(true, 2147483647i, vec4<i32>(-49503i, -1i, 0i, 2147483647i), vec4<u32>(4294967295u, 0u, 4294967295u, 87360u), 33101u), Struct_1(true, 1i, vec4<i32>(i32(-2147483648), -1i, -3694i, -6759i), vec4<u32>(6166u, 0u, 11559u, 61248u), 132800u), Struct_1(true, -27167i, vec4<i32>(1i, 47495i, 0i, -14660i), vec4<u32>(4294967295u, 4294967295u, 69589u, 4294967295u), 81604u), Struct_1(false, 50533i, vec4<i32>(i32(-2147483648), 2147483647i, 21201i, -30309i), vec4<u32>(4294967295u, 4294967295u, 33631u, 1u), 0u), Struct_1(false, -1969i, vec4<i32>(1i, 6009i, -20490i, 8370i), vec4<u32>(4294967295u, 4294967295u, 14634u, 96039u), 24566u), Struct_1(true, 0i, vec4<i32>(i32(-2147483648), 13730i, i32(-2147483648), -9361i), vec4<u32>(0u, 1u, 3677u, 45660u), 0u));

var<private> global2: array<Struct_1, 19> = array<Struct_1, 19>(Struct_1(true, 101332i, vec4<i32>(-1i, -272i, 36800i, 1i), vec4<u32>(43843u, 0u, 29351u, 0u), 8909u), Struct_1(false, 2147483647i, vec4<i32>(0i, 1i, 1i, -1i), vec4<u32>(60401u, 48243u, 39343u, 18367u), 66326u), Struct_1(false, -1i, vec4<i32>(i32(-2147483648), 2147483647i, i32(-2147483648), -1i), vec4<u32>(20265u, 44300u, 0u, 0u), 21440u), Struct_1(false, -32442i, vec4<i32>(20747i, 0i, -1i, i32(-2147483648)), vec4<u32>(0u, 4294967295u, 0u, 33335u), 4294967295u), Struct_1(true, 31723i, vec4<i32>(-2108i, 1i, -1i, -38536i), vec4<u32>(53481u, 0u, 1u, 4294967295u), 1u), Struct_1(true, -1i, vec4<i32>(0i, 11492i, 1i, -1i), vec4<u32>(1u, 27443u, 47232u, 82140u), 44888u), Struct_1(false, -77263i, vec4<i32>(25888i, 2147483647i, 2147483647i, 1i), vec4<u32>(4294967295u, 1u, 6257u, 4294967295u), 4294967295u), Struct_1(true, 0i, vec4<i32>(1i, -3185i, -29988i, -1581i), vec4<u32>(958u, 0u, 4294967295u, 4294967295u), 75631u), Struct_1(true, 44994i, vec4<i32>(1i, -67998i, 0i, -11210i), vec4<u32>(86251u, 0u, 4294967295u, 51320u), 1u), Struct_1(true, 28788i, vec4<i32>(-11732i, 1631i, -1i, 30483i), vec4<u32>(4294967295u, 4055u, 4294967295u, 7192u), 0u), Struct_1(true, -23853i, vec4<i32>(1i, i32(-2147483648), 53302i, 2147483647i), vec4<u32>(72111u, 6086u, 121748u, 14652u), 1u), Struct_1(false, -1i, vec4<i32>(2147483647i, 18628i, -54473i, i32(-2147483648)), vec4<u32>(1u, 0u, 4294967295u, 4294967295u), 0u), Struct_1(false, 49753i, vec4<i32>(-390i, -33742i, 1i, 0i), vec4<u32>(1u, 4294967295u, 4294967295u, 75774u), 1u), Struct_1(true, 2778i, vec4<i32>(-1i, 1i, -1i, -53944i), vec4<u32>(4294967295u, 1u, 24587u, 4294967295u), 1u), Struct_1(true, -1i, vec4<i32>(2147483647i, -1i, 10786i, 34731i), vec4<u32>(20799u, 2408u, 21443u, 4294967295u), 1u), Struct_1(false, i32(-2147483648), vec4<i32>(-23042i, -1i, 1i, 1i), vec4<u32>(15667u, 36177u, 1u, 0u), 4294967295u), Struct_1(false, 1i, vec4<i32>(-232i, 1i, 0i, 14716i), vec4<u32>(42130u, 4294967295u, 4288u, 4294967295u), 0u), Struct_1(true, i32(-2147483648), vec4<i32>(-1i, 7339i, 43227i, 51044i), vec4<u32>(25349u, 0u, 3137u, 1u), 4294967295u), Struct_1(true, -7485i, vec4<i32>(16419i, -1i, -21610i, -1i), vec4<u32>(4294967295u, 1u, 4294967295u, 1637u), 32147u));

var<private> global3: array<Struct_3, 24>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: i32, arg_1: vec3<f32>) -> bool {
    global3 = array<Struct_3, 24>();
    var var_0 = select(select(vec3<bool>(u_input.a > 0u, false, true), vec3<bool>(any(select(vec2<bool>(true, true), vec2<bool>(true, false), true)), true, arg_1.x >= arg_1.x), vec3<bool>(!any(vec2<bool>(true, false)), false, arg_1.x >= _wgslsmith_f_op_f32(904f - arg_1.x))), select(!select(select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false)), vec3<bool>(true, true, true), true), vec3<bool>(true, any(vec2<bool>(true, true)) & select(true, false, true), false), vec3<bool>(true, true, true)), true);
    var var_1 = Struct_3(_wgslsmith_div_f32(arg_1.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(arg_1.x, 1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x * arg_1.x)))));
    let var_2 = global2[_wgslsmith_index_u32(u_input.a, 19u)];
    var var_3 = ~18127i;
    return !any(vec3<bool>(any(vec4<bool>(var_0.x, var_0.x, false, false)), var_0.x, !all(vec2<bool>(var_0.x, false))));
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_3, arg_2: i32, arg_3: bool) -> vec4<i32> {
    var var_0 = 0u;
    let var_1 = all(select(vec3<bool>(func_3(-46930i, _wgslsmith_div_vec3_f32(vec3<f32>(835f, -151f, arg_0.x), vec3<f32>(arg_0.x, arg_1.a, arg_1.a))), arg_3, !all(vec3<bool>(arg_3, true, arg_3))), vec3<bool>(true, select(any(vec2<bool>(true, arg_3)), arg_3, !arg_3), arg_3), true));
    var var_2 = arg_1.a;
    var_0 = ~4294967295u;
    let var_3 = Struct_1(func_3(_wgslsmith_dot_vec2_i32(abs(vec2<i32>(arg_2, 0i)), ~(~vec2<i32>(1i, arg_2))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_0.x, -652f, false)) - _wgslsmith_f_op_f32(abs(arg_0.x))), _wgslsmith_f_op_f32(step(arg_0.x, 1000f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(-1950f, 165f)), -599f, arg_3)))), select(_wgslsmith_sub_i32(select(2147483647i, arg_2, true), _wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(arg_2, arg_2, arg_2, arg_2)), abs(vec4<i32>(24182i, arg_2, arg_2, arg_2)))), arg_2, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 107424u, 4294967295u, u_input.a), vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(70268u, 16u)], 16u)], 4294967295u, 0u, u_input.a)) >= countOneBits(_wgslsmith_div_u32(1u, 4294967295u))), min(max(_wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, 0i, 41711i, arg_2), vec4<i32>(arg_2, arg_2, arg_2, 487i)), vec4<i32>(arg_2, arg_2, arg_2, arg_2) ^ vec4<i32>(arg_2, 23316i, arg_2, -20907i)), vec4<i32>(arg_2, _wgslsmith_sub_i32(arg_2, arg_2), arg_2, countOneBits(arg_2))) << (vec4<u32>(5488u, ~(~0u), ~(58243u << (u_input.a % 32u)), _wgslsmith_add_u32(0u, u_input.a)) % vec4<u32>(32u)), vec4<u32>((global0[_wgslsmith_index_u32(4294967295u, 16u)] << (1816u % 32u)) | 42767u, 1u >> (~u_input.a % 32u), 4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 15271u, u_input.a, u_input.a), reverseBits(vec4<u32>(global0[_wgslsmith_index_u32(1u, 16u)], 11756u, 63571u, 1u)))) ^ vec4<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 0u, 11902u), vec3<u32>(4294967295u, 4294967295u, global0[_wgslsmith_index_u32(57597u, 16u)])), _wgslsmith_add_u32(4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(28929u, 16u)], 16u)], 79270u, 1u), vec3<u32>(4294967295u, global0[_wgslsmith_index_u32(u_input.a, 16u)], u_input.a))), 23512u, _wgslsmith_mod_u32(firstTrailingBit(64777u), u_input.a)), ~u_input.a);
    return firstLeadingBit(abs(var_3.c));
}

fn func_1() -> vec3<u32> {
    global0 = array<u32, 16>();
    let var_0 = -1365f;
    var var_1 = -15999i;
    let var_2 = Struct_1(all(vec3<bool>(true, true, true)), -12908i, func_2(vec4<f32>(-2372f, -864f, _wgslsmith_f_op_f32(f32(-1f) * -1204f), var_0), global3[_wgslsmith_index_u32(1u, 24u)], -16817i, false), vec4<u32>(u_input.a & global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(u_input.a, 16u)], u_input.a, 4294967295u, u_input.a), vec4<u32>(1u, 62539u, 0u, 39747u)), u_input.a), 16u)], u_input.a, ~u_input.a, 0u), _wgslsmith_div_u32(~(~0u), 1u) ^ max(0u, 10073u ^ _wgslsmith_sub_u32(u_input.a, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 16u)], 16u)])));
    var var_3 = global1[_wgslsmith_index_u32(56631u, 31u)];
    return var_3.d.yzy;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global3[_wgslsmith_index_u32(~(~(~(~5951u))), 24u)];
    let var_1 = ~func_1();
    global2 = array<Struct_1, 19>();
    let var_2 = true;
    var var_3 = !(!(!vec2<bool>(all(vec2<bool>(true, true)), true)));
    let x = u_input.a;
    s_output = StorageBuffer(52737u, vec2<i32>(1i, _wgslsmith_sub_i32(_wgslsmith_mult_i32(1i, ~0i), -36325i)), _wgslsmith_f_op_f32(-1261f - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(var_0.a)), _wgslsmith_div_f32(1080f, -328f)))))), vec2<i32>(_wgslsmith_mod_i32(-_wgslsmith_add_i32(0i, -1i), -1i), -9318i), global0[_wgslsmith_index_u32(~u_input.a, 16u)]);
}

