struct Struct_1 {
    a: bool,
    b: vec3<i32>,
    c: vec3<i32>,
    d: i32,
    e: bool,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec4<i32>,
    c: vec3<bool>,
}

struct Struct_3 {
    a: i32,
    b: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: i32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec4<i32>,
    d: f32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(true, vec3<i32>(-4372i, -1i, i32(-2147483648)), vec3<i32>(2147483647i, 17896i, -22674i), 0i, false), Struct_1(false, vec3<i32>(-1i, -15368i, 30466i), vec3<i32>(35648i, 2147483647i, -2838i), 3697i, false), Struct_1(false, vec3<i32>(-3294i, 12505i, i32(-2147483648)), vec3<i32>(0i, 2477i, -1i), -22967i, false), Struct_1(true, vec3<i32>(3562i, -45681i, 0i), vec3<i32>(1i, -49629i, -11064i), 2147483647i, true));

var<private> global1: array<i32, 8> = array<i32, 8>(i32(-2147483648), 8458i, 42653i, 4783i, 13087i, 24016i, i32(-2147483648), -1130i);

var<private> global2: array<vec2<u32>, 6> = array<vec2<u32>, 6>(vec2<u32>(1u, 7611u), vec2<u32>(1u, 36948u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(32999u, 1u), vec2<u32>(0u, 1u), vec2<u32>(51248u, 15650u));

var<private> global3: Struct_1 = Struct_1(false, vec3<i32>(39841i, 9658i, 0i), vec3<i32>(-9154i, -45966i, -6417i), -35305i, false);

var<private> global4: array<Struct_1, 27> = array<Struct_1, 27>(Struct_1(true, vec3<i32>(-1i, -10926i, -19152i), vec3<i32>(-41755i, -11319i, i32(-2147483648)), 8711i, true), Struct_1(true, vec3<i32>(37683i, -1i, 1i), vec3<i32>(-491i, i32(-2147483648), -15269i), 2147483647i, true), Struct_1(false, vec3<i32>(i32(-2147483648), 0i, -1i), vec3<i32>(-1i, -23177i, -12283i), i32(-2147483648), true), Struct_1(true, vec3<i32>(-1i, -3435i, -61838i), vec3<i32>(-6304i, 2147483647i, -36293i), 2147483647i, false), Struct_1(false, vec3<i32>(22334i, -70695i, -11616i), vec3<i32>(10953i, 75283i, -12065i), -10853i, true), Struct_1(true, vec3<i32>(-1i, -21898i, -1i), vec3<i32>(1i, i32(-2147483648), 21408i), 659i, false), Struct_1(true, vec3<i32>(28547i, 22247i, 12103i), vec3<i32>(2147483647i, i32(-2147483648), -1i), 3639i, true), Struct_1(false, vec3<i32>(0i, -17743i, 2147483647i), vec3<i32>(18082i, 53504i, i32(-2147483648)), 7936i, true), Struct_1(true, vec3<i32>(-11202i, -16231i, 44931i), vec3<i32>(-34625i, -42873i, 1i), 0i, false), Struct_1(false, vec3<i32>(-1i, 14376i, 20415i), vec3<i32>(i32(-2147483648), -1i, -1i), 14912i, true), Struct_1(true, vec3<i32>(i32(-2147483648), 30496i, 17254i), vec3<i32>(0i, -1i, -23477i), 26526i, true), Struct_1(false, vec3<i32>(-21616i, 29892i, -1i), vec3<i32>(-40336i, 2147483647i, 1i), 2147483647i, false), Struct_1(false, vec3<i32>(-13221i, i32(-2147483648), -31330i), vec3<i32>(2147483647i, -46855i, 2147483647i), -7892i, false), Struct_1(true, vec3<i32>(i32(-2147483648), 22305i, i32(-2147483648)), vec3<i32>(-18516i, 0i, 0i), 0i, false), Struct_1(false, vec3<i32>(0i, 16614i, -10388i), vec3<i32>(39940i, 20528i, -13637i), 2147483647i, false), Struct_1(false, vec3<i32>(-33175i, 1i, 0i), vec3<i32>(1i, 1i, -13273i), 13763i, true), Struct_1(false, vec3<i32>(1i, 73478i, 2147483647i), vec3<i32>(0i, 110231i, 1i), 1i, true), Struct_1(true, vec3<i32>(1i, i32(-2147483648), 23590i), vec3<i32>(-41213i, 2147483647i, -18992i), 16871i, true), Struct_1(true, vec3<i32>(-1i, 2147483647i, 0i), vec3<i32>(0i, 14932i, i32(-2147483648)), 0i, true), Struct_1(true, vec3<i32>(22767i, 1i, -80587i), vec3<i32>(1869i, -47183i, i32(-2147483648)), -6730i, false), Struct_1(true, vec3<i32>(-48075i, 2681i, i32(-2147483648)), vec3<i32>(-18434i, 19992i, 51827i), -1i, true), Struct_1(false, vec3<i32>(2147483647i, -1751i, 44256i), vec3<i32>(38384i, -1i, -16737i), -24116i, false), Struct_1(false, vec3<i32>(1721i, -1i, -5292i), vec3<i32>(1i, 47562i, -1i), 1i, true), Struct_1(true, vec3<i32>(i32(-2147483648), 50153i, 2147483647i), vec3<i32>(-1i, 1i, 2147483647i), -68038i, false), Struct_1(false, vec3<i32>(i32(-2147483648), 1i, -1i), vec3<i32>(-36047i, 0i, 62232i), 13588i, true), Struct_1(false, vec3<i32>(i32(-2147483648), 0i, 1i), vec3<i32>(1i, 1i, 16778i), 2147483647i, false), Struct_1(true, vec3<i32>(38323i, -18990i, 2147483647i), vec3<i32>(i32(-2147483648), 2147483647i, 68849i), 41565i, false));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: f32, arg_1: vec4<i32>, arg_2: f32, arg_3: Struct_3) -> vec4<i32> {
    var var_0 = u_input.e;
    global2 = array<vec2<u32>, 6>();
    let var_1 = vec2<bool>(false, all(vec4<bool>(!(global3.a && false), global3.a, any(vec4<bool>(global3.e, global3.a, global3.a, false)), true)));
    global0 = array<Struct_1, 4>();
    global1 = array<i32, 8>();
    return arg_1;
}

fn func_3(arg_0: u32, arg_1: vec2<i32>, arg_2: i32, arg_3: Struct_3) -> bool {
    var var_0 = ~vec4<i32>(~2147483647i, ~(~_wgslsmith_mod_i32(1i, -15818i)), _wgslsmith_clamp_i32(-1i, ~global1[_wgslsmith_index_u32(_wgslsmith_div_u32(45118u, 4331u), 8u)], _wgslsmith_sub_i32(arg_1.x, abs(global3.c.x))), reverseBits(abs(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_3.b, 906u, 995u, 10182u), u_input.a), 8u)])));
    let var_1 = vec2<bool>(true, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-668f, 393f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-657f * -1743f)))) < -720f);
    var_0 = firstTrailingBit(countOneBits(vec4<i32>(~_wgslsmith_mod_i32(-8042i, arg_1.x), 44901i, _wgslsmith_clamp_i32(_wgslsmith_sub_i32(44458i, 26844i), 23103i & arg_3.a, ~1i), _wgslsmith_clamp_i32(var_0.x, 2147483647i, 0i))));
    global3 = global4[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(firstLeadingBit(u_input.a.zy), vec2<u32>(u_input.d, 13961u)), _wgslsmith_mult_u32(1u, reverseBits(arg_3.b))), select(~arg_0, reverseBits(~1u), !var_1.x && (40018u < arg_3.b)), ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, u_input.e, 4294967295u) << (u_input.a.wwx % vec3<u32>(32u)), vec3<u32>(u_input.d, arg_3.b, 4294967295u))), vec3<u32>(abs(reverseBits(arg_3.b)), _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0, arg_0, 11588u, arg_3.b), vec4<u32>(0u, 1u, arg_0, 10299u)), _wgslsmith_mod_u32(max(arg_3.b, arg_3.b), 17032u)), _wgslsmith_mult_u32(firstLeadingBit(arg_0), firstTrailingBit(u_input.a.x)))), 27u)];
    var var_2 = max(global3.b.zy, -(u_input.b ^ ~abs(u_input.b)));
    return all(vec4<bool>(select(true, all(var_1), all(select(var_1, vec2<bool>(var_1.x, false), var_1.x))), var_1.x, true, true));
}

fn func_1() -> Struct_2 {
    global1 = array<i32, 8>();
    let var_0 = abs(firstTrailingBit(min(countOneBits(vec4<i32>(-1i, 0i, -2147483647i, -2147483647i)), reverseBits(vec4<i32>(u_input.b.x, u_input.b.x, 1i, global1[_wgslsmith_index_u32(u_input.d, 8u)]))) | (func_2(402f, vec4<i32>(-2147483647i, -29730i, global3.b.x, global3.d), 908f, Struct_3(-1i, 35571u)) & vec4<i32>(25425i, -14673i, 10984i, u_input.c))));
    global3 = global0[_wgslsmith_index_u32(~u_input.d, 4u)];
    global4 = array<Struct_1, 27>();
    var var_1 = Struct_3(_wgslsmith_mod_i32(var_0.x, -u_input.c) << (~reverseBits(~u_input.e) % 32u), 4294967295u);
    return Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-2056f, 277f, -615f) - vec3<f32>(-588f, 1075f, -1000f))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1043f, -683f, 929f), vec3<f32>(241f, -1000f, -1129f))))))), vec4<i32>(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u, var_1.b) & 14699u, 8u)], -2147483647i, reverseBits(_wgslsmith_add_i32(1i, var_1.a)), -1i) << (select(_wgslsmith_add_vec4_u32(u_input.a, vec4<u32>(var_1.b, var_1.b, var_1.b, var_1.b)) >> ((vec4<u32>(u_input.d, 0u, 1u, 2257u) | u_input.a) % vec4<u32>(32u)), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a.x, var_1.b, 1u, 40540u), vec4<u32>(24618u, 693u, u_input.a.x, var_1.b), vec4<u32>(4294967295u, 5128u, 4294967295u, u_input.e)), vec4<bool>(global3.e, global3.e, false, true)) % vec4<u32>(32u)), vec3<bool>(false, func_3(var_1.b, vec2<i32>(abs(global1[_wgslsmith_index_u32(35353u, 8u)]), 0i), var_1.a, Struct_3(-17978i | var_0.x, 32964u)), false));
}

fn func_4(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: Struct_3, arg_3: vec2<u32>) -> f32 {
    let var_0 = ~arg_2.a;
    global1 = array<i32, 8>();
    var var_1 = arg_0;
    global2 = array<vec2<u32>, 6>();
    global4 = array<Struct_1, 27>();
    return arg_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 4>();
    global0 = array<Struct_1, 4>();
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1889f + -1000f)), -1227f, _wgslsmith_f_op_f32(func_4(func_1(), _wgslsmith_f_op_vec4_f32(-vec4<f32>(681f, -139f, -634f, 1000f)), Struct_3(-18651i, u_input.a.x), _wgslsmith_mult_vec2_u32(global2[_wgslsmith_index_u32(5632u, 6u)], global2[_wgslsmith_index_u32(1u, 6u)]))), 1464f))) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(-1641f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1221f - _wgslsmith_f_op_f32(func_4(Struct_2(vec3<f32>(470f, 793f, 448f), vec4<i32>(-21346i, u_input.c, u_input.b.x, 18245i), vec3<bool>(false, global3.a, false)), vec4<f32>(404f, -617f, -1600f, -1642f), Struct_3(0i, u_input.a.x), global2[_wgslsmith_index_u32(4294967295u, 6u)])))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(-663f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * 519f) + -1744f)), -1279f));
    global2 = array<vec2<u32>, 6>();
    var var_1 = func_1();
    let var_2 = func_1().a.yz;
    var var_3 = -20151i;
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(~(~vec4<u32>(u_input.d, u_input.a.x, 1u, u_input.e))), var_1.b, _wgslsmith_mult_vec4_i32(-(~(~var_1.b)), ~reverseBits(vec4<i32>(global1[_wgslsmith_index_u32(u_input.e, 8u)], -5027i, -6325i, -40547i))), var_1.a.x, global2[_wgslsmith_index_u32(9151u, 6u)]);
}

