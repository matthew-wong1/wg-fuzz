struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: f32,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_1,
    c: i32,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
    d: vec2<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<vec4<f32>, 6>;

var<private> global2: array<f32, 18> = array<f32, 18>(-378f, -308f, -341f, -1044f, -484f, 309f, -2251f, -418f, -197f, -190f, -1902f, 1000f, -752f, 570f, -653f, -1054f, -610f, 346f);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec2<u32>, arg_2: Struct_2) -> u32 {
    let var_0 = Struct_1(arg_0, true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(546f - 476f)));
    global2 = array<f32, 18>();
    global0 = 33421u;
    let var_1 = var_0;
    global1 = array<vec4<f32>, 6>();
    return ~32203u;
}

fn func_2() -> vec3<bool> {
    let var_0 = !select(vec4<bool>(-1329f == global2[_wgslsmith_index_u32(select(1u, 9276u, false), 18u)], true, select(true, true, true), any(vec2<bool>(false, true))), !vec4<bool>(true, u_input.d.x >= u_input.c, true, true), !(!select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, true))));
    let var_1 = global1[_wgslsmith_index_u32(func_3(firstLeadingBit(_wgslsmith_clamp_vec4_i32(firstLeadingBit(min(vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x), vec4<i32>(u_input.b.x, -2147483647i, u_input.b.x, -5786i))), -_wgslsmith_mod_vec4_i32(vec4<i32>(-20587i, 1i, u_input.b.x, 16684i), vec4<i32>(u_input.b.x, -1i, u_input.b.x, -1i)), vec4<i32>(u_input.b.x ^ -31937i, ~(-9438i), firstTrailingBit(1i), _wgslsmith_div_i32(u_input.b.x, -66045i)))), _wgslsmith_div_vec2_u32(vec2<u32>(reverseBits(u_input.a), 0u), vec2<u32>(1u, 36131u)), Struct_2(var_0.yzy)), 6u)];
    global0 = _wgslsmith_clamp_u32(u_input.c, firstLeadingBit(0u), ~_wgslsmith_add_u32(~u_input.e.x, _wgslsmith_sub_u32(4294967295u, ~4554u)));
    var var_2 = _wgslsmith_f_op_vec3_f32(ceil(var_1.wyx));
    var var_3 = u_input.e;
    return var_0.xyy;
}

fn func_1(arg_0: bool) -> Struct_1 {
    global1 = array<vec4<f32>, 6>();
    var var_0 = select(!(!vec3<bool>(any(vec3<bool>(true, arg_0, false)), true, false)), vec3<bool>(global2[_wgslsmith_index_u32(~min(0u, u_input.d.x), 18u)] > global2[_wgslsmith_index_u32(u_input.c, 18u)], arg_0, true), select(select(vec3<bool>(arg_0 && arg_0, true, !arg_0), !vec3<bool>(arg_0, arg_0, false), false), !(!select(vec3<bool>(arg_0, arg_0, false), vec3<bool>(arg_0, arg_0, true), vec3<bool>(true, false, false))), !select(vec3<bool>(arg_0, false, true), func_2(), true)));
    var var_1 = Struct_2(!(!(!vec3<bool>(var_0.x, true, var_0.x))));
    var var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(608f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global2[_wgslsmith_index_u32(max(0u, u_input.e.x), 18u)], -806f))))));
    var var_3 = vec4<bool>(!var_1.a.x, func_2().x, all(func_2()), true & !any(select(vec4<bool>(var_1.a.x, var_1.a.x, true, var_0.x), vec4<bool>(arg_0, arg_0, var_0.x, false), var_0.x)));
    return Struct_1(select(_wgslsmith_sub_vec4_i32(vec4<i32>(17769i, min(u_input.b.x, -2147483647i), -1i, u_input.b.x), ~(~vec4<i32>(u_input.b.x, 2147483647i, u_input.b.x, u_input.b.x))), -vec4<i32>(firstTrailingBit(0i), 1i, u_input.b.x, u_input.b.x), false), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(0u, 18u)] + -719f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(global2[_wgslsmith_index_u32(0u, 18u)]))))) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) * global2[_wgslsmith_index_u32(func_3(vec4<i32>(8520i, 0i, u_input.b.x, 42984i), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.c, 18268u), vec2<u32>(u_input.d.x, 28971u)), Struct_2(var_1.a)), 18u)]), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2[_wgslsmith_index_u32(102493u, 18u)], global2[_wgslsmith_index_u32(70537u, 18u)])), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(0u, u_input.e.x), 18u)]))))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<f32, 18>();
    var var_0 = u_input.b.x;
    var_0 = u_input.b.x;
    global2 = array<f32, 18>();
    global0 = _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, u_input.e.x), u_input.d);
    let var_1 = Struct_3(_wgslsmith_div_vec3_u32(u_input.e.wzz, vec3<u32>(u_input.d.x, ~u_input.d.x, 15511u)), func_1(all(vec4<bool>(true, true, all(vec3<bool>(true, false, true)), true))), 2147483647i, vec3<bool>(true, true, true));
    var_0 = u_input.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(1u & u_input.c, ~u_input.c, _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b.c))));
}

