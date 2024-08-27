struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: i32,
    b: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 10> = array<Struct_1, 10>(Struct_1(vec2<f32>(922f, 650f)), Struct_1(vec2<f32>(-296f, 411f)), Struct_1(vec2<f32>(-1055f, 287f)), Struct_1(vec2<f32>(1084f, -526f)), Struct_1(vec2<f32>(-146f, 295f)), Struct_1(vec2<f32>(168f, -1093f)), Struct_1(vec2<f32>(1547f, 532f)), Struct_1(vec2<f32>(908f, 631f)), Struct_1(vec2<f32>(-1000f, -267f)), Struct_1(vec2<f32>(818f, 859f)));

var<private> global1: array<Struct_1, 32>;

var<private> global2: i32 = 5271i;

var<private> global3: array<f32, 18> = array<f32, 18>(1282f, -2042f, 864f, -966f, -201f, 622f, -612f, 254f, -1252f, -837f, 1872f, -1113f, -1467f, 681f, -489f, 394f, 1429f, -822f);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(select(53456u, u_input.a.x, true), 18u)]), 298f);
    var var_1 = vec2<i32>(u_input.c, -19929i);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, max(vec2<i32>(~33497i, var_1.x) | (vec2<i32>(1i, var_1.x) << (max(u_input.a.wy, vec2<u32>(u_input.b, 1u)) % vec2<u32>(32u))), vec2<i32>(abs(-4456i), var_1.x)));
}

