struct Struct_1 {
    a: vec3<f32>,
    b: vec2<bool>,
    c: vec3<bool>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: u32,
    c: vec3<bool>,
    d: vec4<f32>,
    e: vec2<bool>,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<f32>,
}

struct Struct_5 {
    a: Struct_1,
    b: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 25> = array<vec3<i32>, 25>(vec3<i32>(i32(-2147483648), i32(-2147483648), 1i), vec3<i32>(1i, 19797i, 40165i), vec3<i32>(31239i, 2141i, -46328i), vec3<i32>(2147483647i, -1i, 2147483647i), vec3<i32>(i32(-2147483648), 2147483647i, -59019i), vec3<i32>(0i, 3604i, i32(-2147483648)), vec3<i32>(1i, 1i, 22874i), vec3<i32>(i32(-2147483648), 25449i, 21688i), vec3<i32>(2147483647i, -1i, 38620i), vec3<i32>(-24506i, i32(-2147483648), 39862i), vec3<i32>(1i, 2147483647i, -21803i), vec3<i32>(2147483647i, -7040i, 2147483647i), vec3<i32>(2147483647i, -8942i, -1i), vec3<i32>(43634i, -8641i, 21324i), vec3<i32>(2147483647i, 8936i, 0i), vec3<i32>(1i, -1i, i32(-2147483648)), vec3<i32>(i32(-2147483648), -1i, -50569i), vec3<i32>(i32(-2147483648), -1i, -60072i), vec3<i32>(i32(-2147483648), 1i, i32(-2147483648)), vec3<i32>(-8250i, -52089i, i32(-2147483648)), vec3<i32>(14728i, 0i, i32(-2147483648)), vec3<i32>(-52530i, 1i, i32(-2147483648)), vec3<i32>(42916i, 12914i, -6080i), vec3<i32>(0i, -24879i, -37914i), vec3<i32>(i32(-2147483648), 1972i, 64843i));

var<private> global1: array<bool, 24>;

var<private> global2: Struct_2 = Struct_2(vec2<f32>(1000f, -601f), 4294967295u, vec3<bool>(true, true, true), vec4<f32>(-582f, 120f, 1249f, -1745f), vec2<bool>(false, false));

var<private> global3: array<vec4<i32>, 24> = array<vec4<i32>, 24>(vec4<i32>(-4846i, 0i, 2147483647i, 1i), vec4<i32>(-1346i, 2147483647i, 2147483647i, i32(-2147483648)), vec4<i32>(-5336i, 2147483647i, 30527i, -30794i), vec4<i32>(-1i, -8583i, -2552i, i32(-2147483648)), vec4<i32>(0i, 2836i, -28172i, -60421i), vec4<i32>(1i, -16510i, 2147483647i, 301i), vec4<i32>(11644i, 2147483647i, 2147483647i, -27878i), vec4<i32>(2147483647i, -19839i, 0i, i32(-2147483648)), vec4<i32>(0i, 56671i, -70231i, -12332i), vec4<i32>(1i, -10256i, 21498i, 2147483647i), vec4<i32>(1i, -1i, 47355i, 0i), vec4<i32>(87817i, -13109i, 18498i, i32(-2147483648)), vec4<i32>(-38701i, 1i, i32(-2147483648), -9353i), vec4<i32>(-18018i, 13569i, 1i, 0i), vec4<i32>(1i, 0i, i32(-2147483648), -21906i), vec4<i32>(-1i, -22704i, -654i, 2147483647i), vec4<i32>(6667i, -32780i, 31234i, -34369i), vec4<i32>(2147483647i, 7336i, -1i, 1i), vec4<i32>(i32(-2147483648), -54271i, 2147483647i, 14966i), vec4<i32>(-1i, -36257i, 8041i, -8845i), vec4<i32>(1i, 2147483647i, 13527i, i32(-2147483648)), vec4<i32>(0i, 2147483647i, 1i, -6282i), vec4<i32>(-10832i, 7835i, -3276i, i32(-2147483648)), vec4<i32>(-4352i, 1i, -1i, -1i));

var<private> global4: Struct_3;

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<i32>, 25>();
    let x = u_input.a;
    s_output = StorageBuffer(global2.d.x, global4.a, 2147483647i);
}

