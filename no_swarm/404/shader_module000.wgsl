struct Struct_1 {
    a: vec3<u32>,
    b: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 25>;

var<private> global1: i32 = i32(-2147483648);

var<private> global2: array<Struct_1, 21> = array<Struct_1, 21>(Struct_1(vec3<u32>(28075u, 38378u, 43590u), -1459f), Struct_1(vec3<u32>(4294967295u, 0u, 91773u), -1044f), Struct_1(vec3<u32>(4294967295u, 0u, 74172u), -2112f), Struct_1(vec3<u32>(33669u, 59164u, 10046u), -832f), Struct_1(vec3<u32>(1u, 8148u, 22097u), -106f), Struct_1(vec3<u32>(1u, 7632u, 0u), -671f), Struct_1(vec3<u32>(1u, 39663u, 43918u), 1428f), Struct_1(vec3<u32>(0u, 103412u, 28638u), 548f), Struct_1(vec3<u32>(4294967295u, 4294967295u, 0u), 938f), Struct_1(vec3<u32>(71036u, 0u, 0u), 1015f), Struct_1(vec3<u32>(0u, 25137u, 29483u), 669f), Struct_1(vec3<u32>(4294967295u, 29994u, 75570u), -1690f), Struct_1(vec3<u32>(4294967295u, 4294967295u, 0u), -3479f), Struct_1(vec3<u32>(24165u, 1u, 1u), -686f), Struct_1(vec3<u32>(43455u, 23228u, 1u), 1084f), Struct_1(vec3<u32>(4294967295u, 1u, 48423u), 1505f), Struct_1(vec3<u32>(0u, 1u, 0u), 503f), Struct_1(vec3<u32>(25356u, 0u, 93447u), -1743f), Struct_1(vec3<u32>(60999u, 0u, 1u), 2502f), Struct_1(vec3<u32>(0u, 38876u, 1u), 478f), Struct_1(vec3<u32>(20634u, 1241u, 13684u), -1146f));

var<private> global3: array<u32, 21> = array<u32, 21>(34610u, 34630u, 27168u, 0u, 0u, 4294967295u, 47534u, 95998u, 36811u, 4294967295u, 18233u, 87678u, 1u, 38639u, 15281u, 0u, 0u, 1u, 46716u, 57002u, 0u);

var<private> global4: Struct_1 = Struct_1(vec3<u32>(1u, 4294967295u, 4294967295u), 802f);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.a << (vec2<u32>((u_input.c ^ 1790u) << (58875u % 32u), global3[_wgslsmith_index_u32(~32762u, 21u)]) % vec2<u32>(32u)), ~u_input.c, global3[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(58511u, 21u)], 21u)], ~vec4<u32>(global4.a.x, global3[_wgslsmith_index_u32(4294967295u, 21u)], ~62228u, global3[_wgslsmith_index_u32(global4.a.x, 21u)]));
}

