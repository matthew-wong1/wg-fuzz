struct Struct_1 {
    a: vec2<bool>,
    b: vec3<i32>,
    c: vec4<i32>,
    d: bool,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
    d: vec4<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 31> = array<Struct_1, 31>(Struct_1(vec2<bool>(false, false), vec3<i32>(22094i, 0i, 0i), vec4<i32>(14521i, 20050i, -23657i, -25002i), true, vec2<f32>(-1000f, -305f)), Struct_1(vec2<bool>(true, false), vec3<i32>(6472i, -1i, -1i), vec4<i32>(-41963i, 2147483647i, -9300i, i32(-2147483648)), true, vec2<f32>(-1527f, -611f)), Struct_1(vec2<bool>(true, true), vec3<i32>(0i, -1i, 2147483647i), vec4<i32>(i32(-2147483648), 0i, 8532i, -1878i), true, vec2<f32>(156f, 1116f)), Struct_1(vec2<bool>(true, false), vec3<i32>(-7805i, 2147483647i, 0i), vec4<i32>(i32(-2147483648), 2147483647i, 75155i, -1i), true, vec2<f32>(-849f, -912f)), Struct_1(vec2<bool>(true, true), vec3<i32>(7931i, 59487i, 21906i), vec4<i32>(-37643i, 18837i, -1i, 2147483647i), true, vec2<f32>(-1000f, -840f)), Struct_1(vec2<bool>(false, false), vec3<i32>(2147483647i, 0i, -1i), vec4<i32>(-1i, i32(-2147483648), -7446i, 32529i), false, vec2<f32>(-334f, 116f)), Struct_1(vec2<bool>(true, true), vec3<i32>(1i, -5590i, -1i), vec4<i32>(7999i, 25836i, -100962i, 0i), true, vec2<f32>(-677f, -247f)), Struct_1(vec2<bool>(false, true), vec3<i32>(0i, -41255i, 16713i), vec4<i32>(2147483647i, -28337i, 2147483647i, 1i), false, vec2<f32>(-350f, 800f)), Struct_1(vec2<bool>(true, true), vec3<i32>(11042i, 32193i, -1i), vec4<i32>(-1i, 4179i, -30697i, 26391i), false, vec2<f32>(-1600f, 754f)), Struct_1(vec2<bool>(false, false), vec3<i32>(2147483647i, i32(-2147483648), -25384i), vec4<i32>(1i, 2147483647i, 1i, -1i), true, vec2<f32>(-1204f, 841f)), Struct_1(vec2<bool>(true, true), vec3<i32>(2147483647i, 2147483647i, 96783i), vec4<i32>(0i, 5736i, 2147483647i, 61634i), false, vec2<f32>(1647f, 1102f)), Struct_1(vec2<bool>(false, true), vec3<i32>(-16012i, 0i, -33558i), vec4<i32>(-1i, 0i, 212i, -1i), false, vec2<f32>(-119f, -776f)), Struct_1(vec2<bool>(true, true), vec3<i32>(-1i, -44559i, -51297i), vec4<i32>(6991i, -1105i, -1i, 8081i), true, vec2<f32>(169f, -1417f)), Struct_1(vec2<bool>(true, true), vec3<i32>(8385i, 0i, -20052i), vec4<i32>(-1i, -1i, -1i, -62700i), false, vec2<f32>(-149f, 1944f)), Struct_1(vec2<bool>(false, false), vec3<i32>(27041i, 21825i, i32(-2147483648)), vec4<i32>(0i, -1i, 43657i, 4311i), false, vec2<f32>(884f, -1000f)), Struct_1(vec2<bool>(false, false), vec3<i32>(-61i, 8050i, i32(-2147483648)), vec4<i32>(i32(-2147483648), -45605i, 9962i, i32(-2147483648)), true, vec2<f32>(-1141f, -1018f)), Struct_1(vec2<bool>(false, false), vec3<i32>(15333i, 7961i, -502i), vec4<i32>(0i, 0i, 1i, 0i), true, vec2<f32>(-701f, 532f)), Struct_1(vec2<bool>(false, true), vec3<i32>(48635i, 0i, i32(-2147483648)), vec4<i32>(6902i, 42082i, -6599i, -59970i), false, vec2<f32>(1006f, 2788f)), Struct_1(vec2<bool>(true, false), vec3<i32>(2147483647i, 1i, i32(-2147483648)), vec4<i32>(2147483647i, -18814i, 0i, -1i), true, vec2<f32>(-899f, 488f)), Struct_1(vec2<bool>(false, true), vec3<i32>(-45540i, i32(-2147483648), 28703i), vec4<i32>(1i, 10072i, 8021i, 0i), false, vec2<f32>(-866f, 574f)), Struct_1(vec2<bool>(false, true), vec3<i32>(i32(-2147483648), 20395i, 20745i), vec4<i32>(i32(-2147483648), 0i, -7823i, 0i), true, vec2<f32>(-557f, 890f)), Struct_1(vec2<bool>(false, false), vec3<i32>(11848i, 6144i, 2147483647i), vec4<i32>(-37145i, i32(-2147483648), 1i, 30022i), false, vec2<f32>(-762f, -1626f)), Struct_1(vec2<bool>(false, false), vec3<i32>(-25706i, 2147483647i, 2147483647i), vec4<i32>(2147483647i, -45805i, 1i, i32(-2147483648)), false, vec2<f32>(-207f, -828f)), Struct_1(vec2<bool>(false, false), vec3<i32>(0i, 2147483647i, 66742i), vec4<i32>(48370i, -35539i, -22464i, i32(-2147483648)), false, vec2<f32>(1553f, -663f)), Struct_1(vec2<bool>(true, false), vec3<i32>(0i, -1i, 42589i), vec4<i32>(-7241i, -53112i, -6891i, 2403i), true, vec2<f32>(-492f, -821f)), Struct_1(vec2<bool>(false, false), vec3<i32>(-1i, 25190i, 37998i), vec4<i32>(3433i, 0i, 50746i, i32(-2147483648)), false, vec2<f32>(-606f, 274f)), Struct_1(vec2<bool>(true, false), vec3<i32>(-1i, 18973i, 12073i), vec4<i32>(0i, i32(-2147483648), 0i, 2147483647i), false, vec2<f32>(289f, -1119f)), Struct_1(vec2<bool>(true, true), vec3<i32>(-1i, 2147483647i, -26680i), vec4<i32>(-7127i, 1i, 1i, -24921i), true, vec2<f32>(-2458f, -654f)), Struct_1(vec2<bool>(false, true), vec3<i32>(51776i, -1i, 14491i), vec4<i32>(1i, 0i, -65722i, 1i), true, vec2<f32>(255f, 422f)), Struct_1(vec2<bool>(true, false), vec3<i32>(-8949i, -13178i, -26545i), vec4<i32>(-3624i, 11644i, -25383i, 26661i), false, vec2<f32>(308f, 1795f)), Struct_1(vec2<bool>(false, true), vec3<i32>(i32(-2147483648), -77933i, i32(-2147483648)), vec4<i32>(2147483647i, 0i, 1i, 2147483647i), true, vec2<f32>(-814f, -875f)));

var<private> global1: array<vec4<i32>, 11> = array<vec4<i32>, 11>(vec4<i32>(2147483647i, i32(-2147483648), 2147483647i, i32(-2147483648)), vec4<i32>(1i, 0i, -37631i, 16764i), vec4<i32>(2147483647i, 0i, 21699i, 4821i), vec4<i32>(2147483647i, -22127i, -1i, i32(-2147483648)), vec4<i32>(i32(-2147483648), -26676i, -14822i, 2147483647i), vec4<i32>(2147483647i, -35651i, 2147483647i, i32(-2147483648)), vec4<i32>(-24380i, 2147483647i, 0i, -37351i), vec4<i32>(-1i, 16336i, -7621i, 11477i), vec4<i32>(1i, -1i, -18237i, 1i), vec4<i32>(0i, 2147483647i, 27865i, i32(-2147483648)), vec4<i32>(5418i, -1i, 1i, 0i));

var<private> global2: vec4<i32> = vec4<i32>(19030i, -5250i, i32(-2147483648), 33344i);

var<private> global3: array<Struct_1, 30> = array<Struct_1, 30>(Struct_1(vec2<bool>(true, false), vec3<i32>(4269i, -1i, -10916i), vec4<i32>(-25940i, i32(-2147483648), -1860i, 29659i), true, vec2<f32>(-1424f, -378f)), Struct_1(vec2<bool>(true, true), vec3<i32>(43624i, 0i, i32(-2147483648)), vec4<i32>(-1i, -62565i, 2171i, 1i), true, vec2<f32>(478f, -204f)), Struct_1(vec2<bool>(false, true), vec3<i32>(1i, 2147483647i, 72918i), vec4<i32>(0i, -18771i, i32(-2147483648), 2147483647i), false, vec2<f32>(-643f, 1000f)), Struct_1(vec2<bool>(true, true), vec3<i32>(i32(-2147483648), 16001i, -1033i), vec4<i32>(-1i, 15017i, -42153i, -72435i), true, vec2<f32>(219f, -2552f)), Struct_1(vec2<bool>(false, true), vec3<i32>(2147483647i, 1i, 1i), vec4<i32>(-9903i, 0i, 1i, -21844i), true, vec2<f32>(872f, 919f)), Struct_1(vec2<bool>(false, true), vec3<i32>(6488i, 60925i, -40794i), vec4<i32>(2147483647i, -1i, -1i, 1i), false, vec2<f32>(1492f, 1010f)), Struct_1(vec2<bool>(true, false), vec3<i32>(22327i, 17148i, 2147483647i), vec4<i32>(28343i, 2526i, 7581i, 1i), false, vec2<f32>(-1658f, 710f)), Struct_1(vec2<bool>(false, false), vec3<i32>(21835i, 2147483647i, -17445i), vec4<i32>(2147483647i, -1i, 48572i, 26697i), false, vec2<f32>(-2466f, -1877f)), Struct_1(vec2<bool>(false, true), vec3<i32>(2147483647i, -1i, -6637i), vec4<i32>(2147483647i, 1i, -19076i, i32(-2147483648)), false, vec2<f32>(118f, 2219f)), Struct_1(vec2<bool>(false, true), vec3<i32>(-3867i, i32(-2147483648), 66983i), vec4<i32>(28574i, 309i, 1i, 0i), false, vec2<f32>(1533f, 485f)), Struct_1(vec2<bool>(true, false), vec3<i32>(-33130i, 2147483647i, -20362i), vec4<i32>(0i, -1i, -54028i, 1i), true, vec2<f32>(-352f, 1191f)), Struct_1(vec2<bool>(true, false), vec3<i32>(2147483647i, -45121i, 1i), vec4<i32>(31553i, i32(-2147483648), 1i, -38837i), true, vec2<f32>(-133f, -957f)), Struct_1(vec2<bool>(true, false), vec3<i32>(1156i, 58566i, 2147483647i), vec4<i32>(4181i, 2147483647i, 41192i, -24349i), true, vec2<f32>(-318f, -1000f)), Struct_1(vec2<bool>(true, true), vec3<i32>(3515i, 29061i, 20684i), vec4<i32>(2147483647i, 27713i, 14827i, -21099i), true, vec2<f32>(1000f, 237f)), Struct_1(vec2<bool>(false, false), vec3<i32>(0i, i32(-2147483648), 18596i), vec4<i32>(-39987i, 0i, 0i, -29404i), false, vec2<f32>(-1813f, -1106f)), Struct_1(vec2<bool>(false, true), vec3<i32>(-5918i, 1i, 23246i), vec4<i32>(-24358i, 2344i, i32(-2147483648), 19802i), false, vec2<f32>(1000f, 1000f)), Struct_1(vec2<bool>(false, false), vec3<i32>(55249i, -43898i, i32(-2147483648)), vec4<i32>(2147483647i, 10467i, -7231i, 24515i), true, vec2<f32>(-710f, -744f)), Struct_1(vec2<bool>(true, true), vec3<i32>(51515i, -1i, 6650i), vec4<i32>(0i, i32(-2147483648), 0i, 2147483647i), false, vec2<f32>(592f, -1000f)), Struct_1(vec2<bool>(true, false), vec3<i32>(-26079i, -6720i, 48853i), vec4<i32>(57863i, 2147483647i, 37912i, 0i), false, vec2<f32>(-1275f, 547f)), Struct_1(vec2<bool>(false, true), vec3<i32>(-16509i, -1i, 2147483647i), vec4<i32>(-8117i, -19366i, 53400i, 1i), false, vec2<f32>(-312f, 515f)), Struct_1(vec2<bool>(true, true), vec3<i32>(6851i, 1423i, -3214i), vec4<i32>(i32(-2147483648), i32(-2147483648), 2147483647i, 1i), false, vec2<f32>(997f, 974f)), Struct_1(vec2<bool>(true, true), vec3<i32>(-652i, i32(-2147483648), -1i), vec4<i32>(2147483647i, 1i, -16203i, 31488i), true, vec2<f32>(788f, -1310f)), Struct_1(vec2<bool>(false, true), vec3<i32>(2147483647i, 29517i, i32(-2147483648)), vec4<i32>(0i, -76019i, 34701i, -5927i), false, vec2<f32>(1228f, -2596f)), Struct_1(vec2<bool>(false, false), vec3<i32>(-6404i, 0i, -20607i), vec4<i32>(2147483647i, -65992i, 24233i, -13754i), true, vec2<f32>(-676f, -103f)), Struct_1(vec2<bool>(true, true), vec3<i32>(70619i, 24928i, -17451i), vec4<i32>(-1i, 49260i, -1i, 0i), false, vec2<f32>(1047f, 1277f)), Struct_1(vec2<bool>(false, true), vec3<i32>(2147483647i, -8915i, 1i), vec4<i32>(-53428i, -45386i, -25328i, -9478i), false, vec2<f32>(329f, 2282f)), Struct_1(vec2<bool>(true, false), vec3<i32>(0i, i32(-2147483648), 26567i), vec4<i32>(-1i, 2819i, -11909i, -6399i), true, vec2<f32>(469f, -1500f)), Struct_1(vec2<bool>(false, false), vec3<i32>(1i, -1i, -21420i), vec4<i32>(44637i, 1i, 10819i, 2147483647i), true, vec2<f32>(-1681f, -601f)), Struct_1(vec2<bool>(false, true), vec3<i32>(-1i, 1556i, -76609i), vec4<i32>(2147483647i, 34412i, i32(-2147483648), 2792i), false, vec2<f32>(-1301f, 119f)), Struct_1(vec2<bool>(false, true), vec3<i32>(1i, -1i, -1i), vec4<i32>(-46002i, -1i, i32(-2147483648), i32(-2147483648)), true, vec2<f32>(182f, 1092f)));

var<private> global4: array<vec2<u32>, 24>;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<bool>) -> vec2<bool> {
    return arg_0.zz;
}

fn func_2(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: Struct_1) -> Struct_1 {
    var var_0 = arg_2.b;
    let var_1 = Struct_1(!func_3(vec3<bool>(true, true, true)), select(vec3<i32>(-_wgslsmith_add_i32(0i, var_0.x), -select(arg_2.b.x, 18304i, arg_0.a.x), arg_0.c.x), _wgslsmith_mod_vec3_i32(min(select(vec3<i32>(u_input.d.x, arg_2.b.x, -12488i), vec3<i32>(33723i, var_0.x, arg_2.b.x), arg_2.a.x), _wgslsmith_div_vec3_i32(arg_2.c.wwz, vec3<i32>(global2.x, u_input.b, u_input.c.x))), vec3<i32>(u_input.b, arg_0.c.x, _wgslsmith_dot_vec2_i32(vec2<i32>(0i, u_input.b), vec2<i32>(arg_0.b.x, var_0.x)))), !arg_1), vec4<i32>(arg_0.c.x, arg_0.b.x, ~select(0i << (0u % 32u), ~12384i, arg_2.a.x | false), arg_2.b.x), !arg_0.a.x && false, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_2.e)));
    var var_2 = select(vec4<bool>(func_3(select(vec3<bool>(arg_0.d, true, arg_2.a.x), select(vec3<bool>(false, arg_2.a.x, var_1.a.x), arg_1, vec3<bool>(false, arg_1.x, arg_2.d)), !vec3<bool>(var_1.d, true, true))).x, false, true, var_1.d), vec4<bool>(true, arg_2.d, !(!(!arg_2.d)), var_1.a.x), false);
    global3 = array<Struct_1, 30>();
    global0 = array<Struct_1, 31>();
    return arg_2;
}

fn func_4(arg_0: vec3<f32>, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    var var_0 = vec2<bool>(false, any(vec2<bool>(all(vec4<bool>(true, arg_3.d, arg_2.d, arg_2.a.x)), !(global2.x == -16115i))));
    global2 = firstTrailingBit(u_input.d);
    let var_1 = func_2(Struct_1(arg_3.a, _wgslsmith_mult_vec3_i32(~(~arg_3.c.wyz), vec3<i32>(-1i, func_2(arg_2, vec3<bool>(false, arg_3.d, true), Struct_1(vec2<bool>(false, false), vec3<i32>(-7323i, -35303i, arg_3.b.x), global1[_wgslsmith_index_u32(0u, 11u)], false, arg_3.e)).b.x, global2.x)), _wgslsmith_sub_vec4_i32(-global1[_wgslsmith_index_u32(1u, 11u)] & vec4<i32>(-31673i, -1i, arg_3.b.x, arg_3.b.x), abs(abs(arg_3.c))), !arg_2.d | true, arg_0.yz), !(!select(!vec3<bool>(arg_3.d, arg_3.d, arg_2.a.x), vec3<bool>(arg_3.a.x, true, arg_3.a.x), select(vec3<bool>(var_0.x, arg_3.d, arg_3.a.x), vec3<bool>(var_0.x, arg_3.d, false), vec3<bool>(var_0.x, true, var_0.x)))), func_2(func_2(global0[_wgslsmith_index_u32(~(~u_input.e.x), 31u)], select(!vec3<bool>(var_0.x, arg_3.a.x, var_0.x), select(vec3<bool>(arg_3.d, arg_2.d, var_0.x), vec3<bool>(arg_3.d, false, false), vec3<bool>(var_0.x, true, arg_2.d)), vec3<bool>(false, true, false)), arg_3), select(!select(vec3<bool>(false, true, var_0.x), vec3<bool>(true, true, true), vec3<bool>(false, false, true)), vec3<bool>(arg_3.d || true, all(vec4<bool>(arg_3.a.x, var_0.x, false, arg_3.d)), arg_2.a.x), !select(vec3<bool>(true, false, true), vec3<bool>(var_0.x, arg_2.a.x, true), arg_2.d)), func_2(global0[_wgslsmith_index_u32(u_input.a, 31u)], select(vec3<bool>(arg_2.a.x, arg_2.a.x, arg_2.a.x), vec3<bool>(arg_3.d, arg_2.a.x, false), true), Struct_1(!vec2<bool>(arg_3.a.x, arg_2.a.x), u_input.d.xxx ^ arg_2.c.xwy, ~arg_3.c, arg_3.d | arg_2.a.x, arg_0.yx)))).e.x;
    var var_2 = func_2(func_2(Struct_1(select(select(vec2<bool>(arg_2.a.x, var_0.x), arg_2.a, arg_2.a), arg_3.a, !arg_3.a), -vec3<i32>(34947i, global2.x, arg_2.b.x) << (_wgslsmith_sub_vec3_u32(arg_1.zwx, arg_1.yzy) % vec3<u32>(32u)), arg_3.c, true, vec2<f32>(arg_2.e.x, 1025f)), !(!vec3<bool>(arg_3.a.x, var_0.x, true)), arg_2), !(!(!(!vec3<bool>(arg_3.a.x, true, var_0.x)))), global0[_wgslsmith_index_u32(u_input.e.x, 31u)]);
    var var_3 = arg_1.x;
    return func_2(func_2(Struct_1(vec2<bool>(select(true, false, true), !arg_2.d), countOneBits(countOneBits(u_input.c)), arg_3.c, all(select(vec4<bool>(arg_2.a.x, var_0.x, arg_2.a.x, false), vec4<bool>(true, var_0.x, var_0.x, true), vec4<bool>(arg_3.d, true, arg_3.a.x, true))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3.e.x, 937f)))), vec3<bool>(true, !all(vec4<bool>(false, arg_2.d, arg_2.d, arg_2.a.x)), false), func_2(Struct_1(var_2.a, vec3<i32>(arg_3.b.x, global2.x, 1i), abs(arg_2.c), true, var_2.e), vec3<bool>(var_0.x, true, true), Struct_1(arg_3.a, _wgslsmith_div_vec3_i32(var_2.b, vec3<i32>(0i, var_2.c.x, 7211i)), global1[_wgslsmith_index_u32(1u, 11u)] | vec4<i32>(arg_2.b.x, var_2.b.x, 16215i, global2.x), all(var_2.a), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1, -687f) + vec2<f32>(var_2.e.x, arg_0.x))))), !select(select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, arg_2.a.x, false)), select(vec3<bool>(var_2.d, false, false), vec3<bool>(arg_3.a.x, arg_3.a.x, arg_2.a.x), vec3<bool>(false, false, true)), vec3<bool>(false, arg_2.a.x, var_0.x)), select(!vec3<bool>(false, var_0.x, arg_3.d), vec3<bool>(true, true, true), !vec3<bool>(true, true, arg_2.d)), !select(vec3<bool>(var_2.d, arg_3.d, var_0.x), vec3<bool>(true, var_2.d, arg_2.d), var_2.a.x)), Struct_1(vec2<bool>(true, false), vec3<i32>(_wgslsmith_sub_i32(-1i, abs(arg_2.b.x)), 0i << (u_input.e.x % 32u), -2147483647i), vec4<i32>(min(-34978i, u_input.b), ~1i, abs(var_2.c.x), ~(-6744i)) << (~u_input.e % vec4<u32>(32u)), !(arg_3.e.x >= arg_2.e.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1644f, -213f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.x, -207f)))))));
}

fn func_5(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: bool, arg_3: vec4<f32>) -> Struct_1 {
    var var_0 = -1000f;
    global0 = array<Struct_1, 31>();
    let var_1 = Struct_1(select(!vec2<bool>(arg_2, true), func_3(select(!vec3<bool>(false, arg_1.d, true), vec3<bool>(false, arg_1.d, arg_2), select(vec3<bool>(true, arg_1.a.x, true), vec3<bool>(true, false, arg_2), true))), !func_2(Struct_1(arg_1.a, vec3<i32>(-13824i, -1i, 0i), arg_1.c, arg_2, arg_1.e), vec3<bool>(true, false, arg_1.d), arg_1).a), vec3<i32>(-42280i, global2.x, _wgslsmith_dot_vec2_i32(select(arg_1.b.yz, _wgslsmith_div_vec2_i32(u_input.d.xy, vec2<i32>(u_input.c.x, global2.x)), select(vec2<bool>(false, arg_2), vec2<bool>(arg_2, true), arg_2)), vec2<i32>(~u_input.c.x, global2.x | -2147483647i))), global1[_wgslsmith_index_u32(~arg_0.x, 11u)], func_4(arg_3.zyy, _wgslsmith_mod_vec4_u32(u_input.e, abs(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.e.x, 0u, u_input.e.x, arg_0.x), vec4<u32>(0u, 1u, 21733u, u_input.a)))), func_2(Struct_1(arg_1.a, vec3<i32>(-21969i, -1i, arg_1.b.x) & global2.yzy, -vec4<i32>(-35327i, u_input.b, u_input.c.x, 45681i), true, vec2<f32>(-633f, 138f)), vec3<bool>(arg_2, true, !arg_2), arg_1), func_2(Struct_1(!vec2<bool>(arg_1.a.x, arg_1.d), vec3<i32>(-1i, 1i, -2147483647i) | vec3<i32>(arg_1.b.x, global2.x, u_input.c.x), u_input.d, u_input.a <= 4294967295u, vec2<f32>(-1581f, arg_1.e.x)), select(!vec3<bool>(true, arg_2, true), select(vec3<bool>(arg_1.d, arg_2, false), vec3<bool>(true, arg_2, false), vec3<bool>(true, true, arg_2)), true), Struct_1(!vec2<bool>(true, arg_2), firstTrailingBit(vec3<i32>(7140i, global2.x, 0i)), ~global1[_wgslsmith_index_u32(u_input.a, 11u)], any(arg_1.a), vec2<f32>(886f, arg_3.x)))).d, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(vec2<f32>(-808f, _wgslsmith_f_op_f32(-557f + -451f)), arg_1.e))));
    return func_4(_wgslsmith_f_op_vec3_f32(min(arg_3.wwz, arg_3.zxy)), vec4<u32>(35214u, _wgslsmith_add_u32(_wgslsmith_add_u32(~1u, ~arg_0.x), ~809u), ~arg_0.x, ~0u), Struct_1(func_2(func_4(arg_3.yzx, firstTrailingBit(arg_0), Struct_1(arg_1.a, vec3<i32>(var_1.b.x, global2.x, global2.x), vec4<i32>(-31257i, -1i, global2.x, u_input.b), true, vec2<f32>(-1000f, -640f)), arg_1), select(vec3<bool>(true, var_1.a.x, false), !vec3<bool>(var_1.d, arg_2, arg_1.a.x), any(vec2<bool>(false, false))), Struct_1(select(arg_1.a, vec2<bool>(false, arg_2), false), firstLeadingBit(vec3<i32>(2147483647i, 2147483647i, arg_1.b.x)), var_1.c, !var_1.a.x, _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.e.x, 1058f)))).a, arg_1.c.xyz, -(~global1[_wgslsmith_index_u32(arg_0.x, 11u)]) | _wgslsmith_mult_vec4_i32(firstLeadingBit(u_input.d), max(vec4<i32>(1i, 2147483647i, 0i, 6075i), vec4<i32>(u_input.d.x, var_1.c.x, u_input.c.x, -4815i))), arg_2, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(arg_3.yw)))), arg_1);
}

fn func_6(arg_0: vec2<bool>, arg_1: Struct_1) -> vec4<i32> {
    global3 = array<Struct_1, 30>();
    var var_0 = global0[_wgslsmith_index_u32(u_input.a, 31u)];
    global4 = array<vec2<u32>, 24>();
    var var_1 = _wgslsmith_f_op_f32(func_2(global0[_wgslsmith_index_u32(u_input.e.x, 31u)], !vec3<bool>(arg_0.x, true, select(var_0.d, arg_1.d, arg_0.x)), global3[_wgslsmith_index_u32(23029u, 30u)]).e.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_1.e.x), _wgslsmith_f_op_f32(-arg_1.e.x))))));
    let var_2 = _wgslsmith_f_op_f32(-248f + func_5(vec4<u32>(abs(0u), u_input.e.x, ~u_input.e.x, _wgslsmith_div_u32(u_input.a, u_input.a)) | _wgslsmith_sub_vec4_u32(~u_input.e, _wgslsmith_add_vec4_u32(vec4<u32>(11914u, u_input.a, u_input.e.x, 10612u), vec4<u32>(3779u, 75590u, u_input.e.x, 4294967295u))), Struct_1(arg_0, max(vec3<i32>(-1i, 2147483647i, u_input.c.x), func_2(global0[_wgslsmith_index_u32(u_input.a, 31u)], vec3<bool>(true, arg_0.x, false), arg_1).c.yyw), ~arg_1.c, func_2(global3[_wgslsmith_index_u32(~43429u, 30u)], select(vec3<bool>(true, true, var_0.a.x), vec3<bool>(arg_0.x, false, var_0.a.x), vec3<bool>(arg_1.a.x, arg_0.x, false)), func_5(u_input.e, Struct_1(vec2<bool>(arg_0.x, false), var_0.c.ywx, global1[_wgslsmith_index_u32(u_input.a, 11u)], false, var_0.e), true, vec4<f32>(-274f, -1000f, var_0.e.x, 1214f))).a.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.e.x, var_0.e.x)) - _wgslsmith_f_op_vec2_f32(-var_0.e))), select(false, true, abs(32985u) <= ~u_input.e.x), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-549f, arg_1.e.x, -340f, var_0.e.x)), vec4<f32>(_wgslsmith_f_op_f32(-474f - -1707f), _wgslsmith_f_op_f32(f32(-1f) * -1893f), func_2(global3[_wgslsmith_index_u32(1u, 30u)], vec3<bool>(true, arg_0.x, false), Struct_1(vec2<bool>(arg_0.x, true), var_0.b, vec4<i32>(43530i, 58814i, global2.x, var_0.c.x), var_0.d, arg_1.e)).e.x, _wgslsmith_f_op_f32(-arg_1.e.x)))).e.x);
    return _wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(global1[_wgslsmith_index_u32(u_input.a, 11u)], u_input.d), var_0.c);
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: i32) -> vec2<bool> {
    let var_0 = select(!arg_0, arg_0, vec4<bool>(false, true, false, true));
    var var_1 = Struct_1(!vec2<bool>(all(!vec2<bool>(arg_0.x, true)), (1u != u_input.e.x) & var_0.x), ~arg_1.b, func_6(!vec2<bool>(!arg_1.a.x, arg_1.a.x), func_5(~(~vec4<u32>(u_input.a, 0u, 1u, u_input.e.x)), func_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 197f, -1334f)), ~vec4<u32>(u_input.e.x, 24661u, 45601u, 1u), Struct_1(arg_1.a, vec3<i32>(-2147483647i, arg_2, global2.x), global1[_wgslsmith_index_u32(u_input.a, 11u)], arg_0.x, vec2<f32>(arg_1.e.x, arg_1.e.x)), func_2(Struct_1(var_0.yy, vec3<i32>(global2.x, arg_1.b.x, -17056i), global1[_wgslsmith_index_u32(u_input.e.x, 11u)], arg_1.a.x, vec2<f32>(-250f, -432f)), vec3<bool>(true, true, true), Struct_1(var_0.zx, arg_1.c.zxw, global1[_wgslsmith_index_u32(54315u, 11u)], arg_0.x, vec2<f32>(-550f, arg_1.e.x)))), true, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1644f, arg_1.e.x, arg_1.e.x, arg_1.e.x) - vec4<f32>(arg_1.e.x, arg_1.e.x, arg_1.e.x, 303f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-1355f, arg_1.e.x, -701f, arg_1.e.x) + vec4<f32>(arg_1.e.x, -803f, arg_1.e.x, arg_1.e.x))))), true, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-arg_1.e))));
    var var_2 = true;
    var var_3 = var_1.c;
    var var_4 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -240f), _wgslsmith_f_op_f32(abs(arg_1.e.x)), -248f, -1154f));
    return func_2(func_2(Struct_1(vec2<bool>(arg_0.x, true), arg_1.b, (global1[_wgslsmith_index_u32(u_input.a, 11u)] ^ u_input.d) ^ _wgslsmith_clamp_vec4_i32(global1[_wgslsmith_index_u32(u_input.e.x, 11u)], arg_1.c, global1[_wgslsmith_index_u32(u_input.e.x, 11u)]), func_2(arg_1, vec3<bool>(var_1.d, arg_0.x, true), Struct_1(arg_0.zw, vec3<i32>(u_input.d.x, var_1.b.x, 10912i), u_input.d, false, vec2<f32>(2482f, arg_1.e.x))).a.x, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(min(var_1.e, vec2<f32>(var_4.x, arg_1.e.x)))))), select(select(vec3<bool>(true, false, false), vec3<bool>(false, var_0.x, false), vec3<bool>(false, true, arg_1.a.x)), !(!var_0.yxz), arg_0.x), func_2(func_5(~u_input.e, arg_1, arg_1.e.x > 439f, _wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_1.e.x, var_1.e.x, 118f, 538f), vec4<f32>(var_1.e.x, 1000f, 1000f, -1000f)))), select(!arg_0.zxz, vec3<bool>(arg_1.a.x, var_0.x, true), arg_1.d | true), func_2(Struct_1(vec2<bool>(true, true), vec3<i32>(11047i, arg_1.b.x, var_3.x), u_input.d, false, vec2<f32>(var_1.e.x, var_1.e.x)), vec3<bool>(arg_1.a.x, false, var_0.x), arg_1))), !(!var_0.wxz), arg_1).a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global3[_wgslsmith_index_u32(countOneBits(4294967295u), 30u)];
    global0 = array<Struct_1, 31>();
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -585f);
    let var_2 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(31045u, _wgslsmith_dot_vec3_u32(firstTrailingBit(u_input.e.xxx), ~(~u_input.e.zww)) >> (51197u % 32u)), 31u)];
    var var_3 = Struct_1(select(func_1(select(select(vec4<bool>(var_2.d, var_2.d, false, true), vec4<bool>(false, var_0.d, true, false), var_0.a.x), select(vec4<bool>(true, true, false, var_0.d), vec4<bool>(var_2.a.x, var_0.a.x, var_2.d, true), vec4<bool>(false, true, false, var_0.a.x)), select(vec4<bool>(false, false, var_2.a.x, var_2.d), vec4<bool>(false, true, true, var_2.a.x), var_2.a.x)), global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(4168u, u_input.a), 31u)], select(u_input.b, -12575i, true)), vec2<bool>((i32(-1i) * -2147483647i) == _wgslsmith_sub_i32(var_0.c.x, 1i), var_2.e.x != _wgslsmith_f_op_f32(var_0.e.x - var_2.e.x)), func_2(Struct_1(var_0.a, var_2.c.xyw, vec4<i32>(var_0.b.x, u_input.d.x, -7567i, -2147483647i), true, _wgslsmith_f_op_vec2_f32(-var_0.e)), select(select(vec3<bool>(var_0.d, false, var_2.d), vec3<bool>(var_2.d, var_0.a.x, false), false), vec3<bool>(var_2.d, true, false), true), global3[_wgslsmith_index_u32(select(~u_input.e.x, ~38927u, true), 30u)]).a), func_4(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.e.x, var_2.e.x, -1114f) - vec3<f32>(var_2.e.x, var_2.e.x, var_2.e.x)))), u_input.e, Struct_1(!vec2<bool>(var_0.d, var_2.a.x), vec3<i32>(global2.x, var_0.c.x, -1i), var_2.c, func_1(vec4<bool>(var_0.a.x, false, false, false), global0[_wgslsmith_index_u32(u_input.e.x, 31u)], -1i).x, vec2<f32>(-389f, var_0.e.x)), Struct_1(vec2<bool>(var_2.d, false), abs(vec3<i32>(68048i, 1i, global2.x)), var_2.c >> (u_input.e % vec4<u32>(32u)), false, vec2<f32>(var_2.e.x, var_0.e.x))).b & -(~(~var_2.c.wzx)), var_2.c, var_2.a.x | any(!func_1(vec4<bool>(var_0.d, false, true, true), Struct_1(var_2.a, vec3<i32>(global2.x, var_2.c.x, -12404i), u_input.d, var_0.a.x, vec2<f32>(var_2.e.x, -419f)), var_2.b.x)), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(1188f, 465f) * _wgslsmith_f_op_vec2_f32(var_2.e + vec2<f32>(-1353f, var_2.e.x))))))));
    global1 = array<vec4<i32>, 11>();
    let var_4 = func_2(Struct_1(func_3(vec3<bool>(true, func_2(global0[_wgslsmith_index_u32(u_input.a, 31u)], vec3<bool>(var_2.a.x, true, var_3.a.x), global3[_wgslsmith_index_u32(u_input.e.x, 30u)]).d, var_2.d)), -_wgslsmith_div_vec3_i32(u_input.c, _wgslsmith_div_vec3_i32(vec3<i32>(-52778i, var_0.c.x, -11202i), var_2.b)), ((u_input.d | u_input.d) ^ (vec4<i32>(-7999i, 38772i, var_0.c.x, var_3.c.x) | vec4<i32>(var_0.c.x, u_input.d.x, var_2.b.x, 17632i))) & vec4<i32>(_wgslsmith_clamp_i32(1i, 0i, u_input.c.x), _wgslsmith_add_i32(46357i, -2147483647i), min(12934i, u_input.d.x), ~var_0.c.x), any(!func_2(global3[_wgslsmith_index_u32(50396u, 30u)], vec3<bool>(var_2.d, false, var_0.a.x), global0[_wgslsmith_index_u32(u_input.e.x, 31u)]).a), var_2.e), !(!vec3<bool>(var_3.d, all(var_2.a), true)), Struct_1(vec2<bool>(any(select(vec4<bool>(var_0.a.x, var_2.d, false, var_3.d), vec4<bool>(var_2.d, var_3.a.x, var_0.d, var_2.d), var_2.a.x)), !select(false, false, true)), vec3<i32>(abs(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.c.x, -58059i, var_3.c.x), vec3<i32>(1i, var_3.b.x, -7178i))), (0i | u_input.d.x) << (max(u_input.a, u_input.e.x) % 32u), 1032i), ~_wgslsmith_sub_vec4_i32(vec4<i32>(55524i, -2147483647i, -68697i, u_input.d.x), vec4<i32>(10507i, var_2.c.x, 19835i, u_input.d.x)) << (max(u_input.e, firstTrailingBit(vec4<u32>(u_input.a, u_input.e.x, u_input.e.x, u_input.e.x))) % vec4<u32>(32u)), false, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_3.e.x, 502f) * var_0.e) * _wgslsmith_f_op_vec2_f32(-var_3.e))));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.e);
}

