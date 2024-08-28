struct Struct_1 {
    a: i32,
    b: vec2<bool>,
}

struct Struct_2 {
    a: f32,
    b: vec4<i32>,
    c: i32,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct Struct_4 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<vec2<bool>, 11>;

var<private> global2: array<Struct_1, 3> = array<Struct_1, 3>(Struct_1(-46167i, vec2<bool>(false, false)), Struct_1(15473i, vec2<bool>(true, true)), Struct_1(1i, vec2<bool>(false, true)));

var<private> global3: array<vec2<bool>, 31>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: bool, arg_1: vec3<bool>, arg_2: f32) -> bool {
    return arg_1.x;
}

fn func_3(arg_0: u32, arg_1: u32) -> u32 {
    var var_0 = vec4<bool>(true, func_2(false, !(!select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), false)), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1282f), -1350f), _wgslsmith_f_op_f32(f32(-1f) * -1072f)))), true & !(!all(vec4<bool>(true, true, true, false))), all(vec3<bool>(true, _wgslsmith_f_op_f32(min(-2087f, 768f)) < _wgslsmith_f_op_f32(ceil(1244f)), _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, u_input.a, u_input.b.x), vec3<i32>(19783i, u_input.b.x, u_input.b.x)) >= 1i)));
    var_0 = select(!select(!vec4<bool>(true, false, true, var_0.x), select(vec4<bool>(false, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, false, true), true), var_0.x), select(select(!(!vec4<bool>(true, false, var_0.x, var_0.x)), !select(vec4<bool>(false, var_0.x, false, var_0.x), vec4<bool>(var_0.x, false, false, var_0.x), var_0.x), select(select(vec4<bool>(false, false, var_0.x, var_0.x), vec4<bool>(var_0.x, false, var_0.x, var_0.x), vec4<bool>(var_0.x, false, var_0.x, var_0.x)), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), all(vec4<bool>(false, true, true, var_0.x)))), vec4<bool>(any(var_0.wwz), all(select(vec4<bool>(true, false, false, false), vec4<bool>(var_0.x, var_0.x, var_0.x, false), vec4<bool>(var_0.x, true, false, true))), true || var_0.x, false), select(!(!vec4<bool>(true, var_0.x, true, false)), !(!vec4<bool>(var_0.x, var_0.x, true, true)), vec4<bool>(var_0.x, false, false != var_0.x, all(global1[_wgslsmith_index_u32(arg_1, 11u)])))), all(vec2<bool>(true, any(vec4<bool>(true, true, true, true)))));
    var var_1 = ~arg_1;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-2071f))));
    var_1 = 1u;
    return 32979u;
}

fn func_1(arg_0: bool, arg_1: vec3<f32>, arg_2: vec3<bool>, arg_3: f32) -> vec3<u32> {
    global0 = func_2(true, select(vec3<bool>(!(u_input.c == u_input.d), !(-26749i <= u_input.b.x), arg_0 && arg_0), arg_2, !arg_2), -2121f);
    global0 = select(41748i < _wgslsmith_clamp_i32(17470i, abs(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 0i, u_input.a), vec3<i32>(-17186i, u_input.a, u_input.b.x))), 16889i & _wgslsmith_clamp_i32(u_input.e, -2147483647i, u_input.a)), !(!(!arg_0)), all(vec2<bool>(true, arg_2.x)));
    var var_0 = 0i;
    global2 = array<Struct_1, 3>();
    var_0 = u_input.b.x;
    return vec3<u32>(u_input.c, func_3(u_input.c, u_input.d), 38748u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var var_1 = ~func_1(false, vec3<f32>(300f, _wgslsmith_f_op_f32(select(996f, 371f, false)), -889f), vec3<bool>(true, true, true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(325f, -2236f)) * -750f)) << (vec3<u32>(2693u >> (firstLeadingBit(firstLeadingBit(u_input.c)) % 32u), ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, 0u, 4294967295u, 61703u), vec4<u32>(u_input.c, 0u, u_input.d, 4294967295u)) >> (75232u % 32u), _wgslsmith_add_u32(u_input.d, 25392u)) % vec3<u32>(32u));
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(305f * _wgslsmith_f_op_f32(abs(343f)))), _wgslsmith_f_op_f32(-1731f - -474f));
    let var_3 = ~(_wgslsmith_sub_vec3_u32(~vec3<u32>(u_input.c, 6882u, 1u), vec3<u32>(2348u, 0u, 4294967295u)) >> ((reverseBits(vec3<u32>(1u, var_1.x, 47000u)) << (~vec3<u32>(4294967295u, var_1.x, 94584u) % vec3<u32>(32u))) % vec3<u32>(32u))) ^ ~abs(select(_wgslsmith_sub_vec3_u32(vec3<u32>(38938u, var_1.x, 1u), vec3<u32>(93333u, 75314u, 14382u)), vec3<u32>(20489u, 91619u, 1u), true));
    var var_4 = Struct_3(vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_2.x))))), _wgslsmith_f_op_f32(f32(-1f) * -183f), var_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(496f * 1682f))));
    var_2 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(var_4.a.zx, _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_4.a.x, -452f))), vec2<bool>(true, true))) - vec2<f32>(var_4.a.x, _wgslsmith_div_f32(549f, var_2.x)))))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b);
}

