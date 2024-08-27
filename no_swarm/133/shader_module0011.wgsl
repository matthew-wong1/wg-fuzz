struct Struct_1 {
    a: vec3<bool>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec3<bool>,
    c: Struct_2,
    d: vec2<bool>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<bool>,
    c: vec3<i32>,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec4<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(1577f, 1227f, 228f, 601f);

var<private> global1: Struct_2 = Struct_2(Struct_1(vec3<bool>(true, true, false), vec2<u32>(45527u, 55561u)), vec3<u32>(481u, 1u, 4294967295u));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    var var_1 = true;
    var var_2 = vec3<i32>(1i, _wgslsmith_div_i32(u_input.d, -57579i), ~_wgslsmith_clamp_i32(-2147483647i, u_input.a | 29289i, countOneBits(abs(u_input.a))));
    let x = u_input.a;
    s_output = StorageBuffer(global1.b, u_input.b, _wgslsmith_sub_vec4_u32(~(vec4<u32>(global1.b.x, 4294967295u, 16181u, 0u) | vec4<u32>(1u, 33766u, 0u, u_input.b)), select(vec4<u32>(0u, global1.a.b.x, u_input.c.x, global1.b.x) & vec4<u32>(global1.b.x, u_input.c.x, global1.b.x, u_input.c.x), select(vec4<u32>(u_input.b, 21525u, u_input.c.x, global1.a.b.x), vec4<u32>(global1.b.x, u_input.b, u_input.b, 10290u), var_0), true)) | ~_wgslsmith_clamp_vec4_u32(vec4<u32>(global1.a.b.x, 18889u, 0u, 4294967295u) << (vec4<u32>(u_input.b, 22007u, 1u, 4294967295u) % vec4<u32>(32u)), abs(vec4<u32>(4294967295u, 4294967295u, u_input.b, u_input.b)), ~vec4<u32>(global1.b.x, global1.b.x, 0u, u_input.b)), ~1u);
}

