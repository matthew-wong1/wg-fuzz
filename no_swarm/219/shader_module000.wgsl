struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: u32,
    b: vec4<bool>,
    c: Struct_1,
    d: vec4<f32>,
    e: vec2<bool>,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 4> = array<i32, 4>(1i, 0i, -1i, 37342i);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: vec2<u32>, arg_1: f32, arg_2: i32) -> f32 {
    var var_0 = _wgslsmith_div_i32(arg_2, _wgslsmith_sub_i32(-1i, _wgslsmith_mod_i32(~_wgslsmith_mult_i32(-5404i, arg_2), -(~global0[_wgslsmith_index_u32(28570u, 4u)]))));
    let var_1 = !(!vec4<bool>(!any(vec2<bool>(true, false)), all(vec3<bool>(true, true, true)), all(vec3<bool>(true, true, true)), all(vec3<bool>(true, true, true))));
    let var_2 = -(_wgslsmith_add_i32(select(13657i, -2581i, !var_1.x), global0[_wgslsmith_index_u32(4294967295u, 4u)]) >> ((arg_0.x >> (firstLeadingBit(abs(4294967295u)) % 32u)) % 32u));
    global0 = array<i32, 4>();
    let var_3 = Struct_2(~(~(1u | (4294967295u << (arg_0.x % 32u)))), vec4<bool>(true, false, ~_wgslsmith_div_u32(31906u, 4294967295u) <= ~_wgslsmith_dot_vec3_u32(u_input.b.zyx, u_input.b.yyy), select(true, var_1.x, any(select(vec4<bool>(false, var_1.x, true, false), var_1, vec4<bool>(false, var_1.x, var_1.x, true))))), Struct_1(~(~(arg_2 << (u_input.b.x % 32u)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(1235f, _wgslsmith_f_op_f32(step(-1293f, 1965f)), _wgslsmith_f_op_f32(floor(583f)), _wgslsmith_f_op_f32(297f * arg_1)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_1, -1000f, -941f, 981f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, 232f, arg_1, -1691f) - vec4<f32>(arg_1, arg_1, arg_1, -480f)))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1597f, -343f, arg_1, -314f) * vec4<f32>(114f, arg_1, arg_1, arg_1)) * vec4<f32>(-854f, -1748f, -134f, -2502f)))), vec4<bool>(var_1.x, any(vec3<bool>(var_1.x, var_1.x, var_1.x)), select(true, true, true), 14147i >= max(arg_2, var_2)))), var_1.xz);
    return var_3.d.x;
}

fn func_2() -> bool {
    var var_0 = Struct_1(-(~global0[_wgslsmith_index_u32(select(abs(22968u), _wgslsmith_add_u32(u_input.b.x, u_input.b.x), any(vec3<bool>(false, true, true))), 4u)]));
    var_0 = Struct_1(-31287i);
    var var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(u_input.b.wx, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1504f - 915f) - _wgslsmith_f_op_f32(-2737f + 998f)), 0i)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1703f))), -382f))));
    let var_2 = countOneBits(-(~max(-vec2<i32>(var_0.a, -2147483647i), -vec2<i32>(var_0.a, -7998i))));
    global0 = array<i32, 4>();
    return true;
}

fn func_1() -> vec2<u32> {
    var var_0 = !func_2();
    global0 = array<i32, 4>();
    global0 = array<i32, 4>();
    global0 = array<i32, 4>();
    let var_1 = Struct_3(vec2<u32>(25033u ^ _wgslsmith_div_u32(~112781u, reverseBits(u_input.a)), 4294967295u));
    return min(~u_input.b.xx, var_1.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    global0 = array<i32, 4>();
    let var_1 = Struct_3(_wgslsmith_div_vec2_u32(~(firstLeadingBit(vec2<u32>(u_input.b.x, u_input.a)) >> (~u_input.b.yx % vec2<u32>(32u))), firstLeadingBit(u_input.b.yy)));
    global0 = array<i32, 4>();
    var var_2 = Struct_1(countOneBits(_wgslsmith_dot_vec4_i32(vec4<i32>(-global0[_wgslsmith_index_u32(1u, 4u)], ~(-41715i), _wgslsmith_clamp_i32(-1i, 1i, global0[_wgslsmith_index_u32(4294967295u, 4u)]), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(0u, 36367u, u_input.a), 4u)]), firstTrailingBit(vec4<i32>(43341i, global0[_wgslsmith_index_u32(34238u, 4u)], global0[_wgslsmith_index_u32(0u, 4u)], global0[_wgslsmith_index_u32(var_1.a.x, 4u)])) ^ reverseBits(vec4<i32>(0i, global0[_wgslsmith_index_u32(1u, 4u)], 2373i, global0[_wgslsmith_index_u32(0u, 4u)])))));
    var_2 = Struct_1(firstLeadingBit(0i));
    var_2 = Struct_1(_wgslsmith_div_i32(-2147483647i, var_2.a));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * -834f)) + -352f)), _wgslsmith_div_f32(-874f, 1234f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(-1300f)), _wgslsmith_f_op_f32(step(859f, 488f)), _wgslsmith_f_op_f32(floor(402f))) - _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 416f, -174f) + vec3<f32>(274f, 1373f, 1054f)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(697f, 818f, 1570f))))))));
}

