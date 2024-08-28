struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: vec3<i32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec2<f32>,
    c: Struct_2,
    d: f32,
}

struct Struct_4 {
    a: Struct_3,
    b: f32,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 16> = array<bool, 16>(true, true, true, false, false, true, true, false, true, true, false, true, false, true, false, true);

var<private> global1: array<u32, 30> = array<u32, 30>(0u, 16614u, 1u, 0u, 33671u, 1u, 71752u, 4294967295u, 0u, 72078u, 1u, 0u, 1u, 40581u, 4294967295u, 4294967295u, 13140u, 86445u, 0u, 0u, 1u, 14162u, 11453u, 72494u, 4294967295u, 4294967295u, 0u, 39169u, 4294967295u, 4294967295u);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> i32 {
    var var_0 = Struct_3(vec3<f32>(_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(select(758f, 1757f, all(vec4<bool>(true, true, true, true))))), _wgslsmith_f_op_f32(f32(-1f) * -226f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(416f - 122f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1117f, 1687f) + vec2<f32>(697f, 333f))))), Struct_2(Struct_1(u_input.a), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1f))), Struct_1(vec3<u32>(1u, u_input.a.x & 20966u, ~global1[_wgslsmith_index_u32(0u, 30u)])), _wgslsmith_sub_vec3_i32(-_wgslsmith_sub_vec3_i32(vec3<i32>(23558i, 4632i, -12252i), vec3<i32>(15712i, 2147483647i, 10263i)), countOneBits(firstLeadingBit(vec3<i32>(0i, 10827i, 19160i))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(-1257f, -764f)))) * -1097f)));
    var var_1 = var_0.c;
    var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(sign(-1568f)), _wgslsmith_f_op_f32(f32(-1f) * -1521f), -1537f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.a), _wgslsmith_f_op_vec3_f32(min(var_0.a, var_0.a)))))), vec2<f32>(401f, _wgslsmith_f_op_f32(-var_1.b)), Struct_2(var_0.c.a, _wgslsmith_f_op_f32(var_0.d + var_1.b), var_1.a, _wgslsmith_add_vec3_i32(~select(vec3<i32>(72826i, 2147483647i, var_1.d.x), vec3<i32>(var_0.c.d.x, var_0.c.d.x, 1i), vec3<bool>(true, global0[_wgslsmith_index_u32(var_0.c.a.a.x, 16u)], false)), var_0.c.d)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -436f) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-608f - _wgslsmith_f_op_f32(f32(-1f) * -588f)), _wgslsmith_div_f32(var_1.b, var_0.c.b), global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_mult_u32(var_0.c.a.a.x, var_1.a.a.x), _wgslsmith_add_u32(var_0.c.c.a.x, u_input.a.x)), 30u)], 16u)]))));
    let var_2 = Struct_3(var_0.a, vec2<f32>(1095f, -207f), var_0.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.b - -279f) + _wgslsmith_f_op_f32(floor(var_0.b.x))));
    var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1201f, _wgslsmith_f_op_f32(abs(-1627f)), var_0.a.x) - _wgslsmith_f_op_vec3_f32(var_0.a * _wgslsmith_f_op_vec3_f32(var_0.a * var_2.a))) * vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -3188f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.d - var_1.b)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.b.x), -1150f)))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(var_2.b, _wgslsmith_f_op_vec2_f32(var_0.b - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1083f, 2004f), vec2<f32>(var_0.d, var_0.c.b), vec2<bool>(false, false)))), true)))), var_2.c, 1000f);
    return -19543i;
}

fn func_2(arg_0: Struct_2, arg_1: u32, arg_2: vec2<bool>) -> Struct_1 {
    let var_0 = -1919f;
    let var_1 = -(~(~vec2<i32>(2147483647i, func_3())));
    let var_2 = countOneBits(_wgslsmith_sub_u32(1510u, firstTrailingBit(global1[_wgslsmith_index_u32(73952u, 30u)]) << (~arg_0.c.a.x % 32u))) << (countOneBits((arg_0.a.a.x >> (0u % 32u)) >> (_wgslsmith_clamp_u32(~88815u, ~29464u, min(24689u, global1[_wgslsmith_index_u32(arg_1, 30u)])) % 32u)) % 32u);
    var var_3 = arg_0;
    let var_4 = var_3.c.a.yx;
    return Struct_1(reverseBits(~abs(_wgslsmith_mult_vec3_u32(vec3<u32>(arg_0.a.a.x, var_3.c.a.x, var_2), var_3.c.a))));
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_3, arg_2: vec3<bool>, arg_3: Struct_3) -> Struct_3 {
    var var_0 = arg_3;
    var var_1 = func_2(var_0.c, arg_0.x, select(vec2<bool>(!arg_2.x, !arg_2.x), arg_2.zy, !select(!vec2<bool>(false, global0[_wgslsmith_index_u32(arg_0.x, 16u)]), arg_2.yx, vec2<bool>(arg_2.x, false))));
    var_0 = arg_3;
    return arg_1;
}

fn func_1(arg_0: vec2<f32>, arg_1: vec3<u32>) -> Struct_3 {
    let var_0 = func_4(~(~abs(vec4<u32>(arg_1.x, arg_1.x, 10456u, 47318u) ^ vec4<u32>(global1[_wgslsmith_index_u32(arg_1.x, 30u)], 4294967295u, u_input.a.x, 0u))), Struct_3(vec3<f32>(_wgslsmith_f_op_f32(min(1f, -160f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1838f + arg_0.x), _wgslsmith_f_op_f32(-291f + -1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(256f + arg_0.x) - -326f)), _wgslsmith_f_op_vec2_f32(arg_0 * _wgslsmith_f_op_vec2_f32(arg_0 - _wgslsmith_f_op_vec2_f32(exp2(arg_0)))), Struct_2(Struct_1(~u_input.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x - arg_0.x) + -972f), func_2(Struct_2(Struct_1(u_input.a), 267f, Struct_1(arg_1), vec3<i32>(41835i, -19416i, -54687i)), 1u, select(vec2<bool>(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_1.x, 30u)], 16u)], false), vec2<bool>(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(53197u, 30u)], 30u)], 16u)], false), false)), vec3<i32>(~(-1i), i32(-1i) * -2147483647i, -1i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x))), !vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 16u)] || (global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 30u)], 30u)] >= 16376u), all(vec3<bool>(false, true, global0[_wgslsmith_index_u32(u_input.a.x, 16u)])), all(select(vec3<bool>(true, false, global0[_wgslsmith_index_u32(27728u, 16u)]), vec3<bool>(true, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(19369u, 30u)], 16u)], false), vec3<bool>(global0[_wgslsmith_index_u32(arg_1.x, 16u)], true, true)))), Struct_3(vec3<f32>(1f, arg_0.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_0.x - 1000f)))), _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0 + vec2<f32>(-933f, 455f)), vec2<f32>(-470f, -197f)), vec2<f32>(-589f, 499f)), Struct_2(func_2(Struct_2(Struct_1(vec3<u32>(2990u, u_input.a.x, arg_1.x)), 220f, Struct_1(arg_1), vec3<i32>(1i, 1i, 2147483647i)), _wgslsmith_mult_u32(global1[_wgslsmith_index_u32(u_input.a.x, 30u)], 28441u), vec2<bool>(true, global0[_wgslsmith_index_u32(arg_1.x, 16u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_0.x, -320f, global0[_wgslsmith_index_u32(u_input.a.x, 16u)])) + _wgslsmith_f_op_f32(-arg_0.x)), Struct_1(vec3<u32>(u_input.a.x, 4670u, 0u)), vec3<i32>(~(-38395i), ~50467i, 2147483647i)), -381f));
    global1 = array<u32, 30>();
    global1 = array<u32, 30>();
    var var_1 = Struct_4(func_4(vec4<u32>(_wgslsmith_clamp_u32(abs(global1[_wgslsmith_index_u32(1u, 30u)]), var_0.c.a.a.x & arg_1.x, ~global1[_wgslsmith_index_u32(4294967295u, 30u)]), arg_1.x, 0u, ~(32474u & u_input.a.x)), Struct_3(_wgslsmith_div_vec3_f32(var_0.a, vec3<f32>(arg_0.x, var_0.b.x, var_0.b.x)), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(exp2(arg_0)))), func_4(abs(vec4<u32>(64721u, arg_1.x, arg_1.x, 4294967295u)), Struct_3(vec3<f32>(-1000f, arg_0.x, -1018f), arg_0, var_0.c, arg_0.x), vec3<bool>(global0[_wgslsmith_index_u32(arg_1.x, 16u)], global0[_wgslsmith_index_u32(var_0.c.c.a.x, 16u)], false), var_0).c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x * 1607f))), select(!select(vec3<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 16u)], global0[_wgslsmith_index_u32(var_0.c.a.a.x, 16u)], global0[_wgslsmith_index_u32(var_0.c.c.a.x, 16u)]), vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.a.x, 16u)], false), vec3<bool>(global0[_wgslsmith_index_u32(33377u, 16u)], global0[_wgslsmith_index_u32(4294967295u, 16u)], global0[_wgslsmith_index_u32(4294967295u, 16u)])), !select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.a.x, 16u)], global0[_wgslsmith_index_u32(4294967295u, 16u)])), vec3<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 16u)], global0[_wgslsmith_index_u32(max(arg_1.x, u_input.a.x), 16u)], all(vec3<bool>(true, true, global0[_wgslsmith_index_u32(4294967295u, 16u)])))), var_0), -525f, _wgslsmith_sub_vec2_u32(_wgslsmith_mult_vec2_u32(~u_input.a.xx, ~(vec2<u32>(1u, arg_1.x) >> (arg_1.zx % vec2<u32>(32u)))), ~_wgslsmith_div_vec2_u32(countOneBits(vec2<u32>(28488u, 21631u)), vec2<u32>(var_0.c.c.a.x, 4294967295u) | var_0.c.c.a.zz)));
    let var_2 = arg_0.x;
    return func_4(vec4<u32>(~countOneBits(~global1[_wgslsmith_index_u32(var_1.a.c.a.a.x, 30u)]), _wgslsmith_dot_vec2_u32((var_0.c.c.a.zy | u_input.a.xy) ^ vec2<u32>(4294967295u, 397u), var_1.a.c.c.a.yx), ~_wgslsmith_dot_vec2_u32(abs(var_1.a.c.c.a.xx), arg_1.zy), func_2(func_4(vec4<u32>(var_0.c.c.a.x, 32210u, arg_1.x, global1[_wgslsmith_index_u32(9119u, 30u)]), var_1.a, vec3<bool>(global0[_wgslsmith_index_u32(0u, 16u)], true, global0[_wgslsmith_index_u32(46946u, 16u)]), Struct_3(vec3<f32>(-663f, 494f, arg_0.x), vec2<f32>(-1499f, 1777f), Struct_2(Struct_1(var_0.c.c.a), var_0.d, var_0.c.a, var_1.a.c.d), arg_0.x)).c, 0u, vec2<bool>(!global0[_wgslsmith_index_u32(1u, 16u)], global0[_wgslsmith_index_u32(var_0.c.c.a.x, 16u)] && false)).a.x), Struct_3(_wgslsmith_f_op_vec3_f32(exp2(var_0.a)), arg_0, func_4(vec4<u32>(_wgslsmith_div_u32(u_input.a.x, global1[_wgslsmith_index_u32(0u, 30u)]), u_input.a.x, global1[_wgslsmith_index_u32(arg_1.x, 30u)], _wgslsmith_mod_u32(arg_1.x, var_1.c.x)), var_1.a, vec3<bool>(all(vec4<bool>(true, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 30u)], 16u)], true, global0[_wgslsmith_index_u32(63414u, 16u)])), arg_0.x > -1000f, true), func_4(~vec4<u32>(var_0.c.a.a.x, 4294967295u, 4294967295u, 4294967295u), func_4(vec4<u32>(1u, 1u, 4294967295u, var_1.c.x), var_1.a, vec3<bool>(global0[_wgslsmith_index_u32(0u, 16u)], false, false), Struct_3(vec3<f32>(-842f, -252f, var_1.b), vec2<f32>(var_0.b.x, 314f), Struct_2(var_1.a.c.c, 760f, Struct_1(u_input.a), vec3<i32>(-41325i, 1i, var_1.a.c.d.x)), -111f)), !vec3<bool>(false, true, global0[_wgslsmith_index_u32(var_0.c.c.a.x, 16u)]), var_0)).c, 198f), vec3<bool>(global0[_wgslsmith_index_u32(~0u, 16u)] || true, false, global0[_wgslsmith_index_u32(1u, 16u)]), func_4(max(~_wgslsmith_sub_vec4_u32(vec4<u32>(47578u, u_input.a.x, 4294967295u, 43701u), vec4<u32>(u_input.a.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 30u)], 30u)], 29203u, var_0.c.a.a.x)), vec4<u32>(4294967295u, var_1.c.x, 1u, 1u) | ~vec4<u32>(58560u, arg_1.x, var_1.c.x, 1u)), Struct_3(var_1.a.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.b)), Struct_2(func_2(var_0.c, var_0.c.a.a.x, vec2<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 16u)])), arg_0.x, var_0.c.a, select(var_0.c.d, var_0.c.d, vec3<bool>(true, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_0.c.a.a.x, 30u)], 16u)], true))), _wgslsmith_f_op_f32(step(370f, _wgslsmith_f_op_f32(-1534f + var_2)))), !vec3<bool>(global0[_wgslsmith_index_u32(max(0u, arg_1.x), 16u)], global0[_wgslsmith_index_u32(u_input.a.x, 16u)], global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.a.c.c.a.x, 27189u, var_1.a.c.a.a.x, u_input.a.x), vec4<u32>(arg_1.x, global1[_wgslsmith_index_u32(0u, 30u)], var_0.c.c.a.x, 64561u)), 16u)]), Struct_3(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-var_0.a), var_0.a)), var_0.a.zz, Struct_2(var_1.a.c.c, _wgslsmith_f_op_f32(-var_2), Struct_1(vec3<u32>(arg_1.x, 0u, global1[_wgslsmith_index_u32(var_0.c.a.a.x, 30u)])), vec3<i32>(var_0.c.d.x, var_1.a.c.d.x, 0i)), -140f)));
}

fn func_5(arg_0: vec4<f32>, arg_1: Struct_3, arg_2: f32, arg_3: vec3<bool>) -> vec4<i32> {
    var var_0 = !select(!select(!vec4<bool>(arg_3.x, false, global0[_wgslsmith_index_u32(u_input.a.x, 16u)], arg_3.x), vec4<bool>(true, true, true, true), global0[_wgslsmith_index_u32(86259u ^ arg_1.c.a.a.x, 16u)]), vec4<bool>(any(select(vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.a.x, 16u)], false, global0[_wgslsmith_index_u32(u_input.a.x, 16u)]), vec4<bool>(arg_3.x, global0[_wgslsmith_index_u32(69825u, 16u)], arg_3.x, global0[_wgslsmith_index_u32(3839u, 16u)]), vec4<bool>(true, global0[_wgslsmith_index_u32(0u, 16u)], arg_3.x, false))), true, true, global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~52598u, firstLeadingBit(1u)), 16u)]), vec4<bool>(all(!vec2<bool>(global0[_wgslsmith_index_u32(0u, 16u)], global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 30u)], 16u)])), true, false | all(arg_3), select(false & global0[_wgslsmith_index_u32(arg_1.c.c.a.x, 16u)], !arg_3.x, arg_3.x)));
    var var_1 = _wgslsmith_dot_vec2_u32(~(~_wgslsmith_div_vec2_u32(~vec2<u32>(3497u, 10100u), u_input.a.xz)), ~arg_1.c.c.a.zy);
    var_1 = ~0u;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1460f), 1000f) - 886f);
    var_0 = !select(!select(select(vec4<bool>(var_0.x, true, false, false), vec4<bool>(global0[_wgslsmith_index_u32(1u, 16u)], true, var_0.x, true), vec4<bool>(global0[_wgslsmith_index_u32(40538u, 16u)], var_0.x, false, global0[_wgslsmith_index_u32(arg_1.c.a.a.x, 16u)])), !vec4<bool>(false, arg_3.x, true, true), select(vec4<bool>(false, global0[_wgslsmith_index_u32(1u, 16u)], true, false), vec4<bool>(false, false, arg_3.x, true), false)), select(vec4<bool>(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 30u)] ^ 82063u, 16u)], 2147483647i <= arg_1.c.d.x, true, arg_1.c.d.x >= 5431i), vec4<bool>(var_0.x, all(arg_3.yy), var_0.x, !var_0.x), !(!vec4<bool>(false, global0[_wgslsmith_index_u32(22747u, 16u)], false, true))), true);
    return (vec4<i32>(-1i) * -vec4<i32>(_wgslsmith_sub_i32(-12487i, 43022i), _wgslsmith_mult_i32(13109i, -20656i), _wgslsmith_mod_i32(arg_1.c.d.x, -2147483647i), 29548i)) << (firstLeadingBit(firstTrailingBit(_wgslsmith_mult_vec4_u32(~vec4<u32>(0u, 4294967295u, arg_1.c.a.a.x, 35082u), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, 11530u, 0u, arg_1.c.c.a.x), vec4<u32>(arg_1.c.c.a.x, 33944u, 1u, arg_1.c.c.a.x))))) % vec4<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_sub_vec4_i32(~_wgslsmith_add_vec4_i32(vec4<i32>(~(-2147483647i), -1378i, _wgslsmith_dot_vec3_i32(vec3<i32>(9694i, -39430i, 37374i), vec3<i32>(24151i, -1249i, 0i)), 2147483647i), vec4<i32>(i32(-1i) * -34448i, _wgslsmith_mod_i32(1i, 30826i), ~2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(22941i, 2147483647i, 31650i), vec3<i32>(-1i, -1i, -15660i)))), vec4<i32>(_wgslsmith_mod_i32(1i, abs(min(32994i, -2147483647i))), abs(~1i), 2147483647i, max(_wgslsmith_mod_i32(countOneBits(-58316i), -55272i), ~(-1i))));
    let var_1 = global1[_wgslsmith_index_u32(u_input.a.x, 30u)];
    global0 = array<bool, 16>();
    var var_2 = _wgslsmith_add_vec4_i32(min(vec4<i32>(_wgslsmith_add_i32(-1i, -10197i), var_0.x, abs(var_0.x), 1i), -vec4<i32>(var_0.x, 2147483647i, -2147483647i, 0i) >> (firstTrailingBit(vec4<u32>(44907u, u_input.a.x, 40197u, global1[_wgslsmith_index_u32(1u, 30u)])) % vec4<u32>(32u))), ~(~vec4<i32>(1i, var_0.x, -26881i, -1i)) >> (((vec4<u32>(u_input.a.x, 0u, 2364u, global1[_wgslsmith_index_u32(76208u, 30u)]) >> (vec4<u32>(u_input.a.x, 1u, global1[_wgslsmith_index_u32(46494u, 30u)], 4294967295u) % vec4<u32>(32u))) & vec4<u32>(u_input.a.x, 18051u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 30u)], 30u)], global1[_wgslsmith_index_u32(4294967295u, 30u)])) % vec4<u32>(32u))) & func_5(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(423f, 2468f, -385f, 920f), vec4<f32>(620f, -507f, -179f, 146f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1931f, 944f, 751f, 464f))), select(!vec4<bool>(true, global0[_wgslsmith_index_u32(1u, 16u)], false, global0[_wgslsmith_index_u32(0u, 16u)]), vec4<bool>(true, true, true, global0[_wgslsmith_index_u32(1u, 16u)]), !global0[_wgslsmith_index_u32(0u, 16u)]))), func_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1017f, 418f)) - vec2<f32>(585f, 709f)), _wgslsmith_div_vec3_u32(u_input.a, ~vec3<u32>(u_input.a.x, global1[_wgslsmith_index_u32(0u, 30u)], u_input.a.x))), _wgslsmith_div_f32(-667f, -749f), !(!vec3<bool>(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 30u)], 16u)], true, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 30u)], 16u)])));
    var var_3 = func_4(_wgslsmith_mod_vec4_u32(~(~(~vec4<u32>(9778u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 30u)], 30u)], 0u, 65971u))), ~min(vec4<u32>(global1[_wgslsmith_index_u32(51537u, 30u)], 56389u, 1u, 97047u) ^ vec4<u32>(global1[_wgslsmith_index_u32(4969u, 30u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 30u)], 30u)], 4294967295u, global1[_wgslsmith_index_u32(68605u, 30u)]), _wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, global1[_wgslsmith_index_u32(0u, 30u)], 26704u, u_input.a.x), vec4<u32>(29344u, 0u, 24364u, 16462u)))), func_1(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1130f * 1094f) - _wgslsmith_f_op_f32(-1241f - 715f)), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(1000f, -1455f)))), u_input.a), select(vec3<bool>(false, global0[_wgslsmith_index_u32(~(~1u), 16u)], global0[_wgslsmith_index_u32(countOneBits(~36616u), 16u)]), vec3<bool>(global0[_wgslsmith_index_u32(abs(_wgslsmith_sub_u32(u_input.a.x, u_input.a.x)), 16u)], select(true | global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 30u)], 30u)], 16u)], false, select(true, global0[_wgslsmith_index_u32(0u, 16u)], true)), false || !global0[_wgslsmith_index_u32(1u, 16u)]), !global0[_wgslsmith_index_u32(u_input.a.x, 16u)]), Struct_3(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1f, 1f, 1f), vec3<f32>(_wgslsmith_f_op_f32(1837f * 1848f), _wgslsmith_f_op_f32(ceil(-569f)), -749f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-func_1(vec2<f32>(-139f, -195f), u_input.a).a.xx)), Struct_2(func_4(abs(vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 30u)], 30u)], 30u)], 0u, 4294967295u, u_input.a.x)), Struct_3(vec3<f32>(-942f, 409f, -188f), vec2<f32>(684f, 1205f), Struct_2(Struct_1(vec3<u32>(u_input.a.x, global1[_wgslsmith_index_u32(41971u, 30u)], 4294967295u)), -137f, Struct_1(u_input.a), var_0.zww), 1000f), !vec3<bool>(true, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(50658u, 30u)], 16u)], global0[_wgslsmith_index_u32(4294967295u, 16u)]), func_1(vec2<f32>(1652f, -575f), u_input.a)).c.c, 111f, Struct_1(~vec3<u32>(global1[_wgslsmith_index_u32(96996u, 30u)], global1[_wgslsmith_index_u32(u_input.a.x, 30u)], global1[_wgslsmith_index_u32(u_input.a.x, 30u)])), ~reverseBits(vec3<i32>(-32322i, var_0.x, -1i))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1420f))), -809f)))).c;
    var_2 = select(~min(select(vec4<i32>(var_2.x, -14258i, -2147483647i, var_0.x), vec4<i32>(var_2.x, -1i, var_3.d.x, var_3.d.x), vec4<bool>(false, global0[_wgslsmith_index_u32(var_3.c.a.x, 16u)], false, global0[_wgslsmith_index_u32(var_3.c.a.x, 16u)])), vec4<i32>(var_2.x, var_0.x, 16474i, var_0.x)), -vec4<i32>(1i, ~var_3.d.x, min(19245i, var_2.x), i32(-1i) * -2147483647i), select(select(global0[_wgslsmith_index_u32(~var_3.a.a.x, 16u)], true, global0[_wgslsmith_index_u32(~u_input.a.x, 16u)]), _wgslsmith_add_i32(16019i, var_3.d.x) < -var_3.d.x, any(!vec4<bool>(global0[_wgslsmith_index_u32(1u, 16u)], true, true, false)))) << (vec4<u32>(global1[_wgslsmith_index_u32(abs(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(var_3.a.a.yz, vec2<u32>(15561u, u_input.a.x)), global1[_wgslsmith_index_u32(31469u, 30u)] & 4294967295u)), 30u)], select(~(~u_input.a.x), u_input.a.x, !all(vec2<bool>(global0[_wgslsmith_index_u32(var_3.c.a.x, 16u)], true))), ~global1[_wgslsmith_index_u32(1u & var_3.a.a.x, 30u)], 17680u) % vec4<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32(firstLeadingBit(_wgslsmith_mult_u32(func_2(Struct_2(var_3.c, var_3.b, Struct_1(vec3<u32>(1u, u_input.a.x, var_3.a.a.x)), var_2.zyy), 4294967295u, vec2<bool>(global0[_wgslsmith_index_u32(0u, 16u)], false)).a.x, 4294967295u)), _wgslsmith_clamp_u32(var_3.a.a.x, 64917u, ~var_3.c.a.x)), _wgslsmith_f_op_f32(-774f - var_3.b));
}

