struct Struct_1 {
    a: bool,
    b: vec2<u32>,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 23>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: Struct_1, arg_1: u32) -> i32 {
    global0 = array<i32, 23>();
    var var_0 = !(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-346f, -817f), _wgslsmith_f_op_f32(795f - 409f))))) > _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -192f))))));
    let var_1 = any(vec4<bool>(arg_0.a, arg_0.a, all(select(select(vec3<bool>(arg_0.a, arg_0.a, arg_0.a), vec3<bool>(true, arg_0.a, arg_0.a), vec3<bool>(arg_0.a, false, false)), !vec3<bool>(false, arg_0.a, true), vec3<bool>(arg_0.a, arg_0.a, arg_0.a))), !(!arg_0.a)));
    let var_2 = true;
    return 166i;
}

fn func_2(arg_0: bool, arg_1: u32) -> u32 {
    var var_0 = _wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 0u, arg_1, 24411u), vec4<u32>(u_input.a, 77465u, u_input.a, arg_1)), 23u)] >> (arg_1 % 32u), _wgslsmith_clamp_i32(-56438i, func_3(Struct_1(true, vec2<u32>(u_input.a, 1u), u_input.a), 1u), countOneBits(-545i)), ~_wgslsmith_clamp_i32(global0[_wgslsmith_index_u32(1u, 23u)], u_input.b, 49515i), global0[_wgslsmith_index_u32(0u, 23u)]), firstTrailingBit(-select(vec4<i32>(-99283i, global0[_wgslsmith_index_u32(u_input.a, 23u)], global0[_wgslsmith_index_u32(arg_1, 23u)], 14720i), vec4<i32>(u_input.b, u_input.b, 10394i, global0[_wgslsmith_index_u32(4294967295u, 23u)]), vec4<bool>(arg_0, false, true, false)))), _wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(i32(-1i) * -5802i, ~u_input.b, u_input.b, 1i), -vec4<i32>(0i, -2147483647i, global0[_wgslsmith_index_u32(4294967295u, 23u)], 0i)), max(_wgslsmith_div_vec4_i32(select(vec4<i32>(u_input.b, global0[_wgslsmith_index_u32(6733u, 23u)], u_input.b, u_input.b), vec4<i32>(global0[_wgslsmith_index_u32(4998u, 23u)], u_input.b, 49232i, global0[_wgslsmith_index_u32(arg_1, 23u)]), false), vec4<i32>(u_input.b, global0[_wgslsmith_index_u32(55407u, 23u)], u_input.b, global0[_wgslsmith_index_u32(69352u, 23u)]) ^ vec4<i32>(2147483647i, u_input.b, u_input.b, global0[_wgslsmith_index_u32(arg_1, 23u)])), vec4<i32>(_wgslsmith_div_i32(global0[_wgslsmith_index_u32(0u, 23u)], 21927i), 1i, global0[_wgslsmith_index_u32(0u, 23u)], -u_input.b))));
    let var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(764f - 1000f))));
    let var_2 = Struct_1(all(vec2<bool>(u_input.a > 0u, true)) || arg_0, ~vec2<u32>(39283u, arg_1), 0u);
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_div_f32(586f, -431f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-736f - var_1)))))));
    var var_4 = vec3<bool>(~(~2147483647i | _wgslsmith_div_i32(-2147483647i, var_0.x)) > _wgslsmith_mult_i32(firstLeadingBit(u_input.b), -2147483647i), !all(select(!vec4<bool>(arg_0, arg_0, false, var_2.a), select(vec4<bool>(var_2.a, true, false, var_2.a), vec4<bool>(var_2.a, true, var_2.a, var_2.a), false), !vec4<bool>(arg_0, arg_0, false, var_2.a))), true);
    return reverseBits(firstLeadingBit(~(u_input.a << (~0u % 32u))));
}

fn func_4(arg_0: Struct_1, arg_1: f32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(590f, arg_1)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1024f, arg_1)) - arg_1)))) * _wgslsmith_f_op_f32(arg_1 + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1688f)) + _wgslsmith_f_op_f32(max(-305f, arg_1)))));
    var var_1 = _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(arg_1, 690f)))), arg_1, arg_1, -371f)));
    global0 = array<i32, 23>();
    var_0 = 1443f;
    var var_2 = arg_0;
    return Struct_1((false & arg_0.a) || select(all(!vec4<bool>(true, true, arg_0.a, true)), !arg_0.a, var_1.x < -1619f), vec2<u32>(1u & _wgslsmith_mult_u32(~var_2.c, 1u), ~select(0u, arg_0.b.x, true)), ~0u);
}

fn func_1(arg_0: f32) -> f32 {
    var var_0 = ~(-_wgslsmith_sub_vec3_i32(countOneBits(vec3<i32>(8277i, global0[_wgslsmith_index_u32(u_input.a, 23u)], 58329i)) & (vec3<i32>(global0[_wgslsmith_index_u32(15011u, 23u)], 13716i, -6634i) >> (vec3<u32>(56874u, 4294967295u, 17822u) % vec3<u32>(32u))), vec3<i32>(2147483647i, global0[_wgslsmith_index_u32(u_input.a, 23u)], 0i) & _wgslsmith_div_vec3_i32(vec3<i32>(u_input.b, u_input.b, u_input.b), vec3<i32>(1i, -18099i, global0[_wgslsmith_index_u32(1u, 23u)]))));
    let var_1 = ~abs(u_input.a);
    let var_2 = func_4(Struct_1(true, vec2<u32>(max(101223u, ~64400u), 1u), abs(_wgslsmith_div_u32(func_2(false, u_input.a), ~var_1))), arg_0);
    let var_3 = func_3(var_2, 13106u) ^ (var_0.x & _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, abs(-1i), func_3(var_2, 30441u)), countOneBits(vec3<i32>(var_0.x, global0[_wgslsmith_index_u32(var_1, 23u)], global0[_wgslsmith_index_u32(u_input.a, 23u)]))));
    var_0 = -_wgslsmith_div_vec3_i32(~(-vec3<i32>(global0[_wgslsmith_index_u32(0u, 23u)], global0[_wgslsmith_index_u32(1u, 23u)], var_3) | (vec3<i32>(-33082i, -18916i, 0i) ^ vec3<i32>(var_0.x, var_3, 0i))), _wgslsmith_mod_vec3_i32(vec3<i32>(-28987i, var_0.x, var_3) & select(vec3<i32>(-2147483647i, var_3, 0i), vec3<i32>(var_3, u_input.b, var_3), vec3<bool>(var_2.a, var_2.a, var_2.a)), vec3<i32>(-21938i ^ var_0.x, 0i, 1i)));
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-656f + arg_0)) * arg_0) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1f))))));
}

fn func_5(arg_0: u32, arg_1: f32, arg_2: vec4<bool>, arg_3: f32) -> bool {
    let var_0 = Struct_1(!(-413f < arg_3) && arg_2.x, firstLeadingBit(_wgslsmith_sub_vec2_u32(func_4(Struct_1(false, vec2<u32>(1u, arg_0), u_input.a), arg_1).b >> (vec2<u32>(1u, u_input.a) % vec2<u32>(32u)), ~vec2<u32>(arg_0, 34977u) | (vec2<u32>(u_input.a, u_input.a) << (vec2<u32>(0u, 4294967295u) % vec2<u32>(32u))))), 1u);
    let var_1 = Struct_1(all(select(!arg_2.xwy, arg_2.xxx, select(vec3<bool>(var_0.a, false, arg_2.x), vec3<bool>(false, true, var_0.a), vec3<bool>(var_0.a, arg_2.x, true)))) || !arg_2.x, func_4(func_4(var_0, _wgslsmith_f_op_f32(f32(-1f) * -262f)), arg_3).b, u_input.a);
    global0 = array<i32, 23>();
    let var_2 = !select(!all(arg_2.wzz), true, any(vec3<bool>(true, arg_2.x, arg_2.x)));
    global0 = array<i32, 23>();
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 23>();
    let var_0 = -(~firstTrailingBit(vec2<i32>(-1i, -31879i)));
    let var_1 = Struct_1(select(func_5(u_input.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - -328f) + _wgslsmith_f_op_f32(func_1(-856f))), vec4<bool>(all(vec4<bool>(false, true, false, false)), true, true, false), 1000f), true, any(vec2<bool>(true, false))), func_4(Struct_1(all(vec2<bool>(true, false)) == true, ~min(vec2<u32>(0u, u_input.a), vec2<u32>(4294967295u, 4294967295u)), _wgslsmith_mult_u32(~u_input.a, ~0u)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-354f - 1000f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(490f + 1363f))))).b, u_input.a);
    var var_2 = u_input.a;
    let var_3 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(1u, 4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(7752u, var_1.b.x, 1u, 7800u), vec4<u32>(1u, var_3.b.x, u_input.a, 87175u)) << (~(~var_3.c) % 32u)), ~(-36966i), var_0.x << (_wgslsmith_clamp_u32(u_input.a, 38896u >> (_wgslsmith_sub_u32(0u, var_3.b.x) % 32u), 46408u) % 32u), 288f, _wgslsmith_sub_u32(_wgslsmith_add_u32(u_input.a, u_input.a), _wgslsmith_mod_u32(~_wgslsmith_mult_u32(1u, var_3.c), select(var_3.b.x, firstTrailingBit(var_1.c), !var_3.a))));
}

