struct Struct_1 {
    a: vec2<u32>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: vec2<u32>,
}

struct Struct_3 {
    a: vec4<i32>,
}

struct Struct_4 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: vec4<i32>;

var<private> global2: array<Struct_2, 13> = array<Struct_2, 13>(Struct_2(Struct_1(vec2<u32>(1u, 38319u), vec4<u32>(4294967295u, 7661u, 0u, 4294967295u)), vec4<i32>(-5704i, -11693i, -7856i, -1i), vec2<u32>(1u, 1u)), Struct_2(Struct_1(vec2<u32>(0u, 6633u), vec4<u32>(4294967295u, 0u, 101153u, 0u)), vec4<i32>(-39842i, 19033i, 25062i, 4877i), vec2<u32>(4294967295u, 13862u)), Struct_2(Struct_1(vec2<u32>(1u, 4294967295u), vec4<u32>(17025u, 0u, 44552u, 4294967295u)), vec4<i32>(0i, 0i, -27687i, 45897i), vec2<u32>(25421u, 11842u)), Struct_2(Struct_1(vec2<u32>(4294967295u, 6613u), vec4<u32>(4294967295u, 0u, 78990u, 59269u)), vec4<i32>(0i, -20133i, -28534i, 1i), vec2<u32>(1u, 1u)), Struct_2(Struct_1(vec2<u32>(41277u, 0u), vec4<u32>(68072u, 51964u, 44350u, 0u)), vec4<i32>(-17158i, -1606i, i32(-2147483648), 43949i), vec2<u32>(29745u, 4294967295u)), Struct_2(Struct_1(vec2<u32>(12282u, 825u), vec4<u32>(35078u, 4294967295u, 1u, 77454u)), vec4<i32>(-1i, -29094i, 28479i, 29495i), vec2<u32>(51692u, 33033u)), Struct_2(Struct_1(vec2<u32>(3433u, 25553u), vec4<u32>(35951u, 4917u, 9657u, 9869u)), vec4<i32>(-13565i, 0i, -1i, 1i), vec2<u32>(12261u, 4294967295u)), Struct_2(Struct_1(vec2<u32>(46555u, 6596u), vec4<u32>(47497u, 11073u, 4294967295u, 1u)), vec4<i32>(-10904i, 1i, 22808i, 1i), vec2<u32>(0u, 0u)), Struct_2(Struct_1(vec2<u32>(0u, 4294967295u), vec4<u32>(43199u, 1u, 43077u, 1u)), vec4<i32>(-1i, 0i, 0i, -22956i), vec2<u32>(4294967295u, 1u)), Struct_2(Struct_1(vec2<u32>(25987u, 18239u), vec4<u32>(0u, 25321u, 4294967295u, 0u)), vec4<i32>(29252i, -51799i, 0i, 0i), vec2<u32>(28755u, 64281u)), Struct_2(Struct_1(vec2<u32>(21696u, 17849u), vec4<u32>(23837u, 96752u, 0u, 49548u)), vec4<i32>(-21375i, -13234i, i32(-2147483648), i32(-2147483648)), vec2<u32>(56898u, 4294967295u)), Struct_2(Struct_1(vec2<u32>(0u, 11684u), vec4<u32>(2226u, 4294967295u, 0u, 4294967295u)), vec4<i32>(32440i, -1i, -1i, 44879i), vec2<u32>(1u, 4294967295u)), Struct_2(Struct_1(vec2<u32>(5303u, 4294967295u), vec4<u32>(49097u, 43404u, 0u, 47399u)), vec4<i32>(55547i, -15353i, -53712i, 0i), vec2<u32>(1u, 25472u)));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<i32>(~0i, ~u_input.a, _wgslsmith_dot_vec2_i32(-select(global1.zz, vec2<i32>(u_input.a, 24023i), any(vec2<bool>(false, true))), vec2<i32>(-26010i, -(global1.x << (global0.x % 32u)))));
    let x = u_input.a;
    s_output = StorageBuffer(-(~_wgslsmith_div_vec3_i32(vec3<i32>(-24555i, 2650i, var_0.x), vec3<i32>(-29785i, u_input.b.x, 61225i)) >> (abs(~vec3<u32>(global0.x, global0.x, 0u)) % vec3<u32>(32u))));
}

