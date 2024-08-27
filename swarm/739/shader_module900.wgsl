struct Struct_1 {
    a: f32,
    b: u32,
    c: u32,
    d: vec3<bool>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: bool,
    d: i32,
    e: vec2<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 23> = array<Struct_3, 23>(Struct_3(Struct_1(-991f, 0u, 4294967295u, vec3<bool>(true, true, false), vec2<f32>(414f, 1005f)), 65296i), Struct_3(Struct_1(464f, 60366u, 96771u, vec3<bool>(false, false, false), vec2<f32>(-1000f, 413f)), -43782i), Struct_3(Struct_1(1376f, 4545u, 6071u, vec3<bool>(true, false, true), vec2<f32>(-929f, -1000f)), -61324i), Struct_3(Struct_1(955f, 0u, 6348u, vec3<bool>(false, false, true), vec2<f32>(1000f, 701f)), -63215i), Struct_3(Struct_1(1520f, 26524u, 0u, vec3<bool>(true, false, true), vec2<f32>(-847f, -2333f)), i32(-2147483648)), Struct_3(Struct_1(-830f, 70914u, 0u, vec3<bool>(false, false, true), vec2<f32>(-923f, -484f)), 12866i), Struct_3(Struct_1(-339f, 0u, 79560u, vec3<bool>(false, false, false), vec2<f32>(373f, -1548f)), 2147483647i), Struct_3(Struct_1(1164f, 4294967295u, 26398u, vec3<bool>(false, false, false), vec2<f32>(-1000f, 436f)), -16142i), Struct_3(Struct_1(1065f, 0u, 58132u, vec3<bool>(false, false, true), vec2<f32>(198f, -718f)), -2117i), Struct_3(Struct_1(-885f, 1u, 16613u, vec3<bool>(false, false, false), vec2<f32>(-1173f, -203f)), 44810i), Struct_3(Struct_1(-339f, 81707u, 15196u, vec3<bool>(false, true, true), vec2<f32>(1036f, -1904f)), 11664i), Struct_3(Struct_1(-901f, 0u, 29843u, vec3<bool>(false, true, false), vec2<f32>(1260f, -602f)), 2147483647i), Struct_3(Struct_1(-459f, 42667u, 9919u, vec3<bool>(false, false, false), vec2<f32>(-217f, -1209f)), -8442i), Struct_3(Struct_1(1070f, 66093u, 70639u, vec3<bool>(true, false, true), vec2<f32>(-1608f, 1126f)), 19311i), Struct_3(Struct_1(116f, 10060u, 33232u, vec3<bool>(false, true, false), vec2<f32>(-1000f, -1350f)), 2147483647i), Struct_3(Struct_1(768f, 0u, 1u, vec3<bool>(true, false, false), vec2<f32>(300f, -1000f)), 7765i), Struct_3(Struct_1(-731f, 8744u, 0u, vec3<bool>(false, false, false), vec2<f32>(-1000f, -283f)), 42567i), Struct_3(Struct_1(-358f, 94018u, 15481u, vec3<bool>(true, true, false), vec2<f32>(1891f, -1503f)), 2147483647i), Struct_3(Struct_1(815f, 14885u, 60511u, vec3<bool>(true, true, true), vec2<f32>(2200f, -361f)), i32(-2147483648)), Struct_3(Struct_1(1000f, 0u, 4294967295u, vec3<bool>(false, true, true), vec2<f32>(-3030f, 1769f)), 2147483647i), Struct_3(Struct_1(581f, 1u, 0u, vec3<bool>(true, true, false), vec2<f32>(-468f, -1526f)), -18386i), Struct_3(Struct_1(-1484f, 45500u, 28360u, vec3<bool>(false, true, true), vec2<f32>(-263f, -1000f)), 0i), Struct_3(Struct_1(2593f, 4294967295u, 54665u, vec3<bool>(true, false, false), vec2<f32>(-578f, -2417f)), 41769i));

var<private> global1: array<vec2<i32>, 6>;

var<private> global2: array<vec2<i32>, 18> = array<vec2<i32>, 18>(vec2<i32>(-45365i, -41043i), vec2<i32>(-32418i, -11732i), vec2<i32>(-14134i, 2147483647i), vec2<i32>(0i, 4081i), vec2<i32>(-38928i, -1677i), vec2<i32>(2147483647i, -15277i), vec2<i32>(2147483647i, 16668i), vec2<i32>(57425i, -33206i), vec2<i32>(-21313i, 36725i), vec2<i32>(5977i, 22335i), vec2<i32>(2147483647i, 0i), vec2<i32>(-17268i, 21382i), vec2<i32>(i32(-2147483648), 4797i), vec2<i32>(2147483647i, 16014i), vec2<i32>(-4305i, 1i), vec2<i32>(-1i, -28088i), vec2<i32>(0i, -10487i), vec2<i32>(34850i, 48829i));

var<private> global3: array<vec3<i32>, 25> = array<vec3<i32>, 25>(vec3<i32>(2147483647i, -12091i, i32(-2147483648)), vec3<i32>(2147483647i, 0i, i32(-2147483648)), vec3<i32>(i32(-2147483648), i32(-2147483648), 0i), vec3<i32>(-1i, -26657i, i32(-2147483648)), vec3<i32>(1i, i32(-2147483648), 13448i), vec3<i32>(0i, 2147483647i, -26931i), vec3<i32>(2147483647i, 1i, 1i), vec3<i32>(2147483647i, -28847i, 9005i), vec3<i32>(13193i, -16254i, 19062i), vec3<i32>(i32(-2147483648), 2147483647i, 0i), vec3<i32>(i32(-2147483648), 0i, 15255i), vec3<i32>(-17938i, 11351i, 6870i), vec3<i32>(23916i, 0i, -12573i), vec3<i32>(-37080i, 26692i, -1i), vec3<i32>(23783i, 41382i, 22700i), vec3<i32>(42470i, i32(-2147483648), 1i), vec3<i32>(34281i, -43275i, 2147483647i), vec3<i32>(0i, 3323i, -48740i), vec3<i32>(i32(-2147483648), -1i, -31942i), vec3<i32>(-505i, 1i, -65028i), vec3<i32>(5861i, 0i, 1i), vec3<i32>(11038i, i32(-2147483648), 0i), vec3<i32>(-16079i, 1i, 9821i), vec3<i32>(-37428i, -33379i, -27421i), vec3<i32>(1i, -31487i, 1i));

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> vec4<bool> {
    var var_0 = -_wgslsmith_mod_i32(max(u_input.a, -select(u_input.a, 1i, false)), min(abs(-u_input.a), u_input.a));
    let var_1 = global0[_wgslsmith_index_u32(abs(1u ^ select(~(~1u), 38141u, any(vec3<bool>(true, true, true)))), 23u)];
    global1 = array<vec2<i32>, 6>();
    var var_2 = any(select(vec3<bool>(false, true, !var_1.a.d.x), !select(select(var_1.a.d, var_1.a.d, true), !vec3<bool>(var_1.a.d.x, false, var_1.a.d.x), var_1.a.d.x && false), vec3<bool>(var_1.a.d.x, true, false)));
    let var_3 = Struct_3(var_1.a, _wgslsmith_add_i32(var_1.b, ~1i));
    return select(vec4<bool>(var_3.a.d.x | !var_1.a.d.x, false, var_3.a.d.x, !all(select(vec3<bool>(true, var_1.a.d.x, var_3.a.d.x), var_3.a.d, var_3.a.d.x))), !select(!(!vec4<bool>(var_1.a.d.x, var_3.a.d.x, var_3.a.d.x, var_3.a.d.x)), !(!vec4<bool>(false, false, true, var_1.a.d.x)), var_3.a.d.x), vec4<bool>(!var_3.a.d.x, true, true, true));
}

fn func_2(arg_0: i32) -> u32 {
    global0 = array<Struct_3, 23>();
    global2 = array<vec2<i32>, 18>();
    var var_0 = func_3();
    return max(~1u, abs(~(~88365u)));
}

fn func_1() -> vec3<bool> {
    global0 = array<Struct_3, 23>();
    global3 = array<vec3<i32>, 25>();
    let var_0 = reverseBits(_wgslsmith_sub_u32(_wgslsmith_mult_u32(_wgslsmith_mod_u32(~11340u, 46619u << (1u % 32u)), func_2(u_input.a) << (firstTrailingBit(14185u) % 32u)), 1u));
    var var_1 = _wgslsmith_mult_i32(-35509i, u_input.a);
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1941f, 439f, -776f, 1629f) * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-402f, -1036f, 231f, -2428f), vec4<f32>(-844f, 553f, -966f, 1209f))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(764f, 881f, -618f, -326f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1100f, -299f, 284f, -370f)), true)) * _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-885f, 2877f, -552f, -255f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1332f, 983f, 632f, 1309f) * vec4<f32>(1405f, 1714f, 490f, 458f)))))));
    return !vec3<bool>(!all(vec3<bool>(true, true, true)), all(vec3<bool>(true, true, any(vec3<bool>(false, false, false)))), true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-114f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1000f * 1000f), _wgslsmith_f_op_f32(-1210f * -1169f))) + _wgslsmith_f_op_f32(step(204f, -2746f)))), _wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 1u, 1u) & _wgslsmith_mult_vec3_u32(vec3<u32>(1u, 1u, 1u), _wgslsmith_clamp_vec3_u32(vec3<u32>(74u, 0u, 33860u), vec3<u32>(32454u, 0u, 57362u), vec3<u32>(28494u, 1u, 4918u))), firstLeadingBit(~(~vec3<u32>(0u, 28479u, 1u)))), ~_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(~vec3<u32>(0u, 15746u, 1u), ~vec3<u32>(73830u, 0u, 48507u)), vec3<u32>(~0u, _wgslsmith_add_u32(10876u, 35376u), 1u)), !(!select(vec3<bool>(true, true, true), func_1(), true)), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(706f, -387f))), _wgslsmith_f_op_f32(f32(-1f) * -596f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-329f, _wgslsmith_f_op_f32(floor(319f))))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-609f + _wgslsmith_f_op_f32(f32(-1f) * -562f)));
    var var_2 = ~(~firstTrailingBit(reverseBits(vec3<u32>(0u, var_0.c, var_0.b))) | vec3<u32>(~(~8323u), _wgslsmith_clamp_u32(var_0.b, _wgslsmith_clamp_u32(4294967295u, var_0.c, 51150u), 0u >> (var_0.c % 32u)), 13908u ^ var_0.b));
    global3 = array<vec3<i32>, 25>();
    global1 = array<vec2<i32>, 6>();
    var var_3 = -1i;
    let var_4 = select(var_0.d.x, true, false);
    var var_5 = !(true || (_wgslsmith_f_op_f32(-var_0.e.x) >= var_0.e.x)) | var_4;
    var var_6 = -_wgslsmith_sub_vec2_i32(select(-(global1[_wgslsmith_index_u32(var_2.x, 6u)] & global1[_wgslsmith_index_u32(7184u, 6u)]), vec2<i32>(i32(-1i) * -7306i, _wgslsmith_clamp_i32(u_input.a, u_input.a, u_input.a)), var_4), abs(_wgslsmith_mod_vec2_i32(global2[_wgslsmith_index_u32(select(4294967295u, var_2.x, var_0.d.x), 18u)], min(vec2<i32>(u_input.a, u_input.a), vec2<i32>(-31055i, u_input.a)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(select(~u_input.a, _wgslsmith_sub_i32(12171i, u_input.a) & -1i, false), _wgslsmith_dot_vec2_i32(firstTrailingBit(~vec2<i32>(u_input.a, -2147483647i)), _wgslsmith_sub_vec2_i32(_wgslsmith_clamp_vec2_i32(global1[_wgslsmith_index_u32(var_2.x, 6u)], global2[_wgslsmith_index_u32(var_2.x, 18u)], global2[_wgslsmith_index_u32(var_2.x, 18u)]), vec2<i32>(-1i, -26585i)))));
}

