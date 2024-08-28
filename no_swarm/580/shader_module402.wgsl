struct Struct_1 {
    a: f32,
    b: vec3<u32>,
    c: bool,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: Struct_1,
    e: bool,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_2;

var<private> global2: array<Struct_1, 17>;

var<private> global3: f32;

var<private> global4: array<vec4<f32>, 20>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1() -> bool {
    global2 = array<Struct_1, 17>();
    let var_0 = global1.c.b.x;
    return global1.b;
}

fn func_3(arg_0: Struct_2) -> vec3<f32> {
    let var_0 = Struct_3(global1.a);
    global4 = array<vec4<f32>, 20>();
    var var_1 = vec3<i32>(-_wgslsmith_clamp_i32(min(-10895i, -2147483647i), 0i, max(-1i, var_0.a.d)), _wgslsmith_mult_i32(_wgslsmith_mult_i32(4310i, max(1460i, -5466i)), _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, var_0.a.d, 14708i, -10508i), vec4<i32>(u_input.a, -2147483647i, -23034i, arg_0.a.d)) ^ 0i), ~(~var_0.a.d) ^ _wgslsmith_div_i32(-arg_0.a.d, _wgslsmith_clamp_i32(-9153i, 17870i, var_0.a.d))) ^ vec3<i32>(1i, var_0.a.d, _wgslsmith_clamp_i32(2147483647i, abs(arg_0.c.d), -5465i));
    var var_2 = abs(_wgslsmith_add_vec3_u32(max(global1.c.b, min(arg_0.c.b, global0.b)), global1.a.b));
    var var_3 = global1.a;
    return _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(ceil(global0.a)), 2343f, 1269f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a, _wgslsmith_f_op_f32(905f - 768f), 338f)));
}

fn func_4(arg_0: vec3<f32>, arg_1: bool, arg_2: Struct_1) -> vec2<f32> {
    var var_0 = 1i;
    var var_1 = 0i;
    let var_2 = _wgslsmith_f_op_f32(-global0.a) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.a) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1333f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a) + 1605f), any(vec4<bool>(global0.c, true, global0.c, arg_2.c)))));
    var_0 = 1i;
    global1 = Struct_2(Struct_1(1092f, vec3<u32>((global1.d.b.x >> (1u % 32u)) | 1u, arg_2.b.x, ~global0.b.x), true, ~global0.d), (countOneBits(4294967295u) << (1u % 32u)) >= _wgslsmith_dot_vec4_u32(vec4<u32>(global1.d.b.x & 1u, firstLeadingBit(19703u), ~global0.b.x, global0.b.x), ~vec4<u32>(global0.b.x, 56486u, arg_2.b.x, 4294967295u)), arg_2, arg_2, arg_2.c);
    return _wgslsmith_f_op_vec2_f32(arg_0.yy - arg_0.xy);
}

fn func_2() -> bool {
    let var_0 = 1i;
    var var_1 = false;
    global3 = _wgslsmith_f_op_f32(f32(-1f) * -717f);
    global4 = array<vec4<f32>, 20>();
    var var_2 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1000f, global0.a))))), _wgslsmith_f_op_vec2_f32(func_4(_wgslsmith_f_op_vec3_f32(func_3(Struct_2(Struct_1(global1.d.a, global1.c.b, true, -41047i), global1.d.c, global2[_wgslsmith_index_u32(21789u, 17u)], global1.a, global0.c))), !global0.c, Struct_1(-216f, vec3<u32>(121062u, global0.b.x, 0u), true, ~(-2147483647i)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1308f, global0.a))))))), vec2<bool>(global1.a.c, false)));
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -38013i;
    global2 = array<Struct_1, 17>();
    let var_1 = any(vec3<bool>(func_1(), func_2() == !global1.b, !any(!vec4<bool>(global1.d.c, global0.c, global0.c, global0.c))));
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(global4[_wgslsmith_index_u32(25354u, 20u)], _wgslsmith_div_vec4_f32(global4[_wgslsmith_index_u32(global0.b.x, 20u)], _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a, 379f, 1000f, 670f))))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-global4[_wgslsmith_index_u32(4294967295u, 20u)]), _wgslsmith_f_op_vec4_f32(global4[_wgslsmith_index_u32(~1u, 20u)] - vec4<f32>(global1.a.a, global1.c.a, -587f, 533f))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global4[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(49714u, u_input.b.x, global1.a.b.x, 20062u), vec4<u32>(global0.b.x, u_input.b.x, 16703u, u_input.b.x)), 20u)]) - _wgslsmith_f_op_vec4_f32(floor(global4[_wgslsmith_index_u32(select(global0.b.x, global0.b.x, false), 20u)])))));
    global4 = array<vec4<f32>, 20>();
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, global1.c.b.x, 1282f);
}

