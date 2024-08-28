struct Struct_1 {
    a: vec3<bool>,
    b: u32,
    c: f32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: i32,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 30>;

var<private> global1: array<vec4<f32>, 17>;

var<private> global2: Struct_3 = Struct_3(Struct_1(vec3<bool>(true, false, false), 55359u, -1313f), Struct_2(734f), 0i, vec3<f32>(-1007f, -1882f, -1787f));

var<private> global3: array<f32, 2>;

var<private> global4: array<Struct_1, 30>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_2() -> bool {
    global1 = array<vec4<f32>, 17>();
    let var_0 = _wgslsmith_f_op_f32(round(-1408f));
    global0 = array<i32, 30>();
    global3 = array<f32, 2>();
    global0 = array<i32, 30>();
    return global2.a.a.x;
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_3) -> Struct_1 {
    var var_0 = ~(~_wgslsmith_clamp_i32(min(_wgslsmith_mult_i32(26088i, arg_1.c), 2147483647i), min(7348i, firstTrailingBit(2147483647i)), 57565i));
    let var_1 = _wgslsmith_div_vec2_u32(_wgslsmith_div_vec2_u32(u_input.a, select(vec2<u32>(1u, u_input.c), ~firstLeadingBit(u_input.a), !(arg_0.x || global2.a.a.x))), u_input.a);
    var var_2 = global2.b;
    let var_3 = countOneBits(min(_wgslsmith_div_u32(~global2.a.b, _wgslsmith_div_u32(global2.a.b, ~15727u)), ~u_input.c));
    global3 = array<f32, 2>();
    return Struct_1(vec3<bool>(select(_wgslsmith_sub_i32(30216i, arg_1.c), firstLeadingBit(global0[_wgslsmith_index_u32(0u, 30u)]), arg_1.a.a.x) <= _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d, u_input.b), vec2<i32>(global2.c, 7453i) | vec2<i32>(50373i, 0i)), all(vec4<bool>(global2.c != arg_1.c, false && arg_1.a.a.x, true, true)), true), u_input.c, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-2327f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.a.c), _wgslsmith_f_op_f32(-arg_1.b.a))))));
}

fn func_1(arg_0: vec2<f32>, arg_1: vec3<f32>, arg_2: vec2<f32>) -> StorageBuffer {
    global2 = Struct_3(func_3(vec4<bool>(!func_2(), !global2.a.a.x, true, !global2.a.a.x), Struct_3(global4[_wgslsmith_index_u32(min(u_input.a.x, ~u_input.c), 30u)], Struct_2(_wgslsmith_f_op_f32(arg_2.x * arg_0.x)), abs(global0[_wgslsmith_index_u32(36419u, 30u)]), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(abs(global2.d)))))), Struct_2(175f), global0[_wgslsmith_index_u32(func_3(select(vec4<bool>(false, any(vec4<bool>(global2.a.a.x, true, true, global2.a.a.x)), true, global2.a.a.x | false), select(vec4<bool>(true, false, false, global2.a.a.x), !vec4<bool>(global2.a.a.x, global2.a.a.x, true, true), select(vec4<bool>(global2.a.a.x, global2.a.a.x, global2.a.a.x, global2.a.a.x), vec4<bool>(true, global2.a.a.x, false, global2.a.a.x), vec4<bool>(global2.a.a.x, global2.a.a.x, global2.a.a.x, global2.a.a.x))), true), Struct_3(func_3(!vec4<bool>(true, global2.a.a.x, global2.a.a.x, global2.a.a.x), Struct_3(Struct_1(global2.a.a, global2.a.b, 903f), Struct_2(2257f), global0[_wgslsmith_index_u32(u_input.c, 30u)], vec3<f32>(global3[_wgslsmith_index_u32(global2.a.b, 2u)], arg_2.x, arg_0.x))), Struct_2(-1403f), -_wgslsmith_add_i32(global2.c, -2147483647i), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-347f, arg_1.x, global3[_wgslsmith_index_u32(u_input.a.x, 2u)])))).b, 30u)], _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(904f, arg_2.x, -1000f)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_1) * vec3<f32>(arg_1.x, arg_2.x, global3[_wgslsmith_index_u32(1u, 2u)]))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_1))));
    let var_0 = Struct_3(func_3(vec4<bool>(global2.a.a.x, _wgslsmith_f_op_f32(-635f * global3[_wgslsmith_index_u32(global2.a.b, 2u)]) == _wgslsmith_f_op_f32(select(arg_2.x, arg_1.x, global2.a.a.x)), -37287i != u_input.d, true), Struct_3(func_3(!vec4<bool>(global2.a.a.x, global2.a.a.x, global2.a.a.x, global2.a.a.x), Struct_3(global4[_wgslsmith_index_u32(global2.a.b, 30u)], Struct_2(global2.d.x), global0[_wgslsmith_index_u32(global2.a.b, 30u)], global2.d)), global2.b, global0[_wgslsmith_index_u32(~(~11158u), 30u)], _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(415f, -1860f, -1698f), vec3<f32>(-1994f, 1000f, arg_0.x))), _wgslsmith_f_op_vec3_f32(arg_1 * arg_1)))), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * _wgslsmith_div_f32(arg_0.x, global3[_wgslsmith_index_u32(u_input.c, 2u)])))), 2147483647i, arg_1);
    var var_1 = vec3<u32>(~select(39956u, ~var_0.a.b, min(var_0.a.b, var_0.a.b) > countOneBits(global2.a.b)), ~global2.a.b, countOneBits(_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(var_0.a.b, u_input.a.x, var_0.a.b, 1u)), ~vec4<u32>(global2.a.b, var_0.a.b, var_0.a.b, var_0.a.b)), max(max(4294967295u, u_input.c), global2.a.b), min(0u & global2.a.b, u_input.a.x << (global2.a.b % 32u)))));
    global1 = array<vec4<f32>, 17>();
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global3[_wgslsmith_index_u32(u_input.a.x, 2u)], arg_2.x, -1907f))))) * vec3<f32>(1664f, var_0.b.a, arg_2.x))));
    return StorageBuffer(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.c, ~13108u, var_0.a.b), vec3<u32>(~56619u, reverseBits(4294967295u), func_3(vec4<bool>(global2.a.a.x, global2.a.a.x, var_0.a.a.x, true), Struct_3(global2.a, Struct_2(-140f), u_input.b, vec3<f32>(global3[_wgslsmith_index_u32(var_0.a.b, 2u)], arg_2.x, 683f))).b) ^ vec3<u32>(var_0.a.b, global2.a.b, global2.a.b)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0[_wgslsmith_index_u32(u_input.c, 30u)];
    global1 = array<vec4<f32>, 17>();
    let var_1 = 58106u;
    let x = u_input.a;
    s_output = func_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -192f)), 769f)), vec3<f32>(global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(var_1, _wgslsmith_div_u32(global2.a.b, 36317u) ^ _wgslsmith_mod_u32(u_input.c, var_1)), 2u)], global2.a.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -905f) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(global2.b.a * global3[_wgslsmith_index_u32(u_input.c, 2u)]), _wgslsmith_f_op_f32(f32(-1f) * -511f)))), global2.d.yz);
}

