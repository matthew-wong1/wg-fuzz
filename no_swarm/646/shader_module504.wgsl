struct Struct_1 {
    a: i32,
    b: vec4<bool>,
    c: bool,
    d: vec2<bool>,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 16>;

var<private> global1: u32 = 995u;

var<private> global2: array<Struct_1, 22> = array<Struct_1, 22>(Struct_1(50483i, vec4<bool>(false, true, false, false), true, vec2<bool>(true, true)), Struct_1(1i, vec4<bool>(false, false, false, true), false, vec2<bool>(true, true)), Struct_1(12315i, vec4<bool>(false, false, false, true), true, vec2<bool>(false, false)), Struct_1(21639i, vec4<bool>(false, true, false, true), false, vec2<bool>(true, false)), Struct_1(-58960i, vec4<bool>(true, true, true, false), true, vec2<bool>(true, false)), Struct_1(-26650i, vec4<bool>(true, true, false, true), false, vec2<bool>(false, false)), Struct_1(1i, vec4<bool>(false, false, false, true), true, vec2<bool>(true, false)), Struct_1(0i, vec4<bool>(true, false, true, true), true, vec2<bool>(false, true)), Struct_1(23475i, vec4<bool>(false, true, true, false), true, vec2<bool>(false, true)), Struct_1(-26761i, vec4<bool>(false, false, false, true), false, vec2<bool>(false, true)), Struct_1(-32930i, vec4<bool>(true, false, false, false), false, vec2<bool>(true, false)), Struct_1(i32(-2147483648), vec4<bool>(true, true, false, true), false, vec2<bool>(true, false)), Struct_1(-30906i, vec4<bool>(false, false, true, false), false, vec2<bool>(true, false)), Struct_1(33839i, vec4<bool>(true, true, false, false), false, vec2<bool>(true, false)), Struct_1(1i, vec4<bool>(true, false, false, false), false, vec2<bool>(true, false)), Struct_1(0i, vec4<bool>(false, false, true, false), true, vec2<bool>(false, true)), Struct_1(47984i, vec4<bool>(false, true, true, true), false, vec2<bool>(false, true)), Struct_1(-10140i, vec4<bool>(true, false, true, false), true, vec2<bool>(true, true)), Struct_1(0i, vec4<bool>(true, true, true, false), false, vec2<bool>(false, true)), Struct_1(i32(-2147483648), vec4<bool>(false, true, false, true), true, vec2<bool>(false, true)), Struct_1(2147483647i, vec4<bool>(false, true, false, true), false, vec2<bool>(true, true)), Struct_1(-9395i, vec4<bool>(false, true, true, false), false, vec2<bool>(false, true)));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1) -> vec4<bool> {
    let var_0 = arg_0.b.yxy;
    let var_1 = countOneBits(vec2<i32>(arg_0.a, -36141i));
    let var_2 = Struct_2(select(arg_0.b, select(select(arg_0.b, select(vec4<bool>(var_0.x, arg_0.c, arg_0.d.x, var_0.x), arg_0.b, arg_0.b), select(vec4<bool>(false, var_0.x, true, var_0.x), vec4<bool>(var_0.x, arg_0.b.x, false, false), arg_0.b)), select(arg_0.b, select(arg_0.b, arg_0.b, true), arg_0.b), arg_0.b.x), !vec4<bool>(any(arg_0.d), all(vec3<bool>(arg_0.d.x, false, var_0.x)), true, var_0.x)));
    let var_3 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(368f, 200f, false)), -389f)) + _wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
    let var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(-1000f)), var_3, _wgslsmith_f_op_f32(min(698f, _wgslsmith_f_op_f32(min(var_3, -1291f)))), 868f)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-899f, -974f, var_3, _wgslsmith_f_op_f32(-652f - var_3))))));
    return vec4<bool>(!(!(_wgslsmith_f_op_f32(min(var_3, var_3)) <= _wgslsmith_f_op_f32(f32(-1f) * -914f))), true & select(!select(false, false, true), var_0.x, true), all(vec3<bool>(arg_0.d.x, all(vec3<bool>(true, false, true)), false)), true);
}

fn func_2(arg_0: f32, arg_1: i32, arg_2: bool) -> vec4<f32> {
    var var_0 = Struct_2(!func_3(global2[_wgslsmith_index_u32(u_input.d, 22u)]));
    var_0 = Struct_2(!select(var_0.a, !var_0.a, vec4<bool>(var_0.a.x, true, true, all(vec3<bool>(var_0.a.x, true, var_0.a.x)))));
    var var_1 = 106601u;
    global0 = array<Struct_1, 16>();
    var var_2 = ~vec2<u32>(~_wgslsmith_mod_u32(u_input.a.x ^ u_input.a.x, _wgslsmith_sub_u32(u_input.a.x, u_input.d)), 1u);
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-850f, arg_0, -703f, arg_0)) - vec4<f32>(arg_0, 2114f, -370f, 837f)), vec4<f32>(_wgslsmith_f_op_f32(arg_0 * 230f), _wgslsmith_f_op_f32(round(2561f)), _wgslsmith_f_op_f32(arg_0 + -377f), _wgslsmith_f_op_f32(max(arg_0, 975f))))))));
}

fn func_1(arg_0: Struct_2, arg_1: vec3<u32>) -> vec4<f32> {
    return _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_2(_wgslsmith_f_op_f32(trunc(768f)), 2147483647i, false)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1931f, -602f, 182f, 149f))))) + vec4<f32>(_wgslsmith_f_op_f32(-1f), -106f, _wgslsmith_f_op_f32(-1311f * -1279f), _wgslsmith_f_op_f32(floor(911f))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1f, 1f, 1f, 1f))), _wgslsmith_f_op_vec4_f32(func_1(Struct_2(vec4<bool>(true, true, true, true)), ~u_input.a | vec3<u32>(u_input.a.x, 1072u, 36235u))), true)));
    global2 = array<Struct_1, 22>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.xy, _wgslsmith_sub_u32(u_input.d, ~0u));
}

