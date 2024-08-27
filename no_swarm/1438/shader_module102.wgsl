struct Struct_1 {
    a: bool,
    b: vec4<i32>,
    c: i32,
    d: vec3<bool>,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
    d: i32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 31> = array<Struct_1, 31>(Struct_1(false, vec4<i32>(1i, 43916i, 1i, -1i), -47590i, vec3<bool>(true, false, false), vec4<i32>(i32(-2147483648), -70050i, -21361i, 6065i)), Struct_1(false, vec4<i32>(-1i, -19790i, -1i, -14027i), 0i, vec3<bool>(false, true, false), vec4<i32>(41074i, 2147483647i, -8102i, 2147483647i)), Struct_1(false, vec4<i32>(0i, 17871i, 28473i, 0i), 0i, vec3<bool>(false, true, true), vec4<i32>(i32(-2147483648), i32(-2147483648), 0i, i32(-2147483648))), Struct_1(true, vec4<i32>(15129i, -34281i, 21692i, i32(-2147483648)), 8407i, vec3<bool>(true, true, true), vec4<i32>(-6317i, 1i, 0i, 48842i)), Struct_1(false, vec4<i32>(i32(-2147483648), 301i, 2147483647i, -11657i), 2147483647i, vec3<bool>(true, false, false), vec4<i32>(2147483647i, 1681i, 0i, 1i)), Struct_1(false, vec4<i32>(-1i, 50151i, 2147483647i, -17512i), 65626i, vec3<bool>(false, true, false), vec4<i32>(-1i, -21528i, -1i, 0i)), Struct_1(false, vec4<i32>(2147483647i, -3951i, -94162i, -3210i), 2147483647i, vec3<bool>(false, true, true), vec4<i32>(-384i, i32(-2147483648), i32(-2147483648), 1i)), Struct_1(true, vec4<i32>(33454i, i32(-2147483648), -64244i, 5551i), -7048i, vec3<bool>(true, false, false), vec4<i32>(57606i, -44690i, -30294i, -1i)), Struct_1(true, vec4<i32>(i32(-2147483648), -15635i, 2147483647i, -1i), 0i, vec3<bool>(true, false, true), vec4<i32>(4506i, 6143i, 40395i, -14715i)), Struct_1(true, vec4<i32>(-1i, -1i, 2147483647i, 1i), 35999i, vec3<bool>(true, false, false), vec4<i32>(-10244i, 12167i, 2147483647i, -27067i)), Struct_1(false, vec4<i32>(-1i, -1i, i32(-2147483648), 8631i), 0i, vec3<bool>(false, true, false), vec4<i32>(i32(-2147483648), 2147483647i, 49455i, 35921i)), Struct_1(false, vec4<i32>(22860i, 8136i, 40636i, i32(-2147483648)), 3433i, vec3<bool>(true, true, false), vec4<i32>(62205i, 24834i, i32(-2147483648), 0i)), Struct_1(true, vec4<i32>(2147483647i, 2147483647i, -28546i, -1i), -24480i, vec3<bool>(false, false, true), vec4<i32>(-51924i, -11841i, 2147483647i, 0i)), Struct_1(true, vec4<i32>(29986i, -13337i, i32(-2147483648), -15177i), 41643i, vec3<bool>(true, true, true), vec4<i32>(-12090i, 66139i, 2147483647i, 2147483647i)), Struct_1(true, vec4<i32>(i32(-2147483648), 32220i, i32(-2147483648), 2147483647i), i32(-2147483648), vec3<bool>(true, false, true), vec4<i32>(0i, i32(-2147483648), 0i, -836i)), Struct_1(false, vec4<i32>(-1i, 14158i, 1i, 42103i), i32(-2147483648), vec3<bool>(true, true, true), vec4<i32>(2147483647i, i32(-2147483648), 2147483647i, 11058i)), Struct_1(false, vec4<i32>(2545i, 2212i, -34980i, -3577i), -11301i, vec3<bool>(false, true, false), vec4<i32>(2147483647i, 2147483647i, -53340i, 1i)), Struct_1(true, vec4<i32>(3786i, 2635i, 1i, 21104i), 0i, vec3<bool>(true, true, false), vec4<i32>(2147483647i, 21620i, 2147483647i, 917i)), Struct_1(false, vec4<i32>(1i, 22730i, -21451i, i32(-2147483648)), -1i, vec3<bool>(true, true, false), vec4<i32>(2147483647i, -1i, 2147483647i, i32(-2147483648))), Struct_1(false, vec4<i32>(35842i, 0i, -45642i, 0i), -1i, vec3<bool>(false, false, true), vec4<i32>(27859i, -3896i, 3499i, 2147483647i)), Struct_1(true, vec4<i32>(-34460i, -16796i, 2147483647i, 1i), 48916i, vec3<bool>(true, false, true), vec4<i32>(-16536i, 1i, -1i, 2147483647i)), Struct_1(true, vec4<i32>(-20029i, -19815i, 0i, 41648i), -36686i, vec3<bool>(false, true, true), vec4<i32>(1i, -22000i, -29349i, 1i)), Struct_1(true, vec4<i32>(2147483647i, -8041i, i32(-2147483648), 37930i), 1i, vec3<bool>(false, false, true), vec4<i32>(0i, 59503i, -1i, -45097i)), Struct_1(false, vec4<i32>(-12919i, -1i, 10135i, -1i), -918i, vec3<bool>(true, true, false), vec4<i32>(1i, 2147483647i, -63636i, -26755i)), Struct_1(false, vec4<i32>(1i, -1i, -6305i, 3007i), -16382i, vec3<bool>(true, true, true), vec4<i32>(-31839i, -68023i, 29388i, 21364i)), Struct_1(true, vec4<i32>(15514i, 1i, 1i, 0i), 0i, vec3<bool>(false, true, false), vec4<i32>(0i, -22198i, 1i, 15976i)), Struct_1(false, vec4<i32>(-18623i, 2147483647i, i32(-2147483648), -1i), -31203i, vec3<bool>(true, false, false), vec4<i32>(50533i, i32(-2147483648), -11545i, -6029i)), Struct_1(false, vec4<i32>(1i, 2147483647i, 1i, 27643i), -2739i, vec3<bool>(true, false, false), vec4<i32>(-5370i, 32009i, -32655i, i32(-2147483648))), Struct_1(true, vec4<i32>(-1960i, 1i, 30097i, -22144i), -1i, vec3<bool>(false, true, false), vec4<i32>(1i, 1i, -19242i, 2147483647i)), Struct_1(true, vec4<i32>(i32(-2147483648), -79132i, -59606i, 0i), -49940i, vec3<bool>(false, false, true), vec4<i32>(2147483647i, -43214i, 96716i, 66571i)), Struct_1(false, vec4<i32>(0i, 38633i, -1i, -35431i), -10695i, vec3<bool>(false, false, true), vec4<i32>(34907i, 39214i, i32(-2147483648), -48978i)));

var<private> global1: array<Struct_1, 17> = array<Struct_1, 17>(Struct_1(false, vec4<i32>(59470i, 285i, -17036i, -1i), 53324i, vec3<bool>(false, true, true), vec4<i32>(1i, 0i, -66714i, 1i)), Struct_1(false, vec4<i32>(-29390i, -42815i, -8460i, 2147483647i), i32(-2147483648), vec3<bool>(true, false, false), vec4<i32>(i32(-2147483648), 64586i, 2147483647i, 1i)), Struct_1(true, vec4<i32>(1i, 37876i, 0i, 1i), 19752i, vec3<bool>(false, false, true), vec4<i32>(-9117i, 1i, 2147483647i, 0i)), Struct_1(true, vec4<i32>(-37052i, 62702i, 1i, -53097i), 2147483647i, vec3<bool>(true, true, false), vec4<i32>(50905i, 30368i, -50810i, 2147483647i)), Struct_1(true, vec4<i32>(-66385i, 2691i, -1i, -60384i), -1i, vec3<bool>(true, true, false), vec4<i32>(11125i, -25850i, -57627i, -6482i)), Struct_1(true, vec4<i32>(1i, 1i, 33093i, -27332i), 0i, vec3<bool>(true, true, true), vec4<i32>(56914i, 0i, 23885i, -29894i)), Struct_1(true, vec4<i32>(-1i, 0i, 10302i, -36523i), 0i, vec3<bool>(false, true, true), vec4<i32>(i32(-2147483648), 2147483647i, i32(-2147483648), 38452i)), Struct_1(true, vec4<i32>(-1i, 46530i, 17997i, 9128i), 41808i, vec3<bool>(true, false, true), vec4<i32>(22135i, 33312i, 1i, -21403i)), Struct_1(false, vec4<i32>(2147483647i, -25084i, 1i, -37335i), i32(-2147483648), vec3<bool>(false, false, false), vec4<i32>(-59538i, 17269i, 0i, -1i)), Struct_1(true, vec4<i32>(2147483647i, 1i, -41682i, -26811i), 2147483647i, vec3<bool>(false, true, true), vec4<i32>(1i, 26975i, 1i, 2147483647i)), Struct_1(true, vec4<i32>(7800i, 4139i, 0i, 2147483647i), i32(-2147483648), vec3<bool>(true, true, true), vec4<i32>(-44662i, -58236i, 0i, -10925i)), Struct_1(false, vec4<i32>(19074i, i32(-2147483648), 5839i, 1i), 20004i, vec3<bool>(false, false, true), vec4<i32>(0i, 0i, 30112i, 1i)), Struct_1(true, vec4<i32>(2147483647i, 21730i, 1i, 1i), -23918i, vec3<bool>(false, false, true), vec4<i32>(-1i, i32(-2147483648), i32(-2147483648), 53698i)), Struct_1(true, vec4<i32>(51521i, 2268i, -3827i, 53176i), 2147483647i, vec3<bool>(false, true, false), vec4<i32>(32482i, 0i, -1i, 1i)), Struct_1(false, vec4<i32>(18451i, 0i, -29074i, -7930i), 31508i, vec3<bool>(true, false, true), vec4<i32>(-26092i, 57190i, -33528i, 1i)), Struct_1(true, vec4<i32>(0i, -51591i, 4284i, 51658i), -20234i, vec3<bool>(false, true, true), vec4<i32>(-30808i, 0i, 10478i, -19955i)), Struct_1(false, vec4<i32>(-1i, 1i, -763i, -388i), 2147483647i, vec3<bool>(false, false, false), vec4<i32>(1i, 41884i, 22049i, 1i)));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
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

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_2(arg_0: vec2<bool>) -> Struct_1 {
    let var_0 = -vec2<i32>(2147483647i, -(-u_input.c >> (u_input.a.x % 32u)));
    global1 = array<Struct_1, 17>();
    var var_1 = global0[_wgslsmith_index_u32(u_input.b, 31u)];
    var var_2 = ~(~(vec2<u32>(0u, _wgslsmith_dot_vec2_u32(u_input.a.zx, vec2<u32>(20453u, 1u))) << (u_input.a.xz % vec2<u32>(32u))));
    return global0[_wgslsmith_index_u32(~(~5729u), 31u)];
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: vec3<u32>) -> i32 {
    var var_0 = global0[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_mult_u32(u_input.b, 1u)), 31u)];
    let var_1 = global1[_wgslsmith_index_u32(u_input.b << (63396u % 32u), 17u)];
    global0 = array<Struct_1, 31>();
    let var_2 = 1000f;
    global0 = array<Struct_1, 31>();
    return ~(var_0.e.x | reverseBits(~abs(u_input.c)));
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1) -> Struct_1 {
    let var_0 = 4708i;
    global0 = array<Struct_1, 31>();
    let var_1 = !(!((select(true, false, arg_0.d.x) || !arg_2.a) | true));
    let var_2 = ~(abs(~firstTrailingBit(vec4<u32>(0u, u_input.a.x, u_input.b, u_input.b))) & _wgslsmith_mod_vec4_u32(~(vec4<u32>(4294967295u, u_input.a.x, 4294967295u, u_input.b) & vec4<u32>(29828u, u_input.a.x, u_input.b, u_input.a.x)), ~reverseBits(vec4<u32>(16801u, u_input.b, 7150u, 44663u))));
    return func_2(!arg_2.d.yy);
}

fn func_5(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: vec4<f32>) -> vec4<f32> {
    var var_0 = global0[_wgslsmith_index_u32(u_input.b, 31u)];
    global0 = array<Struct_1, 31>();
    let var_1 = Struct_1(true, ~vec4<i32>(0i >> (u_input.b % 32u), -2147483647i, ~(arg_1.e.x | u_input.c), 2147483647i ^ (u_input.c << (u_input.a.x % 32u))), i32(-1i) * -2147483647i, arg_1.d, vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(reverseBits(var_0.e.wz), -var_0.b.yy), arg_1.b.x), u_input.c, _wgslsmith_add_i32(~var_0.b.x >> (_wgslsmith_dot_vec2_u32(u_input.a.xz, u_input.a.yy) % 32u), _wgslsmith_mult_i32(18005i, u_input.c) >> (u_input.b % 32u)), -30683i));
    global1 = array<Struct_1, 17>();
    var var_2 = func_4(Struct_1(!(!var_0.d.x) & (1u >= _wgslsmith_sub_u32(u_input.b, 0u)), firstLeadingBit(vec4<i32>(countOneBits(-2147483647i), var_1.b.x, _wgslsmith_div_i32(26772i, u_input.c), _wgslsmith_add_i32(var_0.b.x, u_input.c))), 1i, !arg_1.d, _wgslsmith_add_vec4_i32(vec4<i32>(var_0.c, -2147483647i, -2420i, 2147483647i), var_0.b ^ arg_1.e) ^ min(arg_1.e, func_4(Struct_1(arg_1.d.x, arg_1.b, var_1.b.x, vec3<bool>(var_0.d.x, var_1.a, var_0.a), var_0.b), -973i, global1[_wgslsmith_index_u32(0u, 17u)]).e)), 1i, func_4(Struct_1(!(!arg_1.d.x), arg_1.b, _wgslsmith_div_i32(var_0.e.x, var_1.e.x), !vec3<bool>(var_0.d.x, false, true), -vec4<i32>(u_input.c, var_1.b.x, -1064i, u_input.c) << (~vec4<u32>(u_input.b, 0u, 1u, u_input.a.x) % vec4<u32>(32u))), _wgslsmith_add_i32(var_1.b.x, max(-10588i, _wgslsmith_add_i32(var_0.e.x, var_0.b.x))), Struct_1(!all(arg_1.d.xz), _wgslsmith_mult_vec4_i32(_wgslsmith_div_vec4_i32(var_0.e, vec4<i32>(-1i, 2147483647i, -4823i, arg_1.e.x)), vec4<i32>(0i, var_1.b.x, arg_1.b.x, u_input.c)), 5165i, select(arg_1.d, arg_1.d, all(vec2<bool>(true, true))), arg_1.b)));
    return _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(arg_0.x + _wgslsmith_f_op_f32(arg_2.x - _wgslsmith_f_op_f32(-arg_0.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(301f - _wgslsmith_div_f32(-897f, arg_0.x)), _wgslsmith_f_op_f32(-arg_2.x)), _wgslsmith_f_op_f32(ceil(-948f)), -153f), arg_2);
}

fn func_1(arg_0: vec4<f32>, arg_1: f32) -> u32 {
    global0 = array<Struct_1, 31>();
    let var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-822f, arg_0.x), -1135f));
    var var_1 = u_input.c;
    let var_2 = _wgslsmith_f_op_vec4_f32(func_5(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1027f, arg_0.x, arg_0.x) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_0.zzz * _wgslsmith_f_op_vec3_f32(vec3<f32>(-977f, arg_0.x, 578f) + vec3<f32>(1785f, -930f, -601f))), _wgslsmith_f_op_vec3_f32(trunc(arg_0.zxz)))), func_4(func_2(vec2<bool>(true, true)), -(-1i ^ func_3(arg_0.x, Struct_1(true, vec4<i32>(u_input.c, u_input.c, u_input.c, u_input.c), 28843i, vec3<bool>(true, true, false), vec4<i32>(1i, u_input.c, u_input.c, -6609i)), vec3<u32>(11704u, u_input.a.x, u_input.b))), func_2(func_2(func_2(vec2<bool>(false, false)).d.yx).d.yz)), vec4<f32>(var_0, _wgslsmith_f_op_f32(ceil(1001f)), arg_0.x, arg_1)));
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), -709f, _wgslsmith_f_op_f32(abs(arg_1)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_2.x))))));
    return ~(~u_input.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -vec2<i32>(min(u_input.c, _wgslsmith_clamp_i32(u_input.c >> (4294967295u % 32u), _wgslsmith_clamp_i32(1i, u_input.c, 2147483647i), ~(-29993i))), u_input.c & ~_wgslsmith_mult_i32(u_input.c, -35625i));
    var var_1 = vec4<u32>(func_1(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1207f, 325f, 618f, 490f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-535f, 336f, 276f, -865f) - vec4<f32>(-377f, 1250f, -1940f, 361f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -423f))), max(~_wgslsmith_mult_u32(u_input.b, u_input.b), min(min(u_input.b, u_input.b), ~u_input.a.x)), _wgslsmith_add_u32(u_input.a.x << ((4294967295u >> (u_input.b % 32u)) % 32u), _wgslsmith_sub_u32(u_input.a.x, _wgslsmith_mult_u32(u_input.a.x, 23261u))), min(1u, 0u) << (u_input.a.x % 32u)) & ~abs(~select(vec4<u32>(19813u, u_input.b, u_input.b, 0u), vec4<u32>(u_input.a.x, u_input.b, 4294967295u, 23162u), false));
    var var_2 = vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.x, _wgslsmith_mult_u32(82432u, ~var_1.x)), ~min(vec2<u32>(19788u, 48619u), ~var_1.xy)), 1u, 1u, select(4294967295u, abs(~u_input.b) >> (firstLeadingBit(0u) % 32u), func_2(vec2<bool>(false, false)).a));
    var var_3 = select(select(!vec3<bool>(true, select(true, true, true), true), func_2(vec2<bool>(true, true)).d, vec3<bool>(!all(vec3<bool>(true, true, false)), reverseBits(8691u) < abs(u_input.a.x), true)), !vec3<bool>(_wgslsmith_mult_i32(u_input.c, u_input.c) >= -u_input.c, any(select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, false), true)), func_2(vec2<bool>(false, true)).d.x), !vec3<bool>((var_0.x == 1i) | true, all(select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true))), false));
    let var_4 = global1[_wgslsmith_index_u32(u_input.b, 17u)];
    global0 = array<Struct_1, 31>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_i32(func_2(var_4.d.yz).e.x, _wgslsmith_mod_i32(var_0.x, ~_wgslsmith_div_i32(u_input.c, var_0.x))), countOneBits(firstTrailingBit(vec4<i32>(var_4.e.x, var_0.x, 28111i, u_input.c) | vec4<i32>(2147483647i, var_4.c, u_input.c, -11870i))) & countOneBits(select(-vec4<i32>(u_input.c, -29904i, var_0.x, -2147483647i), _wgslsmith_mod_vec4_i32(vec4<i32>(var_0.x, -26198i, 1i, var_4.c), vec4<i32>(u_input.c, 1i, var_0.x, -2147483647i)), var_3.x)), u_input.a.x, _wgslsmith_div_i32(var_0.x, ~u_input.c), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2029f)) + _wgslsmith_f_op_f32(-440f - _wgslsmith_f_op_f32(sign(236f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1519f, -403f)) + -906f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(-478f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_vec4_f32(func_5(vec3<f32>(544f, 622f, 372f), func_4(global0[_wgslsmith_index_u32(4294967295u, 31u)], u_input.c, global1[_wgslsmith_index_u32(26309u, 17u)]), _wgslsmith_div_vec4_f32(vec4<f32>(1147f, -1630f, -764f, -974f), vec4<f32>(941f, 1000f, -1000f, 1939f)))).x))));
}

