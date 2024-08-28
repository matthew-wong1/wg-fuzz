struct Struct_1 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<f32>,
    c: vec3<i32>,
    d: u32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 24> = array<bool, 24>(true, false, true, false, true, false, true, true, false, true, true, true, false, true, true, false, false, true, false, true, false, true, true, true);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<f32>, arg_1: vec3<u32>, arg_2: u32) -> vec2<f32> {
    var var_0 = any(vec3<bool>(any(!(!vec3<bool>(global0[_wgslsmith_index_u32(arg_1.x, 24u)], true, true))), false, global0[_wgslsmith_index_u32(0u, 24u)]));
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(1000f - -907f))))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a.x - _wgslsmith_f_op_f32(min(-581f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-752f - arg_0.x))))));
    return arg_0;
}

fn func_2(arg_0: bool) -> Struct_1 {
    global0 = array<bool, 24>();
    let var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -755f))))));
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(vec2<f32>(_wgslsmith_f_op_f32(128f - var_0), _wgslsmith_f_op_f32(f32(-1f) * -234f)), select(vec3<u32>(1u, 15213u, u_input.b), vec3<u32>(u_input.a, 35970u, u_input.a), true) & ~vec3<u32>(23180u, 1u, 16802u), u_input.b))));
    let var_2 = Struct_1(var_1.a);
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-399f, _wgslsmith_f_op_f32(step(-1725f, var_0))), _wgslsmith_f_op_f32(ceil(521f)))) - _wgslsmith_f_op_f32(select(var_2.a.x, var_0, global0[_wgslsmith_index_u32(~u_input.c, 24u)]))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(-830f)), _wgslsmith_f_op_f32(floor(-1158f))))));
    return var_1;
}

fn func_1() -> Struct_1 {
    var var_0 = func_2(all(!vec2<bool>(all(vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.b, 24u)], global0[_wgslsmith_index_u32(18925u, 24u)])), true)));
    global0 = array<bool, 24>();
    var var_1 = func_2(any(vec2<bool>(true, true)));
    let var_2 = 11488i;
    var_1 = func_2(_wgslsmith_mult_u32(abs(u_input.a), u_input.b) < abs(countOneBits(1u)));
    return func_2(true);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 24>();
    global0 = array<bool, 24>();
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-2094f, 225f)))));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(select(var_0.a.x, _wgslsmith_f_op_f32(round(-679f)), global0[_wgslsmith_index_u32(firstLeadingBit(~21141u), 24u)])), _wgslsmith_f_op_f32(floor(var_0.a.x)), _wgslsmith_f_op_f32(trunc(var_0.a.x)));
    var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(213f - var_1.x), _wgslsmith_f_op_f32(-var_0.a.x), 770f) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-978f, var_1.x, var_1.x) * vec3<f32>(1393f, var_0.a.x, var_0.a.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1426f, var_1.x, var_0.a.x) - vec3<f32>(var_1.x, var_1.x, 402f))))));
    global0 = array<bool, 24>();
    let var_2 = func_1();
    var var_3 = ~firstTrailingBit(_wgslsmith_clamp_vec3_u32(vec3<u32>(54728u, u_input.a, u_input.a), vec3<u32>(1u, 1u, 26674u), vec3<u32>(u_input.c, u_input.c, u_input.b)) & ~vec3<u32>(u_input.a, u_input.a, 0u)) ^ vec3<u32>(4294967295u, 4294967295u, u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(39109u, 6558u, max(~_wgslsmith_add_u32(var_3.x, 23071u), u_input.b), ~4294967295u), var_1.zx, ~(-vec3<i32>(-6892i, 12417i, 14167i) & select(vec3<i32>(-2147483647i, -2147483647i, -1335i), abs(vec3<i32>(1i, 2147483647i, 4679i)), var_0.a.x < var_0.a.x)), countOneBits(var_3.x), min(select(var_3.yz, vec2<u32>(44647u, 1751u), global0[_wgslsmith_index_u32(u_input.b, 24u)]), vec2<u32>(_wgslsmith_sub_u32(select(0u, 4294967295u, false), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.c, var_3.x, var_3.x), vec4<u32>(var_3.x, var_3.x, var_3.x, u_input.b))), _wgslsmith_dot_vec4_u32(vec4<u32>(var_3.x, 34700u, u_input.a, var_3.x), ~vec4<u32>(var_3.x, 1u, 49921u, 3508u)))));
}

