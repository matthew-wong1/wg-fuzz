struct Struct_1 {
    a: vec4<i32>,
    b: vec4<i32>,
    c: u32,
    d: i32,
    e: vec3<u32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec3<bool>,
    c: vec2<i32>,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(1571f, 1866f, 2292f);

var<private> global1: array<Struct_1, 9> = array<Struct_1, 9>(Struct_1(vec4<i32>(27705i, i32(-2147483648), 0i, 2147483647i), vec4<i32>(2147483647i, 852i, 34283i, 1i), 4294967295u, -36467i, vec3<u32>(35659u, 4294967295u, 3166u)), Struct_1(vec4<i32>(1i, 2147483647i, 10133i, -15578i), vec4<i32>(-1i, 93365i, -38049i, -15122i), 34964u, -1i, vec3<u32>(1u, 26298u, 1u)), Struct_1(vec4<i32>(2147483647i, -1i, i32(-2147483648), 2147483647i), vec4<i32>(0i, 44712i, 25128i, 0i), 1u, 36204i, vec3<u32>(1u, 10877u, 1u)), Struct_1(vec4<i32>(0i, -1i, -1i, -1i), vec4<i32>(-12048i, 0i, 2147483647i, i32(-2147483648)), 4267u, -1596i, vec3<u32>(1u, 43335u, 4294967295u)), Struct_1(vec4<i32>(i32(-2147483648), 2147483647i, -2946i, 1i), vec4<i32>(-1i, -2864i, 2147483647i, 96910i), 1u, 4364i, vec3<u32>(0u, 4294967295u, 47759u)), Struct_1(vec4<i32>(0i, 65620i, 2147483647i, i32(-2147483648)), vec4<i32>(-34974i, 1i, 27589i, 2147483647i), 86098u, 668i, vec3<u32>(4294967295u, 1u, 0u)), Struct_1(vec4<i32>(23039i, 26165i, 10851i, 2147483647i), vec4<i32>(-13714i, -3829i, -16167i, -4038i), 16149u, -1i, vec3<u32>(29538u, 21899u, 17299u)), Struct_1(vec4<i32>(i32(-2147483648), 21765i, 0i, 17528i), vec4<i32>(i32(-2147483648), 0i, -31598i, 34572i), 0u, 2147483647i, vec3<u32>(14226u, 83804u, 1u)), Struct_1(vec4<i32>(951i, 1i, -2932i, 0i), vec4<i32>(55026i, i32(-2147483648), -1i, -1i), 5930u, -16990i, vec3<u32>(0u, 38481u, 65611u)));

var<private> global2: array<Struct_1, 22>;

var<private> global3: vec3<u32> = vec3<u32>(1u, 39376u, 54296u);

var<private> global4: vec2<f32>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec2<u32>(~75295u << (countOneBits(0u) % 32u), 14802u)), _wgslsmith_mod_i32(1i, -1i), ~(-(i32(-1i) * -u_input.b.x)));
}

