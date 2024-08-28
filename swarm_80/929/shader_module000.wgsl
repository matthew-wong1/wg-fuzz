struct Struct_1 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: Struct_1;

var<private> global2: array<Struct_1, 1>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> f32 {
    var var_0 = -123f;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -526f));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(702f))), _wgslsmith_f_op_f32(floor(1000f)), all(vec2<bool>(any(vec2<bool>(false, false)), true)))));
    let var_3 = -1000f;
    global1 = global2[_wgslsmith_index_u32(global1.a.x, 1u)];
    return _wgslsmith_f_op_f32(round(var_2));
}

fn func_2(arg_0: bool) -> bool {
    global0 = 30712i;
    var var_0 = 1u;
    let var_1 = Struct_1(~vec3<u32>(countOneBits(global1.a.x), 0u, 10042u));
    let var_2 = _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-612f + -1040f)), 455f), _wgslsmith_f_op_f32(sign(345f)), _wgslsmith_f_op_f32(f32(-1f) * -142f), _wgslsmith_f_op_f32(2254f + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(1058f)), 669f, false)))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())), _wgslsmith_f_op_f32(f32(-1f) * -342f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -709f)), -926f)))));
    var var_3 = global1.a ^ (vec3<u32>(~reverseBits(global1.a.x), 106023u >> (countOneBits(10145u) % 32u), ~max(55903u, global1.a.x)) ^ var_1.a);
    return arg_0 || select(true, true, all(!select(vec4<bool>(arg_0, true, false, true), vec4<bool>(arg_0, false, true, false), vec4<bool>(true, false, true, arg_0))));
}

fn func_1(arg_0: f32, arg_1: f32, arg_2: vec2<f32>, arg_3: Struct_1) -> vec3<u32> {
    var var_0 = arg_3.a.x;
    var var_1 = all(select(select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(func_2(false), false), select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false)))), vec2<bool>(all(vec4<bool>(true, true, true, true)), true), !select(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false)), vec2<bool>(true, false), any(vec4<bool>(true, true, false, false)))));
    global2 = array<Struct_1, 1>();
    var var_2 = arg_3;
    global2 = array<Struct_1, 1>();
    return global1.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(384f, 787f, 837f), vec3<f32>(-602f, 1000f, -712f), vec3<bool>(true, true, false))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-169f, -599f, 913f) * vec3<f32>(-707f, -1441f, 822f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-652f, 384f, -302f), vec3<f32>(1000f, -217f, 1927f)))))));
    global1 = Struct_1(firstLeadingBit(firstLeadingBit(firstTrailingBit(~global1.a))));
    global1 = Struct_1(func_1(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -194f), -974f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x * 1000f) - _wgslsmith_f_op_f32(step(var_0.x, -667f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, _wgslsmith_f_op_f32(var_0.x + var_0.x))), Struct_1(vec3<u32>(_wgslsmith_div_u32(global1.a.x, global1.a.x), 4294967295u, global1.a.x))));
    global2 = array<Struct_1, 1>();
    global2 = array<Struct_1, 1>();
    let x = u_input.a;
    s_output = StorageBuffer(var_0);
}

