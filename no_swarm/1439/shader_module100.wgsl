struct Struct_1 {
    a: f32,
    b: f32,
    c: vec2<f32>,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
}

struct Struct_3 {
    a: f32,
    b: vec4<u32>,
    c: u32,
    d: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 12>;

var<private> global1: array<Struct_3, 16>;

var<private> global2: array<f32, 27> = array<f32, 27>(-247f, -612f, -171f, 970f, -131f, 1189f, 1419f, 708f, -1312f, 1233f, 1139f, -1000f, 110f, 270f, -1000f, -498f, 1586f, -1000f, -887f, -1000f, 503f, 1164f, 958f, 966f, 442f, -660f, -376f);

var<private> global3: u32;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2() -> Struct_1 {
    return Struct_1(global2[_wgslsmith_index_u32(9297u, 27u)], -696f, _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-830f, global2[_wgslsmith_index_u32(28981u, 27u)]), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(global2[_wgslsmith_index_u32(1u, 27u)], global2[_wgslsmith_index_u32(u_input.b.x, 27u)]), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(0u, 27u)])) - _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global2[_wgslsmith_index_u32(u_input.b.x, 27u)], global2[_wgslsmith_index_u32(u_input.b.x, 27u)]), vec2<f32>(global2[_wgslsmith_index_u32(u_input.b.x, 27u)], -990f), global0[_wgslsmith_index_u32(1u, 12u)]))))))), u_input.a);
}

fn func_1(arg_0: f32, arg_1: vec3<i32>, arg_2: bool) -> Struct_2 {
    return Struct_2(func_2(), vec4<bool>((max(30147u, u_input.b.x) > ~43128u) && all(select(vec3<bool>(arg_2, arg_2, arg_2), vec3<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 12u)], false, arg_2), true)), 6558i >= abs(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, arg_1.x), vec2<i32>(arg_1.x, u_input.a))), true, -651f == _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(0u, 27u)])));
}

fn func_3(arg_0: bool) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1000f))));
    let var_1 = 61581i;
    global0 = array<bool, 12>();
    var var_2 = ~_wgslsmith_add_u32(~24773u, ~u_input.b.x);
    let var_3 = 1000f;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1183f - _wgslsmith_f_op_f32(floor(var_3))))), 394f)));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = 31780u;
    var var_0 = func_1(-2104f, vec3<i32>(reverseBits(_wgslsmith_dot_vec3_i32(~vec3<i32>(-31850i, u_input.a, u_input.a), ~vec3<i32>(u_input.a, 18688i, u_input.a))), 21863i, _wgslsmith_clamp_i32(-1i, u_input.a, ~(~u_input.a))), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.b.x, 27u)] + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(4294967295u, 27u)] - 294f))) == global2[_wgslsmith_index_u32(u_input.b.x, 27u)]);
    global1 = array<Struct_3, 16>();
    let var_1 = u_input.b;
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(false)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(153f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(func_2().c.x)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(4294967295u, 27u)] * var_0.a.a)) + var_0.a.a)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(2347f, var_0.a.b)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.c.x))));
    let var_3 = Struct_4(~func_1(var_0.a.a, select(vec3<i32>(0i, var_0.a.d, 0i), vec3<i32>(var_0.a.d, var_0.a.d, 53562i) | vec3<i32>(-4643i, u_input.a, -27024i), any(vec3<bool>(global0[_wgslsmith_index_u32(var_1.x, 12u)], var_0.b.x, global0[_wgslsmith_index_u32(30622u, 12u)]))), _wgslsmith_f_op_f32(1000f + global2[_wgslsmith_index_u32(62965u, 27u)]) == -2467f).a.d, var_0.b.zy);
    var var_4 = vec2<i32>(u_input.a & abs(1i), 0i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_i32(select(vec4<i32>(-39733i, var_3.a, var_4.x, firstTrailingBit(var_4.x)), ~(vec4<i32>(var_0.a.d, var_4.x, 23452i, var_0.a.d) ^ vec4<i32>(-18388i, var_3.a, 23307i, var_0.a.d)), true), -_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, var_0.a.d, -12536i, -28383i), ~vec4<i32>(var_4.x, var_0.a.d, var_4.x, -20303i))), vec3<i32>(i32(-1i) * -1701i, min(_wgslsmith_sub_i32(var_4.x, -32325i), var_3.a) >> (~12938u % 32u), 0i));
}

