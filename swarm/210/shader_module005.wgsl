struct Struct_1 {
    a: bool,
    b: i32,
    c: vec2<u32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec4<bool>,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: Struct_4,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 31>;

var<private> global1: vec3<f32>;

var<private> global2: array<vec3<f32>, 24> = array<vec3<f32>, 24>(vec3<f32>(599f, -2590f, 1344f), vec3<f32>(805f, 2916f, -453f), vec3<f32>(-722f, -825f, -893f), vec3<f32>(452f, -1308f, 1928f), vec3<f32>(-1494f, -679f, 406f), vec3<f32>(-1096f, -1387f, 1000f), vec3<f32>(-454f, -378f, -1259f), vec3<f32>(759f, -551f, -1000f), vec3<f32>(-1148f, -1073f, -1304f), vec3<f32>(-1315f, 318f, -154f), vec3<f32>(-1000f, 346f, -679f), vec3<f32>(-454f, 2232f, -179f), vec3<f32>(656f, 1358f, -637f), vec3<f32>(-486f, -1206f, 312f), vec3<f32>(-439f, 2721f, -300f), vec3<f32>(-2761f, -894f, -204f), vec3<f32>(1000f, -1445f, 169f), vec3<f32>(-358f, 854f, -1441f), vec3<f32>(752f, -860f, -2167f), vec3<f32>(898f, -1370f, -411f), vec3<f32>(-1156f, -3359f, 533f), vec3<f32>(-1000f, 154f, -571f), vec3<f32>(1662f, -731f, -591f), vec3<f32>(414f, -630f, -744f));

var<private> global3: array<Struct_2, 8>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(true, u_input.c, u_input.a.xz);
    global3 = array<Struct_2, 8>();
    global3 = array<Struct_2, 8>();
    global1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(2346f, 1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global1.x))) + 884f)) - _wgslsmith_f_op_vec3_f32(step(global2[_wgslsmith_index_u32(~reverseBits(u_input.a.x), 24u)], _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global2[_wgslsmith_index_u32(u_input.b ^ var_0.c.x, 24u)] - _wgslsmith_f_op_vec3_f32(global2[_wgslsmith_index_u32(67020u, 24u)] * global2[_wgslsmith_index_u32(var_0.c.x, 24u)]))))));
    var var_1 = _wgslsmith_f_op_vec3_f32(-global2[_wgslsmith_index_u32(u_input.b, 24u)]);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_1.x), ~(~var_0.c.x), global0[_wgslsmith_index_u32(65265u, 31u)]);
}

