struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: bool,
    d: vec4<i32>,
    e: vec4<i32>,
}

struct Struct_2 {
    a: i32,
    b: u32,
    c: u32,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 9>;

var<private> global1: array<Struct_2, 8> = array<Struct_2, 8>(Struct_2(0i, 32056u, 42979u, Struct_1(24236i, vec4<i32>(-1i, 35955i, -37941i, -15245i), false, vec4<i32>(-23800i, -1i, 1i, -1i), vec4<i32>(-188i, 39240i, -10399i, 2147483647i))), Struct_2(-89050i, 28275u, 4294967295u, Struct_1(1i, vec4<i32>(1i, -16016i, 0i, -1i), false, vec4<i32>(21051i, -1i, 2147483647i, -4109i), vec4<i32>(0i, -1i, 0i, 1i))), Struct_2(-8618i, 1u, 15240u, Struct_1(37872i, vec4<i32>(1i, i32(-2147483648), 1i, -5699i), true, vec4<i32>(22819i, -1i, -36424i, -13092i), vec4<i32>(-1i, 9555i, 2147483647i, -20134i))), Struct_2(1201i, 0u, 1u, Struct_1(0i, vec4<i32>(-23952i, -4399i, -72291i, 32125i), true, vec4<i32>(1i, 0i, 13674i, 28887i), vec4<i32>(0i, 0i, 14695i, 14804i))), Struct_2(54316i, 4294967295u, 0u, Struct_1(25103i, vec4<i32>(0i, i32(-2147483648), 34424i, -1i), false, vec4<i32>(62173i, 2147483647i, 2147483647i, -6874i), vec4<i32>(-4882i, 2147483647i, 2147483647i, -35973i))), Struct_2(-43160i, 31625u, 48561u, Struct_1(2147483647i, vec4<i32>(-15795i, 2147483647i, i32(-2147483648), i32(-2147483648)), true, vec4<i32>(-42479i, -958i, 1i, 22932i), vec4<i32>(-55085i, -38165i, 63159i, -8568i))), Struct_2(2147483647i, 6378u, 0u, Struct_1(-1i, vec4<i32>(-73386i, 22566i, 17965i, -42473i), true, vec4<i32>(i32(-2147483648), 21849i, -1i, 855i), vec4<i32>(-45331i, 2147483647i, -8296i, 1i))), Struct_2(1i, 5673u, 17015u, Struct_1(i32(-2147483648), vec4<i32>(52281i, -18707i, -16715i, i32(-2147483648)), true, vec4<i32>(2147483647i, -22846i, -7030i, i32(-2147483648)), vec4<i32>(0i, 2147483647i, 31029i, -2550i))));

var<private> global2: array<vec3<f32>, 16>;

var<private> global3: array<Struct_1, 15> = array<Struct_1, 15>(Struct_1(28134i, vec4<i32>(-1i, 13427i, 1i, 0i), true, vec4<i32>(2147483647i, -19536i, 1i, i32(-2147483648)), vec4<i32>(-111234i, 59247i, 0i, 18689i)), Struct_1(-2685i, vec4<i32>(-1618i, 0i, 33002i, 0i), true, vec4<i32>(6240i, -4448i, -36931i, 0i), vec4<i32>(-13508i, 42051i, -4561i, i32(-2147483648))), Struct_1(8956i, vec4<i32>(1i, 36944i, 0i, i32(-2147483648)), false, vec4<i32>(1i, i32(-2147483648), 0i, 0i), vec4<i32>(-35766i, 1i, 17123i, 5244i)), Struct_1(2147483647i, vec4<i32>(2147483647i, -102767i, -2671i, 0i), true, vec4<i32>(36870i, -27319i, 2147483647i, i32(-2147483648)), vec4<i32>(-1i, -27401i, -1i, -1i)), Struct_1(31126i, vec4<i32>(1i, 38651i, -78341i, 30130i), false, vec4<i32>(1i, 30121i, 26866i, -8770i), vec4<i32>(18083i, -31580i, 30276i, -6597i)), Struct_1(-28337i, vec4<i32>(2147483647i, -1i, 2147483647i, 14040i), true, vec4<i32>(-6549i, -32103i, -9694i, -1i), vec4<i32>(22179i, 2147483647i, 9106i, 2147483647i)), Struct_1(2147483647i, vec4<i32>(0i, 1i, 4718i, 1i), false, vec4<i32>(46756i, -1i, 2147483647i, -44707i), vec4<i32>(7789i, i32(-2147483648), -1i, 1i)), Struct_1(-8926i, vec4<i32>(-38403i, 39091i, -12718i, 29946i), false, vec4<i32>(-15386i, 0i, -21241i, 1i), vec4<i32>(i32(-2147483648), -2063i, -509i, -34708i)), Struct_1(-97663i, vec4<i32>(2147483647i, -4618i, 1911i, i32(-2147483648)), false, vec4<i32>(1i, i32(-2147483648), 2147483647i, 13650i), vec4<i32>(14239i, -13664i, 0i, 1i)), Struct_1(-180i, vec4<i32>(-13323i, 3359i, i32(-2147483648), 4541i), true, vec4<i32>(52837i, 43256i, 0i, -86281i), vec4<i32>(-57596i, 12997i, -77835i, 1i)), Struct_1(-5455i, vec4<i32>(16650i, -11281i, -40142i, -17577i), true, vec4<i32>(1i, -16499i, -14560i, -1191i), vec4<i32>(27388i, 38977i, 0i, -1i)), Struct_1(-855i, vec4<i32>(-26590i, 27388i, 2147483647i, i32(-2147483648)), true, vec4<i32>(-1i, -1i, 9360i, -36815i), vec4<i32>(i32(-2147483648), 19596i, -3066i, 2147483647i)), Struct_1(1i, vec4<i32>(2147483647i, i32(-2147483648), 70086i, -1i), true, vec4<i32>(2147483647i, 2147483647i, 1i, 20817i), vec4<i32>(2147483647i, 2147483647i, 20404i, -7451i)), Struct_1(0i, vec4<i32>(-15828i, -50375i, 38352i, -3526i), true, vec4<i32>(-19193i, -23974i, -1i, 25246i), vec4<i32>(-1i, 2147483647i, 0i, 1i)), Struct_1(i32(-2147483648), vec4<i32>(-1i, 1i, -53796i, 2147483647i), true, vec4<i32>(0i, 1i, i32(-2147483648), i32(-2147483648)), vec4<i32>(i32(-2147483648), 13892i, 0i, 1i)));

var<private> global4: array<Struct_1, 25> = array<Struct_1, 25>(Struct_1(-14343i, vec4<i32>(-1i, 1i, 43819i, 1i), false, vec4<i32>(22224i, -1i, 38029i, 2147483647i), vec4<i32>(-1i, 1i, 2147483647i, -28538i)), Struct_1(50170i, vec4<i32>(-53744i, -62210i, i32(-2147483648), 2147483647i), false, vec4<i32>(0i, 38931i, 16958i, -18065i), vec4<i32>(-25797i, 55634i, -8318i, 17409i)), Struct_1(i32(-2147483648), vec4<i32>(i32(-2147483648), 1i, 0i, 1i), false, vec4<i32>(2147483647i, 1i, 0i, -17062i), vec4<i32>(-4190i, -24895i, 1i, i32(-2147483648))), Struct_1(7421i, vec4<i32>(18923i, -32065i, -9879i, i32(-2147483648)), true, vec4<i32>(2443i, i32(-2147483648), -41250i, 2147483647i), vec4<i32>(903i, 5378i, 0i, 2147483647i)), Struct_1(-23798i, vec4<i32>(42631i, -32447i, i32(-2147483648), i32(-2147483648)), true, vec4<i32>(-22982i, 0i, 2147483647i, i32(-2147483648)), vec4<i32>(i32(-2147483648), 62912i, 5306i, i32(-2147483648))), Struct_1(-8913i, vec4<i32>(i32(-2147483648), i32(-2147483648), 22890i, -1i), true, vec4<i32>(-17629i, -1i, 17809i, 36252i), vec4<i32>(-32270i, -10082i, 25089i, 131i)), Struct_1(2147483647i, vec4<i32>(2147483647i, -47412i, 0i, -22402i), true, vec4<i32>(-1i, i32(-2147483648), i32(-2147483648), -20759i), vec4<i32>(-26964i, 12571i, 1i, -6983i)), Struct_1(17430i, vec4<i32>(-10275i, 15350i, 59868i, 1i), false, vec4<i32>(0i, 0i, 1i, -96678i), vec4<i32>(48471i, 80524i, 2147483647i, -9072i)), Struct_1(0i, vec4<i32>(68438i, -6328i, -4470i, -2301i), false, vec4<i32>(0i, 82072i, 2147483647i, 1i), vec4<i32>(i32(-2147483648), i32(-2147483648), 1i, 4283i)), Struct_1(2147483647i, vec4<i32>(2147483647i, 0i, 56880i, -1i), false, vec4<i32>(-30607i, 2147483647i, 1968i, -1059i), vec4<i32>(14836i, 48794i, 467i, 0i)), Struct_1(2147483647i, vec4<i32>(35856i, 4737i, 49884i, -36024i), false, vec4<i32>(i32(-2147483648), 2147483647i, 1i, -9480i), vec4<i32>(0i, -1i, 5631i, -9296i)), Struct_1(1i, vec4<i32>(40643i, 2147483647i, -428i, 0i), false, vec4<i32>(-17764i, -1384i, 284i, 2147483647i), vec4<i32>(0i, -9712i, -1i, 19832i)), Struct_1(2147483647i, vec4<i32>(44476i, 12693i, 1i, 17327i), false, vec4<i32>(-1i, -33907i, 26691i, -14443i), vec4<i32>(1i, -40085i, 2147483647i, 2147483647i)), Struct_1(-13506i, vec4<i32>(-32626i, 0i, -6825i, i32(-2147483648)), false, vec4<i32>(2147483647i, 36181i, -27583i, 0i), vec4<i32>(i32(-2147483648), -1i, 2147483647i, 23227i)), Struct_1(-14925i, vec4<i32>(3916i, -37870i, -21383i, -8803i), false, vec4<i32>(17207i, -25114i, 2147483647i, -38611i), vec4<i32>(9934i, -1i, 9889i, -4287i)), Struct_1(-1i, vec4<i32>(1i, 1036i, -23784i, 1i), false, vec4<i32>(-2399i, -1i, 10888i, 23340i), vec4<i32>(26155i, 45663i, -23296i, 1i)), Struct_1(2147483647i, vec4<i32>(-16727i, i32(-2147483648), 1i, 2147483647i), true, vec4<i32>(1i, 40291i, 2147483647i, i32(-2147483648)), vec4<i32>(21554i, 2147483647i, -39144i, -7447i)), Struct_1(-30713i, vec4<i32>(-1i, -29987i, 73077i, -20821i), true, vec4<i32>(2147483647i, 2147483647i, -27294i, 2147483647i), vec4<i32>(-17850i, 14833i, 13524i, 2147483647i)), Struct_1(2147483647i, vec4<i32>(34120i, 19951i, 0i, -10047i), true, vec4<i32>(-6889i, 2147483647i, -7130i, 1i), vec4<i32>(-55466i, 2147483647i, 1i, 0i)), Struct_1(28413i, vec4<i32>(-10345i, i32(-2147483648), 27659i, -39466i), true, vec4<i32>(30081i, 37963i, -16035i, 0i), vec4<i32>(2147483647i, 0i, i32(-2147483648), 35933i)), Struct_1(-20837i, vec4<i32>(i32(-2147483648), 16568i, 22413i, 2147483647i), true, vec4<i32>(1i, 1i, -18437i, -18781i), vec4<i32>(-20395i, 11459i, 28408i, -1i)), Struct_1(i32(-2147483648), vec4<i32>(32819i, 24888i, -26692i, i32(-2147483648)), true, vec4<i32>(1i, 0i, -18853i, 2147483647i), vec4<i32>(-30355i, -33287i, -28293i, -6457i)), Struct_1(i32(-2147483648), vec4<i32>(16435i, 1i, i32(-2147483648), 1i), true, vec4<i32>(-20572i, 14016i, 54598i, -32604i), vec4<i32>(-1i, 29661i, 2215i, 2147483647i)), Struct_1(-1i, vec4<i32>(2147483647i, 1i, 17015i, 0i), true, vec4<i32>(2147483647i, i32(-2147483648), -1i, 0i), vec4<i32>(55895i, 10321i, i32(-2147483648), 26328i)), Struct_1(-20415i, vec4<i32>(-24610i, -1i, -21817i, 0i), false, vec4<i32>(-21721i, 9329i, i32(-2147483648), -1i), vec4<i32>(0i, 2147483647i, 0i, -15293i)));

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> vec4<i32> {
    var var_0 = global1[_wgslsmith_index_u32(u_input.d, 8u)];
    let var_1 = Struct_2(-2147483647i, ~(~1u), ~(_wgslsmith_sub_u32(var_0.c, 47471u) & _wgslsmith_add_u32(u_input.e.x, _wgslsmith_mod_u32(u_input.e.x, u_input.e.x))), Struct_1(((u_input.a & -2147483647i) >> (16651u % 32u)) << (abs(~13745u) % 32u), vec4<i32>(var_0.d.b.x, firstTrailingBit(var_0.d.b.x) >> (var_0.c % 32u), (i32(-1i) * -1i) | var_0.d.b.x, var_0.a), true, firstLeadingBit(_wgslsmith_div_vec4_i32(vec4<i32>(var_0.a, u_input.a, u_input.a, var_0.d.d.x), var_0.d.b)), vec4<i32>(var_0.d.e.x, -14243i, ~1i, -49103i)));
    global2 = array<vec3<f32>, 16>();
    let var_2 = all(select(vec3<bool>(true | !var_1.d.c, all(select(vec3<bool>(false, true, false), vec3<bool>(var_0.d.c, false, var_1.d.c), var_1.d.c)), all(select(vec2<bool>(true, false), vec2<bool>(false, false), var_0.d.c))), vec3<bool>(var_0.d.c, true, !var_1.d.c), select(all(select(vec3<bool>(var_0.d.c, false, var_1.d.c), vec3<bool>(var_1.d.c, true, var_1.d.c), false)), ~14191u >= var_0.b, any(!vec4<bool>(false, var_1.d.c, var_0.d.c, false)))));
    let var_3 = vec3<bool>(true, any(select(vec2<bool>(false, all(vec3<bool>(true, var_0.d.c, true))), vec2<bool>(var_1.d.c | true, select(true, var_1.d.c, false)), var_2)), false);
    return min(firstLeadingBit(reverseBits(~var_1.d.e)) & _wgslsmith_mult_vec4_i32(-abs(var_1.d.e), _wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(var_0.d.e, var_1.d.e), reverseBits(vec4<i32>(var_0.a, 44688i, u_input.c.x, var_1.d.d.x)))), countOneBits(var_0.d.e));
}

fn func_2(arg_0: Struct_2, arg_1: vec2<f32>) -> Struct_1 {
    let var_0 = i32(-1i) * -81032i;
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(2212f)))), arg_1.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.x, arg_1.x) - _wgslsmith_f_op_f32(-2984f - arg_1.x)))) + vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1218f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_1.x))), _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x + arg_1.x) * -423f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_1.x)) + arg_1.x) - -1754f)));
    var var_2 = Struct_1(-2147483647i, func_3(), false, arg_0.d.b, reverseBits(abs(vec4<i32>(arg_0.d.a, 30135i, -1i, var_0) >> (vec4<u32>(u_input.e.x, 1u, u_input.e.x, u_input.e.x) % vec4<u32>(32u)))) | vec4<i32>(2147483647i, u_input.c.x, u_input.c.x, ~(i32(-1i) * -40441i)));
    return Struct_1(-abs(~var_0), vec4<i32>(-max(i32(-1i) * -2147483647i, _wgslsmith_clamp_i32(var_0, u_input.a, arg_0.a)), ~1i, 1i, firstTrailingBit(0i)), var_2.c, arg_0.d.d, arg_0.d.d);
}

fn func_1(arg_0: vec4<f32>, arg_1: vec3<i32>, arg_2: i32) -> Struct_2 {
    global1 = array<Struct_2, 8>();
    var var_0 = func_2(global1[_wgslsmith_index_u32(4294967295u, 8u)], _wgslsmith_f_op_vec2_f32(abs(arg_0.xw)));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_0.x + -1000f), _wgslsmith_f_op_f32(select(-1739f, 271f, false)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -530f), _wgslsmith_f_op_f32(floor(-1000f)), true)))) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) * _wgslsmith_f_op_f32(-153f - arg_0.x))))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x + -1184f) + -1170f));
    var var_3 = Struct_1(i32(-1i) * -(-1i << (u_input.e.x % 32u)), _wgslsmith_mult_vec4_i32(max(var_0.b, _wgslsmith_sub_vec4_i32(vec4<i32>(arg_2, arg_1.x, arg_1.x, -2147483647i), ~vec4<i32>(arg_1.x, 1i, arg_2, arg_1.x))), -vec4<i32>(_wgslsmith_add_i32(1i, arg_1.x), func_2(Struct_2(arg_2, 51866u, u_input.e.x, global4[_wgslsmith_index_u32(4294967295u, 25u)]), vec2<f32>(334f, arg_0.x)).a, firstTrailingBit(var_0.e.x), var_0.a | 25559i)), !all(!vec4<bool>(var_0.c, var_0.c, var_0.c, var_0.c)), countOneBits(_wgslsmith_div_vec4_i32(_wgslsmith_add_vec4_i32(firstTrailingBit(var_0.b), vec4<i32>(var_0.b.x, 0i, u_input.c.x, arg_1.x) & vec4<i32>(arg_2, arg_2, -2147483647i, var_0.e.x)), -_wgslsmith_div_vec4_i32(vec4<i32>(33637i, u_input.c.x, 11543i, -10344i), vec4<i32>(u_input.a, 2147483647i, arg_1.x, arg_1.x)))), var_0.d);
    return Struct_2(1i, _wgslsmith_clamp_u32(~_wgslsmith_mod_u32(u_input.d, ~u_input.e.x), ~u_input.d, 27503u), min(_wgslsmith_dot_vec3_u32(~vec3<u32>(0u, u_input.e.x, u_input.b), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.d, u_input.d, 24593u), vec3<u32>(0u, u_input.e.x, 10615u))) & _wgslsmith_dot_vec2_u32(u_input.e, u_input.e << (u_input.e % vec2<u32>(32u))), 14070u), func_2(Struct_2(_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(var_0.e, vec4<i32>(u_input.c.x, -14224i, 1i, 1009i)), _wgslsmith_add_i32(-5362i, var_0.d.x)), 100644u, 0u, Struct_1(max(arg_1.x, 36477i), var_3.e, select(false, false, true), var_3.b, var_0.b)), _wgslsmith_f_op_vec2_f32(exp2(arg_0.xx))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2) -> Struct_2 {
    var var_0 = Struct_2(u_input.a, firstTrailingBit(4294967295u), firstLeadingBit(1u), Struct_1(-7120i, ~(~(vec4<i32>(2147483647i, u_input.c.x, u_input.a, -1i) << (vec4<u32>(arg_1.b, arg_1.b, u_input.e.x, 19746u) % vec4<u32>(32u)))), arg_0.c, vec4<i32>(reverseBits(u_input.a), func_1(vec4<f32>(-634f, 984f, -1000f, -1619f), arg_1.d.e.wxw, abs(u_input.c.x)).a, 1i, 1i), arg_1.d.e));
    let var_1 = func_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(980f))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(890f + 580f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(618f - _wgslsmith_f_op_f32(step(-1291f, 850f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1689f, 1316f) - _wgslsmith_f_op_f32(abs(1107f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -637f), _wgslsmith_f_op_f32(ceil(1683f))))))), vec3<i32>(-1i) * -reverseBits(_wgslsmith_clamp_vec3_i32(var_0.d.b.zzy, arg_0.b.xwz, vec3<i32>(-29782i, u_input.a, 1i))), 0i);
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(580f, 1000f) - _wgslsmith_f_op_vec2_f32(vec2<f32>(463f, -670f) * vec2<f32>(327f, -178f))) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1032f, -1540f))), vec2<f32>(502f, -231f), arg_0.c)))) * vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1249f)) - _wgslsmith_f_op_f32(select(1f, -1259f, arg_1.d.c))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(510f, 208f))) * -1000f)));
    var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.x, -175f) * _wgslsmith_f_op_vec2_f32(vec2<f32>(766f, -1814f) + vec2<f32>(-2070f, -1270f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_2.x, var_2.x))))))));
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_2.x, -1813f), vec2<f32>(var_2.x, 1616f))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-731f, -1000f))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(-422f, var_2.x) + vec2<f32>(483f, 453f)))), select(vec2<bool>(arg_0.c, true), !vec2<bool>(false, arg_1.d.c), !vec2<bool>(var_1.d.c, arg_1.d.c)))) + vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1827f), _wgslsmith_f_op_f32(var_2.x + var_2.x)), _wgslsmith_f_op_f32(var_2.x - -1202f))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-1903f * _wgslsmith_f_op_f32(var_2.x + -1334f)), -838f) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-767f, -761f)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(var_2.x, var_2.x), vec2<f32>(-1525f, 638f))))));
    return Struct_2(~(-2093i), _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(~u_input.e, ~vec2<u32>(1u, 0u), _wgslsmith_mult_vec2_u32(vec2<u32>(arg_1.b, u_input.d), u_input.e)) & countOneBits(vec2<u32>(432u, var_0.b)), abs(vec2<u32>(u_input.e.x, 4880u) << (u_input.e % vec2<u32>(32u)))), 4294967295u | _wgslsmith_add_u32(func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(664f, var_3.x, -175f, 757f)), _wgslsmith_add_vec3_i32(arg_0.e.yzx, var_0.d.e.yzz), arg_1.d.a & var_0.a).b, 1u), Struct_1(var_0.a, ~abs(var_1.d.b | vec4<i32>(-18225i, -2147483647i, 44641i, -25381i)), _wgslsmith_clamp_u32(33047u, arg_1.c, u_input.d) > ~var_0.b, vec4<i32>(0i, -2147483647i, 1i, func_2(Struct_2(2147483647i, 17800u, var_0.b, arg_0), vec2<f32>(var_3.x, var_3.x)).a ^ u_input.a), vec4<i32>(-(arg_1.d.b.x ^ u_input.c.x), firstLeadingBit(1i), -54899i, i32(-1i) * -69574i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(global0[_wgslsmith_index_u32(select(~(~u_input.d | u_input.d), firstTrailingBit(_wgslsmith_mult_u32(_wgslsmith_sub_u32(u_input.b, u_input.d), ~1u)), true), 9u)], func_1(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(select(-465f, 199f, false)), _wgslsmith_f_op_f32(1457f - 128f), 962f, _wgslsmith_f_op_f32(-774f * 1000f)))), _wgslsmith_sub_vec3_i32(vec3<i32>(-16268i, i32(-1i) * -477i, select(-4380i, u_input.a, true)), _wgslsmith_sub_vec3_i32(u_input.c, _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.c.x, u_input.a, u_input.a), u_input.c))), u_input.c.x));
    var var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-325f, 1814f)) - _wgslsmith_f_op_f32(f32(-1f) * -1413f)), -735f, _wgslsmith_f_op_f32(f32(-1f) * -1280f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(403f + _wgslsmith_f_op_f32(f32(-1f) * -805f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1000f, 294f))))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-387f, -722f, 1413f, 496f) * vec4<f32>(932f, 1143f, 755f, -1921f))), vec4<f32>(1f, 1f, 1f, 1f), true)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(-1153f * -1839f), -1053f, _wgslsmith_f_op_f32(round(-1000f)), _wgslsmith_f_op_f32(-137f + 1104f)), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1693f, -284f, -309f, -203f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(2251f, 533f, 384f, 757f) * vec4<f32>(2029f, -118f, -1394f, -770f)))))), !select(select(vec4<bool>(true, var_0.d.c, var_0.d.c, true), vec4<bool>(true, false, true, false), vec4<bool>(false, var_0.d.c, var_0.d.c, false)), vec4<bool>(var_0.d.c, var_0.d.c, true, var_0.d.c), false))));
    var var_2 = var_0;
    var var_3 = Struct_1(-(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, var_0.a, u_input.c.x), u_input.c) | func_4(Struct_1(var_0.d.a, vec4<i32>(-40725i, -8083i, var_2.d.d.x, -42597i), false, vec4<i32>(var_2.d.e.x, var_0.a, -25375i, -2147483647i), vec4<i32>(12883i, var_0.d.e.x, var_2.a, 32220i)), global1[_wgslsmith_index_u32(1u, 8u)]).a) | _wgslsmith_mod_i32(max(~0i, -1i), func_2(var_0, _wgslsmith_f_op_vec2_f32(-var_1.zx)).d.x), vec4<i32>(-1i) * -(~(-var_0.d.d)), true, vec4<i32>(var_0.d.a >> (_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, var_2.c, var_2.b, 34135u) & vec4<u32>(var_0.b, 0u, 70551u, 6592u), vec4<u32>(1u, 20036u, u_input.e.x, 1u)) % 32u), 38619i, var_0.d.a >> (_wgslsmith_add_u32(firstTrailingBit(var_0.b), var_2.b >> (0u % 32u)) % 32u), _wgslsmith_add_i32(~_wgslsmith_add_i32(u_input.a, u_input.c.x), _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(var_2.d.e.xzy, var_0.d.b.zwx), func_4(global3[_wgslsmith_index_u32(0u, 15u)], var_0).d.d.xyz))), _wgslsmith_clamp_vec4_i32(abs(countOneBits(~vec4<i32>(-34398i, 21445i, var_0.a, var_0.d.d.x))), vec4<i32>(var_2.d.e.x, firstTrailingBit(u_input.a), var_0.a, ~countOneBits(-15836i)), vec4<i32>(var_0.a, 46583i, var_0.a, _wgslsmith_sub_i32(-11716i, var_2.d.a) >> (~var_0.c % 32u))));
    let var_4 = var_0;
    let var_5 = ~var_3.e;
    global0 = array<Struct_1, 9>();
    var var_6 = select(select(select(select(!vec2<bool>(var_4.d.c, var_0.d.c), vec2<bool>(var_3.c, var_3.c), var_3.c), select(vec2<bool>(false, true), !vec2<bool>(var_3.c, var_3.c), !vec2<bool>(var_3.c, var_4.d.c)), vec2<bool>(true, true)), vec2<bool>(false, true), var_0.d.c), vec2<bool>(all(!select(vec4<bool>(var_2.d.c, true, true, true), vec4<bool>(var_3.c, var_3.c, true, var_2.d.c), vec4<bool>(false, true, true, false))), func_2(func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_1.x, var_1.x, var_1.x)), var_2.d.e.wyy, 18420i), _wgslsmith_f_op_vec2_f32(vec2<f32>(463f, 1154f) - _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, -1141f) - var_1.zx))).c), var_1.x >= var_1.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x * _wgslsmith_div_f32(var_1.x, 720f))), u_input.b);
}

