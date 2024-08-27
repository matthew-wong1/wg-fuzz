struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec3<bool>,
    c: Struct_2,
    d: vec2<bool>,
    e: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(vec4<f32>(-3909f, 263f, 843f, 586f)));

var<private> global1: array<Struct_1, 14>;

var<private> global2: array<vec2<f32>, 20> = array<vec2<f32>, 20>(vec2<f32>(1576f, 1665f), vec2<f32>(546f, -271f), vec2<f32>(-482f, -985f), vec2<f32>(-901f, -452f), vec2<f32>(1138f, -839f), vec2<f32>(-990f, -462f), vec2<f32>(-1000f, 890f), vec2<f32>(1047f, 535f), vec2<f32>(139f, -173f), vec2<f32>(-336f, -2121f), vec2<f32>(555f, -1284f), vec2<f32>(1331f, 240f), vec2<f32>(1271f, 165f), vec2<f32>(1883f, -1589f), vec2<f32>(274f, -101f), vec2<f32>(-1459f, 1000f), vec2<f32>(-1852f, -1173f), vec2<f32>(-1000f, -1000f), vec2<f32>(1117f, -1147f), vec2<f32>(-673f, 860f));

var<private> global3: array<Struct_1, 3> = array<Struct_1, 3>(Struct_1(vec4<f32>(2134f, -1247f, 995f, -2262f)), Struct_1(vec4<f32>(-1164f, 1000f, -480f, 188f)), Struct_1(vec4<f32>(643f, -496f, 1310f, 528f)));

var<private> global4: array<Struct_1, 32>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(global0.a.a, vec4<f32>(-420f, global0.a.a.x, global0.a.a.x, global0.a.a.x)) * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(global0.a.a.x, -1355f, global0.a.a.x, global0.a.a.x), global0.a.a))) - _wgslsmith_div_vec4_f32(global0.a.a, _wgslsmith_f_op_vec4_f32(min(global0.a.a, vec4<f32>(605f, -1000f, 114f, 551f)))))));
    global1 = array<Struct_1, 14>();
    global2 = array<vec2<f32>, 20>();
    var var_1 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(var_0.a.a.zxz))))))));
    var var_2 = ((u_input.a.x >> (92158u % 32u)) <= ~((36583u >> (u_input.a.x % 32u)) ^ 70637u)) | true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-490f + -318f), var_0.a.a.x)))), reverseBits(~(vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, -30774i) ^ abs(vec4<i32>(0i, u_input.c.x, -2147483647i, 2147483647i)))));
}

