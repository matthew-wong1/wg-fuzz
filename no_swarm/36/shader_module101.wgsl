struct Struct_1 {
    a: vec4<f32>,
    b: f32,
    c: vec2<i32>,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec2<i32>,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<vec3<bool>, 16>;

var<private> global2: array<bool, 11> = array<bool, 11>(true, true, true, false, true, false, false, false, true, true, false);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: vec2<i32>) -> f32 {
    global1 = array<vec3<bool>, 16>();
    var var_0 = arg_0;
    var var_1 = arg_0.a.x;
    let var_2 = arg_0;
    var_1 = _wgslsmith_f_op_f32(sign(var_2.d));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(302f)) - _wgslsmith_f_op_f32(-arg_0.a.x)));
}

fn func_2(arg_0: vec3<bool>, arg_1: u32, arg_2: Struct_1) -> f32 {
    global1 = array<vec3<bool>, 16>();
    global0 = i32(-1i) * -25093i;
    var var_0 = 1269i;
    let var_1 = ~abs(~(~_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, 38498u), vec2<u32>(4294967295u, 1u))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.d * _wgslsmith_f_op_f32(func_3(Struct_1(_wgslsmith_f_op_vec4_f32(abs(arg_2.a)), _wgslsmith_f_op_f32(min(arg_2.a.x, 505f)), arg_2.c | vec2<i32>(0i, arg_2.c.x), _wgslsmith_f_op_f32(select(arg_2.b, -1005f, global2[_wgslsmith_index_u32(17693u, 11u)]))), countOneBits(arg_2.c ^ u_input.d)))));
}

fn func_1(arg_0: vec3<bool>, arg_1: f32, arg_2: u32, arg_3: u32) -> vec4<bool> {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(1312f + arg_1), _wgslsmith_f_op_f32(round(arg_1)), _wgslsmith_div_f32(-454f, _wgslsmith_f_op_f32(-arg_1)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -795f))))));
    let var_1 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0.x + arg_1))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_0.x)) * _wgslsmith_f_op_f32(func_2(!vec3<bool>(arg_0.x, global2[_wgslsmith_index_u32(arg_3, 11u)], arg_0.x), arg_3, Struct_1(vec4<f32>(arg_1, var_0.x, -1260f, 927f), arg_1, u_input.d, arg_1)))), arg_1, var_0.x), _wgslsmith_f_op_f32(f32(-1f) * -1000f), select(~_wgslsmith_mod_vec2_i32(vec2<i32>(0i, 2881i), vec2<i32>(u_input.c.x, 0i)), u_input.c, false), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec3<bool>(!arg_0.x, all(vec3<bool>(arg_0.x, global2[_wgslsmith_index_u32(arg_3, 11u)], false)), global2[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.a, arg_3), 11u)]), _wgslsmith_mult_u32(max(1u, u_input.a), u_input.a), Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -1047f, 1649f, arg_1) - vec4<f32>(-170f, var_0.x, 2979f, 1477f)), _wgslsmith_f_op_f32(min(1504f, var_0.x)), u_input.c, arg_1)))));
    var var_2 = _wgslsmith_dot_vec4_u32(max(~(~(~vec4<u32>(1u, arg_3, 3235u, u_input.a))), ~(~vec4<u32>(14715u, 1492u, 56481u, u_input.a) << (firstLeadingBit(vec4<u32>(arg_2, 0u, arg_3, 24788u)) % vec4<u32>(32u)))), select(_wgslsmith_add_vec4_u32(~_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, arg_2, 0u, arg_3), vec4<u32>(arg_3, 75236u, 0u, 74465u), vec4<u32>(0u, arg_2, arg_2, arg_3)), firstLeadingBit(vec4<u32>(0u, 92620u, arg_2, arg_3) >> (vec4<u32>(u_input.a, arg_3, arg_2, arg_3) % vec4<u32>(32u)))), ~firstLeadingBit(abs(vec4<u32>(0u, arg_2, 70287u, 20914u))), all(!vec3<bool>(true, global2[_wgslsmith_index_u32(arg_3, 11u)], false))));
    let var_3 = !(!select(vec4<bool>(any(vec3<bool>(global2[_wgslsmith_index_u32(arg_2, 11u)], arg_0.x, global2[_wgslsmith_index_u32(2279u, 11u)])), true, !global2[_wgslsmith_index_u32(arg_2, 11u)], all(arg_0.yx)), select(select(vec4<bool>(arg_0.x, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, arg_0.x, global2[_wgslsmith_index_u32(14755u, 11u)])), select(vec4<bool>(global2[_wgslsmith_index_u32(1u, 11u)], true, arg_0.x, false), vec4<bool>(true, arg_0.x, false, arg_0.x), global2[_wgslsmith_index_u32(17181u, 11u)]), select(vec4<bool>(arg_0.x, global2[_wgslsmith_index_u32(arg_2, 11u)], arg_0.x, false), vec4<bool>(false, global2[_wgslsmith_index_u32(54362u, 11u)], true, arg_0.x), vec4<bool>(false, arg_0.x, true, true))), global2[_wgslsmith_index_u32(arg_3, 11u)]));
    let var_4 = Struct_1(_wgslsmith_f_op_vec4_f32(var_1.a + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(var_1.a, var_1.a)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_1.a + vec4<f32>(arg_1, -588f, var_0.x, -1826f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1248f, var_1.d, var_0.x, 1216f))))), _wgslsmith_f_op_f32(sign(var_1.a.x)), vec2<i32>(firstTrailingBit(-549i), select(var_1.c.x, countOneBits(_wgslsmith_div_i32(-37409i, var_1.c.x)), select(global2[_wgslsmith_index_u32(firstTrailingBit(71156u), 11u)], arg_0.x, var_3.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_1)) * _wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    return !vec4<bool>(select(false, global2[_wgslsmith_index_u32(u_input.a, 11u)], false), true, all(!(!var_3.wz)), true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_f32(-1906f, _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1015f)))));
    global0 = -u_input.e & _wgslsmith_add_i32(_wgslsmith_mod_i32(u_input.b.x, _wgslsmith_clamp_i32(u_input.d.x, _wgslsmith_dot_vec3_i32(vec3<i32>(-3491i, -1834i, 2147483647i), vec3<i32>(-21381i, 6380i, 0i)), countOneBits(1i))), -(~2147483647i));
    var var_1 = 1u;
    var var_2 = u_input.b;
    let var_3 = !all(!select(!vec4<bool>(global2[_wgslsmith_index_u32(1u, 11u)], true, true, global2[_wgslsmith_index_u32(4294967295u, 11u)]), func_1(vec3<bool>(global2[_wgslsmith_index_u32(18819u, 11u)], true, global2[_wgslsmith_index_u32(71468u, 11u)]), -606f, 58907u, 37953u), vec4<bool>(false, global2[_wgslsmith_index_u32(1u, 11u)], true, true)));
    global1 = array<vec3<bool>, 16>();
    var_2 = select(vec3<i32>(~u_input.e, -u_input.e, abs(~firstLeadingBit(-23169i))), vec3<i32>(-70660i, 81210i, u_input.b.x), global1[_wgslsmith_index_u32(~(~(_wgslsmith_clamp_u32(1u, u_input.a, u_input.a) << (reverseBits(u_input.a) % 32u))), 16u)]);
    let var_4 = vec2<i32>(~_wgslsmith_sub_i32(_wgslsmith_div_i32(19267i, var_2.x), reverseBits(_wgslsmith_mult_i32(-2147483647i, var_2.x))), _wgslsmith_add_i32(1i, 45944i));
    var_0 = -861f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(u_input.a, min(_wgslsmith_add_u32(1u, u_input.a), u_input.a >> (u_input.a % 32u))), _wgslsmith_f_op_f32(f32(-1f) * -619f));
}

