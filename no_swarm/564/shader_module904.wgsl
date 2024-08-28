struct Struct_1 {
    a: vec2<bool>,
    b: u32,
    c: f32,
    d: vec2<bool>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
    d: bool,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 6> = array<vec3<bool>, 6>(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true));

var<private> global1: u32;

var<private> global2: Struct_1;

var<private> global3: array<Struct_2, 31> = array<Struct_2, 31>(Struct_2(Struct_1(vec2<bool>(false, true), 10555u, -287f, vec2<bool>(true, false), vec3<i32>(2147483647i, -68513i, 27660i)), Struct_1(vec2<bool>(false, false), 1u, 556f, vec2<bool>(false, true), vec3<i32>(-37351i, 0i, 8523i)), 1i, false, Struct_1(vec2<bool>(false, true), 0u, -1202f, vec2<bool>(false, true), vec3<i32>(40831i, 1i, -33898i))), Struct_2(Struct_1(vec2<bool>(true, false), 1u, -668f, vec2<bool>(true, false), vec3<i32>(-50438i, -1i, i32(-2147483648))), Struct_1(vec2<bool>(true, false), 61124u, -1135f, vec2<bool>(false, true), vec3<i32>(-41817i, 9451i, 33698i)), -1i, false, Struct_1(vec2<bool>(true, false), 2482u, 820f, vec2<bool>(true, true), vec3<i32>(0i, 1i, -32905i))), Struct_2(Struct_1(vec2<bool>(true, true), 4294967295u, -1148f, vec2<bool>(true, false), vec3<i32>(-2503i, -32297i, 751i)), Struct_1(vec2<bool>(true, false), 59316u, -955f, vec2<bool>(true, false), vec3<i32>(0i, i32(-2147483648), 30835i)), -23697i, false, Struct_1(vec2<bool>(false, true), 1u, 1756f, vec2<bool>(true, true), vec3<i32>(-12416i, 64758i, -41843i))), Struct_2(Struct_1(vec2<bool>(true, false), 5309u, 204f, vec2<bool>(false, true), vec3<i32>(52017i, 1i, -28302i)), Struct_1(vec2<bool>(true, false), 26674u, 676f, vec2<bool>(true, false), vec3<i32>(2147483647i, -228i, 2147483647i)), 10040i, false, Struct_1(vec2<bool>(false, true), 2350u, -1177f, vec2<bool>(false, false), vec3<i32>(0i, 1i, 2147483647i))), Struct_2(Struct_1(vec2<bool>(true, false), 4294967295u, 558f, vec2<bool>(true, true), vec3<i32>(-1i, 3280i, 5043i)), Struct_1(vec2<bool>(false, false), 1u, -747f, vec2<bool>(false, true), vec3<i32>(2147483647i, 1i, -1i)), 0i, true, Struct_1(vec2<bool>(false, true), 19740u, -659f, vec2<bool>(false, false), vec3<i32>(-1i, i32(-2147483648), -36899i))), Struct_2(Struct_1(vec2<bool>(true, true), 4294967295u, 1150f, vec2<bool>(false, true), vec3<i32>(0i, 1i, 2147483647i)), Struct_1(vec2<bool>(false, false), 4294967295u, 1000f, vec2<bool>(false, true), vec3<i32>(-6286i, 17955i, -37406i)), -69611i, false, Struct_1(vec2<bool>(true, false), 23797u, 397f, vec2<bool>(true, false), vec3<i32>(1i, 10356i, 36312i))), Struct_2(Struct_1(vec2<bool>(true, true), 1u, 1127f, vec2<bool>(true, true), vec3<i32>(i32(-2147483648), -9687i, 0i)), Struct_1(vec2<bool>(true, true), 42615u, -878f, vec2<bool>(true, false), vec3<i32>(1i, 13412i, i32(-2147483648))), -1i, true, Struct_1(vec2<bool>(false, true), 12902u, -2220f, vec2<bool>(true, false), vec3<i32>(-11724i, 2147483647i, -63173i))), Struct_2(Struct_1(vec2<bool>(true, false), 5207u, 1160f, vec2<bool>(true, true), vec3<i32>(-41667i, -32114i, -1i)), Struct_1(vec2<bool>(true, true), 134176u, 1053f, vec2<bool>(false, false), vec3<i32>(21859i, 0i, 0i)), 14533i, true, Struct_1(vec2<bool>(true, true), 0u, -1104f, vec2<bool>(false, true), vec3<i32>(2147483647i, -9720i, -14607i))), Struct_2(Struct_1(vec2<bool>(false, false), 4294967295u, -809f, vec2<bool>(false, true), vec3<i32>(10270i, i32(-2147483648), -14503i)), Struct_1(vec2<bool>(true, true), 0u, -699f, vec2<bool>(true, false), vec3<i32>(2147483647i, 1i, 1i)), 5374i, false, Struct_1(vec2<bool>(false, false), 0u, -302f, vec2<bool>(false, false), vec3<i32>(-15554i, -1012i, -35978i))), Struct_2(Struct_1(vec2<bool>(false, true), 16557u, 313f, vec2<bool>(false, true), vec3<i32>(25160i, 1i, i32(-2147483648))), Struct_1(vec2<bool>(false, true), 45727u, 558f, vec2<bool>(true, true), vec3<i32>(-61096i, 7371i, i32(-2147483648))), -41678i, false, Struct_1(vec2<bool>(true, false), 1u, -753f, vec2<bool>(true, true), vec3<i32>(-35511i, 5191i, -13271i))), Struct_2(Struct_1(vec2<bool>(false, false), 12279u, 1509f, vec2<bool>(false, false), vec3<i32>(-21740i, -7706i, 1i)), Struct_1(vec2<bool>(true, true), 4294967295u, 1414f, vec2<bool>(true, true), vec3<i32>(16436i, 1i, 2147483647i)), 1562i, true, Struct_1(vec2<bool>(false, false), 48017u, -321f, vec2<bool>(false, false), vec3<i32>(-25885i, -4016i, -39413i))), Struct_2(Struct_1(vec2<bool>(false, true), 29531u, -190f, vec2<bool>(false, true), vec3<i32>(-7857i, 0i, -13246i)), Struct_1(vec2<bool>(false, false), 4294967295u, -838f, vec2<bool>(true, true), vec3<i32>(i32(-2147483648), -13177i, -1i)), 49938i, false, Struct_1(vec2<bool>(false, false), 57419u, -938f, vec2<bool>(false, true), vec3<i32>(13850i, -29383i, -1i))), Struct_2(Struct_1(vec2<bool>(true, false), 1u, 1099f, vec2<bool>(true, false), vec3<i32>(-57376i, 8631i, 0i)), Struct_1(vec2<bool>(false, true), 20736u, -602f, vec2<bool>(true, true), vec3<i32>(30832i, i32(-2147483648), -13089i)), -540i, false, Struct_1(vec2<bool>(true, true), 0u, -1490f, vec2<bool>(true, true), vec3<i32>(0i, -1289i, -27531i))), Struct_2(Struct_1(vec2<bool>(true, false), 1u, -2383f, vec2<bool>(true, true), vec3<i32>(-40844i, -1i, 23659i)), Struct_1(vec2<bool>(true, false), 1u, 1000f, vec2<bool>(true, false), vec3<i32>(i32(-2147483648), -4421i, -38995i)), 2147483647i, true, Struct_1(vec2<bool>(false, true), 4294967295u, -996f, vec2<bool>(true, true), vec3<i32>(-27740i, -47317i, 39096i))), Struct_2(Struct_1(vec2<bool>(true, true), 17564u, -2119f, vec2<bool>(true, true), vec3<i32>(-25139i, 2147483647i, 26160i)), Struct_1(vec2<bool>(false, true), 0u, 196f, vec2<bool>(true, true), vec3<i32>(1621i, i32(-2147483648), 0i)), i32(-2147483648), false, Struct_1(vec2<bool>(true, true), 103451u, 484f, vec2<bool>(false, true), vec3<i32>(-29821i, 1097i, 72095i))), Struct_2(Struct_1(vec2<bool>(true, false), 0u, 274f, vec2<bool>(true, true), vec3<i32>(-1i, i32(-2147483648), -1174i)), Struct_1(vec2<bool>(false, true), 63408u, -1992f, vec2<bool>(false, true), vec3<i32>(-78338i, 1i, 1i)), i32(-2147483648), false, Struct_1(vec2<bool>(false, true), 4060u, -699f, vec2<bool>(true, false), vec3<i32>(40263i, i32(-2147483648), -22216i))), Struct_2(Struct_1(vec2<bool>(false, false), 28811u, -1561f, vec2<bool>(true, false), vec3<i32>(2147483647i, -5583i, 0i)), Struct_1(vec2<bool>(true, false), 43001u, 658f, vec2<bool>(false, false), vec3<i32>(-42126i, 21008i, -48739i)), 0i, false, Struct_1(vec2<bool>(false, true), 1u, 1732f, vec2<bool>(true, true), vec3<i32>(1i, 1i, 4333i))), Struct_2(Struct_1(vec2<bool>(false, false), 76143u, -171f, vec2<bool>(true, true), vec3<i32>(-22330i, -39487i, -32630i)), Struct_1(vec2<bool>(false, false), 4294967295u, 314f, vec2<bool>(false, false), vec3<i32>(2717i, 12297i, 2147483647i)), -48584i, true, Struct_1(vec2<bool>(true, true), 54783u, -813f, vec2<bool>(false, true), vec3<i32>(0i, 0i, 0i))), Struct_2(Struct_1(vec2<bool>(true, false), 15731u, 398f, vec2<bool>(true, false), vec3<i32>(52279i, -28897i, i32(-2147483648))), Struct_1(vec2<bool>(false, true), 38436u, -157f, vec2<bool>(true, true), vec3<i32>(i32(-2147483648), -45581i, 11110i)), -33958i, false, Struct_1(vec2<bool>(false, true), 4294967295u, -433f, vec2<bool>(false, false), vec3<i32>(i32(-2147483648), -19386i, 0i))), Struct_2(Struct_1(vec2<bool>(false, false), 41240u, 1952f, vec2<bool>(true, true), vec3<i32>(14639i, 31283i, 16316i)), Struct_1(vec2<bool>(true, false), 0u, 1493f, vec2<bool>(false, false), vec3<i32>(-4981i, 57289i, 25269i)), -33400i, false, Struct_1(vec2<bool>(false, false), 0u, 1166f, vec2<bool>(true, false), vec3<i32>(i32(-2147483648), 30419i, 1i))), Struct_2(Struct_1(vec2<bool>(true, false), 0u, -1223f, vec2<bool>(false, true), vec3<i32>(-17704i, -17277i, 2147483647i)), Struct_1(vec2<bool>(false, false), 0u, 867f, vec2<bool>(false, true), vec3<i32>(-1i, 2147483647i, 2147483647i)), 5584i, true, Struct_1(vec2<bool>(false, false), 12755u, 735f, vec2<bool>(false, true), vec3<i32>(32940i, -1i, 2147483647i))), Struct_2(Struct_1(vec2<bool>(false, true), 4294967295u, -1000f, vec2<bool>(true, false), vec3<i32>(-28537i, 52456i, 70185i)), Struct_1(vec2<bool>(true, true), 0u, 309f, vec2<bool>(false, false), vec3<i32>(-1i, -1i, -48933i)), -30634i, true, Struct_1(vec2<bool>(false, false), 1u, -270f, vec2<bool>(false, false), vec3<i32>(2147483647i, 22389i, 45484i))), Struct_2(Struct_1(vec2<bool>(true, false), 0u, -965f, vec2<bool>(false, true), vec3<i32>(-25778i, -34723i, -1i)), Struct_1(vec2<bool>(false, false), 0u, 1155f, vec2<bool>(false, false), vec3<i32>(46300i, -1i, 1i)), 83416i, true, Struct_1(vec2<bool>(false, false), 0u, -162f, vec2<bool>(false, true), vec3<i32>(-28340i, 45565i, 25993i))), Struct_2(Struct_1(vec2<bool>(true, false), 14425u, 1303f, vec2<bool>(true, true), vec3<i32>(49146i, 24717i, -32692i)), Struct_1(vec2<bool>(false, false), 4294967295u, 1464f, vec2<bool>(true, false), vec3<i32>(-2240i, 8093i, -56021i)), 34909i, true, Struct_1(vec2<bool>(true, true), 4294967295u, -1450f, vec2<bool>(true, false), vec3<i32>(-60777i, 13648i, 44238i))), Struct_2(Struct_1(vec2<bool>(false, false), 1u, -924f, vec2<bool>(true, true), vec3<i32>(1i, 11365i, 32308i)), Struct_1(vec2<bool>(false, true), 13434u, -1000f, vec2<bool>(false, true), vec3<i32>(-56513i, -1i, 26794i)), -1i, false, Struct_1(vec2<bool>(false, true), 92838u, -111f, vec2<bool>(true, false), vec3<i32>(0i, 1i, 24060i))), Struct_2(Struct_1(vec2<bool>(true, false), 1u, -968f, vec2<bool>(true, false), vec3<i32>(1i, -675i, 2147483647i)), Struct_1(vec2<bool>(true, true), 3958u, 1569f, vec2<bool>(true, true), vec3<i32>(2147483647i, 5763i, -1i)), 32873i, false, Struct_1(vec2<bool>(false, true), 46980u, 1289f, vec2<bool>(false, true), vec3<i32>(i32(-2147483648), -1i, 2147483647i))), Struct_2(Struct_1(vec2<bool>(false, true), 50511u, -311f, vec2<bool>(false, false), vec3<i32>(-33505i, 35482i, 2147483647i)), Struct_1(vec2<bool>(true, true), 59234u, -1398f, vec2<bool>(false, true), vec3<i32>(-11185i, -1241i, 24966i)), 1i, false, Struct_1(vec2<bool>(false, true), 11965u, -880f, vec2<bool>(false, true), vec3<i32>(20393i, 2147483647i, -22796i))), Struct_2(Struct_1(vec2<bool>(true, false), 17978u, -1226f, vec2<bool>(true, false), vec3<i32>(-10668i, 0i, -24865i)), Struct_1(vec2<bool>(true, false), 1u, -1355f, vec2<bool>(true, false), vec3<i32>(2147483647i, -55148i, 42859i)), -1i, true, Struct_1(vec2<bool>(true, false), 33832u, -1000f, vec2<bool>(true, false), vec3<i32>(1i, i32(-2147483648), -72791i))), Struct_2(Struct_1(vec2<bool>(false, true), 4294967295u, 665f, vec2<bool>(true, true), vec3<i32>(2147483647i, i32(-2147483648), 1i)), Struct_1(vec2<bool>(true, true), 11411u, -647f, vec2<bool>(false, false), vec3<i32>(-1i, -1i, 11656i)), 2147483647i, false, Struct_1(vec2<bool>(true, true), 8971u, 497f, vec2<bool>(true, true), vec3<i32>(2147483647i, -9648i, 21935i))), Struct_2(Struct_1(vec2<bool>(true, true), 47565u, 396f, vec2<bool>(true, false), vec3<i32>(i32(-2147483648), -1i, 0i)), Struct_1(vec2<bool>(true, true), 1u, -355f, vec2<bool>(true, true), vec3<i32>(-1i, 28812i, 7413i)), 0i, true, Struct_1(vec2<bool>(true, true), 39315u, 153f, vec2<bool>(true, true), vec3<i32>(-61245i, -17343i, -1i))), Struct_2(Struct_1(vec2<bool>(false, false), 44685u, -1000f, vec2<bool>(true, false), vec3<i32>(1i, 1i, 1i)), Struct_1(vec2<bool>(false, false), 4294967295u, 1000f, vec2<bool>(true, true), vec3<i32>(2147483647i, 8871i, 19124i)), -23176i, true, Struct_1(vec2<bool>(false, true), 4294967295u, 762f, vec2<bool>(true, false), vec3<i32>(43227i, 2147483647i, 20027i))));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> vec2<u32> {
    global0 = array<vec3<bool>, 6>();
    global1 = firstLeadingBit(~_wgslsmith_sub_u32(_wgslsmith_mod_u32(u_input.c, ~43492u), 51644u));
    var var_0 = Struct_1(!(!vec2<bool>(global2.d.x, true)), ~min(u_input.c, _wgslsmith_mult_u32(4294967295u, u_input.b.x)), _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global2.c, global2.c, all(global0[_wgslsmith_index_u32(u_input.c, 6u)]))))), vec2<bool>(all(!vec2<bool>(global2.d.x, global2.d.x)), 1i >= (-17975i >> (u_input.b.x % 32u))), ~(-global2.e ^ global2.e));
    let var_1 = global2.c > -2071f;
    let var_2 = Struct_2(Struct_1(vec2<bool>(true, (global2.d.x | true) || all(vec3<bool>(true, true, true))), abs(~select(6021u, 0u, var_0.a.x)), var_0.c, select(select(select(global2.d, var_0.d, var_0.a), vec2<bool>(global2.a.x, var_0.d.x), select(vec2<bool>(var_0.a.x, var_1), vec2<bool>(false, var_0.d.x), var_1)), vec2<bool>(true, var_0.a.x), var_0.d.x), _wgslsmith_mult_vec3_i32(select(global2.e, ~global2.e, var_1), var_0.e)), Struct_1(var_0.a, 38439u, _wgslsmith_f_op_f32(f32(-1f) * -1000f), global2.a, -(global2.e & -global2.e)), ~_wgslsmith_clamp_i32(~(-1i & u_input.a), u_input.d, -u_input.d | 1i), false, Struct_1(global2.a, u_input.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c)), vec2<bool>(all(vec3<bool>(var_0.d.x, global2.a.x, true)), global2.a.x), vec3<i32>(_wgslsmith_mod_i32(_wgslsmith_sub_i32(global2.e.x, 1i), global2.e.x), -1i, firstTrailingBit(u_input.a & 0i))));
    return select(reverseBits(_wgslsmith_div_vec2_u32(u_input.b.ww & u_input.b.wz, vec2<u32>(1u, _wgslsmith_div_u32(var_0.b, 0u)))), vec2<u32>(_wgslsmith_sub_u32(u_input.c, abs(1u)), ~var_0.b), true);
}

fn func_2(arg_0: f32, arg_1: Struct_1) -> Struct_1 {
    global1 = _wgslsmith_dot_vec2_u32(vec2<u32>(~abs(countOneBits(u_input.b.x)), 4294967295u), ~(~func_3()));
    let var_0 = Struct_2(arg_1, arg_1, global2.e.x, !global2.d.x, Struct_1(vec2<bool>(false, !any(vec4<bool>(false, true, arg_1.d.x, global2.d.x))), firstLeadingBit(arg_1.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global2.c)) - _wgslsmith_div_f32(1000f, -665f)) - global2.c), global2.d, ~arg_1.e));
    return Struct_1(!(!(!var_0.b.d)), global2.b | var_0.e.b, arg_1.c, !select(vec2<bool>(global2.d.x, !global2.a.x), select(vec2<bool>(global2.a.x, false), global2.a, any(vec4<bool>(global2.a.x, false, global2.a.x, false))), vec2<bool>(var_0.e.d.x, !var_0.a.d.x)), _wgslsmith_add_vec3_i32(vec3<i32>(16656i, -1i, _wgslsmith_dot_vec2_i32(~vec2<i32>(-39873i, global2.e.x), global2.e.yy)), ~_wgslsmith_sub_vec3_i32(global2.e, vec3<i32>(u_input.a, 0i, 1i))));
}

fn func_4(arg_0: Struct_2, arg_1: vec4<f32>) -> vec4<i32> {
    let var_0 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -216f)), func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1579f)), func_2(_wgslsmith_f_op_f32(ceil(arg_1.x)), Struct_1(!vec2<bool>(global2.a.x, false), ~arg_0.b.b, _wgslsmith_f_op_f32(-arg_1.x), arg_0.b.d, global2.e))));
    global2 = Struct_1(!func_2(_wgslsmith_f_op_f32(f32(-1f) * -159f), func_2(arg_1.x, Struct_1(global2.d, 4294967295u, 1464f, vec2<bool>(true, var_0.d.x), global2.e))).a, (24341u << (_wgslsmith_mult_u32(global2.b, var_0.b) % 32u)) << (_wgslsmith_add_u32(arg_0.a.b, 4294967295u) % 32u), _wgslsmith_f_op_f32(f32(-1f) * -812f), select(!select(vec2<bool>(false, true), select(arg_0.e.d, var_0.a, arg_0.a.a), !var_0.d.x), select(select(!var_0.a, vec2<bool>(var_0.d.x, global2.a.x), select(arg_0.e.a, var_0.a, vec2<bool>(true, arg_0.a.a.x))), vec2<bool>(!arg_0.e.d.x, false), select(arg_0.a.d, !vec2<bool>(true, arg_0.a.a.x), vec2<bool>(false, false))), !global2.d), vec3<i32>(_wgslsmith_add_i32(-51919i, -func_2(1098f, Struct_1(var_0.d, 52697u, 969f, var_0.d, arg_0.e.e)).e.x), var_0.e.x ^ 59776i, 18166i));
    let var_1 = global2.b <= 55072u;
    let var_2 = Struct_2(func_2(var_0.c, Struct_1(vec2<bool>(true, any(vec3<bool>(global2.d.x, false, false))), 4294967295u, 1131f, vec2<bool>(global2.a.x, false), ~vec3<i32>(-2147483647i, global2.e.x, u_input.d) << (u_input.b.zzx % vec3<u32>(32u)))), func_2(_wgslsmith_f_op_f32(min(-1111f, _wgslsmith_f_op_f32(exp2(arg_1.x)))), arg_0.a), u_input.a, false, Struct_1(select(func_2(arg_1.x, Struct_1(vec2<bool>(true, true), global2.b, var_0.c, vec2<bool>(true, arg_0.e.a.x), global2.e)).a, select(func_2(-888f, Struct_1(vec2<bool>(var_0.d.x, var_1), var_0.b, global2.c, vec2<bool>(var_1, true), vec3<i32>(-1i, 1i, global2.e.x))).a, vec2<bool>(global2.d.x, var_0.d.x), func_2(-1014f, Struct_1(vec2<bool>(arg_0.e.d.x, true), var_0.b, -636f, vec2<bool>(var_1, true), arg_0.b.e)).a), !(!vec2<bool>(arg_0.b.d.x, true))), max(_wgslsmith_mult_u32(4294967295u, global2.b), abs(var_0.b)), arg_0.b.c, select(vec2<bool>(true, func_2(global2.c, var_0).a.x), !vec2<bool>(false, var_1), !select(var_0.d, vec2<bool>(false, arg_0.a.a.x), var_0.a)), select(var_0.e, _wgslsmith_add_vec3_i32(vec3<i32>(u_input.d, -4281i, arg_0.e.e.x), arg_0.a.e), all(!vec4<bool>(false, var_0.a.x, false, true)))));
    let var_3 = var_0;
    return max(reverseBits(~vec4<i32>(_wgslsmith_add_i32(u_input.a, -2147483647i), var_0.e.x, i32(-1i) * -9573i, 0i)), ~(-min(vec4<i32>(-2147483647i, 1i, -28967i, -2147483647i), vec4<i32>(var_0.e.x, 22730i, -16831i, global2.e.x)) ^ _wgslsmith_mult_vec4_i32(vec4<i32>(-44112i, var_3.e.x, 2147483647i, var_2.a.e.x), -vec4<i32>(var_0.e.x, var_0.e.x, u_input.a, 71934i))));
}

fn func_1(arg_0: vec4<bool>, arg_1: bool, arg_2: Struct_2, arg_3: vec3<bool>) -> Struct_1 {
    var var_0 = func_4(Struct_2(Struct_1(!(!vec2<bool>(arg_3.x, arg_0.x)), global2.b, arg_2.a.c, !select(arg_2.e.d, vec2<bool>(false, true), vec2<bool>(arg_1, arg_1)), arg_2.a.e), func_2(582f, arg_2.a), arg_2.a.e.x << (reverseBits(~1u) % 32u), arg_3.x, arg_2.a), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(891f, -945f, arg_2.b.c, -1000f), _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.c, global2.c, arg_2.b.c, -956f) - vec4<f32>(arg_2.a.c, 2640f, global2.c, arg_2.a.c)), arg_0.x)), vec4<f32>(722f, _wgslsmith_f_op_f32(trunc(arg_2.b.c)), _wgslsmith_f_op_f32(ceil(global2.c)), 1390f), arg_0.x)))));
    let var_1 = global2.e;
    let var_2 = func_2(func_2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.c * arg_2.b.c) * _wgslsmith_f_op_f32(trunc(-164f))), global2.c)), Struct_1(select(vec2<bool>(global2.d.x, false), func_2(global2.c, arg_2.e).a, func_2(178f, Struct_1(vec2<bool>(arg_0.x, true), global2.b, global2.c, arg_2.e.d, arg_2.b.e)).d), ~reverseBits(global2.b), 231f, arg_3.yy, _wgslsmith_clamp_vec3_i32(-vec3<i32>(2147483647i, var_0.x, -1i), global2.e >> (vec3<u32>(1u, global2.b, u_input.c) % vec3<u32>(32u)), ~arg_2.a.e))).c, func_2(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(-arg_2.b.c)), arg_2.e));
    var_0 = select(_wgslsmith_mod_vec4_i32(func_4(arg_2, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global2.c, 492f, 528f, -154f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-405f, -194f, var_2.c, var_2.c) * vec4<f32>(arg_2.b.c, global2.c, var_2.c, arg_2.b.c)))), -max(firstTrailingBit(vec4<i32>(-20173i, arg_2.b.e.x, 1436i, u_input.a)), _wgslsmith_mod_vec4_i32(vec4<i32>(0i, arg_2.b.e.x, -26933i, global2.e.x), vec4<i32>(u_input.a, -3247i, arg_2.c, var_0.x)))), -vec4<i32>(-global2.e.x, u_input.d ^ 59158i, _wgslsmith_div_i32(var_0.x, -14499i), -34977i) & -vec4<i32>(0i, ~arg_2.b.e.x, 2400i, global2.e.x << (1u % 32u)), arg_0);
    global0 = array<vec3<bool>, 6>();
    return func_2(-107f, Struct_1(arg_0.xx, abs(4294967295u), _wgslsmith_f_op_f32(_wgslsmith_div_f32(440f, _wgslsmith_f_op_f32(arg_2.b.c * -734f)) + _wgslsmith_f_op_f32(f32(-1f) * -326f)), !vec2<bool>(arg_0.x, false || arg_3.x), var_2.e));
}

fn func_5(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: u32) -> i32 {
    global2 = Struct_1(vec2<bool>(!(all(vec3<bool>(false, global2.a.x, arg_0.e.a.x)) | global2.a.x), arg_0.d), select(0u, arg_0.a.b & ~_wgslsmith_add_u32(arg_2, global2.b), arg_0.e.c < _wgslsmith_f_op_f32(func_1(vec4<bool>(true, true, true, arg_0.e.d.x), arg_0.d, arg_0, global0[_wgslsmith_index_u32(1u, 6u)]).c + _wgslsmith_f_op_f32(arg_0.a.c + 1128f))), global2.c, arg_0.b.a, _wgslsmith_add_vec3_i32(max(firstLeadingBit(arg_1.zyy), arg_0.a.e), -select(vec3<i32>(global2.e.x, -19030i, -2147483647i), vec3<i32>(arg_1.x, global2.e.x, global2.e.x), select(true, global2.a.x, false))));
    var var_0 = global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.b.xx, u_input.b.yz), 31u)];
    global2 = func_2(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.c - 425f)), _wgslsmith_f_op_f32(exp2(var_0.e.c))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_0.a.c - global2.c), _wgslsmith_f_op_f32(arg_0.e.c + 143f))), global2.c))), var_0.e);
    var var_1 = -1000f;
    let var_2 = ~u_input.b.xw;
    return -select(_wgslsmith_mult_i32(reverseBits(0i), -u_input.a) ^ global2.e.x, _wgslsmith_mod_i32(~arg_1.x, -var_0.b.e.x >> (max(1u, var_0.a.b) % 32u)), false);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_1(vec2<bool>(!((u_input.b.x & global2.b) <= u_input.c), !(all(vec4<bool>(false, global2.d.x, global2.d.x, global2.a.x)) | (-517f < global2.c))), ~global2.b, _wgslsmith_f_op_f32(f32(-1f) * -725f), global2.a, _wgslsmith_mult_vec3_i32(~firstTrailingBit(firstTrailingBit(global2.e)), global2.e & abs(_wgslsmith_div_vec3_i32(global2.e, global2.e))));
    var var_0 = _wgslsmith_sub_i32(0i, _wgslsmith_div_i32(global2.e.x, func_5(Struct_2(Struct_1(vec2<bool>(global2.a.x, true), u_input.b.x, 1489f, vec2<bool>(false, global2.d.x), global2.e), Struct_1(global2.d, u_input.b.x, 537f, vec2<bool>(global2.a.x, global2.d.x), global2.e), abs(global2.e.x), u_input.a != -43664i, func_1(vec4<bool>(global2.a.x, false, global2.d.x, false), global2.d.x, global3[_wgslsmith_index_u32(0u, 31u)], global0[_wgslsmith_index_u32(4294967295u, 6u)])), vec4<i32>(-global2.e.x, 1i, -7348i, -global2.e.x), 1u)));
    let var_1 = Struct_2(Struct_1(global2.a, u_input.c, 543f, vec2<bool>(global2.d.x, !global2.d.x), _wgslsmith_sub_vec3_i32(reverseBits(_wgslsmith_mult_vec3_i32(global2.e, global2.e)), vec3<i32>(~global2.e.x, 1i, min(-18042i, -74873i)))), Struct_1(vec2<bool>(select(global2.d.x, func_2(346f, Struct_1(vec2<bool>(global2.d.x, global2.a.x), 5975u, global2.c, vec2<bool>(global2.a.x, global2.d.x), vec3<i32>(-2147483647i, u_input.d, 0i))).d.x, true), u_input.a == global2.e.x), ~(~67608u ^ _wgslsmith_mult_u32(4294967295u, global2.b)), -809f, vec2<bool>(true, all(!global2.a)), firstTrailingBit(-(vec3<i32>(global2.e.x, u_input.d, u_input.a) | global2.e))), ~u_input.a, all(select(!select(vec4<bool>(false, false, true, global2.a.x), vec4<bool>(global2.d.x, true, false, false), global2.a.x), select(select(vec4<bool>(global2.a.x, true, global2.d.x, false), vec4<bool>(global2.a.x, false, global2.a.x, global2.a.x), false), vec4<bool>(global2.a.x, true, false, global2.a.x), vec4<bool>(global2.a.x, global2.d.x, false, true)), select(!vec4<bool>(false, true, global2.a.x, global2.d.x), vec4<bool>(global2.a.x, true, global2.a.x, true), vec4<bool>(global2.a.x, false, false, false)))), Struct_1(func_2(global2.c, func_2(-328f, Struct_1(vec2<bool>(false, true), 5638u, 1054f, vec2<bool>(global2.d.x, global2.a.x), global2.e))).d, min(abs(u_input.c), 4294967295u), _wgslsmith_f_op_f32(max(global2.c, _wgslsmith_f_op_f32(-360f - _wgslsmith_div_f32(244f, global2.c)))), vec2<bool>((0u >= u_input.b.x) != any(vec2<bool>(global2.d.x, false)), !(!global2.d.x)), _wgslsmith_sub_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a, global2.e.x, u_input.a) ^ vec3<i32>(-2147483647i, global2.e.x, -35221i), countOneBits(global2.e), func_4(Struct_2(Struct_1(global2.d, 4294967295u, -371f, global2.d, global2.e), Struct_1(global2.a, u_input.c, global2.c, global2.d, global2.e), 27387i, global2.d.x, Struct_1(vec2<bool>(false, global2.a.x), 23478u, global2.c, global2.a, global2.e)), vec4<f32>(1910f, -399f, 1005f, global2.c)).xxw), global2.e)));
    var_0 = var_1.a.e.x;
    var var_2 = global2.d;
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.a.c + 2129f), var_1.b.c) + var_1.b.c);
    var var_4 = (_wgslsmith_mod_i32(2147483647i, _wgslsmith_mod_i32(var_1.b.e.x, countOneBits(2824i))) >> (global2.b % 32u)) < 7i;
    let var_5 = _wgslsmith_dot_vec4_u32(vec4<u32>(37254u, _wgslsmith_dot_vec2_u32(u_input.b.zz, u_input.b.wx), _wgslsmith_dot_vec4_u32(vec4<u32>(51018u, 0u, _wgslsmith_sub_u32(u_input.b.x, u_input.b.x), min(var_1.e.b, 23254u)), u_input.b), global2.b), u_input.b);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, -func_1(!vec4<bool>(global2.a.x, var_1.e.a.x, var_2.x, var_2.x), true, Struct_2(var_1.b, func_1(vec4<bool>(var_1.d, global2.d.x, global2.a.x, false), false, global3[_wgslsmith_index_u32(var_5, 31u)], global0[_wgslsmith_index_u32(global2.b, 6u)]), 22757i, select(var_2.x, true, global2.a.x), func_2(var_1.b.c, Struct_1(global2.d, var_1.a.b, -1488f, vec2<bool>(true, true), vec3<i32>(u_input.d, 1i, global2.e.x)))), select(global0[_wgslsmith_index_u32(var_1.b.b, 6u)], select(vec3<bool>(global2.a.x, false, global2.a.x), vec3<bool>(var_2.x, true, false), global2.a.x), !global2.a.x)).e.x, select(_wgslsmith_mod_vec2_i32(func_1(select(vec4<bool>(var_2.x, false, global2.a.x, global2.d.x), vec4<bool>(true, global2.d.x, false, false), var_2.x), var_1.e.d.x, global3[_wgslsmith_index_u32(40866u, 31u)], select(global0[_wgslsmith_index_u32(28736u, 6u)], vec3<bool>(var_1.e.a.x, false, var_1.a.a.x), global0[_wgslsmith_index_u32(65545u, 6u)])).e.yz, select(vec2<i32>(13332i, var_1.c), vec2<i32>(u_input.d, 0i) | global2.e.xx, vec2<bool>(var_1.e.a.x, true))), -_wgslsmith_add_vec2_i32(-global2.e.xx, func_4(Struct_2(var_1.e, var_1.b, 1i, true, var_1.a), vec4<f32>(var_1.b.c, 1954f, -1344f, 224f)).xy), var_1.e.a.x), 117f, var_1.e.e.x & u_input.a);
}

