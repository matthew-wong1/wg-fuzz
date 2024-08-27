struct Struct_1 {
    a: f32,
    b: vec3<f32>,
    c: vec2<u32>,
    d: f32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec4<u32>,
    c: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<u32>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
    c: vec4<u32>,
    d: i32,
}

struct Struct_5 {
    a: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 12>;

var<private> global1: array<Struct_4, 32> = array<Struct_4, 32>(Struct_4(Struct_3(Struct_2(vec4<i32>(i32(-2147483648), 0i, -25241i, 1i), vec4<u32>(16623u, 3504u, 6182u, 1u), 24927u), vec4<u32>(4294967295u, 0u, 83916u, 1u)), Struct_2(vec4<i32>(-1i, 2147483647i, -20912i, -1i), vec4<u32>(1u, 4294967295u, 4294967295u, 39810u), 41121u), vec4<u32>(0u, 1u, 42298u, 59972u), 16378i), Struct_4(Struct_3(Struct_2(vec4<i32>(2147483647i, 6151i, 2147483647i, 0i), vec4<u32>(4294967295u, 4294967295u, 0u, 0u), 4294967295u), vec4<u32>(51891u, 43816u, 24585u, 0u)), Struct_2(vec4<i32>(-39148i, 27273i, i32(-2147483648), 0i), vec4<u32>(1u, 1u, 10484u, 22589u), 9071u), vec4<u32>(4294967295u, 1u, 1u, 0u), -1097i), Struct_4(Struct_3(Struct_2(vec4<i32>(i32(-2147483648), 2147483647i, 0i, 3642i), vec4<u32>(0u, 0u, 0u, 47049u), 4294967295u), vec4<u32>(13736u, 4294967295u, 82163u, 0u)), Struct_2(vec4<i32>(-1i, 47839i, -34396i, 2151i), vec4<u32>(0u, 0u, 4294967295u, 0u), 4294967295u), vec4<u32>(9706u, 11681u, 1794u, 37454u), -9365i), Struct_4(Struct_3(Struct_2(vec4<i32>(2147483647i, -1i, -7352i, i32(-2147483648)), vec4<u32>(33451u, 4294967295u, 1u, 18279u), 0u), vec4<u32>(0u, 16424u, 37753u, 4294967295u)), Struct_2(vec4<i32>(31125i, 6194i, i32(-2147483648), 1i), vec4<u32>(1u, 0u, 24553u, 16348u), 1u), vec4<u32>(4294967295u, 1u, 1u, 1u), 27859i), Struct_4(Struct_3(Struct_2(vec4<i32>(i32(-2147483648), -1i, 1i, 0i), vec4<u32>(4294967295u, 35258u, 1u, 4294967295u), 4294967295u), vec4<u32>(15637u, 82570u, 34515u, 41659u)), Struct_2(vec4<i32>(55066i, -24767i, -42107i, -1i), vec4<u32>(133870u, 4294967295u, 84611u, 1u), 80320u), vec4<u32>(1u, 1u, 73607u, 32200u), -5879i), Struct_4(Struct_3(Struct_2(vec4<i32>(i32(-2147483648), -40647i, -1i, 0i), vec4<u32>(79388u, 1u, 4294967295u, 41265u), 33016u), vec4<u32>(0u, 108679u, 31544u, 25283u)), Struct_2(vec4<i32>(58159i, 2147483647i, 51089i, 26181i), vec4<u32>(1u, 41750u, 4291u, 1u), 0u), vec4<u32>(30290u, 1u, 48436u, 0u), 4632i), Struct_4(Struct_3(Struct_2(vec4<i32>(-1i, i32(-2147483648), 65357i, 42636i), vec4<u32>(0u, 11024u, 58614u, 76703u), 0u), vec4<u32>(18239u, 4294967295u, 4294967295u, 19426u)), Struct_2(vec4<i32>(i32(-2147483648), 12824i, 40251i, 1i), vec4<u32>(15631u, 10180u, 58200u, 4294967295u), 12004u), vec4<u32>(1u, 0u, 4294967295u, 19695u), 2147483647i), Struct_4(Struct_3(Struct_2(vec4<i32>(1i, 61821i, -336i, i32(-2147483648)), vec4<u32>(0u, 0u, 11283u, 4294967295u), 4294967295u), vec4<u32>(58676u, 4294967295u, 4294967295u, 1u)), Struct_2(vec4<i32>(28811i, 2147483647i, i32(-2147483648), -34304i), vec4<u32>(8345u, 32111u, 1u, 71549u), 1u), vec4<u32>(63307u, 0u, 76186u, 7385u), -1i), Struct_4(Struct_3(Struct_2(vec4<i32>(-11209i, -1i, -14775i, 1i), vec4<u32>(30901u, 0u, 1u, 101u), 23335u), vec4<u32>(1u, 59506u, 0u, 0u)), Struct_2(vec4<i32>(2147483647i, i32(-2147483648), -20947i, 1i), vec4<u32>(8581u, 4294967295u, 0u, 1u), 0u), vec4<u32>(1u, 40879u, 8169u, 77989u), -1i), Struct_4(Struct_3(Struct_2(vec4<i32>(1i, 1528i, 45749i, -1i), vec4<u32>(35866u, 4294967295u, 69598u, 2795u), 21610u), vec4<u32>(1u, 53842u, 30000u, 1u)), Struct_2(vec4<i32>(1i, -26263i, 0i, i32(-2147483648)), vec4<u32>(1u, 4294967295u, 19046u, 34077u), 56685u), vec4<u32>(34318u, 0u, 1u, 36094u), 1i), Struct_4(Struct_3(Struct_2(vec4<i32>(3320i, i32(-2147483648), -1936i, 1i), vec4<u32>(4294967295u, 75709u, 99587u, 6214u), 4294967295u), vec4<u32>(4294967295u, 12877u, 4294967295u, 14611u)), Struct_2(vec4<i32>(-38487i, i32(-2147483648), 1i, -23369i), vec4<u32>(4294967295u, 4294967295u, 1u, 0u), 0u), vec4<u32>(36688u, 0u, 4294967295u, 30259u), 25178i), Struct_4(Struct_3(Struct_2(vec4<i32>(2147483647i, 1i, -1i, 40556i), vec4<u32>(4294967295u, 4897u, 1u, 1319u), 51182u), vec4<u32>(45832u, 94471u, 1u, 23214u)), Struct_2(vec4<i32>(56011i, 15060i, -40190i, -1i), vec4<u32>(99077u, 4294967295u, 4294967295u, 10304u), 1u), vec4<u32>(34501u, 47753u, 0u, 1u), i32(-2147483648)), Struct_4(Struct_3(Struct_2(vec4<i32>(-2182i, 29224i, -1751i, -53610i), vec4<u32>(0u, 81698u, 83771u, 4294967295u), 8005u), vec4<u32>(4294967295u, 31160u, 1u, 4294967295u)), Struct_2(vec4<i32>(-27675i, 0i, 0i, -1i), vec4<u32>(20885u, 20804u, 32368u, 4294967295u), 0u), vec4<u32>(32925u, 36899u, 1u, 74727u), 3132i), Struct_4(Struct_3(Struct_2(vec4<i32>(10895i, -1i, -17679i, -1i), vec4<u32>(21768u, 0u, 0u, 2067u), 26611u), vec4<u32>(18461u, 43253u, 75782u, 40419u)), Struct_2(vec4<i32>(-34173i, 0i, -51700i, 1i), vec4<u32>(1u, 4294967295u, 0u, 4294967295u), 48018u), vec4<u32>(1u, 4294967295u, 1u, 127261u), i32(-2147483648)), Struct_4(Struct_3(Struct_2(vec4<i32>(-3399i, -9606i, -1i, 0i), vec4<u32>(4294967295u, 16313u, 0u, 24444u), 4294967295u), vec4<u32>(36848u, 1u, 63875u, 97296u)), Struct_2(vec4<i32>(-7761i, 0i, -46064i, 14691i), vec4<u32>(4294967295u, 0u, 4294967295u, 4294967295u), 4294967295u), vec4<u32>(1u, 98629u, 46785u, 4294967295u), -1i), Struct_4(Struct_3(Struct_2(vec4<i32>(i32(-2147483648), 1i, i32(-2147483648), -1i), vec4<u32>(10102u, 4881u, 2053u, 60301u), 4318u), vec4<u32>(0u, 4294967295u, 1u, 1u)), Struct_2(vec4<i32>(i32(-2147483648), 2147483647i, 2147483647i, -26324i), vec4<u32>(0u, 37856u, 5694u, 0u), 4294967295u), vec4<u32>(0u, 48624u, 4294967295u, 4294967295u), 12957i), Struct_4(Struct_3(Struct_2(vec4<i32>(-72449i, -6314i, -9220i, -27724i), vec4<u32>(18753u, 12107u, 48996u, 0u), 72644u), vec4<u32>(6354u, 4294967295u, 4294967295u, 0u)), Struct_2(vec4<i32>(3548i, -8757i, 2147483647i, 22426i), vec4<u32>(1u, 42550u, 40005u, 73101u), 1u), vec4<u32>(0u, 1u, 5166u, 39433u), 0i), Struct_4(Struct_3(Struct_2(vec4<i32>(19602i, i32(-2147483648), 49471i, -1i), vec4<u32>(26248u, 28352u, 4294967295u, 4294967295u), 0u), vec4<u32>(1u, 5853u, 1u, 4294967295u)), Struct_2(vec4<i32>(33854i, 1i, 2147483647i, 0i), vec4<u32>(57842u, 4294967295u, 0u, 0u), 4294967295u), vec4<u32>(36814u, 57819u, 4294967295u, 20853u), -18448i), Struct_4(Struct_3(Struct_2(vec4<i32>(20565i, -58279i, 1i, 1i), vec4<u32>(4294967295u, 59174u, 33259u, 0u), 25561u), vec4<u32>(4042u, 0u, 44600u, 4294967295u)), Struct_2(vec4<i32>(10960i, 0i, 1i, -4715i), vec4<u32>(4294967295u, 30645u, 21613u, 48905u), 23286u), vec4<u32>(69566u, 44111u, 1u, 21937u), 53624i), Struct_4(Struct_3(Struct_2(vec4<i32>(10027i, 76208i, 32935i, 35906i), vec4<u32>(51673u, 1u, 7657u, 12839u), 1u), vec4<u32>(79848u, 0u, 4294967295u, 1u)), Struct_2(vec4<i32>(0i, i32(-2147483648), 92458i, 0i), vec4<u32>(68902u, 8029u, 1u, 41280u), 4294967295u), vec4<u32>(69814u, 85885u, 33574u, 0u), -3274i), Struct_4(Struct_3(Struct_2(vec4<i32>(-50257i, 32762i, 47347i, 1i), vec4<u32>(115575u, 0u, 74013u, 88581u), 54425u), vec4<u32>(8407u, 1u, 4294967295u, 5301u)), Struct_2(vec4<i32>(0i, 9589i, 25942i, -1i), vec4<u32>(103551u, 4294967295u, 55474u, 1u), 4294967295u), vec4<u32>(0u, 1u, 1u, 0u), 1i), Struct_4(Struct_3(Struct_2(vec4<i32>(13902i, -3042i, -1i, 52283i), vec4<u32>(4294967295u, 1u, 0u, 32442u), 6804u), vec4<u32>(19919u, 4294967295u, 0u, 4294967295u)), Struct_2(vec4<i32>(591i, -1i, 0i, 2147483647i), vec4<u32>(58756u, 4733u, 1u, 0u), 1u), vec4<u32>(4294967295u, 13072u, 24291u, 24816u), 1i), Struct_4(Struct_3(Struct_2(vec4<i32>(i32(-2147483648), -1i, -12131i, 0i), vec4<u32>(23012u, 45210u, 71245u, 0u), 79835u), vec4<u32>(0u, 4294967295u, 33247u, 1u)), Struct_2(vec4<i32>(0i, -5602i, 34779i, i32(-2147483648)), vec4<u32>(4294967295u, 42215u, 4294967295u, 23025u), 0u), vec4<u32>(24233u, 4294967295u, 15716u, 0u), 46443i), Struct_4(Struct_3(Struct_2(vec4<i32>(-1i, 1i, 1i, 35733i), vec4<u32>(14757u, 4294967295u, 0u, 51278u), 1u), vec4<u32>(0u, 62155u, 4294967295u, 1u)), Struct_2(vec4<i32>(-57589i, 0i, -1917i, 2147483647i), vec4<u32>(132855u, 3072u, 1u, 0u), 53630u), vec4<u32>(26275u, 4294967295u, 6414u, 52129u), -8179i), Struct_4(Struct_3(Struct_2(vec4<i32>(2147483647i, -44265i, 26529i, -26989i), vec4<u32>(1u, 1u, 89180u, 31366u), 4294967295u), vec4<u32>(54048u, 1454u, 0u, 12135u)), Struct_2(vec4<i32>(2147483647i, -34233i, 0i, 1i), vec4<u32>(1u, 48432u, 1u, 24393u), 72138u), vec4<u32>(0u, 1u, 4294967295u, 45466u), 0i), Struct_4(Struct_3(Struct_2(vec4<i32>(295i, 2147483647i, 2147483647i, 2147483647i), vec4<u32>(69652u, 182u, 0u, 1u), 7085u), vec4<u32>(1u, 4294967295u, 15489u, 17605u)), Struct_2(vec4<i32>(i32(-2147483648), 1i, i32(-2147483648), 129366i), vec4<u32>(106364u, 4294967295u, 1u, 9683u), 20610u), vec4<u32>(0u, 23741u, 77416u, 0u), 0i), Struct_4(Struct_3(Struct_2(vec4<i32>(0i, i32(-2147483648), 2147483647i, -30405i), vec4<u32>(4294967295u, 67207u, 4294967295u, 42155u), 1u), vec4<u32>(1u, 47110u, 4294967295u, 5934u)), Struct_2(vec4<i32>(i32(-2147483648), -53769i, -764i, -20348i), vec4<u32>(34018u, 0u, 50737u, 4294967295u), 19998u), vec4<u32>(1u, 15676u, 4294967295u, 4294967295u), -15233i), Struct_4(Struct_3(Struct_2(vec4<i32>(-27963i, -1i, -36313i, 1i), vec4<u32>(0u, 0u, 0u, 10840u), 1u), vec4<u32>(18416u, 34591u, 195u, 66954u)), Struct_2(vec4<i32>(24970i, 15777i, 1i, 2147483647i), vec4<u32>(1u, 5426u, 22291u, 0u), 1u), vec4<u32>(0u, 1u, 137582u, 0u), -1i), Struct_4(Struct_3(Struct_2(vec4<i32>(i32(-2147483648), 1i, 31059i, -32601i), vec4<u32>(0u, 84145u, 4294967295u, 37514u), 12696u), vec4<u32>(1u, 3214u, 53325u, 53755u)), Struct_2(vec4<i32>(-3845i, -2688i, 1i, 2147483647i), vec4<u32>(27959u, 4117u, 0u, 0u), 9534u), vec4<u32>(4294967295u, 21061u, 1u, 0u), 2147483647i), Struct_4(Struct_3(Struct_2(vec4<i32>(66369i, 2181i, 15073i, -34634i), vec4<u32>(1u, 2597u, 40537u, 4294967295u), 1u), vec4<u32>(1u, 1u, 11968u, 19752u)), Struct_2(vec4<i32>(-21470i, i32(-2147483648), -11519i, 25680i), vec4<u32>(14383u, 71982u, 29550u, 1u), 0u), vec4<u32>(39797u, 1u, 30162u, 34464u), i32(-2147483648)), Struct_4(Struct_3(Struct_2(vec4<i32>(0i, i32(-2147483648), 0i, -15055i), vec4<u32>(31911u, 6768u, 1u, 0u), 0u), vec4<u32>(48556u, 0u, 24977u, 0u)), Struct_2(vec4<i32>(-8754i, 36253i, 4497i, 82699i), vec4<u32>(4294967295u, 27327u, 64008u, 1u), 45769u), vec4<u32>(35488u, 44792u, 34321u, 1u), 0i), Struct_4(Struct_3(Struct_2(vec4<i32>(79594i, 52620i, 7161i, 61873i), vec4<u32>(1u, 1u, 0u, 5480u), 0u), vec4<u32>(4294967295u, 0u, 0u, 24984u)), Struct_2(vec4<i32>(-18759i, -35263i, 1i, -10240i), vec4<u32>(4294967295u, 4294967295u, 18345u, 1u), 4294967295u), vec4<u32>(2858u, 0u, 1u, 1u), -1514i));

var<private> global2: vec4<u32>;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: vec4<u32>, arg_1: vec2<i32>, arg_2: Struct_5, arg_3: Struct_3) -> bool {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(595f, 1000f)) - _wgslsmith_f_op_f32(f32(-1f) * -667f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(-2102f)))) + _wgslsmith_f_op_f32(f32(-1f) * -979f)) + _wgslsmith_f_op_f32(floor(-927f))));
    let var_1 = arg_2;
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-299f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -658f), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-379f, -1731f), 313f, arg_2.a)))), vec3<f32>(_wgslsmith_f_op_f32(-748f * -861f), -517f, _wgslsmith_f_op_f32(round(-1122f))), ~_wgslsmith_div_vec2_u32(vec2<u32>(0u, ~arg_0.x), ~abs(arg_0.zy)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-207f - -352f) - _wgslsmith_f_op_f32(abs(789f))) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(1081f, 1000f) + _wgslsmith_f_op_f32(sign(368f))))));
    var var_3 = arg_2;
    var_3 = Struct_5(var_2.a < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(317f))));
    return false | select(arg_2.a, !arg_2.a && !var_1.a, all(select(select(vec3<bool>(var_1.a, true, false), vec3<bool>(var_1.a, arg_2.a, false), vec3<bool>(true, var_3.a, true)), vec3<bool>(var_3.a, arg_2.a, arg_2.a), vec3<bool>(arg_2.a, var_1.a, arg_2.a))));
}

fn func_4(arg_0: bool, arg_1: Struct_1) -> u32 {
    global2 = ~u_input.a;
    global0 = array<i32, 12>();
    global1 = array<Struct_4, 32>();
    return min(global2.x | 4294967295u, firstTrailingBit(arg_1.c.x)) ^ 31966u;
}

fn func_2() -> Struct_4 {
    global2 = vec4<u32>(reverseBits(0u ^ ~u_input.a.x), ~(~(~global2.x)), func_4(func_3(vec4<u32>(u_input.a.x, 1u, global2.x, 0u), _wgslsmith_mult_vec2_i32(~vec2<i32>(0i, global0[_wgslsmith_index_u32(u_input.a.x, 12u)]), vec2<i32>(0i, global0[_wgslsmith_index_u32(48124u, 12u)]) ^ vec2<i32>(global0[_wgslsmith_index_u32(global2.x, 12u)], 15906i)), Struct_5(8780i == global0[_wgslsmith_index_u32(global2.x, 12u)]), Struct_3(Struct_2(vec4<i32>(global0[_wgslsmith_index_u32(global2.x, 12u)], global0[_wgslsmith_index_u32(global2.x, 12u)], 0i, -2147483647i), vec4<u32>(global2.x, global2.x, 17663u, 1u), u_input.a.x), reverseBits(vec4<u32>(u_input.a.x, global2.x, 15522u, 54838u)))), Struct_1(-2232f, _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(927f, -1883f, 758f), vec3<f32>(1142f, -1436f, 1000f))))), ~(u_input.a.yy & u_input.a.zx), _wgslsmith_f_op_f32(1035f + _wgslsmith_f_op_f32(round(-1000f))))), global2.x);
    let var_0 = Struct_3(Struct_2(vec4<i32>(0i, _wgslsmith_mult_i32(_wgslsmith_mod_i32(global0[_wgslsmith_index_u32(u_input.a.x, 12u)], 0i), _wgslsmith_mod_i32(global0[_wgslsmith_index_u32(global2.x, 12u)], 0i)), -35157i, -2147483647i), ~(~abs(u_input.a)), firstTrailingBit(~56808u)), _wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(max(~u_input.a, vec4<u32>(17037u, u_input.a.x, 34187u, u_input.a.x)), vec4<u32>(u_input.a.x, 4511u, u_input.a.x, u_input.a.x) & vec4<u32>(u_input.a.x, u_input.a.x, 1u, global2.x)), ~vec4<u32>(0u, 4294967295u | u_input.a.x, ~1501u, global2.x)));
    global0 = array<i32, 12>();
    global1 = array<Struct_4, 32>();
    global2 = abs(u_input.a) << (~(~(~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, global2.x, 1u, 2894u), var_0.a.b))) % vec4<u32>(32u));
    return global1[_wgslsmith_index_u32(4294967295u, 32u)];
}

fn func_5(arg_0: Struct_4, arg_1: vec2<f32>, arg_2: Struct_2) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_f32(-1063f + arg_1.x);
    var var_1 = ~_wgslsmith_mod_vec4_u32((_wgslsmith_mod_vec4_u32(u_input.a, arg_0.b.b) & abs(vec4<u32>(4294967295u, 1u, 0u, arg_0.b.b.x))) ^ vec4<u32>(4294967295u, select(4294967295u, arg_0.c.x, true), _wgslsmith_dot_vec4_u32(arg_2.b, u_input.a), _wgslsmith_mod_u32(4294967295u, arg_0.c.x)), ~arg_2.b);
    let var_2 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -201f), vec3<f32>(341f, arg_1.x, arg_1.x), arg_0.a.a.b.yy, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)));
    let var_3 = abs(var_2.c.x);
    let var_4 = _wgslsmith_add_i32(-global0[_wgslsmith_index_u32(u_input.a.x, 12u)], ~(-15012i));
    return func_2().a;
}

fn func_6(arg_0: Struct_3, arg_1: vec3<f32>) -> u32 {
    var var_0 = func_2();
    let var_1 = arg_0.a;
    let var_2 = max(arg_0.a.a, var_1.a);
    let var_3 = _wgslsmith_mult_vec2_u32(~(~firstLeadingBit(vec2<u32>(4294967295u, 1u))), _wgslsmith_mult_vec2_u32(firstLeadingBit(~(~u_input.a.wz)), u_input.a.yy >> (arg_0.a.b.zx % vec2<u32>(32u))));
    var_0 = func_2();
    return ~(~50491u);
}

fn func_1() -> vec4<u32> {
    let var_0 = ~abs(vec3<i32>(1i, global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u, u_input.a.x), 12u)], -2147483647i)) << (vec3<u32>(global2.x, func_6(func_5(func_2(), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(659f, -857f), vec2<f32>(-903f, 1248f), vec2<bool>(true, false))), func_2().a.a), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1952f, 604f, 1172f)))), _wgslsmith_div_u32(global2.x, select(u_input.a.x, 0u, false)) >> (_wgslsmith_clamp_u32(15407u, ~u_input.a.x, _wgslsmith_mod_u32(1u, u_input.a.x)) % 32u)) % vec3<u32>(32u));
    var var_1 = 24790u;
    var var_2 = true;
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-875f, -193f, 1502f) * vec3<f32>(480f, 356f, -566f)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(800f, 473f, 2035f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-540f, -1805f, -106f) + vec3<f32>(1000f, -2172f, 693f))) + vec3<f32>(-319f, _wgslsmith_f_op_f32(f32(-1f) * -621f), -244f))));
    var var_4 = Struct_5(true & any(vec3<bool>(true, true, true)));
    return vec4<u32>(6581u & _wgslsmith_div_u32(_wgslsmith_mod_u32(global2.x, select(21848u, 0u, var_4.a)), abs(u_input.a.x)), _wgslsmith_mod_u32(4294967295u, 10809u), global2.x, global2.x >> (firstLeadingBit(83837u) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = vec4<u32>(u_input.a.x, global2.x, u_input.a.x, ~95u >> (min(~1u, _wgslsmith_mult_u32(1u, global2.x)) % 32u));
    global2 = vec4<u32>(~_wgslsmith_dot_vec4_u32(u_input.a ^ vec4<u32>(4294967295u, global2.x, 42666u, 22951u), func_1()), u_input.a.x, 1u, _wgslsmith_mult_u32(max(~1u, global2.x), 0u)) & vec4<u32>(u_input.a.x, u_input.a.x, 74543u, _wgslsmith_mod_u32(0u, u_input.a.x));
    global1 = array<Struct_4, 32>();
    global2 = u_input.a;
    let var_0 = all(!vec3<bool>(true && (global0[_wgslsmith_index_u32(u_input.a.x, 12u)] >= global0[_wgslsmith_index_u32(45729u, 12u)]), -global0[_wgslsmith_index_u32(global2.x, 12u)] > (global0[_wgslsmith_index_u32(22525u, 12u)] << (4294967295u % 32u)), true));
    let var_1 = -86499i;
    let var_2 = func_2().a.a;
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~u_input.a.x)), ~(~vec3<u32>(39397u, var_2.b.x | 1u, _wgslsmith_clamp_u32(var_2.b.x, var_2.c, 5809u))), global2.x);
}

