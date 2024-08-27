struct Struct_1 {
    a: i32,
    b: vec4<i32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec2<f32>,
    c: u32,
    d: vec4<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: Struct_1,
}

struct Struct_4 {
    a: vec4<i32>,
    b: Struct_3,
    c: f32,
    d: i32,
    e: vec3<u32>,
}

struct Struct_5 {
    a: Struct_2,
    b: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: i32;

var<private> global2: array<Struct_4, 31> = array<Struct_4, 31>(Struct_4(vec4<i32>(14463i, i32(-2147483648), 3813i, 0i), Struct_3(Struct_1(-21651i, vec4<i32>(-70284i, 0i, 2147483647i, -9175i)), Struct_1(-52244i, vec4<i32>(2147483647i, 1i, 0i, -1i)), 28457u, Struct_1(1i, vec4<i32>(1i, 31122i, -37391i, 61651i))), -486f, 31706i, vec3<u32>(4294967295u, 84296u, 23226u)), Struct_4(vec4<i32>(0i, 1i, -28052i, 17735i), Struct_3(Struct_1(1i, vec4<i32>(22408i, 23303i, -13109i, -8133i)), Struct_1(12291i, vec4<i32>(-1i, -1i, -1i, -29881i)), 1u, Struct_1(2147483647i, vec4<i32>(1i, -52683i, 14246i, 0i))), -782f, -1i, vec3<u32>(57348u, 85775u, 0u)), Struct_4(vec4<i32>(68223i, -26720i, -1i, -2014i), Struct_3(Struct_1(67811i, vec4<i32>(-24019i, 9555i, -12849i, -280i)), Struct_1(-7919i, vec4<i32>(i32(-2147483648), 2147483647i, -5858i, 0i)), 4294967295u, Struct_1(14044i, vec4<i32>(-19356i, -1i, 789i, 2147483647i))), -640f, 32754i, vec3<u32>(65733u, 1u, 4294967295u)), Struct_4(vec4<i32>(2147483647i, -1i, 2147483647i, -15212i), Struct_3(Struct_1(-1i, vec4<i32>(7427i, -4099i, i32(-2147483648), -57624i)), Struct_1(2993i, vec4<i32>(-1i, 12643i, -3353i, -5138i)), 15039u, Struct_1(59729i, vec4<i32>(0i, 1i, -46981i, -45i))), -503f, 2147483647i, vec3<u32>(1u, 4294967295u, 4836u)), Struct_4(vec4<i32>(0i, 1i, -38092i, 1i), Struct_3(Struct_1(1i, vec4<i32>(-11005i, 17605i, 1i, -7857i)), Struct_1(-1i, vec4<i32>(42106i, 1i, 2147483647i, -1i)), 4294967295u, Struct_1(10034i, vec4<i32>(22851i, 2147483647i, 2147483647i, 4445i))), -125f, -1i, vec3<u32>(0u, 32395u, 4294967295u)), Struct_4(vec4<i32>(2147483647i, 0i, 3812i, i32(-2147483648)), Struct_3(Struct_1(1i, vec4<i32>(2147483647i, 30541i, 10807i, -113i)), Struct_1(76590i, vec4<i32>(1i, -1i, 4283i, 1i)), 1u, Struct_1(0i, vec4<i32>(28544i, -1558i, 17940i, -495i))), -679f, i32(-2147483648), vec3<u32>(58941u, 1u, 6255u)), Struct_4(vec4<i32>(-14547i, -18021i, i32(-2147483648), 0i), Struct_3(Struct_1(-1i, vec4<i32>(13930i, 19494i, 34431i, 1i)), Struct_1(0i, vec4<i32>(-32036i, 1i, 0i, 14333i)), 1u, Struct_1(-12574i, vec4<i32>(-1i, 29724i, -19994i, 20701i))), 641f, -25658i, vec3<u32>(26311u, 4294967295u, 1u)), Struct_4(vec4<i32>(-1i, 0i, 16184i, 1812i), Struct_3(Struct_1(-23906i, vec4<i32>(0i, 14858i, i32(-2147483648), 0i)), Struct_1(0i, vec4<i32>(7255i, -55235i, -3382i, -1i)), 1u, Struct_1(-26787i, vec4<i32>(-33225i, i32(-2147483648), 7514i, 23788i))), 2629f, i32(-2147483648), vec3<u32>(4294967295u, 0u, 36952u)), Struct_4(vec4<i32>(1i, -40514i, -32187i, i32(-2147483648)), Struct_3(Struct_1(2147483647i, vec4<i32>(49629i, 0i, 798i, i32(-2147483648))), Struct_1(37086i, vec4<i32>(1i, -1i, 1i, 10451i)), 4294967295u, Struct_1(-23458i, vec4<i32>(-18676i, 0i, -66208i, -109i))), -273f, -9698i, vec3<u32>(4294967295u, 27896u, 40348u)), Struct_4(vec4<i32>(-3827i, 2147483647i, 12913i, 31330i), Struct_3(Struct_1(11635i, vec4<i32>(-1i, -9656i, 34354i, 2147483647i)), Struct_1(2147483647i, vec4<i32>(1i, 2147483647i, -55253i, -87851i)), 0u, Struct_1(53352i, vec4<i32>(25252i, -16892i, 0i, 19049i))), -1000f, -1i, vec3<u32>(0u, 1u, 1u)), Struct_4(vec4<i32>(2147483647i, 36288i, 2147483647i, -29073i), Struct_3(Struct_1(26979i, vec4<i32>(i32(-2147483648), 1i, -43962i, 49811i)), Struct_1(1i, vec4<i32>(21270i, 42578i, 1i, 0i)), 19005u, Struct_1(43499i, vec4<i32>(1i, -24448i, -20856i, i32(-2147483648)))), 580f, 62719i, vec3<u32>(43091u, 0u, 38893u)), Struct_4(vec4<i32>(i32(-2147483648), i32(-2147483648), -42264i, i32(-2147483648)), Struct_3(Struct_1(8529i, vec4<i32>(-30823i, 19194i, -31004i, -40087i)), Struct_1(1i, vec4<i32>(17140i, 1i, 0i, -16731i)), 0u, Struct_1(-1i, vec4<i32>(2942i, 58562i, 2147483647i, -1i))), -1000f, 10835i, vec3<u32>(20961u, 33386u, 4629u)), Struct_4(vec4<i32>(29593i, -7292i, 0i, 0i), Struct_3(Struct_1(-30202i, vec4<i32>(-1i, -27876i, i32(-2147483648), 1i)), Struct_1(-18292i, vec4<i32>(10666i, -1i, 6714i, 1i)), 10672u, Struct_1(42733i, vec4<i32>(i32(-2147483648), 2147483647i, 46952i, i32(-2147483648)))), 1646f, -21421i, vec3<u32>(0u, 33712u, 24511u)), Struct_4(vec4<i32>(4877i, -1i, -32072i, -1501i), Struct_3(Struct_1(0i, vec4<i32>(1i, -43852i, 0i, -19230i)), Struct_1(-12562i, vec4<i32>(8051i, 45369i, 7909i, 45790i)), 1u, Struct_1(-1i, vec4<i32>(-32907i, 23320i, i32(-2147483648), -48348i))), 1181f, i32(-2147483648), vec3<u32>(4294967295u, 12230u, 79800u)), Struct_4(vec4<i32>(16491i, 17999i, 36758i, 2147483647i), Struct_3(Struct_1(-8602i, vec4<i32>(-17016i, -1i, -10396i, 2147483647i)), Struct_1(-1979i, vec4<i32>(18392i, 26153i, i32(-2147483648), -1i)), 1u, Struct_1(2147483647i, vec4<i32>(-2988i, 0i, 1257i, i32(-2147483648)))), 1000f, -15517i, vec3<u32>(37373u, 4294967295u, 1u)), Struct_4(vec4<i32>(2147483647i, 1i, 12263i, 1i), Struct_3(Struct_1(i32(-2147483648), vec4<i32>(2147483647i, -5043i, -1i, 0i)), Struct_1(i32(-2147483648), vec4<i32>(1i, -27956i, -1i, i32(-2147483648))), 1u, Struct_1(-22786i, vec4<i32>(21344i, -41021i, 0i, 38004i))), -668f, -7193i, vec3<u32>(1u, 29027u, 9617u)), Struct_4(vec4<i32>(11272i, 0i, 7839i, 23084i), Struct_3(Struct_1(i32(-2147483648), vec4<i32>(2147483647i, i32(-2147483648), -37959i, -6871i)), Struct_1(1i, vec4<i32>(-1i, -21328i, i32(-2147483648), 94165i)), 1u, Struct_1(-23631i, vec4<i32>(2147483647i, -1i, -40917i, 1i))), 714f, -37137i, vec3<u32>(4294967295u, 4294967295u, 1u)), Struct_4(vec4<i32>(-31938i, 1i, i32(-2147483648), 9160i), Struct_3(Struct_1(4199i, vec4<i32>(2147483647i, -32668i, 2147483647i, 1i)), Struct_1(7901i, vec4<i32>(-1i, -15103i, 0i, 33723i)), 1u, Struct_1(i32(-2147483648), vec4<i32>(1i, i32(-2147483648), 35299i, i32(-2147483648)))), 2092f, 2352i, vec3<u32>(0u, 44364u, 4294967295u)), Struct_4(vec4<i32>(2147483647i, 0i, 43452i, 28458i), Struct_3(Struct_1(-16105i, vec4<i32>(-1i, 25498i, i32(-2147483648), -12207i)), Struct_1(i32(-2147483648), vec4<i32>(i32(-2147483648), 72385i, i32(-2147483648), -1i)), 24092u, Struct_1(47620i, vec4<i32>(-42695i, 2147483647i, 25213i, -61128i))), -1000f, 14816i, vec3<u32>(24533u, 68693u, 1u)), Struct_4(vec4<i32>(-19600i, 2147483647i, 2147483647i, 2147483647i), Struct_3(Struct_1(1i, vec4<i32>(1i, -19673i, 2147483647i, 1667i)), Struct_1(0i, vec4<i32>(32225i, -15300i, i32(-2147483648), -1i)), 104358u, Struct_1(6437i, vec4<i32>(i32(-2147483648), -1i, -5228i, 18990i))), -587f, -885i, vec3<u32>(4294967295u, 0u, 16338u)), Struct_4(vec4<i32>(12638i, 1i, -1i, -1i), Struct_3(Struct_1(-737i, vec4<i32>(19496i, -44698i, -21443i, -1i)), Struct_1(26153i, vec4<i32>(-33372i, 0i, 32745i, 2147483647i)), 1u, Struct_1(-43335i, vec4<i32>(-23505i, 0i, 15910i, -21003i))), -316f, i32(-2147483648), vec3<u32>(4294967295u, 18897u, 1u)), Struct_4(vec4<i32>(5469i, -12549i, 78833i, -1i), Struct_3(Struct_1(2147483647i, vec4<i32>(1i, 1i, -1i, -1i)), Struct_1(-1i, vec4<i32>(45156i, -1i, -2323i, 12131i)), 57186u, Struct_1(-49170i, vec4<i32>(2147483647i, 13172i, 85307i, 0i))), 506f, -26846i, vec3<u32>(23275u, 1u, 4294967295u)), Struct_4(vec4<i32>(2147483647i, 8744i, 1i, 2147483647i), Struct_3(Struct_1(-10689i, vec4<i32>(-1i, 24210i, 54146i, 0i)), Struct_1(-1i, vec4<i32>(-46719i, 0i, -19316i, -36287i)), 53887u, Struct_1(44422i, vec4<i32>(-1i, 0i, 1i, 1i))), -1819f, 22943i, vec3<u32>(4294967295u, 82257u, 4294967295u)), Struct_4(vec4<i32>(-1i, -11119i, 2147483647i, -27510i), Struct_3(Struct_1(-41844i, vec4<i32>(-34442i, -37886i, -16007i, 12538i)), Struct_1(-20829i, vec4<i32>(2917i, -76423i, -13330i, 5622i)), 1u, Struct_1(1i, vec4<i32>(2147483647i, -58019i, -46905i, -17511i))), 119f, 0i, vec3<u32>(20838u, 4294967295u, 32962u)), Struct_4(vec4<i32>(2147483647i, 6413i, i32(-2147483648), i32(-2147483648)), Struct_3(Struct_1(-43165i, vec4<i32>(-66904i, 34809i, -4558i, -1i)), Struct_1(21734i, vec4<i32>(0i, 1i, -1i, -26742i)), 0u, Struct_1(2147483647i, vec4<i32>(-1i, 1i, 0i, i32(-2147483648)))), -1359f, 19008i, vec3<u32>(0u, 4294967295u, 0u)), Struct_4(vec4<i32>(2147483647i, 0i, -1i, 2147483647i), Struct_3(Struct_1(48615i, vec4<i32>(-16759i, 0i, -16066i, -1i)), Struct_1(i32(-2147483648), vec4<i32>(2147483647i, -1i, 2147483647i, -1i)), 0u, Struct_1(5228i, vec4<i32>(-19482i, 17422i, 25047i, 18277i))), -147f, 2147483647i, vec3<u32>(0u, 31914u, 7356u)), Struct_4(vec4<i32>(1i, -6721i, 26215i, -15035i), Struct_3(Struct_1(11084i, vec4<i32>(1i, 5519i, 17568i, -27395i)), Struct_1(-4378i, vec4<i32>(i32(-2147483648), 22488i, 0i, 1i)), 78855u, Struct_1(2147483647i, vec4<i32>(2147483647i, -36896i, 16754i, 24526i))), 123f, -55915i, vec3<u32>(5759u, 4294967295u, 58766u)), Struct_4(vec4<i32>(-1i, 37321i, 22382i, 40785i), Struct_3(Struct_1(-1i, vec4<i32>(35369i, 36764i, 53871i, 0i)), Struct_1(-16352i, vec4<i32>(24523i, 0i, 2147483647i, i32(-2147483648))), 28486u, Struct_1(i32(-2147483648), vec4<i32>(i32(-2147483648), -27416i, 49853i, 26083i))), 1431f, 2147483647i, vec3<u32>(4294967295u, 4475u, 10995u)), Struct_4(vec4<i32>(4498i, 25695i, 16323i, -20940i), Struct_3(Struct_1(49267i, vec4<i32>(-1i, -49466i, 15173i, 0i)), Struct_1(19472i, vec4<i32>(-1i, 53370i, 8693i, 1i)), 1u, Struct_1(0i, vec4<i32>(26032i, -46902i, i32(-2147483648), -1i))), 155f, i32(-2147483648), vec3<u32>(30026u, 4294967295u, 63591u)), Struct_4(vec4<i32>(i32(-2147483648), -5020i, 30851i, 11091i), Struct_3(Struct_1(2147483647i, vec4<i32>(2147483647i, -35050i, 0i, i32(-2147483648))), Struct_1(0i, vec4<i32>(0i, 0i, 1i, -66552i)), 34307u, Struct_1(0i, vec4<i32>(2147483647i, 77479i, 2147483647i, -36476i))), -1479f, -39239i, vec3<u32>(1u, 0u, 97373u)), Struct_4(vec4<i32>(-1i, i32(-2147483648), i32(-2147483648), -33183i), Struct_3(Struct_1(0i, vec4<i32>(-80966i, -22677i, -65130i, -9814i)), Struct_1(2147483647i, vec4<i32>(41387i, 17310i, 6771i, i32(-2147483648))), 107706u, Struct_1(0i, vec4<i32>(1i, -38860i, i32(-2147483648), 35876i))), -1567f, 25887i, vec3<u32>(1u, 4294967295u, 0u)));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: f32, arg_1: Struct_2, arg_2: f32, arg_3: vec4<i32>) -> vec2<i32> {
    global0 = arg_1.d.wyy;
    global1 = firstLeadingBit(_wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(arg_3.x, firstLeadingBit(arg_3.x), arg_3.x, -2147483647i)), ~vec4<i32>(~arg_3.x, -27156i & arg_3.x, abs(arg_3.x), arg_3.x)));
    var var_0 = vec4<bool>(true, any(select(!select(vec3<bool>(false, arg_1.a.x, arg_1.a.x), vec3<bool>(arg_1.a.x, arg_1.a.x, arg_1.a.x), false), select(!vec3<bool>(true, false, arg_1.a.x), select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), false), false), select(vec3<bool>(true, arg_1.a.x, true), !vec3<bool>(arg_1.a.x, false, arg_1.a.x), false))), arg_1.a.x, any(vec2<bool>(!all(arg_1.a), arg_1.a.x)));
    var var_1 = select(select(vec4<bool>(false, ~(-1i) <= _wgslsmith_add_i32(-2147483647i, arg_3.x), all(select(var_0.zy, vec2<bool>(var_0.x, false), true)), any(vec3<bool>(arg_1.a.x, true, true)) || arg_1.a.x), vec4<bool>(-1335f != _wgslsmith_div_f32(arg_2, arg_1.b.x), var_0.x, var_0.x, true), !select(!vec4<bool>(false, true, var_0.x, var_0.x), select(vec4<bool>(var_0.x, arg_1.a.x, arg_1.a.x, false), vec4<bool>(var_0.x, false, false, var_0.x), false), vec4<bool>(arg_1.a.x, var_0.x, var_0.x, var_0.x))), vec4<bool>(1136f >= _wgslsmith_f_op_f32(-arg_0), !all(!var_0.xww), true, all(select(var_0.zyz, select(vec3<bool>(arg_1.a.x, var_0.x, true), var_0.zyy, arg_1.a.x), !vec3<bool>(false, true, arg_1.a.x)))), !(!all(arg_1.a) || arg_1.a.x));
    var var_2 = vec2<i32>(0i, ~arg_3.x);
    return vec2<i32>(_wgslsmith_dot_vec2_i32(-max(min(vec2<i32>(arg_3.x, -52040i), arg_3.xw), select(arg_3.zz, vec2<i32>(2147483647i, 2147483647i), arg_1.a)), max(_wgslsmith_div_vec2_i32(vec2<i32>(arg_3.x, arg_3.x), select(arg_3.ww, vec2<i32>(23821i, -1i), arg_1.a.x)), select(~vec2<i32>(var_2.x, -1i), _wgslsmith_mult_vec2_i32(vec2<i32>(-2147483647i, 2147483647i), vec2<i32>(arg_3.x, arg_3.x)), var_0.wy))), -max(27556i, var_2.x) | ~(~firstTrailingBit(arg_3.x)));
}

fn func_4(arg_0: vec2<bool>, arg_1: vec2<i32>, arg_2: Struct_3) -> i32 {
    global0 = reverseBits(firstTrailingBit(~select(vec3<u32>(28291u, 1u, 51899u) & vec3<u32>(4294967295u, arg_2.c, 4294967295u), ~vec3<u32>(u_input.a, 85712u, 45444u), !arg_0.x)));
    let var_0 = _wgslsmith_f_op_f32(max(645f, _wgslsmith_f_op_f32(f32(-1f) * -122f)));
    global1 = 4405i;
    let var_1 = arg_2.a;
    return var_1.a;
}

fn func_2(arg_0: f32, arg_1: Struct_2) -> Struct_3 {
    let var_0 = vec2<i32>(func_4(arg_1.a, _wgslsmith_clamp_vec2_i32(-vec2<i32>(-32794i, 24988i), -firstLeadingBit(vec2<i32>(2147483647i, -1i)), func_3(-815f, arg_1, arg_1.b.x, -vec4<i32>(-2147483647i, 522i, 14051i, 15702i))), Struct_3(Struct_1(1i, vec4<i32>(15663i, 0i, -1i, 0i)), Struct_1(_wgslsmith_mod_i32(-16909i, -2147483647i), vec4<i32>(0i, -2147483647i, 1i, 26424i)), arg_1.c, Struct_1(_wgslsmith_clamp_i32(-2147483647i, 32720i, 0i), -vec4<i32>(33457i, 0i, -2147483647i, -12264i)))), max(5167i, 1i));
    let var_1 = _wgslsmith_mult_i32((_wgslsmith_div_i32(2495i, var_0.x) << (~48090u % 32u)) | var_0.x, var_0.x & 4051i);
    global0 = ~vec3<u32>(_wgslsmith_sub_u32(36172u, 1u) | arg_1.c, min(arg_1.d.x, firstLeadingBit(~arg_1.c)), u_input.a);
    return Struct_3(Struct_1(~1i, vec4<i32>((var_0.x ^ 27376i) & firstLeadingBit(-1i), var_1, var_1, -(var_0.x >> (10808u % 32u)))), Struct_1(~(~(-13811i)), _wgslsmith_mult_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(3039i, var_1, -2147483647i, -1i), max(-vec4<i32>(var_0.x, var_0.x, 50397i, var_0.x), vec4<i32>(var_1, var_0.x, 1259i, var_1)))), ~(~arg_1.d.x), Struct_1(-2147483647i, -abs(_wgslsmith_sub_vec4_i32(vec4<i32>(var_1, 1838i, 40575i, -4487i), vec4<i32>(var_1, var_1, -2147483647i, var_0.x)))));
}

fn func_1() -> Struct_3 {
    let var_0 = vec3<i32>(_wgslsmith_dot_vec3_i32(max(max(~vec3<i32>(0i, -23779i, -20975i), vec3<i32>(1i, -2147483647i, 44159i)), vec3<i32>(firstLeadingBit(-16857i), abs(1i), 23593i)), ~vec3<i32>(countOneBits(-1i), min(0i, 2147483647i), -26008i)), ~(~1i), -(~(-(~(-25275i)))));
    var var_1 = func_2(-118f, Struct_2(vec2<bool>(all(vec2<bool>(true, false)), true), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1200f, 1000f), vec2<f32>(1000f, 117f), vec2<bool>(false, true))))), ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, global0.x, u_input.a), vec3<u32>(22611u, 35732u, global0.x))), abs(~vec4<u32>(u_input.a, 4294967295u, 0u, u_input.a) << (~vec4<u32>(u_input.a, 4294967295u, global0.x, 78591u) % vec4<u32>(32u)))));
    let var_2 = ~(-2147483647i);
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1f))))));
    var var_4 = _wgslsmith_mult_u32(~1258u, ~0u ^ _wgslsmith_add_u32(global0.x, u_input.a));
    return func_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1696f + -1100f), _wgslsmith_f_op_f32(min(2552f, 106f)))) - -292f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(1292f)), -1000f)))), Struct_2(vec2<bool>(true, true), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(150f, 462f)))), ~var_1.c, vec4<u32>(_wgslsmith_div_u32(12621u, ~var_1.c), 1u, 48307u, _wgslsmith_div_u32(reverseBits(u_input.a), _wgslsmith_sub_u32(var_1.c, u_input.a)))));
}

fn func_5(arg_0: Struct_3, arg_1: Struct_1) -> vec4<u32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(-402f)), _wgslsmith_div_f32(-841f, -2001f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-467f))), -804f) * vec3<f32>(724f, 1000f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-178f, 1059f)))));
    let var_1 = Struct_2(select(select(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false)), vec2<bool>(true, false), false), vec2<bool>(false, true), select(select(vec2<bool>(false, true), vec2<bool>(true, false), all(vec2<bool>(true, true))), select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false))), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-446f, _wgslsmith_div_f32(var_0.x, var_0.x)))), global0.x, ~(~vec4<u32>(~4294967295u, 45357u, 55216u, global0.x & 4294967295u)));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1212f * 312f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2160f + -777f)) + var_1.b.x)) * var_0.x);
    let var_3 = func_1().b;
    let var_4 = var_0.x;
    return vec4<u32>(33116u, ~_wgslsmith_add_u32(global0.x, abs(1u)), 9812u, var_1.c);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_4, 31>();
    global1 = -2147483647i;
    let var_0 = -1266f;
    let var_1 = -383f;
    let var_2 = min(_wgslsmith_sub_vec4_u32(vec4<u32>(~27696u, global0.x, _wgslsmith_mod_u32(global0.x, global0.x), countOneBits(4294967295u)) & ~vec4<u32>(u_input.a, u_input.a, 1u, global0.x), countOneBits(func_5(func_1(), func_1().d))), _wgslsmith_mod_vec4_u32(vec4<u32>(0u, u_input.a, max(_wgslsmith_dot_vec3_u32(vec3<u32>(global0.x, u_input.a, global0.x), vec3<u32>(1691u, u_input.a, 58978u)), u_input.a), 0u), select(_wgslsmith_clamp_vec4_u32(~vec4<u32>(4294967295u, global0.x, 220u, 8427u), _wgslsmith_add_vec4_u32(vec4<u32>(global0.x, global0.x, u_input.a, global0.x), vec4<u32>(global0.x, global0.x, u_input.a, u_input.a)), reverseBits(vec4<u32>(global0.x, u_input.a, u_input.a, 0u))), firstLeadingBit(vec4<u32>(2996u, u_input.a, global0.x, 18707u)), true)));
    let x = u_input.a;
    s_output = StorageBuffer(~2147483647i, u_input.a & ~global0.x);
}

