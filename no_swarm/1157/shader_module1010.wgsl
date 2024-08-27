struct Struct_1 {
    a: i32,
    b: i32,
    c: u32,
    d: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 11> = array<vec2<f32>, 11>(vec2<f32>(909f, -592f), vec2<f32>(238f, 1000f), vec2<f32>(-268f, -408f), vec2<f32>(1077f, 2647f), vec2<f32>(635f, -1000f), vec2<f32>(-361f, -315f), vec2<f32>(1000f, 1993f), vec2<f32>(-928f, -831f), vec2<f32>(766f, 1330f), vec2<f32>(1636f, 1000f), vec2<f32>(780f, 133f));

var<private> global1: array<vec2<u32>, 14>;

var<private> global2: array<u32, 6>;

var<private> global3: array<Struct_3, 29>;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: bool, arg_1: bool) -> i32 {
    return ~u_input.a;
}

fn func_2() -> Struct_1 {
    var var_0 = vec4<bool>(false, false, true, all(vec2<bool>(all(vec3<bool>(true, false, true)), true)) && !any(vec2<bool>(true, true)));
    var var_1 = u_input.a;
    global1 = array<vec2<u32>, 14>();
    global1 = array<vec2<u32>, 14>();
    let var_2 = vec2<bool>(true, u_input.a >= u_input.a);
    return Struct_1(u_input.a, _wgslsmith_clamp_i32(u_input.a, -(~func_3(var_2.x, var_0.x)), _wgslsmith_sub_i32(~_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, -19796i), vec2<i32>(u_input.a, -23612i)), 1i)), _wgslsmith_div_u32(global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(min(u_input.b, 4294967295u), ~global2[_wgslsmith_index_u32(4294967295u, 6u)], 4294967295u), firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(1u, 6u)], 2289u, u_input.b, u_input.b), vec4<u32>(u_input.b, 26394u, u_input.b, global2[_wgslsmith_index_u32(47729u, 6u)]))), ~(~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b, 6u)], 6u)])), 6u)], 4294967295u), abs(vec2<u32>(1u, ~u_input.b)));
}

fn func_1(arg_0: u32, arg_1: f32) -> f32 {
    var var_0 = func_2();
    let var_1 = vec2<f32>(173f, arg_1);
    return _wgslsmith_div_f32(arg_1, arg_1);
}

fn func_4(arg_0: bool, arg_1: vec3<f32>, arg_2: Struct_1) -> Struct_2 {
    global0 = array<vec2<f32>, 11>();
    global3 = array<Struct_3, 29>();
    global0 = array<vec2<f32>, 11>();
    var var_0 = Struct_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.x - arg_1.x), _wgslsmith_f_op_f32(-arg_1.x)), -701f)));
    var var_1 = global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(~(~countOneBits(0u)), global2[_wgslsmith_index_u32(~_wgslsmith_div_u32(u_input.b << (min(u_input.b, arg_2.c) % 32u), global2[_wgslsmith_index_u32(4294967295u, 6u)] & global2[_wgslsmith_index_u32(func_2().d.x, 6u)]), 6u)]), 29u)];
    return Struct_2(func_2(), Struct_1(func_3(false, -25566i != min(u_input.a, -2147483647i)), u_input.a, countOneBits(_wgslsmith_mult_u32(arg_2.d.x, global2[_wgslsmith_index_u32(4502u, 6u)])) >> (firstLeadingBit(~29810u) % 32u), vec2<u32>(63583u, _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_2.d.x, global2[_wgslsmith_index_u32(arg_2.c, 6u)], 15590u, arg_2.d.x), vec4<u32>(u_input.b, arg_2.c, u_input.b, 4294967295u), vec4<u32>(4294967295u, arg_2.c, 74761u, 31567u)), ~vec4<u32>(69052u, global2[_wgslsmith_index_u32(52204u, 6u)], u_input.b, global2[_wgslsmith_index_u32(arg_2.d.x, 6u)])))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(true, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-217f)) + _wgslsmith_f_op_f32(f32(-1f) * -818f))), _wgslsmith_f_op_f32(step(663f, -766f)), _wgslsmith_f_op_f32(func_1(global2[_wgslsmith_index_u32(1u, 6u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-2425f)))))), func_2());
    let var_1 = 24035i;
    var_0 = Struct_2(var_0.a, func_4(all(select(vec2<bool>(true, true), vec2<bool>(false, false), false)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1157f, -360f, 570f)), vec3<f32>(147f, 561f, -1077f)))), func_2()).b);
    var var_2 = -625f;
    var var_3 = ~min(~53668u ^ u_input.b, ~var_0.b.c);
    let var_4 = -_wgslsmith_sub_vec2_i32((vec2<i32>(u_input.a, -2056i) | vec2<i32>(1i, var_0.b.b)) >> (~_wgslsmith_div_vec2_u32(vec2<u32>(32203u, 19192u), var_0.a.d) % vec2<u32>(32u)), firstLeadingBit(vec2<i32>(func_2().a, u_input.a)));
    global0 = array<vec2<f32>, 11>();
    let var_5 = global0[_wgslsmith_index_u32(min(reverseBits(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 45364u), _wgslsmith_sub_vec2_u32(vec2<u32>(8329u, global2[_wgslsmith_index_u32(0u, 6u)]), global1[_wgslsmith_index_u32(27923u, 14u)])), 0u)), ~countOneBits(~0u)), 11u)];
    var var_6 = !vec2<bool>(all(vec4<bool>(true, true, true, false)), all(!select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false))));
    let x = u_input.a;
    s_output = StorageBuffer(global1[_wgslsmith_index_u32(28948u, 14u)], vec3<i32>(-max(13080i, 2455i), -16751i, ~(firstTrailingBit(var_0.b.a) ^ select(var_4.x, var_1, false))), firstTrailingBit(_wgslsmith_div_vec3_i32(-vec3<i32>(-34941i, -6885i, u_input.a), vec3<i32>(var_1, 2147483647i | var_1, -10336i << (1u % 32u)))));
}

