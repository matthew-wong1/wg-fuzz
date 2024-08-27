struct Struct_1 {
    a: vec4<i32>,
    b: vec3<f32>,
}

struct Struct_2 {
    a: u32,
    b: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec2<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 31>;

var<private> global1: f32 = -718f;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3() -> f32 {
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(558f * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -820f)))))));
}

fn func_2(arg_0: i32, arg_1: Struct_3) -> Struct_3 {
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3()));
    let var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(288f, arg_1.b.b.x))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(vec2<f32>(845f, -1393f), arg_1.b.b.yx))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.b.b.x, arg_1.b.b.x)), vec2<bool>(any(vec4<bool>(true, true, true, false)), arg_1.a.a == arg_1.a.a))))));
    global1 = _wgslsmith_f_op_f32(func_3());
    global1 = var_0.x;
    global0 = array<Struct_1, 31>();
    return arg_1;
}

fn func_4(arg_0: Struct_3, arg_1: vec3<i32>, arg_2: f32) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2 - _wgslsmith_f_op_f32(-808f - -1685f))))), arg_2));
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1575f)));
    var var_1 = Struct_1(firstTrailingBit(vec4<i32>(arg_1.x, -63860i, arg_0.b.a.x, ~arg_0.b.a.x)) | arg_0.b.a, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(520f + arg_0.b.b.x)), arg_2, _wgslsmith_f_op_f32(-1115f - _wgslsmith_f_op_f32(f32(-1f) * -583f))) - vec3<f32>(_wgslsmith_f_op_f32(select(arg_0.b.b.x, arg_2, true)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2, -1874f)), _wgslsmith_div_f32(-1367f, -600f))));
    var var_2 = arg_0.b.b.x;
    var var_3 = Struct_1(-firstLeadingBit(-(var_1.a & arg_0.b.a)), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(var_1.b)) * _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(588f, arg_0.b.b.x, 361f)))), var_1.b)))));
    return -520f;
}

fn func_1(arg_0: vec4<i32>, arg_1: i32, arg_2: Struct_2) -> bool {
    var var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_4(func_2(arg_2.b, Struct_3(Struct_2(33390u, arg_1), Struct_1(vec4<i32>(0i, arg_0.x, -2147483647i, arg_2.b), vec3<f32>(-1028f, -546f, 1000f)))), arg_0.zyy, -300f)), _wgslsmith_f_op_f32(floor(1f)), true)), _wgslsmith_f_op_f32(f32(-1f) * -535f), _wgslsmith_f_op_f32(func_4(func_2(arg_0.x, Struct_3(Struct_2(4294967295u, arg_2.b), global0[_wgslsmith_index_u32(arg_2.a, 31u)])), _wgslsmith_mod_vec3_i32(vec3<i32>(-3767i, arg_1, arg_0.x), ~arg_0.ywz), _wgslsmith_f_op_f32(sign(-863f))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(921f * -1396f), _wgslsmith_f_op_f32(f32(-1f) * -1156f), -2241f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1082f, 1692f, -615f) * vec3<f32>(1000f, 727f, 280f))))));
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(545f, var_0.x, 1000f) - vec3<f32>(431f, 801f, 994f)) - vec3<f32>(var_0.x, -156f, var_0.x)), vec3<f32>(678f, _wgslsmith_f_op_f32(-114f * var_0.x), _wgslsmith_div_f32(1274f, 812f))))));
    var var_1 = vec3<bool>(true, true, all(vec3<bool>(false, 3380u == ~u_input.a, true)));
    let var_2 = u_input.a;
    let var_3 = Struct_1(arg_0, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, -249f, var_0.x) * vec3<f32>(var_0.x, 975f, -178f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1890f, var_0.x, var_0.x) * vec3<f32>(var_0.x, -214f, var_0.x))) - vec3<f32>(var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -497f), var_0.x)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, 351f, var_0.x)) * _wgslsmith_div_vec3_f32(vec3<f32>(421f, var_0.x, 427f), vec3<f32>(var_0.x, var_0.x, -457f))))), vec3<bool>(all(!vec4<bool>(true, var_1.x, true, true)), var_1.x, true))));
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 31>();
    let var_0 = select(select(vec2<bool>(true, true), vec2<bool>(func_1(vec4<i32>(16415i, 26217i, -35457i, 2147483647i), -7929i, Struct_2(4294967295u, -39885i)) && any(vec2<bool>(false, false)), true), false), !select(!select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true)), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true)), true), select(!vec2<bool>(any(vec2<bool>(true, false)), u_input.a == u_input.a), select(!select(vec2<bool>(true, true), vec2<bool>(true, true), false), vec2<bool>(all(vec3<bool>(true, false, true)), true), all(vec4<bool>(true, true, true, true))), vec2<bool>(true, true)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-func_2(_wgslsmith_mod_i32(58896i, -18491i), func_2(-1i, Struct_3(Struct_2(u_input.a, 1i), Struct_1(vec4<i32>(0i, 1i, 2147483647i, -7913i), vec3<f32>(-160f, 439f, 1263f))))).b.b.x))), -1156f, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2423f, 971f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(1423f, -945f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-421f, 857f) - vec2<f32>(-588f, 113f))), vec2<bool>(all(vec3<bool>(var_0.x, var_0.x, var_0.x)), var_0.x))) * vec2<f32>(_wgslsmith_div_f32(362f, -477f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, 2133f)))), u_input.a);
}

