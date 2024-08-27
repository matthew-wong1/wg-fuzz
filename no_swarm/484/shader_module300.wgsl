struct Struct_1 {
    a: i32,
    b: vec3<i32>,
    c: vec4<i32>,
    d: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
    d: vec4<i32>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_1,
    c: Struct_1,
    d: f32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 25> = array<Struct_3, 25>(Struct_3(vec2<bool>(true, true), Struct_1(i32(-2147483648), vec3<i32>(1i, 69834i, -6295i), vec4<i32>(-1i, i32(-2147483648), 55614i, 2147483647i), vec4<u32>(1u, 43538u, 4294967295u, 1u)), Struct_1(68257i, vec3<i32>(-35684i, -1i, 0i), vec4<i32>(19880i, -1764i, 1i, i32(-2147483648)), vec4<u32>(4294967295u, 51552u, 3518u, 16869u)), -1708f, Struct_1(15258i, vec3<i32>(8406i, -75216i, -46924i), vec4<i32>(-30833i, 0i, -1i, 1i), vec4<u32>(0u, 20082u, 25993u, 28182u))), Struct_3(vec2<bool>(false, true), Struct_1(-1i, vec3<i32>(-1i, 1i, -11684i), vec4<i32>(-52675i, -46905i, 2147483647i, -1i), vec4<u32>(4294967295u, 1317u, 4294967295u, 125500u)), Struct_1(27350i, vec3<i32>(0i, -10185i, 2147483647i), vec4<i32>(1i, -1i, -12213i, 2147483647i), vec4<u32>(0u, 0u, 1420u, 96902u)), 1970f, Struct_1(-1i, vec3<i32>(23502i, i32(-2147483648), -1i), vec4<i32>(i32(-2147483648), i32(-2147483648), 1i, -21054i), vec4<u32>(1u, 0u, 103487u, 2560u))), Struct_3(vec2<bool>(false, true), Struct_1(2147483647i, vec3<i32>(-1i, -38705i, 16953i), vec4<i32>(1i, 1i, 1i, 2147483647i), vec4<u32>(0u, 24246u, 0u, 1u)), Struct_1(2147483647i, vec3<i32>(-29783i, 2147483647i, 0i), vec4<i32>(23042i, 0i, 0i, i32(-2147483648)), vec4<u32>(1u, 27079u, 15171u, 116797u)), 1024f, Struct_1(0i, vec3<i32>(1i, 1i, -4735i), vec4<i32>(-1i, 25338i, 36654i, 1i), vec4<u32>(30392u, 33546u, 29098u, 67269u))), Struct_3(vec2<bool>(true, true), Struct_1(-7101i, vec3<i32>(14047i, -1i, 40401i), vec4<i32>(28286i, 19229i, 1i, 18053i), vec4<u32>(1u, 27151u, 0u, 1640u)), Struct_1(33807i, vec3<i32>(13114i, 1i, -1i), vec4<i32>(982i, 77034i, 1i, -1i), vec4<u32>(4294967295u, 55191u, 4294967295u, 41444u)), -558f, Struct_1(1i, vec3<i32>(0i, 1i, 49777i), vec4<i32>(-1i, -42636i, 1i, 26402i), vec4<u32>(0u, 4294967295u, 1u, 48462u))), Struct_3(vec2<bool>(true, false), Struct_1(20783i, vec3<i32>(7860i, -31708i, 0i), vec4<i32>(-57057i, 31250i, -1i, 612i), vec4<u32>(47407u, 0u, 0u, 4294967295u)), Struct_1(-16852i, vec3<i32>(1i, 1i, 1i), vec4<i32>(3821i, 1i, i32(-2147483648), 1i), vec4<u32>(4294967295u, 4294967295u, 72784u, 6194u)), 742f, Struct_1(8235i, vec3<i32>(2147483647i, 1i, 17035i), vec4<i32>(1i, 0i, 40433i, -3182i), vec4<u32>(1u, 4294967295u, 111125u, 52121u))), Struct_3(vec2<bool>(false, false), Struct_1(14957i, vec3<i32>(32974i, 0i, 9243i), vec4<i32>(1i, -1i, i32(-2147483648), 51204i), vec4<u32>(51518u, 0u, 50725u, 93420u)), Struct_1(-19926i, vec3<i32>(-99472i, 63172i, -1i), vec4<i32>(70212i, -6089i, i32(-2147483648), 2147483647i), vec4<u32>(4294967295u, 4294967295u, 92200u, 16375u)), 774f, Struct_1(1i, vec3<i32>(-31385i, 10840i, 0i), vec4<i32>(i32(-2147483648), 1i, 45439i, -4694i), vec4<u32>(0u, 4294967295u, 0u, 1u))), Struct_3(vec2<bool>(false, false), Struct_1(2741i, vec3<i32>(-5004i, 36715i, 1i), vec4<i32>(i32(-2147483648), 20184i, 80915i, 2147483647i), vec4<u32>(1u, 1u, 1u, 4294967295u)), Struct_1(-23699i, vec3<i32>(-36260i, -1i, 0i), vec4<i32>(-1i, -1i, -23135i, 65732i), vec4<u32>(31768u, 1u, 30547u, 25793u)), -432f, Struct_1(1i, vec3<i32>(25627i, 1i, 2147483647i), vec4<i32>(i32(-2147483648), i32(-2147483648), -32776i, -1i), vec4<u32>(0u, 16690u, 44105u, 1u))), Struct_3(vec2<bool>(true, false), Struct_1(-1i, vec3<i32>(2147483647i, -15702i, i32(-2147483648)), vec4<i32>(i32(-2147483648), i32(-2147483648), -22931i, 74372i), vec4<u32>(1u, 0u, 11877u, 1u)), Struct_1(1i, vec3<i32>(-12028i, 1i, -1i), vec4<i32>(34987i, 50155i, 9812i, -19163i), vec4<u32>(28300u, 1u, 4294967295u, 1u)), -558f, Struct_1(2147483647i, vec3<i32>(1i, 11257i, 22611i), vec4<i32>(-1i, 1i, 29393i, i32(-2147483648)), vec4<u32>(1u, 88282u, 78959u, 0u))), Struct_3(vec2<bool>(false, false), Struct_1(-17199i, vec3<i32>(23287i, -9728i, 18602i), vec4<i32>(1i, -34977i, 0i, 2335i), vec4<u32>(65871u, 27223u, 27857u, 24586u)), Struct_1(2147483647i, vec3<i32>(2147483647i, 0i, i32(-2147483648)), vec4<i32>(-3545i, -1i, 15922i, 2147483647i), vec4<u32>(1838u, 0u, 4294967295u, 38254u)), 842f, Struct_1(-7176i, vec3<i32>(-5099i, 49725i, 0i), vec4<i32>(1i, -1i, 0i, 1i), vec4<u32>(60241u, 0u, 1u, 4294967295u))), Struct_3(vec2<bool>(false, true), Struct_1(-46271i, vec3<i32>(-7230i, 67065i, 0i), vec4<i32>(60447i, 26474i, i32(-2147483648), 2147483647i), vec4<u32>(4294967295u, 0u, 1u, 4294967295u)), Struct_1(47586i, vec3<i32>(30808i, -55428i, i32(-2147483648)), vec4<i32>(334i, 41843i, -7835i, i32(-2147483648)), vec4<u32>(12752u, 9282u, 0u, 4294967295u)), 1490f, Struct_1(2147483647i, vec3<i32>(7038i, -89381i, -1i), vec4<i32>(11489i, 2147483647i, -42304i, 0i), vec4<u32>(0u, 9263u, 0u, 21928u))), Struct_3(vec2<bool>(false, true), Struct_1(41350i, vec3<i32>(-8219i, 14300i, -69885i), vec4<i32>(1i, 23618i, 1i, -26320i), vec4<u32>(61328u, 4294967295u, 0u, 5086u)), Struct_1(2147483647i, vec3<i32>(i32(-2147483648), 1i, 0i), vec4<i32>(1i, 21057i, -12445i, 30448i), vec4<u32>(13328u, 29685u, 3169u, 20054u)), -198f, Struct_1(-1i, vec3<i32>(-1i, 0i, -1i), vec4<i32>(1i, i32(-2147483648), -1i, 41963i), vec4<u32>(23962u, 16075u, 60026u, 4294967295u))), Struct_3(vec2<bool>(false, false), Struct_1(17272i, vec3<i32>(i32(-2147483648), -1i, 2147483647i), vec4<i32>(-19645i, 22230i, -1i, i32(-2147483648)), vec4<u32>(4294967295u, 1u, 4294967295u, 4294967295u)), Struct_1(1i, vec3<i32>(-10639i, 2147483647i, 0i), vec4<i32>(16132i, 1i, 0i, i32(-2147483648)), vec4<u32>(11849u, 1u, 1u, 1228u)), -825f, Struct_1(-9278i, vec3<i32>(i32(-2147483648), -7979i, -46395i), vec4<i32>(21788i, -7717i, i32(-2147483648), 1i), vec4<u32>(71150u, 5969u, 4294967295u, 0u))), Struct_3(vec2<bool>(false, true), Struct_1(14134i, vec3<i32>(-8813i, -2890i, i32(-2147483648)), vec4<i32>(1i, -7883i, -20756i, 41610i), vec4<u32>(28695u, 1u, 0u, 132u)), Struct_1(0i, vec3<i32>(18438i, -33773i, 2563i), vec4<i32>(i32(-2147483648), 0i, 0i, -35932i), vec4<u32>(56100u, 0u, 10462u, 4294967295u)), 1810f, Struct_1(-7336i, vec3<i32>(-70680i, 1i, 70632i), vec4<i32>(1i, i32(-2147483648), -1i, 16158i), vec4<u32>(46491u, 15579u, 59881u, 561u))), Struct_3(vec2<bool>(false, true), Struct_1(-6104i, vec3<i32>(-14971i, -33429i, -43991i), vec4<i32>(-19450i, -5830i, 12930i, 2147483647i), vec4<u32>(21309u, 9387u, 39685u, 45568u)), Struct_1(12176i, vec3<i32>(19884i, 2147483647i, 2147483647i), vec4<i32>(1i, -4202i, 2147483647i, 0i), vec4<u32>(30450u, 4294967295u, 0u, 4294967295u)), 349f, Struct_1(-20489i, vec3<i32>(-1i, -1i, -12508i), vec4<i32>(-1i, -48233i, 9100i, 2147483647i), vec4<u32>(31318u, 21705u, 0u, 1u))), Struct_3(vec2<bool>(false, true), Struct_1(i32(-2147483648), vec3<i32>(0i, 17537i, i32(-2147483648)), vec4<i32>(i32(-2147483648), i32(-2147483648), -42528i, 1i), vec4<u32>(0u, 462u, 97713u, 0u)), Struct_1(-4931i, vec3<i32>(-13757i, 14490i, 40760i), vec4<i32>(49433i, -38103i, -1i, i32(-2147483648)), vec4<u32>(0u, 70711u, 62207u, 4294967295u)), 386f, Struct_1(0i, vec3<i32>(1i, -1i, -15148i), vec4<i32>(3150i, -19179i, i32(-2147483648), 38326i), vec4<u32>(29290u, 8066u, 1u, 103347u))), Struct_3(vec2<bool>(false, false), Struct_1(-17421i, vec3<i32>(-1i, -19539i, 2147483647i), vec4<i32>(i32(-2147483648), i32(-2147483648), i32(-2147483648), 1i), vec4<u32>(98676u, 0u, 38531u, 1u)), Struct_1(i32(-2147483648), vec3<i32>(-19071i, -45948i, i32(-2147483648)), vec4<i32>(30538i, 0i, 1i, 0i), vec4<u32>(23842u, 4294967295u, 4294967295u, 4294967295u)), 2199f, Struct_1(1i, vec3<i32>(-1i, 32872i, 1i), vec4<i32>(-13826i, 0i, 1i, -1i), vec4<u32>(53068u, 4294967295u, 24709u, 42798u))), Struct_3(vec2<bool>(false, false), Struct_1(7902i, vec3<i32>(17277i, 0i, 4134i), vec4<i32>(2480i, 1i, 15622i, i32(-2147483648)), vec4<u32>(39683u, 37132u, 15471u, 1u)), Struct_1(0i, vec3<i32>(-34284i, -1491i, 8337i), vec4<i32>(2147483647i, 2147483647i, -53538i, 23275i), vec4<u32>(34527u, 38226u, 14046u, 4294967295u)), -1301f, Struct_1(49177i, vec3<i32>(i32(-2147483648), i32(-2147483648), -1i), vec4<i32>(1i, 1i, 0i, 68183i), vec4<u32>(1u, 1u, 0u, 1u))), Struct_3(vec2<bool>(false, true), Struct_1(-1892i, vec3<i32>(40226i, i32(-2147483648), -8445i), vec4<i32>(56967i, -35540i, 1i, 5711i), vec4<u32>(4294967295u, 465u, 1u, 55307u)), Struct_1(7534i, vec3<i32>(1i, 2147483647i, -31219i), vec4<i32>(-3722i, 1i, 1i, 26236i), vec4<u32>(44762u, 35600u, 1u, 46538u)), -333f, Struct_1(1i, vec3<i32>(-44618i, i32(-2147483648), 0i), vec4<i32>(-1i, 18724i, 0i, 0i), vec4<u32>(5814u, 20768u, 0u, 619u))), Struct_3(vec2<bool>(true, false), Struct_1(1i, vec3<i32>(19061i, 76150i, i32(-2147483648)), vec4<i32>(14092i, -17336i, -8901i, 0i), vec4<u32>(1u, 1u, 9018u, 4294967295u)), Struct_1(-1i, vec3<i32>(1442i, i32(-2147483648), -1i), vec4<i32>(-38081i, 1i, 2147483647i, 2147483647i), vec4<u32>(101501u, 0u, 1201u, 21738u)), -291f, Struct_1(-17466i, vec3<i32>(-1i, 2147483647i, 2147483647i), vec4<i32>(-20583i, -7035i, -10581i, 16829i), vec4<u32>(35198u, 0u, 4294967295u, 89379u))), Struct_3(vec2<bool>(true, false), Struct_1(-5521i, vec3<i32>(36561i, 0i, 1i), vec4<i32>(14165i, 22555i, 44272i, 2147483647i), vec4<u32>(0u, 0u, 1u, 74113u)), Struct_1(-11334i, vec3<i32>(1i, i32(-2147483648), 2147483647i), vec4<i32>(-22063i, 34291i, 15818i, 2147483647i), vec4<u32>(38712u, 4982u, 13513u, 0u)), 692f, Struct_1(1i, vec3<i32>(-67969i, 34050i, 1209i), vec4<i32>(i32(-2147483648), 1i, -45358i, 1i), vec4<u32>(61676u, 0u, 12089u, 8320u))), Struct_3(vec2<bool>(false, false), Struct_1(-1i, vec3<i32>(0i, -1i, 27320i), vec4<i32>(-98275i, -37572i, 1i, 0i), vec4<u32>(0u, 12977u, 1u, 0u)), Struct_1(2147483647i, vec3<i32>(i32(-2147483648), 2147483647i, 47498i), vec4<i32>(1i, 2147483647i, -50650i, -8179i), vec4<u32>(1u, 34307u, 29410u, 20534u)), 387f, Struct_1(1i, vec3<i32>(-1i, 1i, 1957i), vec4<i32>(2147483647i, -34336i, -1i, 43701i), vec4<u32>(1u, 52441u, 57424u, 4294967295u))), Struct_3(vec2<bool>(true, false), Struct_1(-1i, vec3<i32>(13969i, 41130i, 10638i), vec4<i32>(0i, 12867i, -1i, 0i), vec4<u32>(43686u, 1u, 0u, 1u)), Struct_1(6737i, vec3<i32>(0i, 0i, 0i), vec4<i32>(1i, -42403i, -26661i, -18849i), vec4<u32>(1u, 1u, 0u, 122225u)), -416f, Struct_1(-1i, vec3<i32>(-1i, i32(-2147483648), i32(-2147483648)), vec4<i32>(25772i, -16277i, 17481i, 0i), vec4<u32>(2416u, 4294967295u, 38231u, 4294967295u))), Struct_3(vec2<bool>(false, false), Struct_1(i32(-2147483648), vec3<i32>(-4786i, 1i, 21400i), vec4<i32>(2147483647i, 27520i, i32(-2147483648), 9626i), vec4<u32>(0u, 1u, 43147u, 1u)), Struct_1(i32(-2147483648), vec3<i32>(-44137i, -24806i, -37535i), vec4<i32>(7399i, 2147483647i, 24103i, i32(-2147483648)), vec4<u32>(48720u, 0u, 1u, 21336u)), 543f, Struct_1(35349i, vec3<i32>(i32(-2147483648), 0i, -14764i), vec4<i32>(1i, -75538i, -15632i, 2147483647i), vec4<u32>(14015u, 0u, 0u, 82777u))), Struct_3(vec2<bool>(true, false), Struct_1(-1i, vec3<i32>(i32(-2147483648), 65457i, -1i), vec4<i32>(i32(-2147483648), i32(-2147483648), -1i, -19169i), vec4<u32>(1u, 113227u, 1u, 4294967295u)), Struct_1(-41724i, vec3<i32>(39412i, i32(-2147483648), -6712i), vec4<i32>(-10542i, 0i, 1i, i32(-2147483648)), vec4<u32>(27078u, 25054u, 47687u, 30551u)), 1197f, Struct_1(-21272i, vec3<i32>(895i, -1i, 0i), vec4<i32>(-1i, -1i, -38002i, -4795i), vec4<u32>(15223u, 1u, 1u, 4294967295u))), Struct_3(vec2<bool>(true, false), Struct_1(-16847i, vec3<i32>(-1i, 32780i, -42014i), vec4<i32>(-17574i, -18939i, -38945i, 0i), vec4<u32>(4294967295u, 1u, 0u, 6740u)), Struct_1(1i, vec3<i32>(i32(-2147483648), -14326i, i32(-2147483648)), vec4<i32>(0i, 0i, 3269i, -39946i), vec4<u32>(1u, 10069u, 0u, 1u)), -1257f, Struct_1(-9516i, vec3<i32>(0i, -64740i, 99248i), vec4<i32>(43574i, 18706i, 0i, -10157i), vec4<u32>(0u, 4294967295u, 56605u, 0u))));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_1(arg_0: i32, arg_1: bool) -> Struct_1 {
    return Struct_1(~(~arg_0 | firstLeadingBit(_wgslsmith_clamp_i32(arg_0, 0i, -55584i))), ~(~(~(~vec3<i32>(2147483647i, arg_0, -6303i)))), vec4<i32>(_wgslsmith_mult_i32(~countOneBits(arg_0), _wgslsmith_add_i32(~(-22031i), arg_0)), u_input.c, _wgslsmith_clamp_i32(~u_input.c, -2147483647i, _wgslsmith_mod_i32(reverseBits(26188i), ~21746i)), -max(arg_0, _wgslsmith_dot_vec2_i32(vec2<i32>(38677i, arg_0), vec2<i32>(2147483647i, -14358i)))), ~(~vec4<u32>(u_input.b, ~u_input.a.x, ~44987u, 19286u)));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: Struct_2, arg_3: i32) -> i32 {
    var var_0 = !(any(select(vec2<bool>(false, true), vec2<bool>(true, false), false)) & true) & true;
    var var_1 = !select(!(!select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false))), select(select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true)), vec3<bool>(all(vec4<bool>(false, true, false, true)), arg_3 > -1i, false), !select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), false)), true);
    var var_2 = countOneBits(vec2<u32>((max(0u, arg_1.x) ^ 0u) >> (15563u % 32u), u_input.b));
    var_2 = reverseBits(arg_0.d.zy);
    var var_3 = firstLeadingBit(countOneBits(-(~(vec3<i32>(986i, -1i, arg_2.b.c.x) >> (vec3<u32>(4294967295u, var_2.x, 18123u) % vec3<u32>(32u))))));
    return abs(_wgslsmith_mult_i32(var_3.x, ~_wgslsmith_dot_vec2_i32(arg_2.d.wz, vec2<i32>(55852i, var_3.x)) >> (u_input.b % 32u)));
}

fn func_2(arg_0: i32, arg_1: vec2<f32>, arg_2: Struct_1) -> bool {
    let var_0 = Struct_1(func_3(arg_2, vec2<u32>(~4294967295u << (arg_2.d.x % 32u), 1u), Struct_2(arg_2, arg_2, _wgslsmith_add_i32(arg_0, arg_0 << (arg_2.d.x % 32u)), vec4<i32>(firstLeadingBit(1977i), 0i, arg_0 << (u_input.a.x % 32u), u_input.c)), 0i >> (0u % 32u)), _wgslsmith_mod_vec3_i32(_wgslsmith_sub_vec3_i32(countOneBits(vec3<i32>(arg_2.b.x, 2147483647i, u_input.d)), max(arg_2.b, vec3<i32>(-12462i, arg_0, 0i))), min(vec3<i32>(-36449i, 1i, arg_0), reverseBits(vec3<i32>(2147483647i, arg_2.c.x, arg_0)))) >> ((reverseBits(arg_2.d.xzx) ^ _wgslsmith_div_vec3_u32(~u_input.a.xyy, ~arg_2.d.wyw)) % vec3<u32>(32u)), firstLeadingBit(-arg_2.c), vec4<u32>(~_wgslsmith_sub_u32(87581u, 4294967295u | arg_2.d.x), u_input.a.x, u_input.a.x, ~476u));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_1.x - -381f))), _wgslsmith_div_f32(arg_1.x, arg_1.x), 157f), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(235f, arg_1.x, -1998f), vec3<f32>(arg_1.x, 474f, 177f))), vec3<f32>(-1089f, arg_1.x, arg_1.x), vec3<bool>(true, true, true))))))));
    let var_2 = Struct_2(Struct_1(30869i >> (var_0.d.x % 32u), firstLeadingBit(-vec3<i32>(var_0.b.x, 1i, arg_2.a) & var_0.c.wxz), _wgslsmith_mod_vec4_i32(~var_0.c, _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.d, 16463i, arg_2.c.x, 1i), var_0.c)), arg_2.d), var_0, -1i & var_0.a, vec4<i32>(firstLeadingBit(_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.d, -26368i, var_0.a, u_input.c), arg_2.c, var_0.c), arg_2.c << (vec4<u32>(1u, u_input.a.x, 3296u, arg_2.d.x) % vec4<u32>(32u)))), 16419i, abs(_wgslsmith_dot_vec3_i32(abs(vec3<i32>(-8061i, u_input.d, 17295i)), vec3<i32>(-50634i, -2147483647i, -20524i))), u_input.d));
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1953f, _wgslsmith_f_op_f32(ceil(arg_1.x)), -388f, var_1.x)))));
    var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(var_3.x, var_3.x), var_1.x, -176f, _wgslsmith_f_op_f32(select(arg_1.x, var_1.x, false))))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(f32(-1f) * -1352f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_1.x)) + -360f), arg_1.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(-1353f))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-983f, var_1.x, var_3.x, var_3.x) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_3.x, var_3.x, -550f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.x, var_1.x, 915f, var_1.x) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(475f, 381f, 1371f, 1051f))))));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_3, 25>();
    global0 = array<Struct_3, 25>();
    var var_0 = true | func_2(2147483647i, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1136f, -1292f))), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), func_1(u_input.c ^ -u_input.c, true));
    var_0 = !(!any(select(select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true)), select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, true)), any(vec3<bool>(false, true, false)))));
    global0 = array<Struct_3, 25>();
    var var_1 = countOneBits(~(~58424u));
    var var_2 = func_1(~(-1i), true);
    var var_3 = countOneBits(select(_wgslsmith_clamp_vec4_u32(reverseBits(vec4<u32>(var_2.d.x, 1u, var_2.d.x, 1u)) ^ (u_input.a | var_2.d), vec4<u32>(1u, var_2.d.x, _wgslsmith_sub_u32(u_input.b, 1u), 2806u), _wgslsmith_div_vec4_u32(vec4<u32>(107620u, var_2.d.x, 0u, var_2.d.x), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a.x, u_input.b, 0u, 1312u), vec4<u32>(var_2.d.x, 20386u, 4294967295u, 0u), vec4<u32>(0u, 65268u, 41659u, var_2.d.x)))), u_input.a, true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(-var_2.a, -36862i), max(var_2.b.yz, vec2<i32>(18246i, -22964i)) ^ countOneBits(var_2.b.xx)), min(vec2<i32>(_wgslsmith_dot_vec3_i32(var_2.c.yyw, var_2.c.xwx), var_2.c.x), _wgslsmith_mult_vec2_i32(var_2.b.yz, vec2<i32>(var_2.b.x, var_2.a)) | (var_2.c.zz & var_2.b.zz))), 15532u, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-328f + _wgslsmith_f_op_f32(ceil(347f)))), _wgslsmith_f_op_f32(191f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-259f))))));
}

