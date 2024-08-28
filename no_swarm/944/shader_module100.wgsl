struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: f32,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: vec3<u32>,
    e: u32,
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

var<private> global0: Struct_1 = Struct_1(-2410f, vec2<u32>(47337u, 1u), -1000f, vec2<i32>(26595i, 36677i));

var<private> global1: vec4<i32> = vec4<i32>(-47291i, 0i, 2147483647i, -20247i);

var<private> global2: array<Struct_1, 16>;

var<private> global3: array<Struct_1, 9> = array<Struct_1, 9>(Struct_1(376f, vec2<u32>(1u, 4294967295u), -1000f, vec2<i32>(-1i, -41850i)), Struct_1(-565f, vec2<u32>(37921u, 1u), 469f, vec2<i32>(2147483647i, 2147483647i)), Struct_1(960f, vec2<u32>(0u, 0u), 1054f, vec2<i32>(0i, -12963i)), Struct_1(-1606f, vec2<u32>(1u, 4294967295u), 419f, vec2<i32>(0i, -1i)), Struct_1(445f, vec2<u32>(7659u, 4294967295u), -301f, vec2<i32>(-1i, 2147483647i)), Struct_1(1000f, vec2<u32>(45592u, 31571u), -1441f, vec2<i32>(i32(-2147483648), 28099i)), Struct_1(1000f, vec2<u32>(72419u, 3231u), 1946f, vec2<i32>(1089i, i32(-2147483648))), Struct_1(-934f, vec2<u32>(1u, 4294967295u), -131f, vec2<i32>(-9972i, i32(-2147483648))), Struct_1(1048f, vec2<u32>(1u, 1u), -1328f, vec2<i32>(15617i, 2147483647i)));

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a);
}

