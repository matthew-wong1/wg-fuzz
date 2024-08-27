struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: f32,
    d: vec3<i32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: u32,
    c: bool,
}

struct Struct_5 {
    a: f32,
    b: Struct_3,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: array<Struct_2, 26> = array<Struct_2, 26>(Struct_2(37457u), Struct_2(1u), Struct_2(4294967295u), Struct_2(1u), Struct_2(31322u), Struct_2(72821u), Struct_2(46989u), Struct_2(1u), Struct_2(74753u), Struct_2(84686u), Struct_2(100329u), Struct_2(4294967295u), Struct_2(4294967295u), Struct_2(0u), Struct_2(0u), Struct_2(4294967295u), Struct_2(34925u), Struct_2(1350u), Struct_2(0u), Struct_2(50630u), Struct_2(4294967295u), Struct_2(0u), Struct_2(82335u), Struct_2(121163u), Struct_2(1u), Struct_2(4294967295u));

var<private> global2: array<bool, 25>;

var<private> global3: i32;

var<private> global4: Struct_2;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -949f) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(1108f - 521f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1128f - 1156f))))));
    global2 = array<bool, 25>();
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-907f, 1802f))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1044f, 431f) * vec2<f32>(1038f, 515f))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(706f, 125f))))))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(max(1000f, 1524f)), _wgslsmith_f_op_f32(trunc(-1270f))))));
    global0 = global2[_wgslsmith_index_u32(32446u, 25u)];
    global1 = array<Struct_2, 26>();
    let x = u_input.a;
    s_output = StorageBuffer(-29488i, _wgslsmith_mult_u32(28266u, u_input.c.x), 0u);
}

