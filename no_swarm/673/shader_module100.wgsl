struct Struct_1 {
    a: vec4<f32>,
    b: vec2<u32>,
    c: vec3<i32>,
    d: bool,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: bool,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<u32>,
    c: vec2<bool>,
    d: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: Struct_4;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: vec4<bool>, arg_1: vec3<u32>) -> f32 {
    global1 = Struct_4(Struct_2(global1.a.a), firstLeadingBit(vec4<u32>(1u, select(arg_1.x, abs(0u), all(arg_0.xy)), firstLeadingBit(global1.a.a.b.x) >> ((arg_1.x << (0u % 32u)) % 32u), ~countOneBits(6764u))), !global1.c, arg_1.x <= _wgslsmith_dot_vec4_u32(abs(global1.b) & global1.b, vec4<u32>(global1.a.a.b.x, reverseBits(global1.a.a.b.x), global1.b.x, 4294967295u)));
    let var_0 = select(0i, 12374i, select(arg_0.x, !(!any(vec3<bool>(true, false, arg_0.x))), global1.d));
    var var_1 = -1000f;
    var var_2 = Struct_3(global1.a.a.c.zy, -2147483647i <= (_wgslsmith_clamp_i32(-var_0, _wgslsmith_div_i32(-1i, global1.a.a.c.x), 79088i) | _wgslsmith_dot_vec3_i32(countOneBits(vec3<i32>(global1.a.a.c.x, 0i, 0i)), global1.a.a.c | vec3<i32>(global1.a.a.c.x, -47092i, 21022i))), Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.a.a.e, -497f, _wgslsmith_f_op_f32(1749f + global1.a.a.a.x), global1.a.a.a.x) - vec4<f32>(_wgslsmith_f_op_f32(1483f - 405f), _wgslsmith_f_op_f32(-103f + 1066f), 1000f, 253f)), firstLeadingBit(_wgslsmith_div_vec2_u32(~vec2<u32>(arg_1.x, 4294967295u), vec2<u32>(63087u, u_input.a.x))), vec3<i32>(-1i, ~(-global1.a.a.c.x), ~(-34044i)), true & (-var_0 >= _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, -226i, global1.a.a.c.x), vec3<i32>(var_0, var_0, var_0))), _wgslsmith_f_op_f32(-global1.a.a.a.x)));
    var var_3 = Struct_3(-_wgslsmith_div_vec2_i32(~vec2<i32>(1i, 1i), ~vec2<i32>(global1.a.a.c.x, 39278i)), false, var_2.c);
    return 793f;
}

fn func_2(arg_0: vec2<u32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(844f, _wgslsmith_f_op_f32(func_3(!vec4<bool>(false, global1.d, global1.d, true), abs(vec3<u32>(u_input.a.x, 1u, arg_0.x)))))))));
    let var_1 = vec3<bool>(true, true, true);
    global0 = !var_1.x;
    let var_2 = global1.a;
    global1 = Struct_4(Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-global1.a.a.a))), ~(var_2.a.b << (global1.a.a.b % vec2<u32>(32u))), max(firstTrailingBit(vec3<i32>(global1.a.a.c.x, global1.a.a.c.x, 0i)), -global1.a.a.c), var_2.a.d, 1000f)), vec4<u32>(_wgslsmith_add_u32(global1.b.x ^ ~4294967295u, ~var_2.a.b.x), (firstTrailingBit(3628u) ^ 47357u) >> (~(~var_2.a.b.x) % 32u), reverseBits(1u), _wgslsmith_dot_vec4_u32(reverseBits(global1.b), select(global1.b, vec4<u32>(0u, 0u, arg_0.x, 1u), vec4<bool>(true, false, true, true))) >> (var_2.a.b.x % 32u)), vec2<bool>(!all(select(vec2<bool>(true, false), var_1.zy, true)), false), var_1.x);
    return Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(var_2.a.a, global1.a.a.a, vec4<bool>(false, false, var_2.a.d, var_2.a.d))), vec4<f32>(711f, var_0, var_2.a.a.x, -1865f))))), global1.a.a.a), vec2<u32>(1u, ~_wgslsmith_mult_u32(_wgslsmith_sub_u32(u_input.a.x, 4294967295u), var_2.a.b.x)), var_2.a.c, true, _wgslsmith_f_op_f32(func_3(select(vec4<bool>(true, all(vec3<bool>(var_1.x, var_1.x, false)), true, true), !vec4<bool>(var_1.x, global1.d, true, true), (0u >= arg_0.x) | any(vec4<bool>(var_1.x, global1.d, var_2.a.d, global1.a.a.d))), ~global1.b.wwy)));
}

fn func_1(arg_0: f32) -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(global1.a.a.a + vec4<f32>(665f, global1.a.a.e, 256f, 1399f)))) - _wgslsmith_f_op_vec4_f32(-global1.a.a.a)));
    var var_1 = func_2(vec2<u32>(global1.b.x, 4294967295u));
    global0 = true;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec4<bool>(true, var_1.d, false, var_1.d), vec3<u32>(reverseBits(u_input.a.x), _wgslsmith_sub_u32(1u, global1.a.a.b.x), 0u)))) - global1.a.a.e);
    var var_3 = -(~var_1.c.x ^ global1.a.a.c.x);
    return select(global1.c, global1.c, !var_1.d);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 181f;
    global0 = global1.a.a.d;
    var var_1 = global1.a.a;
    var_1 = global1.a.a;
    var var_2 = vec2<bool>(all(!select(func_1(682f), vec2<bool>(true, true), global1.a.a.e >= 933f)), func_2(global1.a.a.b).d);
    let var_3 = -13566i;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(global1.b.x, ~_wgslsmith_mult_u32(var_1.b.x ^ global1.a.a.b.x, 5783u), _wgslsmith_clamp_u32(global1.a.a.b.x, _wgslsmith_sub_u32(global1.b.x, global1.b.x), ~global1.a.a.b.x) ^ (1u ^ ~var_1.b.x)), ~(~global1.a.a.b), 65711u);
}

