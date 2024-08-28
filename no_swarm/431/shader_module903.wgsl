struct Struct_1 {
    a: vec4<i32>,
    b: vec3<f32>,
    c: vec3<u32>,
    d: vec4<bool>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 18>;

var<private> global1: Struct_3;

var<private> global2: Struct_1 = Struct_1(vec4<i32>(38010i, 1i, 12828i, 0i), vec3<f32>(-374f, 624f, 792f), vec3<u32>(40365u, 64894u, 15760u), vec4<bool>(false, true, false, false), 7073u);

var<private> global3: array<Struct_2, 26>;

var<private> global4: array<Struct_2, 20> = array<Struct_2, 20>(Struct_2(Struct_1(vec4<i32>(i32(-2147483648), -37494i, 1i, i32(-2147483648)), vec3<f32>(500f, 1508f, 185f), vec3<u32>(1u, 34597u, 42925u), vec4<bool>(true, false, false, false), 30085u), vec2<bool>(false, false), Struct_1(vec4<i32>(1810i, -46838i, 2147483647i, -6812i), vec3<f32>(-721f, 786f, -783f), vec3<u32>(66078u, 27222u, 1u), vec4<bool>(false, false, true, true), 4294967295u)), Struct_2(Struct_1(vec4<i32>(2147483647i, 24534i, 2147483647i, 2147483647i), vec3<f32>(521f, 407f, -472f), vec3<u32>(1u, 76953u, 1u), vec4<bool>(true, true, false, false), 30996u), vec2<bool>(false, false), Struct_1(vec4<i32>(25039i, -705i, 2582i, 2147483647i), vec3<f32>(1000f, 1538f, 171f), vec3<u32>(0u, 1u, 4100u), vec4<bool>(true, true, true, false), 22718u)), Struct_2(Struct_1(vec4<i32>(0i, -42448i, i32(-2147483648), 15068i), vec3<f32>(-432f, 1000f, 667f), vec3<u32>(28244u, 0u, 0u), vec4<bool>(true, true, true, true), 7161u), vec2<bool>(true, true), Struct_1(vec4<i32>(0i, 2147483647i, 12061i, -1i), vec3<f32>(690f, -198f, 181f), vec3<u32>(30708u, 30882u, 4294967295u), vec4<bool>(false, false, false, true), 5537u)), Struct_2(Struct_1(vec4<i32>(-1i, 2147483647i, 2147483647i, 0i), vec3<f32>(-104f, 566f, 216f), vec3<u32>(1u, 59700u, 23790u), vec4<bool>(false, true, false, false), 0u), vec2<bool>(false, true), Struct_1(vec4<i32>(16013i, 0i, i32(-2147483648), 0i), vec3<f32>(677f, 491f, 1000f), vec3<u32>(6104u, 1u, 0u), vec4<bool>(false, false, true, false), 1u)), Struct_2(Struct_1(vec4<i32>(26403i, -21327i, 0i, 22920i), vec3<f32>(317f, -1291f, -192f), vec3<u32>(1u, 4294967295u, 1u), vec4<bool>(true, false, true, true), 4294967295u), vec2<bool>(false, false), Struct_1(vec4<i32>(i32(-2147483648), 1i, 19057i, 1i), vec3<f32>(861f, 900f, -793f), vec3<u32>(0u, 32628u, 48328u), vec4<bool>(true, true, true, true), 5729u)), Struct_2(Struct_1(vec4<i32>(-1i, 1i, -13613i, -1i), vec3<f32>(396f, 1269f, -1884f), vec3<u32>(1u, 65486u, 1u), vec4<bool>(true, true, true, false), 0u), vec2<bool>(false, true), Struct_1(vec4<i32>(-43330i, 12152i, -1i, 2147483647i), vec3<f32>(-1420f, 1000f, 915f), vec3<u32>(4294967295u, 0u, 1u), vec4<bool>(true, false, true, true), 0u)), Struct_2(Struct_1(vec4<i32>(36128i, -1i, -67705i, 2147483647i), vec3<f32>(1279f, -157f, -872f), vec3<u32>(35088u, 1u, 4294967295u), vec4<bool>(false, false, true, true), 4294967295u), vec2<bool>(true, false), Struct_1(vec4<i32>(43244i, 56048i, -1i, 2147483647i), vec3<f32>(-281f, 2082f, 1045f), vec3<u32>(1076u, 1u, 19280u), vec4<bool>(false, false, false, false), 84063u)), Struct_2(Struct_1(vec4<i32>(-1i, 2147483647i, 35132i, -31639i), vec3<f32>(740f, 949f, -1228f), vec3<u32>(8294u, 9171u, 50132u), vec4<bool>(false, false, true, true), 1u), vec2<bool>(true, false), Struct_1(vec4<i32>(2147483647i, i32(-2147483648), i32(-2147483648), 9978i), vec3<f32>(-1680f, -505f, -1000f), vec3<u32>(28693u, 3395u, 0u), vec4<bool>(true, false, true, false), 32131u)), Struct_2(Struct_1(vec4<i32>(-4790i, 44674i, 29241i, 2147483647i), vec3<f32>(2606f, -504f, -1000f), vec3<u32>(1u, 1u, 21119u), vec4<bool>(false, true, false, true), 2572u), vec2<bool>(true, true), Struct_1(vec4<i32>(i32(-2147483648), i32(-2147483648), 8232i, 7628i), vec3<f32>(-1000f, -1157f, -519f), vec3<u32>(59239u, 4294967295u, 34633u), vec4<bool>(true, false, false, false), 0u)), Struct_2(Struct_1(vec4<i32>(51243i, 2147483647i, -29203i, -6393i), vec3<f32>(2350f, 1133f, -1055f), vec3<u32>(4294967295u, 4294967295u, 4648u), vec4<bool>(false, true, false, false), 56507u), vec2<bool>(false, false), Struct_1(vec4<i32>(-16211i, 2147483647i, 1i, 2147483647i), vec3<f32>(290f, -884f, -1154f), vec3<u32>(0u, 4294967295u, 4294967295u), vec4<bool>(true, true, false, false), 4294967295u)), Struct_2(Struct_1(vec4<i32>(2147483647i, -28811i, 29428i, -1i), vec3<f32>(948f, 556f, -138f), vec3<u32>(0u, 0u, 4294967295u), vec4<bool>(true, false, false, false), 4054u), vec2<bool>(false, true), Struct_1(vec4<i32>(-27854i, 1i, 3824i, 59279i), vec3<f32>(-673f, 516f, -359f), vec3<u32>(20728u, 0u, 20218u), vec4<bool>(false, false, true, true), 54757u)), Struct_2(Struct_1(vec4<i32>(0i, 2147483647i, 0i, 2147483647i), vec3<f32>(617f, 798f, 407f), vec3<u32>(78855u, 1u, 39874u), vec4<bool>(true, true, true, true), 43381u), vec2<bool>(false, false), Struct_1(vec4<i32>(-29231i, 53388i, 1i, -2294i), vec3<f32>(837f, -1353f, -2457f), vec3<u32>(36580u, 4294967295u, 0u), vec4<bool>(true, false, false, true), 4294967295u)), Struct_2(Struct_1(vec4<i32>(i32(-2147483648), -1i, -12914i, 19353i), vec3<f32>(268f, -464f, -452f), vec3<u32>(0u, 4294967295u, 26593u), vec4<bool>(true, false, true, true), 0u), vec2<bool>(false, true), Struct_1(vec4<i32>(-14159i, 1i, 623i, -15866i), vec3<f32>(-955f, 481f, 269f), vec3<u32>(22287u, 62897u, 4294967295u), vec4<bool>(true, true, true, true), 86695u)), Struct_2(Struct_1(vec4<i32>(1i, -19338i, -30422i, 0i), vec3<f32>(774f, 551f, -594f), vec3<u32>(68327u, 30876u, 4294967295u), vec4<bool>(true, false, false, true), 0u), vec2<bool>(false, true), Struct_1(vec4<i32>(13182i, 1i, 19265i, 9038i), vec3<f32>(-362f, -172f, 840f), vec3<u32>(28562u, 9246u, 4294967295u), vec4<bool>(true, true, true, false), 0u)), Struct_2(Struct_1(vec4<i32>(-65277i, i32(-2147483648), 2147483647i, 2147483647i), vec3<f32>(-659f, 1000f, 483f), vec3<u32>(256u, 0u, 113947u), vec4<bool>(true, true, false, true), 69257u), vec2<bool>(false, false), Struct_1(vec4<i32>(2147483647i, 2147483647i, i32(-2147483648), -75394i), vec3<f32>(-2225f, 489f, -1225f), vec3<u32>(4294967295u, 7920u, 4294967295u), vec4<bool>(true, false, true, false), 14802u)), Struct_2(Struct_1(vec4<i32>(1i, i32(-2147483648), 12366i, 2147483647i), vec3<f32>(-446f, -1026f, 1331f), vec3<u32>(108546u, 1u, 622u), vec4<bool>(false, false, true, false), 4294967295u), vec2<bool>(true, true), Struct_1(vec4<i32>(-30958i, i32(-2147483648), 462i, 37548i), vec3<f32>(109f, -580f, 176f), vec3<u32>(0u, 59344u, 12251u), vec4<bool>(true, false, true, true), 1697u)), Struct_2(Struct_1(vec4<i32>(29439i, 1i, 1i, 24232i), vec3<f32>(2421f, 1000f, -1170f), vec3<u32>(0u, 4294967295u, 1u), vec4<bool>(true, false, false, false), 20102u), vec2<bool>(true, true), Struct_1(vec4<i32>(39949i, -1i, 21454i, -37937i), vec3<f32>(390f, -253f, -1000f), vec3<u32>(0u, 4294967295u, 27795u), vec4<bool>(false, false, true, true), 27267u)), Struct_2(Struct_1(vec4<i32>(-45256i, 29041i, -32667i, 0i), vec3<f32>(860f, 825f, -504f), vec3<u32>(1u, 20126u, 20906u), vec4<bool>(true, true, false, false), 1u), vec2<bool>(true, false), Struct_1(vec4<i32>(i32(-2147483648), 2147483647i, 1i, -25029i), vec3<f32>(744f, 2458f, 185f), vec3<u32>(7004u, 67939u, 0u), vec4<bool>(false, false, false, false), 31386u)), Struct_2(Struct_1(vec4<i32>(13379i, 0i, 2147483647i, -17855i), vec3<f32>(1119f, -756f, -1392f), vec3<u32>(0u, 0u, 44737u), vec4<bool>(true, false, false, true), 4294967295u), vec2<bool>(false, true), Struct_1(vec4<i32>(46588i, -36403i, -37742i, 15854i), vec3<f32>(-405f, 151f, -425f), vec3<u32>(67451u, 1u, 0u), vec4<bool>(false, false, false, false), 1u)), Struct_2(Struct_1(vec4<i32>(-10768i, 2381i, i32(-2147483648), 39431i), vec3<f32>(829f, -1065f, 773f), vec3<u32>(42938u, 1u, 4294967295u), vec4<bool>(false, false, true, false), 54995u), vec2<bool>(false, false), Struct_1(vec4<i32>(1i, 2925i, 2147483647i, 21864i), vec3<f32>(1769f, -811f, -1193f), vec3<u32>(0u, 5236u, 0u), vec4<bool>(false, true, false, false), 60366u)));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1) -> vec4<i32> {
    global1 = Struct_3(_wgslsmith_mod_vec4_i32(max(global1.a, countOneBits(vec4<i32>(arg_0.c.a.x, global2.a.x, -6469i, global2.a.x)) << (~u_input.c % vec4<u32>(32u))), _wgslsmith_sub_vec4_i32(vec4<i32>(arg_1.a.x, ~global2.a.x, _wgslsmith_clamp_i32(28845i, 18288i, -14422i), arg_1.a.x), -vec4<i32>(arg_0.a.a.x, arg_1.a.x, -10580i, -1i))));
    let var_0 = any(global2.d);
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1059f - _wgslsmith_div_f32(arg_1.b.x, global2.b.x)) * _wgslsmith_f_op_f32(ceil(arg_1.b.x)));
    var var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-264f, _wgslsmith_f_op_f32(ceil(arg_0.c.b.x))));
    var var_3 = 2147483647i;
    return vec4<i32>(global1.a.x | ~1i, 2147483647i, -21032i, _wgslsmith_sub_i32(reverseBits(_wgslsmith_div_i32(-2147483647i, global1.a.x)), abs(-31408i & global2.a.x)) | (i32(-1i) * -21411i));
}

fn func_2(arg_0: i32, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: u32) -> Struct_1 {
    var var_0 = -func_3(Struct_2(arg_2, !select(arg_2.d.wz, arg_2.d.yy, vec2<bool>(false, arg_2.d.x)), Struct_1(vec4<i32>(0i, arg_2.a.x, -1i, arg_2.a.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.b.x, arg_2.b.x, arg_2.b.x)), select(global2.c, arg_2.c, vec3<bool>(arg_2.d.x, arg_2.d.x, true)), !arg_2.d, ~arg_1.x)), Struct_1(vec4<i32>(~global1.a.x, arg_2.a.x >> (u_input.b % 32u), 48816i, firstTrailingBit(-2147483647i)), vec3<f32>(-589f, arg_2.b.x, _wgslsmith_f_op_f32(trunc(arg_2.b.x))), countOneBits(u_input.c.zzw), !select(vec4<bool>(true, true, global2.d.x, false), vec4<bool>(true, arg_2.d.x, false, arg_2.d.x), vec4<bool>(global2.d.x, true, global2.d.x, global2.d.x)), _wgslsmith_mult_u32(firstLeadingBit(arg_1.x), ~u_input.b)));
    var var_1 = Struct_1(_wgslsmith_add_vec4_i32(arg_2.a, countOneBits(vec4<i32>(var_0.x, _wgslsmith_clamp_i32(44514i, arg_0, arg_0), arg_2.a.x, firstTrailingBit(arg_2.a.x)))), global2.b, u_input.c.ywx, global2.d, ~firstTrailingBit(_wgslsmith_add_u32(44864u, 1u) << (~arg_3 % 32u)));
    var var_2 = Struct_3(~global1.a);
    var_2 = Struct_3(vec4<i32>(~abs(1i), _wgslsmith_sub_i32(abs(47431i), -(i32(-1i) * -13051i)), 1i, func_3(global4[_wgslsmith_index_u32(select(4294967295u, 33895u, arg_2.c.x <= var_1.e), 20u)], arg_2).x));
    var var_3 = var_1.a.xwx;
    return Struct_1(var_2.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(772f, -1106f, -658f) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1.b.x, var_1.b.x, 781f), global0[_wgslsmith_index_u32(18148u, 18u)], vec3<bool>(arg_2.d.x, false, var_1.d.x))))) * global2.b), u_input.c.xwz, var_1.d, (26778u >> ((11056u | _wgslsmith_mod_u32(arg_1.x, arg_1.x)) % 32u)) | ~0u);
}

fn func_4(arg_0: Struct_1) -> i32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(global2.b.yx * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.b.x, _wgslsmith_f_op_f32(arg_0.b.x - global2.b.x)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(global2.b.x, arg_0.b.x) * _wgslsmith_f_op_vec2_f32(-global2.b.yx)))));
    global2 = Struct_1(vec4<i32>(_wgslsmith_div_i32(2147483647i, _wgslsmith_div_i32(~global1.a.x, -global2.a.x)), _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(global2.a, func_3(Struct_2(arg_0, vec2<bool>(false, arg_0.d.x), Struct_1(global1.a, global2.b, global2.c, vec4<bool>(arg_0.d.x, true, arg_0.d.x, arg_0.d.x), global2.e)), arg_0)), vec4<i32>(217i, global1.a.x, arg_0.a.x & global1.a.x, i32(-1i) * -1i)), global1.a.x, -_wgslsmith_mult_i32(~39286i, 40109i ^ global2.a.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(arg_0.b - vec3<f32>(var_0.x, 351f, arg_0.b.x)))))), global2.c, vec4<bool>(false, false, all(!global2.d.xz), any(!select(vec2<bool>(false, global2.d.x), vec2<bool>(global2.d.x, arg_0.d.x), arg_0.d.zw))), _wgslsmith_sub_u32(global2.c.x, 1u));
    global4 = array<Struct_2, 20>();
    let var_1 = arg_0;
    global3 = array<Struct_2, 26>();
    return firstLeadingBit(countOneBits(-1i));
}

fn func_5(arg_0: vec3<i32>, arg_1: u32, arg_2: i32, arg_3: Struct_3) -> u32 {
    return _wgslsmith_mod_u32(~reverseBits(countOneBits(17493u)), ~global2.e);
}

fn func_1(arg_0: Struct_3) -> vec3<i32> {
    global0 = array<vec3<f32>, 18>();
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.b.x - _wgslsmith_f_op_f32(global2.b.x + global2.b.x))))));
    var var_1 = abs(func_5(_wgslsmith_mod_vec3_i32(global2.a.xzx, ~reverseBits(vec3<i32>(global1.a.x, 1i, -26067i))), 33900u, func_4(func_2(1i, vec3<u32>(global2.e, global2.e, 33563u), Struct_1(vec4<i32>(global2.a.x, 0i, -1369i, global2.a.x), global0[_wgslsmith_index_u32(global2.c.x, 18u)], u_input.c.wzy, global2.d, global2.c.x), 4294967295u)), Struct_3(vec4<i32>(~global1.a.x, -1i, ~arg_0.a.x, _wgslsmith_mult_i32(1i, -51418i)))));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global2.b.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -812f) + _wgslsmith_f_op_f32(global2.b.x - global2.b.x))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_2(8557i, u_input.c.zyy, Struct_1(vec4<i32>(arg_0.a.x, 0i, -38546i, -2147483647i), vec3<f32>(1250f, 403f, global2.b.x), u_input.c.yyw, global2.d, 56061u), global2.e).b.x))));
    var var_2 = global2.c.yz;
    return arg_0.a.wxw;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(global1.a.x);
    var var_1 = global3[_wgslsmith_index_u32(_wgslsmith_div_u32(31001u, 8917u), 26u)];
    let var_2 = !vec3<bool>(any(var_1.a.d.yzz), -_wgslsmith_add_i32(global1.a.x, global2.a.x) > 6160i, !(-1770f >= _wgslsmith_f_op_f32(var_1.c.b.x + -2558f)));
    var var_3 = reverseBits(-_wgslsmith_dot_vec3_i32(-global1.a.yyz, countOneBits(func_1(Struct_3(global2.a)))));
    var var_4 = var_1.c.a.x << (24695u % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(select(vec2<i32>(-1i) * -vec2<i32>(global1.a.x, var_0), -_wgslsmith_add_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(-1i, 49865i), var_1.a.a.xz), ~vec2<i32>(var_1.c.a.x, 2147483647i)), !vec2<bool>(true, all(var_2.zx))), ~2147483647i, _wgslsmith_sub_u32(select(_wgslsmith_dot_vec3_u32(var_1.a.c, global2.c), global2.c.x, false) >> (~(~var_1.a.e) % 32u), 15761u));
}

