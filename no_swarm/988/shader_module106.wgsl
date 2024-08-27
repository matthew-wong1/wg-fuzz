struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: vec3<u32>,
    d: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: vec3<i32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: f32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: Struct_3,
    c: u32,
}

struct Struct_5 {
    a: Struct_4,
    b: vec3<f32>,
    c: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 25> = array<Struct_5, 25>(Struct_5(Struct_4(true, Struct_3(vec3<f32>(-615f, -1259f, 1800f), 1197f, Struct_1(false, vec2<f32>(-929f, -121f), vec3<u32>(4294967295u, 0u, 91937u), vec4<u32>(58321u, 9348u, 48749u, 26373u)), Struct_1(true, vec2<f32>(427f, 895f), vec3<u32>(84621u, 0u, 7733u), vec4<u32>(98803u, 84735u, 74132u, 19972u))), 1u), vec3<f32>(-1641f, 152f, 109f), false), Struct_5(Struct_4(true, Struct_3(vec3<f32>(639f, 285f, -342f), 1165f, Struct_1(true, vec2<f32>(-530f, 836f), vec3<u32>(32166u, 4294967295u, 1837u), vec4<u32>(8404u, 4294967295u, 12672u, 1u)), Struct_1(true, vec2<f32>(377f, 1439f), vec3<u32>(81275u, 24731u, 57166u), vec4<u32>(0u, 4294967295u, 4294967295u, 75346u))), 49430u), vec3<f32>(-937f, -1630f, 1265f), true), Struct_5(Struct_4(true, Struct_3(vec3<f32>(-1359f, -3743f, 1082f), -2078f, Struct_1(false, vec2<f32>(-662f, 266f), vec3<u32>(32608u, 0u, 12480u), vec4<u32>(1u, 1u, 31300u, 5337u)), Struct_1(false, vec2<f32>(-490f, 1050f), vec3<u32>(1u, 1u, 7194u), vec4<u32>(20002u, 1u, 18553u, 0u))), 4294967295u), vec3<f32>(358f, 1405f, -1759f), true), Struct_5(Struct_4(false, Struct_3(vec3<f32>(-1000f, -215f, 442f), 316f, Struct_1(true, vec2<f32>(-697f, 186f), vec3<u32>(1851u, 21521u, 88163u), vec4<u32>(1u, 0u, 21748u, 25810u)), Struct_1(false, vec2<f32>(687f, 1485f), vec3<u32>(1579u, 49024u, 4294967295u), vec4<u32>(31695u, 20409u, 1u, 0u))), 7086u), vec3<f32>(417f, -389f, 927f), true), Struct_5(Struct_4(false, Struct_3(vec3<f32>(-330f, -1080f, -868f), 579f, Struct_1(false, vec2<f32>(264f, 1372f), vec3<u32>(0u, 1u, 18156u), vec4<u32>(8535u, 1u, 1u, 0u)), Struct_1(true, vec2<f32>(-518f, -1942f), vec3<u32>(70980u, 23176u, 34804u), vec4<u32>(0u, 0u, 1u, 1u))), 1u), vec3<f32>(-1244f, -1536f, -1000f), true), Struct_5(Struct_4(false, Struct_3(vec3<f32>(188f, 1011f, 670f), -684f, Struct_1(false, vec2<f32>(638f, 2661f), vec3<u32>(1u, 1u, 12705u), vec4<u32>(1u, 0u, 1u, 1u)), Struct_1(true, vec2<f32>(-1964f, -562f), vec3<u32>(0u, 0u, 1u), vec4<u32>(4294967295u, 1u, 20101u, 1u))), 4294967295u), vec3<f32>(-351f, 1000f, -1070f), true), Struct_5(Struct_4(false, Struct_3(vec3<f32>(-1573f, -146f, 256f), -783f, Struct_1(false, vec2<f32>(-1049f, 2616f), vec3<u32>(31576u, 72008u, 0u), vec4<u32>(1u, 0u, 4738u, 64464u)), Struct_1(true, vec2<f32>(1056f, -1543f), vec3<u32>(4294967295u, 47602u, 8823u), vec4<u32>(22256u, 0u, 6868u, 4294967295u))), 0u), vec3<f32>(117f, 1000f, 663f), true), Struct_5(Struct_4(false, Struct_3(vec3<f32>(574f, -213f, -209f), -1000f, Struct_1(false, vec2<f32>(-596f, 208f), vec3<u32>(4294967295u, 33633u, 0u), vec4<u32>(37699u, 17970u, 19982u, 0u)), Struct_1(true, vec2<f32>(113f, 825f), vec3<u32>(1u, 30011u, 1u), vec4<u32>(121761u, 3133u, 4294967295u, 4294967295u))), 4294967295u), vec3<f32>(-437f, 145f, -282f), true), Struct_5(Struct_4(true, Struct_3(vec3<f32>(1455f, -764f, -1844f), 232f, Struct_1(true, vec2<f32>(370f, 985f), vec3<u32>(36385u, 4294967295u, 0u), vec4<u32>(31538u, 23717u, 0u, 0u)), Struct_1(true, vec2<f32>(984f, -1546f), vec3<u32>(55743u, 0u, 1u), vec4<u32>(1u, 7448u, 4284u, 84624u))), 4294967295u), vec3<f32>(-610f, -2243f, 2792f), true), Struct_5(Struct_4(true, Struct_3(vec3<f32>(143f, 687f, 345f), -831f, Struct_1(true, vec2<f32>(441f, 580f), vec3<u32>(1u, 20227u, 47196u), vec4<u32>(0u, 4294967295u, 0u, 4294967295u)), Struct_1(false, vec2<f32>(2416f, -974f), vec3<u32>(0u, 1u, 1u), vec4<u32>(7320u, 4294967295u, 4294967295u, 14389u))), 52546u), vec3<f32>(1894f, 2075f, -1295f), true), Struct_5(Struct_4(true, Struct_3(vec3<f32>(-1984f, -1199f, 509f), 490f, Struct_1(false, vec2<f32>(-1000f, -1000f), vec3<u32>(4294967295u, 0u, 9202u), vec4<u32>(4294967295u, 1u, 29379u, 611u)), Struct_1(false, vec2<f32>(1000f, 1786f), vec3<u32>(4294967295u, 4294967295u, 0u), vec4<u32>(18913u, 650u, 27668u, 68283u))), 1u), vec3<f32>(-1000f, 1223f, -997f), true), Struct_5(Struct_4(false, Struct_3(vec3<f32>(492f, 227f, 194f), 383f, Struct_1(true, vec2<f32>(-280f, -1000f), vec3<u32>(0u, 66266u, 0u), vec4<u32>(1u, 4294967295u, 4294967295u, 54252u)), Struct_1(true, vec2<f32>(368f, -716f), vec3<u32>(26901u, 0u, 1u), vec4<u32>(4294967295u, 0u, 0u, 4294967295u))), 37036u), vec3<f32>(-171f, -362f, 1312f), false), Struct_5(Struct_4(true, Struct_3(vec3<f32>(-745f, 627f, -1703f), 629f, Struct_1(true, vec2<f32>(1334f, -819f), vec3<u32>(63314u, 0u, 32902u), vec4<u32>(10340u, 0u, 28821u, 4294967295u)), Struct_1(false, vec2<f32>(-390f, 570f), vec3<u32>(37464u, 1u, 1u), vec4<u32>(4294967295u, 4294967295u, 4294967295u, 41438u))), 0u), vec3<f32>(121f, -435f, 1848f), true), Struct_5(Struct_4(false, Struct_3(vec3<f32>(-960f, 845f, 1000f), 111f, Struct_1(true, vec2<f32>(1000f, -315f), vec3<u32>(4294967295u, 86438u, 35050u), vec4<u32>(1u, 4294967295u, 44224u, 24855u)), Struct_1(true, vec2<f32>(2290f, -1243f), vec3<u32>(1u, 1u, 4294967295u), vec4<u32>(1u, 3780u, 8700u, 0u))), 1u), vec3<f32>(1720f, 1445f, 994f), true), Struct_5(Struct_4(true, Struct_3(vec3<f32>(554f, 1033f, 229f), 168f, Struct_1(true, vec2<f32>(-510f, 1051f), vec3<u32>(1u, 36669u, 7774u), vec4<u32>(42435u, 1u, 50624u, 9191u)), Struct_1(true, vec2<f32>(288f, -243f), vec3<u32>(0u, 0u, 88407u), vec4<u32>(4294967295u, 111409u, 76020u, 14784u))), 1u), vec3<f32>(-543f, 480f, 954f), true), Struct_5(Struct_4(true, Struct_3(vec3<f32>(-241f, 570f, -1000f), 284f, Struct_1(true, vec2<f32>(-624f, -181f), vec3<u32>(26115u, 4294967295u, 4294967295u), vec4<u32>(4294967295u, 0u, 6769u, 6372u)), Struct_1(true, vec2<f32>(-144f, -1701f), vec3<u32>(22758u, 25918u, 1u), vec4<u32>(29206u, 1u, 1u, 4294967295u))), 1u), vec3<f32>(-1187f, -134f, 2221f), true), Struct_5(Struct_4(true, Struct_3(vec3<f32>(-889f, -308f, -264f), 378f, Struct_1(true, vec2<f32>(577f, -2417f), vec3<u32>(5331u, 4294967295u, 80956u), vec4<u32>(1u, 4294967295u, 20225u, 43083u)), Struct_1(true, vec2<f32>(-1351f, -1555f), vec3<u32>(29845u, 0u, 0u), vec4<u32>(8390u, 38965u, 0u, 49067u))), 0u), vec3<f32>(-1797f, 360f, 131f), false), Struct_5(Struct_4(false, Struct_3(vec3<f32>(306f, 325f, -169f), 472f, Struct_1(true, vec2<f32>(-886f, 1913f), vec3<u32>(22994u, 0u, 25970u), vec4<u32>(48544u, 48866u, 24172u, 1u)), Struct_1(true, vec2<f32>(-456f, -879f), vec3<u32>(74305u, 35997u, 1u), vec4<u32>(4294967295u, 6459u, 4294967295u, 39725u))), 69945u), vec3<f32>(1380f, -318f, -849f), false), Struct_5(Struct_4(true, Struct_3(vec3<f32>(-510f, -754f, -811f), -528f, Struct_1(false, vec2<f32>(171f, -755f), vec3<u32>(0u, 1u, 28543u), vec4<u32>(0u, 13140u, 9917u, 22901u)), Struct_1(false, vec2<f32>(-1036f, -1207f), vec3<u32>(1u, 20756u, 19466u), vec4<u32>(48538u, 19197u, 11002u, 1u))), 4294967295u), vec3<f32>(-461f, 1830f, -663f), false), Struct_5(Struct_4(false, Struct_3(vec3<f32>(-601f, 164f, -192f), 834f, Struct_1(false, vec2<f32>(-1000f, -852f), vec3<u32>(51908u, 9476u, 12328u), vec4<u32>(80173u, 23676u, 4294967295u, 46772u)), Struct_1(false, vec2<f32>(138f, 576f), vec3<u32>(4294967295u, 15256u, 9926u), vec4<u32>(35008u, 11198u, 1u, 3009u))), 1u), vec3<f32>(335f, -1000f, -1212f), true), Struct_5(Struct_4(false, Struct_3(vec3<f32>(-1866f, 743f, -821f), -345f, Struct_1(true, vec2<f32>(-132f, 1000f), vec3<u32>(1u, 100793u, 4294967295u), vec4<u32>(12438u, 120568u, 113042u, 4294967295u)), Struct_1(false, vec2<f32>(411f, 718f), vec3<u32>(69117u, 1u, 35807u), vec4<u32>(0u, 12927u, 4294967295u, 0u))), 91385u), vec3<f32>(-312f, -1000f, -223f), false), Struct_5(Struct_4(false, Struct_3(vec3<f32>(-1000f, -1287f, -864f), -435f, Struct_1(true, vec2<f32>(353f, -119f), vec3<u32>(0u, 4294967295u, 4294967295u), vec4<u32>(31709u, 15267u, 1u, 57817u)), Struct_1(false, vec2<f32>(896f, 658f), vec3<u32>(1u, 0u, 21727u), vec4<u32>(1u, 15464u, 34690u, 58719u))), 10996u), vec3<f32>(-209f, -488f, -269f), false), Struct_5(Struct_4(false, Struct_3(vec3<f32>(718f, 555f, 800f), -220f, Struct_1(false, vec2<f32>(1000f, -1000f), vec3<u32>(55400u, 22551u, 0u), vec4<u32>(31672u, 1u, 4294967295u, 0u)), Struct_1(true, vec2<f32>(-237f, -1000f), vec3<u32>(53428u, 31285u, 82802u), vec4<u32>(0u, 0u, 0u, 13577u))), 22063u), vec3<f32>(-508f, -2115f, 964f), false), Struct_5(Struct_4(true, Struct_3(vec3<f32>(-238f, 580f, 1885f), 1754f, Struct_1(false, vec2<f32>(254f, -1547f), vec3<u32>(37275u, 0u, 4294967295u), vec4<u32>(10144u, 0u, 9904u, 9051u)), Struct_1(true, vec2<f32>(472f, -1696f), vec3<u32>(4294967295u, 11955u, 63795u), vec4<u32>(0u, 51489u, 4294967295u, 4294967295u))), 0u), vec3<f32>(381f, 647f, -1097f), false), Struct_5(Struct_4(true, Struct_3(vec3<f32>(502f, -1038f, 899f), 313f, Struct_1(false, vec2<f32>(-647f, -162f), vec3<u32>(26960u, 40146u, 26679u), vec4<u32>(8133u, 55419u, 0u, 1u)), Struct_1(false, vec2<f32>(868f, 252f), vec3<u32>(0u, 15174u, 76327u), vec4<u32>(9617u, 11287u, 30000u, 4294967295u))), 26387u), vec3<f32>(-260f, -1244f, 278f), false));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -849f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -212f))) - -382f));
}

