struct Struct_1 {
    a: vec2<i32>,
    b: vec2<bool>,
    c: vec4<f32>,
    d: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec2<f32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: f32 = 860f;

var<private> global2: array<Struct_1, 13> = array<Struct_1, 13>(Struct_1(vec2<i32>(-65030i, 1i), vec2<bool>(true, true), vec4<f32>(-1002f, 1490f, -822f, -547f), true), Struct_1(vec2<i32>(-40076i, 10352i), vec2<bool>(true, true), vec4<f32>(906f, -612f, -1262f, -828f), true), Struct_1(vec2<i32>(-2465i, 6805i), vec2<bool>(false, false), vec4<f32>(-541f, -851f, -1145f, 1000f), false), Struct_1(vec2<i32>(-30209i, -1i), vec2<bool>(true, false), vec4<f32>(288f, -614f, -570f, -1270f), true), Struct_1(vec2<i32>(16783i, i32(-2147483648)), vec2<bool>(false, false), vec4<f32>(2156f, 147f, 999f, -830f), true), Struct_1(vec2<i32>(0i, 13787i), vec2<bool>(true, false), vec4<f32>(949f, -296f, 1000f, 187f), false), Struct_1(vec2<i32>(3364i, -1i), vec2<bool>(true, false), vec4<f32>(-689f, -152f, 1088f, -866f), true), Struct_1(vec2<i32>(-1i, 1i), vec2<bool>(true, false), vec4<f32>(-141f, 913f, 1696f, 792f), false), Struct_1(vec2<i32>(30930i, 0i), vec2<bool>(false, false), vec4<f32>(-201f, 2215f, 455f, -516f), true), Struct_1(vec2<i32>(0i, 2147483647i), vec2<bool>(false, true), vec4<f32>(-200f, -180f, 1692f, 520f), true), Struct_1(vec2<i32>(-23171i, 1i), vec2<bool>(true, true), vec4<f32>(1000f, -240f, -1875f, -349f), true), Struct_1(vec2<i32>(529i, 18671i), vec2<bool>(false, false), vec4<f32>(698f, 1000f, 1314f, 1498f), true), Struct_1(vec2<i32>(60019i, -15235i), vec2<bool>(true, false), vec4<f32>(766f, -319f, 1329f, 348f), true));

var<private> global3: vec2<u32>;

var<private> global4: array<Struct_1, 24>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~firstTrailingBit(-10770i);
    global1 = global0.c.x;
    let var_1 = !global0.d;
    global2 = array<Struct_1, 13>();
    let var_2 = 1835f;
    global4 = array<Struct_1, 24>();
    var var_3 = global4[_wgslsmith_index_u32(abs(abs(global3.x)), 24u)];
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(-37530i) << (global3.x % 32u), 0i, global0.c.yx, vec3<i32>(2147483647i, ~u_input.a.x, -global0.a.x));
}

