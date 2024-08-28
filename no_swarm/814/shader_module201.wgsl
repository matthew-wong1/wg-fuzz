struct Struct_1 {
    a: vec4<i32>,
    b: i32,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec2<i32>,
    c: Struct_1,
}

struct Struct_4 {
    a: vec2<u32>,
    b: f32,
    c: Struct_2,
}

struct Struct_5 {
    a: i32,
    b: f32,
    c: Struct_3,
    d: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec3<u32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 27> = array<Struct_5, 27>(Struct_5(5952i, -1313f, Struct_3(vec3<bool>(true, true, false), vec2<i32>(0i, 2147483647i), Struct_1(vec4<i32>(-10671i, 1i, -25974i, i32(-2147483648)), -63821i)), Struct_3(vec3<bool>(false, false, false), vec2<i32>(0i, -23208i), Struct_1(vec4<i32>(-14675i, -19718i, 6541i, 1i), 2147483647i))), Struct_5(1i, 695f, Struct_3(vec3<bool>(true, true, true), vec2<i32>(-7350i, 2147483647i), Struct_1(vec4<i32>(2147483647i, -37398i, 1i, 2147483647i), 0i)), Struct_3(vec3<bool>(false, false, false), vec2<i32>(2147483647i, i32(-2147483648)), Struct_1(vec4<i32>(1i, 0i, -33912i, 0i), -26426i))), Struct_5(1i, -498f, Struct_3(vec3<bool>(true, false, true), vec2<i32>(i32(-2147483648), -21733i), Struct_1(vec4<i32>(i32(-2147483648), i32(-2147483648), -1i, 1i), -39980i)), Struct_3(vec3<bool>(false, true, false), vec2<i32>(23895i, 32027i), Struct_1(vec4<i32>(-17373i, 2147483647i, i32(-2147483648), -1i), -51229i))), Struct_5(0i, -753f, Struct_3(vec3<bool>(false, true, false), vec2<i32>(-25997i, 2147483647i), Struct_1(vec4<i32>(2147483647i, 2147483647i, i32(-2147483648), 6954i), 2147483647i)), Struct_3(vec3<bool>(true, false, true), vec2<i32>(2147483647i, -1933i), Struct_1(vec4<i32>(0i, -1i, i32(-2147483648), 2147483647i), 2147483647i))), Struct_5(i32(-2147483648), 218f, Struct_3(vec3<bool>(true, false, true), vec2<i32>(i32(-2147483648), 0i), Struct_1(vec4<i32>(35799i, -48707i, 2147483647i, 2147483647i), 31695i)), Struct_3(vec3<bool>(false, false, false), vec2<i32>(1i, -5956i), Struct_1(vec4<i32>(i32(-2147483648), 10052i, 0i, 11475i), -55745i))), Struct_5(2147483647i, 1000f, Struct_3(vec3<bool>(false, true, true), vec2<i32>(1i, 2147483647i), Struct_1(vec4<i32>(-1i, 0i, 2147483647i, -47480i), -20626i)), Struct_3(vec3<bool>(false, false, true), vec2<i32>(2147483647i, i32(-2147483648)), Struct_1(vec4<i32>(-11775i, -50277i, 1i, -54440i), -53861i))), Struct_5(-18290i, 1187f, Struct_3(vec3<bool>(true, false, false), vec2<i32>(-30487i, -34463i), Struct_1(vec4<i32>(29774i, 1i, 0i, 15489i), 0i)), Struct_3(vec3<bool>(true, true, false), vec2<i32>(0i, i32(-2147483648)), Struct_1(vec4<i32>(-3690i, -12090i, 22265i, i32(-2147483648)), 37248i))), Struct_5(39932i, -1384f, Struct_3(vec3<bool>(true, false, true), vec2<i32>(-5663i, 49744i), Struct_1(vec4<i32>(-16589i, 2147483647i, -32820i, -1i), 2147483647i)), Struct_3(vec3<bool>(false, true, true), vec2<i32>(0i, i32(-2147483648)), Struct_1(vec4<i32>(1i, 38897i, -1i, 2147483647i), 0i))), Struct_5(-1i, -980f, Struct_3(vec3<bool>(false, true, true), vec2<i32>(15977i, 19420i), Struct_1(vec4<i32>(2147483647i, 1i, 2147483647i, -16185i), 0i)), Struct_3(vec3<bool>(true, false, false), vec2<i32>(-1i, -45400i), Struct_1(vec4<i32>(-10621i, 0i, -1i, 0i), -14864i))), Struct_5(1i, -1048f, Struct_3(vec3<bool>(false, false, false), vec2<i32>(2147483647i, 1i), Struct_1(vec4<i32>(1i, i32(-2147483648), -8135i, i32(-2147483648)), 12744i)), Struct_3(vec3<bool>(true, true, true), vec2<i32>(-17326i, 1i), Struct_1(vec4<i32>(i32(-2147483648), 43120i, -36681i, 34079i), 2147483647i))), Struct_5(-34796i, -1656f, Struct_3(vec3<bool>(false, true, true), vec2<i32>(-5692i, -1i), Struct_1(vec4<i32>(0i, -3017i, -40610i, -35668i), i32(-2147483648))), Struct_3(vec3<bool>(false, true, false), vec2<i32>(-1i, 0i), Struct_1(vec4<i32>(-1i, 11529i, 2210i, -3589i), -1i))), Struct_5(-1i, 833f, Struct_3(vec3<bool>(true, false, false), vec2<i32>(i32(-2147483648), 20172i), Struct_1(vec4<i32>(22643i, i32(-2147483648), 2147483647i, 1i), -7250i)), Struct_3(vec3<bool>(false, false, true), vec2<i32>(10328i, -18197i), Struct_1(vec4<i32>(i32(-2147483648), i32(-2147483648), -1i, 0i), -40462i))), Struct_5(7391i, 708f, Struct_3(vec3<bool>(false, true, false), vec2<i32>(i32(-2147483648), i32(-2147483648)), Struct_1(vec4<i32>(-26739i, -60021i, 0i, -1i), 23493i)), Struct_3(vec3<bool>(false, false, true), vec2<i32>(i32(-2147483648), 791i), Struct_1(vec4<i32>(15i, 56187i, 2147483647i, 593i), 1i))), Struct_5(-32096i, -1337f, Struct_3(vec3<bool>(false, false, true), vec2<i32>(-1i, 12418i), Struct_1(vec4<i32>(1i, i32(-2147483648), -2450i, 66574i), 2147483647i)), Struct_3(vec3<bool>(true, true, false), vec2<i32>(-5387i, i32(-2147483648)), Struct_1(vec4<i32>(0i, i32(-2147483648), 40566i, -4684i), 76i))), Struct_5(-1i, -595f, Struct_3(vec3<bool>(true, false, false), vec2<i32>(4441i, 2147483647i), Struct_1(vec4<i32>(2147483647i, 14610i, -32530i, 36422i), i32(-2147483648))), Struct_3(vec3<bool>(true, true, false), vec2<i32>(-16519i, 1i), Struct_1(vec4<i32>(2147483647i, -1i, 0i, 17601i), i32(-2147483648)))), Struct_5(2147483647i, 621f, Struct_3(vec3<bool>(false, true, true), vec2<i32>(47912i, 12643i), Struct_1(vec4<i32>(13367i, 20582i, 2147483647i, -11083i), -14059i)), Struct_3(vec3<bool>(true, false, false), vec2<i32>(1i, 0i), Struct_1(vec4<i32>(-35413i, 1i, -25325i, 5463i), -44693i))), Struct_5(0i, 930f, Struct_3(vec3<bool>(true, false, false), vec2<i32>(0i, 28031i), Struct_1(vec4<i32>(-23133i, -48369i, 2147483647i, -1i), i32(-2147483648))), Struct_3(vec3<bool>(false, false, true), vec2<i32>(-35676i, -23171i), Struct_1(vec4<i32>(10672i, 1i, -22874i, -66014i), 16149i))), Struct_5(20898i, 2220f, Struct_3(vec3<bool>(true, true, true), vec2<i32>(i32(-2147483648), i32(-2147483648)), Struct_1(vec4<i32>(7255i, 2147483647i, 7422i, i32(-2147483648)), 0i)), Struct_3(vec3<bool>(true, false, true), vec2<i32>(2147483647i, 8965i), Struct_1(vec4<i32>(-1i, i32(-2147483648), 1i, 2147483647i), 69263i))), Struct_5(7486i, 397f, Struct_3(vec3<bool>(false, true, true), vec2<i32>(2147483647i, i32(-2147483648)), Struct_1(vec4<i32>(2147483647i, -17376i, i32(-2147483648), 40000i), 0i)), Struct_3(vec3<bool>(true, true, true), vec2<i32>(14793i, -1i), Struct_1(vec4<i32>(-80029i, -1581i, -8728i, 2147483647i), 2147483647i))), Struct_5(-17641i, 732f, Struct_3(vec3<bool>(false, true, true), vec2<i32>(1i, 28946i), Struct_1(vec4<i32>(-57137i, i32(-2147483648), 0i, 31869i), 1676i)), Struct_3(vec3<bool>(false, true, false), vec2<i32>(-1i, i32(-2147483648)), Struct_1(vec4<i32>(63072i, 1i, -53944i, -15990i), 8422i))), Struct_5(1i, -909f, Struct_3(vec3<bool>(false, true, false), vec2<i32>(-748i, 0i), Struct_1(vec4<i32>(-1i, -1466i, 1i, 10070i), 19522i)), Struct_3(vec3<bool>(true, false, true), vec2<i32>(-13604i, i32(-2147483648)), Struct_1(vec4<i32>(1i, i32(-2147483648), -38192i, -10860i), -7324i))), Struct_5(2147483647i, -1000f, Struct_3(vec3<bool>(true, true, false), vec2<i32>(2147483647i, 1i), Struct_1(vec4<i32>(0i, 2147483647i, 15962i, 58030i), 40651i)), Struct_3(vec3<bool>(false, true, false), vec2<i32>(14693i, 2147483647i), Struct_1(vec4<i32>(i32(-2147483648), -9914i, 42839i, -1i), -16721i))), Struct_5(i32(-2147483648), 1000f, Struct_3(vec3<bool>(false, false, true), vec2<i32>(-15643i, 41786i), Struct_1(vec4<i32>(32516i, 1i, 1i, -1i), 48646i)), Struct_3(vec3<bool>(false, true, true), vec2<i32>(0i, -1i), Struct_1(vec4<i32>(1i, -7191i, -30676i, i32(-2147483648)), 0i))), Struct_5(49817i, -610f, Struct_3(vec3<bool>(true, false, true), vec2<i32>(i32(-2147483648), -17430i), Struct_1(vec4<i32>(-2727i, -23768i, 30248i, 0i), -1i)), Struct_3(vec3<bool>(true, true, false), vec2<i32>(-30976i, -3242i), Struct_1(vec4<i32>(-1i, -33739i, 53812i, 0i), -11309i))), Struct_5(i32(-2147483648), -1135f, Struct_3(vec3<bool>(false, false, true), vec2<i32>(-1i, -1i), Struct_1(vec4<i32>(-29235i, 9902i, -24064i, 0i), -42670i)), Struct_3(vec3<bool>(false, true, false), vec2<i32>(1i, 1i), Struct_1(vec4<i32>(0i, 1i, 1i, -64986i), i32(-2147483648)))), Struct_5(42171i, 1168f, Struct_3(vec3<bool>(false, true, true), vec2<i32>(1i, 57342i), Struct_1(vec4<i32>(-45950i, 1i, i32(-2147483648), 28853i), i32(-2147483648))), Struct_3(vec3<bool>(false, true, true), vec2<i32>(-1i, 1i), Struct_1(vec4<i32>(-1i, i32(-2147483648), -1i, -19228i), 29702i))), Struct_5(239i, 149f, Struct_3(vec3<bool>(false, true, true), vec2<i32>(-50329i, -42316i), Struct_1(vec4<i32>(1i, -8560i, 0i, 1i), 18900i)), Struct_3(vec3<bool>(false, true, false), vec2<i32>(536i, 4321i), Struct_1(vec4<i32>(-7696i, i32(-2147483648), -81686i, 0i), -1i))));

var<private> global1: array<Struct_1, 24> = array<Struct_1, 24>(Struct_1(vec4<i32>(-12834i, -3440i, -1i, 1i), 61406i), Struct_1(vec4<i32>(-79090i, 2147483647i, -29359i, -1i), -53268i), Struct_1(vec4<i32>(24155i, 75877i, 20723i, -28807i), 30230i), Struct_1(vec4<i32>(-1i, -1i, 27762i, -5924i), 39263i), Struct_1(vec4<i32>(2147483647i, 27048i, -48972i, 14510i), 51900i), Struct_1(vec4<i32>(0i, 9162i, 1i, i32(-2147483648)), -1i), Struct_1(vec4<i32>(32680i, 1i, -1i, -24427i), i32(-2147483648)), Struct_1(vec4<i32>(1i, 10841i, 0i, -15525i), 1i), Struct_1(vec4<i32>(-31273i, -8486i, 1i, 61386i), -10388i), Struct_1(vec4<i32>(-4665i, 1i, -1i, 26180i), -45539i), Struct_1(vec4<i32>(-38740i, 25821i, i32(-2147483648), -1i), 2147483647i), Struct_1(vec4<i32>(14909i, i32(-2147483648), 0i, 36054i), 30539i), Struct_1(vec4<i32>(57709i, 1i, -9021i, 2147483647i), 2147483647i), Struct_1(vec4<i32>(0i, 2147483647i, -12455i, 17139i), 49577i), Struct_1(vec4<i32>(-76532i, 18676i, 53305i, 2147483647i), 35490i), Struct_1(vec4<i32>(-13345i, 15996i, 28177i, -37236i), -42499i), Struct_1(vec4<i32>(-1i, 69460i, 6641i, 17862i), 15905i), Struct_1(vec4<i32>(32768i, -1i, i32(-2147483648), -10173i), 11137i), Struct_1(vec4<i32>(i32(-2147483648), -21757i, -20058i, 1i), -21250i), Struct_1(vec4<i32>(74177i, 1i, 1i, -45063i), -14425i), Struct_1(vec4<i32>(0i, 56684i, 13084i, 4345i), -6468i), Struct_1(vec4<i32>(-1i, 1i, 2147483647i, 22213i), 532i), Struct_1(vec4<i32>(18409i, 0i, 2147483647i, 78346i), i32(-2147483648)), Struct_1(vec4<i32>(-19986i, -11290i, 24619i, -7006i), 1i));

var<private> global2: i32 = 2147483647i;

var<private> global3: Struct_5 = Struct_5(i32(-2147483648), -251f, Struct_3(vec3<bool>(true, true, true), vec2<i32>(5401i, 0i), Struct_1(vec4<i32>(-39325i, 1i, 30282i, 2147483647i), 48577i)), Struct_3(vec3<bool>(false, true, false), vec2<i32>(0i, -16613i), Struct_1(vec4<i32>(4590i, -21006i, 2147483647i, 0i), 1i)));

var<private> global4: array<Struct_5, 17>;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: u32) -> vec3<f32> {
    let var_0 = Struct_5(2147483647i, -757f, global3.c, Struct_3(select(vec3<bool>(!global3.d.a.x, arg_0 == u_input.a, !global3.d.a.x), select(!vec3<bool>(global3.c.a.x, false, false), !vec3<bool>(global3.c.a.x, false, global3.c.a.x), select(global3.d.a.x, global3.c.a.x, true)), global3.c.a.x || (408f != global3.b)), firstTrailingBit(firstLeadingBit(countOneBits(vec2<i32>(-35111i, -1i)))), global3.d.c));
    global0 = array<Struct_5, 27>();
    return _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b * var_0.b) * _wgslsmith_f_op_f32(max(573f, -217f)))), _wgslsmith_f_op_f32(max(1856f, global3.b)), global3.b)));
}

fn func_4(arg_0: u32, arg_1: vec3<f32>, arg_2: i32) -> i32 {
    global3 = Struct_5(min(reverseBits(~abs(-21384i)), abs(global3.d.b.x)), global3.b, global3.c, global3.d);
    var var_0 = Struct_2(firstTrailingBit(~(~vec3<u32>(51399u, u_input.a, 77559u)) | ~vec3<u32>(9963u, 39308u, 11149u)));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -536f)));
    global1 = array<Struct_1, 24>();
    global3 = global0[_wgslsmith_index_u32(0u, 27u)];
    return firstTrailingBit(31796i);
}

fn func_2(arg_0: Struct_1, arg_1: u32, arg_2: Struct_5, arg_3: vec4<bool>) -> f32 {
    global2 = ~(-42270i);
    let var_0 = arg_0;
    global3 = Struct_5(max(func_4(u_input.a, _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(func_3(arg_1)))), arg_0.b), var_0.a.x), arg_2.b, global3.d, Struct_3(vec3<bool>(select(arg_2.d.a.x, arg_2.b >= arg_2.b, any(arg_3)), global3.c.a.x, false), arg_2.c.b >> (((vec2<u32>(194360u, 1u) | vec2<u32>(u_input.a, u_input.a)) & _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, 23026u), vec2<u32>(arg_1, u_input.a))) % vec2<u32>(32u)), Struct_1(_wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(global3.a, -2147483647i, arg_2.a, 0i), vec4<i32>(arg_0.b, global3.c.c.a.x, u_input.b, global3.c.c.a.x)), var_0.a | vec4<i32>(-2147483647i, 18056i, 0i, -15480i)), global3.a)));
    let var_1 = arg_2.c;
    let var_2 = u_input.b;
    return 948f;
}

fn func_1(arg_0: f32, arg_1: vec3<f32>, arg_2: vec4<f32>) -> StorageBuffer {
    let var_0 = global3.d;
    var var_1 = 4067u;
    var var_2 = -32772i;
    var var_3 = _wgslsmith_f_op_vec4_f32(-arg_2);
    global3 = Struct_5(-2147483647i, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(Struct_1(var_0.c.a, var_0.c.a.x), u_input.a, global4[_wgslsmith_index_u32(~u_input.a, 17u)], vec4<bool>(var_0.a.x, true, var_0.a.x, var_0.a.x))), var_3.x)), global3.c, global3.c);
    return StorageBuffer(u_input.a, _wgslsmith_sub_vec2_i32(min(var_0.c.a.wz, var_0.b), var_0.c.a.ww), countOneBits(~_wgslsmith_sub_vec3_u32(~vec3<u32>(0u, u_input.a, u_input.a), vec3<u32>(u_input.a, 0u, u_input.a))), vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(559f * _wgslsmith_div_f32(-912f, -285f)))), -2131f, -639f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1021f + _wgslsmith_f_op_f32(global3.b - _wgslsmith_f_op_f32(sign(169f)))))));
    let var_1 = _wgslsmith_div_vec4_u32(vec4<u32>(select(firstTrailingBit(29601u), 1u, true), _wgslsmith_div_u32(~4294967295u, select(u_input.a, u_input.a, false)), 3665u, min(~u_input.a, ~u_input.a)) | ~vec4<u32>(53281u, u_input.a | 0u, u_input.a, 48844u), reverseBits(vec4<u32>(_wgslsmith_add_u32(49415u, u_input.a), ~u_input.a >> (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(1u, u_input.a, u_input.a)) % 32u), u_input.a, ~43933u)));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1137f)) + 1701f);
    global4 = array<Struct_5, 17>();
    var var_3 = vec4<u32>(var_1.x | firstLeadingBit(~_wgslsmith_dot_vec4_u32(var_1, vec4<u32>(u_input.a, 66209u, 5096u, 39207u))), 19380u, var_1.x, 4294967295u);
    var var_4 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-113f)) - _wgslsmith_f_op_f32(f32(-1f) * -1280f)))), -224f);
    let var_5 = global3.b;
    var_2 = _wgslsmith_f_op_f32(var_4.x * _wgslsmith_f_op_f32(abs(global3.b)));
    let x = u_input.a;
    s_output = func_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1938f - global3.b))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-696f, -274f, 858f), vec3<f32>(697f, 1262f, 460f), !global3.c.a))) * _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global3.b, var_4.x, -294f))))))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global3.b)) * 462f), -2311f, var_0, 497f));
}

