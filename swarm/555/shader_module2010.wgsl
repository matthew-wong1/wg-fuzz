struct Struct_1 {
    a: f32,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec2<i32>,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 11>;

var<private> global1: array<vec3<i32>, 22> = array<vec3<i32>, 22>(vec3<i32>(17187i, i32(-2147483648), -7812i), vec3<i32>(1i, 2147483647i, i32(-2147483648)), vec3<i32>(8743i, 1i, 3245i), vec3<i32>(-45067i, 1i, i32(-2147483648)), vec3<i32>(1i, 1i, -1i), vec3<i32>(17598i, 35858i, 35174i), vec3<i32>(2147483647i, i32(-2147483648), -8640i), vec3<i32>(0i, -38595i, 33207i), vec3<i32>(i32(-2147483648), 52521i, i32(-2147483648)), vec3<i32>(11735i, -15043i, 2147483647i), vec3<i32>(i32(-2147483648), 17725i, 19531i), vec3<i32>(1i, 23507i, 0i), vec3<i32>(-9983i, 0i, -83004i), vec3<i32>(-46534i, 2147483647i, -1i), vec3<i32>(-1i, 1i, i32(-2147483648)), vec3<i32>(-36725i, -20423i, -3977i), vec3<i32>(28592i, 1i, 64619i), vec3<i32>(2147483647i, -2143i, 16118i), vec3<i32>(2147483647i, 30385i, 0i), vec3<i32>(-32803i, 1i, 21084i), vec3<i32>(i32(-2147483648), -1i, 1i), vec3<i32>(42721i, i32(-2147483648), -10028i));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 11>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d, _wgslsmith_div_i32(2147483647i, -1i));
}

