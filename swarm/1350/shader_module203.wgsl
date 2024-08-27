struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: vec2<f32>,
    d: vec4<i32>,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 30>;

var<private> global1: Struct_1 = Struct_1(4294967295u, vec4<f32>(-964f, 1962f, 1796f, 399f), vec2<f32>(881f, 842f), vec4<i32>(-95447i, 1i, -24743i, -20425i), vec3<bool>(true, true, false));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> i32 {
    var var_0 = Struct_1(~(~(global1.a | ~48304u)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-1232f * _wgslsmith_f_op_f32(-global1.c.x)), _wgslsmith_div_f32(-1273f, _wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(global1.a, 30u)]))), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(global1.a, 30u)]), 1000f) * _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(trunc(global1.b))))), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(~global1.a, 30u)])), _wgslsmith_f_op_f32(step(1001f, _wgslsmith_f_op_f32(-global1.c.x)))))), global1.d, global1.e);
    global1 = Struct_1(~_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(firstLeadingBit(vec2<u32>(global1.a, 31462u)), _wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, var_0.a), vec2<u32>(1u, var_0.a))), countOneBits(vec2<u32>(var_0.a, global1.a) ^ vec2<u32>(global1.a, var_0.a))), _wgslsmith_div_vec4_f32(var_0.b, _wgslsmith_f_op_vec4_f32(-global1.b)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0[_wgslsmith_index_u32(global1.a, 30u)], global1.c.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(global1.a, 30u)])))), _wgslsmith_f_op_f32(trunc(var_0.b.x))), select(~select(-global1.d, abs(vec4<i32>(u_input.a.x, var_0.d.x, -44093i, 1i)), u_input.a.x > 0i), vec4<i32>(_wgslsmith_dot_vec3_i32(var_0.d.xwx, vec3<i32>(var_0.d.x, -41900i, u_input.a.x)), var_0.d.x, reverseBits(1491i), var_0.d.x), global1.e.x), vec3<bool>(any(!(!vec4<bool>(false, true, global1.e.x, true))), false, !(!any(vec4<bool>(false, false, true, true)))));
    return 725i;
}

fn func_2(arg_0: u32) -> bool {
    global1 = Struct_1(~abs(21441u), _wgslsmith_div_vec4_f32(global1.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global1.b * _wgslsmith_f_op_vec4_f32(global1.b * global1.b)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.b.x, global0[_wgslsmith_index_u32(0u, 30u)])))) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.c.x, -2386f) - global1.b.yy) + global1.c), _wgslsmith_f_op_vec2_f32(vec2<f32>(-982f, global1.c.x) * _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global1.b.x, global1.c.x)))), select(vec2<bool>(false, true), global1.e.yy, vec2<bool>(false, global1.e.x))))), -vec4<i32>(u_input.a.x, global1.d.x, _wgslsmith_clamp_i32(-u_input.a.x, i32(-1i) * -12483i, global1.d.x), global1.d.x), !select(global1.e, select(global1.e, vec3<bool>(global1.e.x, global1.e.x, true), global1.e), _wgslsmith_f_op_f32(global1.b.x + global1.c.x) >= _wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(arg_0, 30u)]))));
    let var_0 = 18219u;
    global1 = Struct_1(4294967295u, _wgslsmith_f_op_vec4_f32(global1.b * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(0u, 30u)])), _wgslsmith_f_op_f32(-global1.c.x), _wgslsmith_f_op_f32(f32(-1f) * -661f), _wgslsmith_f_op_f32(f32(-1f) * -1224f)), global1.b, vec4<bool>(global1.d.x <= 0i, true, true, true)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-global1.b.yw), vec2<f32>(global1.b.x, global1.b.x))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(select(global1.b.xy, vec2<f32>(global1.c.x, global0[_wgslsmith_index_u32(var_0, 30u)]), global1.e.xx)), _wgslsmith_f_op_vec2_f32(-global1.c))))), ~_wgslsmith_sub_vec4_i32(vec4<i32>(-1i, global1.d.x, func_3(), ~0i), global1.d), select(global1.e, global1.e, any(select(global1.e, vec3<bool>(global1.e.x, false, false), vec3<bool>(true, true, true)))));
    var var_1 = Struct_1(arg_0 | _wgslsmith_clamp_u32(abs(global1.a | 5439u), ~_wgslsmith_div_u32(1u, 18896u), _wgslsmith_div_u32(~global1.a, 46030u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(410f, _wgslsmith_f_op_f32(abs(global1.b.x)), global1.c.x, -568f) * _wgslsmith_f_op_vec4_f32(select(global1.b, _wgslsmith_f_op_vec4_f32(-global1.b), select(vec4<bool>(true, global1.e.x, global1.e.x, global1.e.x), vec4<bool>(global1.e.x, global1.e.x, global1.e.x, global1.e.x), vec4<bool>(true, global1.e.x, true, global1.e.x)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1718f, global0[_wgslsmith_index_u32(0u, 30u)])), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(global1.b.xw + vec2<f32>(-1821f, -1000f))))) - vec2<f32>(_wgslsmith_f_op_f32(1151f * _wgslsmith_f_op_f32(1032f * global0[_wgslsmith_index_u32(1u, 30u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1026f))))), ~(~_wgslsmith_div_vec4_i32(vec4<i32>(-13073i, u_input.a.x, u_input.a.x, -1i), vec4<i32>(u_input.a.x, u_input.a.x, global1.d.x, 2147483647i)) ^ firstLeadingBit(global1.d)), vec3<bool>(true, global1.e.x, any(vec2<bool>(!global1.e.x, true))));
    var var_2 = vec4<u32>(~max(_wgslsmith_clamp_u32(30594u, _wgslsmith_div_u32(0u, var_1.a), var_1.a | 4294967295u), 0u), 1u, global1.a, var_0);
    return !var_1.e.x;
}

fn func_1(arg_0: Struct_1, arg_1: bool, arg_2: i32) -> u32 {
    let var_0 = arg_0.e.x;
    let var_1 = var_0;
    var var_2 = arg_0;
    var_2 = Struct_1(arg_0.a | 4294967295u, _wgslsmith_f_op_vec4_f32(var_2.b * _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_div_f32(var_2.b.x, -611f), _wgslsmith_f_op_f32(min(675f, -410f)), -1438f, _wgslsmith_div_f32(1137f, global0[_wgslsmith_index_u32(var_2.a, 30u)])), _wgslsmith_f_op_vec4_f32(select(var_2.b, _wgslsmith_f_op_vec4_f32(ceil(var_2.b)), -2147483647i <= global1.d.x)))), vec2<f32>(_wgslsmith_f_op_f32(-900f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -835f) + _wgslsmith_f_op_f32(arg_0.c.x - -611f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.b.x) - _wgslsmith_f_op_f32(step(-1472f, _wgslsmith_f_op_f32(592f * global1.c.x))))), vec4<i32>(~u_input.a.x, 26605i, 15963i, var_2.d.x), select(vec3<bool>(func_2(0u), false, false), vec3<bool>(any(vec2<bool>(global1.e.x, true)), func_2(global1.a), arg_0.e.x), var_2.e));
    let var_3 = select(var_2.e.zz, vec2<bool>(func_2(abs(max(58124u, 1u))), !(global1.a == (var_2.a & 0u))), false);
    return 62046u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(global1.a, 30u)]));
    let var_1 = Struct_1(~reverseBits(~_wgslsmith_dot_vec4_u32(vec4<u32>(global1.a, 1u, global1.a, global1.a), vec4<u32>(10034u, 0u, 36732u, 4294967295u))), vec4<f32>(-1383f, _wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(global1.a, global1.a), firstLeadingBit(vec2<u32>(0u, global1.a))), 30u)], global0[_wgslsmith_index_u32(_wgslsmith_div_u32(func_1(Struct_1(1u, vec4<f32>(global1.c.x, global1.b.x, global0[_wgslsmith_index_u32(109032u, 30u)], 988f), vec2<f32>(-1094f, 1000f), vec4<i32>(-2147483647i, global1.d.x, global1.d.x, global1.d.x), global1.e), global1.e.x, 2147483647i), 0u ^ global1.a), 30u)], !(global1.a != 21559u))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), global1.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + 1600f))), global1.b.yx, _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a.x, reverseBits(u_input.a.x), firstLeadingBit(u_input.a.x), -2147483647i), _wgslsmith_add_vec4_i32(~_wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, -19521i, 0i, -2147483647i), global1.d), vec4<i32>(global1.d.x, u_input.a.x, u_input.a.x, max(-2147483647i, 1i))), global1.d | vec4<i32>(~(-2147483647i), -13267i, ~global1.d.x, ~u_input.a.x)), vec3<bool>(global1.e.x, global1.e.x, global1.e.x));
    global0 = array<f32, 30>();
    let var_2 = _wgslsmith_clamp_u32(~firstTrailingBit(~var_1.a), var_1.a, ~(~(global1.a ^ ~39653u)));
    var var_3 = vec2<i32>(var_1.d.x, _wgslsmith_add_i32(~var_1.d.x, ~(~_wgslsmith_div_i32(global1.d.x, 33431i))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(45111i));
}

