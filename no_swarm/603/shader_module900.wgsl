struct Struct_1 {
    a: bool,
    b: bool,
    c: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: f32,
    d: i32,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 12> = array<vec4<f32>, 12>(vec4<f32>(-252f, 724f, 205f, 761f), vec4<f32>(463f, 989f, -341f, 577f), vec4<f32>(1123f, -196f, -1008f, -1532f), vec4<f32>(2313f, -506f, -439f, 377f), vec4<f32>(-503f, 1000f, 407f, 343f), vec4<f32>(550f, 610f, -356f, 787f), vec4<f32>(-1609f, 2071f, 129f, 207f), vec4<f32>(1138f, -159f, 1000f, 969f), vec4<f32>(-104f, -1000f, -1440f, 501f), vec4<f32>(-708f, 1584f, -1540f, 545f), vec4<f32>(136f, -1000f, -1490f, -1446f), vec4<f32>(-1853f, -420f, 867f, 1323f));

var<private> global1: vec4<bool> = vec4<bool>(false, true, false, true);

var<private> global2: array<bool, 15> = array<bool, 15>(false, true, true, false, true, true, false, false, false, true, true, true, false, true, true);

var<private> global3: bool;

var<private> global4: Struct_4;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1.x;
    let var_1 = global4.a.b;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(507f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global4.a.a - 294f) + _wgslsmith_f_op_f32(-global4.a.c))) - 1000f));
    var var_3 = firstTrailingBit(-3819i);
    global1 = global4.a.b.b.c;
    var var_4 = !vec2<bool>(global4.a.b.b.c.x, global2[_wgslsmith_index_u32(u_input.a.x, 15u)]);
    let x = u_input.a;
    s_output = StorageBuffer(373f, ~(-vec3<i32>(2147483647i, global4.a.d, 0i)), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1581f, global4.a.c)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-676f, global4.a.a)))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global4.a.c, 754f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global4.a.a, global4.a.a) * vec2<f32>(-162f, global4.a.a)))))));
}

