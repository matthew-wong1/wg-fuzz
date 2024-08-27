struct Struct_1 {
    a: vec2<bool>,
    b: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: Struct_2,
    d: vec4<bool>,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: array<vec2<u32>, 3> = array<vec2<u32>, 3>(vec2<u32>(15830u, 4294967295u), vec2<u32>(0u, 4294967295u), vec2<u32>(12021u, 1u));

var<private> global2: array<u32, 7>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: vec3<i32>) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1753f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-335f, _wgslsmith_f_op_f32(round(-1000f))) * -1966f))) * 2154f);
    var var_1 = _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1312f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-861f - 737f), _wgslsmith_f_op_f32(f32(-1f) * -795f), all(vec3<bool>(false, false, false)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(174f, 540f)) + _wgslsmith_div_f32(-742f, 1446f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2662f + -2034f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(2174f, -684f)), _wgslsmith_f_op_f32(1053f - -1588f))) * 1364f))));
    var var_2 = vec4<u32>(~(~u_input.a), ~u_input.a, ~global2[_wgslsmith_index_u32(~43096u & _wgslsmith_mod_u32(_wgslsmith_sub_u32(global2[_wgslsmith_index_u32(14366u, 7u)], 878u), max(u_input.a, u_input.a)), 7u)], (~firstTrailingBit(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(22959u, 7u)], 7u)]) | 62436u) ^ _wgslsmith_mult_u32(global2[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(0u, 7u)], 7u)], ~u_input.a));
    let var_3 = Struct_2(Struct_1(vec2<bool>(true, any(vec2<bool>(true, false)) | any(vec2<bool>(true, true))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(322f, -2252f))))), !select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), true), max(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(3173u, 7u)], 7u)], 4294967295u) < ~var_2.x), Struct_1(vec2<bool>(true, true), var_1.yy));
    let var_4 = 20446u;
    return var_4;
}

fn func_2() -> Struct_2 {
    global1 = array<vec2<u32>, 3>();
    var var_0 = Struct_3(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(func_3(abs(min(vec3<i32>(1i, 1i, 1i), -vec3<i32>(0i, 22468i, -1i)))), 7u)], 7u)], Struct_1(vec2<bool>(false, true), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(841f, -1850f) * _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-211f, -1645f)))))), Struct_2(Struct_1(vec2<bool>(true, true), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-312f, 1475f)) - vec2<f32>(156f, -1937f))), vec2<bool>(any(select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), true)), true), Struct_1(select(select(vec2<bool>(false, true), vec2<bool>(true, true), true), vec2<bool>(false, true), any(vec4<bool>(true, false, false, true))), vec2<f32>(-280f, 827f))), vec4<bool>(true, select(!any(vec3<bool>(true, true, true)), true, true), _wgslsmith_div_i32(~0i, -642i) < (firstLeadingBit(-60333i) >> ((0u & global2[_wgslsmith_index_u32(4294967295u, 7u)]) % 32u)), func_3(~vec3<i32>(1i, -1i, 20354i)) == ~func_3(vec3<i32>(1i, 1i, -9078i))), Struct_2(Struct_1(select(select(vec2<bool>(true, false), vec2<bool>(true, false), true), select(vec2<bool>(true, false), vec2<bool>(false, false), true), select(vec2<bool>(true, true), vec2<bool>(false, true), false)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(390f, -1000f) + vec2<f32>(-673f, 367f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(571f, 646f) - vec2<f32>(-493f, 657f)))), vec2<bool>(!any(vec3<bool>(true, false, true)), true), Struct_1(select(vec2<bool>(false, false), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true)), select(vec2<bool>(false, false), vec2<bool>(false, true), true)), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(823f, -402f)))))));
    var var_1 = firstTrailingBit(firstTrailingBit(99895u));
    var_0 = Struct_3(~(~(~5786u)), Struct_1(var_0.c.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-821f, var_0.b.b.x)), _wgslsmith_div_vec2_f32(vec2<f32>(-1000f, var_0.c.a.b.x), var_0.c.c.b)))), var_0.e, var_0.d, var_0.e);
    return var_0.e;
}

fn func_4(arg_0: Struct_2, arg_1: f32) -> bool {
    global2 = array<u32, 7>();
    let var_0 = ~_wgslsmith_sub_vec4_u32(vec4<u32>(~1u, ~reverseBits(u_input.a), ~max(1u, u_input.a), global2[_wgslsmith_index_u32(11259u, 7u)]), ~abs(_wgslsmith_add_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4066u, 7u)], 7u)], 7u)], 7u)], u_input.a, u_input.a, 7393u), vec4<u32>(global2[_wgslsmith_index_u32(38055u, 7u)], global2[_wgslsmith_index_u32(4294967295u, 7u)], u_input.a, u_input.a))));
    global1 = array<vec2<u32>, 3>();
    let var_1 = -countOneBits(~vec3<i32>(1i, 1i, 1i));
    let var_2 = firstLeadingBit(vec2<i32>(-40014i, 36247i));
    return !(!(select(-var_1.x, abs(26543i), true) < ~(-1i)));
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: i32) -> i32 {
    global0 = arg_1.a.x;
    let var_0 = !func_4(func_2(), _wgslsmith_f_op_f32(-arg_1.b.x)) | true;
    let var_1 = _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(~abs(vec2<i32>(58517i, -2147483647i)), vec2<i32>(-20495i, arg_2) << (~arg_0 % vec2<u32>(32u))), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_2, abs(arg_2), -7540i << (1u % 32u), arg_2), _wgslsmith_add_vec4_i32(select(vec4<i32>(arg_2, 29364i, 3938i, arg_2), vec4<i32>(1i, arg_2, -1450i, -18275i), vec4<bool>(false, true, false, var_0)), firstTrailingBit(vec4<i32>(0i, arg_2, arg_2, 7383i)))), firstLeadingBit(arg_2)) >= -15185i;
    global0 = select(true, true, any(vec3<bool>(true, !var_1, true)));
    global0 = ~(~_wgslsmith_add_u32(15736u, global2[_wgslsmith_index_u32(u_input.a, 7u)] | arg_0.x)) > _wgslsmith_dot_vec3_u32(select(~vec3<u32>(global2[_wgslsmith_index_u32(1u, 7u)], global2[_wgslsmith_index_u32(1273u, 7u)], u_input.a), ~reverseBits(vec3<u32>(global2[_wgslsmith_index_u32(1696u, 7u)], global2[_wgslsmith_index_u32(34166u, 7u)], u_input.a)), func_4(Struct_2(Struct_1(vec2<bool>(arg_1.a.x, var_1), arg_1.b), vec2<bool>(true, true), Struct_1(vec2<bool>(true, var_0), arg_1.b)), _wgslsmith_f_op_f32(2527f + 482f))), abs(vec3<u32>(~57890u, 1u, arg_0.x)));
    return 1i;
}

fn func_5(arg_0: i32, arg_1: Struct_3, arg_2: Struct_2, arg_3: vec2<i32>) -> Struct_1 {
    let var_0 = _wgslsmith_mult_i32(abs(_wgslsmith_mod_i32(firstLeadingBit(arg_0), arg_0) & ~(~35473i)), ~(-2238i));
    var var_1 = min(max(-_wgslsmith_div_vec2_i32(arg_3, arg_3), firstLeadingBit(arg_3)), ~(~vec2<i32>(arg_3.x, -12112i)) << (vec2<u32>(0u, 4001u) % vec2<u32>(32u))) << (vec2<u32>(abs(u_input.a), _wgslsmith_div_u32(arg_1.a, arg_1.a)) % vec2<u32>(32u));
    var_1 = vec2<i32>(-arg_0 >> (73693u % 32u), min(~_wgslsmith_clamp_i32(_wgslsmith_div_i32(var_0, arg_0), -var_1.x, 26208i), var_0));
    var_1 = arg_3;
    global0 = false;
    return arg_2.a;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<u32>, 3>();
    var var_0 = _wgslsmith_div_u32(27572u, global2[_wgslsmith_index_u32(2808u, 7u)]);
    let var_1 = func_5(_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(-vec4<i32>(1i, 1i, 1i, 1i), abs(abs(vec4<i32>(48183i, 2147483647i, -26592i, -8138i)))), ~vec4<i32>(func_1(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(79604u, 7u)], 3u)], Struct_1(vec2<bool>(true, false), vec2<f32>(1234f, -740f)), 12625i), 3007i, -2147483647i, 1i)), Struct_3(~firstTrailingBit(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.a, 4294967295u), 7u)]), Struct_1(select(vec2<bool>(true, false), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true)), vec2<bool>(true, true)), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1655f, -225f) - vec2<f32>(456f, -282f))))), func_2(), !select(select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false)), vec4<bool>(false, true, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true), false)), Struct_2(func_2().a, !func_2().c.a, func_2().c)), Struct_2(Struct_1(select(select(vec2<bool>(false, true), vec2<bool>(false, true), false), vec2<bool>(false, true), vec2<bool>(false, true)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-632f, 1768f)))), vec2<bool>(true, all(vec2<bool>(true, true))), Struct_1(func_2().b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-225f, 1408f))))), vec2<i32>(~(i32(-1i) * -54687i) << (func_3(vec3<i32>(42405i, -2147483647i, 51796i)) % 32u), 1i));
    global0 = var_1.a.x;
    var var_2 = ((vec3<u32>(~1u, 64382u, u_input.a) | reverseBits(vec3<u32>(14001u, 1u, global2[_wgslsmith_index_u32(57263u, 7u)]))) | _wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, global2[_wgslsmith_index_u32(0u, 7u)], global2[_wgslsmith_index_u32(u_input.a, 7u)]), ~vec3<u32>(0u, global2[_wgslsmith_index_u32(7584u, 7u)], global2[_wgslsmith_index_u32(4294967295u, 7u)])), countOneBits(abs(vec3<u32>(u_input.a, u_input.a, u_input.a))))) ^ (~(~vec3<u32>(u_input.a, 0u, u_input.a) >> (min(vec3<u32>(0u, 1u, 5935u), vec3<u32>(u_input.a, u_input.a, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 7u)], 7u)])) % vec3<u32>(32u))) & ~(~vec3<u32>(global2[_wgslsmith_index_u32(4294967295u, 7u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(46215u, 7u)], 7u)], u_input.a)));
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_mult_i32(26619i, select(11346i, ~(-2147483647i), true)), var_1.b.x, -1i);
}

