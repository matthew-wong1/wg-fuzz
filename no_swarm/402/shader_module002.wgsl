struct Struct_1 {
    a: u32,
    b: u32,
    c: i32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: bool,
    b: vec4<i32>,
    c: f32,
}

struct Struct_4 {
    a: vec3<u32>,
    b: vec4<i32>,
    c: u32,
    d: Struct_1,
}

struct Struct_5 {
    a: Struct_1,
    b: bool,
    c: vec2<u32>,
    d: Struct_3,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec4<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 1085f;

var<private> global1: array<vec2<f32>, 20> = array<vec2<f32>, 20>(vec2<f32>(1365f, 1225f), vec2<f32>(646f, 211f), vec2<f32>(228f, 1550f), vec2<f32>(1205f, -406f), vec2<f32>(268f, -1847f), vec2<f32>(132f, 1008f), vec2<f32>(333f, 973f), vec2<f32>(140f, 712f), vec2<f32>(-1008f, 523f), vec2<f32>(132f, -927f), vec2<f32>(304f, 466f), vec2<f32>(-1089f, 136f), vec2<f32>(-1158f, -932f), vec2<f32>(730f, 272f), vec2<f32>(-1303f, -688f), vec2<f32>(-1232f, 1107f), vec2<f32>(885f, -1225f), vec2<f32>(1804f, 2039f), vec2<f32>(1019f, 1997f), vec2<f32>(508f, -1033f));

var<private> global2: array<vec2<f32>, 3>;

var<private> global3: array<vec3<i32>, 5>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(972f);
    var var_1 = false;
    var_0 = Struct_2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(515f - _wgslsmith_f_op_f32(var_0.a * -977f)) * -242f))));
    global1 = array<vec2<f32>, 20>();
    var var_2 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a) * var_0.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.a))))))), firstTrailingBit(_wgslsmith_mod_vec2_u32(vec2<u32>(abs(0u), _wgslsmith_sub_u32(u_input.d.x, u_input.d.x)), ~vec2<u32>(0u, 1u))));
}

