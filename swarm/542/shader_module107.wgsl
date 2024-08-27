struct Struct_1 {
    a: vec3<i32>,
    b: vec2<f32>,
    c: vec2<bool>,
    d: vec2<i32>,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
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

var<private> global0: Struct_1 = Struct_1(vec3<i32>(57035i, -1i, 0i), vec2<f32>(995f, 368f), vec2<bool>(false, true), vec2<i32>(0i, -1i), vec3<f32>(-1523f, -1000f, 149f));

var<private> global1: array<vec3<f32>, 16> = array<vec3<f32>, 16>(vec3<f32>(-1000f, -262f, 441f), vec3<f32>(-1017f, -1367f, 629f), vec3<f32>(300f, -947f, -541f), vec3<f32>(-994f, 464f, -906f), vec3<f32>(-1000f, -164f, 1000f), vec3<f32>(707f, -107f, -291f), vec3<f32>(1201f, 2192f, -562f), vec3<f32>(1000f, -1386f, 1102f), vec3<f32>(-350f, -729f, -247f), vec3<f32>(889f, 360f, -105f), vec3<f32>(608f, 3247f, -513f), vec3<f32>(241f, -1398f, -606f), vec3<f32>(530f, -651f, 777f), vec3<f32>(471f, -1014f, 508f), vec3<f32>(419f, 1052f, 1151f), vec3<f32>(1254f, 401f, -198f));

var<private> global2: array<vec4<u32>, 29>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_i32(global0.d.x, 0i) | u_input.a.x);
}

