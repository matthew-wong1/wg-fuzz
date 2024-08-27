struct Struct_1 {
    a: vec3<f32>,
    b: i32,
    c: vec4<f32>,
}

struct Struct_2 {
    a: u32,
    b: vec3<f32>,
    c: vec3<f32>,
    d: vec2<i32>,
    e: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<Struct_1, 11> = array<Struct_1, 11>(Struct_1(vec3<f32>(1485f, -542f, -820f), 62613i, vec4<f32>(-191f, 223f, 929f, 1419f)), Struct_1(vec3<f32>(-1000f, 1973f, 162f), 0i, vec4<f32>(645f, 1077f, -867f, -575f)), Struct_1(vec3<f32>(-820f, 591f, 311f), 58266i, vec4<f32>(466f, 596f, 925f, 279f)), Struct_1(vec3<f32>(275f, -2178f, 1000f), 2147483647i, vec4<f32>(-550f, -1243f, 1101f, -416f)), Struct_1(vec3<f32>(-366f, 310f, 638f), 0i, vec4<f32>(-1000f, 691f, 662f, 1292f)), Struct_1(vec3<f32>(389f, 205f, -1000f), -2752i, vec4<f32>(-1000f, 1577f, -1055f, -317f)), Struct_1(vec3<f32>(-723f, -516f, 1395f), 15331i, vec4<f32>(-467f, -1041f, -602f, 912f)), Struct_1(vec3<f32>(-258f, -1497f, -1000f), -30047i, vec4<f32>(-285f, -2102f, 337f, 858f)), Struct_1(vec3<f32>(398f, 884f, 435f), 32859i, vec4<f32>(-868f, 1806f, 1000f, 2280f)), Struct_1(vec3<f32>(-843f, 465f, -685f), -1541i, vec4<f32>(722f, -246f, -1478f, 766f)), Struct_1(vec3<f32>(112f, 642f, -285f), 14645i, vec4<f32>(-663f, -1951f, -1599f, 2024f)));

var<private> global2: bool = true;

var<private> global3: f32;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-152f * -1000f), _wgslsmith_f_op_f32(floor(-1172f))) * vec2<f32>(701f, _wgslsmith_div_f32(1094f, -967f))))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1000f)))), _wgslsmith_f_op_f32(164f * 399f)), true));
    let var_1 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.x, 898f, 57669u);
}

