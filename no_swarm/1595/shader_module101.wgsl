struct Struct_1 {
    a: vec3<i32>,
    b: vec2<f32>,
    c: u32,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 6>;

var<private> global1: vec3<u32>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> bool {
    global1 = firstTrailingBit(vec3<u32>(_wgslsmith_add_u32(_wgslsmith_add_u32(global1.x, 19606u), u_input.b.x), _wgslsmith_div_u32(min(global1.x, 16976u), _wgslsmith_add_u32(global1.x, 1u)) | abs(max(0u, u_input.c)), global1.x));
    global1 = vec3<u32>(abs(35187u), ~min(~19060u, _wgslsmith_mod_u32(global1.x, global1.x)) << (_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(min(vec4<u32>(28881u, global1.x, u_input.c, 0u), vec4<u32>(global1.x, 4294967295u, global1.x, u_input.b.x)), abs(vec4<u32>(17092u, global1.x, 1u, 0u))), u_input.b) % 32u), ~(~_wgslsmith_mod_u32(~1u, u_input.b.x)));
    global1 = min(~vec3<u32>(49346u, 18435u, ~(global1.x ^ u_input.b.x)), abs(u_input.b.zxy));
    return !((_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -536f) * 240f) <= global0[_wgslsmith_index_u32(reverseBits(firstLeadingBit(u_input.b.x)), 6u)]) || !(!any(vec2<bool>(true, false))));
}

fn func_2(arg_0: bool) -> i32 {
    let var_0 = vec4<i32>(-2147483647i, 23412i, u_input.a, -u_input.a ^ -u_input.a);
    global0 = array<f32, 6>();
    var var_1 = any(vec4<bool>(func_3(), true, true, true));
    let var_2 = Struct_2(~(~(-min(var_0, vec4<i32>(2147483647i, 1i, 1i, u_input.a)))));
    var_1 = true;
    return -23374i;
}

fn func_1(arg_0: f32) -> vec2<f32> {
    var var_0 = _wgslsmith_sub_vec4_i32(-(~vec4<i32>(47228i, -58703i, 7453i, -2147483647i)), countOneBits(min(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, 2147483647i, 2147483647i, u_input.a), vec4<i32>(1i, u_input.a, u_input.a, 19662i)), vec4<i32>(26220i, u_input.a, 42746i, -2147483647i)))) & vec4<i32>((_wgslsmith_add_i32(24658i, -46721i) >> (u_input.c % 32u)) & u_input.a, u_input.a, 1i, 44631i);
    var_0 = select(vec4<i32>(~u_input.a, -u_input.a, 21404i, _wgslsmith_clamp_i32(-6937i, -2147483647i, u_input.a)) >> (_wgslsmith_div_vec4_u32(vec4<u32>(99058u, u_input.c, global1.x, 34929u), vec4<u32>(0u, 10661u, 34856u, global1.x) << (vec4<u32>(global1.x, 4294967295u, 0u, 1u) % vec4<u32>(32u))) % vec4<u32>(32u)), vec4<i32>(var_0.x, u_input.a, func_2(false), 1i), !vec4<bool>(true, all(vec2<bool>(false, true)), true, true)) << (u_input.b % vec4<u32>(32u));
    var var_1 = vec2<bool>(func_3(), false);
    let var_2 = 2570u;
    let var_3 = _wgslsmith_f_op_vec2_f32(round(vec2<f32>(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.b.x, ~1u), 6u)], -484f)));
    return var_3;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = firstTrailingBit(u_input.b.yzx);
    var var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u, 6u)]) * -982f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_add_u32(90624u, u_input.b.x), 6u)]) + _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(u_input.c, 6u)], -1000f))))) + _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(1u, 6u)], 1341f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1415f, global0[_wgslsmith_index_u32(1u, 6u)]))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-274f, global0[_wgslsmith_index_u32(37557u, 6u)]))) - _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global0[_wgslsmith_index_u32(24400u, 6u)], global0[_wgslsmith_index_u32(26449u, 6u)]))))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(func_1(617f))))));
    var var_1 = ~(~_wgslsmith_add_vec3_u32(~(~vec3<u32>(global1.x, u_input.b.x, u_input.c)), abs(u_input.b.yxz) & (u_input.b.xxw | u_input.b.xzy)));
    var var_2 = 34182u;
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, 1u), 6u)]) + _wgslsmith_f_op_f32(-322f + -691f)))), _wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(786f, global0[_wgslsmith_index_u32(global1.x, 6u)])) + -329f))));
    var var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -754f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(1u, 6u)] - 232f) * 963f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(var_0.x, _wgslsmith_div_f32(var_0.x, var_0.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(599f, _wgslsmith_div_f32(var_0.x, 919f), false)) - 189f), _wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(select(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, u_input.c, var_1.x), vec3<u32>(u_input.b.x, var_1.x, global1.x)), true), 6u)], var_0.x))));
    var_1 = min(u_input.b.wyw, vec3<u32>(1u, select(select(u_input.c, reverseBits(global1.x), false), 26531u, true), 1u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_0.x), 78837u, 402f, u_input.a);
}

