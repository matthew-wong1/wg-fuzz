struct Struct_1 {
    a: f32,
    b: u32,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec3<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 7> = array<f32, 7>(2104f, 1680f, -1094f, 1381f, 176f, -767f, 389f);

var<private> global1: array<vec2<u32>, 4>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3() -> u32 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(~u_input.b, 7u)] - global0[_wgslsmith_index_u32(0u, 7u)]) + 985f) - global0[_wgslsmith_index_u32(abs(16952u), 7u)]), (u_input.b ^ ~(~u_input.b)) ^ 1u, global0[_wgslsmith_index_u32(_wgslsmith_add_u32(30828u, _wgslsmith_dot_vec2_u32(global1[_wgslsmith_index_u32(u_input.b, 4u)], vec2<u32>(5032u, 1u | u_input.b))), 7u)]);
    global1 = array<vec2<u32>, 4>();
    var var_1 = ~23385u;
    global1 = array<vec2<u32>, 4>();
    let var_2 = var_0;
    return ~_wgslsmith_mod_u32(abs(var_2.b), _wgslsmith_dot_vec2_u32(global1[_wgslsmith_index_u32(~1u, 4u)], ~global1[_wgslsmith_index_u32(4294967295u, 4u)]));
}

fn func_2(arg_0: i32, arg_1: vec2<u32>, arg_2: vec2<bool>) -> Struct_1 {
    global0 = array<f32, 7>();
    var var_0 = arg_1;
    let var_1 = min(vec4<u32>(u_input.b, arg_1.x | func_3(), ~abs(20627u), max(countOneBits(_wgslsmith_clamp_u32(0u, u_input.b, u_input.b)), func_3())), vec4<u32>(_wgslsmith_clamp_u32(1u, ~(~43126u), 18852u), 4294967295u, ~(~func_3()), func_3()));
    var var_2 = !select(vec3<bool>(true, all(select(vec2<bool>(true, true), vec2<bool>(arg_2.x, false), vec2<bool>(true, true))), arg_2.x), !select(!vec3<bool>(true, arg_2.x, arg_2.x), !vec3<bool>(arg_2.x, arg_2.x, arg_2.x), arg_2.x), vec3<bool>(arg_0 < ~u_input.a, arg_2.x, false));
    var var_3 = Struct_1(208f, var_1.x, -1000f);
    return Struct_1(var_3.c, 1u, 188f);
}

fn func_1(arg_0: f32) -> Struct_1 {
    let var_0 = u_input.a;
    var var_1 = !(!select(vec2<bool>(true, global0[_wgslsmith_index_u32(36317u, 7u)] > global0[_wgslsmith_index_u32(u_input.b, 7u)]), vec2<bool>(true, true), !all(vec2<bool>(false, false))));
    let var_2 = Struct_1(1162f, ~1u, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0, arg_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(select(-940f, arg_0, var_1.x))))));
    var var_3 = func_2(~var_0, ~global1[_wgslsmith_index_u32(var_2.b, 4u)], !vec2<bool>(true, !all(vec3<bool>(var_1.x, var_1.x, var_1.x))));
    var var_4 = func_2(-var_0, min(vec2<u32>(4096u, var_2.b), abs(~(global1[_wgslsmith_index_u32(28078u, 4u)] >> (vec2<u32>(11767u, 0u) % vec2<u32>(32u))))), !select(vec2<bool>(true, true), vec2<bool>(all(vec3<bool>(var_1.x, var_1.x, var_1.x)), var_1.x & var_1.x), ~u_input.b >= _wgslsmith_dot_vec4_u32(vec4<u32>(var_3.b, var_3.b, 51818u, var_3.b), vec4<u32>(var_2.b, 0u, 4294967295u, 1u))));
    return func_2(~min(u_input.a, ~select(var_0, u_input.a, var_1.x)), global1[_wgslsmith_index_u32(1135u, 4u)], !(!select(select(vec2<bool>(false, var_1.x), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(var_1.x, var_1.x), true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 0i;
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-739f, -1085f, _wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(18207u ^ u_input.b, 7u)], _wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(0u, 7u)])))), global0[_wgslsmith_index_u32(u_input.b << ((u_input.b << (43922u % 32u)) % 32u), 7u)]), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(372f, 1089f, -1143f, 547f), vec4<f32>(global0[_wgslsmith_index_u32(26283u, 7u)], global0[_wgslsmith_index_u32(4294967295u, 7u)], 463f, -310f), true)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(0u, 7u)], 861f, -115f, global0[_wgslsmith_index_u32(u_input.b, 7u)]) - vec4<f32>(global0[_wgslsmith_index_u32(0u, 7u)], 808f, -639f, -532f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(506f, global0[_wgslsmith_index_u32(u_input.b, 7u)], global0[_wgslsmith_index_u32(u_input.b, 7u)], 1010f))))));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(firstTrailingBit(1u), 7u)])))))) - _wgslsmith_f_op_f32(f32(-1f) * -167f));
    global1 = array<vec2<u32>, 4>();
    let var_3 = vec2<bool>(true, true);
    let var_4 = ~var_0;
    let var_5 = func_1(736f);
    global1 = array<vec2<u32>, 4>();
    var var_6 = max(_wgslsmith_add_vec4_u32(select(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, 56057u, var_5.b, 1u), vec4<u32>(28661u, u_input.b, var_5.b, 90804u)), ~vec4<u32>(var_5.b, 68582u, 0u, u_input.b), select(var_3.x, true, var_3.x)) << ((vec4<u32>(var_5.b, var_5.b, u_input.b, u_input.b) | reverseBits(vec4<u32>(31217u, u_input.b, 9585u, 11208u))) % vec4<u32>(32u)), ~(~vec4<u32>(0u, 0u, 448u, 4294967295u)) ^ (~vec4<u32>(u_input.b, 40319u, u_input.b, 35653u) | vec4<u32>(var_5.b, 24737u, var_5.b, u_input.b))), _wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b, u_input.b, u_input.b, var_5.b) ^ (vec4<u32>(u_input.b, var_5.b, u_input.b, 50253u) ^ vec4<u32>(var_5.b, u_input.b, u_input.b, 0u)), abs(~vec4<u32>(var_5.b, u_input.b, 15809u, var_5.b))), ~(~abs(vec4<u32>(1u, 22472u, u_input.b, 65415u)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec2_i32(abs(vec2<i32>(var_0, 5835i) << (_wgslsmith_sub_vec2_u32(vec2<u32>(var_5.b, var_6.x), vec2<u32>(31382u, var_6.x)) % vec2<u32>(32u))), vec2<i32>(-1i) * -vec2<i32>(var_4, 0i)), vec2<i32>(_wgslsmith_dot_vec3_i32(abs(vec3<i32>(var_4, -18138i, 1i)), min(vec3<i32>(-2147483647i, 2147483647i, u_input.a), vec3<i32>(u_input.a, 1i, u_input.a))) << (u_input.b % 32u), firstTrailingBit(_wgslsmith_add_i32(-12622i << (var_5.b % 32u), countOneBits(-1i)))), ~vec3<u32>(firstLeadingBit(~6972u), 1u, _wgslsmith_dot_vec3_u32(~vec3<u32>(1u, u_input.b, var_5.b), var_6.yxz)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1130f))));
}

