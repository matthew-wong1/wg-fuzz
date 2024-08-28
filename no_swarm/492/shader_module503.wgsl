struct Struct_1 {
    a: f32,
    b: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 24>;

var<private> global1: vec2<i32> = vec2<i32>(17446i, 7092i);

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
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

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: f32, arg_1: i32, arg_2: i32, arg_3: Struct_1) -> bool {
    var var_0 = ~abs((vec4<i32>(-1i) * -vec4<i32>(-1i, 2147483647i, 2147483647i, arg_3.b)) >> (~u_input.a % vec4<u32>(32u)));
    let var_1 = firstTrailingBit(~_wgslsmith_dot_vec3_i32(vec3<i32>(arg_1, u_input.b, arg_1), ~(var_0.zwy << (vec3<u32>(u_input.d.x, global0[_wgslsmith_index_u32(u_input.d.x, 24u)], 29845u) % vec3<u32>(32u)))));
    global1 = _wgslsmith_sub_vec2_i32(firstTrailingBit(var_0.yx), var_0.yw << (select(vec2<u32>(~8471u, _wgslsmith_dot_vec3_u32(u_input.d, u_input.d)), _wgslsmith_add_vec2_u32(abs(vec2<u32>(global0[_wgslsmith_index_u32(u_input.a.x, 24u)], 4294967295u)), vec2<u32>(u_input.d.x, 196u)), true) % vec2<u32>(32u)));
    let var_2 = arg_3;
    let var_3 = vec3<bool>(true, true, any(!select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), false), vec2<bool>(true, false))));
    return all(select(select(!(!vec2<bool>(var_3.x, false)), vec2<bool>(select(var_3.x, true, var_3.x), var_3.x), var_3.zx), var_3.zx, var_3.x));
}

fn func_2(arg_0: vec4<bool>, arg_1: vec2<bool>) -> vec3<u32> {
    global0 = array<u32, 24>();
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1759f)) + _wgslsmith_f_op_f32(1056f - 1246f))))), _wgslsmith_add_i32(global1.x, global1.x));
    let var_1 = !func_3(var_0.a, -(~(-1i)) & (-10870i << (global0[_wgslsmith_index_u32(47578u, 24u)] % 32u)), 85613i, Struct_1(_wgslsmith_f_op_f32(var_0.a - _wgslsmith_f_op_f32(min(var_0.a, var_0.a))), -14969i));
    let var_2 = var_0.a;
    global0 = array<u32, 24>();
    return ~u_input.d;
}

fn func_1(arg_0: vec3<bool>, arg_1: vec3<u32>, arg_2: bool, arg_3: vec2<u32>) -> Struct_1 {
    var var_0 = ~func_2(!vec4<bool>(true, arg_2, !arg_0.x, false), select(!arg_0.zx, !arg_0.zx, !vec2<bool>(true, arg_2)));
    let var_1 = vec3<u32>(_wgslsmith_add_u32(~reverseBits(u_input.a.x), 1u), 1u, select(arg_3.x | _wgslsmith_add_u32(38810u, min(1u, global0[_wgslsmith_index_u32(var_0.x, 24u)])), reverseBits(0u), arg_2 || any(!vec4<bool>(false, true, arg_2, arg_2))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1691f, _wgslsmith_f_op_f32(-1613f + -254f))) + 1f));
    var var_3 = _wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(-806i, ~(~u_input.b)), 0i, global1.x, 74238i), max(select(firstTrailingBit(vec4<i32>(global1.x, u_input.b, 94545i, global1.x) | vec4<i32>(u_input.b, global1.x, 2635i, u_input.b)), select(vec4<i32>(0i, global1.x, -2147483647i, 2147483647i), select(vec4<i32>(-2147483647i, global1.x, -21563i, -72743i), vec4<i32>(2147483647i, -16778i, global1.x, 1i), false), vec4<bool>(arg_2, false, arg_0.x, false)), arg_0.x), vec4<i32>(abs(firstTrailingBit(u_input.b)), -13295i, ~_wgslsmith_dot_vec2_i32(vec2<i32>(global1.x, u_input.b), vec2<i32>(u_input.b, u_input.b)), ~(0i ^ u_input.b))));
    global0 = array<u32, 24>();
    return Struct_1(var_2, _wgslsmith_div_i32(_wgslsmith_add_i32(1i, u_input.b & _wgslsmith_clamp_i32(global1.x, var_3.x, u_input.b)), u_input.b));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(vec3<bool>(true, true, true), ~(~vec3<u32>(~0u, ~4294967295u, _wgslsmith_add_u32(global0[_wgslsmith_index_u32(70076u, 24u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 24u)], 24u)]))), !select(true, any(vec3<bool>(false, true, true)), true) & ((abs(global1.x) << (_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.d.x, 24u)], 24u)], 45702u) % 32u)) < -2147483647i), ~vec2<u32>(u_input.c, _wgslsmith_dot_vec3_u32(u_input.a.wxz, _wgslsmith_mod_vec3_u32(u_input.a.xwz, u_input.a.zww))));
    var var_1 = Struct_1(_wgslsmith_div_f32(1612f, _wgslsmith_f_op_f32(var_0.a + 1000f)), -(-var_0.b ^ abs(-7157i)) ^ _wgslsmith_add_i32(abs(u_input.b), ~(-41147i)));
    var var_2 = 1000f;
    var_0 = func_1(vec3<bool>(!(false || all(vec2<bool>(false, true))), false, !(true == any(vec2<bool>(false, true)))), u_input.d, -589f >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(-307f, -465f, true))))), ~(~u_input.a.wy));
    var var_3 = global1.x;
    let var_4 = _wgslsmith_mod_u32(~(u_input.d.x >> (1u % 32u)), _wgslsmith_mult_u32(0u, global0[_wgslsmith_index_u32(~36324u, 24u)]));
    var_1 = Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.a))), _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(firstTrailingBit(firstLeadingBit(vec3<i32>(u_input.b, 2269i, u_input.b))), ~vec3<i32>(global1.x, var_1.b, 27177i) | _wgslsmith_mod_vec3_i32(vec3<i32>(-2147483647i, global1.x, u_input.b), vec3<i32>(-2147483647i, 2147483647i, global1.x))), firstLeadingBit(_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(28448i, global1.x), vec2<i32>(global1.x, var_0.b)), 0i))));
    global0 = array<u32, 24>();
    let x = u_input.a;
    s_output = StorageBuffer(var_4, var_4, global0[_wgslsmith_index_u32(1u << (global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(~vec3<u32>(global0[_wgslsmith_index_u32(u_input.a.x, 24u)], u_input.c, u_input.c), vec3<u32>(global0[_wgslsmith_index_u32(44401u, 24u)], 4294967295u, var_4)), 24u)] % 32u), 24u)]);
}

