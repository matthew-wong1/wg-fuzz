struct Struct_1 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: vec3<i32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 29>;

var<private> global1: bool = false;

var<private> global2: vec2<f32>;

var<private> global3: u32;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec4<u32>, arg_1: vec3<f32>, arg_2: Struct_1) -> f32 {
    let var_0 = arg_0.x;
    global1 = ~_wgslsmith_dot_vec4_i32(reverseBits(abs(vec4<i32>(2147483647i, arg_2.a.x, arg_2.a.x, u_input.a.x))), _wgslsmith_mult_vec4_i32(firstTrailingBit(vec4<i32>(u_input.a.x, arg_2.a.x, 54839i, u_input.a.x)), reverseBits(vec4<i32>(u_input.a.x, 2147483647i, arg_2.a.x, -3070i)))) > arg_2.a.x;
    let var_1 = arg_2;
    var var_2 = !vec4<bool>(true || !any(vec3<bool>(true, false, false)), false, true, -1969f < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1597f + arg_1.x)));
    var var_3 = Struct_1(vec2<i32>(~0i, 1i) & vec2<i32>(abs(var_1.a.x) | 0i, _wgslsmith_div_i32(u_input.a.x, i32(-1i) * -38037i)));
    return 1736f;
}

fn func_2(arg_0: i32, arg_1: i32) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global2.x + -1249f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(global2.x)))))) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_3(~vec4<u32>(1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(54465u, 29u)], 29u)], 29u)], 29u)], 29187u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 29u)], 29u)], 29u)], 29u)]), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(228f, 1193f, global2.x), vec3<f32>(-745f, 976f, 763f))), Struct_1(vec2<i32>(u_input.a.x, arg_0)))), global2.x))));
    global1 = true;
    var var_1 = Struct_1(vec2<i32>(abs(2147483647i), 44003i));
    global0 = array<u32, 29>();
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x + global2.x))))));
    return firstTrailingBit(_wgslsmith_div_i32(arg_0, select(_wgslsmith_dot_vec4_i32(vec4<i32>(68793i, 2243i, 69932i, -1i), min(vec4<i32>(arg_0, var_1.a.x, 1i, var_1.a.x), vec4<i32>(u_input.a.x, 2147483647i, -47504i, 14343i))), arg_1, any(vec2<bool>(false, true)))));
}

fn func_1() -> i32 {
    let var_0 = u_input.a.x;
    global2 = _wgslsmith_div_vec2_f32(vec2<f32>(global2.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -140f)), 1f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(136f, -976f), _wgslsmith_div_vec2_f32(vec2<f32>(global2.x, 996f), vec2<f32>(577f, global2.x))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global2.x, global2.x))))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-global2.x), global2.x))));
    global3 = firstLeadingBit(~(~0u));
    let var_1 = Struct_1(_wgslsmith_clamp_vec2_i32(vec2<i32>(var_0 ^ func_2(-2147483647i, u_input.a.x), abs(1i)), u_input.a, u_input.a & firstTrailingBit(u_input.a)));
    let var_2 = ~global0[_wgslsmith_index_u32(~(~abs(min(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 29u)], 29u)], 29u)], 29u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(30877u, 29u)], 29u)]))), 29u)];
    return ~firstTrailingBit(func_2(select(0i, var_0, true), _wgslsmith_clamp_i32(-905i, max(0i, var_0), min(8550i, -14148i))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-1000f, global2.x), vec2<f32>(-1237f, -864f))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1610f, 817f), vec2<f32>(global2.x, global2.x))), vec2<f32>(global2.x, global2.x)))))));
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1700f, global2.x, 422f)) + vec3<f32>(_wgslsmith_f_op_f32(-global2.x), -1000f, _wgslsmith_div_f32(global2.x, global2.x)))));
    global3 = 4294967295u;
    var var_1 = _wgslsmith_mult_i32(u_input.a.x, ~(~(1i << (global0[_wgslsmith_index_u32(60485u, 29u)] % 32u)))) & _wgslsmith_clamp_i32(u_input.a.x, u_input.a.x, 2147483647i);
    var_1 = _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(countOneBits(_wgslsmith_mod_i32(u_input.a.x, -2147483647i)), _wgslsmith_dot_vec2_i32(vec2<i32>(20526i, 6820i), vec2<i32>(u_input.a.x, 29601i)), -1546i, reverseBits(u_input.a.x)), vec4<i32>(~u_input.a.x, u_input.a.x, 35242i, -1i) << (countOneBits(_wgslsmith_mod_vec4_u32(vec4<u32>(0u, 30215u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 29u)], 29u)], 4294967295u), vec4<u32>(1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(96311u, 29u)], 29u)], 29u)], global0[_wgslsmith_index_u32(47225u, 29u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(64091u, 29u)], 29u)]))) % vec4<u32>(32u))), vec4<i32>(select(abs(min(u_input.a.x, u_input.a.x)), _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a.x, 1i, 1i), vec3<i32>(0i, 62203i, -1i)), vec3<i32>(u_input.a.x, u_input.a.x, 2147483647i)), true), _wgslsmith_dot_vec4_i32(abs(countOneBits(vec4<i32>(u_input.a.x, u_input.a.x, -11284i, 80549i))), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, 21039i, u_input.a.x) ^ vec4<i32>(26358i, 2147483647i, 2147483647i, 0i), _wgslsmith_sub_vec4_i32(vec4<i32>(1i, 35701i, u_input.a.x, -7465i), vec4<i32>(u_input.a.x, 336i, -29735i, 0i)))), u_input.a.x, ~min(20066i, func_1())));
    var var_2 = _wgslsmith_mod_vec2_i32(~(~vec2<i32>(-u_input.a.x, firstLeadingBit(0i))), vec2<i32>(u_input.a.x, 0i));
    global0 = array<u32, 29>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x + _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(var_0.x, var_0.x))))), var_0, vec3<i32>(abs(~1i), ~(-select(36182i, u_input.a.x, true)), _wgslsmith_add_i32(_wgslsmith_add_i32(~u_input.a.x, func_2(var_2.x, 2147483647i)), -func_1())), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0.x, 496f, var_0.x, 3397f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(827f, 1129f, global2.x, 1000f) * _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global2.x, global2.x, var_0.x, var_0.x))))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(1871f, _wgslsmith_f_op_f32(select(1050f, 1753f, true)), -422f, _wgslsmith_f_op_f32(-global2.x)) * vec4<f32>(_wgslsmith_div_f32(-1139f, var_0.x), _wgslsmith_div_f32(-401f, var_0.x), var_0.x, _wgslsmith_f_op_f32(func_3(vec4<u32>(0u, global0[_wgslsmith_index_u32(61939u, 29u)], global0[_wgslsmith_index_u32(18521u, 29u)], 26499u), vec3<f32>(-643f, global2.x, var_0.x), Struct_1(u_input.a)))))));
}

