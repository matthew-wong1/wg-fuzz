struct Struct_1 {
    a: vec3<f32>,
    b: u32,
    c: vec4<i32>,
    d: u32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: vec4<i32>,
    d: u32,
    e: vec3<bool>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_2,
    c: Struct_2,
    d: u32,
    e: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec4<u32>,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -644f;

var<private> global1: array<Struct_2, 16> = array<Struct_2, 16>(Struct_2(vec2<f32>(-1099f, -726f), Struct_1(vec3<f32>(1339f, -924f, 404f), 1u, vec4<i32>(34789i, -38064i, 1i, 0i), 45824u), vec4<i32>(-1i, 0i, -2970i, -29558i), 76618u, vec3<bool>(false, false, true)), Struct_2(vec2<f32>(-1306f, 1724f), Struct_1(vec3<f32>(449f, 1128f, 1319f), 80753u, vec4<i32>(i32(-2147483648), i32(-2147483648), -51573i, 7876i), 1u), vec4<i32>(42170i, 2147483647i, -1i, -27187i), 30987u, vec3<bool>(true, true, false)), Struct_2(vec2<f32>(-773f, -1479f), Struct_1(vec3<f32>(1000f, -1000f, 470f), 41492u, vec4<i32>(41202i, -27095i, -54016i, 24597i), 18875u), vec4<i32>(-1i, i32(-2147483648), 8153i, -1i), 48544u, vec3<bool>(true, false, true)), Struct_2(vec2<f32>(-441f, 1000f), Struct_1(vec3<f32>(-729f, 1000f, -298f), 0u, vec4<i32>(i32(-2147483648), -19575i, 9483i, -30089i), 112469u), vec4<i32>(29511i, 18318i, -1i, -92035i), 53263u, vec3<bool>(false, false, true)), Struct_2(vec2<f32>(521f, 603f), Struct_1(vec3<f32>(1296f, -1000f, 334f), 54186u, vec4<i32>(i32(-2147483648), -17487i, 1i, 1i), 1u), vec4<i32>(-29401i, 28045i, 2147483647i, 2147483647i), 2960u, vec3<bool>(false, false, false)), Struct_2(vec2<f32>(-337f, 1213f), Struct_1(vec3<f32>(716f, 1000f, 581f), 45984u, vec4<i32>(-37005i, -1i, 2513i, 17909i), 1u), vec4<i32>(2147483647i, i32(-2147483648), -1i, 0i), 1u, vec3<bool>(true, true, false)), Struct_2(vec2<f32>(-1634f, 1331f), Struct_1(vec3<f32>(445f, -714f, -612f), 4294967295u, vec4<i32>(i32(-2147483648), -1i, 2509i, -9355i), 37236u), vec4<i32>(2147483647i, i32(-2147483648), -1i, 5704i), 1u, vec3<bool>(false, true, true)), Struct_2(vec2<f32>(1634f, -1407f), Struct_1(vec3<f32>(-1519f, -559f, 1000f), 25242u, vec4<i32>(1i, -16934i, 1i, -1i), 77336u), vec4<i32>(-16465i, 8431i, 40005i, 1i), 0u, vec3<bool>(false, true, false)), Struct_2(vec2<f32>(-422f, 576f), Struct_1(vec3<f32>(-707f, -1000f, -801f), 4294967295u, vec4<i32>(2147483647i, 0i, -24157i, -4139i), 1u), vec4<i32>(2147483647i, 39222i, i32(-2147483648), -20225i), 18718u, vec3<bool>(true, true, false)), Struct_2(vec2<f32>(285f, -343f), Struct_1(vec3<f32>(-199f, -2026f, 544f), 1u, vec4<i32>(51073i, i32(-2147483648), 2147483647i, 15304i), 65068u), vec4<i32>(-2177i, -1i, 1i, -1i), 1u, vec3<bool>(false, false, false)), Struct_2(vec2<f32>(-506f, -401f), Struct_1(vec3<f32>(-1008f, -377f, -1671f), 33983u, vec4<i32>(42046i, 64357i, 23201i, i32(-2147483648)), 41110u), vec4<i32>(-35287i, -90176i, 2147483647i, i32(-2147483648)), 46591u, vec3<bool>(false, true, true)), Struct_2(vec2<f32>(853f, -1215f), Struct_1(vec3<f32>(-2121f, -136f, 119f), 52241u, vec4<i32>(44274i, 0i, -43893i, i32(-2147483648)), 1u), vec4<i32>(2147483647i, 49174i, -8238i, 0i), 35463u, vec3<bool>(true, false, true)), Struct_2(vec2<f32>(406f, -683f), Struct_1(vec3<f32>(940f, -690f, 1295f), 56568u, vec4<i32>(-19222i, 2147483647i, 20652i, -24357i), 48100u), vec4<i32>(0i, -5830i, -1i, 0i), 36u, vec3<bool>(true, true, true)), Struct_2(vec2<f32>(851f, -1000f), Struct_1(vec3<f32>(485f, 1000f, 118f), 1u, vec4<i32>(-4353i, -5112i, -45183i, -1i), 0u), vec4<i32>(-1i, -21611i, 2147483647i, 1779i), 0u, vec3<bool>(false, true, true)), Struct_2(vec2<f32>(894f, 356f), Struct_1(vec3<f32>(2157f, 168f, -1515f), 0u, vec4<i32>(-23161i, 5674i, 0i, 1i), 11660u), vec4<i32>(0i, 1i, i32(-2147483648), 0i), 4294967295u, vec3<bool>(false, true, true)), Struct_2(vec2<f32>(-1517f, -873f), Struct_1(vec3<f32>(-916f, -498f, -1000f), 4294967295u, vec4<i32>(2147483647i, 1i, 0i, -26182i), 90774u), vec4<i32>(1i, 1i, 26437i, -26364i), 1u, vec3<bool>(true, true, true)));

var<private> global2: Struct_1 = Struct_1(vec3<f32>(-1372f, 1087f, 1384f), 100091u, vec4<i32>(-15270i, -1i, -24411i, -54127i), 4294967295u);

var<private> global3: Struct_3;

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(-1i) * -global3.c.b.c);
}

