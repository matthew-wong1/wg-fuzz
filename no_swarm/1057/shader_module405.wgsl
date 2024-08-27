struct Struct_1 {
    a: vec4<f32>,
    b: vec2<i32>,
    c: i32,
    d: vec2<f32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
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

var<private> global0: u32;

var<private> global1: array<vec4<i32>, 30> = array<vec4<i32>, 30>(vec4<i32>(-4249i, 79819i, 43411i, 37612i), vec4<i32>(i32(-2147483648), -49152i, 2147483647i, 21356i), vec4<i32>(0i, 12441i, 2147483647i, 20552i), vec4<i32>(-46236i, 2147483647i, 0i, 13582i), vec4<i32>(-16598i, -673i, -13122i, -7767i), vec4<i32>(16942i, 2147483647i, -1i, -1i), vec4<i32>(-5598i, i32(-2147483648), i32(-2147483648), 2147483647i), vec4<i32>(i32(-2147483648), -25912i, -7931i, -20945i), vec4<i32>(28544i, 29450i, -982i, 41231i), vec4<i32>(0i, 2147483647i, -3870i, 1i), vec4<i32>(0i, -1i, -1i, -7501i), vec4<i32>(0i, 0i, -34378i, 1i), vec4<i32>(43765i, -39230i, 752i, 26976i), vec4<i32>(1i, 43679i, 1i, 1i), vec4<i32>(1i, 53498i, 29717i, 2147483647i), vec4<i32>(-1i, -1i, 1i, 57848i), vec4<i32>(-45503i, 1i, 20000i, 2147483647i), vec4<i32>(-3905i, 0i, i32(-2147483648), 35937i), vec4<i32>(1i, 2147483647i, 15757i, -47488i), vec4<i32>(-1i, -1i, 2147483647i, 385i), vec4<i32>(36941i, 49753i, 0i, 1i), vec4<i32>(1i, -1i, i32(-2147483648), 2147483647i), vec4<i32>(-1i, -29072i, 1738i, -52815i), vec4<i32>(11511i, i32(-2147483648), i32(-2147483648), 1i), vec4<i32>(-37645i, 5151i, 0i, 24501i), vec4<i32>(1i, -21628i, -6020i, -1i), vec4<i32>(-25722i, 31901i, 2147483647i, 36304i), vec4<i32>(84685i, 0i, i32(-2147483648), 2147483647i), vec4<i32>(1i, -8255i, -30694i, -1i), vec4<i32>(22608i, -1i, 0i, -1i));

var<private> global2: array<f32, 28>;

var<private> global3: vec2<i32> = vec2<i32>(-1i, -1i);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(5500i, select(1i, -u_input.c ^ -1i, all(vec3<bool>(true, true, false)))));
}

