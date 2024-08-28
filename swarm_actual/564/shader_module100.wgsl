struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: vec4<bool>,
    d: u32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: vec3<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: Struct_3,
    b: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 23>;

var<private> global1: array<Struct_5, 21> = array<Struct_5, 21>(Struct_5(Struct_3(Struct_2(vec2<i32>(-13971i, 2147483647i), Struct_1(0u, vec4<f32>(475f, 176f, -1642f, 458f), vec4<bool>(true, true, false, false), 35173u), vec3<u32>(4294967295u, 23735u, 56703u)), Struct_2(vec2<i32>(51663i, -29407i), Struct_1(1u, vec4<f32>(268f, 461f, -676f, 124f), vec4<bool>(false, false, false, true), 14659u), vec3<u32>(1u, 19713u, 23985u))), false), Struct_5(Struct_3(Struct_2(vec2<i32>(i32(-2147483648), -3236i), Struct_1(0u, vec4<f32>(-2571f, 1000f, -735f, 1179f), vec4<bool>(true, false, true, false), 30166u), vec3<u32>(33173u, 1u, 4850u)), Struct_2(vec2<i32>(2147483647i, -32693i), Struct_1(1u, vec4<f32>(-1186f, -1000f, -557f, -738f), vec4<bool>(true, true, true, true), 0u), vec3<u32>(11921u, 0u, 50311u))), true), Struct_5(Struct_3(Struct_2(vec2<i32>(-57440i, 0i), Struct_1(0u, vec4<f32>(-513f, -510f, -858f, -120f), vec4<bool>(false, true, false, false), 42524u), vec3<u32>(1u, 4294967295u, 30224u)), Struct_2(vec2<i32>(-61584i, 24293i), Struct_1(0u, vec4<f32>(118f, 345f, 1134f, 1557f), vec4<bool>(false, true, true, false), 0u), vec3<u32>(4294967295u, 1u, 1u))), false), Struct_5(Struct_3(Struct_2(vec2<i32>(1442i, -1i), Struct_1(0u, vec4<f32>(1000f, 912f, 449f, 687f), vec4<bool>(false, true, true, true), 104091u), vec3<u32>(70112u, 19793u, 76711u)), Struct_2(vec2<i32>(i32(-2147483648), -2756i), Struct_1(17837u, vec4<f32>(-728f, 1000f, 127f, 449f), vec4<bool>(false, true, false, false), 47904u), vec3<u32>(49555u, 1u, 0u))), true), Struct_5(Struct_3(Struct_2(vec2<i32>(0i, -19385i), Struct_1(47810u, vec4<f32>(-479f, -249f, 1100f, 536f), vec4<bool>(false, true, false, true), 61102u), vec3<u32>(4294967295u, 4294967295u, 10974u)), Struct_2(vec2<i32>(-30229i, -1i), Struct_1(0u, vec4<f32>(-1282f, -1000f, -1464f, 584f), vec4<bool>(true, false, false, false), 1u), vec3<u32>(10236u, 0u, 4294967295u))), true), Struct_5(Struct_3(Struct_2(vec2<i32>(2877i, 5896i), Struct_1(4294967295u, vec4<f32>(-547f, 1009f, -1000f, 1192f), vec4<bool>(false, false, false, true), 66060u), vec3<u32>(1u, 64868u, 4998u)), Struct_2(vec2<i32>(-41594i, -22569i), Struct_1(55018u, vec4<f32>(1147f, -699f, 1841f, 850f), vec4<bool>(false, true, true, true), 12315u), vec3<u32>(27628u, 5241u, 61674u))), true), Struct_5(Struct_3(Struct_2(vec2<i32>(0i, 1i), Struct_1(0u, vec4<f32>(-589f, 1601f, -642f, -1208f), vec4<bool>(true, false, false, true), 4294967295u), vec3<u32>(1u, 0u, 4294967295u)), Struct_2(vec2<i32>(0i, -1i), Struct_1(4294967295u, vec4<f32>(-1419f, -2635f, 413f, -778f), vec4<bool>(true, true, false, true), 1u), vec3<u32>(0u, 1u, 1u))), true), Struct_5(Struct_3(Struct_2(vec2<i32>(-30750i, -1i), Struct_1(45471u, vec4<f32>(279f, 1000f, 130f, -684f), vec4<bool>(true, false, false, false), 4294967295u), vec3<u32>(34290u, 44991u, 8844u)), Struct_2(vec2<i32>(i32(-2147483648), i32(-2147483648)), Struct_1(25159u, vec4<f32>(1220f, -544f, 752f, 607f), vec4<bool>(false, true, false, false), 41582u), vec3<u32>(76472u, 4294967295u, 37997u))), false), Struct_5(Struct_3(Struct_2(vec2<i32>(-5961i, -34887i), Struct_1(0u, vec4<f32>(-678f, 300f, -799f, -263f), vec4<bool>(false, false, false, true), 53936u), vec3<u32>(1u, 6776u, 0u)), Struct_2(vec2<i32>(-77580i, -1i), Struct_1(6554u, vec4<f32>(-1203f, -1566f, -267f, 132f), vec4<bool>(false, true, true, false), 0u), vec3<u32>(50472u, 33312u, 71615u))), true), Struct_5(Struct_3(Struct_2(vec2<i32>(35194i, i32(-2147483648)), Struct_1(1u, vec4<f32>(1095f, 1394f, -1205f, 284f), vec4<bool>(false, false, true, true), 70523u), vec3<u32>(4294967295u, 4294967295u, 0u)), Struct_2(vec2<i32>(-429i, -39052i), Struct_1(1u, vec4<f32>(-2733f, 473f, 1181f, -597f), vec4<bool>(false, false, true, true), 16664u), vec3<u32>(0u, 4120u, 55907u))), false), Struct_5(Struct_3(Struct_2(vec2<i32>(-4272i, 42852i), Struct_1(41762u, vec4<f32>(-776f, 767f, -236f, 273f), vec4<bool>(true, false, true, false), 37333u), vec3<u32>(11165u, 68623u, 16438u)), Struct_2(vec2<i32>(-31790i, 18679i), Struct_1(61747u, vec4<f32>(457f, 189f, 1065f, 392f), vec4<bool>(false, false, false, true), 4294967295u), vec3<u32>(4294967295u, 8552u, 67435u))), false), Struct_5(Struct_3(Struct_2(vec2<i32>(2147483647i, -1i), Struct_1(1u, vec4<f32>(-1000f, -333f, 1000f, -1006f), vec4<bool>(false, true, true, true), 25022u), vec3<u32>(4294967295u, 1u, 4294967295u)), Struct_2(vec2<i32>(-10762i, 46445i), Struct_1(7231u, vec4<f32>(-990f, 962f, 485f, 1880f), vec4<bool>(false, false, true, false), 0u), vec3<u32>(11581u, 105344u, 4294967295u))), true), Struct_5(Struct_3(Struct_2(vec2<i32>(-35924i, i32(-2147483648)), Struct_1(12016u, vec4<f32>(-1316f, 1000f, -771f, -3779f), vec4<bool>(false, true, false, false), 45006u), vec3<u32>(0u, 36364u, 96691u)), Struct_2(vec2<i32>(9144i, 0i), Struct_1(56773u, vec4<f32>(-445f, -981f, 244f, 2864f), vec4<bool>(true, true, true, true), 2017u), vec3<u32>(0u, 4294967295u, 32413u))), false), Struct_5(Struct_3(Struct_2(vec2<i32>(11666i, i32(-2147483648)), Struct_1(0u, vec4<f32>(179f, 309f, -261f, 483f), vec4<bool>(true, false, false, false), 0u), vec3<u32>(1u, 1u, 1u)), Struct_2(vec2<i32>(19638i, 21321i), Struct_1(5221u, vec4<f32>(-1015f, -988f, -1334f, -1957f), vec4<bool>(true, false, true, false), 1u), vec3<u32>(26306u, 4294967295u, 54070u))), true), Struct_5(Struct_3(Struct_2(vec2<i32>(1i, i32(-2147483648)), Struct_1(16467u, vec4<f32>(181f, 1155f, 771f, 635f), vec4<bool>(true, false, false, true), 59696u), vec3<u32>(100471u, 0u, 26041u)), Struct_2(vec2<i32>(-54319i, 2147483647i), Struct_1(0u, vec4<f32>(1035f, 1000f, 1924f, -1000f), vec4<bool>(false, false, true, false), 0u), vec3<u32>(50224u, 38913u, 23595u))), false), Struct_5(Struct_3(Struct_2(vec2<i32>(16496i, -1i), Struct_1(17230u, vec4<f32>(-1000f, -1483f, -1720f, 1545f), vec4<bool>(true, false, true, false), 1u), vec3<u32>(4294967295u, 4294967295u, 1u)), Struct_2(vec2<i32>(1i, 1i), Struct_1(108412u, vec4<f32>(765f, 999f, 1975f, -653f), vec4<bool>(true, false, false, true), 66472u), vec3<u32>(4294967295u, 0u, 1u))), true), Struct_5(Struct_3(Struct_2(vec2<i32>(2147483647i, -41120i), Struct_1(76657u, vec4<f32>(124f, 586f, -1836f, -734f), vec4<bool>(false, true, false, true), 68842u), vec3<u32>(0u, 1u, 4294967295u)), Struct_2(vec2<i32>(17492i, 0i), Struct_1(43643u, vec4<f32>(-1024f, 640f, -957f, -444f), vec4<bool>(false, true, false, false), 1u), vec3<u32>(4294967295u, 1u, 12504u))), false), Struct_5(Struct_3(Struct_2(vec2<i32>(i32(-2147483648), 2147483647i), Struct_1(1u, vec4<f32>(1453f, -835f, -1044f, 1156f), vec4<bool>(true, false, false, true), 1u), vec3<u32>(1u, 4294967295u, 4294967295u)), Struct_2(vec2<i32>(-1i, 17543i), Struct_1(4294967295u, vec4<f32>(989f, -1234f, -1857f, -465f), vec4<bool>(true, false, true, false), 1u), vec3<u32>(42854u, 0u, 0u))), true), Struct_5(Struct_3(Struct_2(vec2<i32>(i32(-2147483648), 2147483647i), Struct_1(56196u, vec4<f32>(298f, -301f, 1853f, -878f), vec4<bool>(true, false, true, true), 0u), vec3<u32>(10967u, 14685u, 0u)), Struct_2(vec2<i32>(0i, -1i), Struct_1(67683u, vec4<f32>(-402f, 688f, 1549f, 506f), vec4<bool>(false, true, false, true), 85359u), vec3<u32>(0u, 4294967295u, 0u))), true), Struct_5(Struct_3(Struct_2(vec2<i32>(i32(-2147483648), 0i), Struct_1(0u, vec4<f32>(102f, -1156f, 2283f, -1000f), vec4<bool>(true, false, false, true), 1u), vec3<u32>(4294967295u, 2505u, 51628u)), Struct_2(vec2<i32>(-1i, -30660i), Struct_1(29355u, vec4<f32>(711f, -1000f, 319f, 970f), vec4<bool>(false, true, true, true), 0u), vec3<u32>(4294967295u, 8043u, 0u))), true), Struct_5(Struct_3(Struct_2(vec2<i32>(-32414i, 0i), Struct_1(33043u, vec4<f32>(-232f, 1278f, -458f, 1000f), vec4<bool>(true, false, false, true), 15455u), vec3<u32>(1u, 4294967295u, 0u)), Struct_2(vec2<i32>(0i, 2147483647i), Struct_1(9720u, vec4<f32>(-1698f, -1242f, 837f, -436f), vec4<bool>(true, false, false, false), 1u), vec3<u32>(4294967295u, 0u, 0u))), false));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec4_u32(~((vec4<u32>(u_input.a, u_input.a, u_input.a, 4294967295u) ^ vec4<u32>(4294967295u, 5487u, 11938u, u_input.a)) ^ select(vec4<u32>(u_input.a, 1u, 4294967295u, 14037u), vec4<u32>(0u, 11825u, u_input.a, 25346u), false)), _wgslsmith_mult_vec4_u32(~(~vec4<u32>(u_input.a, u_input.a, u_input.a, 1u)), vec4<u32>(u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.a, u_input.a), vec3<u32>(u_input.a, u_input.a, 4294967295u)), 94576u, _wgslsmith_clamp_u32(4294967295u, 4294967295u, u_input.a)))));
}

