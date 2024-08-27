struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: vec2<f32>,
    d: vec4<f32>,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: vec3<f32>,
    b: Struct_4,
    c: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 20> = array<Struct_3, 20>(Struct_3(false, Struct_1(-1660f), vec2<f32>(-1000f, 1000f), vec4<f32>(-1000f, -1122f, -1636f, 557f)), Struct_3(true, Struct_1(-442f), vec2<f32>(616f, 430f), vec4<f32>(-1788f, 491f, -494f, 1729f)), Struct_3(true, Struct_1(801f), vec2<f32>(549f, 629f), vec4<f32>(-1093f, -1597f, 686f, -1392f)), Struct_3(true, Struct_1(232f), vec2<f32>(-743f, -396f), vec4<f32>(1039f, -1000f, 309f, 1229f)), Struct_3(true, Struct_1(-2197f), vec2<f32>(457f, 1000f), vec4<f32>(889f, 653f, 1256f, -1641f)), Struct_3(false, Struct_1(183f), vec2<f32>(-917f, 837f), vec4<f32>(-1050f, -803f, -2488f, 769f)), Struct_3(true, Struct_1(-126f), vec2<f32>(-491f, -1076f), vec4<f32>(-440f, -757f, 435f, 1621f)), Struct_3(true, Struct_1(908f), vec2<f32>(1264f, 1297f), vec4<f32>(364f, 1060f, -1000f, 1388f)), Struct_3(false, Struct_1(1000f), vec2<f32>(687f, -403f), vec4<f32>(-368f, 1224f, 1732f, -870f)), Struct_3(false, Struct_1(-872f), vec2<f32>(-476f, -478f), vec4<f32>(-1444f, -448f, 1000f, -693f)), Struct_3(false, Struct_1(391f), vec2<f32>(-564f, -137f), vec4<f32>(-348f, -401f, -761f, 905f)), Struct_3(false, Struct_1(841f), vec2<f32>(-1000f, -649f), vec4<f32>(-1550f, -147f, 284f, -1487f)), Struct_3(false, Struct_1(-420f), vec2<f32>(-790f, 993f), vec4<f32>(-1203f, 1080f, 647f, -598f)), Struct_3(false, Struct_1(-820f), vec2<f32>(-544f, 992f), vec4<f32>(1610f, -478f, 1590f, 527f)), Struct_3(false, Struct_1(-151f), vec2<f32>(736f, 279f), vec4<f32>(725f, 636f, 301f, -167f)), Struct_3(false, Struct_1(-161f), vec2<f32>(1168f, 729f), vec4<f32>(1963f, -480f, -835f, 1000f)), Struct_3(true, Struct_1(638f), vec2<f32>(-918f, -1454f), vec4<f32>(-1376f, -720f, -1000f, 118f)), Struct_3(true, Struct_1(1344f), vec2<f32>(-1000f, 810f), vec4<f32>(1325f, -788f, -306f, -481f)), Struct_3(true, Struct_1(-1000f), vec2<f32>(897f, -1371f), vec4<f32>(-1531f, 156f, -538f, 1000f)), Struct_3(true, Struct_1(113f), vec2<f32>(1003f, -514f), vec4<f32>(-670f, -189f, 1816f, -1036f)));

var<private> global1: Struct_4 = Struct_4(Struct_1(-1389f));

var<private> global2: array<Struct_2, 26> = array<Struct_2, 26>(Struct_2(vec2<i32>(61763i, 0i)), Struct_2(vec2<i32>(i32(-2147483648), -1i)), Struct_2(vec2<i32>(-1i, 2147483647i)), Struct_2(vec2<i32>(-1i, 9379i)), Struct_2(vec2<i32>(-8964i, 13483i)), Struct_2(vec2<i32>(-25252i, -15651i)), Struct_2(vec2<i32>(2147483647i, i32(-2147483648))), Struct_2(vec2<i32>(0i, 0i)), Struct_2(vec2<i32>(-10190i, 24642i)), Struct_2(vec2<i32>(0i, -14636i)), Struct_2(vec2<i32>(38169i, i32(-2147483648))), Struct_2(vec2<i32>(25234i, -36220i)), Struct_2(vec2<i32>(2147483647i, 1371i)), Struct_2(vec2<i32>(-2067i, 0i)), Struct_2(vec2<i32>(i32(-2147483648), 30549i)), Struct_2(vec2<i32>(-4029i, 1i)), Struct_2(vec2<i32>(-1i, i32(-2147483648))), Struct_2(vec2<i32>(1i, 13957i)), Struct_2(vec2<i32>(-47452i, -6761i)), Struct_2(vec2<i32>(-1i, 6118i)), Struct_2(vec2<i32>(30623i, 4715i)), Struct_2(vec2<i32>(-29711i, 2147483647i)), Struct_2(vec2<i32>(1i, 2147483647i)), Struct_2(vec2<i32>(i32(-2147483648), 16533i)), Struct_2(vec2<i32>(10304i, 61i)), Struct_2(vec2<i32>(0i, 15863i)));

var<private> global3: array<Struct_2, 25>;

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_2, 25>();
    let x = u_input.a;
    s_output = StorageBuffer(17964i, -5832i);
}

