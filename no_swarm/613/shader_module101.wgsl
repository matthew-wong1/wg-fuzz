struct Struct_1 {
    a: i32,
    b: vec3<i32>,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 30> = array<vec3<i32>, 30>(vec3<i32>(9246i, -39177i, -13715i), vec3<i32>(-11770i, 2147483647i, 1i), vec3<i32>(0i, 1i, 9385i), vec3<i32>(35192i, 1i, 11501i), vec3<i32>(2147483647i, i32(-2147483648), 2147483647i), vec3<i32>(2147483647i, 63067i, 57466i), vec3<i32>(i32(-2147483648), 0i, 1i), vec3<i32>(-1i, 1i, 2147483647i), vec3<i32>(0i, -47930i, -4265i), vec3<i32>(0i, 3162i, -33869i), vec3<i32>(-1i, -1i, -25347i), vec3<i32>(14713i, -1i, i32(-2147483648)), vec3<i32>(0i, 2147483647i, -1323i), vec3<i32>(i32(-2147483648), 0i, 35102i), vec3<i32>(-33732i, -42147i, 2147483647i), vec3<i32>(1i, -1i, -19119i), vec3<i32>(-21102i, 50503i, 7795i), vec3<i32>(1i, 2147483647i, 0i), vec3<i32>(-1i, 29197i, 35880i), vec3<i32>(-23418i, -27213i, 0i), vec3<i32>(569i, 24389i, i32(-2147483648)), vec3<i32>(27994i, 1i, -43163i), vec3<i32>(0i, 25617i, 1i), vec3<i32>(i32(-2147483648), -18380i, -20453i), vec3<i32>(2147483647i, -1i, 1i), vec3<i32>(-6948i, i32(-2147483648), -1i), vec3<i32>(2147483647i, 2147483647i, i32(-2147483648)), vec3<i32>(-1i, 2147483647i, i32(-2147483648)), vec3<i32>(0i, 1i, -9635i), vec3<i32>(0i, 2147483647i, 35143i));

var<private> global1: vec3<bool>;

var<private> global2: i32 = 1i;

var<private> global3: f32 = -280f;

var<private> global4: i32;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: vec3<f32>, arg_1: vec2<u32>, arg_2: vec4<f32>) -> i32 {
    global4 = min(1i, abs(-17342i));
    global3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_2.x, arg_2.x)) * -183f))));
    let var_0 = _wgslsmith_clamp_i32(abs(u_input.a), _wgslsmith_clamp_i32(_wgslsmith_add_i32(_wgslsmith_div_i32(u_input.a, u_input.a), -2147483647i), u_input.a, _wgslsmith_clamp_i32(u_input.a >> (u_input.b % 32u), 9957i, -18756i << (u_input.b % 32u))), -_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a, -2147483647i), vec2<i32>(0i, -1i)), vec2<i32>(u_input.a, -2147483647i))) > -u_input.a;
    var var_1 = Struct_1(u_input.a, ~vec3<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(-1i, u_input.a, -93i), global0[_wgslsmith_index_u32(0u, 30u)]), _wgslsmith_clamp_vec3_i32(global0[_wgslsmith_index_u32(1u, 30u)], global0[_wgslsmith_index_u32(20635u, 30u)], vec3<i32>(-105264i, u_input.a, 1i))), reverseBits(u_input.a), -1i), _wgslsmith_add_vec2_i32(vec2<i32>(2147483647i, -_wgslsmith_clamp_i32(16050i, u_input.a, 2147483647i)), reverseBits(vec2<i32>(u_input.a, -10872i) & vec2<i32>(-1i, u_input.a)) ^ ~_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a, -12677i), vec2<i32>(u_input.a, -18593i), vec2<i32>(0i, u_input.a))));
    let var_2 = Struct_1(var_1.b.x, max(-(global0[_wgslsmith_index_u32(u_input.b, 30u)] ^ vec3<i32>(var_1.b.x, -1i, -19458i)), global0[_wgslsmith_index_u32(arg_1.x, 30u)]) >> (((abs(vec3<u32>(arg_1.x, u_input.b, arg_1.x)) >> (_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, 56325u, u_input.b), vec3<u32>(0u, 66327u, arg_1.x)) % vec3<u32>(32u))) ^ ~_wgslsmith_div_vec3_u32(vec3<u32>(u_input.b, 8606u, 6151u), vec3<u32>(68208u, arg_1.x, arg_1.x))) % vec3<u32>(32u)), select(var_1.c, var_1.b.yz, true));
    return ~var_2.a;
}

fn func_2(arg_0: i32, arg_1: f32, arg_2: Struct_1) -> u32 {
    global2 = func_3(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_1, _wgslsmith_f_op_f32(trunc(arg_1)), global1.x || false)) + arg_1), arg_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 * arg_1) * _wgslsmith_f_op_f32(-arg_1))), ~min(select(~vec2<u32>(u_input.b, u_input.b), vec2<u32>(u_input.b, 0u), all(global1.yy)), ~_wgslsmith_add_vec2_u32(vec2<u32>(u_input.b, 1u), vec2<u32>(u_input.b, u_input.b))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-874f, arg_1, arg_1, arg_1)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-235f, arg_1, 242f, arg_1))))));
    let var_0 = ~(~(~0u));
    let var_1 = Struct_1(5965i, global0[_wgslsmith_index_u32(var_0, 30u)], max(abs(countOneBits(-arg_2.c)), -vec2<i32>(arg_2.b.x, _wgslsmith_sub_i32(-1i, u_input.a))));
    global3 = arg_1;
    global4 = var_1.a;
    return ~var_0;
}

fn func_1(arg_0: vec2<bool>, arg_1: f32) -> vec3<i32> {
    var var_0 = _wgslsmith_sub_u32(abs(func_2(-59592i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)), Struct_1(58194i << (u_input.b % 32u), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(18105u, u_input.b, u_input.b), 30u)], _wgslsmith_mult_vec2_i32(vec2<i32>(-49762i, 23249i), vec2<i32>(u_input.a, u_input.a))))), ~(_wgslsmith_mod_u32(_wgslsmith_add_u32(u_input.b, u_input.b), ~u_input.b) | _wgslsmith_sub_u32(60148u, u_input.b)));
    global0 = array<vec3<i32>, 30>();
    global1 = !vec3<bool>(!global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2290f)) == _wgslsmith_f_op_f32(arg_1 + _wgslsmith_f_op_f32(trunc(-527f))), false);
    let var_1 = ~vec3<u32>(0u, u_input.b >> (_wgslsmith_sub_u32(25816u, u_input.b) % 32u), ~(~_wgslsmith_sub_u32(8920u, u_input.b)));
    global2 = ~_wgslsmith_clamp_i32(-u_input.a, reverseBits(-15423i), -1i) << (~(~(~_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.x, u_input.b), var_1.yx))) % 32u);
    return global0[_wgslsmith_index_u32(var_1.x, 30u)] | ~select(global0[_wgslsmith_index_u32(0u, 30u)], max(vec3<i32>(u_input.a, 0i, 0i), vec3<i32>(u_input.a, -14118i, u_input.a)) ^ global0[_wgslsmith_index_u32(_wgslsmith_add_u32(70364u, u_input.b), 30u)], vec3<bool>(any(vec4<bool>(arg_0.x, arg_0.x, global1.x, global1.x)), true, !arg_0.x));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = 2147483647i;
    global3 = 901f;
    global3 = -408f;
    var var_0 = Struct_1(u_input.a, func_1(!(!vec2<bool>(global1.x, global1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1000f)))) & firstTrailingBit(_wgslsmith_add_vec3_i32(vec3<i32>(0i, 15053i, -1i), ~vec3<i32>(u_input.a, u_input.a, 28237i))), ~(vec2<i32>(countOneBits(u_input.a), ~4107i) | min(vec2<i32>(-1i, 2147483647i), vec2<i32>(u_input.a, u_input.a))));
    let x = u_input.a;
    s_output = StorageBuffer(max(abs(firstTrailingBit(vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b))), ~select(vec4<u32>(u_input.b, 21734u, u_input.b, 0u), vec4<u32>(60019u, 23114u, 58146u, 1u), vec4<bool>(global1.x, true, global1.x, true)) << ((vec4<u32>(u_input.b, u_input.b, 13565u, 4294967295u) ^ firstTrailingBit(vec4<u32>(21300u, 0u, 14700u, u_input.b))) % vec4<u32>(32u))), var_0.c);
}

