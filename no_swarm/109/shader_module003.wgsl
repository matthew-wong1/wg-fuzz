struct Struct_1 {
    a: vec3<u32>,
    b: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: array<bool, 28>;

var<private> global2: u32;

var<private> global3: bool;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<f32>, arg_1: vec2<u32>, arg_2: vec3<bool>, arg_3: Struct_1) -> i32 {
    var var_0 = arg_3;
    var var_1 = var_0.a.yz;
    let var_2 = arg_3;
    var var_3 = Struct_1(vec3<u32>(1u, 56968u, _wgslsmith_add_u32(_wgslsmith_mult_u32(78434u << (1u % 32u), 47737u ^ arg_3.a.x), firstTrailingBit(var_1.x))), ~(~var_1.x));
    let var_4 = arg_3;
    return abs(u_input.d);
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: Struct_1) -> u32 {
    let var_0 = _wgslsmith_mod_vec2_i32(firstLeadingBit(vec2<i32>(_wgslsmith_div_i32(func_3(vec3<f32>(global0.x, arg_0.x, 371f), arg_1.a.yz, vec3<bool>(true, global1[_wgslsmith_index_u32(arg_1.a.x, 28u)], global1[_wgslsmith_index_u32(arg_1.a.x, 28u)]), arg_1), _wgslsmith_mult_i32(u_input.d, 1016i)), _wgslsmith_sub_i32(abs(-4785i), u_input.d >> (0u % 32u)))), select(_wgslsmith_mult_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(-2147483647i, u_input.d), vec2<i32>(u_input.d, 0i)), firstLeadingBit(vec2<i32>(0i, u_input.d))), -vec2<i32>(u_input.d, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d, u_input.d), vec2<i32>(-39632i, -18602i))), !global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(arg_1.a.x, ~arg_2.b, ~arg_2.a.x), 28u)]));
    let var_1 = arg_0.x;
    global3 = all(vec3<bool>(true, true, true)) || all(!(!select(vec2<bool>(true, global1[_wgslsmith_index_u32(u_input.b, 28u)]), vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 28u)], true), vec2<bool>(true, global1[_wgslsmith_index_u32(5678u, 28u)]))));
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-global0.xy), vec2<f32>(_wgslsmith_f_op_f32(-global0.x), arg_0.x))) * _wgslsmith_div_vec2_f32(vec2<f32>(-726f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) - global0.x)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(global0.yz))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(arg_0, arg_0, true)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1, global0.x) * vec2<f32>(1250f, global0.x))), global1[_wgslsmith_index_u32(~u_input.a.x, 28u)]))));
    var_2 = _wgslsmith_f_op_vec2_f32(global0.xy - global0.zz);
    return 1138u;
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    var var_0 = Struct_1(select(vec3<u32>(arg_0.b, firstLeadingBit(1u), func_2(global0.xy, Struct_1(vec3<u32>(0u, arg_0.b, 4294967295u), 42656u), arg_0) >> (arg_0.a.x % 32u)), vec3<u32>(4552u, ~reverseBits(53720u), 1u), !select(false, global1[_wgslsmith_index_u32(arg_0.a.x, 28u)] != false, global1[_wgslsmith_index_u32(u_input.c.x, 28u)])), u_input.a.x & min((arg_0.a.x >> (arg_0.a.x % 32u)) << (u_input.a.x % 32u), _wgslsmith_sub_u32(4294967295u, ~41438u)));
    let var_1 = u_input.a;
    let var_2 = u_input.c;
    let var_3 = 4294967295u;
    global1 = array<bool, 28>();
    return arg_0;
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: bool) -> bool {
    global1 = array<bool, 28>();
    var var_0 = any(select(vec4<bool>(true, u_input.b < u_input.c.x, !arg_2, true), select(select(vec4<bool>(false, false, true, false), vec4<bool>(global1[_wgslsmith_index_u32(arg_1.b, 28u)], global1[_wgslsmith_index_u32(arg_1.a.x, 28u)], true, arg_2), vec4<bool>(arg_2, true, arg_2, false)), !vec4<bool>(false, false, false, arg_2), global1[_wgslsmith_index_u32(firstTrailingBit(0u), 28u)]), true)) | all(vec4<bool>(_wgslsmith_f_op_f32(global0.x * 1000f) <= -1274f, (arg_2 | false) & !global1[_wgslsmith_index_u32(u_input.b, 28u)], !(u_input.d >= -957i), select(true, all(vec4<bool>(arg_2, false, true, false)), true | global1[_wgslsmith_index_u32(u_input.b, 28u)])));
    let var_1 = arg_0;
    let var_2 = vec2<i32>(0i, _wgslsmith_mult_i32(i32(-1i) * -1i, u_input.d));
    var var_3 = _wgslsmith_f_op_f32(-global0.x) > 159f;
    return global1[_wgslsmith_index_u32(firstTrailingBit(65554u), 28u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(~min(~u_input.a, _wgslsmith_add_vec3_u32(u_input.a, u_input.c.wyx)), firstLeadingBit(~_wgslsmith_div_vec3_u32(u_input.c.xxz, vec3<u32>(u_input.b, u_input.a.x, 42811u))), select(vec3<bool>(any(vec3<bool>(global1[_wgslsmith_index_u32(u_input.b, 28u)], true, false)), global1[_wgslsmith_index_u32(~82316u, 28u)], true), select(select(vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 28u)], global1[_wgslsmith_index_u32(0u, 28u)], true), vec3<bool>(global1[_wgslsmith_index_u32(38741u, 28u)], global1[_wgslsmith_index_u32(u_input.a.x, 28u)], true), false), vec3<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 28u)], false, true), true), func_4(33216i ^ u_input.d, func_1(Struct_1(vec3<u32>(4294967295u, u_input.a.x, u_input.a.x), u_input.c.x)), any(vec3<bool>(global1[_wgslsmith_index_u32(u_input.b, 28u)], global1[_wgslsmith_index_u32(u_input.c.x, 28u)], global1[_wgslsmith_index_u32(u_input.c.x, 28u)]))))) | vec3<u32>(u_input.a.x, ~u_input.a.x << (firstLeadingBit(~u_input.a.x) % 32u), u_input.c.x);
    global2 = u_input.c.x;
    var var_1 = min(var_0.x, ~countOneBits(~var_0.x)) ^ (reverseBits(_wgslsmith_add_u32(9554u & var_0.x, u_input.a.x)) | _wgslsmith_add_u32(_wgslsmith_mod_u32(abs(0u), ~u_input.c.x), 0u));
    var var_2 = func_1(Struct_1(abs(vec3<u32>(u_input.c.x << (4294967295u % 32u), u_input.b << (0u % 32u), ~4294967295u)), u_input.b));
    let var_3 = Struct_1(u_input.a, 0u);
    var var_4 = 37540u;
    var var_5 = func_1(var_3);
    var var_6 = Struct_1(vec3<u32>(_wgslsmith_div_u32(~_wgslsmith_mult_u32(63644u, u_input.a.x), var_5.a.x), var_3.a.x, func_1(var_3).b), 1u);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(abs(global0.x))), global0.x)), global0.x));
}

