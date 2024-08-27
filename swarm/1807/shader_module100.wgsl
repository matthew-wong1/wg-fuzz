struct Struct_1 {
    a: vec2<u32>,
    b: f32,
    c: u32,
    d: vec3<i32>,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec4<u32>,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 85293u;

var<private> global1: array<Struct_1, 18> = array<Struct_1, 18>(Struct_1(vec2<u32>(0u, 46774u), -898f, 48129u, vec3<i32>(23320i, 20039i, -22705i), vec3<i32>(-14781i, 1i, i32(-2147483648))), Struct_1(vec2<u32>(0u, 4294967295u), -371f, 44238u, vec3<i32>(43036i, -44351i, i32(-2147483648)), vec3<i32>(-1i, 8697i, 39859i)), Struct_1(vec2<u32>(4294967295u, 31002u), -461f, 8236u, vec3<i32>(0i, 12097i, 9902i), vec3<i32>(-75873i, -6965i, 28230i)), Struct_1(vec2<u32>(10945u, 90899u), -1611f, 4294967295u, vec3<i32>(2147483647i, 0i, 18956i), vec3<i32>(2147483647i, 24370i, 6963i)), Struct_1(vec2<u32>(32895u, 25338u), -504f, 1524u, vec3<i32>(2147483647i, 0i, i32(-2147483648)), vec3<i32>(0i, 32736i, -51372i)), Struct_1(vec2<u32>(1u, 0u), -675f, 54411u, vec3<i32>(-18566i, i32(-2147483648), 1i), vec3<i32>(7542i, -1i, -27707i)), Struct_1(vec2<u32>(77929u, 4294967295u), 1000f, 0u, vec3<i32>(-71886i, -2197i, 1i), vec3<i32>(1i, 51897i, 1i)), Struct_1(vec2<u32>(32987u, 27075u), 1000f, 4294967295u, vec3<i32>(2263i, -1i, 0i), vec3<i32>(-29461i, 22583i, -1i)), Struct_1(vec2<u32>(22350u, 0u), 979f, 20248u, vec3<i32>(2147483647i, -1i, 2147483647i), vec3<i32>(-14001i, -4103i, 0i)), Struct_1(vec2<u32>(1u, 35782u), 857f, 1u, vec3<i32>(i32(-2147483648), -1i, 8433i), vec3<i32>(29578i, 10000i, 1i)), Struct_1(vec2<u32>(0u, 1466u), -2015f, 12968u, vec3<i32>(30751i, 0i, -9606i), vec3<i32>(i32(-2147483648), -6258i, 29792i)), Struct_1(vec2<u32>(25926u, 3916u), -1000f, 1u, vec3<i32>(25696i, 25595i, 14600i), vec3<i32>(25433i, -13416i, 1728i)), Struct_1(vec2<u32>(26566u, 90793u), 373f, 4294967295u, vec3<i32>(5121i, 62169i, -27977i), vec3<i32>(-1i, 1200i, 1i)), Struct_1(vec2<u32>(4294967295u, 9429u), 1230f, 2063u, vec3<i32>(0i, -55103i, -1i), vec3<i32>(0i, 1i, 28104i)), Struct_1(vec2<u32>(16599u, 13798u), 1205f, 1u, vec3<i32>(36655i, -32685i, 20885i), vec3<i32>(2147483647i, 15328i, 40044i)), Struct_1(vec2<u32>(20868u, 8278u), 708f, 33965u, vec3<i32>(2147483647i, -16762i, 9920i), vec3<i32>(1i, 2147483647i, 1i)), Struct_1(vec2<u32>(4294967295u, 20474u), -542f, 102090u, vec3<i32>(i32(-2147483648), i32(-2147483648), 10932i), vec3<i32>(-1i, 1i, -10933i)), Struct_1(vec2<u32>(1u, 108431u), 1592f, 0u, vec3<i32>(0i, -42124i, -1i), vec3<i32>(2147483647i, 1i, -1i)));

var<private> global2: array<Struct_1, 29>;

var<private> global3: array<Struct_1, 12> = array<Struct_1, 12>(Struct_1(vec2<u32>(73800u, 0u), -1534f, 76914u, vec3<i32>(-1i, 2147483647i, 2147483647i), vec3<i32>(-1i, 0i, 36261i)), Struct_1(vec2<u32>(1u, 4294967295u), -173f, 49240u, vec3<i32>(0i, -51359i, 2147483647i), vec3<i32>(i32(-2147483648), -37725i, 1i)), Struct_1(vec2<u32>(108206u, 0u), 760f, 91349u, vec3<i32>(-1i, -1i, 2147483647i), vec3<i32>(560i, 7484i, -1i)), Struct_1(vec2<u32>(21977u, 90052u), 719f, 2917u, vec3<i32>(22658i, -9553i, 1i), vec3<i32>(16926i, 1i, 12991i)), Struct_1(vec2<u32>(30164u, 0u), -694f, 107619u, vec3<i32>(29054i, 2147483647i, 14808i), vec3<i32>(32360i, -37699i, i32(-2147483648))), Struct_1(vec2<u32>(1u, 71428u), -552f, 33175u, vec3<i32>(-39669i, 34850i, 42832i), vec3<i32>(54844i, -1i, 11096i)), Struct_1(vec2<u32>(18702u, 20687u), 596f, 0u, vec3<i32>(-1i, 42916i, 1i), vec3<i32>(3742i, -22706i, -12779i)), Struct_1(vec2<u32>(4294967295u, 0u), -1393f, 19711u, vec3<i32>(-14510i, -18889i, -20296i), vec3<i32>(11364i, -11035i, i32(-2147483648))), Struct_1(vec2<u32>(21541u, 0u), -565f, 24722u, vec3<i32>(1i, -5839i, -55614i), vec3<i32>(1i, -1i, i32(-2147483648))), Struct_1(vec2<u32>(4294967295u, 10570u), -325f, 55702u, vec3<i32>(15286i, 32909i, -32378i), vec3<i32>(1i, 27549i, 2147483647i)), Struct_1(vec2<u32>(4419u, 0u), -1000f, 101075u, vec3<i32>(59974i, 2147483647i, 0i), vec3<i32>(4275i, -2086i, -41925i)), Struct_1(vec2<u32>(0u, 0u), -1499f, 27108u, vec3<i32>(0i, 1815i, 1i), vec3<i32>(i32(-2147483648), -27057i, -57886i)));

var<private> global4: array<Struct_1, 24> = array<Struct_1, 24>(Struct_1(vec2<u32>(4294967295u, 0u), 318f, 0u, vec3<i32>(1i, 2147483647i, -15169i), vec3<i32>(-1i, -4804i, -4700i)), Struct_1(vec2<u32>(4294967295u, 64012u), -808f, 91529u, vec3<i32>(44168i, -3654i, -26042i), vec3<i32>(12121i, -61333i, -27186i)), Struct_1(vec2<u32>(0u, 0u), 1000f, 97999u, vec3<i32>(-1768i, -41100i, -2678i), vec3<i32>(-1235i, -23652i, -31539i)), Struct_1(vec2<u32>(66174u, 0u), 1771f, 4439u, vec3<i32>(2147483647i, -48361i, 1i), vec3<i32>(-33470i, -66847i, -12630i)), Struct_1(vec2<u32>(97787u, 74331u), 182f, 0u, vec3<i32>(61385i, 3571i, 23340i), vec3<i32>(0i, i32(-2147483648), i32(-2147483648))), Struct_1(vec2<u32>(59874u, 4294967295u), -1102f, 0u, vec3<i32>(41327i, 24709i, 70308i), vec3<i32>(6688i, -20870i, 1i)), Struct_1(vec2<u32>(4294967295u, 0u), -1732f, 0u, vec3<i32>(34708i, i32(-2147483648), 4921i), vec3<i32>(-5788i, -1i, 2147483647i)), Struct_1(vec2<u32>(1u, 1u), 966f, 0u, vec3<i32>(35877i, -1023i, 2147483647i), vec3<i32>(-40500i, 0i, i32(-2147483648))), Struct_1(vec2<u32>(4294967295u, 7937u), -428f, 45491u, vec3<i32>(-43917i, -15566i, -14802i), vec3<i32>(1i, 2147483647i, 36067i)), Struct_1(vec2<u32>(103043u, 0u), 804f, 4294967295u, vec3<i32>(-55527i, 1i, 1i), vec3<i32>(0i, -42639i, -21009i)), Struct_1(vec2<u32>(12746u, 16226u), -577f, 0u, vec3<i32>(2147483647i, 0i, 1i), vec3<i32>(14458i, 1i, 2147483647i)), Struct_1(vec2<u32>(37437u, 1u), -373f, 0u, vec3<i32>(-27671i, 54797i, -39718i), vec3<i32>(2147483647i, 1i, 0i)), Struct_1(vec2<u32>(21511u, 0u), 1133f, 7757u, vec3<i32>(-1771i, -5183i, 2147483647i), vec3<i32>(i32(-2147483648), -1i, -60425i)), Struct_1(vec2<u32>(1u, 0u), 283f, 67196u, vec3<i32>(5534i, 0i, -51747i), vec3<i32>(44845i, -1i, -6871i)), Struct_1(vec2<u32>(0u, 0u), -323f, 4294967295u, vec3<i32>(-16847i, 1i, -10171i), vec3<i32>(0i, -2518i, -1i)), Struct_1(vec2<u32>(0u, 59410u), -1000f, 0u, vec3<i32>(i32(-2147483648), 8710i, 29237i), vec3<i32>(-1i, -60846i, 18463i)), Struct_1(vec2<u32>(0u, 7491u), -488f, 17685u, vec3<i32>(2147483647i, -1i, -1336i), vec3<i32>(14221i, 0i, i32(-2147483648))), Struct_1(vec2<u32>(9403u, 0u), 204f, 61032u, vec3<i32>(-1i, 5807i, 40234i), vec3<i32>(17608i, i32(-2147483648), -18624i)), Struct_1(vec2<u32>(8036u, 40679u), 624f, 0u, vec3<i32>(i32(-2147483648), 1i, i32(-2147483648)), vec3<i32>(-1i, -5872i, -1i)), Struct_1(vec2<u32>(4294967295u, 76004u), 185f, 1u, vec3<i32>(44864i, -29584i, 1i), vec3<i32>(-1i, 55664i, -1i)), Struct_1(vec2<u32>(4294967295u, 21711u), -620f, 0u, vec3<i32>(1i, 1i, 6043i), vec3<i32>(-1i, 26650i, 2147483647i)), Struct_1(vec2<u32>(0u, 709u), -1041f, 85854u, vec3<i32>(27170i, 10045i, -16797i), vec3<i32>(i32(-2147483648), -9537i, 1i)), Struct_1(vec2<u32>(1u, 37868u), -896f, 0u, vec3<i32>(14776i, 18942i, 14364i), vec3<i32>(1i, 2147483647i, 2147483647i)), Struct_1(vec2<u32>(1u, 18097u), -544f, 4294967295u, vec3<i32>(-31502i, -29886i, 25462i), vec3<i32>(0i, 2147483647i, -54477i)));

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_1() -> u32 {
    return _wgslsmith_add_u32(~18445u, u_input.d.x);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - -679f) * -2311f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(arg_1.b))))))));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1087f, -1000f, arg_1.b), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, _wgslsmith_f_op_f32(sign(arg_1.b)), _wgslsmith_f_op_f32(f32(-1f) * -261f)))));
    var var_2 = all(vec4<bool>(false, any(vec3<bool>(true, true, true)), true, !(!(arg_1.d.x < -37354i))));
    global4 = array<Struct_1, 24>();
    var var_3 = 1870u;
    return arg_0.d.x;
}

fn func_2(arg_0: Struct_1, arg_1: bool) -> StorageBuffer {
    var var_0 = firstTrailingBit(reverseBits(arg_0.c));
    global2 = array<Struct_1, 29>();
    var var_1 = _wgslsmith_add_vec4_i32(firstLeadingBit(select(vec4<i32>(-4592i, firstLeadingBit(-32081i), arg_0.d.x, firstLeadingBit(arg_0.d.x)), vec4<i32>(1i, reverseBits(57346i), reverseBits(u_input.e), func_3(Struct_1(vec2<u32>(1u, 13152u), 1146f, arg_0.a.x, arg_0.d, arg_0.d), global2[_wgslsmith_index_u32(72830u, 29u)])), !vec4<bool>(arg_1, false, arg_1, false))), abs(vec4<i32>(-51290i, arg_0.d.x, _wgslsmith_sub_i32(4123i, u_input.e) << (~24369u % 32u), ~(i32(-1i) * -4884i))));
    var var_2 = var_1.x;
    let var_3 = _wgslsmith_add_vec3_i32(vec3<i32>(-u_input.e, var_1.x, arg_0.e.x), vec3<i32>(~_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.e, -39263i, -2147483647i), vec3<i32>(-4482i, arg_0.d.x, arg_0.e.x)) | ~31391i, firstLeadingBit(34763i), -arg_0.e.x));
    return StorageBuffer(_wgslsmith_sub_u32(_wgslsmith_mult_u32(0u, u_input.b), 20355u), _wgslsmith_mod_i32(-2147483647i, -2147483647i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1317f - _wgslsmith_f_op_f32(407f * -1624f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1530f - 228f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(-325f, -634f)))) + 1552f))));
    var var_1 = 1u;
    global3 = array<Struct_1, 12>();
    let var_2 = _wgslsmith_f_op_f32(sign(var_0));
    global2 = array<Struct_1, 29>();
    var var_3 = 2147483647i;
    let var_4 = _wgslsmith_clamp_vec3_u32(~vec3<u32>(_wgslsmith_mult_u32(u_input.a.x, u_input.c.x), func_1(), ~2312u) ^ select(vec3<u32>(~0u, _wgslsmith_dot_vec3_u32(u_input.c.xwy, u_input.c.zxx), u_input.a.x), ~u_input.c.zwz, true), u_input.c.zyw, vec3<u32>(_wgslsmith_sub_u32(4294967295u, _wgslsmith_mod_u32(u_input.d.x, u_input.d.x)) & 35047u, ~u_input.a.x, firstLeadingBit(min(1u, 1u))));
    var var_5 = ~((u_input.d.x << (~68831u % 32u)) << (31073u % 32u)) >> (_wgslsmith_mult_u32(~u_input.a.x, _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(select(vec3<u32>(0u, 1u, 88284u), vec3<u32>(var_4.x, u_input.d.x, u_input.a.x), true), var_4), _wgslsmith_mult_u32(~u_input.d.x, _wgslsmith_clamp_u32(u_input.d.x, var_4.x, var_4.x)))) % 32u);
    let x = u_input.a;
    s_output = func_2(Struct_1(~vec2<u32>(var_4.x, 4294967295u) >> (var_4.xy % vec2<u32>(32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_2)))), 4294967295u, _wgslsmith_sub_vec3_i32(_wgslsmith_div_vec3_i32(~vec3<i32>(0i, 2147483647i, -1i), _wgslsmith_div_vec3_i32(vec3<i32>(0i, u_input.e, u_input.e), vec3<i32>(2147483647i, 17443i, 1i))), abs(-vec3<i32>(-35254i, -115123i, u_input.e))), vec3<i32>(0i, 2147483647i, ~(-2147483647i))), true);
}

