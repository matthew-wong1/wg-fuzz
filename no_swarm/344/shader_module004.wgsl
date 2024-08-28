struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 29> = array<vec3<u32>, 29>(vec3<u32>(11193u, 112230u, 47072u), vec3<u32>(0u, 72501u, 40590u), vec3<u32>(14893u, 52055u, 58893u), vec3<u32>(0u, 4294967295u, 16434u), vec3<u32>(0u, 1u, 36780u), vec3<u32>(59303u, 11494u, 1u), vec3<u32>(4294967295u, 43061u, 4294967295u), vec3<u32>(27079u, 4294967295u, 0u), vec3<u32>(18803u, 12908u, 0u), vec3<u32>(119290u, 8591u, 1u), vec3<u32>(837u, 0u, 12018u), vec3<u32>(35411u, 0u, 4294967295u), vec3<u32>(1u, 0u, 1u), vec3<u32>(12403u, 23735u, 1u), vec3<u32>(0u, 0u, 4294967295u), vec3<u32>(81806u, 71168u, 0u), vec3<u32>(21805u, 44456u, 36421u), vec3<u32>(14496u, 4294967295u, 4294967295u), vec3<u32>(14615u, 1u, 1u), vec3<u32>(1u, 4294967295u, 0u), vec3<u32>(25086u, 4294967295u, 7951u), vec3<u32>(17552u, 1u, 4294967295u), vec3<u32>(11248u, 1u, 0u), vec3<u32>(43983u, 4294967295u, 848u), vec3<u32>(1u, 0u, 1u), vec3<u32>(0u, 23819u, 33982u), vec3<u32>(12183u, 0u, 1u), vec3<u32>(1u, 53695u, 20107u), vec3<u32>(17705u, 35728u, 18510u));

var<private> global1: array<bool, 16> = array<bool, 16>(true, false, true, true, false, false, false, false, true, true, false, false, false, false, false, false);

var<private> global2: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(-554f), Struct_1(2575f), Struct_1(130f), Struct_1(420f), Struct_1(108f), Struct_1(-279f), Struct_1(741f), Struct_1(-618f), Struct_1(195f), Struct_1(983f), Struct_1(-231f), Struct_1(-740f), Struct_1(-941f), Struct_1(299f), Struct_1(211f), Struct_1(1368f), Struct_1(581f), Struct_1(649f), Struct_1(377f), Struct_1(-826f), Struct_1(195f), Struct_1(-1007f), Struct_1(-1000f), Struct_1(867f), Struct_1(1132f), Struct_1(-938f), Struct_1(-784f), Struct_1(368f), Struct_1(695f));

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: vec2<u32>) -> i32 {
    var var_0 = global2[_wgslsmith_index_u32(firstLeadingBit(arg_2.x) << (arg_0 % 32u), 29u)];
    let var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_f32(156f + arg_1.a)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(-1635f)), -1000f))), -1180f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    var_0 = Struct_1(-1366f);
    var var_2 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -636f));
    global2 = array<Struct_1, 29>();
    return -_wgslsmith_dot_vec4_i32(~(vec4<i32>(1i, 1i, u_input.c, 2147483647i) | vec4<i32>(u_input.c, u_input.c, u_input.c, u_input.c)) ^ max(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.c, 1i, 1i, u_input.c), vec4<i32>(-7542i, 2147483647i, 12607i, u_input.c)), ~vec4<i32>(-2147483647i, u_input.c, u_input.c, u_input.c)), ~(firstTrailingBit(vec4<i32>(u_input.c, -22419i, -15610i, -2147483647i)) ^ _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c, u_input.c, 31373i, u_input.c), vec4<i32>(38103i, u_input.c, -2147483647i, u_input.c))));
}

fn func_2(arg_0: vec3<i32>, arg_1: vec3<u32>) -> Struct_1 {
    var var_0 = _wgslsmith_add_vec2_u32(vec2<u32>(7766u >> (arg_1.x % 32u), 43674u), _wgslsmith_sub_vec2_u32(u_input.a.xx, vec2<u32>(u_input.b, arg_1.x) | (vec2<u32>(0u, arg_1.x) << (vec2<u32>(73194u, 30229u) % vec2<u32>(32u))))) | u_input.a.xx;
    global2 = array<Struct_1, 29>();
    global0 = array<vec3<u32>, 29>();
    let var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1527f, -231f, -1235f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1420f, -889f, 766f))))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(1026f, -275f, 734f), vec3<f32>(-1302f, -1309f, 1896f)), _wgslsmith_div_vec3_f32(vec3<f32>(-1936f, 2300f, 1869f), vec3<f32>(202f, 1257f, -824f)), all(vec2<bool>(false, global1[_wgslsmith_index_u32(var_0.x, 16u)]))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(448f, -1850f, 632f) - vec3<f32>(664f, 3138f, -518f)))), _wgslsmith_mod_i32(u_input.c, ~(-2147483647i)) > func_3(firstLeadingBit(0u), global2[_wgslsmith_index_u32(min(var_0.x, u_input.b), 29u)], vec2<u32>(var_0.x, u_input.b)))), !global1[_wgslsmith_index_u32(arg_1.x, 16u)]));
    var var_2 = global1[_wgslsmith_index_u32(~4294967295u, 16u)] | all(vec4<bool>(all(vec3<bool>(false, false, false)), all(!vec4<bool>(global1[_wgslsmith_index_u32(var_0.x, 16u)], false, true, true)), false, select(global1[_wgslsmith_index_u32(u_input.a.x, 16u)] & global1[_wgslsmith_index_u32(u_input.a.x, 16u)], !global1[_wgslsmith_index_u32(67402u, 16u)], false)));
    return Struct_1(-401f);
}

fn func_4(arg_0: Struct_1) -> f32 {
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.a + arg_0.a), 827f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a)), 1007f))));
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.a.x ^ 1u, _wgslsmith_div_u32(~u_input.a.x, u_input.a.x)), 29u)], max(vec3<u32>(300u, 46015u, u_input.b), u_input.a)), 3405u);
    global2 = array<Struct_1, 29>();
    var var_1 = _wgslsmith_f_op_f32(func_4(func_2(_wgslsmith_sub_vec3_i32(vec3<i32>(~u_input.c, u_input.c, u_input.c), vec3<i32>(-14264i, -1i, -17086i)), ~vec3<u32>(firstTrailingBit(17812u), u_input.b, ~u_input.b))));
    let var_2 = Struct_1(225f);
    var var_3 = var_2;
    return var_2;
}

fn func_5(arg_0: u32, arg_1: Struct_1, arg_2: vec2<bool>) -> u32 {
    var var_0 = vec3<i32>(-12101i, _wgslsmith_sub_i32(u_input.c, u_input.c), _wgslsmith_sub_i32(u_input.c, (~(-12398i) | u_input.c) | 2147483647i));
    var var_1 = global0[_wgslsmith_index_u32(_wgslsmith_div_u32(~(~abs(u_input.a.x)), _wgslsmith_div_u32(_wgslsmith_div_u32(u_input.a.x, 1u), u_input.a.x)), 29u)];
    return 13046u;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<bool, 16>();
    let var_0 = ~vec3<u32>(~20599u, ~64822u, func_5(37950u, func_1(), !select(vec2<bool>(true, global1[_wgslsmith_index_u32(0u, 16u)]), vec2<bool>(global1[_wgslsmith_index_u32(u_input.b, 16u)], global1[_wgslsmith_index_u32(u_input.a.x, 16u)]), vec2<bool>(false, true))));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1100f, -213f, -178f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-2349f, -1157f, 652f))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-473f, -681f, 1131f) + vec3<f32>(-1291f, 1274f, 961f))))));
    let var_2 = ~firstLeadingBit(min(-vec4<i32>(u_input.c, u_input.c, u_input.c, u_input.c), -vec4<i32>(u_input.c, -39328i, u_input.c, 20406i))) << (countOneBits(vec4<u32>(1u, _wgslsmith_add_u32(~4294967295u, var_0.x), ~var_0.x, ~27451u)) % vec4<u32>(32u));
    var var_3 = Struct_1(_wgslsmith_div_f32(-1063f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1581f)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(floor(-564f)));
}

