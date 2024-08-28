struct Struct_1 {
    a: f32,
    b: u32,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec3<f32>,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 30>;

var<private> global1: vec3<f32>;

var<private> global2: Struct_1;

var<private> global3: f32 = -298f;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: Struct_2) -> f32 {
    let var_0 = u_input.a.x;
    global3 = 1155f;
    global2 = arg_0.b;
    global3 = arg_0.c.a;
    return global1.x;
}

fn func_3(arg_0: u32, arg_1: Struct_2) -> vec3<f32> {
    var var_0 = arg_1.b;
    var var_1 = select(vec2<i32>(~_wgslsmith_add_i32(-var_0.c, global2.c), -32295i), -abs(_wgslsmith_add_vec2_i32(select(u_input.a, vec2<i32>(arg_1.c.c, 14538i), true), countOneBits(vec2<i32>(2147483647i, u_input.a.x)))), !vec2<bool>(!all(vec3<bool>(false, true, false)), arg_1.a.b <= reverseBits(4294967295u)));
    let var_2 = ~(~vec3<u32>(4294967295u, arg_1.b.b, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.c.b, global2.b, arg_1.b.b), ~vec3<u32>(arg_0, 0u, 74437u))));
    let var_3 = ~(~(~8618u));
    let var_4 = Struct_2(arg_1.c, Struct_1(539f, 1u, 41946i), arg_1.b, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) * _wgslsmith_f_op_f32(arg_1.d.x - 158f)), _wgslsmith_f_op_f32(-644f + var_0.a), var_0.a) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(arg_1.d)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(587f, global2.a, 1222f)) * arg_1.d))), select(vec4<bool>(true, true, true, true), !(!select(arg_1.e, arg_1.e, arg_1.e.x)), true));
    return vec3<f32>(_wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -943f), -484f)), _wgslsmith_f_op_f32(1019f * global1.x));
}

fn func_1(arg_0: vec4<f32>, arg_1: u32, arg_2: bool, arg_3: vec3<u32>) -> bool {
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(Struct_2(Struct_1(-242f, 1u, global2.c), Struct_1(global2.a, global2.b, u_input.a.x), Struct_1(-260f, 4294967295u, 2147483647i), arg_0.xyx, vec4<bool>(arg_2, false, true, arg_2)))) + -128f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x * arg_0.x) * _wgslsmith_f_op_f32(-arg_0.x))), 4317u, -1i), Struct_1(_wgslsmith_f_op_f32(func_2(Struct_2(Struct_1(-669f, arg_1, u_input.a.x), Struct_1(128f, arg_1, -1i), Struct_1(arg_0.x, global2.b, 0i), _wgslsmith_f_op_vec3_f32(func_3(4294967295u, Struct_2(Struct_1(global1.x, 25173u, 1i), Struct_1(global2.a, arg_1, global2.c), Struct_1(-618f, arg_3.x, u_input.a.x), arg_0.yxy, vec4<bool>(arg_2, false, false, arg_2)))), vec4<bool>(true, true, true, arg_2)))), 99182u, -1i), Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) + _wgslsmith_f_op_f32(max(1000f, -105f))))), arg_1 ^ (countOneBits(global2.b) & ~154737u), i32(-1i) * -22913i), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(-1000f, -921f, arg_2)), 1391f))), global1.x, 494f), select(!(!(!vec4<bool>(arg_2, arg_2, arg_2, false))), !(!select(vec4<bool>(arg_2, false, false, true), vec4<bool>(arg_2, false, arg_2, false), vec4<bool>(false, true, arg_2, arg_2))), !(!select(vec4<bool>(false, false, false, arg_2), vec4<bool>(false, arg_2, arg_2, true), vec4<bool>(false, arg_2, arg_2, arg_2)))));
    global2 = var_0.a;
    global0 = array<vec4<i32>, 30>();
    var var_1 = ~reverseBits(_wgslsmith_mod_u32(88758u, 4294967295u));
    global2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), arg_1, ~u_input.a.x);
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -_wgslsmith_dot_vec4_i32(~vec4<i32>(_wgslsmith_mod_i32(2147483647i, 31428i), -35768i, min(1i, 457i), _wgslsmith_add_i32(global2.c, u_input.a.x)), vec4<i32>(0i, u_input.a.x, 1i, 0i));
    let var_1 = vec3<bool>((var_0 & (_wgslsmith_dot_vec4_i32(global0[_wgslsmith_index_u32(1u, 30u)], global0[_wgslsmith_index_u32(global2.b, 30u)]) | (global2.c >> (global2.b % 32u)))) != 797i, !all(vec3<bool>(all(vec2<bool>(false, true)), false, true)), !all(vec4<bool>(true, true, true, true)) & any(vec3<bool>(false, func_1(vec4<f32>(-743f, global2.a, global1.x, global1.x), global2.b, false, vec3<u32>(59828u, 11318u, global2.b)), true)));
    var var_2 = ~vec3<i32>(-11634i >> (global2.b % 32u), 1i, u_input.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(global1.x - -375f), _wgslsmith_f_op_f32(392f + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -103f), global1.x))))));
}

