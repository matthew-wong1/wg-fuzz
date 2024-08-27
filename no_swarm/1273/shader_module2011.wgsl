struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 30>;

var<private> global1: u32;

var<private> global2: Struct_1 = Struct_1(1i);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: vec2<i32>) -> bool {
    let var_0 = vec4<u32>(~(countOneBits(reverseBits(68889u)) << (~_wgslsmith_mult_u32(u_input.a, 52739u) % 32u)), _wgslsmith_mult_u32(firstTrailingBit(22663u), u_input.a | u_input.a), u_input.a, _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(~vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), ~vec4<u32>(15552u, 3682u, 0u, 0u)), vec4<u32>(u_input.a, 28662u, _wgslsmith_add_u32(u_input.a, u_input.a), 59929u)) | 43826u);
    return !(!any(vec4<bool>(true, true, true, true)));
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: f32, arg_3: bool) -> u32 {
    let var_0 = global0[_wgslsmith_index_u32(~(~(~u_input.a)) | _wgslsmith_dot_vec4_u32(vec4<u32>(countOneBits(u_input.a), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 261u, u_input.a, u_input.a), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, u_input.a, 4294967295u, u_input.a), vec4<u32>(u_input.a, 0u, u_input.a, u_input.a), vec4<u32>(1384u, 15540u, u_input.a, u_input.a))), u_input.a, u_input.a), ~(~(~vec4<u32>(u_input.a, u_input.a, u_input.a, 49603u)))), 30u)];
    global2 = Struct_1(1i);
    let var_1 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_2, -507f), vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(574f, -1219f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2)))), true));
    global2 = global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(max(abs(80933u), select(4294967295u, 1u, arg_3)), firstLeadingBit(84698u)), 30u)];
    global0 = array<Struct_1, 30>();
    return u_input.a;
}

fn func_2(arg_0: vec3<bool>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -793f));
    var var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(var_0, _wgslsmith_f_op_f32(f32(-1f) * -308f)))), var_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-452f)) - _wgslsmith_f_op_f32(var_0 - -166f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-341f, var_0, 265f)))))));
    let var_2 = global0[_wgslsmith_index_u32(abs(~(~func_4(u_input.e.x, global0[_wgslsmith_index_u32(max(u_input.a, 1u), 30u)], var_0, func_3(-1000f, global0[_wgslsmith_index_u32(u_input.a, 30u)], vec2<i32>(global2.a, global2.a))))), 30u)];
    let var_3 = Struct_1(abs(-firstTrailingBit(u_input.c) << (firstTrailingBit(100488u) % 32u)));
    var var_4 = Struct_1(_wgslsmith_mult_i32(_wgslsmith_add_i32(global2.a, _wgslsmith_sub_i32(abs(3391i), 1i)), _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_add_i32(0i, -6952i), var_3.a, _wgslsmith_clamp_i32(global2.a, var_3.a, global2.a), _wgslsmith_div_i32(var_3.a, 2147483647i)), firstLeadingBit(firstTrailingBit(u_input.e)))));
    return global0[_wgslsmith_index_u32(94437u, 30u)];
}

fn func_1(arg_0: vec4<i32>, arg_1: f32) -> vec2<u32> {
    global2 = Struct_1(~8888i);
    let var_0 = func_2(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), !any(vec3<bool>(true, false, false))), vec3<bool>(true, true, true), any(vec3<bool>(true, true, true))));
    global0 = array<Struct_1, 30>();
    var var_1 = Struct_1(reverseBits(-1i));
    var var_2 = firstTrailingBit(_wgslsmith_add_vec3_i32(u_input.e.yyy & ~vec3<i32>(arg_0.x, global2.a, var_0.a), vec3<i32>(2147483647i, 1i, -2147483647i)));
    return ~(~_wgslsmith_mult_vec2_u32(select(~vec2<u32>(61u, u_input.a), vec2<u32>(u_input.a, u_input.a), any(vec4<bool>(true, true, true, true))), min(vec2<u32>(9933u, u_input.a), vec2<u32>(0u, 1u)) >> (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_vec2_u32(~((vec2<u32>(0u, u_input.a) & vec2<u32>(u_input.a, 1u)) << (~vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u))) & ~firstTrailingBit(func_1(vec4<i32>(-112688i, 12617i, -19126i, 8587i), 2004f)), vec2<u32>(71795u, u_input.a));
    let var_1 = Struct_1(27688i);
    let var_2 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_div_f32(430f, -318f), -818f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1286f * _wgslsmith_f_op_f32(round(393f))), -806f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-758f - 181f)))))), vec4<i32>(-1i) * -vec4<i32>(var_2.a, ~31351i, -21506i, _wgslsmith_dot_vec3_i32(u_input.e.yyz, u_input.e.wyw)));
}

