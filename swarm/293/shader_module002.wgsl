struct Struct_1 {
    a: i32,
    b: f32,
    c: u32,
    d: bool,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: i32,
    d: vec2<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_1, 28> = array<Struct_1, 28>(Struct_1(8654i, 665f, 70390u, false, vec3<f32>(194f, 2192f, 666f)), Struct_1(0i, -676f, 15727u, true, vec3<f32>(1000f, -990f, -120f)), Struct_1(2147483647i, -761f, 1u, false, vec3<f32>(470f, 1093f, -816f)), Struct_1(-20116i, 1759f, 1u, false, vec3<f32>(1055f, 1920f, -1638f)), Struct_1(2147483647i, 1000f, 0u, true, vec3<f32>(-1033f, -1976f, -655f)), Struct_1(-35744i, 727f, 4294967295u, false, vec3<f32>(-211f, 863f, -1092f)), Struct_1(i32(-2147483648), 1098f, 4294967295u, false, vec3<f32>(-1101f, -950f, -1681f)), Struct_1(-31918i, 160f, 4606u, true, vec3<f32>(-2345f, -385f, -1078f)), Struct_1(10588i, -1247f, 0u, true, vec3<f32>(700f, -478f, -1823f)), Struct_1(11844i, 1860f, 4294967295u, true, vec3<f32>(-369f, 614f, -237f)), Struct_1(i32(-2147483648), -143f, 4294967295u, true, vec3<f32>(1142f, -1410f, 1000f)), Struct_1(1i, -205f, 0u, true, vec3<f32>(-1736f, 665f, -302f)), Struct_1(-39691i, 1177f, 0u, false, vec3<f32>(-373f, 1167f, -1066f)), Struct_1(-1i, -208f, 32156u, false, vec3<f32>(-1471f, -330f, 327f)), Struct_1(-23255i, -676f, 0u, true, vec3<f32>(1000f, -602f, -2042f)), Struct_1(20106i, 865f, 0u, true, vec3<f32>(584f, -322f, 978f)), Struct_1(20064i, -736f, 39099u, true, vec3<f32>(207f, 364f, 1047f)), Struct_1(0i, -1799f, 53397u, false, vec3<f32>(-621f, 2906f, 324f)), Struct_1(-23242i, 1450f, 4294967295u, false, vec3<f32>(755f, -1084f, -1115f)), Struct_1(4263i, 1394f, 48142u, false, vec3<f32>(835f, -1916f, -1579f)), Struct_1(14244i, 3014f, 20659u, true, vec3<f32>(1689f, 171f, -735f)), Struct_1(-16085i, 991f, 83528u, false, vec3<f32>(-858f, 559f, -748f)), Struct_1(-19512i, -1076f, 7315u, true, vec3<f32>(331f, 1559f, 124f)), Struct_1(1i, 171f, 4294967295u, true, vec3<f32>(-803f, 659f, -1547f)), Struct_1(16617i, 741f, 4294967295u, false, vec3<f32>(360f, 1861f, 108f)), Struct_1(i32(-2147483648), 203f, 0u, false, vec3<f32>(-1409f, -1060f, 864f)), Struct_1(i32(-2147483648), 765f, 41570u, false, vec3<f32>(-1054f, -1280f, 888f)), Struct_1(1i, 491f, 0u, true, vec3<f32>(-728f, -294f, -876f)));

var<private> global2: array<Struct_1, 24> = array<Struct_1, 24>(Struct_1(0i, 397f, 3102u, true, vec3<f32>(813f, 722f, -597f)), Struct_1(2147483647i, -369f, 0u, true, vec3<f32>(994f, -271f, 657f)), Struct_1(941i, -1705f, 15232u, false, vec3<f32>(-405f, -817f, -532f)), Struct_1(0i, 427f, 26866u, false, vec3<f32>(757f, -761f, 1729f)), Struct_1(63689i, -211f, 1u, true, vec3<f32>(-643f, -780f, 815f)), Struct_1(i32(-2147483648), -398f, 0u, false, vec3<f32>(-1015f, 493f, -951f)), Struct_1(2147483647i, -719f, 4294967295u, false, vec3<f32>(893f, -1495f, -1058f)), Struct_1(16955i, 103f, 0u, false, vec3<f32>(437f, -455f, 1959f)), Struct_1(1i, -1267f, 71969u, false, vec3<f32>(-765f, 684f, 399f)), Struct_1(20495i, 312f, 75283u, false, vec3<f32>(431f, -645f, 2043f)), Struct_1(44363i, 1205f, 4294967295u, true, vec3<f32>(814f, 995f, 555f)), Struct_1(-8573i, 254f, 0u, true, vec3<f32>(-551f, 1301f, 1000f)), Struct_1(0i, 934f, 1u, false, vec3<f32>(-298f, -1019f, 586f)), Struct_1(-1i, -726f, 19856u, true, vec3<f32>(795f, -845f, -1015f)), Struct_1(-1i, 805f, 4294967295u, true, vec3<f32>(1000f, 750f, -1000f)), Struct_1(0i, -787f, 1u, true, vec3<f32>(500f, 2382f, -1117f)), Struct_1(i32(-2147483648), -1380f, 64066u, true, vec3<f32>(-783f, 1655f, -560f)), Struct_1(i32(-2147483648), 631f, 4294967295u, false, vec3<f32>(-1641f, -305f, 673f)), Struct_1(i32(-2147483648), 1083f, 1u, true, vec3<f32>(-736f, -337f, 803f)), Struct_1(-24812i, -346f, 0u, true, vec3<f32>(-1497f, -468f, 1000f)), Struct_1(0i, 1000f, 22481u, true, vec3<f32>(1277f, 1109f, 834f)), Struct_1(-42638i, 757f, 9363u, true, vec3<f32>(660f, 1389f, -1449f)), Struct_1(12914i, -413f, 1u, false, vec3<f32>(1523f, 519f, 624f)), Struct_1(2425i, 289f, 1u, true, vec3<f32>(-1409f, -122f, -1119f)));

var<private> global3: array<vec3<bool>, 1> = array<vec3<bool>, 1>(vec3<bool>(true, true, false));

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(u_input.a.x, _wgslsmith_sub_i32(u_input.c, -1i), -14742i), firstLeadingBit(vec2<u32>(global0.c & _wgslsmith_clamp_u32(4043u, u_input.d.x, 60796u), global0.c)), _wgslsmith_mult_vec2_i32(u_input.a, ~abs(u_input.e) | ~select(u_input.a, vec2<i32>(u_input.b.x, u_input.c), false)));
}

