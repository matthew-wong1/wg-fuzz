struct Struct_1 {
    a: bool,
    b: vec4<u32>,
    c: f32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: Struct_1,
    d: vec4<i32>,
    e: u32,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 8> = array<Struct_1, 8>(Struct_1(true, vec4<u32>(0u, 48873u, 4294967295u, 4294967295u), 889f), Struct_1(false, vec4<u32>(40651u, 4294967295u, 28813u, 1u), 1001f), Struct_1(true, vec4<u32>(4294967295u, 86033u, 69012u, 28482u), -191f), Struct_1(true, vec4<u32>(52814u, 24411u, 66024u, 1u), -459f), Struct_1(true, vec4<u32>(16107u, 1u, 39156u, 0u), -459f), Struct_1(true, vec4<u32>(39048u, 0u, 9866u, 11453u), 1260f), Struct_1(false, vec4<u32>(1u, 51763u, 0u, 4294967295u), -1017f), Struct_1(true, vec4<u32>(30181u, 4294967295u, 53116u, 4294967295u), 152f));

var<private> global1: array<Struct_2, 27> = array<Struct_2, 27>(Struct_2(vec3<u32>(48745u, 1u, 4294967295u), Struct_1(false, vec4<u32>(52393u, 4294967295u, 42468u, 42480u), 198f), Struct_1(true, vec4<u32>(75572u, 63781u, 83u, 19357u), -496f), vec4<i32>(-8535i, 27430i, 1i, 1i), 59589u), Struct_2(vec3<u32>(12349u, 38448u, 4294967295u), Struct_1(true, vec4<u32>(1913u, 66773u, 0u, 1u), 1705f), Struct_1(true, vec4<u32>(4294967295u, 0u, 70952u, 0u), -195f), vec4<i32>(1i, 15156i, -1i, -35837i), 1u), Struct_2(vec3<u32>(0u, 35405u, 10558u), Struct_1(true, vec4<u32>(0u, 0u, 0u, 10643u), 754f), Struct_1(true, vec4<u32>(1u, 1u, 69018u, 26307u), -1213f), vec4<i32>(i32(-2147483648), -6392i, 1i, 32941i), 1u), Struct_2(vec3<u32>(4294967295u, 0u, 50222u), Struct_1(false, vec4<u32>(153307u, 0u, 4294967295u, 1u), -1000f), Struct_1(true, vec4<u32>(1u, 1u, 1u, 37591u), -1491f), vec4<i32>(0i, 2147483647i, -26542i, -26085i), 54527u), Struct_2(vec3<u32>(4294967295u, 1u, 4294967295u), Struct_1(false, vec4<u32>(0u, 4119u, 38127u, 1u), 118f), Struct_1(true, vec4<u32>(4294967295u, 1u, 0u, 1u), -2182f), vec4<i32>(0i, i32(-2147483648), -8329i, 3110i), 21818u), Struct_2(vec3<u32>(1u, 14548u, 26480u), Struct_1(true, vec4<u32>(4294967295u, 4294967295u, 0u, 1u), 1000f), Struct_1(false, vec4<u32>(0u, 0u, 1369u, 1u), -1032f), vec4<i32>(34803i, -27685i, 0i, 10256i), 4294967295u), Struct_2(vec3<u32>(72275u, 1u, 31016u), Struct_1(false, vec4<u32>(1u, 1u, 69404u, 6935u), -104f), Struct_1(true, vec4<u32>(21703u, 0u, 1u, 118052u), -314f), vec4<i32>(0i, 2147483647i, 2147483647i, i32(-2147483648)), 43623u), Struct_2(vec3<u32>(24194u, 47626u, 9518u), Struct_1(true, vec4<u32>(1u, 0u, 60279u, 28257u), 1124f), Struct_1(true, vec4<u32>(118615u, 0u, 34357u, 4294967295u), 1336f), vec4<i32>(-17655i, 178i, 2147483647i, i32(-2147483648)), 4294967295u), Struct_2(vec3<u32>(83490u, 14204u, 1u), Struct_1(true, vec4<u32>(4294967295u, 73484u, 0u, 80632u), -1825f), Struct_1(false, vec4<u32>(37041u, 0u, 4294967295u, 32526u), 348f), vec4<i32>(16893i, -8754i, -60830i, -24305i), 83485u), Struct_2(vec3<u32>(4294967295u, 9359u, 4294967295u), Struct_1(true, vec4<u32>(79135u, 37078u, 4294967295u, 77400u), 1442f), Struct_1(false, vec4<u32>(8163u, 10627u, 61990u, 0u), 880f), vec4<i32>(1i, 2147483647i, 42260i, i32(-2147483648)), 4294967295u), Struct_2(vec3<u32>(4294967295u, 51445u, 4294967295u), Struct_1(false, vec4<u32>(71168u, 1u, 41680u, 70978u), 643f), Struct_1(true, vec4<u32>(1036u, 4294967295u, 53863u, 77730u), -2854f), vec4<i32>(0i, i32(-2147483648), 51867i, 2147483647i), 4294967295u), Struct_2(vec3<u32>(7743u, 4294967295u, 44602u), Struct_1(false, vec4<u32>(0u, 44832u, 4294967295u, 4294967295u), 167f), Struct_1(false, vec4<u32>(80498u, 15398u, 12959u, 3618u), -1703f), vec4<i32>(2147483647i, 1i, -1i, -14586i), 0u), Struct_2(vec3<u32>(52833u, 25513u, 1u), Struct_1(true, vec4<u32>(1u, 9525u, 11813u, 4294967295u), -1225f), Struct_1(true, vec4<u32>(4294967295u, 14570u, 20114u, 1u), -890f), vec4<i32>(i32(-2147483648), 2147483647i, 0i, i32(-2147483648)), 58707u), Struct_2(vec3<u32>(0u, 1u, 53100u), Struct_1(false, vec4<u32>(1u, 0u, 4294967295u, 14753u), 118f), Struct_1(true, vec4<u32>(0u, 4294967295u, 0u, 8069u), 775f), vec4<i32>(5890i, -52739i, 1i, 29727i), 4294967295u), Struct_2(vec3<u32>(17299u, 4294967295u, 47214u), Struct_1(false, vec4<u32>(33083u, 1u, 4294967295u, 0u), 754f), Struct_1(true, vec4<u32>(17617u, 55499u, 4294967295u, 0u), -135f), vec4<i32>(-24522i, -25834i, 28572i, 0i), 4294967295u), Struct_2(vec3<u32>(26222u, 46731u, 4294967295u), Struct_1(false, vec4<u32>(2413u, 1u, 0u, 3197u), 279f), Struct_1(false, vec4<u32>(8181u, 138792u, 0u, 35300u), 1385f), vec4<i32>(1i, 2147483647i, -26370i, -9408i), 37085u), Struct_2(vec3<u32>(28074u, 3967u, 56666u), Struct_1(false, vec4<u32>(36813u, 4294967295u, 48369u, 0u), -836f), Struct_1(true, vec4<u32>(4294967295u, 43400u, 4513u, 0u), 1154f), vec4<i32>(i32(-2147483648), -49961i, 1i, -56292i), 64483u), Struct_2(vec3<u32>(37589u, 42092u, 1u), Struct_1(false, vec4<u32>(59634u, 958u, 18568u, 3674u), -289f), Struct_1(false, vec4<u32>(0u, 4133u, 0u, 10870u), -382f), vec4<i32>(2147483647i, i32(-2147483648), -59587i, 0i), 4294967295u), Struct_2(vec3<u32>(1u, 91358u, 1u), Struct_1(true, vec4<u32>(1u, 52360u, 4294967295u, 4294967295u), -693f), Struct_1(false, vec4<u32>(4294967295u, 9057u, 36457u, 22171u), -857f), vec4<i32>(8662i, 0i, i32(-2147483648), i32(-2147483648)), 41861u), Struct_2(vec3<u32>(66184u, 18706u, 60265u), Struct_1(false, vec4<u32>(0u, 1u, 19272u, 1u), 2289f), Struct_1(false, vec4<u32>(0u, 1u, 0u, 6289u), -1129f), vec4<i32>(1i, -32073i, -1i, 1i), 4294967295u), Struct_2(vec3<u32>(0u, 0u, 1u), Struct_1(true, vec4<u32>(11412u, 72121u, 5643u, 66117u), 1427f), Struct_1(false, vec4<u32>(26937u, 9740u, 4294967295u, 26688u), -166f), vec4<i32>(0i, -40015i, i32(-2147483648), 0i), 0u), Struct_2(vec3<u32>(9585u, 1u, 1u), Struct_1(false, vec4<u32>(39663u, 10617u, 0u, 4294967295u), -1051f), Struct_1(true, vec4<u32>(4294967295u, 0u, 4294967295u, 9600u), -871f), vec4<i32>(0i, -1i, i32(-2147483648), -41285i), 4294967295u), Struct_2(vec3<u32>(4294967295u, 0u, 51867u), Struct_1(false, vec4<u32>(47332u, 4294967295u, 0u, 0u), -803f), Struct_1(false, vec4<u32>(24236u, 21972u, 0u, 0u), -228f), vec4<i32>(-19406i, 0i, -35264i, 1i), 1u), Struct_2(vec3<u32>(0u, 50175u, 4294967295u), Struct_1(true, vec4<u32>(4294967295u, 1u, 10861u, 1u), 276f), Struct_1(false, vec4<u32>(4294967295u, 40621u, 4294967295u, 1u), 592f), vec4<i32>(i32(-2147483648), 27959i, 1i, 0i), 44626u), Struct_2(vec3<u32>(69013u, 47775u, 55671u), Struct_1(true, vec4<u32>(9289u, 0u, 37737u, 532u), 1528f), Struct_1(false, vec4<u32>(2275u, 43046u, 44333u, 33660u), 1009f), vec4<i32>(45918i, -1i, -28667i, 35025i), 29597u), Struct_2(vec3<u32>(4294967295u, 0u, 20629u), Struct_1(true, vec4<u32>(0u, 111449u, 14626u, 56428u), -645f), Struct_1(false, vec4<u32>(55785u, 4294967295u, 59962u, 0u), 886f), vec4<i32>(-32690i, i32(-2147483648), 7114i, i32(-2147483648)), 25487u), Struct_2(vec3<u32>(1u, 50648u, 28260u), Struct_1(true, vec4<u32>(76777u, 25994u, 4294967295u, 77145u), -440f), Struct_1(true, vec4<u32>(4294967295u, 0u, 1467u, 4294967295u), -1359f), vec4<i32>(-1568i, 8547i, -82387i, 2147483647i), 0u));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: i32, arg_3: bool) -> f32 {
    let var_0 = firstTrailingBit(-u_input.d.zyx);
    var var_1 = Struct_3(arg_1.b.x);
    let var_2 = Struct_1(arg_1.a, vec4<u32>(var_1.a, _wgslsmith_dot_vec2_u32(~arg_1.b.zx, arg_1.b.xx), _wgslsmith_dot_vec4_u32(select(abs(vec4<u32>(var_1.a, 0u, var_1.a, 4294967295u)), arg_1.b, !vec4<bool>(arg_1.a, arg_1.a, arg_1.a, true)), vec4<u32>(0u, arg_1.b.x, _wgslsmith_div_u32(arg_1.b.x, 122358u), reverseBits(4294967295u))), _wgslsmith_dot_vec3_u32(vec3<u32>(var_1.a, 52927u, arg_1.b.x), abs(~arg_1.b.wzz))), -1602f);
    let var_3 = _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(arg_1.c))))), arg_1.c, -1306f)));
    var var_4 = Struct_4(Struct_3(114461u));
    return _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-395f, _wgslsmith_div_f32(var_2.c, _wgslsmith_f_op_f32(select(488f, 437f, var_2.a))), arg_3)), -733f)));
}

fn func_2(arg_0: vec4<bool>, arg_1: Struct_2) -> f32 {
    let var_0 = arg_1.c;
    let var_1 = max(19986i, i32(-1i) * -select(-u_input.d.x, ~u_input.c, false));
    var var_2 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_1.b.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c))), vec2<f32>(-1236f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec2<f32>(234f, var_0.c), global0[_wgslsmith_index_u32(var_0.b.x, 8u)], -2147483647i, var_0.a)))))), true & var_0.a));
    var var_3 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c) - arg_1.b.c), 1132f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_2.x))) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.c, -545f) + arg_1.b.c)), arg_1.c.c), vec4<f32>(_wgslsmith_f_op_f32(round(arg_1.c.c)), _wgslsmith_f_op_f32(f32(-1f) * -238f), _wgslsmith_f_op_f32(abs(-117f)), _wgslsmith_f_op_f32(round(-538f))));
    global0 = array<Struct_1, 8>();
    return var_2.x;
}

fn func_1(arg_0: Struct_1) -> Struct_3 {
    global1 = array<Struct_2, 27>();
    let var_0 = _wgslsmith_div_vec3_f32(vec3<f32>(1053f, arg_0.c, -1135f), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(func_2(!vec4<bool>(arg_0.a, arg_0.a, false, arg_0.a), Struct_2(arg_0.b.wyy, Struct_1(arg_0.a, arg_0.b, arg_0.c), Struct_1(true, arg_0.b, arg_0.c), u_input.d, arg_0.b.x))), 685f, 1f) * vec3<f32>(_wgslsmith_f_op_f32(min(-404f, 445f)), arg_0.c, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-125f, 344f)))));
    let var_1 = Struct_1(arg_0.a, arg_0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_0.c + var_0.x)))) - 1108f));
    var var_2 = _wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(_wgslsmith_dot_vec3_i32(u_input.d.yww, vec3<i32>(u_input.b, 30337i, u_input.d.x)), _wgslsmith_add_i32(u_input.b, -24461i), u_input.d.x, ~u_input.c), u_input.d >> (select(vec4<u32>(1u, 1u, 0u, var_1.b.x), vec4<u32>(arg_0.b.x, var_1.b.x, var_1.b.x, var_1.b.x), vec4<bool>(arg_0.a, false, false, false)) % vec4<u32>(32u)), -vec4<i32>(-14762i, u_input.a, 10575i, 2147483647i)), firstTrailingBit(max(vec4<i32>(2147483647i, u_input.d.x, -1i, u_input.a), u_input.d))), vec4<i32>(-(~u_input.b), 1i, -2147483647i, -u_input.b << (abs(12431u) % 32u)) >> (~(vec4<u32>(var_1.b.x, arg_0.b.x, 3144u, arg_0.b.x) >> (~arg_0.b % vec4<u32>(32u))) % vec4<u32>(32u)));
    global1 = array<Struct_2, 27>();
    return Struct_3(~_wgslsmith_mult_u32(reverseBits(46515u), 0u & firstTrailingBit(arg_0.b.x)));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_4) -> u32 {
    var var_0 = Struct_1(true, firstTrailingBit(~(max(vec4<u32>(4294967295u, 19614u, arg_0.a, arg_0.a), vec4<u32>(arg_0.a, arg_0.a, arg_1.a.a, arg_0.a)) ^ firstLeadingBit(vec4<u32>(95015u, 37690u, arg_1.a.a, 0u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -216f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1665f - -1654f))))));
    let var_1 = Struct_1(!any(!vec3<bool>(var_0.a, var_0.a, var_0.a)) && select(true, true && !var_0.a, any(vec3<bool>(var_0.a, false, var_0.a))), var_0.b, 1166f);
    let var_2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(var_1.c, var_0.c)), 357f, all(!vec2<bool>(var_1.a, true)))))));
    var var_3 = Struct_2(_wgslsmith_mult_vec3_u32(max(vec3<u32>(var_1.b.x, var_0.b.x, var_1.b.x), var_1.b.xzx & vec3<u32>(1u, 27728u, 0u)) & var_0.b.xxw, vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.b.x, arg_0.a) << (var_1.b.zy % vec2<u32>(32u)), ~vec2<u32>(6469u, var_1.b.x)), var_0.b.x, arg_1.a.a)), Struct_1(var_1.a, ~vec4<u32>(~var_1.b.x, firstTrailingBit(1761u), var_0.b.x, max(57085u, var_0.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(select(vec4<bool>(var_1.a, false, false, var_0.a), vec4<bool>(var_0.a, var_1.a, var_1.a, var_1.a), vec4<bool>(var_0.a, var_1.a, false, true)), global1[_wgslsmith_index_u32(4294967295u, 27u)])) + _wgslsmith_f_op_f32(-var_2))), var_1, u_input.d, 20889u);
    let var_4 = vec2<f32>(1691f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.c), _wgslsmith_f_op_f32(200f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2 - 811f), var_0.c))));
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = countOneBits(vec3<u32>(1u, 0u, _wgslsmith_mod_u32(func_4(func_1(Struct_1(false, vec4<u32>(1348u, 36434u, 23716u, 0u), 2017f)), Struct_4(Struct_3(0u))), abs(1u))));
    let var_1 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-997f * -1155f) + _wgslsmith_f_op_f32(-407f + 127f)), _wgslsmith_f_op_f32(-2211f * _wgslsmith_f_op_f32(select(-331f, 774f, true)))) - vec2<f32>(-256f, 1600f))));
    var var_2 = global1[_wgslsmith_index_u32(1u, 27u)];
    let var_3 = _wgslsmith_add_i32(u_input.d.x << (~firstTrailingBit(1u) % 32u), max(var_2.d.x, max(-1i, -(~u_input.b))));
    let var_4 = max(var_2.c.b.xy, _wgslsmith_div_vec2_u32(_wgslsmith_div_vec2_u32(abs(var_0.xx), ~_wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, 1u), vec2<u32>(var_2.c.b.x, var_0.x), vec2<u32>(var_0.x, var_2.b.b.x))), ~vec2<u32>(_wgslsmith_add_u32(var_2.a.x, 0u), var_0.x)));
    let var_5 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_2.b.c, var_1.x, var_2.c.c), vec3<f32>(-478f, var_1.x, -1028f))) + vec3<f32>(var_2.b.c, var_1.x, var_1.x)), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.b.c, var_1.x, 929f) - vec3<f32>(1018f, var_2.c.c, var_2.c.c)))))) * vec3<f32>(var_2.b.c, 1000f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_2.b.c + var_1.x)))))));
    let var_6 = !(!vec3<bool>(select(true, any(vec2<bool>(var_2.c.a, false)), select(var_2.b.a, var_2.c.a, true)), all(select(vec2<bool>(var_2.b.a, var_2.c.a), vec2<bool>(var_2.b.a, true), var_2.b.a)), (104258u << (var_4.x % 32u)) >= (var_0.x | 62106u)));
    let var_7 = var_2.d.x & -2147483647i;
    let x = u_input.a;
    s_output = StorageBuffer(select(var_2.a, vec3<u32>(abs(reverseBits(var_2.e)), var_0.x, var_2.b.b.x), all(!var_6.yy)), var_2.b.b >> (var_2.b.b % vec4<u32>(32u)));
}

