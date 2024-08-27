struct Struct_1 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
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

var<private> global0: array<bool, 6>;

var<private> global1: f32 = -581f;

var<private> global2: array<u32, 1> = array<u32, 1>(6834u);

var<private> global3: array<vec2<bool>, 21>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_1(arg_0: u32, arg_1: bool, arg_2: vec2<bool>) -> u32 {
    global3 = array<vec2<bool>, 21>();
    let var_0 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(select(-481f, -880f, true)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(-1303f))))));
    return ~firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(21434u, ~global2[_wgslsmith_index_u32(0u, 1u)], ~arg_0, u_input.a), ~(~vec4<u32>(u_input.a, 56032u, 97226u, 4294967295u))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<u32>) -> u32 {
    global3 = array<vec2<bool>, 21>();
    global1 = arg_1.a.x;
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(arg_0.a.x, arg_0.a.x), _wgslsmith_f_op_vec2_f32(trunc(arg_1.a))))) - vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(arg_1.a.x)))), 104f)));
    global2 = array<u32, 1>();
    let var_1 = global0[_wgslsmith_index_u32(arg_2.x, 6u)];
    return ~u_input.a;
}

fn func_2(arg_0: vec4<f32>) -> f32 {
    let var_0 = 0u;
    global0 = array<bool, 6>();
    var var_1 = (func_3(Struct_1(_wgslsmith_div_vec2_f32(arg_0.yx, arg_0.xy)), Struct_1(arg_0.yy), vec2<u32>(var_0, u_input.a)) | var_0) << (firstLeadingBit(u_input.b) % 32u);
    let var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-807f, -287f) - _wgslsmith_f_op_f32(-arg_0.x)), 1238f)));
    global2 = array<u32, 1>();
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(786f, var_2.a.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(~(~vec2<u32>(u_input.a, 16974u)), vec2<u32>(_wgslsmith_div_u32(1u, min(u_input.b, 18418u)), func_1(_wgslsmith_dot_vec3_u32(vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a, 1u)], 1u)], 4294967295u, 4938u), vec3<u32>(16703u, 4294967295u, 1u)), all(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 1u)], 21u)]), select(vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 6u)], false), vec2<bool>(false, false), global3[_wgslsmith_index_u32(0u, 21u)])))), u_input.a);
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -386f), 1041f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -804f), _wgslsmith_f_op_f32(f32(-1f) * -464f)))));
    var var_2 = firstTrailingBit(firstLeadingBit(-11498i));
    global2 = array<u32, 1>();
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(max(var_1.a.x, _wgslsmith_f_op_f32(select(var_1.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1003f) + -1503f), global0[_wgslsmith_index_u32(var_0, 6u)])))), _wgslsmith_f_op_f32(func_2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1747f, 1000f, var_1.a.x, -404f) + vec4<f32>(875f, -1890f, -1302f, -1435f)))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(770f, var_1.a.x, -471f, var_1.a.x), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_1.a.x, var_1.a.x, var_1.a.x, var_1.a.x)))))))), var_1.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1642f)))));
    let var_4 = max(0u, 12989u);
    let var_5 = false;
    var var_6 = u_input.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(~u_input.c.x));
}

