struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec4<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: bool;

var<private> global2: bool;

var<private> global3: array<vec4<u32>, 5>;

var<private> global4: array<Struct_1, 21> = array<Struct_1, 21>(Struct_1(1i), Struct_1(2147483647i), Struct_1(0i), Struct_1(1i), Struct_1(1i), Struct_1(43872i), Struct_1(-1i), Struct_1(31239i), Struct_1(6712i), Struct_1(21624i), Struct_1(-1i), Struct_1(-14298i), Struct_1(1i), Struct_1(-30860i), Struct_1(3516i), Struct_1(21479i), Struct_1(1i), Struct_1(2147483647i), Struct_1(-13274i), Struct_1(-2469i), Struct_1(8335i));

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_1(arg_0: bool, arg_1: i32, arg_2: Struct_2, arg_3: vec2<u32>) -> Struct_2 {
    return Struct_2(arg_2.a);
}

fn func_3() -> bool {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1267f, -2724f, 1159f, 673f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-534f, 743f, -1730f, 597f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1490f, 976f, 1000f, -1000f) * vec4<f32>(1000f, 274f, 1428f, 983f)))) - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(vec4<f32>(282f, -176f, 1708f, -713f), vec4<f32>(-252f, -1404f, -761f, 252f)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(487f, -2295f, 357f, 2332f), vec4<f32>(-788f, 1015f, -1054f, 1425f)))))), !vec4<bool>(true, any(vec3<bool>(true, false, false)), any(vec3<bool>(false, false, false)), all(vec2<bool>(false, false))))));
    let var_1 = -1i;
    var var_2 = vec3<i32>(8063i, ~(~(_wgslsmith_sub_i32(-2147483647i, var_1) ^ select(1i, global0.a, false))), min(global0.a, ~_wgslsmith_mult_i32(global0.a >> (u_input.c.x % 32u), i32(-1i) * -1i)));
    let var_3 = false;
    var_2 = vec3<i32>(0i, _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -38984i, var_2.x), vec3<i32>(global0.a, 4028i, var_1)), var_2.x, firstTrailingBit(var_1)), firstTrailingBit(-vec3<i32>(global0.a, global0.a, -6601i))), 1i), _wgslsmith_dot_vec4_i32(vec4<i32>(var_1 | 0i, var_1, global0.a, countOneBits(global0.a)), _wgslsmith_mod_vec4_i32(countOneBits(abs(vec4<i32>(var_1, 1i, var_1, -1i))), vec4<i32>(_wgslsmith_sub_i32(-6270i, global0.a), select(var_1, global0.a, true), ~(-2147483647i), ~(-1i)))));
    return all(select(!vec4<bool>(true, var_3, var_3, !var_3), vec4<bool>(!var_3, true, all(vec3<bool>(false, var_3, false)), select(any(vec4<bool>(var_3, false, false, false)), true, var_3)), !(!select(vec4<bool>(var_3, var_3, var_3, var_3), vec4<bool>(true, false, var_3, true), var_3))));
}

fn func_4(arg_0: Struct_2, arg_1: bool, arg_2: vec2<bool>) -> vec2<i32> {
    var var_0 = arg_0;
    global3 = array<vec4<u32>, 5>();
    let var_1 = Struct_2(_wgslsmith_add_vec2_i32(-countOneBits(_wgslsmith_sub_vec2_i32(arg_0.a, vec2<i32>(global0.a, 599i))), vec2<i32>(var_0.a.x, _wgslsmith_add_i32(-9280i, -10710i)) | arg_0.a));
    let var_2 = true;
    var var_3 = max(min(select(vec3<i32>(-2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(var_1.a.x, -2407i, arg_0.a.x), vec3<i32>(21180i, -41297i, var_0.a.x)), select(global0.a, global0.a, arg_1)), firstTrailingBit(vec3<i32>(1i, 27857i, global0.a) | vec3<i32>(2147483647i, var_0.a.x, arg_0.a.x)), vec3<bool>(true, false, select(arg_2.x, true, true))), _wgslsmith_mult_vec3_i32(_wgslsmith_sub_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(arg_0.a.x, -2147483647i, global0.a), vec3<i32>(arg_0.a.x, var_0.a.x, var_1.a.x)), vec3<i32>(arg_0.a.x, arg_0.a.x, global0.a)), reverseBits(min(vec3<i32>(global0.a, arg_0.a.x, 0i), vec3<i32>(-1i, -2147483647i, arg_0.a.x))))), -vec3<i32>(_wgslsmith_clamp_i32(~arg_0.a.x, var_0.a.x | arg_0.a.x, countOneBits(arg_0.a.x)), ~arg_0.a.x, -var_1.a.x));
    return ~arg_0.a;
}

fn func_2(arg_0: Struct_2, arg_1: Struct_2) -> vec3<bool> {
    let var_0 = firstTrailingBit(u_input.b) & u_input.b;
    let var_1 = Struct_2(func_4(Struct_2(~vec2<i32>(-2147483647i, global0.a)), true, vec2<bool>(true, func_3())));
    let var_2 = Struct_1(arg_0.a.x);
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -1526f), -1000f, 585f))))));
    var var_4 = Struct_2(vec2<i32>(-func_1(true, firstLeadingBit(2147483647i), arg_1, ~vec2<u32>(40904u, 1u)).a.x, var_2.a));
    return vec3<bool>((_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -1i, -73i, global0.a), _wgslsmith_mod_vec4_i32(vec4<i32>(12917i, -26588i, var_1.a.x, var_4.a.x), vec4<i32>(-17134i, global0.a, -8170i, 14759i))) & -9701i) > arg_1.a.x, any(vec3<bool>(true, !select(true, false, false), false)), all(vec2<bool>(true, true)));
}

fn func_5(arg_0: vec3<bool>, arg_1: vec4<bool>, arg_2: f32) -> f32 {
    global0 = global4[_wgslsmith_index_u32(59197u, 21u)];
    var var_0 = ~2147483647i;
    let var_1 = global4[_wgslsmith_index_u32(u_input.c.x, 21u)];
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-172f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2 + arg_2) + -137f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_2)) * arg_2)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-937f, arg_2, arg_2) - vec3<f32>(-279f, arg_2, arg_2)))), arg_1.zwy)));
    global3 = array<vec4<u32>, 5>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2 * _wgslsmith_f_op_f32(floor(246f))) + _wgslsmith_div_f32(var_2.x, _wgslsmith_f_op_f32(-538f * arg_2)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 21615i;
    let var_1 = true;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -127f) * _wgslsmith_div_f32(583f, -2376f)) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(-1127f)))))), vec4<f32>(_wgslsmith_f_op_f32(func_5(func_2(func_1(var_1, 73835i, Struct_2(vec2<i32>(global0.a, var_0)), vec2<u32>(4294967295u, 4294967295u)), func_1(false, -1i, Struct_2(vec2<i32>(11918i, var_0)), vec2<u32>(0u, 3282u))), select(vec4<bool>(true, true, true, true), vec4<bool>(var_1, false, var_1, true), var_1), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(489f))))), _wgslsmith_div_f32(1116f, _wgslsmith_f_op_f32(func_5(vec3<bool>(false, var_1, var_1), select(vec4<bool>(var_1, false, var_1, var_1), vec4<bool>(true, false, var_1, false), vec4<bool>(true, true, var_1, false)), _wgslsmith_f_op_f32(step(-1018f, -865f))))), _wgslsmith_f_op_f32(154f * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(465f, -698f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(612f - -746f)))), -545f);
}

