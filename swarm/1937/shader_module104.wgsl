struct Struct_1 {
    a: vec2<i32>,
    b: i32,
    c: i32,
    d: vec4<i32>,
    e: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_2,
    c: vec4<f32>,
    d: i32,
}

struct Struct_4 {
    a: vec3<u32>,
    b: u32,
    c: Struct_3,
    d: vec2<i32>,
    e: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: Struct_4 = Struct_4(vec3<u32>(66978u, 0u, 47259u), 21438u, Struct_3(vec3<u32>(0u, 56675u, 4294967295u), Struct_2(Struct_1(vec2<i32>(45884i, 2147483647i), 2147483647i, 0i, vec4<i32>(4108i, -60965i, 1i, 16443i), vec4<f32>(-159f, -2935f, 409f, -945f)), true), vec4<f32>(-223f, 244f, 406f, 757f), 1i), vec2<i32>(1i, 2147483647i), -1267f);

var<private> global2: array<vec3<f32>, 10> = array<vec3<f32>, 10>(vec3<f32>(-931f, -177f, 871f), vec3<f32>(292f, 1630f, -504f), vec3<f32>(391f, -666f, 205f), vec3<f32>(1000f, -837f, 593f), vec3<f32>(622f, 531f, 665f), vec3<f32>(752f, 1046f, 439f), vec3<f32>(-205f, 1000f, 125f), vec3<f32>(105f, -471f, -904f), vec3<f32>(-756f, -472f, 1528f), vec3<f32>(605f, 1000f, -1417f));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: vec4<i32>, arg_1: vec4<i32>, arg_2: Struct_1, arg_3: vec2<f32>) -> f32 {
    var var_0 = global1.c.b.a.d;
    global2 = array<vec3<f32>, 10>();
    global0 = global1.c.b.b;
    return -443f;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec3<f32>, 10>();
    global2 = array<vec3<f32>, 10>();
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1244f, global1.c.c.x))) * _wgslsmith_f_op_f32(-global1.c.c.x));
    var var_1 = global1.d.x;
    global0 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-219f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(vec4<i32>(20992i, -38450i, u_input.a.x, global1.d.x), vec4<i32>(347i, -2147483647i, 11239i, 7188i), global1.c.b.a, global1.c.c.yw)) - _wgslsmith_f_op_f32(f32(-1f) * -1558f)), _wgslsmith_div_i32(-1i, u_input.a.x) > u_input.a.x)) * _wgslsmith_f_op_f32(global1.e * -598f)));
}

