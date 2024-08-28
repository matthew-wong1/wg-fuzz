struct Struct_1 {
    a: f32,
    b: f32,
    c: vec2<f32>,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec4<u32>,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: bool = false;

var<private> global2: array<u32, 27>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: u32, arg_1: Struct_1) -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -785f);
    global1 = all(!select(vec3<bool>(all(vec3<bool>(true, true, false)), true, false), !select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, false)), true));
    var var_1 = -firstTrailingBit(u_input.b);
    var var_2 = all(vec2<bool>(~u_input.e <= _wgslsmith_sub_i32(firstLeadingBit(43188i), firstLeadingBit(-41615i)), any(vec3<bool>(true, any(vec2<bool>(true, false)), global0.c.x > global0.b))));
    var var_3 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -790f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.c.x - 1425f))), arg_1.c, ~vec4<u32>(60779u, arg_1.d.x, 9612u, u_input.c.x) | ~abs(global0.d));
    return select(select(select(vec3<bool>(all(vec4<bool>(true, true, false, true)), select(true, false, true), false), vec3<bool>(true, true, false), _wgslsmith_f_op_f32(sign(-371f)) == global0.c.x), !vec3<bool>(arg_0 <= 14052u, true, all(vec2<bool>(true, false))), true), vec3<bool>(false, any(select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), true), vec2<bool>(false, true))), true), ~0u >= (u_input.c.x ^ arg_0));
}

fn func_2(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1) -> vec3<bool> {
    return !func_3(~59312u, Struct_1(289f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -662f) + _wgslsmith_f_op_f32(step(1474f, -618f))), _wgslsmith_f_op_vec2_f32(arg_2.c - global0.c), _wgslsmith_mod_vec4_u32(firstTrailingBit(vec4<u32>(u_input.d.x, 25643u, arg_0.d.x, arg_2.d.x)), arg_2.d << (vec4<u32>(4294967295u, 0u, arg_2.d.x, 18817u) % vec4<u32>(32u)))));
}

fn func_1() -> f32 {
    var var_0 = !select(select(!func_2(Struct_1(global0.a, 408f, vec2<f32>(global0.c.x, global0.b), vec4<u32>(u_input.d.x, global0.d.x, u_input.d.x, global0.d.x)), 0i, Struct_1(global0.c.x, global0.b, global0.c, global0.d)), !select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), true), _wgslsmith_f_op_f32(115f + global0.c.x) != _wgslsmith_f_op_f32(624f * 273f)), select(vec3<bool>(any(vec3<bool>(true, false, true)), false, true), func_2(Struct_1(global0.c.x, global0.c.x, global0.c, global0.d), -1i, Struct_1(-470f, global0.b, global0.c, vec4<u32>(global2[_wgslsmith_index_u32(global0.d.x, 27u)], 4294967295u, global2[_wgslsmith_index_u32(1u, 27u)], 1u))), vec3<bool>(-2147483647i < u_input.e, true, false)), func_3(~global0.d.x, Struct_1(347f, global0.a, _wgslsmith_f_op_vec2_f32(ceil(global0.c)), ~global0.d)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a)) * global0.b);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = 1779f == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1()));
    let var_0 = -vec2<i32>(~u_input.e, ~0i);
    let var_1 = Struct_1(_wgslsmith_f_op_f32(1000f - global0.c.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global0.c.x))))), global0.c, vec4<u32>(global2[_wgslsmith_index_u32(max(countOneBits(~global2[_wgslsmith_index_u32(7809u, 27u)]), global0.d.x), 27u)], _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 24189u, global0.d.x) & vec3<u32>(32425u, 5437u, global2[_wgslsmith_index_u32(22227u, 27u)]), vec3<u32>(4294967295u, 45817u, abs(global2[_wgslsmith_index_u32(global0.d.x, 27u)]))), u_input.c.x, 57948u));
    let var_2 = _wgslsmith_f_op_f32(abs(var_1.b));
    global2 = array<u32, 27>();
    let var_3 = vec3<bool>(any(select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false)), select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true)), select(false, true, false)), true && (global0.b <= global0.a))), all(!select(select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, false)), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true))), (firstTrailingBit(0u) | 0u) < 1u);
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_dot_vec4_u32(~var_1.d, reverseBits(var_1.d)) ^ 36806u), global0.d.xzx);
}

