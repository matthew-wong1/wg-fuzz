struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: f32,
    b: bool,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec4<bool>,
    d: u32,
    e: i32,
}

struct Struct_4 {
    a: vec4<bool>,
}

struct Struct_5 {
    a: Struct_1,
    b: u32,
    c: vec3<u32>,
    d: bool,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 32254i;

var<private> global1: i32;

var<private> global2: array<Struct_2, 12> = array<Struct_2, 12>(Struct_2(813f, false, Struct_1(vec4<f32>(1000f, 1000f, -1236f, -432f)), Struct_1(vec4<f32>(490f, -712f, 334f, 378f))), Struct_2(-1521f, true, Struct_1(vec4<f32>(186f, 851f, 657f, 2228f)), Struct_1(vec4<f32>(1011f, 1395f, 134f, 489f))), Struct_2(-1395f, false, Struct_1(vec4<f32>(701f, -203f, 386f, -1149f)), Struct_1(vec4<f32>(-565f, 291f, 1441f, -1053f))), Struct_2(-562f, false, Struct_1(vec4<f32>(-864f, -1157f, -1123f, -204f)), Struct_1(vec4<f32>(1461f, -215f, -893f, 1000f))), Struct_2(107f, true, Struct_1(vec4<f32>(-150f, 700f, 163f, -837f)), Struct_1(vec4<f32>(1000f, -902f, -106f, 813f))), Struct_2(-220f, false, Struct_1(vec4<f32>(-373f, -1000f, -2021f, 912f)), Struct_1(vec4<f32>(623f, 558f, 1205f, -1212f))), Struct_2(-324f, false, Struct_1(vec4<f32>(-188f, -194f, 1000f, -405f)), Struct_1(vec4<f32>(638f, -265f, -437f, 689f))), Struct_2(182f, true, Struct_1(vec4<f32>(184f, -564f, -1220f, -276f)), Struct_1(vec4<f32>(341f, -615f, -1000f, 2438f))), Struct_2(-422f, true, Struct_1(vec4<f32>(873f, 230f, -490f, -1463f)), Struct_1(vec4<f32>(-906f, 347f, -341f, -489f))), Struct_2(492f, true, Struct_1(vec4<f32>(-1000f, 1101f, -634f, 1168f)), Struct_1(vec4<f32>(589f, -157f, -837f, -781f))), Struct_2(-1251f, true, Struct_1(vec4<f32>(436f, 563f, 860f, -859f)), Struct_1(vec4<f32>(1095f, 1130f, -1000f, 457f))), Struct_2(-564f, true, Struct_1(vec4<f32>(232f, -369f, -926f, 862f)), Struct_1(vec4<f32>(-1000f, 1050f, -576f, 2303f))));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: f32) -> f32 {
    let var_0 = Struct_4(vec4<bool>(!any(vec4<bool>(true, true, true, true)), true, select(true, false, any(vec2<bool>(true, true))), !all(vec4<bool>(false, true, true, true))));
    return 1831f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-290f, _wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), -2290f)));
    var var_1 = u_input.b.xz;
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(4651u | ~countOneBits(var_1.x)), ~(~_wgslsmith_add_vec3_u32(u_input.b, vec3<u32>(12301u, 725u, var_1.x))));
}

