struct Struct_1 {
    a: vec4<bool>,
    b: f32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: vec2<i32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: vec2<f32> = vec2<f32>(-1995f, 2744f);

var<private> global2: Struct_2;

var<private> global3: array<vec3<u32>, 11> = array<vec3<u32>, 11>(vec3<u32>(0u, 67071u, 32038u), vec3<u32>(16410u, 1u, 29253u), vec3<u32>(0u, 0u, 79911u), vec3<u32>(38386u, 0u, 1u), vec3<u32>(1u, 9742u, 27055u), vec3<u32>(4294967295u, 4294967295u, 7280u), vec3<u32>(54755u, 4294967295u, 1u), vec3<u32>(1u, 4272u, 9297u), vec3<u32>(0u, 32438u, 0u), vec3<u32>(30494u, 54858u, 0u), vec3<u32>(4294967295u, 23461u, 84314u));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
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

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_1(arg_0: vec3<i32>) -> u32 {
    var var_0 = any(global2.c.a);
    var var_1 = true;
    var var_2 = vec4<f32>(-2295f, 230f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1256f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(540f))));
    var_0 = global2.b.a.x;
    global0 = 121f;
    return min(1u, ~(~reverseBits(_wgslsmith_mult_u32(u_input.a, global2.d))));
}

fn func_3() -> vec4<u32> {
    let var_0 = Struct_2(true & !(!(!global2.a)), Struct_1(!global2.c.a, -314f), global2.c, ~(~global2.d));
    let var_1 = vec4<i32>(_wgslsmith_sub_i32(0i, 1i), -19905i, u_input.c.x, -(-2147483647i << (~var_0.d % 32u)));
    global1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(151f, var_0.b.b))));
    var var_2 = u_input.c.wzz;
    var var_3 = Struct_2(!(!global2.c.a.x), global2.c, var_0.c, ~(~(~global2.d)));
    return _wgslsmith_mod_vec4_u32(firstTrailingBit(vec4<u32>(min(1u, ~u_input.a), firstTrailingBit(1u), 4294967295u, func_1(var_1.xww | u_input.c.xww))), vec4<u32>(~var_0.d, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(1u, var_0.d)) << (u_input.a % 32u), max(countOneBits(~var_3.d), _wgslsmith_div_u32(~global2.d, _wgslsmith_div_u32(global2.d, 4294967295u))), 55216u));
}

fn func_2(arg_0: bool, arg_1: u32, arg_2: vec2<u32>, arg_3: u32) -> Struct_2 {
    let var_0 = _wgslsmith_dot_vec4_i32(-u_input.c, vec4<i32>(-2147483647i, i32(-1i) * -1i, u_input.c.x, -_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, u_input.c.x, -2147483647i, 5323i), u_input.c), firstLeadingBit(vec4<i32>(u_input.c.x, 8220i, u_input.c.x, u_input.b)))));
    var var_1 = ~(countOneBits(_wgslsmith_mod_vec4_u32(max(vec4<u32>(0u, 1u, 1u, arg_3), vec4<u32>(arg_3, 0u, u_input.a, arg_1)), vec4<u32>(arg_1, 43165u, 35248u, arg_1))) >> (func_3() % vec4<u32>(32u)));
    let var_2 = arg_0;
    var var_3 = select(select(!vec4<bool>(true, arg_0, global2.c.a.x & global2.b.a.x, true), global2.c.a, global2.c.a), vec4<bool>(select(true, arg_0, true) & var_2, -611f >= _wgslsmith_f_op_f32(trunc(global2.c.b)), var_2, arg_0), !var_2);
    global0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-624f - 612f) - global2.b.b)))), global1.x));
    return Struct_2(all(global2.b.a.xw), Struct_1(global2.c.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) + _wgslsmith_f_op_f32(f32(-1f) * -848f))), global2.c, ~(~(1u & arg_1)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !vec3<bool>(all(global2.c.a.ww), 0u > u_input.a, global2.b.a.x && (~u_input.c.x <= 0i));
    var var_1 = func_2(!global2.b.a.x, ~_wgslsmith_clamp_u32(max(func_1(u_input.c.wwz), global2.d), 101874u, select(~u_input.a, _wgslsmith_add_u32(17259u, global2.d), true)), ~vec2<u32>(~24405u ^ _wgslsmith_dot_vec4_u32(vec4<u32>(51780u, global2.d, 6370u, global2.d), vec4<u32>(23226u, u_input.a, 4294967295u, global2.d)), ~firstTrailingBit(u_input.a)), global2.d);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec2_u32(vec2<u32>(_wgslsmith_div_u32(4294967295u, 1u), _wgslsmith_dot_vec2_u32(vec2<u32>(41596u, global2.d), vec2<u32>(u_input.a, u_input.a))), ~firstLeadingBit(vec2<u32>(51771u, 4294967295u))) | _wgslsmith_sub_vec2_u32(max(vec2<u32>(var_1.d, u_input.a), ~vec2<u32>(u_input.a, 1u)), _wgslsmith_add_vec2_u32(~vec2<u32>(var_1.d, var_1.d), vec2<u32>(global2.d, 3266u) | vec2<u32>(global2.d, global2.d))), ~(~23039i), _wgslsmith_dot_vec3_u32(vec3<u32>(reverseBits(5603u ^ u_input.a), _wgslsmith_sub_u32(~28341u, _wgslsmith_mod_u32(42118u, global2.d)), 8531u), global3[_wgslsmith_index_u32(firstLeadingBit(~func_3().x), 11u)]), u_input.c.yx, ~vec4<u32>(26900u, ~(~77009u), abs(var_1.d | 28022u), u_input.a));
}

