struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: i32,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
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

var<private> global0: array<u32, 11> = array<u32, 11>(0u, 1u, 1u, 0u, 0u, 6135u, 0u, 1u, 59373u, 4294967295u, 16818u);

var<private> global1: array<Struct_2, 23> = array<Struct_2, 23>(Struct_2(i32(-2147483648), vec3<f32>(516f, 1000f, -262f)), Struct_2(-112i, vec3<f32>(1043f, -473f, -504f)), Struct_2(-1i, vec3<f32>(-1000f, 1420f, 783f)), Struct_2(1i, vec3<f32>(-519f, -615f, -864f)), Struct_2(-1i, vec3<f32>(-707f, 212f, -365f)), Struct_2(12499i, vec3<f32>(2299f, 1400f, -585f)), Struct_2(i32(-2147483648), vec3<f32>(-188f, -220f, 644f)), Struct_2(3200i, vec3<f32>(-134f, 801f, -165f)), Struct_2(1i, vec3<f32>(521f, -892f, 321f)), Struct_2(-17128i, vec3<f32>(-937f, 377f, 301f)), Struct_2(-39313i, vec3<f32>(725f, 1000f, -923f)), Struct_2(-8229i, vec3<f32>(-383f, 612f, 260f)), Struct_2(-1i, vec3<f32>(-503f, 2122f, -809f)), Struct_2(1i, vec3<f32>(-158f, 756f, 1406f)), Struct_2(2147483647i, vec3<f32>(-1961f, -1068f, 1000f)), Struct_2(2147483647i, vec3<f32>(-1000f, -593f, -344f)), Struct_2(2147483647i, vec3<f32>(-823f, -895f, 246f)), Struct_2(1i, vec3<f32>(1965f, -1478f, 1276f)), Struct_2(20081i, vec3<f32>(-1354f, 514f, 306f)), Struct_2(-1i, vec3<f32>(-676f, 1014f, 1056f)), Struct_2(10260i, vec3<f32>(250f, -777f, -1109f)), Struct_2(7137i, vec3<f32>(1329f, 1804f, -490f)), Struct_2(0i, vec3<f32>(-1248f, 513f, 1000f)));

var<private> global2: array<f32, 6> = array<f32, 6>(-1000f, -1807f, -848f, -903f, -204f, 183f);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 11>();
    global2 = array<f32, 6>();
    let var_0 = global1[_wgslsmith_index_u32(u_input.c, 23u)];
    var var_1 = 115822u;
    var_1 = ~(~min(~4294967295u, ~min(0u, 0u)));
    let x = u_input.a;
    s_output = StorageBuffer(global0[_wgslsmith_index_u32(countOneBits(24295u), 11u)], vec3<u32>(11293u, u_input.c, 67142u));
}

