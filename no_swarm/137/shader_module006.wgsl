struct Struct_1 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: i32,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 16>;

var<private> global1: f32 = -230f;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: vec4<u32>) -> u32 {
    global1 = _wgslsmith_f_op_f32(-1f);
    var var_0 = Struct_1(vec2<bool>(any(vec2<bool>(true, true)), true));
    global1 = _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.e, 16u)]);
    var var_1 = arg_0.x;
    var var_2 = firstLeadingBit(-17172i);
    return ~_wgslsmith_dot_vec4_u32(~(vec4<u32>(arg_0.x, 33295u, u_input.e, arg_0.x) & ~vec4<u32>(arg_0.x, 71980u, 81145u, arg_0.x)), _wgslsmith_mod_vec4_u32(u_input.b, _wgslsmith_mod_vec4_u32(u_input.b, arg_0) | (vec4<u32>(1u, u_input.e, 3224u, 4294967295u) ^ vec4<u32>(0u, 4294967295u, 0u, 48611u))));
}

fn func_2(arg_0: vec3<bool>) -> Struct_1 {
    global0 = array<f32, 16>();
    global1 = global0[_wgslsmith_index_u32((u_input.d.x ^ (~(~u_input.e) & ~_wgslsmith_clamp_u32(u_input.e, 1u, 42107u))) ^ _wgslsmith_dot_vec3_u32(~(~vec3<u32>(353u, 53386u, 0u)), vec3<u32>(u_input.d.x, min(57706u, reverseBits(u_input.b.x)), 1u)), 16u)];
    var var_0 = 0u;
    var var_1 = true;
    var var_2 = vec4<bool>(!(u_input.d.x < func_3(u_input.b)), arg_0.x, all(!vec4<bool>(false, all(vec2<bool>(arg_0.x, arg_0.x)), true || arg_0.x, arg_0.x)), !(arg_0.x | false));
    return Struct_1(select(select(!var_2.zy, !select(arg_0.yy, vec2<bool>(var_2.x, true), var_2.yy), var_2.x), !vec2<bool>(false, select(false, var_2.x, true)), false));
}

fn func_1(arg_0: vec4<u32>, arg_1: vec4<f32>, arg_2: f32, arg_3: i32) -> Struct_1 {
    var var_0 = Struct_1(select(vec2<bool>(firstLeadingBit(-2147483647i) < u_input.a.x, true), !vec2<bool>(true, any(vec3<bool>(true, true, false))), !(!select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false)))));
    let var_1 = 4294967295u;
    let var_2 = var_0.a.x || var_0.a.x;
    global1 = 1167f;
    return func_2(!select(!vec3<bool>(false, var_0.a.x, false), vec3<bool>(any(var_0.a), arg_3 <= u_input.c, true), any(!vec3<bool>(var_2, var_2, true))));
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    global1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(45801u, 16u)] + _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.d.x, 16u)] - -1000f)) * _wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.b.x, u_input.b.x), 16u)]))) + -2022f)));
    return arg_0;
}

fn func_5(arg_0: Struct_1, arg_1: vec3<i32>) -> vec2<bool> {
    var var_0 = vec4<bool>(any(!select(vec4<bool>(true, arg_0.a.x, arg_0.a.x, arg_0.a.x), select(vec4<bool>(arg_0.a.x, arg_0.a.x, arg_0.a.x, arg_0.a.x), vec4<bool>(arg_0.a.x, true, arg_0.a.x, false), vec4<bool>(arg_0.a.x, true, true, false)), !arg_0.a.x)), all(select(select(select(vec3<bool>(arg_0.a.x, false, false), vec3<bool>(true, arg_0.a.x, false), vec3<bool>(true, arg_0.a.x, false)), !vec3<bool>(false, true, arg_0.a.x), true), !select(vec3<bool>(false, false, true), vec3<bool>(false, arg_0.a.x, arg_0.a.x), vec3<bool>(arg_0.a.x, arg_0.a.x, arg_0.a.x)), !(arg_1.x > arg_1.x))), arg_0.a.x & func_4(arg_0).a.x, !(!any(vec2<bool>(false, true))));
    let var_1 = ~vec2<u32>(u_input.e, firstTrailingBit(4229u));
    let var_2 = func_2(!(!select(var_0.wzw, vec3<bool>(arg_0.a.x, var_0.x, var_0.x), global0[_wgslsmith_index_u32(8969u, 16u)] > global0[_wgslsmith_index_u32(var_1.x, 16u)])));
    global1 = _wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(countOneBits(~(72172u ^ u_input.d.x) & 52144u), 16u)]));
    let var_3 = u_input.b;
    return select(var_2.a, arg_0.a, var_2.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = global0[_wgslsmith_index_u32(u_input.d.x, 16u)];
    var var_0 = !(!select(select(vec2<bool>(true, false), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(false, true)), vec2<bool>(true, true), all(vec4<bool>(true, true, true, true))));
    global0 = array<f32, 16>();
    var_0 = !(!func_5(func_4(func_1(u_input.b, vec4<f32>(global0[_wgslsmith_index_u32(u_input.d.x, 16u)], global0[_wgslsmith_index_u32(7071u, 16u)], global0[_wgslsmith_index_u32(u_input.e, 16u)], -578f), global0[_wgslsmith_index_u32(0u, 16u)], 1i)), min(_wgslsmith_div_vec3_i32(u_input.a, u_input.a), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.c, u_input.c, u_input.a.x), u_input.a))));
    var_0 = !vec2<bool>(any(vec3<bool>(all(vec2<bool>(true, true)), func_4(Struct_1(vec2<bool>(false, var_0.x))).a.x, true)), !(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u, 16u)]) != _wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(u_input.d.x, 16u)], -733f, false))));
    var var_1 = Struct_1(vec2<bool>(true, var_0.x));
    var_0 = var_1.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1000f + global0[_wgslsmith_index_u32(u_input.e, 16u)]))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 16u)])))), u_input.a.x);
}

