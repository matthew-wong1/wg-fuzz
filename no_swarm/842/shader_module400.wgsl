struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(Struct_1(vec4<i32>(64332i, 28425i, 3943i, i32(-2147483648))), Struct_2(Struct_1(vec4<i32>(-40212i, -1i, 2147483647i, 1i)), true, Struct_1(vec4<i32>(1i, 1i, 63614i, 1i)), Struct_1(vec4<i32>(-1i, -1167i, -1i, 35046i))), -184f);

var<private> global1: array<vec4<i32>, 31> = array<vec4<i32>, 31>(vec4<i32>(15328i, -1i, -1i, 2147483647i), vec4<i32>(8898i, -1i, -11514i, 1i), vec4<i32>(-1i, 31067i, 1507i, 21487i), vec4<i32>(-29198i, 1i, -11490i, 1i), vec4<i32>(1i, 52188i, 10495i, -15841i), vec4<i32>(-1i, 2147483647i, 0i, 11797i), vec4<i32>(23320i, -5580i, 4770i, 28296i), vec4<i32>(-37226i, 1i, -51772i, -29578i), vec4<i32>(-3505i, 1i, -4788i, -1i), vec4<i32>(0i, -1i, -34077i, -1i), vec4<i32>(-39375i, i32(-2147483648), -23290i, 12854i), vec4<i32>(1i, 7193i, -26924i, 0i), vec4<i32>(i32(-2147483648), -1i, 39187i, 1i), vec4<i32>(22958i, -18761i, i32(-2147483648), 15636i), vec4<i32>(21219i, i32(-2147483648), 2147483647i, -1i), vec4<i32>(2551i, -18431i, -67287i, 0i), vec4<i32>(8550i, i32(-2147483648), 1i, 1i), vec4<i32>(-62515i, 14476i, -50162i, i32(-2147483648)), vec4<i32>(9200i, 0i, -23165i, 0i), vec4<i32>(1i, 1i, 0i, 2147483647i), vec4<i32>(-48418i, -47205i, 0i, 18790i), vec4<i32>(-17358i, 0i, 44008i, 2147483647i), vec4<i32>(62861i, i32(-2147483648), 17615i, 1i), vec4<i32>(i32(-2147483648), 3611i, -47174i, i32(-2147483648)), vec4<i32>(2147483647i, 2147483647i, -1i, 1i), vec4<i32>(0i, 10008i, i32(-2147483648), 43773i), vec4<i32>(10557i, -22365i, 3319i, i32(-2147483648)), vec4<i32>(0i, -53255i, -8595i, 15169i), vec4<i32>(-41187i, -15633i, -1i, i32(-2147483648)), vec4<i32>(2147483647i, 2147483647i, -83129i, 0i), vec4<i32>(i32(-2147483648), -1i, -46051i, 1i));

var<private> global2: i32;

var<private> global3: array<vec4<bool>, 18>;

var<private> global4: array<vec3<bool>, 10>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<i32>, 31>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.c, 1000f, global0.c)), vec3<i32>(22814i, -68642i, ~_wgslsmith_dot_vec3_i32(-vec3<i32>(global0.a.a.x, global0.a.a.x, global0.b.a.a.x), global0.a.a.xxy << (vec3<u32>(0u, 0u, u_input.c) % vec3<u32>(32u)))), 1u);
}

