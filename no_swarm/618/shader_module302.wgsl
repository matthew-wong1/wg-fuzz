struct Struct_1 {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec3<bool>,
    d: bool,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: i32,
    d: bool,
    e: i32,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct Struct_4 {
    a: vec3<bool>,
    b: Struct_1,
    c: vec4<bool>,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<u32>,
    d: vec3<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 26> = array<Struct_4, 26>(Struct_4(vec3<bool>(true, true, true), Struct_1(vec4<i32>(58080i, i32(-2147483648), 2147483647i, -17735i), vec4<u32>(25172u, 0u, 1u, 80248u), vec3<bool>(true, true, true), false), vec4<bool>(false, false, true, true), Struct_2(vec3<i32>(1i, i32(-2147483648), i32(-2147483648)), Struct_1(vec4<i32>(i32(-2147483648), 0i, 69053i, 7943i), vec4<u32>(14556u, 4294967295u, 35483u, 1473u), vec3<bool>(false, false, true), true), 1i, true, -30131i)), Struct_4(vec3<bool>(true, true, true), Struct_1(vec4<i32>(i32(-2147483648), 43213i, 0i, 14063i), vec4<u32>(7267u, 1u, 31396u, 106456u), vec3<bool>(false, false, true), true), vec4<bool>(false, false, false, false), Struct_2(vec3<i32>(0i, -1211i, 12490i), Struct_1(vec4<i32>(i32(-2147483648), -46007i, 1315i, 6050i), vec4<u32>(42696u, 15947u, 21219u, 47050u), vec3<bool>(true, false, false), true), -49753i, true, 2147483647i)), Struct_4(vec3<bool>(true, false, true), Struct_1(vec4<i32>(-12398i, -1555i, 2147483647i, 6888i), vec4<u32>(61806u, 4294967295u, 42462u, 5084u), vec3<bool>(false, false, false), true), vec4<bool>(false, false, false, true), Struct_2(vec3<i32>(49249i, -1i, -1i), Struct_1(vec4<i32>(-31061i, -19115i, -7945i, -5491i), vec4<u32>(1u, 1097u, 85068u, 0u), vec3<bool>(false, true, true), true), 0i, true, i32(-2147483648))), Struct_4(vec3<bool>(false, false, false), Struct_1(vec4<i32>(-8780i, 3819i, 1i, -1i), vec4<u32>(28190u, 13610u, 0u, 7250u), vec3<bool>(true, true, true), true), vec4<bool>(false, false, true, true), Struct_2(vec3<i32>(1i, -15958i, 17032i), Struct_1(vec4<i32>(1i, -54022i, -25197i, 12827i), vec4<u32>(89477u, 4294967295u, 0u, 18691u), vec3<bool>(true, false, true), false), -24359i, false, 45479i)), Struct_4(vec3<bool>(false, false, true), Struct_1(vec4<i32>(2147483647i, 19608i, -12298i, -1254i), vec4<u32>(28863u, 78276u, 0u, 56573u), vec3<bool>(false, false, false), false), vec4<bool>(true, false, true, false), Struct_2(vec3<i32>(0i, 24442i, -36354i), Struct_1(vec4<i32>(-1i, 0i, 23829i, -36480i), vec4<u32>(10538u, 1u, 1u, 0u), vec3<bool>(true, false, true), true), 30232i, true, i32(-2147483648))), Struct_4(vec3<bool>(true, true, true), Struct_1(vec4<i32>(i32(-2147483648), 15384i, -25635i, i32(-2147483648)), vec4<u32>(4067u, 4294967295u, 1u, 0u), vec3<bool>(true, true, true), false), vec4<bool>(true, true, false, false), Struct_2(vec3<i32>(-13593i, 39556i, 29618i), Struct_1(vec4<i32>(1560i, i32(-2147483648), 2147483647i, i32(-2147483648)), vec4<u32>(1u, 0u, 45284u, 1u), vec3<bool>(true, true, true), true), 12943i, true, 2147483647i)), Struct_4(vec3<bool>(true, false, true), Struct_1(vec4<i32>(i32(-2147483648), 2147483647i, -1i, 0i), vec4<u32>(0u, 58170u, 0u, 1u), vec3<bool>(true, true, false), false), vec4<bool>(true, true, true, true), Struct_2(vec3<i32>(2147483647i, 12762i, i32(-2147483648)), Struct_1(vec4<i32>(i32(-2147483648), -15623i, -1i, i32(-2147483648)), vec4<u32>(4294967295u, 0u, 17068u, 1u), vec3<bool>(true, true, true), true), -24577i, false, 2147483647i)), Struct_4(vec3<bool>(false, false, false), Struct_1(vec4<i32>(8111i, -12966i, -7244i, -1i), vec4<u32>(4294967295u, 32536u, 0u, 1u), vec3<bool>(false, false, false), false), vec4<bool>(false, false, false, true), Struct_2(vec3<i32>(19714i, -23466i, -11071i), Struct_1(vec4<i32>(2147483647i, i32(-2147483648), -1i, -18637i), vec4<u32>(0u, 32675u, 135302u, 9402u), vec3<bool>(true, true, false), true), 25956i, true, -25531i)), Struct_4(vec3<bool>(true, false, false), Struct_1(vec4<i32>(0i, 2147483647i, 22334i, i32(-2147483648)), vec4<u32>(52666u, 59198u, 51634u, 39291u), vec3<bool>(true, true, false), false), vec4<bool>(false, false, true, false), Struct_2(vec3<i32>(2147483647i, 1i, -17378i), Struct_1(vec4<i32>(-29461i, -95317i, 2147483647i, 2147483647i), vec4<u32>(1u, 14422u, 51916u, 26423u), vec3<bool>(true, false, false), true), i32(-2147483648), false, 8346i)), Struct_4(vec3<bool>(false, false, false), Struct_1(vec4<i32>(44241i, 1i, 2147483647i, 1i), vec4<u32>(13094u, 0u, 0u, 10646u), vec3<bool>(true, false, false), true), vec4<bool>(true, true, false, false), Struct_2(vec3<i32>(15790i, -21964i, -1i), Struct_1(vec4<i32>(2147483647i, -44079i, -1i, -20530i), vec4<u32>(0u, 0u, 0u, 90170u), vec3<bool>(true, false, true), false), i32(-2147483648), true, 1808i)), Struct_4(vec3<bool>(true, true, true), Struct_1(vec4<i32>(-30367i, -15082i, -44625i, 1i), vec4<u32>(4294967295u, 16899u, 42018u, 56668u), vec3<bool>(false, true, true), false), vec4<bool>(false, true, false, false), Struct_2(vec3<i32>(83679i, 6019i, -10669i), Struct_1(vec4<i32>(i32(-2147483648), 2147483647i, -16148i, 2147483647i), vec4<u32>(1u, 40298u, 1u, 85172u), vec3<bool>(false, true, false), true), 26786i, false, -1i)), Struct_4(vec3<bool>(true, true, true), Struct_1(vec4<i32>(i32(-2147483648), -58477i, 7426i, 1i), vec4<u32>(49341u, 4294967295u, 11877u, 0u), vec3<bool>(false, true, false), true), vec4<bool>(true, false, true, false), Struct_2(vec3<i32>(i32(-2147483648), 1i, 2147483647i), Struct_1(vec4<i32>(1i, 35666i, 10127i, -17934i), vec4<u32>(4294967295u, 1u, 1u, 31379u), vec3<bool>(true, false, true), false), 2147483647i, true, -36011i)), Struct_4(vec3<bool>(true, true, false), Struct_1(vec4<i32>(2147483647i, 42227i, 0i, 1i), vec4<u32>(42672u, 91532u, 99819u, 0u), vec3<bool>(true, true, false), false), vec4<bool>(false, true, true, true), Struct_2(vec3<i32>(12878i, 61375i, 2147483647i), Struct_1(vec4<i32>(62554i, 6673i, -21220i, -1i), vec4<u32>(0u, 16932u, 0u, 17004u), vec3<bool>(true, true, false), true), 2147483647i, false, -1i)), Struct_4(vec3<bool>(false, false, false), Struct_1(vec4<i32>(1i, 1i, 2147483647i, -9074i), vec4<u32>(4294967295u, 52637u, 20657u, 17663u), vec3<bool>(false, false, false), false), vec4<bool>(false, false, false, true), Struct_2(vec3<i32>(799i, -51224i, 706i), Struct_1(vec4<i32>(0i, -17034i, 1i, -1i), vec4<u32>(0u, 0u, 17450u, 11258u), vec3<bool>(false, false, true), true), 1i, false, 0i)), Struct_4(vec3<bool>(true, true, false), Struct_1(vec4<i32>(20219i, -3906i, -1i, 0i), vec4<u32>(3435u, 4294967295u, 4294967295u, 1u), vec3<bool>(true, false, true), true), vec4<bool>(true, false, false, false), Struct_2(vec3<i32>(i32(-2147483648), -1i, -1i), Struct_1(vec4<i32>(17316i, 45727i, -1i, -22285i), vec4<u32>(1u, 4294967295u, 56815u, 0u), vec3<bool>(true, false, false), false), -5249i, true, 2147483647i)), Struct_4(vec3<bool>(false, true, false), Struct_1(vec4<i32>(-9231i, 1i, 0i, -25199i), vec4<u32>(7614u, 12068u, 4294967295u, 35616u), vec3<bool>(true, true, true), true), vec4<bool>(false, true, false, true), Struct_2(vec3<i32>(i32(-2147483648), -5659i, 0i), Struct_1(vec4<i32>(0i, -21488i, -6889i, 2147483647i), vec4<u32>(4294967295u, 0u, 16696u, 4294967295u), vec3<bool>(true, false, true), false), 1i, false, -9573i)), Struct_4(vec3<bool>(false, false, true), Struct_1(vec4<i32>(9549i, i32(-2147483648), 30463i, -4517i), vec4<u32>(66319u, 1u, 27007u, 0u), vec3<bool>(false, true, true), false), vec4<bool>(false, true, true, true), Struct_2(vec3<i32>(1i, 1i, i32(-2147483648)), Struct_1(vec4<i32>(2147483647i, 1i, 3755i, -1i), vec4<u32>(9622u, 1u, 4294967295u, 4294967295u), vec3<bool>(true, false, false), true), -20149i, true, 1i)), Struct_4(vec3<bool>(false, false, true), Struct_1(vec4<i32>(2147483647i, 1i, 38238i, 1i), vec4<u32>(33923u, 5777u, 0u, 1u), vec3<bool>(false, true, true), false), vec4<bool>(false, true, true, true), Struct_2(vec3<i32>(2147483647i, 15573i, 2147483647i), Struct_1(vec4<i32>(-11938i, i32(-2147483648), -6493i, -26922i), vec4<u32>(9045u, 155288u, 0u, 11493u), vec3<bool>(true, false, true), false), -24022i, false, 26560i)), Struct_4(vec3<bool>(false, true, false), Struct_1(vec4<i32>(52016i, 0i, 1i, -24310i), vec4<u32>(0u, 66740u, 31883u, 28808u), vec3<bool>(false, true, false), true), vec4<bool>(true, false, true, false), Struct_2(vec3<i32>(-3926i, -24358i, 3517i), Struct_1(vec4<i32>(i32(-2147483648), 20550i, -466i, 20913i), vec4<u32>(67944u, 1u, 28725u, 1u), vec3<bool>(true, true, true), false), -1i, false, -20843i)), Struct_4(vec3<bool>(true, true, false), Struct_1(vec4<i32>(-17545i, -2730i, -43944i, 0i), vec4<u32>(37548u, 14624u, 0u, 8674u), vec3<bool>(false, false, true), false), vec4<bool>(true, true, false, true), Struct_2(vec3<i32>(56654i, 59890i, 0i), Struct_1(vec4<i32>(19249i, -13467i, 7702i, 2147483647i), vec4<u32>(34515u, 23493u, 12489u, 100978u), vec3<bool>(false, false, true), true), 28354i, false, -10251i)), Struct_4(vec3<bool>(true, false, true), Struct_1(vec4<i32>(17620i, 45787i, 42378i, 0i), vec4<u32>(28807u, 4294967295u, 0u, 48424u), vec3<bool>(false, true, true), false), vec4<bool>(false, true, true, true), Struct_2(vec3<i32>(20825i, 1i, 1i), Struct_1(vec4<i32>(-33065i, 3921i, 1i, -1i), vec4<u32>(3197u, 1u, 7894u, 0u), vec3<bool>(true, false, false), true), 13692i, false, 1i)), Struct_4(vec3<bool>(true, false, false), Struct_1(vec4<i32>(24485i, -46610i, 2147483647i, 15396i), vec4<u32>(49941u, 4294967295u, 41859u, 1u), vec3<bool>(true, false, true), true), vec4<bool>(false, true, false, true), Struct_2(vec3<i32>(i32(-2147483648), 2147483647i, i32(-2147483648)), Struct_1(vec4<i32>(6444i, -1i, 2806i, -80632i), vec4<u32>(1022u, 4294967295u, 1u, 0u), vec3<bool>(true, false, false), false), 68252i, false, -1i)), Struct_4(vec3<bool>(true, false, false), Struct_1(vec4<i32>(-35591i, -41443i, 2147483647i, -29095i), vec4<u32>(1u, 9526u, 0u, 0u), vec3<bool>(false, false, true), false), vec4<bool>(true, true, false, true), Struct_2(vec3<i32>(-17326i, 2147483647i, 1i), Struct_1(vec4<i32>(31346i, 1i, -34174i, i32(-2147483648)), vec4<u32>(3121u, 0u, 57384u, 1u), vec3<bool>(false, true, false), false), -54371i, false, 19046i)), Struct_4(vec3<bool>(false, false, false), Struct_1(vec4<i32>(-9932i, i32(-2147483648), 3969i, 4361i), vec4<u32>(41436u, 18828u, 1u, 4294967295u), vec3<bool>(false, false, false), false), vec4<bool>(true, true, false, false), Struct_2(vec3<i32>(21699i, 27936i, i32(-2147483648)), Struct_1(vec4<i32>(1i, 0i, 53493i, -74109i), vec4<u32>(4294967295u, 1u, 44916u, 0u), vec3<bool>(false, true, false), false), 66324i, false, 14919i)), Struct_4(vec3<bool>(true, true, true), Struct_1(vec4<i32>(24894i, 0i, 44910i, 1i), vec4<u32>(115231u, 7027u, 818u, 8867u), vec3<bool>(false, false, false), true), vec4<bool>(true, true, false, false), Struct_2(vec3<i32>(-16439i, 14410i, 41492i), Struct_1(vec4<i32>(2147483647i, 4193i, 30458i, -14108i), vec4<u32>(1u, 33612u, 4294967295u, 52326u), vec3<bool>(true, false, false), true), 1i, false, 1i)), Struct_4(vec3<bool>(true, true, false), Struct_1(vec4<i32>(i32(-2147483648), 2147483647i, -1i, 2147483647i), vec4<u32>(42070u, 1u, 8220u, 17692u), vec3<bool>(false, false, false), true), vec4<bool>(false, true, false, false), Struct_2(vec3<i32>(-16361i, -81115i, 0i), Struct_1(vec4<i32>(23272i, -14664i, -53310i, 17280i), vec4<u32>(4294967295u, 24491u, 19026u, 77629u), vec3<bool>(true, false, true), true), i32(-2147483648), false, 19197i)));

var<private> global1: array<i32, 1>;

var<private> global2: f32 = 1399f;

var<private> global3: Struct_3;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_2(arg_0: bool, arg_1: f32) -> Struct_4 {
    var var_0 = false;
    global1 = array<i32, 1>();
    let var_1 = arg_1;
    let var_2 = false;
    let var_3 = global0[_wgslsmith_index_u32(min(max(_wgslsmith_sub_u32(9322u, global3.a.x), u_input.c.x), ~u_input.b), 26u)];
    return global0[_wgslsmith_index_u32(~1u, 26u)];
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_4, arg_2: vec2<bool>, arg_3: Struct_4) -> Struct_3 {
    global2 = 547f;
    let var_0 = func_2(arg_3.d.d, 763f).c;
    var var_1 = Struct_3(~arg_1.b.b.yz);
    var var_2 = 4294967295u;
    let var_3 = _wgslsmith_mod_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(18480u, arg_3.d.b.b.x), reverseBits(u_input.c)) << ((_wgslsmith_mod_vec2_u32(arg_0.yx, vec2<u32>(global3.a.x, arg_0.x)) << (~vec2<u32>(arg_1.b.b.x, arg_1.b.b.x) % vec2<u32>(32u))) % vec2<u32>(32u)), arg_1.d.b.b.wx) << ((vec2<u32>(arg_0.x, _wgslsmith_dot_vec3_u32(~vec3<u32>(58751u, var_1.a.x, var_1.a.x), ~vec3<u32>(8345u, u_input.c.x, 1u))) >> (_wgslsmith_add_vec2_u32(vec2<u32>(func_2(arg_1.c.x, -123f).d.b.b.x, 1u), u_input.d.xz ^ (arg_0.zz >> (arg_3.d.b.b.yx % vec2<u32>(32u)))) % vec2<u32>(32u))) % vec2<u32>(32u));
    return Struct_3(vec2<u32>(abs(_wgslsmith_dot_vec2_u32(~var_1.a, abs(global3.a))), u_input.c.x));
}

fn func_1(arg_0: Struct_4, arg_1: vec3<bool>, arg_2: f32, arg_3: vec4<i32>) -> vec3<bool> {
    global3 = Struct_3(~abs(arg_0.d.b.b.xx ^ arg_0.b.b.yx));
    var var_0 = _wgslsmith_div_vec3_i32(arg_3.wyy, arg_3.yzy);
    global3 = func_3(arg_0.d.b.b.yyx, func_2(arg_0.b.d, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(398f))), arg_2)), arg_0.b.c.zx, Struct_4(select(vec3<bool>(false, arg_0.c.x, !arg_1.x), vec3<bool>(true, func_2(false, arg_2).d.b.d, all(arg_1.zz)), !func_2(arg_1.x, arg_2).d.b.c), Struct_1(_wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, 1i, 0i, arg_0.d.e), firstLeadingBit(arg_0.d.b.a)), arg_0.b.b, vec3<bool>(true, arg_0.b.c.x, true), true), arg_0.c, func_2(false, _wgslsmith_f_op_f32(step(arg_2, arg_2))).d));
    global3 = Struct_3(_wgslsmith_mult_vec2_u32(arg_0.d.b.b.wy, vec2<u32>(firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.b.b.x, 0u, global3.a.x, u_input.b), vec4<u32>(global3.a.x, 0u, u_input.c.x, global3.a.x))), _wgslsmith_sub_u32(arg_0.b.b.x, ~global3.a.x))));
    var var_1 = _wgslsmith_dot_vec2_i32(firstTrailingBit(~vec2<i32>(var_0.x, ~arg_0.b.a.x)), _wgslsmith_mod_vec2_i32(_wgslsmith_mult_vec2_i32(var_0.xz, arg_3.yy), vec2<i32>(25523i, func_2(arg_0.d.d, 905f).b.a.x)));
    return func_2(~(_wgslsmith_mult_u32(arg_0.b.b.x, 39361u) >> (abs(arg_0.d.b.b.x) % 32u)) < (32355u << ((91803u << (~global3.a.x % 32u)) % 32u)), _wgslsmith_f_op_f32(step(arg_2, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-520f)) - -203f), _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(-765f * arg_2))))))).b.c;
}

fn func_4(arg_0: Struct_4, arg_1: Struct_2, arg_2: i32) -> Struct_3 {
    let var_0 = arg_1.b.a.xwy;
    let var_1 = select(vec2<bool>(any(arg_0.a), false), arg_1.b.c.yz, !vec2<bool>(arg_1.b.d, all(vec3<bool>(arg_0.a.x, arg_1.d, arg_1.b.c.x))));
    var var_2 = 1u;
    global1 = array<i32, 1>();
    var var_3 = Struct_2(select(_wgslsmith_mod_vec3_i32(-vec3<i32>(-1i, 31564i, -2147483647i), select(vec3<i32>(arg_1.b.a.x, 1i, var_0.x), var_0, true)) ^ var_0, _wgslsmith_mod_vec3_i32(-var_0, -(var_0 ^ arg_1.a)), vec3<bool>(!any(vec3<bool>(true, true, var_1.x)), all(arg_0.c), func_3(arg_0.b.b.yyz, Struct_4(vec3<bool>(false, false, var_1.x), Struct_1(vec4<i32>(arg_2, -11695i, -54594i, 2147483647i), arg_1.b.b, vec3<bool>(arg_1.d, var_1.x, false), true), arg_0.c, Struct_2(arg_0.b.a.yyw, Struct_1(arg_0.b.a, vec4<u32>(4294967295u, 1u, 637u, u_input.b), arg_1.b.c, false), global1[_wgslsmith_index_u32(u_input.c.x, 1u)], var_1.x, 2147483647i)), vec2<bool>(true, arg_0.a.x), Struct_4(vec3<bool>(arg_0.d.d, true, var_1.x), Struct_1(arg_0.b.a, vec4<u32>(22451u, 4294967295u, u_input.d.x, 44587u), vec3<bool>(false, arg_0.c.x, var_1.x), arg_1.b.c.x), vec4<bool>(arg_1.d, arg_0.b.d, true, var_1.x), arg_0.d)).a.x >= arg_1.b.b.x)), func_2(any(func_2(arg_0.b.d, _wgslsmith_f_op_f32(571f * 702f)).c), _wgslsmith_f_op_f32(trunc(-1245f))).d.b, ~(-_wgslsmith_add_i32(arg_1.e, -arg_0.b.a.x)), false != all(!arg_1.b.c), ~_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(~arg_0.d.a, vec3<i32>(arg_1.a.x, u_input.e.x, global1[_wgslsmith_index_u32(7064u, 1u)])), -_wgslsmith_sub_vec3_i32(arg_0.d.b.a.zzz, arg_1.a)));
    return Struct_3(~firstTrailingBit(_wgslsmith_div_vec2_u32(var_3.b.b.xx, func_3(vec3<u32>(u_input.c.x, var_3.b.b.x, 4294967295u), Struct_4(vec3<bool>(true, true, true), arg_1.b, arg_0.c, arg_1), var_1, arg_0).a)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 97101u < global3.a.x;
    global3 = func_4(Struct_4(select(select(vec3<bool>(var_0, true, false), vec3<bool>(true, true, true), true), func_1(Struct_4(vec3<bool>(false, var_0, var_0), Struct_1(vec4<i32>(0i, -1i, global1[_wgslsmith_index_u32(4294967295u, 1u)], -2081i), vec4<u32>(34742u, global3.a.x, u_input.d.x, global3.a.x), vec3<bool>(var_0, true, false), var_0), vec4<bool>(var_0, true, var_0, var_0), Struct_2(vec3<i32>(1i, -78229i, -25241i), Struct_1(vec4<i32>(global1[_wgslsmith_index_u32(u_input.d.x, 1u)], u_input.a.x, -5575i, global1[_wgslsmith_index_u32(78263u, 1u)]), vec4<u32>(0u, 4294967295u, u_input.d.x, 0u), vec3<bool>(true, var_0, true), false), global1[_wgslsmith_index_u32(1u, 1u)], var_0, 27095i)), !vec3<bool>(false, false, var_0), _wgslsmith_div_f32(575f, -547f), _wgslsmith_mult_vec4_i32(vec4<i32>(-200i, -2147483647i, global1[_wgslsmith_index_u32(global3.a.x, 1u)], u_input.e.x), vec4<i32>(global1[_wgslsmith_index_u32(0u, 1u)], 32804i, 16667i, global1[_wgslsmith_index_u32(u_input.c.x, 1u)]))), var_0), func_2(true, _wgslsmith_f_op_f32(105f - _wgslsmith_f_op_f32(771f - 623f))).b, func_2(var_0, 1f).c, Struct_2(abs(vec3<i32>(u_input.a.x, 74059i, u_input.e.x)) << (min(u_input.d, vec3<u32>(21401u, 4074u, 0u)) % vec3<u32>(32u)), func_2(var_0, _wgslsmith_f_op_f32(floor(855f))).b, -u_input.e.x, var_0, -u_input.a.x)), func_2(var_0, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(954f - 1048f) * -2061f), -960f)).d, 1680i);
    var var_1 = ~0u;
    let var_2 = global0[_wgslsmith_index_u32(1u, 26u)];
    global1 = array<i32, 1>();
    var var_3 = Struct_2(var_2.d.a, func_2(!any(vec3<bool>(false, true, var_0)), _wgslsmith_f_op_f32(step(-959f, -1146f))).b, ~(i32(-1i) * -10989i), all(vec3<bool>(true, all(var_2.b.c), !(var_0 || true))), -var_2.d.b.a.x);
    var_3 = var_2.d;
    let var_4 = var_3.b.c.x & (var_3.b.d && false);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(273f, 848f, -1000f), vec3<f32>(-2139f, 137f, -240f), vec3<bool>(false, false, var_3.b.d))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1403f, -100f, 2420f))))))));
}

