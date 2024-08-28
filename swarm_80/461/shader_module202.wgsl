struct Struct_1 {
    a: u32,
    b: i32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec4<f32>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: f32 = 108f;

var<private> global2: array<u32, 2> = array<u32, 2>(128189u, 15232u);

var<private> global3: array<vec3<f32>, 32> = array<vec3<f32>, 32>(vec3<f32>(-197f, 589f, 447f), vec3<f32>(960f, -1166f, -110f), vec3<f32>(140f, 439f, -1583f), vec3<f32>(-1218f, -191f, 921f), vec3<f32>(268f, 702f, 1805f), vec3<f32>(1000f, 358f, 514f), vec3<f32>(-1507f, -830f, -1168f), vec3<f32>(751f, -912f, -1239f), vec3<f32>(-680f, -2316f, 1000f), vec3<f32>(-392f, -492f, 1739f), vec3<f32>(-756f, -1434f, 677f), vec3<f32>(-937f, -1000f, -1233f), vec3<f32>(-1000f, -1380f, -498f), vec3<f32>(2354f, -777f, -567f), vec3<f32>(1000f, -448f, -664f), vec3<f32>(-701f, -1290f, 342f), vec3<f32>(-1172f, -830f, -1554f), vec3<f32>(1446f, -353f, -1326f), vec3<f32>(1469f, 1009f, 678f), vec3<f32>(-130f, -132f, 1184f), vec3<f32>(-280f, 830f, 973f), vec3<f32>(-621f, -723f, -1031f), vec3<f32>(494f, 1200f, -274f), vec3<f32>(537f, -258f, -288f), vec3<f32>(860f, -2046f, -528f), vec3<f32>(-1338f, 1083f, 118f), vec3<f32>(-149f, 892f, -952f), vec3<f32>(1174f, -208f, 1707f), vec3<f32>(988f, 470f, -277f), vec3<f32>(-2095f, -302f, 1179f), vec3<f32>(-1006f, -989f, 1904f), vec3<f32>(1233f, -284f, 2214f));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: f32) -> f32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global3[_wgslsmith_index_u32(~0u, 32u)] - global3[_wgslsmith_index_u32(u_input.a.x, 32u)]) + global3[_wgslsmith_index_u32(2032u, 32u)]);
    var var_1 = _wgslsmith_div_vec2_u32(u_input.a.yx, select(~(~u_input.a.zy), vec2<u32>(u_input.b ^ 42673u, ~global2[_wgslsmith_index_u32(u_input.b, 2u)]), false) << (u_input.a.yx % vec2<u32>(32u)));
    let var_2 = Struct_1(_wgslsmith_mod_u32(global2[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(~(1u ^ global2[_wgslsmith_index_u32(var_1.x, 2u)]), 2u)], 2u)], ~0u), 2147483647i);
    let var_3 = _wgslsmith_f_op_vec3_f32(-global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~(62866u & _wgslsmith_clamp_u32(global2[_wgslsmith_index_u32(48532u, 2u)], 50842u, var_1.x)), ~(~47651u) ^ global2[_wgslsmith_index_u32(~u_input.b, 2u)], (~var_2.a >> (4294967295u % 32u)) | 63707u), 32u)]);
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1188f + 1000f) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(var_3.x, var_0.x), _wgslsmith_f_op_f32(-var_3.x))))));
    return var_4;
}

fn func_1(arg_0: i32, arg_1: vec2<i32>, arg_2: u32, arg_3: bool) -> Struct_1 {
    let var_0 = vec3<bool>(arg_3, true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_2(-1000f)))) * 787f) < _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(-112f)))));
    return Struct_1(~(~(~min(u_input.b, 1u))), -(firstTrailingBit(arg_1.x) >> (1u % 32u)));
}

fn func_3(arg_0: vec3<u32>) -> vec2<i32> {
    var var_0 = Struct_2(!select(vec4<bool>(true, true, true, true), !select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false), true), vec4<bool>(true, true, true, true)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(684f + -2163f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(897f - 727f), -1190f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-556f + _wgslsmith_f_op_f32(trunc(-169f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-665f - -622f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -302f), _wgslsmith_f_op_f32(round(177f)))))));
    let var_1 = max(~(-firstLeadingBit(vec4<i32>(u_input.d, 2407i, 16128i, u_input.d) ^ vec4<i32>(-2147483647i, -1i, u_input.d, u_input.d))), vec4<i32>(1i, 3843i, _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(~u_input.c, u_input.c), vec2<i32>(i32(-1i) * -81254i, u_input.d)), reverseBits(1i)));
    let var_2 = u_input.d;
    var var_3 = firstTrailingBit(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a.x, 4294967295u, global2[_wgslsmith_index_u32(u_input.a.x, 2u)], u_input.b) & (vec4<u32>(0u, 4294967295u, arg_0.x, 19191u) >> (vec4<u32>(13223u, 4294967295u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(46202u, 2u)], 2u)], 1u) % vec4<u32>(32u))), reverseBits(_wgslsmith_mult_vec4_u32(vec4<u32>(80722u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 2u)], 2u)], 4294967295u, global2[_wgslsmith_index_u32(46410u, 2u)]), vec4<u32>(arg_0.x, arg_0.x, u_input.b, global2[_wgslsmith_index_u32(u_input.b, 2u)]))))) | ~(u_input.a.x & 38306u);
    var var_4 = Struct_3(_wgslsmith_sub_vec2_i32(var_1.ww, -vec2<i32>(~23792i, firstLeadingBit(u_input.d))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1488f), -450f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), 530f) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_0.b * var_0.b))), vec4<f32>(-526f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(455f + var_0.b.x)), _wgslsmith_f_op_f32(-var_0.b.x), -490f))));
    return vec2<i32>(_wgslsmith_add_i32(-_wgslsmith_mod_i32(-21272i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d, 31138i, var_4.a.x, u_input.c.x), vec4<i32>(-40994i, 21703i, var_4.a.x, 1i))), var_4.a.x), select(func_1(select(-var_4.a.x, var_2, true), vec2<i32>(_wgslsmith_clamp_i32(var_4.a.x, u_input.d, 1i), -14272i), u_input.b, any(vec4<bool>(var_0.a.x, false, var_0.a.x, true))).b, -var_4.a.x, true));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3, arg_2: f32, arg_3: Struct_3) -> bool {
    let var_0 = func_1(countOneBits(53621i), _wgslsmith_clamp_vec2_i32(arg_1.a, u_input.c, vec2<i32>(_wgslsmith_mult_i32(5118i, reverseBits(arg_1.a.x)), u_input.c.x)), global2[_wgslsmith_index_u32(max(global2[_wgslsmith_index_u32(firstLeadingBit(arg_0.a | 4294967295u), 2u)] & global2[_wgslsmith_index_u32(~(~0u), 2u)], 4294967295u), 2u)], true);
    global3 = array<vec3<f32>, 32>();
    global1 = arg_1.b.x;
    return !(var_0.a > ~var_0.a);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = any(vec4<bool>(true, false, _wgslsmith_mod_i32(_wgslsmith_sub_i32(u_input.c.x, 0i), 85138i) == (abs(23670i) >> (firstLeadingBit(32861u) % 32u)), func_4(func_1(u_input.d, -u_input.c, _wgslsmith_mult_u32(u_input.a.x, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 2u)], 2u)]), true), Struct_3(func_3(vec3<u32>(u_input.a.x, global2[_wgslsmith_index_u32(1u, 2u)], u_input.b)), _wgslsmith_div_vec4_f32(vec4<f32>(1351f, 643f, -227f, -2264f), vec4<f32>(-893f, 361f, -1770f, 1180f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(525f, -1029f) + _wgslsmith_f_op_f32(711f * -482f)), Struct_3(func_3(u_input.a), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(1500f, -1998f, 825f, -1000f), vec4<f32>(839f, -1388f, 714f, -1000f)))))));
    global1 = 1709f;
    let var_0 = Struct_2(select(select(vec4<bool>(true, all(vec2<bool>(true, false)), true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), select(vec4<bool>(all(vec3<bool>(false, false, false)), false, select(true, true, false), true), vec4<bool>(true, true, func_4(Struct_1(34239u, -30269i), Struct_3(u_input.c, vec4<f32>(1000f, 1000f, 1423f, -640f)), 1360f, Struct_3(vec2<i32>(-16759i, 0i), vec4<f32>(-2101f, -264f, 1270f, -197f))), true), any(vec4<bool>(false, false, false, true))), !vec4<bool>(true, any(vec2<bool>(true, false)), u_input.c.x != u_input.c.x, true)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(-984f, 284f, 539f, 154f) + vec4<f32>(1000f, 2351f, 1619f, -719f)))) + _wgslsmith_div_vec4_f32(vec4<f32>(-817f, -1189f, -591f, -1000f), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(462f, 1174f, 143f, -286f), vec4<f32>(1532f, 644f, 443f, 2075f))))) - _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(2952f, 420f, -350f, -1000f)))))));
    global3 = array<vec3<f32>, 32>();
    let var_1 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_0.b.x - -997f))) * var_0.b.x))), reverseBits(_wgslsmith_mod_i32(firstTrailingBit(~202i), _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(-16547i, u_input.c.x, 24044i), vec3<i32>(u_input.c.x, -3262i, u_input.c.x)), vec3<i32>(u_input.d, u_input.c.x, -1i)))));
}

