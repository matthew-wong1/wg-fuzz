struct Struct_1 {
    a: f32,
    b: f32,
    c: vec4<i32>,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<u32>,
    c: f32,
}

struct Struct_4 {
    a: vec3<f32>,
    b: vec3<i32>,
    c: vec3<bool>,
    d: u32,
}

struct Struct_5 {
    a: vec3<bool>,
    b: Struct_1,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec4<u32>,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 14>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec4<bool> {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(1u, 14u)] - global0[_wgslsmith_index_u32(~20614u, 14u)]), _wgslsmith_f_op_f32(ceil(1042f)));
    var_0 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(~(~_wgslsmith_sub_u32(u_input.a.x, 0u)), _wgslsmith_add_u32(1u, u_input.b.x)) | (~u_input.d & u_input.a.x), 14u)];
    var var_1 = vec3<bool>(true || select(true, true, any(vec2<bool>(true, true))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(1267f)))), -1149f)) != _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0[_wgslsmith_index_u32(53058u, 14u)], _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.c.x, 14u)]))), any(select(vec3<bool>(true, true, true), select(select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, false)), vec3<bool>(false, true, false), select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), false)), select(select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), false), select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), false), vec3<bool>(true, true, true)))));
    let var_2 = Struct_2(vec3<bool>(select(false, var_1.x && !var_1.x, var_1.x), true, !(!all(vec3<bool>(var_1.x, var_1.x, var_1.x)))));
    var var_3 = Struct_3(Struct_1(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(~(~u_input.c.x), 14u)] - -1344f), global0[_wgslsmith_index_u32(~u_input.b.x, 14u)], vec4<i32>(22055i, 47581i, abs(reverseBits(27467i)), u_input.e.x)), u_input.b, global0[_wgslsmith_index_u32(u_input.b.x, 14u)]);
    return vec4<bool>(true, any(vec3<bool>(true, all(vec2<bool>(false, var_1.x)) || any(vec2<bool>(false, false)), select(var_1.x, true & var_2.a.x, all(vec4<bool>(var_2.a.x, var_2.a.x, true, var_1.x))))), select(var_2.a.x, all(var_2.a.zy), !any(vec4<bool>(var_1.x, true, var_1.x, var_1.x))), _wgslsmith_f_op_f32(step(var_3.c, global0[_wgslsmith_index_u32(~u_input.d << (_wgslsmith_sub_u32(var_3.b.x, 4294967295u) % 32u), 14u)])) < global0[_wgslsmith_index_u32(~0u & u_input.d, 14u)]);
}

fn func_2() -> bool {
    var var_0 = !vec4<bool>(true, any(vec3<bool>(any(vec4<bool>(true, false, true, true)), any(vec4<bool>(false, true, true, false)), false)), false, all(!select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false))));
    var var_1 = _wgslsmith_f_op_f32(-186f - 1340f);
    var var_2 = u_input.e.zy;
    var_0 = func_3();
    var_1 = global0[_wgslsmith_index_u32(u_input.c.x, 14u)];
    return abs(-4046i) > u_input.e.x;
}

fn func_1(arg_0: i32, arg_1: u32, arg_2: Struct_1) -> vec4<bool> {
    let var_0 = firstLeadingBit(abs(arg_1 | _wgslsmith_dot_vec4_u32(u_input.c, ~vec4<u32>(u_input.b.x, 58174u, u_input.b.x, 0u))));
    var var_1 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(1u, 14u)], 489f, 494f, arg_2.a)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.b, -1000f, global0[_wgslsmith_index_u32(5670u, 14u)], global0[_wgslsmith_index_u32(0u, 14u)])) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.a, -1032f, arg_2.b, global0[_wgslsmith_index_u32(u_input.b.x, 14u)])))) - vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(771f - 562f) - global0[_wgslsmith_index_u32(4294967295u, 14u)]), arg_2.b, -1821f, 363f))));
    var var_2 = vec4<bool>(any(vec2<bool>(any(vec2<bool>(true, true)), any(vec4<bool>(true, true, true, true)))), func_2(), true, all(vec4<bool>(true, true, any(vec2<bool>(true, true)), select(true, true, all(vec3<bool>(true, true, false))))));
    var var_3 = vec4<u32>(~(~(~_wgslsmith_sub_u32(4294967295u, 38833u))), var_0, arg_1, 27881u);
    let var_4 = Struct_3(arg_2, abs(~u_input.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(reverseBits(var_0), 14u)], _wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(u_input.a.x, 14u)])))) + var_1.x)));
    return func_3();
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 14>();
    let var_0 = Struct_1(global0[_wgslsmith_index_u32(~115978u, 14u)], _wgslsmith_f_op_f32(_wgslsmith_div_f32(-814f, -301f) + 1144f), vec4<i32>(u_input.e.x, u_input.e.x, _wgslsmith_mod_i32(-4517i, ~1i), select(u_input.e.x, u_input.e.x ^ (i32(-1i) * -2147483647i), any(select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), true)))));
    let var_1 = ~33174u;
    var var_2 = Struct_2(!vec3<bool>(true, !all(vec3<bool>(false, true, false)), false));
    var var_3 = Struct_5(select(!vec3<bool>(true, var_0.c.x >= 2147483647i, true), var_2.a, vec3<bool>(all(func_1(u_input.e.x, 1u, var_0)), var_2.a.x, true)), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.b.x, 14u)] + 1000f) + global0[_wgslsmith_index_u32(var_1, 14u)]), global0[_wgslsmith_index_u32(~53993u, 14u)], firstLeadingBit(~firstLeadingBit(vec4<i32>(34475i, u_input.e.x, var_0.c.x, -43971i)))), Struct_3(var_0, u_input.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(165f - global0[_wgslsmith_index_u32(4294967295u, 14u)]) * _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(var_1, 14u)] - var_0.a)))));
    var_3 = Struct_5(var_2.a, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(312f, 2081f)), 1f, var_0.c), var_3.c);
    var var_4 = var_3.c.a;
    let var_5 = vec4<u32>(81283u, u_input.d, 17628u, ~var_3.c.b.x);
    var var_6 = 4294967295u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_4.a, 2275f, -467f)))), vec3<f32>(_wgslsmith_f_op_f32(var_4.a * -711f), _wgslsmith_f_op_f32(f32(-1f) * -1186f), _wgslsmith_f_op_f32(350f - 255f)), select(func_1(var_3.c.a.c.x, 1u, Struct_1(1000f, 1455f, vec4<i32>(-28122i, -19154i, var_3.c.a.c.x, var_3.c.a.c.x))).yxw, !vec3<bool>(var_3.a.x, var_2.a.x, false), var_3.a)))), -vec2<i32>(-1i, u_input.e.x));
}

