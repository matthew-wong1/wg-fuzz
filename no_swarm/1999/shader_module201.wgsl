struct Struct_1 {
    a: vec4<bool>,
    b: vec2<bool>,
    c: vec4<i32>,
    d: i32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<f32>,
    c: i32,
    d: i32,
}

struct Struct_4 {
    a: bool,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec2<f32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 17> = array<vec4<u32>, 17>(vec4<u32>(4294967295u, 4294967295u, 1u, 9363u), vec4<u32>(36821u, 86052u, 4294967295u, 4294967295u), vec4<u32>(4294967295u, 89812u, 1u, 4294967295u), vec4<u32>(4294967295u, 38054u, 4294967295u, 2147u), vec4<u32>(3409u, 27719u, 8507u, 60050u), vec4<u32>(58562u, 4294967295u, 4294967295u, 14786u), vec4<u32>(4973u, 4294967295u, 13403u, 2460u), vec4<u32>(0u, 1u, 4294967295u, 30607u), vec4<u32>(28392u, 0u, 1u, 3744u), vec4<u32>(12634u, 0u, 0u, 0u), vec4<u32>(8259u, 34330u, 0u, 74448u), vec4<u32>(70010u, 1u, 5073u, 4294967295u), vec4<u32>(0u, 381u, 24079u, 4294967295u), vec4<u32>(1u, 1u, 16694u, 4294967295u), vec4<u32>(4294967295u, 40381u, 50454u, 1u), vec4<u32>(1u, 3340u, 0u, 4294967295u), vec4<u32>(38854u, 1u, 0u, 21429u));

var<private> global1: Struct_1;

var<private> global2: Struct_1 = Struct_1(vec4<bool>(true, true, true, false), vec2<bool>(false, true), vec4<i32>(-38069i, 2147483647i, 2147483647i, 2147483647i), 42983i);

var<private> global3: u32;

var<private> global4: array<vec2<i32>, 7> = array<vec2<i32>, 7>(vec2<i32>(-1i, -80123i), vec2<i32>(35321i, i32(-2147483648)), vec2<i32>(-44130i, i32(-2147483648)), vec2<i32>(-10507i, 34544i), vec2<i32>(1i, -1i), vec2<i32>(-1176i, -16538i), vec2<i32>(i32(-2147483648), -22659i));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(true && !any(select(global1.a.xw, global2.a.yy, global2.b.x)), global1.a.wwx);
    var var_1 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(411f, 233f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 332f)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-259f, 985f))), vec2<bool>(global1.a.x, var_0.a)))))));
    global0 = array<vec4<u32>, 17>();
    global3 = u_input.b.x;
    var var_2 = global2.c.zy;
    var var_3 = i32(-1i) * -28993i;
    var var_4 = ~reverseBits(abs(-global1.d));
    global4 = array<vec2<i32>, 7>();
    let var_5 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(843f)) * 1f);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c & firstTrailingBit(select(global2.d, -1i, global1.b.x) ^ (u_input.a.x << (u_input.b.x % 32u))), ~global0[_wgslsmith_index_u32(u_input.b.x, 17u)] ^ ~(~u_input.b), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_5, _wgslsmith_f_op_f32(sign(var_1.x)))))), -abs(global1.c.xzy));
}

