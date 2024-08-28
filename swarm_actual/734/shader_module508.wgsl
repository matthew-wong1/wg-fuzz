struct Struct_1 {
    a: vec3<u32>,
    b: vec4<i32>,
    c: f32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec4<f32>,
    c: u32,
    d: u32,
}

struct Struct_4 {
    a: vec2<u32>,
    b: Struct_3,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 18> = array<Struct_4, 18>(Struct_4(vec2<u32>(0u, 21875u), Struct_3(-734f, vec4<f32>(-1272f, 827f, -1394f, 486f), 4294967295u, 61800u), Struct_1(vec3<u32>(0u, 1u, 4294967295u), vec4<i32>(i32(-2147483648), -1i, 4810i, 1047i), 423f), Struct_1(vec3<u32>(1u, 0u, 16713u), vec4<i32>(i32(-2147483648), i32(-2147483648), i32(-2147483648), i32(-2147483648)), 940f)), Struct_4(vec2<u32>(42558u, 66963u), Struct_3(-556f, vec4<f32>(-185f, 354f, -796f, 227f), 0u, 350u), Struct_1(vec3<u32>(1u, 1u, 4294967295u), vec4<i32>(i32(-2147483648), 2147483647i, -44949i, i32(-2147483648)), -211f), Struct_1(vec3<u32>(10669u, 31538u, 4294967295u), vec4<i32>(20550i, -42351i, 26991i, -1i), 1178f)), Struct_4(vec2<u32>(1u, 49584u), Struct_3(2531f, vec4<f32>(408f, -1000f, -1873f, 235f), 9760u, 1u), Struct_1(vec3<u32>(3592u, 4294967295u, 28016u), vec4<i32>(-11854i, 35110i, 1i, 17501i), -1158f), Struct_1(vec3<u32>(2089u, 0u, 52041u), vec4<i32>(i32(-2147483648), 25442i, -28442i, -14438i), -351f)), Struct_4(vec2<u32>(4294967295u, 4294967295u), Struct_3(-876f, vec4<f32>(-1316f, 1016f, -1038f, 749f), 1u, 3118u), Struct_1(vec3<u32>(36665u, 1u, 4294967295u), vec4<i32>(2147483647i, 0i, 0i, 26321i), 122f), Struct_1(vec3<u32>(4294967295u, 21947u, 33771u), vec4<i32>(1i, 0i, 1i, -28077i), -1078f)), Struct_4(vec2<u32>(1u, 4294967295u), Struct_3(588f, vec4<f32>(-511f, 877f, -624f, -674f), 6647u, 1u), Struct_1(vec3<u32>(4294967295u, 4294967295u, 0u), vec4<i32>(28049i, 36560i, -8366i, -1i), 177f), Struct_1(vec3<u32>(0u, 1u, 16627u), vec4<i32>(32609i, 28611i, -1i, 13562i), 903f)), Struct_4(vec2<u32>(60804u, 0u), Struct_3(230f, vec4<f32>(1000f, -937f, -201f, -510f), 42817u, 37039u), Struct_1(vec3<u32>(1u, 0u, 11271u), vec4<i32>(-1i, 17637i, -8210i, 0i), 652f), Struct_1(vec3<u32>(10643u, 0u, 0u), vec4<i32>(i32(-2147483648), -80850i, 7035i, 4860i), -796f)), Struct_4(vec2<u32>(11701u, 0u), Struct_3(-557f, vec4<f32>(-1351f, -498f, 979f, 287f), 18561u, 0u), Struct_1(vec3<u32>(1u, 99843u, 0u), vec4<i32>(-37597i, 0i, -1i, -64759i), 566f), Struct_1(vec3<u32>(58289u, 16193u, 1u), vec4<i32>(1568i, 1i, 1i, -2771i), -648f)), Struct_4(vec2<u32>(4294967295u, 27225u), Struct_3(1000f, vec4<f32>(1199f, 1269f, -1158f, 606f), 0u, 24922u), Struct_1(vec3<u32>(18061u, 0u, 25259u), vec4<i32>(2147483647i, -53972i, -70419i, 11562i), -847f), Struct_1(vec3<u32>(26231u, 843u, 0u), vec4<i32>(i32(-2147483648), 2147483647i, 1i, 60652i), -341f)), Struct_4(vec2<u32>(25026u, 31169u), Struct_3(-2381f, vec4<f32>(603f, 486f, -140f, 1383f), 4294967295u, 4294967295u), Struct_1(vec3<u32>(4294967295u, 34564u, 4294967295u), vec4<i32>(1578i, 34800i, i32(-2147483648), 37806i), -338f), Struct_1(vec3<u32>(15934u, 22937u, 11863u), vec4<i32>(-6417i, -1i, i32(-2147483648), 0i), -1729f)), Struct_4(vec2<u32>(4294967295u, 17995u), Struct_3(-1000f, vec4<f32>(199f, 456f, 934f, -1775f), 0u, 15907u), Struct_1(vec3<u32>(61395u, 0u, 0u), vec4<i32>(1i, 1i, 2147483647i, i32(-2147483648)), -533f), Struct_1(vec3<u32>(4294967295u, 0u, 4294967295u), vec4<i32>(i32(-2147483648), -1i, i32(-2147483648), -1i), 600f)), Struct_4(vec2<u32>(0u, 0u), Struct_3(390f, vec4<f32>(-345f, -1000f, 2593f, -391f), 0u, 7842u), Struct_1(vec3<u32>(22200u, 1u, 4294967295u), vec4<i32>(1i, -52024i, 12120i, -34909i), -727f), Struct_1(vec3<u32>(18591u, 1u, 1u), vec4<i32>(-14910i, 1i, 1i, i32(-2147483648)), 145f)), Struct_4(vec2<u32>(0u, 4294967295u), Struct_3(125f, vec4<f32>(423f, -1182f, 260f, 1329f), 0u, 13420u), Struct_1(vec3<u32>(34685u, 1u, 0u), vec4<i32>(0i, 35364i, 2147483647i, -26020i), -1814f), Struct_1(vec3<u32>(70826u, 1u, 37052u), vec4<i32>(-1i, 20899i, 20285i, 0i), -114f)), Struct_4(vec2<u32>(64599u, 48958u), Struct_3(-1398f, vec4<f32>(-1007f, 947f, 1071f, 411f), 0u, 4294967295u), Struct_1(vec3<u32>(0u, 2092u, 1u), vec4<i32>(-47502i, -41159i, i32(-2147483648), 1i), 678f), Struct_1(vec3<u32>(3081u, 35458u, 0u), vec4<i32>(-34885i, 6817i, i32(-2147483648), -4456i), -500f)), Struct_4(vec2<u32>(50803u, 1u), Struct_3(-422f, vec4<f32>(-1507f, -197f, 674f, 1000f), 1u, 1u), Struct_1(vec3<u32>(58728u, 4729u, 2898u), vec4<i32>(5743i, 2147483647i, 2147483647i, 31575i), -218f), Struct_1(vec3<u32>(40517u, 0u, 1u), vec4<i32>(2147483647i, 0i, -1i, 17443i), 451f)), Struct_4(vec2<u32>(1u, 0u), Struct_3(-970f, vec4<f32>(503f, -434f, 1782f, -616f), 0u, 1u), Struct_1(vec3<u32>(0u, 1u, 1u), vec4<i32>(14210i, 11123i, 2147483647i, -1i), 1782f), Struct_1(vec3<u32>(4294967295u, 17761u, 1u), vec4<i32>(1i, 0i, 18687i, -29155i), -215f)), Struct_4(vec2<u32>(47979u, 102005u), Struct_3(-1073f, vec4<f32>(2948f, 340f, -969f, 426f), 39923u, 0u), Struct_1(vec3<u32>(43723u, 64720u, 0u), vec4<i32>(15466i, 3434i, -25752i, -1i), -645f), Struct_1(vec3<u32>(75888u, 14544u, 68772u), vec4<i32>(40291i, 26867i, 4354i, 2147483647i), -206f)), Struct_4(vec2<u32>(76417u, 4294967295u), Struct_3(274f, vec4<f32>(-630f, -476f, 1470f, 476f), 13279u, 28175u), Struct_1(vec3<u32>(12028u, 124330u, 1u), vec4<i32>(-38257i, i32(-2147483648), i32(-2147483648), 0i), -1000f), Struct_1(vec3<u32>(53476u, 4294967295u, 1u), vec4<i32>(-1i, -1120i, 1i, -32980i), -1315f)), Struct_4(vec2<u32>(23121u, 1u), Struct_3(778f, vec4<f32>(-864f, -465f, -1112f, -197f), 127665u, 45230u), Struct_1(vec3<u32>(16597u, 4294967295u, 47939u), vec4<i32>(-6690i, 9008i, 0i, -14274i), 123f), Struct_1(vec3<u32>(9628u, 0u, 37084u), vec4<i32>(37962i, 19232i, 2147483647i, -37407i), -450f)));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_3) -> vec3<bool> {
    let var_0 = Struct_2(!(!(all(vec3<bool>(false, true, true)) == (-2064i > u_input.a))), Struct_1(select(vec3<u32>(~u_input.b, abs(arg_0.c), select(0u, 4294967295u, true)), select(~vec3<u32>(arg_0.c, arg_0.d, 4294967295u), firstTrailingBit(vec3<u32>(6682u, arg_0.c, 5821u)), true), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), true), vec3<bool>(true, true, true))), ~(~_wgslsmith_sub_vec4_i32(vec4<i32>(19771i, -43817i, -39361i, u_input.a), vec4<i32>(u_input.a, 2863i, 20898i, -58719i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_0.a))))), Struct_1(firstLeadingBit(~(~vec3<u32>(0u, 85169u, 0u))), select(vec4<i32>(-3071i, -1i, u_input.a, abs(u_input.a)), reverseBits(firstTrailingBit(vec4<i32>(u_input.a, u_input.a, 2147483647i, 54280i))), !all(vec4<bool>(false, true, false, true))), -2195f));
    let var_1 = !(!(!vec3<bool>(false, var_0.a, arg_0.b.x != arg_0.a)));
    var var_2 = min(min(_wgslsmith_dot_vec2_i32(firstTrailingBit(select(vec2<i32>(var_0.c.b.x, 1i), vec2<i32>(u_input.a, u_input.a), var_0.a)), _wgslsmith_div_vec2_i32(firstLeadingBit(var_0.c.b.yy), _wgslsmith_mult_vec2_i32(var_0.b.b.wx, vec2<i32>(23479i, var_0.b.b.x)))), _wgslsmith_mod_i32(-2147483647i << (arg_0.c % 32u), firstTrailingBit(-var_0.c.b.x))), var_0.c.b.x ^ var_0.c.b.x);
    return var_1;
}

fn func_2(arg_0: bool, arg_1: vec2<i32>, arg_2: i32, arg_3: Struct_3) -> f32 {
    let var_0 = Struct_2(any(!select(vec3<bool>(true, arg_0, arg_0), func_3(arg_3), true)), Struct_1(_wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(u_input.b, 0u), arg_3.d, 0u), vec3<u32>(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(3492u, arg_3.c, 14094u), vec3<u32>(u_input.b, 67537u, 0u)), 82361u)), countOneBits(_wgslsmith_add_vec4_i32(countOneBits(vec4<i32>(-13246i, u_input.a, -5588i, arg_1.x)), ~vec4<i32>(-1553i, arg_2, arg_1.x, arg_2))), 990f), Struct_1(firstTrailingBit(~vec3<u32>(u_input.b, 8762u, arg_3.d) & abs(vec3<u32>(arg_3.c, u_input.b, 1u))), -vec4<i32>(_wgslsmith_mod_i32(u_input.a, arg_1.x), u_input.a, abs(arg_1.x), -2147483647i), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(arg_3.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + arg_3.a) - arg_3.a), func_3(Struct_3(1000f, vec4<f32>(arg_3.b.x, arg_3.b.x, arg_3.a, 626f), 4294967295u, 1u)).x))));
    let var_1 = ~13035u;
    global0 = array<Struct_4, 18>();
    global0 = array<Struct_4, 18>();
    let var_2 = global0[_wgslsmith_index_u32(1u, 18u)];
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_2.d.c))) - var_0.c.c))), 1735f);
}

fn func_1(arg_0: vec2<f32>) -> u32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, arg_0.x, -1530f, arg_0.x));
    global0 = array<Struct_4, 18>();
    var var_1 = select(select(select(vec3<bool>(true, 42021u > u_input.b, 32127u < u_input.b), vec3<bool>(true, true, true), vec3<bool>(true, true, arg_0.x == 531f)), vec3<bool>(true && select(false, true, true), true, _wgslsmith_f_op_f32(func_2(true, vec2<i32>(-1273i, 2147483647i), -53580i, Struct_3(-713f, vec4<f32>(var_0.x, arg_0.x, 1329f, -1285f), u_input.b, u_input.b))) >= _wgslsmith_f_op_f32(var_0.x - -262f)), select(!select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), true)), vec3<bool>(!select(0u >= u_input.b, any(vec3<bool>(true, false, false)), false), !any(vec3<bool>(true, false, true)) | func_3(Struct_3(844f, vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x), 78604u, u_input.b)).x, (any(vec3<bool>(false, false, true)) | func_3(Struct_3(-183f, vec4<f32>(1000f, var_0.x, 532f, -2019f), 24806u, 35754u)).x) || true), vec3<bool>(select(true, all(vec4<bool>(true, true, false, false)), any(vec3<bool>(false, true, true))) == (u_input.a < (-5367i << (u_input.b % 32u))), true | (_wgslsmith_mult_u32(17740u, u_input.b) >= 1u), all(!func_3(Struct_3(arg_0.x, vec4<f32>(arg_0.x, var_0.x, -333f, 725f), 62583u, u_input.b)))));
    var_1 = !select(!(!func_3(Struct_3(var_0.x, vec4<f32>(-1136f, arg_0.x, 1250f, var_0.x), u_input.b, 46413u))), vec3<bool>(false, var_1.x, false), !(!vec3<bool>(var_1.x, false, var_1.x)));
    var var_2 = Struct_1(_wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(reverseBits(~vec3<u32>(4294967295u, 4294967295u, u_input.b)), select(vec3<u32>(53034u, 1997u, u_input.b), reverseBits(vec3<u32>(u_input.b, 0u, 11146u)), select(vec3<bool>(true, var_1.x, var_1.x), vec3<bool>(var_1.x, var_1.x, var_1.x), vec3<bool>(true, true, true)))), vec3<u32>(~1u | ~u_input.b, _wgslsmith_div_u32(~0u, ~17465u), _wgslsmith_add_u32(1u, _wgslsmith_mod_u32(4294967295u, 1u)))), vec4<i32>(-23705i, abs(u_input.a >> (4204u % 32u)), -min(-36897i, u_input.a) >> (4294967295u % 32u), _wgslsmith_dot_vec2_i32(~vec2<i32>(39871i, u_input.a), vec2<i32>(select(u_input.a, u_input.a, var_1.x), 0i))), _wgslsmith_f_op_f32(-856f * 1f));
    return ~(~u_input.b);
}

fn func_4(arg_0: f32, arg_1: Struct_4, arg_2: vec4<i32>) -> StorageBuffer {
    var var_0 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-1896f - -1064f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(157f))))), arg_1.b.b.xz);
    var var_1 = Struct_4(arg_1.d.a.zy, arg_1.b, Struct_1(arg_1.c.a | arg_1.c.a, ~abs(vec4<i32>(u_input.a, arg_2.x, arg_2.x, 31739i) & vec4<i32>(19341i, -62833i, 55345i, -1i)), _wgslsmith_f_op_f32(var_0.x * 1153f)), arg_1.c);
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_1.b.b.wy + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(var_0.x + arg_1.d.c), _wgslsmith_f_op_f32(select(arg_1.b.a, -1314f, true))))));
    var var_2 = vec2<bool>(true, true);
    let var_3 = -abs(-arg_1.c.b.x & (i32(-1i) * -34874i));
    return StorageBuffer(reverseBits(vec3<u32>(u_input.b, _wgslsmith_mod_u32(var_1.c.a.x, 4294967295u) << (1u % 32u), ~(~48747u))), 664f, reverseBits(~u_input.b) ^ var_1.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(568f)) - -833f)), -943f)), global0[_wgslsmith_index_u32(min(57969u, func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(232f, 204f), vec2<f32>(217f, -249f))))), 18u)], min(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, ~u_input.a, reverseBits(u_input.a), u_input.a), vec4<i32>(~(-2147483647i), abs(u_input.a), ~(-14552i), u_input.a)), abs(vec4<i32>(_wgslsmith_sub_i32(2147483647i, 39375i), select(u_input.a, -26326i, true), _wgslsmith_mod_i32(u_input.a, u_input.a), _wgslsmith_add_i32(u_input.a, -2147483647i)))));
}

