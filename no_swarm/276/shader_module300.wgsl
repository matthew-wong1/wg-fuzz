struct Struct_1 {
    a: vec4<f32>,
    b: vec2<i32>,
    c: u32,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: vec2<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec3<u32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 18>;

var<private> global1: array<Struct_3, 6> = array<Struct_3, 6>(Struct_3(Struct_2(Struct_1(vec4<f32>(706f, 1000f, 932f, 1288f), vec2<i32>(i32(-2147483648), -1885i), 1u, false), Struct_1(vec4<f32>(969f, 480f, 565f, 1015f), vec2<i32>(8375i, 4675i), 4294967295u, true), 209f, vec2<bool>(false, true)), 78164u, Struct_1(vec4<f32>(-1021f, -323f, 781f, -439f), vec2<i32>(2147483647i, -9849i), 66646u, false)), Struct_3(Struct_2(Struct_1(vec4<f32>(-1000f, -1485f, 2443f, -1211f), vec2<i32>(i32(-2147483648), 48375i), 1u, true), Struct_1(vec4<f32>(-639f, 289f, 574f, -631f), vec2<i32>(40242i, -1i), 120287u, false), -621f, vec2<bool>(true, false)), 4294967295u, Struct_1(vec4<f32>(-1516f, 1996f, 316f, -1554f), vec2<i32>(-91400i, -44921i), 46734u, true)), Struct_3(Struct_2(Struct_1(vec4<f32>(-1484f, 662f, 191f, -1000f), vec2<i32>(-26559i, -32653i), 1u, true), Struct_1(vec4<f32>(-211f, 669f, 1083f, 1638f), vec2<i32>(-71357i, -9714i), 1u, false), -319f, vec2<bool>(true, true)), 1u, Struct_1(vec4<f32>(985f, 1000f, 809f, 306f), vec2<i32>(-68266i, 2147483647i), 73983u, true)), Struct_3(Struct_2(Struct_1(vec4<f32>(218f, 750f, 329f, 1966f), vec2<i32>(76866i, i32(-2147483648)), 0u, true), Struct_1(vec4<f32>(-757f, -591f, -356f, 1162f), vec2<i32>(0i, -23314i), 51829u, true), -1000f, vec2<bool>(true, false)), 31154u, Struct_1(vec4<f32>(1198f, -1382f, 825f, -742f), vec2<i32>(-37673i, -4859i), 1u, false)), Struct_3(Struct_2(Struct_1(vec4<f32>(1559f, -1908f, 1322f, 248f), vec2<i32>(73688i, 35420i), 1u, false), Struct_1(vec4<f32>(-329f, -189f, 872f, -713f), vec2<i32>(-42345i, 34104i), 0u, false), 1000f, vec2<bool>(false, true)), 0u, Struct_1(vec4<f32>(1121f, -1019f, -126f, 1257f), vec2<i32>(-1i, 1i), 1u, false)), Struct_3(Struct_2(Struct_1(vec4<f32>(420f, -544f, 631f, 202f), vec2<i32>(5917i, i32(-2147483648)), 0u, false), Struct_1(vec4<f32>(1246f, -1000f, -202f, 1883f), vec2<i32>(13668i, -1i), 0u, true), -172f, vec2<bool>(false, false)), 0u, Struct_1(vec4<f32>(542f, 240f, 1462f, -137f), vec2<i32>(-29925i, i32(-2147483648)), 51482u, true)));

var<private> global2: Struct_4 = Struct_4(Struct_2(Struct_1(vec4<f32>(281f, 1585f, 1000f, -834f), vec2<i32>(30456i, i32(-2147483648)), 4294967295u, true), Struct_1(vec4<f32>(-1002f, 1120f, -1896f, 1000f), vec2<i32>(-1i, 50929i), 31577u, true), -238f, vec2<bool>(false, false)), Struct_3(Struct_2(Struct_1(vec4<f32>(-1411f, -747f, -882f, 714f), vec2<i32>(-7970i, -1i), 39393u, false), Struct_1(vec4<f32>(762f, -1000f, -154f, 375f), vec2<i32>(7450i, 0i), 1u, true), -314f, vec2<bool>(true, true)), 0u, Struct_1(vec4<f32>(-618f, -1000f, 1606f, -1000f), vec2<i32>(44621i, -1i), 1u, true)), vec2<i32>(-27427i, i32(-2147483648)));

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(reverseBits(global2.b.c.b.x), global2.a.a.b.x ^ ~(~global2.b.a.b.b.x)), abs(~vec2<u32>(1u, 1u)), _wgslsmith_clamp_vec3_u32(countOneBits(_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, 2056u, 53005u), ~vec3<u32>(global2.a.a.c, global2.a.b.c, global2.a.a.c))), ~(~abs(vec3<u32>(51965u, global2.a.a.c, global2.a.a.c))), _wgslsmith_add_vec3_u32(select(_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 25726u, u_input.a), vec3<u32>(5581u, u_input.a, global2.b.c.c)), ~vec3<u32>(20904u, 91999u, 0u), global2.b.c.d), vec3<u32>(1u, u_input.a, 1u))), _wgslsmith_clamp_vec2_u32(vec2<u32>(max(global2.b.b, _wgslsmith_div_u32(u_input.a, u_input.a)), global2.a.b.c), _wgslsmith_mod_vec2_u32(firstTrailingBit(~vec2<u32>(u_input.a, 98480u)), vec2<u32>(_wgslsmith_add_u32(1u, global2.b.c.c), ~global2.a.a.c)), ~vec2<u32>(~u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, global2.a.b.c, global2.a.a.c), vec3<u32>(1u, u_input.a, global2.a.b.c)))));
}

