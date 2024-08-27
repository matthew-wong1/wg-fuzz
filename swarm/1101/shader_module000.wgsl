struct Struct_1 {
    a: f32,
    b: u32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec3<u32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: f32,
    c: vec4<i32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec2<u32>,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec3<bool>(false, false, false), vec3<u32>(1u, 69915u, 0u));

var<private> global1: i32;

var<private> global2: array<Struct_2, 27> = array<Struct_2, 27>(Struct_2(vec3<bool>(true, false, false), vec3<u32>(4294967295u, 13887u, 4294967295u)), Struct_2(vec3<bool>(false, true, false), vec3<u32>(121612u, 1u, 0u)), Struct_2(vec3<bool>(false, false, true), vec3<u32>(10173u, 4294967295u, 0u)), Struct_2(vec3<bool>(false, true, true), vec3<u32>(0u, 4294967295u, 1u)), Struct_2(vec3<bool>(false, true, true), vec3<u32>(82456u, 75031u, 4294967295u)), Struct_2(vec3<bool>(false, true, true), vec3<u32>(4294967295u, 11131u, 1592u)), Struct_2(vec3<bool>(false, true, false), vec3<u32>(1u, 40530u, 4294967295u)), Struct_2(vec3<bool>(true, false, false), vec3<u32>(10786u, 4294967295u, 4294967295u)), Struct_2(vec3<bool>(true, true, true), vec3<u32>(40524u, 0u, 1u)), Struct_2(vec3<bool>(false, false, false), vec3<u32>(24238u, 1u, 4294967295u)), Struct_2(vec3<bool>(false, true, true), vec3<u32>(33063u, 15775u, 1u)), Struct_2(vec3<bool>(true, true, false), vec3<u32>(17590u, 38532u, 7999u)), Struct_2(vec3<bool>(true, true, true), vec3<u32>(4294967295u, 30847u, 4294967295u)), Struct_2(vec3<bool>(false, false, true), vec3<u32>(13217u, 36145u, 60717u)), Struct_2(vec3<bool>(true, true, true), vec3<u32>(8949u, 4294967295u, 0u)), Struct_2(vec3<bool>(true, false, true), vec3<u32>(50484u, 3027u, 23714u)), Struct_2(vec3<bool>(false, true, false), vec3<u32>(4294967295u, 1u, 0u)), Struct_2(vec3<bool>(false, true, false), vec3<u32>(0u, 49837u, 4294967295u)), Struct_2(vec3<bool>(true, false, false), vec3<u32>(117763u, 4294967295u, 10469u)), Struct_2(vec3<bool>(false, false, false), vec3<u32>(4294967295u, 4294967295u, 50594u)), Struct_2(vec3<bool>(true, true, true), vec3<u32>(31253u, 12655u, 9406u)), Struct_2(vec3<bool>(false, true, true), vec3<u32>(22338u, 0u, 49257u)), Struct_2(vec3<bool>(true, false, true), vec3<u32>(1u, 27726u, 77339u)), Struct_2(vec3<bool>(false, false, false), vec3<u32>(0u, 23078u, 1u)), Struct_2(vec3<bool>(true, true, false), vec3<u32>(4294967295u, 1u, 25296u)), Struct_2(vec3<bool>(false, false, true), vec3<u32>(0u, 83994u, 34779u)), Struct_2(vec3<bool>(false, true, false), vec3<u32>(1u, 51005u, 0u)));

var<private> global3: array<Struct_2, 6> = array<Struct_2, 6>(Struct_2(vec3<bool>(false, true, true), vec3<u32>(76039u, 46740u, 4294967295u)), Struct_2(vec3<bool>(false, false, false), vec3<u32>(1u, 17549u, 35720u)), Struct_2(vec3<bool>(true, true, false), vec3<u32>(4294967295u, 4294967295u, 41031u)), Struct_2(vec3<bool>(true, true, true), vec3<u32>(12584u, 1u, 4294967295u)), Struct_2(vec3<bool>(false, false, false), vec3<u32>(57890u, 0u, 11573u)), Struct_2(vec3<bool>(false, false, false), vec3<u32>(25550u, 57394u, 0u)));

var<private> global4: vec4<i32>;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_i32(-vec3<i32>(global4.x, -2147483647i, -global4.x), global4.zwx & ~max(u_input.b.xwy, vec3<i32>(global4.x, global4.x, 0i))), global0.b);
}

