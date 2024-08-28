struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(25333i, 27436i, i32(-2147483648));

var<private> global1: array<vec3<bool>, 32>;

var<private> global2: array<vec2<f32>, 32> = array<vec2<f32>, 32>(vec2<f32>(-437f, 374f), vec2<f32>(-1722f, 148f), vec2<f32>(-252f, 944f), vec2<f32>(-1067f, 277f), vec2<f32>(1000f, 282f), vec2<f32>(-1395f, -1352f), vec2<f32>(-953f, 1644f), vec2<f32>(-1142f, 1332f), vec2<f32>(899f, 449f), vec2<f32>(-692f, 324f), vec2<f32>(-1377f, -991f), vec2<f32>(-236f, -1234f), vec2<f32>(1466f, -711f), vec2<f32>(-265f, -400f), vec2<f32>(-286f, 1101f), vec2<f32>(1085f, -321f), vec2<f32>(-549f, -1623f), vec2<f32>(1424f, 1759f), vec2<f32>(-508f, 506f), vec2<f32>(1088f, 672f), vec2<f32>(853f, -600f), vec2<f32>(-1663f, -1231f), vec2<f32>(1000f, -837f), vec2<f32>(1294f, 1000f), vec2<f32>(877f, -2607f), vec2<f32>(-798f, 2048f), vec2<f32>(-1214f, -2442f), vec2<f32>(-1000f, 176f), vec2<f32>(256f, -161f), vec2<f32>(329f, 449f), vec2<f32>(488f, -2646f), vec2<f32>(-1000f, 1429f));

var<private> global3: array<bool, 12> = array<bool, 12>(true, false, false, false, true, false, true, true, false, false, true, true);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1(arg_0: u32) -> u32 {
    return 4926u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0.x;
    let var_1 = vec3<bool>(all(vec3<bool>(true, global3[_wgslsmith_index_u32(u_input.b.x, 12u)] | global3[_wgslsmith_index_u32(u_input.b.x, 12u)], any(vec4<bool>(false, false, false, false)))) | global3[_wgslsmith_index_u32(u_input.b.x, 12u)], !global3[_wgslsmith_index_u32(1u, 12u)], !all(select(!vec3<bool>(global3[_wgslsmith_index_u32(u_input.b.x, 12u)], false, global3[_wgslsmith_index_u32(u_input.b.x, 12u)]), !global1[_wgslsmith_index_u32(1u, 32u)], global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(4294967295u, u_input.b.x), 12u)])));
    let var_2 = vec2<u32>(~(~func_1(u_input.b.x)), _wgslsmith_div_u32(_wgslsmith_div_u32(u_input.b.x | ~u_input.b.x, u_input.b.x), 40938u & (~u_input.b.x ^ 4294967295u)));
    let var_3 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d);
}

