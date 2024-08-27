struct Struct_1 {
    a: i32,
    b: vec2<f32>,
}

struct Struct_2 {
    a: u32,
    b: vec4<u32>,
}

struct Struct_3 {
    a: bool,
    b: vec2<i32>,
    c: vec4<i32>,
    d: Struct_2,
}

struct Struct_4 {
    a: vec3<bool>,
    b: i32,
    c: i32,
}

struct Struct_5 {
    a: f32,
    b: f32,
    c: Struct_4,
    d: Struct_3,
    e: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 27> = array<f32, 27>(949f, -231f, 931f, -347f, 172f, -1451f, 167f, -441f, -1000f, 491f, 659f, 151f, 1345f, 1887f, -802f, -453f, -1334f, 1367f, 1000f, -456f, 1540f, -189f, -710f, -750f, 346f, -1000f, -375f);

var<private> global1: array<Struct_2, 13>;

var<private> global2: array<Struct_3, 29> = array<Struct_3, 29>(Struct_3(true, vec2<i32>(-18271i, 4208i), vec4<i32>(54426i, 24565i, 2147483647i, i32(-2147483648)), Struct_2(1u, vec4<u32>(0u, 35137u, 19895u, 29824u))), Struct_3(true, vec2<i32>(0i, -58469i), vec4<i32>(i32(-2147483648), 1327i, 1i, -26748i), Struct_2(68057u, vec4<u32>(4294967295u, 1u, 0u, 1u))), Struct_3(false, vec2<i32>(i32(-2147483648), 41086i), vec4<i32>(15769i, 23636i, 44583i, 2147483647i), Struct_2(46037u, vec4<u32>(37138u, 18535u, 9676u, 35496u))), Struct_3(true, vec2<i32>(-35357i, 5531i), vec4<i32>(2147483647i, -6151i, -44665i, i32(-2147483648)), Struct_2(47916u, vec4<u32>(136617u, 2113u, 4294967295u, 1u))), Struct_3(false, vec2<i32>(0i, 2147483647i), vec4<i32>(0i, 2147483647i, 2859i, -1i), Struct_2(1u, vec4<u32>(4294967295u, 25816u, 0u, 1u))), Struct_3(false, vec2<i32>(-23299i, 1i), vec4<i32>(-1i, i32(-2147483648), i32(-2147483648), 0i), Struct_2(1u, vec4<u32>(17477u, 75234u, 4294967295u, 126772u))), Struct_3(true, vec2<i32>(-35118i, -30072i), vec4<i32>(3624i, 11756i, 23807i, -58596i), Struct_2(0u, vec4<u32>(3187u, 62033u, 19329u, 0u))), Struct_3(true, vec2<i32>(-39452i, 2147483647i), vec4<i32>(-28159i, 11611i, 1i, -20515i), Struct_2(26143u, vec4<u32>(53358u, 38571u, 37067u, 95378u))), Struct_3(true, vec2<i32>(17331i, 15624i), vec4<i32>(2147483647i, 98491i, 9161i, -21545i), Struct_2(19824u, vec4<u32>(1u, 1u, 4294967295u, 108203u))), Struct_3(false, vec2<i32>(-5059i, -31730i), vec4<i32>(0i, 11901i, 8236i, -51584i), Struct_2(6979u, vec4<u32>(1476u, 52035u, 47553u, 1u))), Struct_3(false, vec2<i32>(-14801i, -26278i), vec4<i32>(i32(-2147483648), -41228i, 1i, 15587i), Struct_2(0u, vec4<u32>(56517u, 35969u, 1u, 4294967295u))), Struct_3(true, vec2<i32>(1i, 0i), vec4<i32>(-12824i, 2147483647i, 2147483647i, 67455i), Struct_2(4294967295u, vec4<u32>(1u, 54061u, 1u, 66158u))), Struct_3(false, vec2<i32>(1i, 13623i), vec4<i32>(0i, -1i, 2147483647i, -10759i), Struct_2(1u, vec4<u32>(19236u, 1u, 0u, 47885u))), Struct_3(false, vec2<i32>(0i, 13543i), vec4<i32>(-18620i, -9162i, 24764i, -3851i), Struct_2(4294967295u, vec4<u32>(122371u, 4294967295u, 4294967295u, 30894u))), Struct_3(false, vec2<i32>(-32508i, i32(-2147483648)), vec4<i32>(-16555i, 7630i, -1i, 0i), Struct_2(0u, vec4<u32>(64295u, 4294967295u, 62331u, 107776u))), Struct_3(false, vec2<i32>(1i, i32(-2147483648)), vec4<i32>(43293i, 1i, 0i, 0i), Struct_2(79770u, vec4<u32>(0u, 4294967295u, 1u, 19780u))), Struct_3(true, vec2<i32>(0i, 2147483647i), vec4<i32>(0i, 1i, 1i, -13334i), Struct_2(1u, vec4<u32>(0u, 0u, 0u, 0u))), Struct_3(true, vec2<i32>(13284i, 0i), vec4<i32>(i32(-2147483648), 31927i, 1i, -42071i), Struct_2(4294967295u, vec4<u32>(4294967295u, 0u, 49192u, 74901u))), Struct_3(true, vec2<i32>(5939i, -2285i), vec4<i32>(29927i, i32(-2147483648), 1i, 1i), Struct_2(10685u, vec4<u32>(0u, 0u, 51858u, 1u))), Struct_3(true, vec2<i32>(1i, -2607i), vec4<i32>(-9762i, 35713i, i32(-2147483648), 10282i), Struct_2(10938u, vec4<u32>(22987u, 25388u, 53695u, 1u))), Struct_3(true, vec2<i32>(-22558i, -12568i), vec4<i32>(-22184i, -13960i, -1i, 1124i), Struct_2(34756u, vec4<u32>(20481u, 28359u, 4294967295u, 25549u))), Struct_3(false, vec2<i32>(34744i, 7768i), vec4<i32>(-30485i, 2147483647i, -1i, -15312i), Struct_2(4294967295u, vec4<u32>(4294967295u, 24387u, 54909u, 72454u))), Struct_3(true, vec2<i32>(28535i, 2147483647i), vec4<i32>(-1i, 2147483647i, -28422i, 69153i), Struct_2(19756u, vec4<u32>(1u, 7858u, 1u, 44874u))), Struct_3(true, vec2<i32>(6897i, 0i), vec4<i32>(5503i, -32580i, -1i, 2377i), Struct_2(14767u, vec4<u32>(1u, 39058u, 1u, 0u))), Struct_3(false, vec2<i32>(-23786i, 2147483647i), vec4<i32>(11718i, i32(-2147483648), -40i, 47131i), Struct_2(0u, vec4<u32>(4294967295u, 23414u, 4294967295u, 29906u))), Struct_3(false, vec2<i32>(1i, 1i), vec4<i32>(85123i, i32(-2147483648), 2147483647i, 0i), Struct_2(1u, vec4<u32>(63691u, 14371u, 35968u, 1u))), Struct_3(true, vec2<i32>(1i, -1i), vec4<i32>(1i, 0i, 15123i, -1i), Struct_2(4534u, vec4<u32>(0u, 77015u, 0u, 2635u))), Struct_3(false, vec2<i32>(5560i, 1i), vec4<i32>(2147483647i, 32658i, i32(-2147483648), -40790i), Struct_2(1u, vec4<u32>(135748u, 0u, 0u, 66928u))), Struct_3(false, vec2<i32>(-1i, -23167i), vec4<i32>(-31165i, 1i, i32(-2147483648), 0i), Struct_2(67063u, vec4<u32>(30596u, 0u, 33596u, 57631u))));

var<private> global3: array<Struct_2, 12> = array<Struct_2, 12>(Struct_2(4294967295u, vec4<u32>(6512u, 1u, 0u, 0u)), Struct_2(4294967295u, vec4<u32>(59606u, 4119u, 1u, 1u)), Struct_2(52032u, vec4<u32>(15004u, 0u, 29563u, 0u)), Struct_2(1u, vec4<u32>(2593u, 1u, 62024u, 1u)), Struct_2(4389u, vec4<u32>(1u, 55096u, 4294967295u, 67368u)), Struct_2(4294967295u, vec4<u32>(9173u, 4294967295u, 1u, 49287u)), Struct_2(35909u, vec4<u32>(1u, 12945u, 0u, 10695u)), Struct_2(65132u, vec4<u32>(250u, 0u, 4294967295u, 23129u)), Struct_2(1u, vec4<u32>(49503u, 4294967295u, 4294967295u, 1u)), Struct_2(16711u, vec4<u32>(0u, 59739u, 27751u, 4294967295u)), Struct_2(1u, vec4<u32>(1372u, 120493u, 129u, 4294967295u)), Struct_2(1u, vec4<u32>(31561u, 1u, 48885u, 0u)));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: u32, arg_1: f32, arg_2: f32, arg_3: Struct_5) -> bool {
    global1 = array<Struct_2, 13>();
    global3 = array<Struct_2, 12>();
    var var_0 = vec4<f32>(arg_3.a, -269f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_1 + -185f), _wgslsmith_f_op_f32(round(arg_2))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1024f * 478f)))));
    var var_1 = reverseBits(countOneBits(arg_3.d.d.b.x));
    let var_2 = any(!(!arg_3.c.a));
    return any(select(select(!vec3<bool>(arg_3.c.a.x, false, var_2), vec3<bool>(true, false, var_2), arg_3.c.a), select(!vec3<bool>(true, false, var_2), !(!vec3<bool>(false, var_2, arg_3.d.a)), true), vec3<bool>(!(1000f == arg_3.a), true || any(vec4<bool>(arg_3.e.a.x, false, var_2, arg_3.e.a.x)), !var_2)));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_4, arg_2: vec4<i32>, arg_3: bool) -> u32 {
    global0 = array<f32, 27>();
    global0 = array<f32, 27>();
    global3 = array<Struct_2, 12>();
    global2 = array<Struct_3, 29>();
    let var_0 = all(vec4<bool>(func_3(1u, -354f, -314f, Struct_5(-409f, -334f, Struct_4(arg_1.a, arg_1.c, arg_1.b), Struct_3(arg_3, vec2<i32>(-26996i, arg_1.c), vec4<i32>(-4331i, -2147483647i, 15732i, 1i), Struct_2(19688u, vec4<u32>(48420u, 63893u, 28611u, 15933u))), Struct_4(vec3<bool>(true, false, arg_3), u_input.b, -2147483647i))) == (arg_0.a != 1i), false, arg_1.a.x, true));
    return firstLeadingBit(_wgslsmith_dot_vec4_u32(~u_input.c, min(u_input.c, _wgslsmith_mod_vec4_u32(u_input.c, vec4<u32>(u_input.a, u_input.d, 1u, u_input.d)))));
}

fn func_2(arg_0: vec4<f32>) -> i32 {
    let var_0 = Struct_1(1i, vec2<f32>(-616f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(4294967295u, 27u)] + -1182f))) * global0[_wgslsmith_index_u32(func_4(Struct_1(1i, arg_0.yx), Struct_4(vec3<bool>(true, false, false), u_input.b, 26697i), -vec4<i32>(-2147483647i, -1i, 2147483647i, 34381i), func_3(0u, 1106f, 1098f, Struct_5(arg_0.x, 1059f, Struct_4(vec3<bool>(false, false, false), 0i, 0i), Struct_3(false, vec2<i32>(-1i, u_input.b), vec4<i32>(1i, 33107i, u_input.b, u_input.b), global3[_wgslsmith_index_u32(u_input.c.x, 12u)]), Struct_4(vec3<bool>(true, false, true), u_input.b, u_input.b)))), 27u)])));
    var var_1 = arg_0.x;
    return var_0.a;
}

fn func_1() -> vec2<i32> {
    var var_0 = Struct_4(!select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), true), any(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false)))), u_input.b, ~u_input.b);
    let var_1 = Struct_1(34361i, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1129f, global0[_wgslsmith_index_u32(u_input.d, 27u)]) * _wgslsmith_f_op_f32(-354f - global0[_wgslsmith_index_u32(0u, 27u)])), _wgslsmith_div_f32(-421f, _wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(u_input.a, 27u)], global0[_wgslsmith_index_u32(4294967295u, 27u)])))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(u_input.d, 27u)], global0[_wgslsmith_index_u32(20366u, 27u)])) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(u_input.a, 27u)], -1556f))))));
    var var_2 = 1i;
    var var_3 = global0[_wgslsmith_index_u32(~u_input.c.x >> (u_input.d % 32u), 27u)];
    let var_4 = vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b.x) + -1000f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-558f * global0[_wgslsmith_index_u32(4294967295u, 27u)]), -1113f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(74374u, 27u)])))), var_0.a.x)), 585f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), var_1.b.x);
    return -select(~vec2<i32>(13099i, var_1.a) ^ _wgslsmith_mult_vec2_i32(abs(vec2<i32>(u_input.b, -61121i)), vec2<i32>(26570i, 2147483647i)), -vec2<i32>(select(u_input.b, -1i, false), func_2(vec4<f32>(global0[_wgslsmith_index_u32(u_input.d, 27u)], var_1.b.x, global0[_wgslsmith_index_u32(u_input.a, 27u)], 117f))), any(select(select(var_0.a, var_0.a, var_0.a.x), vec3<bool>(var_0.a.x, true, var_0.a.x), false | var_0.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_3, 29>();
    let var_0 = Struct_3(true, select(~(min(vec2<i32>(u_input.b, u_input.b), vec2<i32>(53134i, u_input.b)) >> (~u_input.c.xy % vec2<u32>(32u))), _wgslsmith_mod_vec2_i32(~vec2<i32>(u_input.b, 1i), ~vec2<i32>(u_input.b, u_input.b)) ^ _wgslsmith_mult_vec2_i32(func_1(), -vec2<i32>(-2147483647i, u_input.b)), !(!select(vec2<bool>(true, true), vec2<bool>(true, false), true))), -countOneBits(max(vec4<i32>(-1i, 0i, -28978i, u_input.b), countOneBits(vec4<i32>(u_input.b, -2147483647i, u_input.b, -2147483647i)))), Struct_2(9930u, ~u_input.c));
    var var_1 = Struct_1(~_wgslsmith_dot_vec2_i32(~vec2<i32>(var_0.c.x, 13072i) << (vec2<u32>(u_input.a, 1u) % vec2<u32>(32u)), ~var_0.b), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -307f), _wgslsmith_f_op_f32(ceil(234f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(123f, -1717f)))))));
    let var_2 = var_0.a;
    global3 = array<Struct_2, 12>();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(var_0.d.a, var_0.d.a, 29250u), select(abs(~vec4<u32>(0u, 0u, 4294967295u, u_input.c.x)), min(_wgslsmith_mod_vec4_u32(var_0.d.b, vec4<u32>(u_input.d, u_input.c.x, u_input.a, 4294967295u) & u_input.c), ~(~vec4<u32>(u_input.c.x, 6818u, 0u, 4294967295u))), var_2), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(~var_0.d.a, 39865u), 27u)], global0[_wgslsmith_index_u32(abs(_wgslsmith_sub_u32(var_0.d.a, 7592u)), 27u)], _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(1u, 27u)] + global0[_wgslsmith_index_u32(u_input.d, 27u)])))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_1.b.x, global0[_wgslsmith_index_u32(u_input.d, 27u)], var_1.b.x)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1122f, global0[_wgslsmith_index_u32(var_0.d.a, 27u)], global0[_wgslsmith_index_u32(u_input.a, 27u)]) * vec3<f32>(var_1.b.x, -1000f, global0[_wgslsmith_index_u32(0u, 27u)])))))));
}

