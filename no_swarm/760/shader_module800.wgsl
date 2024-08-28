struct Struct_1 {
    a: i32,
    b: bool,
    c: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-33847i, true, false);

var<private> global1: i32 = 43394i;

var<private> global2: array<f32, 20> = array<f32, 20>(-1000f, 2158f, 1115f, 539f, -186f, -1177f, -824f, -524f, 1000f, -525f, -115f, 1032f, -2273f, 1608f, -500f, 1140f, 114f, -455f, 1723f, -376f);

var<private> global3: Struct_1 = Struct_1(i32(-2147483648), true, true);

var<private> global4: Struct_1 = Struct_1(1i, false, true);

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3() -> vec3<f32> {
    let var_0 = -((reverseBits(u_input.a.x) & -2147483647i) | (global3.a ^ -_wgslsmith_mult_i32(global4.a, 1i)));
    global2 = array<f32, 20>();
    global0 = Struct_1(~5312i, any(select(select(vec3<bool>(true, false, global0.b), !vec3<bool>(false, global0.b, global0.c), !vec3<bool>(global4.c, false, false)), select(select(vec3<bool>(global0.c, global4.c, global0.c), vec3<bool>(false, global3.b, true), false), !vec3<bool>(global0.b, false, true), select(vec3<bool>(global3.b, global3.c, global0.c), vec3<bool>(false, global3.b, false), vec3<bool>(global3.c, false, global0.b))), vec3<bool>(global0.b, all(vec2<bool>(global0.b, true)), !global0.c))), global4.c);
    var var_1 = 1000f;
    var var_2 = true | global4.c;
    return _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2[_wgslsmith_index_u32(97345u, 20u)], global2[_wgslsmith_index_u32(1u, 20u)], -1939f) - vec3<f32>(-159f, 1279f, global2[_wgslsmith_index_u32(53384u, 20u)])) * _wgslsmith_f_op_vec3_f32(vec3<f32>(global2[_wgslsmith_index_u32(4294967295u, 20u)], global2[_wgslsmith_index_u32(1u, 20u)], global2[_wgslsmith_index_u32(62761u, 20u)]) + vec3<f32>(global2[_wgslsmith_index_u32(12192u, 20u)], -610f, 942f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(34718u, 20u)], _wgslsmith_f_op_f32(-1000f * global2[_wgslsmith_index_u32(4294967295u, 20u)]), _wgslsmith_f_op_f32(round(1831f))))))));
}

fn func_2(arg_0: vec2<bool>) -> Struct_1 {
    let var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3()), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global2[_wgslsmith_index_u32(35114u, 20u)], global2[_wgslsmith_index_u32(68199u, 20u)], global2[_wgslsmith_index_u32(13700u, 20u)])))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2[_wgslsmith_index_u32(20186u, 20u)], global2[_wgslsmith_index_u32(79634u, 20u)], global2[_wgslsmith_index_u32(9409u, 20u)]) + vec3<f32>(global2[_wgslsmith_index_u32(49765u, 20u)], global2[_wgslsmith_index_u32(4294967295u, 20u)], -957f))))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1763f) - _wgslsmith_f_op_f32(round(global2[_wgslsmith_index_u32(68608u, 20u)]))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(930f, 1481f) - global2[_wgslsmith_index_u32(countOneBits(65873u), 20u)]), _wgslsmith_f_op_vec3_f32(func_3()).x))));
    global3 = Struct_1(0i, !select(any(vec3<bool>(arg_0.x, true, true)), !(u_input.a.x >= global4.a), true), all(vec2<bool>(true, 11459i >= global4.a)) && !(!any(vec4<bool>(false, true, false, true))));
    var var_1 = global2[_wgslsmith_index_u32(countOneBits(~1u), 20u)];
    let var_2 = Struct_1(select(global0.a ^ ~(-22152i), ~countOneBits(-50809i), !global3.b), any(vec2<bool>(true, true)), !(global4.c || !(global0.a <= global0.a)));
    let var_3 = 134f;
    return var_2;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32) -> Struct_1 {
    var var_0 = _wgslsmith_mult_u32(_wgslsmith_mod_u32(~countOneBits(1u), arg_2) >> (~_wgslsmith_mod_u32(_wgslsmith_clamp_u32(49359u, arg_2, 4294967295u), arg_2 | arg_2) % 32u), 36139u);
    let var_1 = vec3<bool>(true, any(select(!select(vec4<bool>(false, false, arg_0.c, false), vec4<bool>(global0.c, true, arg_1.c, global4.c), global4.b), select(select(vec4<bool>(arg_0.c, global4.c, true, global0.b), vec4<bool>(false, global0.b, global3.c, true), true), select(vec4<bool>(true, true, false, global3.b), vec4<bool>(false, arg_0.c, global0.b, arg_0.b), vec4<bool>(true, global4.c, true, false)), !vec4<bool>(global0.b, false, true, global0.b)), false)), any(vec2<bool>(global4.c || all(vec4<bool>(false, arg_1.c, true, true)), true)));
    var var_2 = var_1;
    let var_3 = 1f;
    let var_4 = 0i;
    return arg_1;
}

fn func_1() -> f32 {
    let var_0 = !vec4<bool>(global4.b, true & all(vec3<bool>(true, global0.b, false)), any(!select(vec4<bool>(global0.b, false, global4.c, false), vec4<bool>(global3.b, false, global0.b, global4.c), true)), all(!vec4<bool>(true, global0.c, true, global3.c)) | (global2[_wgslsmith_index_u32(4294967295u, 20u)] <= -280f));
    let var_1 = Struct_1(-(global4.a ^ global4.a) & abs(abs(global4.a)), var_0.x, false);
    let var_2 = select(!select(true, !all(var_0), true), any(var_0.wxx), true);
    global3 = func_4(Struct_1(_wgslsmith_add_i32(-countOneBits(-1i), _wgslsmith_dot_vec3_i32(~vec3<i32>(25193i, u_input.a.x, -17764i), _wgslsmith_mod_vec3_i32(vec3<i32>(-15683i, u_input.a.x, global4.a), vec3<i32>(-13497i, 1i, 1i)))), false, true), func_2(vec2<bool>(global0.b, global4.c)), ~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(18161u, ~75783u, 25122u)));
    let var_3 = var_1;
    return -1327f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(global2[_wgslsmith_index_u32(~(~1u), 20u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(643f)) - _wgslsmith_f_op_f32(func_1())))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1314f)))))));
    global2 = array<f32, 20>();
    global1 = 7762i;
    let var_1 = _wgslsmith_div_vec3_u32(vec3<u32>(~countOneBits(4294967295u), _wgslsmith_dot_vec2_u32(~countOneBits(vec2<u32>(35342u, 74198u)), vec2<u32>(1u, 1u)), firstLeadingBit(_wgslsmith_dot_vec3_u32(~vec3<u32>(28078u, 3586u, 17054u), abs(vec3<u32>(4294967295u, 39758u, 27020u))))), _wgslsmith_mult_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(reverseBits(13276u), 19377u, _wgslsmith_mult_u32(0u, 14403u))) ^ ~(firstTrailingBit(vec3<u32>(1u, 59988u, 0u)) ^ reverseBits(vec3<u32>(48105u, 0u, 139573u))));
    global3 = func_2(vec2<bool>(false & global0.c, !global0.c));
    let var_2 = firstLeadingBit(countOneBits(firstLeadingBit(select(vec3<u32>(1u, 1u, 5654u), vec3<u32>(1u, 0u, 32795u), global4.a != 53696i))));
    global3 = func_2(vec2<bool>(var_2.x >= 0u, false));
    var var_3 = func_2(vec2<bool>(all(!(!vec3<bool>(global4.c, global4.b, global3.b))), global2[_wgslsmith_index_u32(abs(~4294967295u), 20u)] <= global2[_wgslsmith_index_u32(45245u, 20u)]));
    let x = u_input.a;
    s_output = StorageBuffer(~15777u, min(reverseBits(-15354i), ~(-2147483647i)), var_3.a | global0.a, global4.a);
}

