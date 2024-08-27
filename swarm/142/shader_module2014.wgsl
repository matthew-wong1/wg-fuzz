struct Struct_1 {
    a: u32,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec3<u32>,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 24>;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_1) -> vec3<bool> {
    var var_0 = reverseBits(u_input.b.x);
    var_0 = u_input.b.x;
    let var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(1105f, _wgslsmith_f_op_f32(-arg_0.x)))));
    let var_2 = select(all(arg_1.b), true, arg_1.b.x);
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(f32(-1f) * -1218f), false | arg_1.b.x)))) + var_1), var_1, _wgslsmith_div_f32(_wgslsmith_div_f32(-496f, _wgslsmith_f_op_f32(var_1 * _wgslsmith_f_op_f32(round(var_1)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.x, arg_0.x) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -172f) * var_1))), _wgslsmith_f_op_f32(f32(-1f) * -2309f));
    return vec3<bool>(true, var_2 || true, var_2);
}

fn func_2() -> vec3<u32> {
    global0 = array<u32, 24>();
    let var_0 = _wgslsmith_add_vec4_u32(~(~(vec4<u32>(global0[_wgslsmith_index_u32(1u, 24u)], 48261u, u_input.c.x, global0[_wgslsmith_index_u32(25060u, 24u)]) | vec4<u32>(u_input.e, global0[_wgslsmith_index_u32(u_input.c.x, 24u)], 59136u, global0[_wgslsmith_index_u32(u_input.e, 24u)]))), vec4<u32>(_wgslsmith_clamp_u32(~22279u, 0u, firstTrailingBit(u_input.e)), (u_input.e | 40433u) & 9188u, u_input.e, 30090u)) | ~abs(vec4<u32>(global0[_wgslsmith_index_u32(u_input.e, 24u)] | global0[_wgslsmith_index_u32(20648u, 24u)], 1u, u_input.e, ~36259u));
    let var_1 = Struct_1(var_0.x, !(!vec4<bool>(false, any(vec3<bool>(true, false, true)), true, all(vec3<bool>(true, false, false)))));
    let var_2 = Struct_1(var_0.x ^ 4294967295u, vec4<bool>(any(select(var_1.b.wzy, func_3(vec2<f32>(-106f, -717f), Struct_1(0u, var_1.b)), var_1.b.x)), false || var_1.b.x, true, true));
    global0 = array<u32, 24>();
    return vec3<u32>(~var_2.a, ~(25021u << (reverseBits(global0[_wgslsmith_index_u32(var_2.a, 24u)]) % 32u)), firstLeadingBit(var_1.a));
}

fn func_1(arg_0: Struct_1) -> f32 {
    var var_0 = arg_0;
    let var_1 = max(~_wgslsmith_div_vec3_u32(_wgslsmith_sub_vec3_u32(u_input.c, _wgslsmith_mult_vec3_u32(vec3<u32>(64653u, u_input.e, var_0.a), u_input.c)), _wgslsmith_add_vec3_u32(u_input.c >> (vec3<u32>(0u, arg_0.a, u_input.e) % vec3<u32>(32u)), func_2())), ~vec3<u32>(4294967295u, u_input.e, 1u));
    var_0 = arg_0;
    var var_2 = vec4<i32>(-_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d.x << (19964u % 32u), select(0i, -10113i, true)), vec2<i32>(~u_input.d.x, -2147483647i)), u_input.a, -1i, u_input.a);
    var_0 = Struct_1(arg_0.a, select(select(select(arg_0.b, arg_0.b, vec4<bool>(arg_0.b.x, false, var_0.b.x, false)), vec4<bool>(false, arg_0.b.x, arg_0.b.x, any(vec4<bool>(arg_0.b.x, false, true, true))), arg_0.b), vec4<bool>(var_0.b.x, all(select(vec4<bool>(arg_0.b.x, true, var_0.b.x, false), arg_0.b, false)), false, true), true));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(-402f))))) - -1115f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1347f * -1000f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-1118f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(300f - -1247f) + _wgslsmith_f_op_f32(select(923f, 533f, true))))), _wgslsmith_f_op_f32(round(-572f))));
    global0 = array<u32, 24>();
    global0 = array<u32, 24>();
    global0 = array<u32, 24>();
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-763f))) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(Struct_1(u_input.c.x, vec4<bool>(true, false, true, true)))) - _wgslsmith_f_op_f32(1204f - var_0)))))));
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0, -677f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0, -262f)) - _wgslsmith_f_op_f32(step(var_0, -1458f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(901f, var_0)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-398f, var_0))))) + _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-380f, -754f), vec2<f32>(-168f, var_0), vec2<bool>(true, true))), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, var_0) * vec2<f32>(var_0, var_0)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1647f, -1795f)))))), vec2<f32>(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(-var_0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) * 1481f)))));
    var var_3 = Struct_1(4294967295u, !(!vec4<bool>(false, true, all(vec3<bool>(true, false, false)), false)));
    let x = u_input.a;
    s_output = StorageBuffer(43731i);
}

