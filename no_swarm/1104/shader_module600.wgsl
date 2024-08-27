struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: u32,
    b: bool,
    c: vec4<u32>,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 8>;

var<private> global1: vec3<f32> = vec3<f32>(-1413f, -1390f, 520f);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: vec3<bool>) -> f32 {
    global1 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -909f), 396f, _wgslsmith_f_op_f32(trunc(351f))) * _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global1.x, 1139f, global1.x)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1296f, global1.x, -1000f))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, -464f, global1.x) + vec3<f32>(global1.x, global1.x, global1.x)), vec3<f32>(-602f, arg_0, arg_0))), all(select(!arg_1.yy, select(arg_1.zx, vec2<bool>(arg_1.x, true), arg_1.yx), arg_1.zz)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(771f, -2384f, arg_0)))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global1.x, global1.x, 1431f)))), vec3<f32>(global1.x, 705f, 2550f))))));
    let var_0 = Struct_1(!(false == any(!vec4<bool>(true, arg_1.x, true, false))));
    global0 = array<u32, 8>();
    var var_1 = vec2<bool>(any(!arg_1.zz), any(select(arg_1, arg_1, !vec3<bool>(false, false, var_0.a))));
    var_1 = vec2<bool>(!(!(!all(vec4<bool>(true, true, var_1.x, true)))), !(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -680f), _wgslsmith_f_op_f32(select(global1.x, global1.x, var_1.x))) < _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1185f + arg_0), _wgslsmith_f_op_f32(-global1.x))));
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.x, -1864f)), 1125f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-528f))) + -358f));
}

fn func_2(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: Struct_2, arg_3: bool) -> vec4<f32> {
    var var_0 = !(true & arg_3);
    global0 = array<u32, 8>();
    let var_1 = Struct_1(arg_0.a);
    global1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x))), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.x + global1.x), _wgslsmith_f_op_f32(select(1711f, -390f, false))), _wgslsmith_div_f32(247f, _wgslsmith_f_op_f32(arg_1.x * -453f)))));
    var var_2 = firstLeadingBit(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~firstTrailingBit(firstLeadingBit(0u)), 8u)] & firstLeadingBit(~abs(37357u)), 8u)]);
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, _wgslsmith_f_op_f32(max(global1.x, arg_1.x)), _wgslsmith_f_op_f32(-arg_1.x), -627f) * vec4<f32>(_wgslsmith_f_op_f32(max(-1287f, arg_1.x)), _wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(floor(-1407f)), _wgslsmith_f_op_f32(select(global1.x, arg_1.x, arg_3))))) - vec4<f32>(_wgslsmith_f_op_f32(func_3(1706f, select(select(vec3<bool>(var_1.a, true, true), vec3<bool>(arg_0.a, true, arg_2.b), vec3<bool>(var_1.a, true, true)), vec3<bool>(true, var_1.a, var_1.a), false))), _wgslsmith_div_f32(-802f, 149f), arg_1.x, 732f));
}

fn func_1(arg_0: vec4<u32>) -> f32 {
    var var_0 = Struct_1(false);
    global0 = array<u32, 8>();
    global1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(885f - _wgslsmith_f_op_f32(global1.x + _wgslsmith_f_op_f32(round(482f))))), global1.x, 1f);
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_2(Struct_1(true), vec4<f32>(global1.x, 1000f, -802f, -362f), Struct_2(global0[_wgslsmith_index_u32(5305u, 8u)], var_0.a, arg_0, vec4<i32>(40342i, -22262i, u_input.a.x, u_input.c)), true)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, 1839f, -174f, global1.x))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, -841f, 213f, 955f) * vec4<f32>(global1.x, 404f, -1000f, -366f))))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-748f, 903f, _wgslsmith_f_op_f32(exp2(global1.x)), _wgslsmith_div_f32(global1.x, global1.x)))), -1000f >= _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(global1.x, 1000f))))));
    var var_2 = Struct_2(u_input.b >> (_wgslsmith_dot_vec4_u32(~firstLeadingBit(arg_0), firstTrailingBit(vec4<u32>(16528u, 54559u, 55086u, u_input.b))) % 32u), var_0.a, arg_0, vec4<i32>(-u_input.c, -u_input.a.x, u_input.c, 2147483647i));
    return _wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 8>();
    global0 = array<u32, 8>();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(-1004f * 427f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.x, _wgslsmith_f_op_f32(func_1(vec4<u32>(43841u, 0u, u_input.b, 0u)))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -676f), global1.x)), _wgslsmith_f_op_f32(trunc(global1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(-741f, 1046f, false)))))), countOneBits(u_input.a.x));
}

