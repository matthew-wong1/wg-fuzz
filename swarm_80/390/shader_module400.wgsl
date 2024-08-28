struct Struct_1 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec3<u32>,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 32> = array<Struct_1, 32>(Struct_1(vec4<bool>(false, true, false, false)), Struct_1(vec4<bool>(false, true, true, true)), Struct_1(vec4<bool>(false, true, true, true)), Struct_1(vec4<bool>(true, false, false, true)), Struct_1(vec4<bool>(true, true, true, false)), Struct_1(vec4<bool>(true, true, true, false)), Struct_1(vec4<bool>(true, false, true, true)), Struct_1(vec4<bool>(true, false, true, true)), Struct_1(vec4<bool>(false, true, true, false)), Struct_1(vec4<bool>(true, false, false, false)), Struct_1(vec4<bool>(false, false, false, false)), Struct_1(vec4<bool>(true, true, false, false)), Struct_1(vec4<bool>(true, false, false, false)), Struct_1(vec4<bool>(true, true, true, true)), Struct_1(vec4<bool>(false, true, false, true)), Struct_1(vec4<bool>(false, true, true, true)), Struct_1(vec4<bool>(false, true, true, false)), Struct_1(vec4<bool>(true, false, false, true)), Struct_1(vec4<bool>(true, true, true, true)), Struct_1(vec4<bool>(false, true, true, true)), Struct_1(vec4<bool>(false, true, false, false)), Struct_1(vec4<bool>(true, true, true, true)), Struct_1(vec4<bool>(true, true, true, true)), Struct_1(vec4<bool>(false, true, true, true)), Struct_1(vec4<bool>(false, false, false, true)), Struct_1(vec4<bool>(false, false, true, true)), Struct_1(vec4<bool>(true, false, true, true)), Struct_1(vec4<bool>(true, false, false, false)), Struct_1(vec4<bool>(true, true, true, false)), Struct_1(vec4<bool>(false, false, false, true)), Struct_1(vec4<bool>(false, false, false, false)), Struct_1(vec4<bool>(false, false, true, false)));

var<private> global1: array<f32, 4> = array<f32, 4>(-497f, 247f, -243f, -1818f);

var<private> global2: vec4<bool>;

var<private> global3: vec3<u32> = vec3<u32>(4294967295u, 0u, 4294967295u);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: u32) -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32((abs(u_input.c.x) >> (abs(u_input.c.x) % 32u)) | 34683u, 4u)], 993f));
    var var_1 = vec2<bool>(global2.x, all(select(select(!vec4<bool>(false, false, arg_0.a.x, arg_0.a.x), select(vec4<bool>(global2.x, arg_0.a.x, false, false), arg_0.a, arg_0.a), all(vec3<bool>(false, false, global2.x))), arg_0.a, arg_0.a)));
    var var_2 = 1666f;
    global2 = !vec4<bool>(global2.x, all(!vec2<bool>(var_1.x, var_1.x)), arg_0.a.x, ~u_input.b.x > reverseBits(min(-2147483647i, u_input.e)));
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(231f, 905f, var_0.x)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(362f + -1511f), _wgslsmith_f_op_f32(step(var_0.x, global1[_wgslsmith_index_u32(352u, 4u)])), var_0.x)), false)));
    return !(!select(!arg_0.a, vec4<bool>(var_1.x, false, all(vec2<bool>(global2.x, false)), any(arg_0.a.yxz)), false));
}

fn func_2() -> Struct_1 {
    let var_0 = _wgslsmith_sub_u32(_wgslsmith_mult_u32(14515u, ~u_input.a.x), 0u);
    global1 = array<f32, 4>();
    var var_1 = !(!select(!global2.zxy, vec3<bool>(global2.x, !global2.x, global2.x && false), vec3<bool>(global2.x || global2.x, any(global2.xxx), any(global2.wz))));
    var var_2 = 1u;
    var var_3 = u_input.d.x;
    return Struct_1(!select(!vec4<bool>(global2.x, global2.x, false, false), select(func_3(Struct_1(vec4<bool>(global2.x, global2.x, var_1.x, false)), global3.x), !vec4<bool>(false, false, global2.x, var_1.x), select(vec4<bool>(var_1.x, global2.x, false, false), vec4<bool>(var_1.x, true, var_1.x, false), vec4<bool>(var_1.x, true, true, var_1.x))), vec4<bool>(var_1.x | var_1.x, true, u_input.c.x < u_input.a.x, var_1.x)));
}

fn func_1(arg_0: Struct_1, arg_1: vec2<u32>) -> i32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global1[_wgslsmith_index_u32(arg_1.x, 4u)], 359f))) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-704f, global1[_wgslsmith_index_u32(54103u, 4u)]), vec2<f32>(global1[_wgslsmith_index_u32(u_input.c.x, 4u)], -1865f), true)))))));
    let var_1 = func_2();
    global2 = var_1.a;
    let var_2 = reverseBits(vec3<u32>(max(min(43614u, firstLeadingBit(arg_1.x)), reverseBits(global3.x)), 1u, 16029u));
    global0 = array<Struct_1, 32>();
    return firstLeadingBit(49652i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.a.x, 1u), 4u)] - 1373f))))));
    var var_1 = abs(_wgslsmith_mod_vec4_i32(min(u_input.d, vec4<i32>(reverseBits(u_input.e), u_input.d.x, -36263i, u_input.d.x)), vec4<i32>(u_input.b.x, firstLeadingBit(u_input.d.x) ^ u_input.b.x, func_1(Struct_1(vec4<bool>(global2.x, false, global2.x, global2.x)), firstLeadingBit(u_input.c.xz)), _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, u_input.b.x, 1200i, -32211i), u_input.d))));
    var var_2 = func_3(global0[_wgslsmith_index_u32(global3.x, 32u)], global3.x).x & (global2.x & (_wgslsmith_f_op_f32(-1176f - _wgslsmith_f_op_f32(trunc(266f))) <= _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(-544f))))));
    global3 = _wgslsmith_mult_vec3_u32(~(~vec3<u32>(1u, global3.x, global3.x)) ^ countOneBits(vec3<u32>(33613u, global3.x, _wgslsmith_mult_u32(0u, u_input.c.x))), ~min(select(vec3<u32>(1u, 1u, u_input.c.x), u_input.c, vec3<bool>(global2.x, false, true)), vec3<u32>(73730u, 4294967295u, u_input.c.x)) | ~(~u_input.c));
    global1 = array<f32, 4>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_u32(~(~firstTrailingBit(global3.x)), ~min(~1u, firstLeadingBit(338u))));
}

