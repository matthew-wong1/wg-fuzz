struct Struct_1 {
    a: vec2<f32>,
    b: vec2<f32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 20> = array<vec4<i32>, 20>(vec4<i32>(i32(-2147483648), -25580i, 32022i, -6073i), vec4<i32>(375i, 1i, -14304i, 1i), vec4<i32>(2147483647i, -13908i, 15582i, 48033i), vec4<i32>(36155i, i32(-2147483648), -23354i, -30733i), vec4<i32>(16339i, 98845i, 1i, 46283i), vec4<i32>(-17318i, 0i, 5367i, -1i), vec4<i32>(-18541i, -1i, 0i, 2147483647i), vec4<i32>(1i, 12060i, -28579i, 21817i), vec4<i32>(0i, 1i, -34736i, 23874i), vec4<i32>(-69859i, 29255i, 5905i, 27648i), vec4<i32>(15482i, -33193i, -1i, 3631i), vec4<i32>(-10877i, 1520i, -44593i, 5131i), vec4<i32>(-1i, 1i, -1i, -1i), vec4<i32>(17876i, 2147483647i, 1i, 2147483647i), vec4<i32>(2017i, 2147483647i, 39176i, -47926i), vec4<i32>(0i, -12017i, -1i, 29399i), vec4<i32>(2147483647i, 0i, -58908i, -30091i), vec4<i32>(2147483647i, 7961i, 10159i, 19525i), vec4<i32>(-29291i, -1i, 1i, -31145i), vec4<i32>(-12670i, -26071i, 15944i, i32(-2147483648)));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<i32>, 20>();
    global0 = array<vec4<i32>, 20>();
    let var_0 = -13432i;
    let var_1 = vec3<i32>(1i, ~(-_wgslsmith_mod_i32(var_0 >> (u_input.b % 32u), _wgslsmith_sub_i32(20075i, var_0))), 122i);
    global0 = array<vec4<i32>, 20>();
    global0 = array<vec4<i32>, 20>();
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<i32>(var_0, ~var_1.x) << (~(countOneBits(vec2<u32>(u_input.a, 0u)) ^ vec2<u32>(u_input.b, 93539u)) % vec2<u32>(32u)));
}

