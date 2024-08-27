struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: vec4<bool>,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: f32,
    d: Struct_2,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: f32,
    d: vec3<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<Struct_3, 19> = array<Struct_3, 19>(Struct_3(-460f, Struct_1(vec3<i32>(1i, 25015i, 1i), false, vec4<bool>(false, true, true, false)), -256f, Struct_2(vec3<bool>(true, false, false)), vec3<f32>(508f, 546f, 406f)), Struct_3(-602f, Struct_1(vec3<i32>(15819i, i32(-2147483648), -19844i), false, vec4<bool>(false, false, true, false)), 223f, Struct_2(vec3<bool>(true, true, false)), vec3<f32>(-100f, -305f, 1287f)), Struct_3(-810f, Struct_1(vec3<i32>(-1i, 0i, -1i), false, vec4<bool>(true, false, true, false)), -1065f, Struct_2(vec3<bool>(true, true, false)), vec3<f32>(-1425f, 1447f, -248f)), Struct_3(-1230f, Struct_1(vec3<i32>(2147483647i, -47170i, -90855i), false, vec4<bool>(true, false, false, true)), 765f, Struct_2(vec3<bool>(true, true, false)), vec3<f32>(272f, 1524f, -856f)), Struct_3(-572f, Struct_1(vec3<i32>(1i, 4749i, -30391i), false, vec4<bool>(true, false, false, true)), 1000f, Struct_2(vec3<bool>(true, false, false)), vec3<f32>(1189f, -400f, 1818f)), Struct_3(661f, Struct_1(vec3<i32>(73260i, 13096i, -1i), false, vec4<bool>(false, false, false, false)), 229f, Struct_2(vec3<bool>(false, false, true)), vec3<f32>(-1159f, 166f, 393f)), Struct_3(1000f, Struct_1(vec3<i32>(-48050i, 65520i, 53708i), true, vec4<bool>(false, false, false, true)), 620f, Struct_2(vec3<bool>(true, false, true)), vec3<f32>(760f, -1042f, 224f)), Struct_3(842f, Struct_1(vec3<i32>(i32(-2147483648), i32(-2147483648), 0i), false, vec4<bool>(false, true, false, true)), 708f, Struct_2(vec3<bool>(true, true, false)), vec3<f32>(209f, -589f, 1000f)), Struct_3(-1214f, Struct_1(vec3<i32>(-5825i, i32(-2147483648), 11100i), false, vec4<bool>(true, true, false, true)), -220f, Struct_2(vec3<bool>(true, false, false)), vec3<f32>(-902f, -1414f, -1440f)), Struct_3(1120f, Struct_1(vec3<i32>(-79645i, 1i, i32(-2147483648)), true, vec4<bool>(false, false, false, true)), -466f, Struct_2(vec3<bool>(true, false, false)), vec3<f32>(-1122f, 1000f, 1000f)), Struct_3(-1167f, Struct_1(vec3<i32>(17849i, -1i, 36894i), true, vec4<bool>(true, false, true, false)), -159f, Struct_2(vec3<bool>(true, true, true)), vec3<f32>(-2681f, 1000f, -1000f)), Struct_3(-1426f, Struct_1(vec3<i32>(24763i, 28597i, 0i), false, vec4<bool>(true, true, true, true)), -1000f, Struct_2(vec3<bool>(false, false, false)), vec3<f32>(782f, -495f, 759f)), Struct_3(1798f, Struct_1(vec3<i32>(-1i, 27406i, i32(-2147483648)), true, vec4<bool>(false, false, true, true)), -317f, Struct_2(vec3<bool>(true, false, false)), vec3<f32>(1000f, -1368f, 1495f)), Struct_3(-2149f, Struct_1(vec3<i32>(2147483647i, -11795i, 2147483647i), false, vec4<bool>(true, false, false, false)), 447f, Struct_2(vec3<bool>(false, true, false)), vec3<f32>(240f, -731f, 366f)), Struct_3(147f, Struct_1(vec3<i32>(2147483647i, -1i, -1i), true, vec4<bool>(true, true, false, true)), 330f, Struct_2(vec3<bool>(false, false, true)), vec3<f32>(1000f, 276f, 1000f)), Struct_3(1199f, Struct_1(vec3<i32>(-13539i, -73999i, 58364i), true, vec4<bool>(true, true, false, false)), 120f, Struct_2(vec3<bool>(true, true, true)), vec3<f32>(-1785f, 282f, 1200f)), Struct_3(268f, Struct_1(vec3<i32>(-1i, -16450i, -1i), true, vec4<bool>(false, true, true, true)), -470f, Struct_2(vec3<bool>(true, true, false)), vec3<f32>(-1436f, 1252f, 447f)), Struct_3(-1000f, Struct_1(vec3<i32>(2147483647i, -1i, 2147483647i), false, vec4<bool>(true, true, false, false)), -1000f, Struct_2(vec3<bool>(false, true, true)), vec3<f32>(-275f, 1117f, 150f)), Struct_3(-712f, Struct_1(vec3<i32>(0i, 1i, 7607i), true, vec4<bool>(false, true, false, true)), -329f, Struct_2(vec3<bool>(false, false, true)), vec3<f32>(-720f, -193f, -500f)));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(u_input.b, -(~abs(u_input.b)), ~_wgslsmith_add_i32(1i, 1i)), vec2<u32>(30102u, 1u), global0.e.x, global0.b.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a)));
}

