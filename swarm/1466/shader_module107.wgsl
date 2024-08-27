struct Struct_1 {
    a: vec3<f32>,
    b: bool,
    c: vec4<f32>,
    d: f32,
    e: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: vec4<u32>,
    d: f32,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
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

var<private> global0: array<Struct_2, 19> = array<Struct_2, 19>(Struct_2(Struct_1(vec3<f32>(503f, -528f, -144f), true, vec4<f32>(325f, 369f, -680f, 1000f), 1242f, vec2<u32>(1u, 4294967295u)), vec4<i32>(0i, -31711i, 81671i, 1i), vec4<u32>(15829u, 4294967295u, 18162u, 29149u), -1000f, vec4<u32>(1u, 304u, 1u, 4294967295u)), Struct_2(Struct_1(vec3<f32>(320f, 110f, -1006f), false, vec4<f32>(-357f, -2155f, 1000f, 856f), -1074f, vec2<u32>(4294967295u, 21295u)), vec4<i32>(-272i, 29035i, 8796i, i32(-2147483648)), vec4<u32>(18921u, 7148u, 51956u, 86735u), 558f, vec4<u32>(10669u, 0u, 0u, 0u)), Struct_2(Struct_1(vec3<f32>(338f, 273f, -1000f), true, vec4<f32>(-1051f, 206f, -629f, -1341f), -300f, vec2<u32>(4294967295u, 89599u)), vec4<i32>(2703i, 2147483647i, 12885i, 1i), vec4<u32>(1023u, 49308u, 97347u, 0u), -699f, vec4<u32>(0u, 21370u, 0u, 19330u)), Struct_2(Struct_1(vec3<f32>(-405f, -592f, -1006f), true, vec4<f32>(1309f, 796f, 1000f, -1993f), -678f, vec2<u32>(1u, 37377u)), vec4<i32>(0i, 39191i, i32(-2147483648), 0i), vec4<u32>(1u, 4294967295u, 8830u, 4294967295u), 1000f, vec4<u32>(21165u, 81232u, 12916u, 56704u)), Struct_2(Struct_1(vec3<f32>(-817f, 350f, -1878f), true, vec4<f32>(410f, -1000f, -959f, -325f), 608f, vec2<u32>(48348u, 0u)), vec4<i32>(-43244i, -30945i, -22124i, 7623i), vec4<u32>(0u, 61255u, 14352u, 17320u), -1000f, vec4<u32>(6271u, 17127u, 4294967295u, 1u)), Struct_2(Struct_1(vec3<f32>(496f, 673f, -374f), true, vec4<f32>(-1883f, 788f, -133f, 227f), -399f, vec2<u32>(1u, 0u)), vec4<i32>(i32(-2147483648), i32(-2147483648), i32(-2147483648), 27315i), vec4<u32>(87685u, 1u, 1u, 4294967295u), 1400f, vec4<u32>(1u, 4294967295u, 4294967295u, 1u)), Struct_2(Struct_1(vec3<f32>(-508f, -615f, 607f), false, vec4<f32>(1260f, -174f, -996f, -1000f), 978f, vec2<u32>(17568u, 1u)), vec4<i32>(1133i, -1i, -1i, 2147483647i), vec4<u32>(1u, 44951u, 4105u, 11356u), 1000f, vec4<u32>(27247u, 1u, 5184u, 0u)), Struct_2(Struct_1(vec3<f32>(379f, 709f, 631f), false, vec4<f32>(-1306f, -622f, 1279f, 1040f), 1677f, vec2<u32>(11118u, 0u)), vec4<i32>(i32(-2147483648), -1i, 19464i, 4106i), vec4<u32>(77552u, 31182u, 4294967295u, 1u), 1215f, vec4<u32>(26322u, 0u, 1u, 1u)), Struct_2(Struct_1(vec3<f32>(285f, -1756f, 623f), false, vec4<f32>(-2132f, -899f, 1475f, -921f), 1033f, vec2<u32>(0u, 0u)), vec4<i32>(-56300i, -1i, -36251i, 2147483647i), vec4<u32>(4294967295u, 15299u, 91199u, 1u), -594f, vec4<u32>(20965u, 99224u, 30244u, 0u)), Struct_2(Struct_1(vec3<f32>(-1435f, 614f, 929f), false, vec4<f32>(-890f, -673f, -780f, 1494f), -590f, vec2<u32>(0u, 4294967295u)), vec4<i32>(0i, -1i, 14416i, 1i), vec4<u32>(4294967295u, 68009u, 21697u, 1608u), 103f, vec4<u32>(45507u, 4294967295u, 4294967295u, 28803u)), Struct_2(Struct_1(vec3<f32>(572f, -347f, 2162f), true, vec4<f32>(-2935f, -631f, -291f, -123f), 1889f, vec2<u32>(60573u, 2409u)), vec4<i32>(-1i, 1i, i32(-2147483648), 36341i), vec4<u32>(16719u, 0u, 47034u, 0u), 1113f, vec4<u32>(4294967295u, 41111u, 0u, 4294967295u)), Struct_2(Struct_1(vec3<f32>(-1045f, -1281f, -638f), false, vec4<f32>(-1000f, 1000f, 1848f, -576f), -1253f, vec2<u32>(4098u, 23842u)), vec4<i32>(2147483647i, 1i, 2147483647i, 45580i), vec4<u32>(4294967295u, 1u, 4115u, 19369u), 642f, vec4<u32>(1u, 35559u, 1u, 4294967295u)), Struct_2(Struct_1(vec3<f32>(295f, -1000f, 569f), true, vec4<f32>(-1000f, 1647f, 468f, 395f), -1000f, vec2<u32>(4294967295u, 4294967295u)), vec4<i32>(-1i, -32702i, -44614i, i32(-2147483648)), vec4<u32>(22820u, 4294967295u, 25356u, 4294967295u), 517f, vec4<u32>(1802u, 28102u, 4294967295u, 30568u)), Struct_2(Struct_1(vec3<f32>(1073f, -2260f, 2372f), false, vec4<f32>(-1457f, 812f, -1000f, -113f), 1000f, vec2<u32>(1u, 71815u)), vec4<i32>(-1i, 1i, 35544i, -7473i), vec4<u32>(6563u, 20163u, 0u, 4294967295u), -986f, vec4<u32>(4294967295u, 34851u, 74116u, 0u)), Struct_2(Struct_1(vec3<f32>(-621f, -759f, -246f), true, vec4<f32>(152f, 313f, -977f, 1523f), 1000f, vec2<u32>(0u, 4294967295u)), vec4<i32>(6740i, -36326i, 16534i, 0i), vec4<u32>(4294967295u, 0u, 11554u, 24284u), -969f, vec4<u32>(1u, 1u, 20002u, 64894u)), Struct_2(Struct_1(vec3<f32>(-2058f, 981f, 502f), true, vec4<f32>(-2405f, -156f, -781f, 1235f), 626f, vec2<u32>(1u, 1u)), vec4<i32>(-16691i, 38934i, 1i, 23026i), vec4<u32>(52909u, 4294967295u, 21618u, 40293u), 1483f, vec4<u32>(10081u, 25722u, 23428u, 4294967295u)), Struct_2(Struct_1(vec3<f32>(306f, 1000f, 720f), false, vec4<f32>(-1000f, -1899f, -276f, 1000f), 638f, vec2<u32>(1u, 73750u)), vec4<i32>(-1i, 30313i, 9831i, i32(-2147483648)), vec4<u32>(1u, 46793u, 1u, 4294967295u), -1776f, vec4<u32>(28993u, 0u, 0u, 0u)), Struct_2(Struct_1(vec3<f32>(-2367f, 619f, -1029f), true, vec4<f32>(968f, 991f, -258f, 767f), -1599f, vec2<u32>(15972u, 79219u)), vec4<i32>(2147483647i, 1i, -51909i, 45819i), vec4<u32>(54511u, 0u, 59696u, 4294967295u), 421f, vec4<u32>(45068u, 163u, 14728u, 53972u)), Struct_2(Struct_1(vec3<f32>(-1221f, -666f, 1627f), true, vec4<f32>(-903f, -921f, -1055f, 550f), 1226f, vec2<u32>(45479u, 0u)), vec4<i32>(0i, i32(-2147483648), -13996i, 1i), vec4<u32>(41279u, 1u, 1u, 17327u), 1230f, vec4<u32>(111110u, 1u, 1u, 30230u)));

var<private> global1: array<vec3<f32>, 7> = array<vec3<f32>, 7>(vec3<f32>(-244f, 1422f, 1000f), vec3<f32>(1000f, 495f, -1000f), vec3<f32>(956f, 1099f, 843f), vec3<f32>(-543f, 756f, -135f), vec3<f32>(-2233f, 1263f, -2658f), vec3<f32>(275f, -2720f, 362f), vec3<f32>(-423f, 425f, 2563f));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(~(~43812u), _wgslsmith_mult_i32(_wgslsmith_sub_i32(u_input.a.x, -firstLeadingBit(u_input.a.x)), -1i));
}

