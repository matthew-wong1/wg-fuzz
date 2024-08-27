struct Struct_1 {
    a: vec4<i32>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: bool,
}

struct Struct_3 {
    a: f32,
    b: i32,
    c: Struct_2,
    d: vec2<i32>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
    c: f32,
    d: u32,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_4,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 25>;

var<private> global1: vec4<i32> = vec4<i32>(1i, 1i, 13791i, -30526i);

var<private> global2: array<Struct_5, 22> = array<Struct_5, 22>(Struct_5(Struct_2(Struct_1(vec4<i32>(28085i, i32(-2147483648), -37413i, 1i), 2147483647i), 400f, Struct_1(vec4<i32>(-55561i, 0i, i32(-2147483648), 2147483647i), 2147483647i), false), Struct_4(Struct_2(Struct_1(vec4<i32>(-1i, 0i, 26936i, 2147483647i), -24217i), 1863f, Struct_1(vec4<i32>(0i, i32(-2147483648), i32(-2147483648), 410i), 1i), false), Struct_1(vec4<i32>(38806i, 84528i, 2147483647i, 52152i), 0i), 304f, 1u)), Struct_5(Struct_2(Struct_1(vec4<i32>(-1i, 1i, i32(-2147483648), i32(-2147483648)), -1i), -294f, Struct_1(vec4<i32>(5770i, 0i, 2147483647i, i32(-2147483648)), -40391i), false), Struct_4(Struct_2(Struct_1(vec4<i32>(-1i, -13501i, 46085i, i32(-2147483648)), i32(-2147483648)), 1697f, Struct_1(vec4<i32>(1i, i32(-2147483648), -1i, -1i), 16372i), false), Struct_1(vec4<i32>(-5421i, -32539i, 13358i, -2050i), -27631i), -183f, 4294967295u)), Struct_5(Struct_2(Struct_1(vec4<i32>(-63256i, 20456i, 0i, 0i), 1i), -598f, Struct_1(vec4<i32>(3660i, -34869i, -17398i, 2147483647i), -5700i), false), Struct_4(Struct_2(Struct_1(vec4<i32>(1i, 1i, 2147483647i, -16039i), -3358i), 1937f, Struct_1(vec4<i32>(37012i, 1i, i32(-2147483648), -1i), 2147483647i), true), Struct_1(vec4<i32>(i32(-2147483648), 2147483647i, 0i, -1i), -24748i), 978f, 40684u)), Struct_5(Struct_2(Struct_1(vec4<i32>(i32(-2147483648), -1177i, -15435i, 2147483647i), 20603i), -1450f, Struct_1(vec4<i32>(0i, -7779i, -22830i, -33872i), i32(-2147483648)), true), Struct_4(Struct_2(Struct_1(vec4<i32>(0i, 5559i, i32(-2147483648), -17892i), 1490i), 402f, Struct_1(vec4<i32>(-38720i, -1i, 1i, -24789i), -1i), true), Struct_1(vec4<i32>(i32(-2147483648), 5703i, 24635i, -14646i), -5115i), 181f, 4294967295u)), Struct_5(Struct_2(Struct_1(vec4<i32>(-7034i, 26110i, -1i, i32(-2147483648)), 17987i), 1000f, Struct_1(vec4<i32>(0i, 0i, -54599i, 1i), -8514i), true), Struct_4(Struct_2(Struct_1(vec4<i32>(18174i, -1i, 39467i, 11702i), 1i), 764f, Struct_1(vec4<i32>(-24818i, i32(-2147483648), 38058i, 54473i), 30085i), false), Struct_1(vec4<i32>(2147483647i, -28826i, -88470i, 2147483647i), i32(-2147483648)), -663f, 18158u)), Struct_5(Struct_2(Struct_1(vec4<i32>(-8062i, i32(-2147483648), 37416i, 62447i), 2147483647i), -1095f, Struct_1(vec4<i32>(-1i, 0i, 35474i, -22698i), i32(-2147483648)), false), Struct_4(Struct_2(Struct_1(vec4<i32>(-1i, -1710i, 5656i, 2147483647i), i32(-2147483648)), 398f, Struct_1(vec4<i32>(46593i, 0i, 19652i, 2147483647i), i32(-2147483648)), false), Struct_1(vec4<i32>(2147483647i, 1i, i32(-2147483648), i32(-2147483648)), 39596i), 551f, 29581u)), Struct_5(Struct_2(Struct_1(vec4<i32>(i32(-2147483648), 12351i, 0i, -1i), 1i), 265f, Struct_1(vec4<i32>(1i, i32(-2147483648), -4428i, -2601i), 36182i), true), Struct_4(Struct_2(Struct_1(vec4<i32>(-1i, -57212i, 19158i, 1i), 2147483647i), -1308f, Struct_1(vec4<i32>(-53095i, i32(-2147483648), 0i, 22379i), -89415i), false), Struct_1(vec4<i32>(1i, 60979i, 29708i, -1i), -23598i), -280f, 4294967295u)), Struct_5(Struct_2(Struct_1(vec4<i32>(-35036i, -1i, -7751i, -14988i), 0i), -673f, Struct_1(vec4<i32>(-18673i, 0i, 0i, -56738i), 2147483647i), false), Struct_4(Struct_2(Struct_1(vec4<i32>(-5488i, 1i, i32(-2147483648), -1179i), -31384i), 1736f, Struct_1(vec4<i32>(-1i, -23205i, 1i, -26258i), 32075i), false), Struct_1(vec4<i32>(-25148i, 7177i, -41327i, i32(-2147483648)), 2147483647i), -1000f, 38567u)), Struct_5(Struct_2(Struct_1(vec4<i32>(15355i, -1i, 2147483647i, 29948i), 24516i), 441f, Struct_1(vec4<i32>(0i, i32(-2147483648), 15352i, i32(-2147483648)), 2147483647i), false), Struct_4(Struct_2(Struct_1(vec4<i32>(i32(-2147483648), i32(-2147483648), i32(-2147483648), 2147483647i), 12042i), -1752f, Struct_1(vec4<i32>(-39184i, 0i, -10885i, -11311i), i32(-2147483648)), true), Struct_1(vec4<i32>(10879i, -1i, -4651i, -1i), -15459i), 1000f, 30351u)), Struct_5(Struct_2(Struct_1(vec4<i32>(i32(-2147483648), 0i, 12585i, -60075i), 0i), 704f, Struct_1(vec4<i32>(2147483647i, -1i, 27780i, 2147483647i), 2147483647i), false), Struct_4(Struct_2(Struct_1(vec4<i32>(2147483647i, i32(-2147483648), 1i, 47849i), 3570i), 1110f, Struct_1(vec4<i32>(-35278i, 0i, 71536i, 22722i), i32(-2147483648)), false), Struct_1(vec4<i32>(i32(-2147483648), -6577i, 2147483647i, -23635i), -15266i), -1808f, 57754u)), Struct_5(Struct_2(Struct_1(vec4<i32>(-30127i, -1i, 0i, 11354i), 29452i), 863f, Struct_1(vec4<i32>(0i, i32(-2147483648), -27308i, 0i), 2147483647i), false), Struct_4(Struct_2(Struct_1(vec4<i32>(-54897i, -1i, i32(-2147483648), 1i), -6935i), -467f, Struct_1(vec4<i32>(-1i, -1i, 31849i, 2147483647i), 16151i), false), Struct_1(vec4<i32>(35520i, 2147483647i, -16410i, -33278i), 17284i), 887f, 11003u)), Struct_5(Struct_2(Struct_1(vec4<i32>(59406i, -24385i, -1i, -49701i), i32(-2147483648)), -1000f, Struct_1(vec4<i32>(26180i, 9248i, -31563i, 2147483647i), 0i), false), Struct_4(Struct_2(Struct_1(vec4<i32>(23209i, -1i, 8501i, 17096i), 2147483647i), 1855f, Struct_1(vec4<i32>(-56985i, 29295i, 0i, -1i), 225i), false), Struct_1(vec4<i32>(-1627i, 8840i, 32944i, 34183i), 1i), -994f, 37526u)), Struct_5(Struct_2(Struct_1(vec4<i32>(i32(-2147483648), -1i, -23508i, 1i), 2147483647i), -143f, Struct_1(vec4<i32>(2147483647i, i32(-2147483648), i32(-2147483648), -1i), -55284i), false), Struct_4(Struct_2(Struct_1(vec4<i32>(-1i, 0i, 2147483647i, 17073i), -33366i), 1000f, Struct_1(vec4<i32>(0i, i32(-2147483648), 13135i, 13955i), -9645i), false), Struct_1(vec4<i32>(14340i, 36882i, -92106i, i32(-2147483648)), -1i), -1000f, 96006u)), Struct_5(Struct_2(Struct_1(vec4<i32>(0i, 2147483647i, 34872i, 2147483647i), -14142i), 937f, Struct_1(vec4<i32>(1i, 21781i, -66661i, i32(-2147483648)), -23519i), true), Struct_4(Struct_2(Struct_1(vec4<i32>(1i, -53729i, 2147483647i, 2147483647i), -1i), -969f, Struct_1(vec4<i32>(1i, 21990i, -1i, -1i), 58456i), true), Struct_1(vec4<i32>(i32(-2147483648), 0i, -81171i, -56409i), i32(-2147483648)), 125f, 1u)), Struct_5(Struct_2(Struct_1(vec4<i32>(i32(-2147483648), -43280i, 0i, -1i), 1i), -400f, Struct_1(vec4<i32>(-3841i, 3878i, 2147483647i, -4010i), 0i), true), Struct_4(Struct_2(Struct_1(vec4<i32>(15305i, -39186i, i32(-2147483648), 16834i), 32532i), -2566f, Struct_1(vec4<i32>(-63782i, i32(-2147483648), 21494i, 2147483647i), 35560i), false), Struct_1(vec4<i32>(0i, -1i, 4079i, -1i), -25071i), -1306f, 0u)), Struct_5(Struct_2(Struct_1(vec4<i32>(0i, 2147483647i, -25410i, 11987i), 0i), 465f, Struct_1(vec4<i32>(1i, -13592i, 1i, 4173i), 2147483647i), false), Struct_4(Struct_2(Struct_1(vec4<i32>(2147483647i, 31822i, 0i, -6028i), -14005i), -1265f, Struct_1(vec4<i32>(-7084i, -17399i, 0i, -1i), 23490i), true), Struct_1(vec4<i32>(1i, 2147483647i, 30285i, -41244i), 36239i), -1762f, 1u)), Struct_5(Struct_2(Struct_1(vec4<i32>(i32(-2147483648), 1i, 2147483647i, 2147483647i), -1i), -137f, Struct_1(vec4<i32>(-28850i, 0i, -45647i, -1i), -1i), true), Struct_4(Struct_2(Struct_1(vec4<i32>(0i, i32(-2147483648), -29474i, 1i), 47139i), -373f, Struct_1(vec4<i32>(24240i, 59342i, 0i, 0i), -23534i), true), Struct_1(vec4<i32>(46891i, -18260i, -37420i, i32(-2147483648)), -7335i), 442f, 1u)), Struct_5(Struct_2(Struct_1(vec4<i32>(1i, -18008i, -1i, -1i), 33496i), -500f, Struct_1(vec4<i32>(2147483647i, -1i, 70187i, i32(-2147483648)), 0i), false), Struct_4(Struct_2(Struct_1(vec4<i32>(2147483647i, 1i, 639i, 9232i), i32(-2147483648)), -1597f, Struct_1(vec4<i32>(-1i, 0i, -1i, 1708i), -1i), true), Struct_1(vec4<i32>(2147483647i, -57449i, -15908i, 0i), -230i), 316f, 3593u)), Struct_5(Struct_2(Struct_1(vec4<i32>(0i, 49044i, -12131i, -39493i), i32(-2147483648)), -365f, Struct_1(vec4<i32>(2147483647i, 2147483647i, -6262i, 1i), 1i), true), Struct_4(Struct_2(Struct_1(vec4<i32>(1i, -46239i, -49479i, 14081i), -19459i), -783f, Struct_1(vec4<i32>(1i, -53395i, -57434i, i32(-2147483648)), i32(-2147483648)), true), Struct_1(vec4<i32>(-86i, 1948i, 29482i, 23590i), 58744i), -379f, 12255u)), Struct_5(Struct_2(Struct_1(vec4<i32>(-1i, -86556i, 25244i, 0i), -51823i), -741f, Struct_1(vec4<i32>(-1i, 56318i, 10364i, -24877i), 0i), false), Struct_4(Struct_2(Struct_1(vec4<i32>(5416i, 1i, 0i, 2147483647i), 0i), -296f, Struct_1(vec4<i32>(i32(-2147483648), 12413i, 2147483647i, -1i), -13003i), false), Struct_1(vec4<i32>(-1i, 1i, 13198i, 60721i), -1i), 161f, 1u)), Struct_5(Struct_2(Struct_1(vec4<i32>(27937i, 0i, -22605i, 15704i), -1i), -1221f, Struct_1(vec4<i32>(2147483647i, 0i, 1i, 2147483647i), 1i), true), Struct_4(Struct_2(Struct_1(vec4<i32>(1i, 1i, -34952i, 43074i), 0i), -175f, Struct_1(vec4<i32>(1i, i32(-2147483648), 1i, -9675i), 41857i), true), Struct_1(vec4<i32>(2147483647i, 0i, 17454i, -1i), -4188i), 1157f, 0u)), Struct_5(Struct_2(Struct_1(vec4<i32>(-26141i, -51367i, 27351i, 1i), -40066i), -510f, Struct_1(vec4<i32>(-22275i, -998i, 1i, -1i), 27938i), false), Struct_4(Struct_2(Struct_1(vec4<i32>(0i, 19565i, -1926i, 17099i), i32(-2147483648)), 736f, Struct_1(vec4<i32>(1i, 2147483647i, 7790i, -1i), 73387i), false), Struct_1(vec4<i32>(18380i, 52193i, 2939i, 18183i), -1i), 224f, 26461u)));

var<private> global3: vec2<u32>;

var<private> global4: array<vec4<i32>, 26> = array<vec4<i32>, 26>(vec4<i32>(-1i, 0i, 2147483647i, -8998i), vec4<i32>(-21736i, -13316i, -32186i, 0i), vec4<i32>(0i, 0i, -14643i, 14956i), vec4<i32>(0i, 39325i, 49520i, -68179i), vec4<i32>(-2182i, 2147483647i, -1i, i32(-2147483648)), vec4<i32>(-1i, 1i, -10662i, 9065i), vec4<i32>(-39198i, 0i, -1i, -18471i), vec4<i32>(3444i, 0i, 20498i, 2147483647i), vec4<i32>(-44787i, 0i, 45856i, i32(-2147483648)), vec4<i32>(-24360i, -25496i, i32(-2147483648), -24012i), vec4<i32>(-40943i, -1i, 11871i, 4809i), vec4<i32>(1i, -1i, i32(-2147483648), 2147483647i), vec4<i32>(1i, 0i, -11111i, -2085i), vec4<i32>(1i, i32(-2147483648), 7051i, 31326i), vec4<i32>(-2981i, 1i, -23833i, -30810i), vec4<i32>(i32(-2147483648), 7352i, -4846i, 1i), vec4<i32>(-850i, -64266i, -41635i, 6090i), vec4<i32>(-1i, 2147483647i, i32(-2147483648), -22522i), vec4<i32>(0i, 0i, 2147483647i, 35334i), vec4<i32>(13114i, 2147483647i, i32(-2147483648), -25697i), vec4<i32>(46100i, -13377i, 8872i, 40347i), vec4<i32>(-9119i, 0i, 0i, -22129i), vec4<i32>(i32(-2147483648), i32(-2147483648), -67843i, 1i), vec4<i32>(-22162i, 23877i, 14611i, 0i), vec4<i32>(40679i, -2572i, 25891i, 1i), vec4<i32>(30813i, 0i, 10956i, -34468i));

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1533f, 440f, -782f) + vec3<f32>(-202f, -1727f, 1621f)))))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-881f * -685f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1188f - -669f), _wgslsmith_f_op_f32(max(-580f, -1827f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1092f - 108f) - _wgslsmith_f_op_f32(f32(-1f) * -895f)), 1064f), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -558f, -1000f, 1000f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1380f, -916f, 2487f, 1251f) - vec4<f32>(-208f, -1000f, -758f, 399f))) + vec4<f32>(-1000f, -346f, _wgslsmith_f_op_f32(f32(-1f) * -1322f), _wgslsmith_div_f32(269f, 889f))), true)));
}

