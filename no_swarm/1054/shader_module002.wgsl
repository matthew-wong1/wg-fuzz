struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec3<bool>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: bool,
    c: f32,
    d: u32,
}

struct Struct_4 {
    a: vec2<bool>,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 8> = array<Struct_2, 8>(Struct_2(Struct_1(4294967295u), -911f, vec3<bool>(true, true, true)), Struct_2(Struct_1(120724u), -1000f, vec3<bool>(true, false, false)), Struct_2(Struct_1(55042u), -689f, vec3<bool>(true, true, true)), Struct_2(Struct_1(0u), 762f, vec3<bool>(true, true, false)), Struct_2(Struct_1(68390u), -1083f, vec3<bool>(true, false, false)), Struct_2(Struct_1(4294967295u), 1233f, vec3<bool>(true, true, false)), Struct_2(Struct_1(38728u), 116f, vec3<bool>(true, true, true)), Struct_2(Struct_1(1u), -1737f, vec3<bool>(false, true, false)));

var<private> global1: array<vec2<bool>, 15> = array<vec2<bool>, 15>(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1) -> u32 {
    global0 = array<Struct_2, 8>();
    global1 = array<vec2<bool>, 15>();
    global1 = array<vec2<bool>, 15>();
    var var_0 = -272f;
    var var_1 = 2514f;
    return arg_0.a;
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: bool, arg_3: u32) -> i32 {
    global0 = array<Struct_2, 8>();
    let var_0 = global0[_wgslsmith_index_u32(reverseBits(4294967295u), 8u)];
    let var_1 = global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(60543u, ~(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(1u, var_0.a.a, arg_3, 38162u)), vec4<u32>(arg_3, 28742u, arg_0.x, 0u) << (vec4<u32>(arg_1.a, var_0.a.a, 4294967295u, arg_3) % vec4<u32>(32u))) << (var_0.a.a % 32u))), 15u)];
    var var_2 = Struct_2(Struct_1(50964u), var_0.b, vec3<bool>(!any(!global1[_wgslsmith_index_u32(arg_1.a, 15u)]), ~1u != (977u << (arg_0.x % 32u)), true));
    global1 = array<vec2<bool>, 15>();
    return -13701i;
}

fn func_2(arg_0: f32) -> f32 {
    let var_0 = Struct_1(abs(4294967295u));
    var var_1 = Struct_2(var_0, _wgslsmith_f_op_f32(trunc(arg_0)), vec3<bool>(true, false, false));
    let var_2 = func_4(vec3<u32>(~(~(~0u)), func_3(Struct_1(var_0.a & 4459u)), 21269u), var_1.a, _wgslsmith_f_op_f32(var_1.b - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1465f - arg_0)))) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(282f, arg_0, var_1.c.x)))), 29718u);
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_0 - -814f), 783f)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.b), var_1.b)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(var_1.b)))))))), 420f);
    let var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_3.x, var_1.b) * vec2<f32>(arg_0, var_3.x)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, -798f))) + vec2<f32>(var_3.x, 873f)) - _wgslsmith_f_op_vec2_f32(step(var_3.zy, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(897f, -1128f) * var_3.yz))))));
    return _wgslsmith_div_f32(var_3.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_4.x))));
}

fn func_1(arg_0: vec3<f32>) -> StorageBuffer {
    global0 = array<Struct_2, 8>();
    var var_0 = true;
    global1 = array<vec2<bool>, 15>();
    global0 = array<Struct_2, 8>();
    global1 = array<vec2<bool>, 15>();
    return StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(arg_0.x + 105f), _wgslsmith_f_op_f32(ceil(-1856f)), 1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-518f + arg_0.x) - _wgslsmith_f_op_f32(func_2(_wgslsmith_div_f32(-1000f, 1236f))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    let var_1 = !(!(!select(select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true)), select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true)), true)));
    var_0 = true;
    let x = u_input.a;
    s_output = func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-902f, 1193f, -1872f) - vec3<f32>(-230f, 1000f, -205f))))));
}

