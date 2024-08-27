struct Struct_1 {
    a: bool,
    b: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: f32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(true, true);

var<private> global1: vec4<f32> = vec4<f32>(655f, 698f, 2048f, -1102f);

var<private> global2: array<Struct_1, 17>;

var<private> global3: vec3<f32>;

var<private> global4: array<vec4<f32>, 18> = array<vec4<f32>, 18>(vec4<f32>(-401f, 1605f, 356f, 252f), vec4<f32>(548f, 309f, -958f, -610f), vec4<f32>(303f, 1415f, -318f, 373f), vec4<f32>(1145f, -1000f, -446f, 772f), vec4<f32>(-311f, -197f, -180f, 1000f), vec4<f32>(532f, 245f, -1476f, -1334f), vec4<f32>(326f, -1054f, -716f, -144f), vec4<f32>(-2074f, 231f, 1891f, -1007f), vec4<f32>(699f, -1000f, 416f, 214f), vec4<f32>(-1437f, 1000f, 997f, -1502f), vec4<f32>(-242f, -1170f, 663f, 140f), vec4<f32>(-910f, -1000f, 370f, -725f), vec4<f32>(1000f, 2229f, -965f, -186f), vec4<f32>(-394f, -308f, -923f, 106f), vec4<f32>(311f, -262f, 473f, -1682f), vec4<f32>(-820f, -581f, -1453f, 494f), vec4<f32>(1816f, 264f, 1322f, 115f), vec4<f32>(464f, 2888f, -868f, -1610f));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_1(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1, arg_3: Struct_1) -> f32 {
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(global1.x))));
}

fn func_3() -> vec3<f32> {
    let var_0 = !global0.b == any(vec2<bool>(true, all(select(vec2<bool>(global0.a, global0.a), vec2<bool>(false, global0.b), vec2<bool>(true, true)))));
    global1 = vec4<f32>(513f, _wgslsmith_f_op_f32(-global3.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -519f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1194f - global3.x) + -168f))));
    global0 = global2[_wgslsmith_index_u32(4294967295u, 17u)];
    global2 = array<Struct_1, 17>();
    var var_1 = Struct_1(true, !(abs(u_input.b) > 59168i));
    return _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(select(global1.x, global3.x, any(vec4<bool>(var_0, false, true, false)))), 292f, global1.x)));
}

fn func_2(arg_0: Struct_1) -> vec3<f32> {
    let var_0 = -vec3<i32>(_wgslsmith_div_i32(~u_input.b, reverseBits(max(-2147483647i, u_input.b))), _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, 27781i, u_input.b, 2147483647i), vec4<i32>(u_input.b, u_input.b, u_input.b, -29279i)) ^ -1i, -u_input.b), -2147483647i);
    global0 = Struct_1(arg_0.a, false);
    global2 = array<Struct_1, 17>();
    var var_1 = global2[_wgslsmith_index_u32(_wgslsmith_div_u32(~(u_input.d | _wgslsmith_mod_u32(u_input.e, _wgslsmith_dot_vec3_u32(u_input.a.xxw, vec3<u32>(40720u, 2633u, u_input.a.x)))), ~u_input.e & u_input.c), 17u)];
    global4 = array<vec4<f32>, 18>();
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3()));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global2[_wgslsmith_index_u32(max(firstTrailingBit(select(u_input.c, ~u_input.c, true)), ~_wgslsmith_clamp_u32(1u, 37945u, ~_wgslsmith_dot_vec2_u32(u_input.a.xw, u_input.a.wy))), 17u)];
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global3.x, global3.x, -459f, 1180f))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(global4[_wgslsmith_index_u32(86974u, 18u)])))))) * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.x)), global3.x, _wgslsmith_f_op_f32(-global1.x), global1.x));
    global3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-405f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(global1.x)), _wgslsmith_f_op_f32(-var_1.x))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(-566f))))));
    var var_2 = all(vec4<bool>(all(select(select(vec2<bool>(var_0.b, var_0.a), vec2<bool>(global0.b, false), vec2<bool>(var_0.b, global0.a)), select(vec2<bool>(true, var_0.b), vec2<bool>(false, var_0.b), vec2<bool>(true, true)), !vec2<bool>(var_0.b, true))), true, true, true));
    var var_3 = Struct_1(global0.a, _wgslsmith_f_op_f32(-var_1.x) < _wgslsmith_f_op_f32(step(global1.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_1(global2[_wgslsmith_index_u32(u_input.a.x, 17u)], var_0.b, global2[_wgslsmith_index_u32(u_input.a.x, 17u)], global2[_wgslsmith_index_u32(44203u, 17u)])))))));
    var var_4 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global1.x))), _wgslsmith_f_op_f32(-global1.x), global3.x), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(max(global3.x, var_1.x)), _wgslsmith_f_op_f32(-1700f - 213f), -862f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_2(global2[_wgslsmith_index_u32(u_input.a.x, 17u)]))))), vec3<bool>(true, (u_input.b & u_input.b) > ~0i, var_3.b && false))), var_1.wyz);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_u32(~firstTrailingBit(max(u_input.a, vec4<u32>(8672u, 13926u, 4294967295u, 1682u))), _wgslsmith_add_vec4_u32(~u_input.a, u_input.a) >> (~u_input.a % vec4<u32>(32u))), ~(83775u & (u_input.e >> (~2402u % 32u))), _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.d, 7422u, 54253u) & u_input.a, firstLeadingBit(u_input.a)), _wgslsmith_dot_vec4_u32(abs(u_input.a << (u_input.a % vec4<u32>(32u))), select(vec4<u32>(98015u, u_input.d, u_input.e, u_input.a.x) ^ vec4<u32>(13143u, 16015u, u_input.c, 4294967295u), ~u_input.a, vec4<bool>(var_0.a, global0.b, false, var_3.a)))), _wgslsmith_f_op_f32(-392f * 203f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_4.x, -1000f, var_4.x, global3.x) * vec4<f32>(-755f, -849f, global3.x, global3.x)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(284f, global3.x, 152f, var_4.x) + vec4<f32>(global1.x, -157f, 206f, global3.x))))));
}

