struct Struct_1 {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec3<i32>,
    d: vec2<i32>,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: f32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(vec2<i32>(i32(-2147483648), -23820i), vec2<i32>(12959i, 58252i), vec3<i32>(0i, -1i, i32(-2147483648)), vec2<i32>(5125i, 53466i), vec2<f32>(-1000f, 1000f)), Struct_1(vec2<i32>(2147483647i, -23692i), vec2<i32>(-41040i, -90245i), vec3<i32>(0i, 20091i, 2147483647i), vec2<i32>(-1i, 12832i), vec2<f32>(-605f, -2663f)), Struct_1(vec2<i32>(-23237i, 2147483647i), vec2<i32>(0i, -1i), vec3<i32>(1i, 0i, -13953i), vec2<i32>(57981i, 45961i), vec2<f32>(-869f, -1027f)), Struct_1(vec2<i32>(-12161i, 46118i), vec2<i32>(-40265i, 2147483647i), vec3<i32>(-22556i, 24963i, i32(-2147483648)), vec2<i32>(-1i, 0i), vec2<f32>(-154f, 2479f)), Struct_1(vec2<i32>(2147483647i, 1i), vec2<i32>(0i, -1i), vec3<i32>(-35800i, 0i, i32(-2147483648)), vec2<i32>(17956i, -50349i), vec2<f32>(1285f, 305f)), Struct_1(vec2<i32>(15833i, 63451i), vec2<i32>(i32(-2147483648), -31572i), vec3<i32>(-15431i, 16479i, 2147483647i), vec2<i32>(1i, 1i), vec2<f32>(-1034f, -1722f)), Struct_1(vec2<i32>(-1i, i32(-2147483648)), vec2<i32>(0i, -17783i), vec3<i32>(-18859i, -55811i, 1i), vec2<i32>(29161i, 1i), vec2<f32>(-993f, 437f)), Struct_1(vec2<i32>(34685i, 0i), vec2<i32>(1i, 1i), vec3<i32>(-35879i, 2147483647i, -34607i), vec2<i32>(38692i, -15245i), vec2<f32>(1229f, 487f)), Struct_1(vec2<i32>(28512i, -15244i), vec2<i32>(-35559i, 0i), vec3<i32>(0i, 0i, 2147483647i), vec2<i32>(1i, i32(-2147483648)), vec2<f32>(-1513f, -750f)), Struct_1(vec2<i32>(12158i, 2147483647i), vec2<i32>(1i, -1i), vec3<i32>(-1i, i32(-2147483648), -35249i), vec2<i32>(-1i, 43902i), vec2<f32>(612f, -1999f)), Struct_1(vec2<i32>(-27130i, 17102i), vec2<i32>(-1i, 0i), vec3<i32>(-1i, -1i, 21078i), vec2<i32>(i32(-2147483648), 2147483647i), vec2<f32>(1163f, -125f)), Struct_1(vec2<i32>(1i, 11774i), vec2<i32>(2147483647i, 2147483647i), vec3<i32>(36554i, 2147483647i, -20998i), vec2<i32>(2147483647i, -1i), vec2<f32>(1000f, -668f)), Struct_1(vec2<i32>(17412i, i32(-2147483648)), vec2<i32>(28528i, 4475i), vec3<i32>(-19548i, -1i, 2147483647i), vec2<i32>(11327i, -13393i), vec2<f32>(374f, 398f)), Struct_1(vec2<i32>(2147483647i, i32(-2147483648)), vec2<i32>(2147483647i, -40923i), vec3<i32>(42604i, 12396i, -14469i), vec2<i32>(0i, -16032i), vec2<f32>(1000f, 787f)), Struct_1(vec2<i32>(46334i, -23317i), vec2<i32>(i32(-2147483648), 2147483647i), vec3<i32>(30357i, 2147483647i, 1i), vec2<i32>(0i, 42158i), vec2<f32>(103f, -454f)), Struct_1(vec2<i32>(-29063i, 1i), vec2<i32>(0i, -1i), vec3<i32>(-2181i, -27123i, -1i), vec2<i32>(-53i, i32(-2147483648)), vec2<f32>(1374f, -809f)), Struct_1(vec2<i32>(64207i, 0i), vec2<i32>(6080i, 44684i), vec3<i32>(-50728i, 65331i, -54505i), vec2<i32>(-1i, -65952i), vec2<f32>(1715f, 911f)), Struct_1(vec2<i32>(i32(-2147483648), 28656i), vec2<i32>(3394i, -17985i), vec3<i32>(i32(-2147483648), 2147483647i, -1i), vec2<i32>(0i, 1i), vec2<f32>(295f, -1000f)), Struct_1(vec2<i32>(-9583i, -7294i), vec2<i32>(-1960i, 1i), vec3<i32>(-1i, 64605i, i32(-2147483648)), vec2<i32>(1i, 24100i), vec2<f32>(1089f, -148f)), Struct_1(vec2<i32>(5499i, 2147483647i), vec2<i32>(2147483647i, -2499i), vec3<i32>(i32(-2147483648), i32(-2147483648), i32(-2147483648)), vec2<i32>(1454i, -37494i), vec2<f32>(1268f, 261f)), Struct_1(vec2<i32>(2147483647i, -58508i), vec2<i32>(-47388i, -24784i), vec3<i32>(34796i, i32(-2147483648), i32(-2147483648)), vec2<i32>(-23241i, 12770i), vec2<f32>(-507f, 1794f)), Struct_1(vec2<i32>(0i, i32(-2147483648)), vec2<i32>(9373i, 8600i), vec3<i32>(-345i, 18601i, 1i), vec2<i32>(-51642i, -13497i), vec2<f32>(1385f, 217f)), Struct_1(vec2<i32>(18979i, -14507i), vec2<i32>(28545i, -1i), vec3<i32>(-6019i, -13320i, 2147483647i), vec2<i32>(-33898i, -56726i), vec2<f32>(2454f, -282f)), Struct_1(vec2<i32>(-30750i, 9336i), vec2<i32>(i32(-2147483648), 28135i), vec3<i32>(-37641i, -13406i, 1i), vec2<i32>(2147483647i, -1i), vec2<f32>(548f, -483f)), Struct_1(vec2<i32>(39590i, 0i), vec2<i32>(0i, -8768i), vec3<i32>(-11458i, 1i, 27401i), vec2<i32>(i32(-2147483648), 0i), vec2<f32>(1178f, 1191f)), Struct_1(vec2<i32>(-1i, -16507i), vec2<i32>(0i, -1i), vec3<i32>(0i, 6130i, -1i), vec2<i32>(39905i, -1i), vec2<f32>(-599f, -235f)), Struct_1(vec2<i32>(6086i, -28300i), vec2<i32>(1i, -1i), vec3<i32>(-14035i, -1417i, -30456i), vec2<i32>(0i, 42694i), vec2<f32>(-1000f, 1656f)), Struct_1(vec2<i32>(2147483647i, -1i), vec2<i32>(i32(-2147483648), 3599i), vec3<i32>(30959i, -18264i, 42928i), vec2<i32>(1i, i32(-2147483648)), vec2<f32>(1069f, -589f)), Struct_1(vec2<i32>(-1i, -20866i), vec2<i32>(0i, 0i), vec3<i32>(i32(-2147483648), 32837i, -1i), vec2<i32>(-1i, 1i), vec2<f32>(-801f, 1087f)));

var<private> global1: array<Struct_1, 32> = array<Struct_1, 32>(Struct_1(vec2<i32>(27648i, i32(-2147483648)), vec2<i32>(27156i, 2147483647i), vec3<i32>(-1i, 17235i, -5853i), vec2<i32>(-37601i, i32(-2147483648)), vec2<f32>(1470f, 1000f)), Struct_1(vec2<i32>(1i, -11782i), vec2<i32>(1i, 2147483647i), vec3<i32>(77585i, -12081i, 2147483647i), vec2<i32>(-86302i, -31346i), vec2<f32>(1000f, 230f)), Struct_1(vec2<i32>(0i, i32(-2147483648)), vec2<i32>(-4991i, 0i), vec3<i32>(-1i, i32(-2147483648), -15658i), vec2<i32>(-34416i, 2147483647i), vec2<f32>(1338f, -2557f)), Struct_1(vec2<i32>(-37607i, 940i), vec2<i32>(3754i, 4618i), vec3<i32>(1i, 61032i, -4016i), vec2<i32>(2147483647i, 27992i), vec2<f32>(-127f, -2540f)), Struct_1(vec2<i32>(5455i, 1i), vec2<i32>(-16054i, -12691i), vec3<i32>(10127i, -1i, -10924i), vec2<i32>(0i, i32(-2147483648)), vec2<f32>(-565f, -1261f)), Struct_1(vec2<i32>(-2572i, 63935i), vec2<i32>(7740i, 13202i), vec3<i32>(0i, 2147483647i, 0i), vec2<i32>(-33495i, 2147483647i), vec2<f32>(-785f, -1181f)), Struct_1(vec2<i32>(i32(-2147483648), 1i), vec2<i32>(43257i, -10279i), vec3<i32>(i32(-2147483648), 2147483647i, -1i), vec2<i32>(39854i, -19817i), vec2<f32>(-605f, 101f)), Struct_1(vec2<i32>(-25455i, -1552i), vec2<i32>(-1i, 472i), vec3<i32>(1i, -1i, i32(-2147483648)), vec2<i32>(-17324i, -37920i), vec2<f32>(762f, -238f)), Struct_1(vec2<i32>(-17501i, -14183i), vec2<i32>(2147483647i, 2147483647i), vec3<i32>(26147i, 2147483647i, -1i), vec2<i32>(30384i, -30886i), vec2<f32>(-372f, -975f)), Struct_1(vec2<i32>(-1i, 1i), vec2<i32>(17905i, 2147483647i), vec3<i32>(-14694i, -1i, 9847i), vec2<i32>(56517i, 57122i), vec2<f32>(1524f, -1452f)), Struct_1(vec2<i32>(17699i, -11500i), vec2<i32>(-1i, i32(-2147483648)), vec3<i32>(i32(-2147483648), 16116i, 62558i), vec2<i32>(1i, 51664i), vec2<f32>(-1181f, 856f)), Struct_1(vec2<i32>(18377i, -1i), vec2<i32>(i32(-2147483648), i32(-2147483648)), vec3<i32>(-37975i, 0i, -26172i), vec2<i32>(46680i, -17633i), vec2<f32>(-838f, 924f)), Struct_1(vec2<i32>(-1i, -1i), vec2<i32>(0i, i32(-2147483648)), vec3<i32>(9229i, 0i, -3548i), vec2<i32>(-42143i, 1i), vec2<f32>(524f, 1109f)), Struct_1(vec2<i32>(0i, 2147483647i), vec2<i32>(1i, 0i), vec3<i32>(24517i, 28099i, 2147483647i), vec2<i32>(1i, -10315i), vec2<f32>(3554f, -174f)), Struct_1(vec2<i32>(1i, 2147483647i), vec2<i32>(-46608i, 0i), vec3<i32>(1i, 35953i, i32(-2147483648)), vec2<i32>(2147483647i, -4930i), vec2<f32>(-1229f, 875f)), Struct_1(vec2<i32>(1i, 5275i), vec2<i32>(-1i, 1i), vec3<i32>(-32213i, -3831i, -21996i), vec2<i32>(0i, -4859i), vec2<f32>(357f, 180f)), Struct_1(vec2<i32>(11679i, 2147483647i), vec2<i32>(i32(-2147483648), -29341i), vec3<i32>(-7795i, 0i, 2147483647i), vec2<i32>(0i, 1i), vec2<f32>(-994f, 1000f)), Struct_1(vec2<i32>(2147483647i, -11054i), vec2<i32>(-1i, 9040i), vec3<i32>(1i, 2147483647i, 73695i), vec2<i32>(12747i, 2147483647i), vec2<f32>(-456f, -1000f)), Struct_1(vec2<i32>(0i, i32(-2147483648)), vec2<i32>(1i, 6341i), vec3<i32>(0i, i32(-2147483648), -1i), vec2<i32>(1i, -16818i), vec2<f32>(-755f, -201f)), Struct_1(vec2<i32>(2147483647i, 45982i), vec2<i32>(-7487i, 19495i), vec3<i32>(13455i, -1i, 46531i), vec2<i32>(1i, 25038i), vec2<f32>(1000f, 863f)), Struct_1(vec2<i32>(-1i, 13792i), vec2<i32>(4175i, -20563i), vec3<i32>(15082i, -18016i, 28029i), vec2<i32>(-2043i, -20819i), vec2<f32>(457f, 1107f)), Struct_1(vec2<i32>(-1i, 26741i), vec2<i32>(-17908i, -23951i), vec3<i32>(1i, -4131i, -8980i), vec2<i32>(21162i, 51780i), vec2<f32>(1470f, 639f)), Struct_1(vec2<i32>(0i, 37878i), vec2<i32>(5951i, 0i), vec3<i32>(2147483647i, -1i, i32(-2147483648)), vec2<i32>(2147483647i, i32(-2147483648)), vec2<f32>(-1055f, -878f)), Struct_1(vec2<i32>(0i, i32(-2147483648)), vec2<i32>(-35667i, 0i), vec3<i32>(2147483647i, i32(-2147483648), -1i), vec2<i32>(38610i, -9320i), vec2<f32>(-1203f, -682f)), Struct_1(vec2<i32>(-5037i, -20109i), vec2<i32>(20481i, 1i), vec3<i32>(-32041i, i32(-2147483648), 37175i), vec2<i32>(2147483647i, -1i), vec2<f32>(-347f, 1216f)), Struct_1(vec2<i32>(0i, 18638i), vec2<i32>(-32189i, 11855i), vec3<i32>(15289i, -42912i, 7609i), vec2<i32>(i32(-2147483648), i32(-2147483648)), vec2<f32>(700f, 420f)), Struct_1(vec2<i32>(1i, 44944i), vec2<i32>(i32(-2147483648), 0i), vec3<i32>(0i, -17710i, -49806i), vec2<i32>(2147483647i, 9358i), vec2<f32>(3564f, 1243f)), Struct_1(vec2<i32>(0i, 2147483647i), vec2<i32>(i32(-2147483648), 0i), vec3<i32>(-29251i, 18786i, i32(-2147483648)), vec2<i32>(2147483647i, -3232i), vec2<f32>(-354f, 1565f)), Struct_1(vec2<i32>(-23997i, -23821i), vec2<i32>(0i, 0i), vec3<i32>(0i, 7692i, i32(-2147483648)), vec2<i32>(27537i, -8629i), vec2<f32>(1132f, -1000f)), Struct_1(vec2<i32>(15184i, 54976i), vec2<i32>(-1i, 1i), vec3<i32>(0i, 1i, 2147483647i), vec2<i32>(-28529i, 2147483647i), vec2<f32>(2255f, 1000f)), Struct_1(vec2<i32>(-75743i, 3364i), vec2<i32>(-19935i, 0i), vec3<i32>(9587i, 0i, 1i), vec2<i32>(1i, 28556i), vec2<f32>(2506f, -1422f)), Struct_1(vec2<i32>(-4863i, 0i), vec2<i32>(2147483647i, 0i), vec3<i32>(0i, 0i, 19791i), vec2<i32>(0i, 40452i), vec2<f32>(-428f, 1564f)));

var<private> global2: Struct_1;

var<private> global3: array<bool, 30> = array<bool, 30>(true, true, true, true, false, true, true, true, true, false, true, false, true, false, true, false, false, true, false, false, false, true, true, true, false, false, false, true, true, true);

var<private> global4: vec4<i32> = vec4<i32>(i32(-2147483648), i32(-2147483648), 2147483647i, -16487i);

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: f32) -> bool {
    let var_0 = vec4<i32>(global4.x, -(-56647i << (countOneBits(_wgslsmith_mod_u32(u_input.a.x, 4294967295u)) % 32u)), ~global2.c.x ^ _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c.x, 1i), firstLeadingBit(vec2<i32>(u_input.c.x, u_input.c.x))), u_input.c.x);
    var var_1 = ~(vec3<i32>(_wgslsmith_sub_i32(var_0.x, ~1i), var_0.x ^ -2147483647i, countOneBits(-13314i)) << (vec3<u32>(u_input.a.x, 7u, countOneBits(u_input.b)) % vec3<u32>(32u)));
    global2 = Struct_1(countOneBits(_wgslsmith_clamp_vec2_i32(global4.yx, _wgslsmith_add_vec2_i32(global2.d, vec2<i32>(1i, global2.a.x)) & countOneBits(global2.d), vec2<i32>(global4.x | global4.x, 0i))), global4.yx, vec3<i32>(-1i) * -max(_wgslsmith_div_vec3_i32(vec3<i32>(1i, 2147483647i, u_input.c.x), vec3<i32>(50557i, 0i, global2.b.x)), reverseBits(u_input.c.wzz)), -vec2<i32>(firstTrailingBit(_wgslsmith_add_i32(var_1.x, global2.a.x)), select(_wgslsmith_clamp_i32(global2.b.x, -1044i, var_0.x), abs(global4.x), select(global3[_wgslsmith_index_u32(u_input.b, 30u)], true, global3[_wgslsmith_index_u32(u_input.a.x, 30u)]))), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1667f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(global2.e.x)), _wgslsmith_f_op_f32(round(arg_0)))))));
    global2 = Struct_1(min(_wgslsmith_mod_vec2_i32(~vec2<i32>(0i, -2147483647i), vec2<i32>(var_0.x, u_input.c.x ^ global2.b.x)), firstLeadingBit(vec2<i32>(var_1.x, var_0.x ^ 24990i))), firstTrailingBit(reverseBits(vec2<i32>(-var_0.x, abs(u_input.c.x)))), abs(u_input.c.wzw), var_0.zz, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global2.e.x, -1069f))))) - _wgslsmith_f_op_vec2_f32(round(vec2<f32>(525f, global2.e.x)))));
    var var_2 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.b, u_input.a.x), 29u)];
    return !(!global3[_wgslsmith_index_u32(~45840u, 30u)]);
}

fn func_2(arg_0: i32, arg_1: f32) -> vec2<i32> {
    let var_0 = global4.zx >> (vec2<u32>(~35528u, _wgslsmith_add_u32(~_wgslsmith_clamp_u32(4294967295u, u_input.b, u_input.b), ~1u)) % vec2<u32>(32u));
    let var_1 = global1[_wgslsmith_index_u32(~(~u_input.a.x), 32u)];
    global1 = array<Struct_1, 32>();
    let var_2 = 1i == var_0.x;
    var var_3 = max(u_input.b, u_input.b);
    return select(_wgslsmith_clamp_vec2_i32(vec2<i32>(~global4.x, -(arg_0 ^ var_0.x)), vec2<i32>(-1i, -30890i), vec2<i32>(2147483647i, select(_wgslsmith_mod_i32(arg_0, -33664i), var_1.b.x, func_3(-916f)))), global4.ww, !select(!all(vec4<bool>(false, var_2, false, false)), true, firstLeadingBit(34957u) == _wgslsmith_div_u32(1u, u_input.a.x)));
}

fn func_1(arg_0: vec3<f32>) -> StorageBuffer {
    let var_0 = Struct_1(_wgslsmith_clamp_vec2_i32(global2.c.yx, _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.c.x, -56593i), func_2(2147483647i, global2.e.x)), firstLeadingBit(u_input.c.xy)) >> ((vec2<u32>(u_input.b, abs(0u)) << (vec2<u32>(u_input.a.x, 44710u) % vec2<u32>(32u))) % vec2<u32>(32u)), u_input.c.yz, ~abs(u_input.c.wyx), vec2<i32>(abs(2147483647i), u_input.c.x), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-506f, arg_0.x))))));
    var var_1 = _wgslsmith_f_op_f32(max(-758f, global2.e.x));
    var var_2 = ~(i32(-1i) * -35312i);
    let var_3 = vec3<bool>(func_3(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.e.x * var_0.e.x))))), true, true);
    let var_4 = ~vec3<i32>(global4.x, var_0.c.x, ~(_wgslsmith_div_i32(global2.d.x, var_0.c.x) << (1679u % 32u)));
    return StorageBuffer(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(max(-505f, arg_0.x)), _wgslsmith_f_op_f32(round(arg_0.x)), _wgslsmith_f_op_f32(ceil(-622f)), _wgslsmith_f_op_f32(-arg_0.x)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(841f, arg_0.x, 2354f, 1126f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(669f, -1591f, 565f, arg_0.x)), var_3.x))), _wgslsmith_f_op_f32(f32(-1f) * -390f), _wgslsmith_f_op_f32(min(arg_0.x, -2179f)), var_0.c);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 29>();
    global0 = array<Struct_1, 29>();
    let var_0 = _wgslsmith_f_op_f32(global2.e.x * -744f);
    global2 = global1[_wgslsmith_index_u32(u_input.a.x, 32u)];
    let var_1 = true;
    global0 = array<Struct_1, 29>();
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1206f));
    let x = u_input.a;
    s_output = func_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0, var_0, global2.e.x), vec3<f32>(var_0, 264f, global2.e.x), global3[_wgslsmith_index_u32(u_input.b, 30u)]))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1977f, var_0, global2.e.x), vec3<f32>(-1210f, var_0, 287f)))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(1446f, -651f, _wgslsmith_f_op_f32(global2.e.x + -865f)) + vec3<f32>(var_0, global2.e.x, _wgslsmith_f_op_f32(570f * var_0)))));
}

