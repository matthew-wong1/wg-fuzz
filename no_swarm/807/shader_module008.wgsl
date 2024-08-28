struct Struct_1 {
    a: u32,
    b: vec2<bool>,
    c: vec3<u32>,
    d: f32,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 10> = array<Struct_1, 10>(Struct_1(0u, vec2<bool>(false, true), vec3<u32>(37613u, 0u, 14058u), -198f, vec4<f32>(-1363f, -1267f, 161f, 774f)), Struct_1(0u, vec2<bool>(true, false), vec3<u32>(45832u, 4294967295u, 27979u), 2654f, vec4<f32>(1309f, 556f, 171f, 974f)), Struct_1(27815u, vec2<bool>(true, true), vec3<u32>(66814u, 27171u, 26077u), -634f, vec4<f32>(-254f, 222f, -400f, 1702f)), Struct_1(9030u, vec2<bool>(false, false), vec3<u32>(22267u, 7448u, 65051u), 844f, vec4<f32>(565f, -589f, 209f, 861f)), Struct_1(33335u, vec2<bool>(true, true), vec3<u32>(1u, 1093u, 4294967295u), 753f, vec4<f32>(-1302f, 1081f, 1960f, -2008f)), Struct_1(4294967295u, vec2<bool>(false, true), vec3<u32>(0u, 36051u, 23907u), -427f, vec4<f32>(-555f, 797f, -1777f, 1000f)), Struct_1(0u, vec2<bool>(false, true), vec3<u32>(0u, 22535u, 26917u), -1547f, vec4<f32>(678f, -1367f, -654f, 1775f)), Struct_1(0u, vec2<bool>(false, false), vec3<u32>(4294967295u, 1869u, 1205u), -718f, vec4<f32>(-2827f, -2436f, -173f, 313f)), Struct_1(4151u, vec2<bool>(false, false), vec3<u32>(19748u, 1330u, 40270u), 191f, vec4<f32>(-598f, 1587f, 290f, 1335f)), Struct_1(34388u, vec2<bool>(true, true), vec3<u32>(19108u, 9868u, 4294967295u), -109f, vec4<f32>(-1473f, -288f, -1301f, 507f)));

var<private> global1: Struct_1 = Struct_1(1u, vec2<bool>(false, false), vec3<u32>(1u, 0u, 0u), 735f, vec4<f32>(332f, -2015f, 533f, 345f));

var<private> global2: bool = true;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_2(arg_0: vec3<f32>, arg_1: vec4<f32>) -> u32 {
    var var_0 = global0[_wgslsmith_index_u32(u_input.b.x, 10u)];
    let var_1 = -1259f;
    global0 = array<Struct_1, 10>();
    var var_2 = global0[_wgslsmith_index_u32(max(global1.a, 0u), 10u)];
    global0 = array<Struct_1, 10>();
    return _wgslsmith_dot_vec3_u32(select(var_0.c, global1.c, true), _wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(global1.c.x, var_2.c.x, 0u) | firstTrailingBit(var_0.c), var_0.c), _wgslsmith_mult_vec3_u32(~(var_0.c | global1.c), global1.c >> (vec3<u32>(4294967295u, global1.a, global1.a) % vec3<u32>(32u)))));
}

fn func_3() -> vec3<bool> {
    global2 = false;
    return select(select(select(!select(vec3<bool>(global1.b.x, false, global1.b.x), vec3<bool>(global1.b.x, false, global1.b.x), true), select(!vec3<bool>(false, false, global1.b.x), !vec3<bool>(global1.b.x, global1.b.x, global1.b.x), global1.b.x), !select(vec3<bool>(global1.b.x, false, global1.b.x), vec3<bool>(global1.b.x, true, global1.b.x), global1.b.x)), select(select(select(vec3<bool>(false, global1.b.x, global1.b.x), vec3<bool>(false, global1.b.x, false), vec3<bool>(false, global1.b.x, false)), vec3<bool>(true, false, global1.b.x), !vec3<bool>(global1.b.x, global1.b.x, true)), select(vec3<bool>(global1.b.x, true, false), vec3<bool>(global1.b.x, global1.b.x, true), !vec3<bool>(global1.b.x, false, true)), global1.b.x), vec3<bool>(true, true, global1.b.x)), select(vec3<bool>(true, !(true || global1.b.x), true), !(!(!vec3<bool>(global1.b.x, global1.b.x, global1.b.x))), global1.b.x), vec3<bool>(!(_wgslsmith_mult_i32(u_input.c, -2147483647i) <= firstTrailingBit(u_input.d)), global1.b.x, !(!global1.b.x)));
}

fn func_1() -> vec3<bool> {
    global0 = array<Struct_1, 10>();
    var var_0 = global0[_wgslsmith_index_u32(~0u, 10u)];
    var_0 = global0[_wgslsmith_index_u32(func_2(global1.e.yzw, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -953f, -1000f, var_0.d) - var_0.e))), var_0.e)))), 10u)];
    var_0 = global0[_wgslsmith_index_u32(20870u, 10u)];
    var_0 = global0[_wgslsmith_index_u32(~max(max(~global1.a, ~u_input.a), global1.a ^ 0u) >> (54669u % 32u), 10u)];
    return select(func_3(), func_3(), true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 4294967295u;
    let var_1 = vec4<bool>(true, !any(func_1()), u_input.d < (u_input.d | -_wgslsmith_dot_vec4_i32(vec4<i32>(23971i, u_input.d, 31105i, u_input.d), vec4<i32>(5255i, u_input.c, u_input.c, u_input.c))), false);
    global2 = var_1.x;
    var var_2 = _wgslsmith_f_op_f32(global1.d * _wgslsmith_f_op_f32(global1.d - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2119f) + -643f)));
    global2 = var_1.x;
    var var_3 = 41317u;
    var var_4 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(global1.d))))), -244f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global1.e.x), global1.d, false))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(-1245f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global1.d)))))) * vec4<f32>(766f, -124f, global1.e.x, _wgslsmith_f_op_f32(abs(global1.d))));
    var_2 = var_4.x;
    let var_5 = abs(u_input.d) | reverseBits(u_input.d);
    let x = u_input.a;
    s_output = StorageBuffer(var_0, abs(abs(-vec2<i32>(var_5, var_5))));
}

