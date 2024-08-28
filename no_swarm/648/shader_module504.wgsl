struct Struct_1 {
    a: f32,
    b: u32,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 24>;

var<private> global1: array<Struct_1, 32> = array<Struct_1, 32>(Struct_1(-1040f, 0u, vec3<f32>(216f, -1943f, -1733f)), Struct_1(1782f, 4294967295u, vec3<f32>(878f, 1425f, 1000f)), Struct_1(-241f, 42091u, vec3<f32>(-799f, 637f, -1000f)), Struct_1(-1000f, 0u, vec3<f32>(120f, 868f, 1000f)), Struct_1(-459f, 0u, vec3<f32>(910f, 353f, 218f)), Struct_1(1000f, 0u, vec3<f32>(1540f, 225f, -414f)), Struct_1(1729f, 1u, vec3<f32>(-1000f, -1440f, -738f)), Struct_1(-401f, 9646u, vec3<f32>(-775f, -305f, 1000f)), Struct_1(206f, 62828u, vec3<f32>(-1675f, 859f, -980f)), Struct_1(-646f, 1u, vec3<f32>(-693f, -1384f, -1000f)), Struct_1(810f, 0u, vec3<f32>(485f, 1687f, -2062f)), Struct_1(837f, 0u, vec3<f32>(849f, -287f, 1013f)), Struct_1(-992f, 60853u, vec3<f32>(1195f, 1383f, 325f)), Struct_1(429f, 46114u, vec3<f32>(2003f, -784f, 277f)), Struct_1(-1442f, 66514u, vec3<f32>(-360f, 518f, -517f)), Struct_1(-348f, 1u, vec3<f32>(173f, -526f, 498f)), Struct_1(1336f, 9351u, vec3<f32>(-484f, 1000f, -286f)), Struct_1(-974f, 0u, vec3<f32>(-1463f, 563f, -262f)), Struct_1(757f, 44377u, vec3<f32>(-1669f, -1883f, 307f)), Struct_1(-845f, 39962u, vec3<f32>(1000f, 1293f, 555f)), Struct_1(-274f, 26819u, vec3<f32>(501f, -421f, -530f)), Struct_1(1196f, 67098u, vec3<f32>(446f, -1131f, -315f)), Struct_1(-1072f, 75688u, vec3<f32>(1000f, 178f, -886f)), Struct_1(444f, 1u, vec3<f32>(-1340f, 829f, -1634f)), Struct_1(686f, 6494u, vec3<f32>(-1000f, 804f, 896f)), Struct_1(311f, 1u, vec3<f32>(-357f, 783f, -684f)), Struct_1(-650f, 12083u, vec3<f32>(1092f, -546f, -1390f)), Struct_1(611f, 0u, vec3<f32>(-302f, -610f, -982f)), Struct_1(1259f, 0u, vec3<f32>(-640f, 681f, -1352f)), Struct_1(-894f, 35277u, vec3<f32>(701f, 2721f, 792f)), Struct_1(790f, 372u, vec3<f32>(-1759f, -146f, -657f)), Struct_1(-659f, 25444u, vec3<f32>(587f, 1527f, 513f)));

var<private> global2: array<Struct_1, 27> = array<Struct_1, 27>(Struct_1(-284f, 601u, vec3<f32>(-723f, 896f, -982f)), Struct_1(492f, 4294967295u, vec3<f32>(1429f, -2343f, 656f)), Struct_1(1171f, 4294967295u, vec3<f32>(-535f, -625f, 236f)), Struct_1(808f, 0u, vec3<f32>(-747f, -416f, 1830f)), Struct_1(-1720f, 71439u, vec3<f32>(-862f, 1000f, 782f)), Struct_1(1129f, 22359u, vec3<f32>(-449f, 757f, -698f)), Struct_1(-429f, 23501u, vec3<f32>(-479f, -851f, 249f)), Struct_1(189f, 3715u, vec3<f32>(623f, 865f, -563f)), Struct_1(979f, 25852u, vec3<f32>(183f, -462f, -1827f)), Struct_1(-726f, 1u, vec3<f32>(171f, -177f, -2876f)), Struct_1(862f, 4294967295u, vec3<f32>(1000f, -3084f, -384f)), Struct_1(-555f, 101243u, vec3<f32>(1255f, 1870f, -745f)), Struct_1(-901f, 22831u, vec3<f32>(1862f, 334f, -999f)), Struct_1(-916f, 25382u, vec3<f32>(1013f, 356f, -322f)), Struct_1(-914f, 35772u, vec3<f32>(503f, -173f, -1000f)), Struct_1(-2079f, 16272u, vec3<f32>(1091f, 1150f, -2217f)), Struct_1(-439f, 13899u, vec3<f32>(-1166f, 253f, 1157f)), Struct_1(1251f, 98829u, vec3<f32>(1000f, -1066f, 1000f)), Struct_1(1436f, 0u, vec3<f32>(-839f, -325f, 222f)), Struct_1(1401f, 13819u, vec3<f32>(-1237f, 802f, -603f)), Struct_1(461f, 75159u, vec3<f32>(532f, -1101f, -851f)), Struct_1(180f, 1u, vec3<f32>(254f, -332f, -786f)), Struct_1(1203f, 4294967295u, vec3<f32>(-1000f, 898f, -2990f)), Struct_1(196f, 71397u, vec3<f32>(-767f, -1630f, -3177f)), Struct_1(1000f, 53423u, vec3<f32>(751f, -305f, -1128f)), Struct_1(277f, 0u, vec3<f32>(1145f, -606f, -212f)), Struct_1(-426f, 17662u, vec3<f32>(1535f, -102f, -1037f)));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(-vec2<i32>(_wgslsmith_clamp_i32(2147483647i, 2147483647i, 1i), ~31915i)), vec3<i32>(27209i, _wgslsmith_sub_i32(1i, -_wgslsmith_mod_i32(-24928i, 6391i)), _wgslsmith_sub_i32(_wgslsmith_div_i32(0i >> (0u % 32u), 2147483647i), 1i)));
}

