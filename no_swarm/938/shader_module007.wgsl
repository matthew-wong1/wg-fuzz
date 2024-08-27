struct Struct_1 {
    a: vec2<u32>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: vec2<i32>,
}

struct Struct_5 {
    a: Struct_3,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec4<u32>,
    d: vec4<i32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 13> = array<Struct_4, 13>(Struct_4(89415u, vec2<i32>(57759i, -1i)), Struct_4(3716u, vec2<i32>(45966i, 32656i)), Struct_4(1u, vec2<i32>(2147483647i, 37698i)), Struct_4(7669u, vec2<i32>(25200i, 97347i)), Struct_4(910u, vec2<i32>(1i, -23620i)), Struct_4(13960u, vec2<i32>(2147483647i, 15243i)), Struct_4(22810u, vec2<i32>(1i, 0i)), Struct_4(41677u, vec2<i32>(0i, 29900i)), Struct_4(4294967295u, vec2<i32>(i32(-2147483648), i32(-2147483648))), Struct_4(0u, vec2<i32>(1i, 1390i)), Struct_4(20385u, vec2<i32>(10918i, 1i)), Struct_4(63384u, vec2<i32>(2147483647i, 3976i)), Struct_4(49077u, vec2<i32>(8519i, -20903i)));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_3, arg_2: Struct_1, arg_3: Struct_5) -> Struct_1 {
    global0 = array<Struct_4, 13>();
    global0 = array<Struct_4, 13>();
    let var_0 = vec3<i32>(1i, abs(select(arg_2.b.x, arg_3.a.b.d.b.x, all(select(arg_1.a.zz, vec2<bool>(arg_3.a.a.x, arg_3.a.b.a), false)))), 14074i);
    global0 = array<Struct_4, 13>();
    let var_1 = arg_3.a.b.d.a.x;
    return arg_1.b.c;
}

fn func_3() -> bool {
    let var_0 = Struct_2(any(select(vec3<bool>(any(vec3<bool>(true, false, true)), false, true), !select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(false, true, true))), func_1(_wgslsmith_mult_vec4_i32(reverseBits(vec4<i32>(1i, 1i, 1i, 1i)), vec4<i32>(2147483647i, 1i, 735i, 74383i) << (~vec4<u32>(u_input.c.x, u_input.b, 1u, u_input.a) % vec4<u32>(32u))), Struct_3(vec3<bool>(true, true, true), Struct_2(any(vec4<bool>(false, false, true, true)), func_1(vec4<i32>(1i, -32419i, -2147483647i, -2147483647i), Struct_3(vec3<bool>(true, true, true), Struct_2(true, Struct_1(u_input.c.yx, vec4<i32>(-34386i, -27915i, 2147483647i, -1i)), Struct_1(u_input.c.yy, vec4<i32>(0i, 0i, 23785i, 0i)), Struct_1(vec2<u32>(u_input.a, u_input.c.x), vec4<i32>(40824i, -2147483647i, 45282i, 0i)))), Struct_1(vec2<u32>(u_input.a, 1u), vec4<i32>(2147483647i, 1i, -37871i, 2147483647i)), Struct_5(Struct_3(vec3<bool>(true, false, false), Struct_2(true, Struct_1(u_input.c.yx, vec4<i32>(1i, -34864i, 4282i, 0i)), Struct_1(vec2<u32>(1u, u_input.a), vec4<i32>(-61627i, -7340i, 2147483647i, -1i)), Struct_1(u_input.c.yy, vec4<i32>(2147483647i, -28958i, 26591i, 0i)))), vec3<f32>(212f, 1075f, 712f))), Struct_1(vec2<u32>(1u, 47052u), vec4<i32>(-41078i, 10666i, -19485i, 1i)), func_1(vec4<i32>(-47651i, 0i, -73149i, -11004i), Struct_3(vec3<bool>(false, true, false), Struct_2(false, Struct_1(vec2<u32>(u_input.c.x, 4294967295u), vec4<i32>(-2147483647i, 1i, 25122i, 0i)), Struct_1(vec2<u32>(u_input.c.x, u_input.a), vec4<i32>(-11252i, 2147483647i, 13207i, -2147483647i)), Struct_1(u_input.c.zz, vec4<i32>(-24674i, 2147483647i, -1i, 1i)))), Struct_1(vec2<u32>(u_input.b, u_input.a), vec4<i32>(41223i, -27375i, -1i, 5362i)), Struct_5(Struct_3(vec3<bool>(false, true, false), Struct_2(true, Struct_1(u_input.c.zy, vec4<i32>(-24748i, -1i, -2147483647i, 2147483647i)), Struct_1(vec2<u32>(u_input.b, 1u), vec4<i32>(46370i, 1i, 30455i, -19366i)), Struct_1(vec2<u32>(u_input.b, 1u), vec4<i32>(6428i, 1i, 1i, 74040i)))), vec3<f32>(288f, -766f, -202f))))), Struct_1(firstLeadingBit(~u_input.c.xx), vec4<i32>(firstLeadingBit(-2147483647i), 1i, -37462i, select(-24348i, 28233i, true))), Struct_5(Struct_3(vec3<bool>(true, false, false), Struct_2(false, Struct_1(u_input.c.yz, vec4<i32>(-27177i, 2147483647i, -25232i, -1i)), Struct_1(vec2<u32>(u_input.b, 79502u), vec4<i32>(-43315i, -1i, 17342i, -48253i)), Struct_1(u_input.c.xy, vec4<i32>(73015i, -53447i, -2147483647i, -30274i)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1000f, 1000f, 1255f))), _wgslsmith_div_vec3_f32(vec3<f32>(712f, -1890f, -150f), vec3<f32>(-225f, 1211f, 562f)), true)))), func_1(vec4<i32>(i32(-1i) * -1i, _wgslsmith_mod_i32(~(-43097i), _wgslsmith_clamp_i32(0i, 7271i, 26864i)), _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 129i, -27775i), vec3<i32>(21900i, -2147483647i, 2147483647i)), _wgslsmith_div_i32(37260i, -1i)), 1i), Struct_3(vec3<bool>(true, u_input.a > u_input.c.x, true), Struct_2(true, func_1(vec4<i32>(0i, -55937i, 2147483647i, 2147483647i), Struct_3(vec3<bool>(true, false, false), Struct_2(false, Struct_1(vec2<u32>(u_input.c.x, 1u), vec4<i32>(2147483647i, 15476i, -1i, 0i)), Struct_1(u_input.c.yy, vec4<i32>(24613i, -33659i, 1i, -43947i)), Struct_1(vec2<u32>(0u, u_input.c.x), vec4<i32>(-9344i, -2147483647i, 2147483647i, -1i)))), Struct_1(vec2<u32>(u_input.c.x, 1u), vec4<i32>(-1i, 8918i, 921i, 39421i)), Struct_5(Struct_3(vec3<bool>(true, false, true), Struct_2(false, Struct_1(vec2<u32>(12817u, u_input.a), vec4<i32>(-1i, 0i, 13042i, -2147483647i)), Struct_1(vec2<u32>(u_input.c.x, u_input.b), vec4<i32>(0i, 29066i, -9128i, -9913i)), Struct_1(vec2<u32>(1u, 4294967295u), vec4<i32>(-67808i, 0i, -37835i, 1i)))), vec3<f32>(1018f, -814f, 392f))), Struct_1(u_input.c.yy, vec4<i32>(1i, -2147483647i, -23719i, 1i)), func_1(vec4<i32>(-280i, 657i, 66765i, 2147483647i), Struct_3(vec3<bool>(false, false, false), Struct_2(false, Struct_1(vec2<u32>(u_input.c.x, u_input.a), vec4<i32>(0i, -1i, -25689i, -15580i)), Struct_1(u_input.c.xz, vec4<i32>(-2147483647i, -1i, 29734i, -42859i)), Struct_1(u_input.c.yx, vec4<i32>(-2147483647i, 1i, 25393i, 1i)))), Struct_1(vec2<u32>(u_input.a, 16784u), vec4<i32>(18988i, -25287i, 740i, 1i)), Struct_5(Struct_3(vec3<bool>(false, false, true), Struct_2(false, Struct_1(vec2<u32>(u_input.a, u_input.c.x), vec4<i32>(-35683i, 30481i, 34446i, 0i)), Struct_1(u_input.c.yx, vec4<i32>(11574i, 0i, 1880i, -24850i)), Struct_1(u_input.c.yz, vec4<i32>(-35500i, -17143i, 2147483647i, 12950i)))), vec3<f32>(1078f, 1074f, -153f))))), func_1(abs(vec4<i32>(-17256i, 36036i, -2147483647i, 2147483647i)), Struct_3(vec3<bool>(true, true, true), Struct_2(false, Struct_1(u_input.c.yy, vec4<i32>(-27627i, 4666i, 2147483647i, -1i)), Struct_1(u_input.c.zy, vec4<i32>(60522i, 28205i, 2274i, 29095i)), Struct_1(u_input.c.zz, vec4<i32>(-59588i, -7550i, -1i, 0i)))), func_1(vec4<i32>(1i, 1i, 1i, 1i), Struct_3(vec3<bool>(false, false, false), Struct_2(true, Struct_1(vec2<u32>(u_input.b, u_input.c.x), vec4<i32>(1i, 0i, 1i, -2147483647i)), Struct_1(vec2<u32>(u_input.a, 1u), vec4<i32>(1i, -2147483647i, 12752i, 2147483647i)), Struct_1(vec2<u32>(60500u, 5975u), vec4<i32>(-20636i, -1i, -2147483647i, 18757i)))), func_1(vec4<i32>(13365i, -35879i, 2147483647i, 23953i), Struct_3(vec3<bool>(false, true, false), Struct_2(false, Struct_1(u_input.c.zy, vec4<i32>(0i, 1i, -1i, -22934i)), Struct_1(vec2<u32>(u_input.a, u_input.a), vec4<i32>(-20135i, 1i, -1i, 40005i)), Struct_1(u_input.c.zx, vec4<i32>(-1i, -19894i, 0i, -40139i)))), Struct_1(u_input.c.xy, vec4<i32>(-56039i, 17066i, 1i, 1i)), Struct_5(Struct_3(vec3<bool>(true, true, true), Struct_2(false, Struct_1(vec2<u32>(58163u, u_input.a), vec4<i32>(-1i, 0i, 1i, 4036i)), Struct_1(u_input.c.xx, vec4<i32>(-22247i, -40366i, -8218i, 1i)), Struct_1(u_input.c.xy, vec4<i32>(1i, -12721i, 0i, 43730i)))), vec3<f32>(967f, 1070f, 596f))), Struct_5(Struct_3(vec3<bool>(true, false, true), Struct_2(false, Struct_1(u_input.c.yx, vec4<i32>(15474i, 1i, 2147483647i, -6195i)), Struct_1(u_input.c.xx, vec4<i32>(0i, 0i, 38827i, 14808i)), Struct_1(u_input.c.xy, vec4<i32>(-2147483647i, 9285i, 2147483647i, 36694i)))), vec3<f32>(299f, -416f, -560f))), Struct_5(Struct_3(vec3<bool>(true, false, false), Struct_2(true, Struct_1(u_input.c.yz, vec4<i32>(-2147483647i, 1i, 1i, 29227i)), Struct_1(vec2<u32>(4294967295u, 33041u), vec4<i32>(1i, -5243i, -12425i, 69683i)), Struct_1(u_input.c.yx, vec4<i32>(2147483647i, 2147483647i, -45702i, 24493i)))), vec3<f32>(-1000f, -700f, 815f))), Struct_5(Struct_3(vec3<bool>(false, true, true), Struct_2(false, Struct_1(vec2<u32>(1u, u_input.c.x), vec4<i32>(-2147483647i, 0i, 1i, 49252i)), Struct_1(u_input.c.zy, vec4<i32>(18607i, -2147483647i, -2147483647i, -24350i)), Struct_1(vec2<u32>(12809u, u_input.a), vec4<i32>(57321i, 0i, -2147483647i, 1i)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 554f, 806f) - vec3<f32>(757f, -216f, 2848f)), vec3<f32>(-351f, 800f, 196f)))), func_1(_wgslsmith_add_vec4_i32(-vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(~26998i, ~0i, 1i, ~(-15909i))), Struct_3(vec3<bool>(true, all(vec2<bool>(false, false)), true), Struct_2(true, Struct_1(u_input.c.yy, vec4<i32>(-2147483647i, 590i, 0i, -34389i)), Struct_1(vec2<u32>(4294967295u, 20662u), vec4<i32>(-18365i, 0i, -3650i, -42559i)), func_1(vec4<i32>(-27057i, -34694i, 0i, 0i), Struct_3(vec3<bool>(false, true, false), Struct_2(false, Struct_1(u_input.c.xz, vec4<i32>(1i, 14049i, -35443i, -52865i)), Struct_1(vec2<u32>(1u, u_input.a), vec4<i32>(67039i, -1i, -1i, 0i)), Struct_1(vec2<u32>(u_input.a, 0u), vec4<i32>(0i, -3887i, 0i, 2147483647i)))), Struct_1(vec2<u32>(13931u, 42189u), vec4<i32>(21889i, -2147483647i, 1i, 0i)), Struct_5(Struct_3(vec3<bool>(false, false, false), Struct_2(true, Struct_1(u_input.c.xz, vec4<i32>(-54467i, 22314i, 18954i, -1i)), Struct_1(u_input.c.zx, vec4<i32>(1i, -30981i, 2147483647i, -89598i)), Struct_1(vec2<u32>(12654u, u_input.a), vec4<i32>(310i, 0i, 0i, 13095i)))), vec3<f32>(782f, -316f, -2738f))))), func_1(-vec4<i32>(1i, -2147483647i, 38012i, -2147483647i), Struct_3(select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), true), Struct_2(false, Struct_1(vec2<u32>(u_input.b, 4294967295u), vec4<i32>(-22364i, 1i, 10102i, -18688i)), Struct_1(u_input.c.zz, vec4<i32>(-19571i, 21985i, 31876i, 2147483647i)), Struct_1(vec2<u32>(u_input.a, 67006u), vec4<i32>(-1i, -64018i, -9365i, 14057i)))), func_1(firstTrailingBit(vec4<i32>(-10528i, 0i, -23802i, -1i)), Struct_3(vec3<bool>(false, false, false), Struct_2(false, Struct_1(vec2<u32>(1u, u_input.a), vec4<i32>(0i, 2147483647i, 682i, 2147483647i)), Struct_1(u_input.c.yy, vec4<i32>(-2499i, 0i, 1i, -5439i)), Struct_1(u_input.c.yy, vec4<i32>(-1i, 16660i, 12469i, 2254i)))), func_1(vec4<i32>(-3964i, -1i, -2147483647i, -2147483647i), Struct_3(vec3<bool>(true, false, true), Struct_2(false, Struct_1(u_input.c.yx, vec4<i32>(-2147483647i, -2015i, 1i, -34350i)), Struct_1(u_input.c.xz, vec4<i32>(-3902i, -1i, -6179i, -35898i)), Struct_1(vec2<u32>(9876u, u_input.c.x), vec4<i32>(2147483647i, 2147483647i, 11321i, 1i)))), Struct_1(u_input.c.yx, vec4<i32>(-17110i, 6950i, 1i, 1i)), Struct_5(Struct_3(vec3<bool>(false, false, true), Struct_2(false, Struct_1(u_input.c.xx, vec4<i32>(1i, -1i, 7085i, -11469i)), Struct_1(u_input.c.xz, vec4<i32>(2147483647i, 1i, -2147483647i, -1i)), Struct_1(u_input.c.zy, vec4<i32>(1i, 23428i, 2147483647i, 1i)))), vec3<f32>(1525f, -1000f, 426f))), Struct_5(Struct_3(vec3<bool>(false, false, false), Struct_2(true, Struct_1(vec2<u32>(u_input.a, 4294967295u), vec4<i32>(-21324i, -13547i, 2147483647i, -1i)), Struct_1(vec2<u32>(u_input.a, 45715u), vec4<i32>(-1i, -2147483647i, -1i, -2147483647i)), Struct_1(u_input.c.yy, vec4<i32>(-8986i, 2147483647i, 1i, 0i)))), vec3<f32>(1300f, 1102f, 1456f))), Struct_5(Struct_3(vec3<bool>(true, true, true), Struct_2(false, Struct_1(vec2<u32>(0u, u_input.b), vec4<i32>(38533i, -25702i, -2147483647i, 7071i)), Struct_1(u_input.c.xx, vec4<i32>(-32057i, 26942i, 1i, -32265i)), Struct_1(vec2<u32>(0u, u_input.c.x), vec4<i32>(1i, -1i, 43746i, 66045i)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(379f, -948f, 2027f) * vec3<f32>(-1731f, 1000f, 1000f)))), Struct_5(Struct_3(vec3<bool>(true, false, false), Struct_2(true, Struct_1(vec2<u32>(u_input.a, u_input.b), vec4<i32>(0i, 79671i, 37083i, -48073i)), Struct_1(u_input.c.yy, vec4<i32>(-1i, -1i, 40657i, -29448i)), Struct_1(vec2<u32>(22163u, u_input.c.x), vec4<i32>(0i, -2147483647i, 42986i, 33984i)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(2744f, 714f, 2621f) - vec3<f32>(632f, -1000f, 1000f)))));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1195f, -360f, 1100f, -1404f) + vec4<f32>(724f, 153f, -307f, -748f)))) + vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(891f, -1000f) * -816f), 1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1978f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1000f * 1000f), _wgslsmith_f_op_f32(round(136f)), true)))));
    let var_2 = vec2<u32>(4294967295u & var_0.c.a.x, 4294967295u);
    let var_3 = vec4<u32>(~(~u_input.c.x) << (var_2.x % 32u), var_0.b.a.x ^ _wgslsmith_add_u32(_wgslsmith_sub_u32(_wgslsmith_add_u32(43604u, 74201u), 1u), 0u), ~(~var_2.x), 24694u);
    global0 = array<Struct_4, 13>();
    return var_0.a;
}

fn func_2(arg_0: vec4<bool>, arg_1: Struct_2) -> Struct_4 {
    var var_0 = vec4<bool>(arg_1.a, false | arg_1.a, arg_1.a, func_3());
    var var_1 = arg_1.d.b.ww;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(121f * -2526f) - -203f)))) - _wgslsmith_f_op_f32(f32(-1f) * -120f));
    let var_3 = Struct_5(Struct_3(arg_0.wyz, Struct_2(false, arg_1.d, Struct_1(min(arg_1.b.a, arg_1.c.a), select(arg_1.c.b, vec4<i32>(var_1.x, -9146i, arg_1.b.b.x, 17678i), vec4<bool>(true, false, true, arg_1.a))), func_1(arg_1.d.b, Struct_3(var_0.wwx, Struct_2(false, arg_1.b, Struct_1(arg_1.d.a, vec4<i32>(-2147483647i, var_1.x, 22399i, var_1.x)), arg_1.d)), func_1(arg_1.c.b, Struct_3(vec3<bool>(false, arg_1.a, true), Struct_2(false, arg_1.b, Struct_1(u_input.c.xz, vec4<i32>(arg_1.c.b.x, arg_1.d.b.x, -2147483647i, arg_1.b.b.x)), arg_1.b)), Struct_1(vec2<u32>(arg_1.d.a.x, 51239u), vec4<i32>(var_1.x, arg_1.c.b.x, 1i, var_1.x)), Struct_5(Struct_3(var_0.xyz, arg_1), vec3<f32>(746f, -414f, -811f))), Struct_5(Struct_3(vec3<bool>(arg_0.x, false, false), Struct_2(true, Struct_1(u_input.c.yy, arg_1.d.b), arg_1.d, arg_1.c)), vec3<f32>(-127f, -1779f, 1000f))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(1204f, 606f, 1757f) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(625f, 309f, -322f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1299f, 785f, 1000f)))));
    global0 = array<Struct_4, 13>();
    return global0[_wgslsmith_index_u32(u_input.b, 13u)];
}

fn func_4(arg_0: Struct_4, arg_1: Struct_5) -> Struct_4 {
    var var_0 = arg_1.a.b;
    var var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.b.x, _wgslsmith_f_op_f32(select(-412f, 399f, false)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_1.b.x))), arg_1.b.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(1135f, arg_1.b.x))))) - _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-511f, _wgslsmith_f_op_f32(-1840f - _wgslsmith_f_op_f32(f32(-1f) * -190f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -740f) + _wgslsmith_div_f32(arg_1.b.x, -835f)), -613f))));
    var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(arg_1.b.x, arg_1.b.x)), -1093f)), 1723f, arg_1.b.x, _wgslsmith_f_op_f32(arg_1.b.x - 1203f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.x, 117f, var_1.x, -2260f), vec4<f32>(var_1.x, -447f, -1436f, 160f), vec4<bool>(arg_1.a.a.x, var_0.a, false, var_0.a))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, arg_1.b.x, arg_1.b.x, var_1.x)))) + _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-299f, -1000f, -1263f, 2455f))))))));
    let var_2 = vec3<i32>(var_0.c.b.x, _wgslsmith_div_i32(_wgslsmith_mult_i32(~(-2147483647i), _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.d.b.x, 15912i, arg_0.b.x), vec3<i32>(2147483647i, var_0.c.b.x, 35870i)), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.b.x, 42953i, -16465i, -15798i), vec4<i32>(arg_0.b.x, arg_1.a.b.c.b.x, arg_1.a.b.d.b.x, 1i)))), -min(1i, -2147483647i) ^ arg_0.b.x), 8354i);
    return func_2(select(select(select(select(vec4<bool>(false, false, var_0.a, true), vec4<bool>(var_0.a, arg_1.a.a.x, var_0.a, false), vec4<bool>(arg_1.a.b.a, arg_1.a.b.a, var_0.a, var_0.a)), vec4<bool>(arg_1.a.a.x, arg_1.a.a.x, arg_1.a.b.a, false), vec4<bool>(false, var_0.a, false, true)), select(!vec4<bool>(arg_1.a.b.a, true, false, var_0.a), !vec4<bool>(false, var_0.a, false, true), select(vec4<bool>(true, false, false, var_0.a), vec4<bool>(var_0.a, arg_1.a.b.a, false, false), false)), true), vec4<bool>((arg_0.a | arg_0.a) >= _wgslsmith_mod_u32(var_0.c.a.x, arg_1.a.b.d.a.x), !any(vec4<bool>(var_0.a, var_0.a, arg_1.a.a.x, false)), true, any(select(vec4<bool>(arg_1.a.b.a, var_0.a, arg_1.a.a.x, false), vec4<bool>(false, var_0.a, arg_1.a.a.x, false), vec4<bool>(true, false, true, true)))), true), Struct_2(all(!select(vec4<bool>(var_0.a, arg_1.a.b.a, arg_1.a.a.x, false), vec4<bool>(false, var_0.a, var_0.a, true), vec4<bool>(false, var_0.a, var_0.a, var_0.a))), Struct_1(var_0.b.a, _wgslsmith_sub_vec4_i32(reverseBits(vec4<i32>(arg_0.b.x, -22682i, arg_0.b.x, -2147483647i)), arg_1.a.b.c.b)), var_0.d, arg_1.a.b.c));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_4, 13>();
    global0 = array<Struct_4, 13>();
    var var_0 = min(1u, ~u_input.a);
    var var_1 = func_4(func_2(vec4<bool>(true, false, all(vec3<bool>(false, true, true)) || true, true), Struct_2(true, Struct_1(u_input.c.xx, vec4<i32>(1i, 1i, 1i, 1i)), func_1(vec4<i32>(-1418i, 2147483647i, -2147483647i, -1i), Struct_3(vec3<bool>(true, false, false), Struct_2(true, Struct_1(u_input.c.zz, vec4<i32>(-30264i, 1i, 14501i, 4217i)), Struct_1(u_input.c.yy, vec4<i32>(0i, -1i, 1i, -2147483647i)), Struct_1(u_input.c.zz, vec4<i32>(2147483647i, 39543i, 2147483647i, 6248i)))), Struct_1(vec2<u32>(68280u, u_input.a), vec4<i32>(0i, -8112i, 1i, -17424i)), Struct_5(Struct_3(vec3<bool>(false, true, false), Struct_2(true, Struct_1(vec2<u32>(u_input.c.x, 0u), vec4<i32>(-1i, -10181i, 27635i, -2147483647i)), Struct_1(vec2<u32>(1u, u_input.a), vec4<i32>(0i, 1i, 0i, 2147483647i)), Struct_1(vec2<u32>(13151u, 13731u), vec4<i32>(-14516i, 19871i, -19344i, 3764i)))), vec3<f32>(-1000f, 222f, -881f))), Struct_1(vec2<u32>(4294967295u, 1u), vec4<i32>(1i, 1i, 1i, 1i)))), Struct_5(Struct_3(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), true), Struct_2(true, func_1(vec4<i32>(2147483647i, 16986i, 2147483647i, 0i), Struct_3(vec3<bool>(false, true, true), Struct_2(true, Struct_1(vec2<u32>(3156u, u_input.b), vec4<i32>(-13925i, -42538i, 2147483647i, 1i)), Struct_1(vec2<u32>(29153u, 38845u), vec4<i32>(2147483647i, 22553i, 1i, -1i)), Struct_1(u_input.c.zx, vec4<i32>(-34569i, -2147483647i, 1004i, -73736i)))), Struct_1(u_input.c.yz, vec4<i32>(2147483647i, 30484i, 2147483647i, -2147483647i)), Struct_5(Struct_3(vec3<bool>(true, false, false), Struct_2(true, Struct_1(u_input.c.xy, vec4<i32>(-23708i, -23044i, 16483i, 1i)), Struct_1(vec2<u32>(0u, 39732u), vec4<i32>(1i, -2147483647i, 2147483647i, 6436i)), Struct_1(u_input.c.xx, vec4<i32>(2147483647i, -23167i, -35509i, -2147483647i)))), vec3<f32>(404f, -1272f, -1065f))), func_1(vec4<i32>(0i, -4135i, 0i, -14283i), Struct_3(vec3<bool>(true, false, true), Struct_2(true, Struct_1(vec2<u32>(u_input.b, 0u), vec4<i32>(0i, -2147483647i, 40076i, -1i)), Struct_1(vec2<u32>(u_input.b, 1u), vec4<i32>(-1i, 37798i, 0i, 2147483647i)), Struct_1(vec2<u32>(10366u, u_input.c.x), vec4<i32>(-2069i, -8621i, -2147483647i, 42465i)))), Struct_1(u_input.c.zy, vec4<i32>(93718i, -1i, 2147483647i, -25913i)), Struct_5(Struct_3(vec3<bool>(true, false, true), Struct_2(false, Struct_1(vec2<u32>(u_input.a, u_input.b), vec4<i32>(-2147483647i, 54650i, 2147483647i, -352i)), Struct_1(vec2<u32>(u_input.a, u_input.c.x), vec4<i32>(-4961i, 41007i, 0i, 0i)), Struct_1(u_input.c.xz, vec4<i32>(52652i, 2344i, -1i, -16644i)))), vec3<f32>(-1648f, 1165f, -231f))), Struct_1(u_input.c.xx, vec4<i32>(32429i, 0i, -58028i, 19671i)))), vec3<f32>(_wgslsmith_f_op_f32(ceil(-292f)), 542f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1268f - 778f) - -1337f))));
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(abs(-388f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1470f, 1209f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(976f * -689f), _wgslsmith_f_op_f32(-495f * -1722f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1494f + 225f)))), -1443f);
    let var_3 = func_1(max(vec4<i32>(_wgslsmith_div_i32(-var_1.b.x, countOneBits(var_1.b.x)), var_1.b.x, var_1.b.x, _wgslsmith_mod_i32(_wgslsmith_add_i32(-1i, var_1.b.x), var_1.b.x)), vec4<i32>(~(0i ^ var_1.b.x), -3170i, var_1.b.x, -13442i)), Struct_3(vec3<bool>(!(var_2.x >= 793f), true, var_2.x < _wgslsmith_f_op_f32(min(790f, var_2.x))), Struct_2(false, Struct_1(u_input.c.yz, ~vec4<i32>(var_1.b.x, var_1.b.x, 49292i, var_1.b.x)), func_1(vec4<i32>(var_1.b.x, 2147483647i, var_1.b.x, var_1.b.x), Struct_3(vec3<bool>(true, false, true), Struct_2(true, Struct_1(vec2<u32>(var_1.a, 0u), vec4<i32>(-2147483647i, -2147483647i, 49711i, var_1.b.x)), Struct_1(vec2<u32>(var_1.a, var_1.a), vec4<i32>(-16960i, -2147483647i, 34882i, var_1.b.x)), Struct_1(vec2<u32>(u_input.b, var_1.a), vec4<i32>(54892i, var_1.b.x, -51868i, var_1.b.x)))), Struct_1(u_input.c.xy, vec4<i32>(-1i, var_1.b.x, 1i, var_1.b.x)), Struct_5(Struct_3(vec3<bool>(true, true, false), Struct_2(true, Struct_1(u_input.c.zy, vec4<i32>(-2147483647i, var_1.b.x, 55299i, -2147483647i)), Struct_1(vec2<u32>(1u, var_1.a), vec4<i32>(48867i, var_1.b.x, var_1.b.x, -18385i)), Struct_1(vec2<u32>(22017u, 4294967295u), vec4<i32>(1i, var_1.b.x, var_1.b.x, 2147483647i)))), vec3<f32>(var_2.x, -774f, var_2.x))), Struct_1(abs(vec2<u32>(var_1.a, 124157u)), vec4<i32>(0i, 1i, var_1.b.x, var_1.b.x)))), func_1(vec4<i32>(func_2(select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false)), Struct_2(false, Struct_1(vec2<u32>(var_1.a, var_1.a), vec4<i32>(var_1.b.x, var_1.b.x, -40108i, var_1.b.x)), Struct_1(u_input.c.xy, vec4<i32>(var_1.b.x, var_1.b.x, 22519i, 2147483647i)), Struct_1(vec2<u32>(u_input.b, 1u), vec4<i32>(13840i, var_1.b.x, 30607i, -1i)))).b.x, i32(-1i) * -56092i, var_1.b.x, 46949i), Struct_3(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, true, true)), false), Struct_2(true, Struct_1(u_input.c.yx, vec4<i32>(1i, var_1.b.x, var_1.b.x, 5973i)), func_1(vec4<i32>(var_1.b.x, 33581i, var_1.b.x, var_1.b.x), Struct_3(vec3<bool>(false, false, true), Struct_2(true, Struct_1(vec2<u32>(16008u, 1u), vec4<i32>(var_1.b.x, var_1.b.x, -21594i, 1i)), Struct_1(vec2<u32>(var_1.a, 1u), vec4<i32>(var_1.b.x, var_1.b.x, var_1.b.x, var_1.b.x)), Struct_1(vec2<u32>(0u, 0u), vec4<i32>(-1i, 36703i, var_1.b.x, var_1.b.x)))), Struct_1(vec2<u32>(var_1.a, u_input.c.x), vec4<i32>(var_1.b.x, -1i, var_1.b.x, 37864i)), Struct_5(Struct_3(vec3<bool>(true, true, true), Struct_2(true, Struct_1(vec2<u32>(u_input.c.x, var_1.a), vec4<i32>(-27395i, var_1.b.x, 26494i, var_1.b.x)), Struct_1(u_input.c.yy, vec4<i32>(var_1.b.x, 47715i, var_1.b.x, 21323i)), Struct_1(u_input.c.yz, vec4<i32>(var_1.b.x, var_1.b.x, var_1.b.x, var_1.b.x)))), vec3<f32>(-661f, var_2.x, 828f))), Struct_1(vec2<u32>(u_input.a, u_input.c.x), vec4<i32>(0i, var_1.b.x, -1i, 1i)))), func_1(-(~vec4<i32>(var_1.b.x, var_1.b.x, var_1.b.x, var_1.b.x)), Struct_3(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), Struct_2(false, Struct_1(vec2<u32>(var_1.a, 54002u), vec4<i32>(var_1.b.x, 2147483647i, -19761i, var_1.b.x)), Struct_1(vec2<u32>(0u, u_input.b), vec4<i32>(0i, -1i, var_1.b.x, var_1.b.x)), Struct_1(vec2<u32>(u_input.a, u_input.c.x), vec4<i32>(var_1.b.x, var_1.b.x, var_1.b.x, 0i)))), Struct_1(u_input.c.yy, vec4<i32>(var_1.b.x, -8336i, 0i, var_1.b.x) << (vec4<u32>(1u, 4294967295u, 44929u, 52324u) % vec4<u32>(32u))), Struct_5(Struct_3(vec3<bool>(false, false, true), Struct_2(true, Struct_1(u_input.c.xx, vec4<i32>(0i, var_1.b.x, 1i, -2147483647i)), Struct_1(vec2<u32>(4294967295u, 77476u), vec4<i32>(var_1.b.x, 2147483647i, -13416i, 50519i)), Struct_1(vec2<u32>(1u, u_input.b), vec4<i32>(86452i, -17639i, 0i, 2147483647i)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, -1728f, var_2.x)))), Struct_5(Struct_3(vec3<bool>(true, false, false), Struct_2(true, Struct_1(u_input.c.xy, vec4<i32>(0i, 25319i, 2862i, var_1.b.x)), Struct_1(vec2<u32>(5841u, var_1.a), vec4<i32>(var_1.b.x, -1i, var_1.b.x, 4148i)), Struct_1(u_input.c.xy, vec4<i32>(var_1.b.x, var_1.b.x, 2147483647i, var_1.b.x)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, var_2.x, 565f)), vec3<f32>(var_2.x, -851f, -1791f), select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true)))))), Struct_5(Struct_3(vec3<bool>(select(false, true, false), any(vec2<bool>(false, false)), true), Struct_2(all(vec4<bool>(false, false, false, true)), Struct_1(u_input.c.xy, vec4<i32>(28727i, var_1.b.x, -6640i, -2147483647i)), Struct_1(u_input.c.zz, vec4<i32>(-27435i, -25987i, 0i, 12555i)), func_1(vec4<i32>(38161i, -20323i, -2147483647i, 2147483647i), Struct_3(vec3<bool>(true, false, false), Struct_2(true, Struct_1(vec2<u32>(var_1.a, u_input.c.x), vec4<i32>(-2147483647i, -34649i, var_1.b.x, var_1.b.x)), Struct_1(vec2<u32>(u_input.b, 55840u), vec4<i32>(6850i, 29097i, 46012i, -18371i)), Struct_1(vec2<u32>(1u, 1u), vec4<i32>(var_1.b.x, -10545i, var_1.b.x, var_1.b.x)))), Struct_1(u_input.c.xy, vec4<i32>(-2147483647i, var_1.b.x, 0i, var_1.b.x)), Struct_5(Struct_3(vec3<bool>(true, true, false), Struct_2(false, Struct_1(vec2<u32>(var_1.a, var_1.a), vec4<i32>(var_1.b.x, -39364i, var_1.b.x, var_1.b.x)), Struct_1(vec2<u32>(var_1.a, var_1.a), vec4<i32>(-31706i, var_1.b.x, var_1.b.x, var_1.b.x)), Struct_1(vec2<u32>(var_1.a, 4294967295u), vec4<i32>(26367i, var_1.b.x, var_1.b.x, var_1.b.x)))), vec3<f32>(-2103f, var_2.x, var_2.x))))), vec3<f32>(_wgslsmith_f_op_f32(exp2(1f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(858f)), _wgslsmith_f_op_f32(-var_2.x)), _wgslsmith_f_op_f32(min(806f, -666f)))));
    global0 = array<Struct_4, 13>();
    let x = u_input.a;
    s_output = StorageBuffer(var_3.a ^ u_input.c.yy, var_1.b.x, (min(vec4<u32>(u_input.b, 4294967295u, var_3.a.x, var_1.a) << (vec4<u32>(31396u, 4294967295u, 11089u, 26982u) % vec4<u32>(32u)), vec4<u32>(var_3.a.x, u_input.c.x, 42957u, u_input.b)) >> ((abs(vec4<u32>(1u, 70303u, 10808u, var_1.a)) & ~vec4<u32>(24612u, u_input.c.x, var_3.a.x, 17930u)) % vec4<u32>(32u))) | vec4<u32>(0u, var_1.a, _wgslsmith_add_u32(firstTrailingBit(var_3.a.x), ~1u), var_1.a ^ 4294967295u), _wgslsmith_clamp_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, -3607i), vec2<i32>(var_1.b.x, -1i)), _wgslsmith_mult_i32(var_3.b.x, -1i), -3093i, -54263i | var_1.b.x), var_3.b), var_3.b, vec4<i32>(_wgslsmith_add_i32(var_1.b.x, var_3.b.x) & var_1.b.x, ~(-var_1.b.x), 0i, ~(~var_3.b.x))), vec3<f32>(var_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_2.x)) + _wgslsmith_f_op_f32(f32(-1f) * -158f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-310f * var_2.x) + _wgslsmith_f_op_f32(116f + -1050f))), _wgslsmith_f_op_f32(round(272f))));
}

