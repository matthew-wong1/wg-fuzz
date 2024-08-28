struct Struct_1 {
    a: vec3<f32>,
    b: vec4<f32>,
    c: u32,
    d: vec3<u32>,
    e: vec4<f32>,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct Struct_3 {
    a: i32,
    b: vec4<f32>,
    c: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: u32,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 25>;

var<private> global1: array<bool, 28>;

var<private> global2: array<vec3<f32>, 29> = array<vec3<f32>, 29>(vec3<f32>(1634f, -1141f, 545f), vec3<f32>(-972f, -964f, 164f), vec3<f32>(-763f, -493f, -1797f), vec3<f32>(-1238f, -1000f, -934f), vec3<f32>(175f, -1000f, -709f), vec3<f32>(634f, 1073f, -1007f), vec3<f32>(-1261f, 747f, -1000f), vec3<f32>(1236f, -341f, 106f), vec3<f32>(-639f, -1015f, -125f), vec3<f32>(191f, 438f, 1563f), vec3<f32>(-690f, -775f, -686f), vec3<f32>(-217f, 837f, 191f), vec3<f32>(-199f, 623f, -550f), vec3<f32>(1228f, 1000f, -1193f), vec3<f32>(580f, 236f, 215f), vec3<f32>(-2125f, 2220f, 2463f), vec3<f32>(481f, 630f, -148f), vec3<f32>(-1000f, 1123f, -1000f), vec3<f32>(-158f, 555f, 1318f), vec3<f32>(228f, -224f, 702f), vec3<f32>(-211f, 324f, -1426f), vec3<f32>(634f, -761f, 1220f), vec3<f32>(4148f, 274f, -410f), vec3<f32>(-1386f, 343f, 650f), vec3<f32>(227f, -968f, 326f), vec3<f32>(-1599f, 1888f, 696f), vec3<f32>(248f, 783f, 1869f), vec3<f32>(-661f, -1467f, -1282f), vec3<f32>(-1481f, 1243f, -226f));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_1(arg_0: i32, arg_1: i32) -> StorageBuffer {
    let var_0 = Struct_2(vec3<u32>(u_input.c, abs(firstTrailingBit(~0u)), u_input.e.x));
    var var_1 = false | global1[_wgslsmith_index_u32(4294967295u, 28u)];
    global1 = array<bool, 28>();
    return StorageBuffer(vec4<i32>(arg_0, arg_1, 22787i, -1i), ~countOneBits(var_0.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(floor(423f)));
    let x = u_input.a;
    s_output = func_1(-_wgslsmith_div_i32(u_input.d, countOneBits(u_input.a.x)), u_input.d);
}

