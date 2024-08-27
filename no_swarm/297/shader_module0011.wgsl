struct Struct_1 {
    a: bool,
    b: vec3<u32>,
    c: u32,
    d: vec2<f32>,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec2<i32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: bool;

var<private> global2: array<Struct_1, 5> = array<Struct_1, 5>(Struct_1(false, vec3<u32>(4294967295u, 4294967295u, 1u), 4294967295u, vec2<f32>(-745f, -424f), -1241f), Struct_1(false, vec3<u32>(4294967295u, 25319u, 4294967295u), 105558u, vec2<f32>(-2332f, 485f), -425f), Struct_1(false, vec3<u32>(4294967295u, 0u, 19687u), 1u, vec2<f32>(-289f, -730f), 681f), Struct_1(false, vec3<u32>(1u, 42710u, 4294967295u), 29878u, vec2<f32>(-1598f, -591f), 1000f), Struct_1(false, vec3<u32>(0u, 1u, 6569u), 31141u, vec2<f32>(1000f, -1000f), -577f));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> vec3<bool> {
    let var_0 = true;
    global0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(609f + 628f) + 1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1000f))))));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -336f))))) * 1421f);
    var var_1 = vec3<bool>(any(select(vec3<bool>(all(vec3<bool>(var_0, var_0, true)), any(vec4<bool>(var_0, var_0, false, false)), true), vec3<bool>(false, false, all(vec4<bool>(var_0, true, true, var_0))), vec3<bool>(var_0 || var_0, true, true))), var_0, false);
    let var_2 = !var_1.zx;
    return vec3<bool>(var_0, !(all(!vec4<bool>(true, true, var_2.x, var_2.x)) && var_0), all(select(!var_2, vec2<bool>(true, true), vec2<bool>(true, true))));
}

fn func_2(arg_0: Struct_1, arg_1: vec4<bool>) -> i32 {
    global2 = array<Struct_1, 5>();
    var var_0 = arg_1.x;
    var var_1 = select(~arg_0.b.x, firstLeadingBit(_wgslsmith_mult_u32(44508u, arg_0.c)), 34874u <= max(~0u, u_input.d)) ^ _wgslsmith_dot_vec2_u32(~firstLeadingBit(_wgslsmith_mult_vec2_u32(vec2<u32>(arg_0.b.x, 48236u), arg_0.b.yy)), vec2<u32>(~u_input.d & arg_0.b.x, countOneBits(_wgslsmith_mult_u32(arg_0.c, 1u))));
    global2 = array<Struct_1, 5>();
    var var_2 = func_3();
    return -u_input.a;
}

fn func_1(arg_0: vec3<f32>) -> bool {
    global0 = _wgslsmith_div_f32(-1387f, arg_0.x);
    var var_0 = false;
    var var_1 = u_input.a;
    var var_2 = vec3<bool>(true, false, !(!(!any(vec3<bool>(true, false, true)))));
    let var_3 = vec4<i32>(23560i, u_input.e, ~2147483647i, 0i);
    return any(select(select(select(vec3<bool>(var_2.x, true, true), vec3<bool>(true, true, false), var_2.x), !(!vec3<bool>(false, var_2.x, var_2.x)), true), vec3<bool>(!var_2.x, 1i == func_2(global2[_wgslsmith_index_u32(u_input.d, 5u)], vec4<bool>(var_2.x, var_2.x, true, false)), all(select(vec3<bool>(var_2.x, var_2.x, var_2.x), vec3<bool>(true, var_2.x, true), vec3<bool>(false, true, true)))), true));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 5>();
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-559f, -3702f, 1215f, 942f), vec4<f32>(174f, 135f, 724f, 625f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-660f, 344f, 1258f, -843f) + vec4<f32>(-612f, 2511f, -117f, -901f))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-104f, -1057f, -330f, -333f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-892f, -668f, 390f, -961f), vec4<f32>(881f, -1304f, 251f, 791f))))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -797f), _wgslsmith_f_op_f32(1129f - _wgslsmith_f_op_f32(max(970f, -1166f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-511f + -2187f)), 471f)));
    global1 = all(vec3<bool>(func_1(var_0.xww), all(func_3().yz), false));
    let var_1 = func_3().yx;
    global2 = array<Struct_1, 5>();
    let x = u_input.a;
    s_output = StorageBuffer(90641u, u_input.e);
}

