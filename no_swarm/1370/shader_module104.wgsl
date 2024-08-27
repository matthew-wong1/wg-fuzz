struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 28> = array<Struct_1, 28>(Struct_1(11261u), Struct_1(4294967295u), Struct_1(1u), Struct_1(1u), Struct_1(1u), Struct_1(15763u), Struct_1(455u), Struct_1(88484u), Struct_1(1u), Struct_1(5392u), Struct_1(56752u), Struct_1(3097u), Struct_1(4294967295u), Struct_1(27602u), Struct_1(96523u), Struct_1(4294967295u), Struct_1(0u), Struct_1(1u), Struct_1(14247u), Struct_1(51124u), Struct_1(4294967295u), Struct_1(66859u), Struct_1(0u), Struct_1(1u), Struct_1(62125u), Struct_1(1u), Struct_1(29124u), Struct_1(71369u));

var<private> global1: array<u32, 23>;

var<private> global2: array<vec3<f32>, 31> = array<vec3<f32>, 31>(vec3<f32>(-171f, 759f, -1137f), vec3<f32>(-382f, 1068f, -1476f), vec3<f32>(-1004f, 316f, -405f), vec3<f32>(1014f, -1445f, 1345f), vec3<f32>(1845f, 1039f, 251f), vec3<f32>(-293f, -237f, -1000f), vec3<f32>(-632f, -218f, -538f), vec3<f32>(322f, 2017f, 2311f), vec3<f32>(1000f, -718f, 764f), vec3<f32>(-697f, -531f, -755f), vec3<f32>(-503f, 197f, 490f), vec3<f32>(-218f, 472f, 586f), vec3<f32>(-352f, 106f, 105f), vec3<f32>(-427f, 430f, 1422f), vec3<f32>(-2409f, -1000f, 239f), vec3<f32>(388f, -209f, -223f), vec3<f32>(-1378f, -409f, 479f), vec3<f32>(1390f, -2024f, 989f), vec3<f32>(-1000f, -1176f, -1010f), vec3<f32>(213f, 1374f, -1702f), vec3<f32>(-1047f, 952f, 1000f), vec3<f32>(-167f, 869f, 116f), vec3<f32>(2087f, -1316f, -1036f), vec3<f32>(856f, -753f, 785f), vec3<f32>(689f, 446f, 3896f), vec3<f32>(522f, -145f, -111f), vec3<f32>(-843f, -1509f, -1000f), vec3<f32>(-285f, 810f, 442f), vec3<f32>(-2554f, 677f, 663f), vec3<f32>(-1000f, -1965f, -783f), vec3<f32>(-319f, 150f, -375f));

var<private> global3: i32 = i32(-2147483648);

var<private> global4: array<i32, 15> = array<i32, 15>(7233i, 0i, 2147483647i, 2147483647i, i32(-2147483648), 5213i, 0i, -1i, 1i, 21699i, 9799i, i32(-2147483648), 4138i, 15228i, 13131i);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: f32, arg_1: i32, arg_2: vec2<u32>, arg_3: vec4<bool>) -> vec2<u32> {
    let var_0 = select(_wgslsmith_f_op_f32(-arg_0) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)), arg_3.x, ~1u >= ~(~global1[_wgslsmith_index_u32(1u, 23u)]));
    let var_1 = Struct_2(_wgslsmith_sub_i32(min(2147483647i, _wgslsmith_mult_i32(~22686i, arg_1)), u_input.b), global0[_wgslsmith_index_u32(0u, 28u)], any(!arg_3.yz));
    global3 = global4[_wgslsmith_index_u32(_wgslsmith_add_u32(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(~1377u, ~3257u), 23u)], _wgslsmith_mult_u32(~_wgslsmith_sub_u32(_wgslsmith_div_u32(4294967295u, 11151u), firstTrailingBit(28800u)), ~49511u)), 15u)];
    var var_2 = var_1;
    global1 = array<u32, 23>();
    return ~abs(vec2<u32>(var_2.b.a, _wgslsmith_add_u32(global1[_wgslsmith_index_u32(34463u, 23u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_2.b.a << (arg_2.x % 32u), 23u)], 23u)])));
}

fn func_2(arg_0: vec4<u32>) -> i32 {
    var var_0 = _wgslsmith_clamp_vec2_i32(reverseBits(_wgslsmith_div_vec2_i32(max(-vec2<i32>(global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(11716u, 23u)], 23u)], 15u)], 0i), select(vec2<i32>(u_input.a, -2147483647i), vec2<i32>(1i, -38382i), vec2<bool>(true, true))), _wgslsmith_sub_vec2_i32(vec2<i32>(global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_0.x, 23u)], 15u)], 1i), reverseBits(vec2<i32>(-2147483647i, 10448i))))), _wgslsmith_mod_vec2_i32(_wgslsmith_mod_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_0.x, 23u)], 15u)], 66750i), -vec2<i32>(global4[_wgslsmith_index_u32(21127u, 15u)], 1i)), vec2<i32>(u_input.a, global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_0.x, 23u)], 15u)]) & (vec2<i32>(23580i, global4[_wgslsmith_index_u32(38931u, 15u)]) ^ vec2<i32>(0i, u_input.b))), ~abs(-vec2<i32>(2147483647i, u_input.a))), -(vec2<i32>(29919i, u_input.a) << (func_3(1472f, -2147483647i, vec2<u32>(arg_0.x, global1[_wgslsmith_index_u32(57644u, 23u)]), vec4<bool>(true, false, false, false)) % vec2<u32>(32u))) & -(~_wgslsmith_div_vec2_i32(vec2<i32>(u_input.a, 34639i), vec2<i32>(u_input.a, -1i))));
    global3 = countOneBits(_wgslsmith_sub_i32(var_0.x, _wgslsmith_mod_i32(u_input.b, 16414i)) | abs(select(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.x, var_0.x, 0i), vec3<i32>(u_input.a, u_input.b, -2147483647i)), _wgslsmith_dot_vec3_i32(vec3<i32>(-19136i, 24432i, -2147483647i), vec3<i32>(0i, var_0.x, -1i)), true)));
    global2 = array<vec3<f32>, 31>();
    var var_1 = !(!vec3<bool>(true, any(select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), true)), false));
    var var_2 = Struct_1(global1[_wgslsmith_index_u32(arg_0.x, 23u)]);
    return var_0.x;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_2, arg_2: f32) -> Struct_2 {
    let var_0 = arg_1;
    let var_1 = Struct_2(-_wgslsmith_mult_i32(u_input.b & 81660i, var_0.a) & ~(-2147483647i), arg_1.b, !(1i > func_2(abs(vec4<u32>(4283u, 1u, 1u, arg_0.a)))));
    let var_2 = arg_2;
    let var_3 = max(_wgslsmith_div_vec2_i32(vec2<i32>(var_1.a, _wgslsmith_div_i32(~(-1i), ~1i)), ~(vec2<i32>(-14315i, -19759i) ^ -vec2<i32>(global4[_wgslsmith_index_u32(arg_0.a, 15u)], -1i))), ~vec2<i32>(select(min(u_input.b, 4662i), var_0.a, false), ~0i));
    let var_4 = _wgslsmith_add_vec3_i32(_wgslsmith_mod_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(var_1.a, -1i, -5811i) << (vec3<u32>(74505u, 22705u, global1[_wgslsmith_index_u32(91519u, 23u)]) % vec3<u32>(32u)), abs(vec3<i32>(-33802i, 2147483647i, 2147483647i))) ^ (min(vec3<i32>(var_0.a, 0i, 2147483647i), vec3<i32>(var_1.a, 2147483647i, 7230i)) & max(vec3<i32>(u_input.b, var_3.x, global4[_wgslsmith_index_u32(var_1.b.a, 15u)]), vec3<i32>(-11116i, arg_1.a, 1i))), -firstTrailingBit(_wgslsmith_div_vec3_i32(vec3<i32>(0i, u_input.a, 101217i), vec3<i32>(-1i, u_input.a, -1i)))), _wgslsmith_mod_vec3_i32(abs(max(select(vec3<i32>(global4[_wgslsmith_index_u32(1u, 15u)], -174i, 1i), vec3<i32>(var_1.a, var_0.a, 1i), var_1.c), vec3<i32>(80448i, arg_1.a, -2043i))), vec3<i32>(0i, ~select(-82319i, 32969i, false), ~0i)));
    return Struct_2(1i, Struct_1(arg_1.b.a), true);
}

fn func_4(arg_0: Struct_2, arg_1: u32, arg_2: vec3<bool>) -> bool {
    let var_0 = select(any(vec3<bool>(func_1(func_1(arg_0.b, Struct_2(6792i, Struct_1(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(36745u, 23u)], 23u)]), arg_2.x), 747f).b, func_1(Struct_1(0u), arg_0, 243f), -298f).c, all(arg_2.xy), false)), arg_2.x, !arg_0.c);
    let var_1 = vec2<u32>(~_wgslsmith_clamp_u32(firstTrailingBit(arg_1 | global1[_wgslsmith_index_u32(1u, 23u)]), ~arg_1, _wgslsmith_dot_vec3_u32(min(vec3<u32>(arg_1, 0u, arg_1), vec3<u32>(0u, arg_1, 18259u)), abs(vec3<u32>(global1[_wgslsmith_index_u32(arg_1, 23u)], 1u, arg_0.b.a)))), 4294967295u);
    var var_2 = arg_0;
    let var_3 = Struct_1(((_wgslsmith_dot_vec2_u32(vec2<u32>(54567u, 50746u), var_1) & max(40464u, 15124u)) & func_1(func_1(var_2.b, Struct_2(-59011i, var_2.b, var_2.c), 367f).b, func_1(var_2.b, arg_0, 1263f), _wgslsmith_f_op_f32(max(2201f, -277f))).b.a) ^ 65482u);
    let var_4 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-966f, 721f), -1496f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -841f)))));
    return !select(var_2.c, all(arg_2), _wgslsmith_sub_u32(4294967295u, 58748u) <= arg_0.b.a);
}

fn func_5(arg_0: f32, arg_1: Struct_2, arg_2: bool, arg_3: Struct_2) -> Struct_2 {
    var var_0 = (global1[_wgslsmith_index_u32(1u, 23u)] & _wgslsmith_clamp_u32(_wgslsmith_sub_u32(~5269u, countOneBits(1u)), ~4294967295u, arg_3.b.a)) >= arg_1.b.a;
    var var_1 = arg_1.b.a;
    global4 = array<i32, 15>();
    let var_2 = func_1(Struct_1(_wgslsmith_mult_u32(_wgslsmith_mult_u32(arg_3.b.a, arg_3.b.a), _wgslsmith_dot_vec2_u32(~vec2<u32>(16589u, arg_1.b.a), vec2<u32>(global1[_wgslsmith_index_u32(4294967295u, 23u)], 1u)))), arg_3, arg_0).b;
    var_0 = !arg_3.c;
    return func_1(func_1(Struct_1(min(0u, arg_3.b.a | arg_1.b.a)), arg_1, arg_0).b, func_1(func_1(Struct_1(~0u), func_1(Struct_1(0u), func_1(Struct_1(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_1.b.a, 23u)], 23u)]), arg_1, arg_0), _wgslsmith_f_op_f32(arg_0 - -746f)), 1005f).b, Struct_2(~1i, func_1(Struct_1(0u), arg_3, _wgslsmith_f_op_f32(-arg_0)).b, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_0, arg_0)))), _wgslsmith_f_op_f32(sign(1107f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(2548f, Struct_2(~abs(2147483647i), global0[_wgslsmith_index_u32(4294967295u, 28u)], false), !func_4(func_1(global0[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(41731u, 23u)], 28u)], Struct_2(global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(85722u, 23u)], 23u)], 23u)], 15u)], Struct_1(30032u), false), _wgslsmith_f_op_f32(-558f - -1852f)), ~global1[_wgslsmith_index_u32(~0u, 23u)], select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), Struct_2(28595i, global0[_wgslsmith_index_u32(countOneBits(reverseBits(1u)), 28u)], false | all(vec4<bool>(true, true, true, true))));
    let var_1 = var_0.b.a > abs(func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -116f)), -1i, select(~vec2<u32>(5597u, 1u), min(vec2<u32>(0u, var_0.b.a), vec2<u32>(var_0.b.a, global1[_wgslsmith_index_u32(1u, 23u)])), vec2<bool>(true, false)), vec4<bool>(true, false, true, !var_0.c)).x);
    var var_2 = select(select(select(!select(vec2<bool>(true, true), vec2<bool>(var_1, false), true), !vec2<bool>(var_1, true), vec2<bool>(true, var_0.c)), vec2<bool>(any(vec4<bool>(var_1, true, var_0.c, var_1)) | var_1, false), !(true | !var_1)), !select(!vec2<bool>(var_1, true), select(select(vec2<bool>(var_0.c, true), vec2<bool>(true, var_1), vec2<bool>(true, true)), vec2<bool>(false, var_1), select(vec2<bool>(var_0.c, var_1), vec2<bool>(true, var_0.c), var_0.c)), var_0.c), !vec2<bool>(func_1(func_1(Struct_1(global1[_wgslsmith_index_u32(1u, 23u)]), var_0, 1250f).b, Struct_2(-7240i, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(9969u, 23u)], 23u)], 28u)], var_1), _wgslsmith_f_op_f32(min(401f, 294f))).c, u_input.a < -26933i));
    var var_3 = _wgslsmith_sub_vec2_i32(vec2<i32>(22014i, -(47489i << (var_0.b.a % 32u))), _wgslsmith_mod_vec2_i32(~_wgslsmith_clamp_vec2_i32(vec2<i32>(var_0.a, global4[_wgslsmith_index_u32(var_0.b.a, 15u)]), vec2<i32>(35966i, -2147483647i), vec2<i32>(var_0.a, u_input.b)) >> (vec2<u32>(_wgslsmith_mod_u32(32660u, 68236u), 4294967295u) % vec2<u32>(32u)), _wgslsmith_sub_vec2_i32(_wgslsmith_clamp_vec2_i32(max(vec2<i32>(var_0.a, 0i), vec2<i32>(global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_0.b.a, 23u)], 23u)], 23u)], 15u)], var_0.a)), ~vec2<i32>(var_0.a, 0i), vec2<i32>(global4[_wgslsmith_index_u32(0u, 15u)], var_0.a) << (vec2<u32>(global1[_wgslsmith_index_u32(var_0.b.a, 23u)], 0u) % vec2<u32>(32u))), vec2<i32>(~var_0.a, 25957i))));
    var_2 = select(select(select(select(!vec2<bool>(var_2.x, true), select(vec2<bool>(var_1, var_2.x), vec2<bool>(var_2.x, var_1), vec2<bool>(var_1, true)), select(vec2<bool>(var_1, var_0.c), vec2<bool>(false, var_2.x), false)), vec2<bool>(!var_2.x, var_3.x < var_3.x), var_1), !vec2<bool>(!var_2.x, false | var_2.x), select(select(vec2<bool>(true, true), vec2<bool>(var_1, var_0.c), select(vec2<bool>(false, false), vec2<bool>(true, var_2.x), vec2<bool>(true, true))), select(select(vec2<bool>(var_0.c, var_2.x), vec2<bool>(var_0.c, false), vec2<bool>(var_0.c, true)), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(var_0.c, false), vec2<bool>(false, var_0.c))), any(!vec4<bool>(true, false, var_1, var_0.c)))), vec2<bool>(var_1, var_1), true | (u_input.a < -6345i));
    let x = u_input.a;
    s_output = StorageBuffer(~(vec2<i32>(-1i) * -(~vec2<i32>(-7807i, var_0.a))));
}

