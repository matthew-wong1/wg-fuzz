struct Struct_1 {
    a: i32,
    b: vec2<f32>,
    c: f32,
    d: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec2<u32>,
    d: u32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_1;

var<private> global2: array<Struct_1, 23> = array<Struct_1, 23>(Struct_1(2147483647i, vec2<f32>(1107f, 1409f), -314f, 1049f), Struct_1(34146i, vec2<f32>(-956f, -555f), 645f, -1041f), Struct_1(-1i, vec2<f32>(582f, -838f), -1336f, -1000f), Struct_1(51320i, vec2<f32>(-643f, 512f), 434f, -433f), Struct_1(i32(-2147483648), vec2<f32>(-258f, 509f), 1547f, -307f), Struct_1(55072i, vec2<f32>(549f, -1024f), -351f, -2211f), Struct_1(6180i, vec2<f32>(1042f, -702f), 237f, 477f), Struct_1(-50497i, vec2<f32>(279f, 403f), 926f, 616f), Struct_1(-15448i, vec2<f32>(988f, -388f), 1235f, -263f), Struct_1(12135i, vec2<f32>(459f, -1343f), -1664f, -963f), Struct_1(0i, vec2<f32>(1667f, 768f), -1000f, -545f), Struct_1(0i, vec2<f32>(1899f, 1586f), -1291f, 626f), Struct_1(1i, vec2<f32>(798f, 1000f), -1959f, 420f), Struct_1(-25046i, vec2<f32>(1053f, -265f), -108f, 328f), Struct_1(8157i, vec2<f32>(1000f, 1124f), -1221f, 1450f), Struct_1(-15730i, vec2<f32>(1535f, -1431f), 123f, 446f), Struct_1(9940i, vec2<f32>(108f, 1367f), 1432f, -961f), Struct_1(1i, vec2<f32>(688f, -1832f), -2336f, -744f), Struct_1(-55965i, vec2<f32>(1015f, 235f), 1539f, 658f), Struct_1(-9723i, vec2<f32>(-264f, -1779f), -1000f, 1036f), Struct_1(-42567i, vec2<f32>(1000f, -2042f), 813f, 1000f), Struct_1(-57708i, vec2<f32>(589f, 684f), 428f, 1612f), Struct_1(0i, vec2<f32>(1099f, 741f), -1000f, 915f));

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: Struct_1) -> bool {
    var var_0 = _wgslsmith_mod_vec4_i32(~(vec4<i32>(~(-2147483647i), min(22689i, arg_2.a), 1i, _wgslsmith_clamp_i32(arg_1.a, arg_0.x, 1i)) & countOneBits(firstTrailingBit(vec4<i32>(global1.a, -2147483647i, global0.a, -4206i)))), firstLeadingBit(select(~(~vec4<i32>(global1.a, -17008i, 17522i, -1i)), ~(~vec4<i32>(2147483647i, u_input.a.x, 2147483647i, global0.a)), vec4<bool>(false, true, all(vec4<bool>(true, false, false, true)), select(true, false, false)))));
    var var_1 = global0.c;
    let var_2 = _wgslsmith_mod_vec2_i32(vec2<i32>(countOneBits(i32(-1i) * -2147483647i), arg_0.x) | ~firstTrailingBit(vec2<i32>(2147483647i, u_input.a.x)), ~_wgslsmith_mult_vec2_i32(arg_0 >> ((vec2<u32>(u_input.b, 4294967295u) | vec2<u32>(1u, u_input.b)) % vec2<u32>(32u)), -(~arg_0)));
    var var_3 = Struct_1(firstLeadingBit(min(_wgslsmith_mod_i32(arg_2.a, -global0.a), arg_2.a ^ 4059i)), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(arg_1.c - 156f), global0.b.x)))), _wgslsmith_f_op_f32(227f + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b.x + arg_1.c))))), 1160f);
    let var_4 = vec2<i32>(6388i | -var_2.x, -1i);
    return all(vec3<bool>(false, u_input.b != u_input.b, false));
}

fn func_2(arg_0: Struct_1, arg_1: u32, arg_2: vec2<i32>) -> vec4<i32> {
    var var_0 = vec2<i32>(~(-38981i), -(~_wgslsmith_mult_i32(_wgslsmith_sub_i32(arg_0.a, global0.a), 2147483647i)));
    let var_1 = Struct_1(_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(-(vec4<i32>(-12675i, global1.a, -2147483647i, 2147483647i) << (vec4<u32>(77966u, arg_1, u_input.b, arg_1) % vec4<u32>(32u))), vec4<i32>(arg_0.a, 2147483647i, -11522i, arg_2.x) >> ((vec4<u32>(arg_1, 34972u, 61897u, arg_1) >> (vec4<u32>(u_input.b, u_input.b, 4294967295u, 45252u) % vec4<u32>(32u))) % vec4<u32>(32u))), arg_0.a), _wgslsmith_f_op_vec2_f32(abs(global0.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global0.c))), _wgslsmith_div_f32(global0.b.x, _wgslsmith_f_op_f32(abs(-900f))));
    var var_2 = func_3(min(~vec2<i32>(global1.a, var_1.a), _wgslsmith_add_vec2_i32(u_input.a.zy, arg_2)) >> (_wgslsmith_sub_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(3201u, 1u), vec2<u32>(1u, u_input.b)), vec2<u32>(4294967295u, u_input.b)) % vec2<u32>(32u)), Struct_1(min(-2147483647i, select(u_input.a.x, 0i, true)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(var_1.b)), vec2<f32>(global0.d, -342f)), _wgslsmith_f_op_f32(global1.d * _wgslsmith_f_op_f32(round(-2870f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.c) * _wgslsmith_f_op_f32(-518f + -233f))), global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(reverseBits(u_input.b) ^ (12508u >> (0u % 32u)), ~max(u_input.b, 23240u)), 23u)]) || (-120f > _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(global1.d))))));
    var_0 = -(~max(select(vec2<i32>(2147483647i, u_input.a.x), vec2<i32>(-1i, -23310i), false) & vec2<i32>(2147483647i, global0.a), reverseBits(vec2<i32>(u_input.a.x, u_input.a.x))));
    global1 = global2[_wgslsmith_index_u32(u_input.b, 23u)];
    return abs(select(countOneBits(_wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, -17734i, -2147483647i, global1.a), select(vec4<i32>(global1.a, -15433i, 2147483647i, arg_0.a), vec4<i32>(arg_2.x, -41167i, var_1.a, 37518i), false), abs(vec4<i32>(-50482i, var_0.x, -28476i, arg_0.a)))), vec4<i32>(1i, var_1.a, var_1.a, var_0.x << (2878u % 32u)), any(vec2<bool>(true, true))));
}

fn func_1(arg_0: i32) -> Struct_1 {
    global0 = Struct_1(_wgslsmith_add_i32(global0.a, max(countOneBits(_wgslsmith_mod_i32(6811i, 1i)), 2147483647i)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-global1.b))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-global1.b))))), !(u_input.b != ~1u))), 1069f, _wgslsmith_f_op_f32(f32(-1f) * -1158f));
    var var_0 = Struct_1(-1i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -314f), _wgslsmith_f_op_f32(ceil(global1.b.x)))))), _wgslsmith_f_op_f32(409f - global1.b.x), -533f);
    var var_1 = vec2<u32>(4294967295u, countOneBits(_wgslsmith_add_u32(u_input.b, u_input.b)));
    let var_2 = -_wgslsmith_div_vec2_i32(u_input.a.zx, vec2<i32>(-1i) * -_wgslsmith_mod_vec2_i32(vec2<i32>(0i, arg_0), u_input.a.zy));
    let var_3 = ~_wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(max(~vec4<i32>(var_0.a, 26416i, -2147483647i, u_input.a.x), select(vec4<i32>(var_2.x, 2147483647i, 24822i, -1i), vec4<i32>(2147483647i, var_0.a, -1i, 1i), vec4<bool>(true, false, true, false))), firstTrailingBit(vec4<i32>(-2147483647i, 26027i, var_2.x, var_0.a) | vec4<i32>(37916i, arg_0, 2147483647i, global0.a))), firstLeadingBit(~func_2(global2[_wgslsmith_index_u32(u_input.b, 23u)], u_input.b, vec2<i32>(global1.a, var_0.a))));
    return global2[_wgslsmith_index_u32(~reverseBits(_wgslsmith_mod_u32(1u, ~(~4294967295u))), 23u)];
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32, arg_3: vec4<u32>) -> Struct_1 {
    let var_0 = func_1(u_input.a.x << (_wgslsmith_mod_u32(1u, select(~u_input.b, 34402u, u_input.b <= u_input.b)) % 32u));
    let var_1 = firstLeadingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(~56743u, ~73847u << (0u % 32u), ~(~37883u)), ~vec3<u32>(arg_3.x, 37671u, arg_3.x)));
    var var_2 = true;
    let var_3 = 0u;
    global1 = func_1((i32(-1i) * -u_input.a.x) ^ arg_0.a);
    return func_1(-2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(Struct_1(global0.a, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-global1.b.x), global0.b.x)), 591f, _wgslsmith_f_op_f32(global1.b.x * global0.c)), func_1(-31688i << (abs(1u) % 32u)), 113374u, firstLeadingBit(vec4<u32>(reverseBits(u_input.b), u_input.b, u_input.b, 0u)));
    let var_1 = func_4(func_4(Struct_1(~(~26897i), var_0.b, var_0.c, _wgslsmith_f_op_f32(max(-439f, _wgslsmith_f_op_f32(step(var_0.b.x, 2040f))))), func_1(0i), 14193u, abs(countOneBits(~vec4<u32>(u_input.b, 9009u, u_input.b, u_input.b)))), Struct_1(1i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1431f, global1.d) + global0.b)))), _wgslsmith_f_op_f32(min(global0.c, -1975f)), _wgslsmith_f_op_f32(global1.d * _wgslsmith_div_f32(-850f, -198f))), _wgslsmith_dot_vec4_u32(vec4<u32>(3612u, 56480u, 27251u, 4294967295u) ^ countOneBits(vec4<u32>(u_input.b, u_input.b, u_input.b, 84562u) >> (vec4<u32>(u_input.b, 14981u, 0u, 63042u) % vec4<u32>(32u))), _wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(0u, 0u, 35660u, 1u), vec4<u32>(u_input.b, 65225u, u_input.b, u_input.b)), select(_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, u_input.b, u_input.b, 59590u), vec4<u32>(0u, 4294967295u, u_input.b, u_input.b), vec4<u32>(16834u, 4654u, u_input.b, 0u)), ~vec4<u32>(u_input.b, u_input.b, u_input.b, 30598u), all(vec2<bool>(false, true))))), ~vec4<u32>(46940u, select(u_input.b >> (u_input.b % 32u), u_input.b, true), 1u, min(43110u, 4294967295u | u_input.b)));
    let var_2 = vec2<bool>(true, _wgslsmith_dot_vec3_u32(~(vec3<u32>(49518u, u_input.b, u_input.b) & vec3<u32>(u_input.b, u_input.b, 14713u)), vec3<u32>(~u_input.b, u_input.b, 0u)) != (u_input.b & ~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 66819u, u_input.b, 1u), vec4<u32>(u_input.b, u_input.b, u_input.b, 4294967295u))));
    global1 = var_1;
    var var_3 = global2[_wgslsmith_index_u32(countOneBits(0u), 23u)];
    var var_4 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.b.x, var_1.d, var_1.b.x, var_1.c)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.b.x, var_0.b.x, var_1.b.x, var_1.c) + vec4<f32>(-1340f, var_1.b.x, global0.c, 1092f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_3.d), -171f, 1305f, func_1(var_1.a).b.x) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b.x, global1.b.x, -885f, var_0.b.x) + vec4<f32>(var_1.b.x, var_0.b.x, -516f, var_0.d)), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0.c, 209f, var_3.b.x, var_1.d))), global0.c <= var_0.c))), !select(!vec4<bool>(true, var_2.x, var_2.x, true), !vec4<bool>(false, var_2.x, true, false), select(vec4<bool>(var_2.x, var_2.x, var_2.x, var_2.x), vec4<bool>(true, true, true, true), vec4<bool>(var_2.x, var_2.x, var_2.x, var_2.x))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global0.c, 1223f, var_3.d, global1.c))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(108f, 1000f, 1000f, var_1.b.x))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1193f, -1196f, var_1.d, global1.d)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.c, var_3.c, global1.c, global1.c)) * vec4<f32>(1752f, 1669f, -689f, global0.c))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(-21554i, -1i, -1i) << (vec3<u32>(u_input.b, 4059u, u_input.b) % vec3<u32>(32u)), reverseBits(vec3<i32>(global1.a, 2147483647i, 0i))), countOneBits(~u_input.a)), -func_2(func_1(-40149i), 104220u, u_input.a.yx).zzx), u_input.a.zz >> (_wgslsmith_div_vec2_u32(select(vec2<u32>(u_input.b, u_input.b), vec2<u32>(u_input.b, u_input.b), !vec2<bool>(true, var_2.x)), _wgslsmith_mult_vec2_u32(~vec2<u32>(u_input.b, 4294967295u), vec2<u32>(u_input.b, u_input.b))) % vec2<u32>(32u)), vec2<u32>((1u >> (0u % 32u)) | (u_input.b << (35346u % 32u)), 0u) & reverseBits(vec2<u32>(4294967295u, ~u_input.b)), ~_wgslsmith_clamp_u32(_wgslsmith_add_u32(0u, 1u), min(u_input.b, 0u), ~0u) >> (_wgslsmith_dot_vec3_u32(reverseBits(countOneBits(vec3<u32>(u_input.b, 85859u, 133295u))), ~(~vec3<u32>(26556u, u_input.b, 4294967295u))) % 32u), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(350f, _wgslsmith_f_op_f32(-var_3.b.x), _wgslsmith_f_op_f32(sign(644f))) + vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -360f), _wgslsmith_f_op_f32(308f + var_0.c), global1.d)), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -167f, 1014f)) + _wgslsmith_f_op_vec3_f32(-var_4.xyy)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_4.xyw))))));
}

