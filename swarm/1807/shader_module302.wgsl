struct Struct_1 {
    a: vec4<f32>,
    b: u32,
    c: vec4<bool>,
    d: vec2<i32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec2<f32>,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_1,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 23> = array<vec3<i32>, 23>(vec3<i32>(-6700i, -42110i, i32(-2147483648)), vec3<i32>(23241i, 1i, 25792i), vec3<i32>(-1i, -1i, 1i), vec3<i32>(1i, 1i, -1i), vec3<i32>(-17960i, -1i, -82083i), vec3<i32>(-25925i, 2147483647i, 2147483647i), vec3<i32>(1i, -1i, 0i), vec3<i32>(1i, -34893i, 21424i), vec3<i32>(11776i, -52126i, 2147483647i), vec3<i32>(26120i, 88336i, 2147483647i), vec3<i32>(0i, 30372i, i32(-2147483648)), vec3<i32>(1i, 610i, 2147483647i), vec3<i32>(421i, 20150i, -5322i), vec3<i32>(-2941i, 5608i, -27463i), vec3<i32>(10598i, 1i, 0i), vec3<i32>(i32(-2147483648), 7111i, -1i), vec3<i32>(16846i, i32(-2147483648), -22718i), vec3<i32>(0i, 1i, -1i), vec3<i32>(-1i, -1i, -9824i), vec3<i32>(-17751i, 1i, -23798i), vec3<i32>(61942i, i32(-2147483648), -1i), vec3<i32>(77612i, -37375i, 0i), vec3<i32>(-66425i, 0i, 14369i));

var<private> global1: Struct_3 = Struct_3(vec3<bool>(false, true, true));

var<private> global2: array<Struct_2, 15>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_3, arg_1: vec2<f32>, arg_2: bool, arg_3: vec4<f32>) -> vec4<u32> {
    global1 = Struct_3(global1.a);
    var var_0 = _wgslsmith_f_op_vec2_f32(-arg_3.wz);
    global2 = array<Struct_2, 15>();
    var var_1 = Struct_1(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(round(-635f))), _wgslsmith_f_op_f32(-118f * arg_3.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(var_0.x, -350f)), _wgslsmith_f_op_f32(ceil(var_0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), var_0.x), 81794u, select(select(select(vec4<bool>(global1.a.x, true, true, true), !vec4<bool>(false, global1.a.x, false, false), !vec4<bool>(global1.a.x, arg_2, true, false)), vec4<bool>(true | arg_2, any(vec4<bool>(false, global1.a.x, global1.a.x, false)), arg_3.x <= -1744f, true), !vec4<bool>(false, false, true, arg_0.a.x)), vec4<bool>(true, true, true, true), true), vec2<i32>(~1i, u_input.a.x));
    let var_2 = var_1.a.yy;
    return _wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(0u, var_1.b, 57545u, 0u | var_1.b), max(~vec4<u32>(106687u, var_1.b, 11842u, 79269u), _wgslsmith_div_vec4_u32(vec4<u32>(8385u, 44283u, var_1.b, var_1.b), vec4<u32>(0u, 1u, var_1.b, var_1.b)))), ~_wgslsmith_mod_vec4_u32(vec4<u32>(var_1.b, 5879u, var_1.b, 4294967295u), vec4<u32>(1u, 21778u, 1479u, 32099u) >> (vec4<u32>(48107u, var_1.b, 58917u, 4294967295u) % vec4<u32>(32u))), _wgslsmith_mod_vec4_u32(vec4<u32>(var_1.b, _wgslsmith_dot_vec3_u32(vec3<u32>(var_1.b, var_1.b, 0u), vec3<u32>(var_1.b, var_1.b, 1u)), 1u, var_1.b), vec4<u32>(var_1.b, var_1.b, var_1.b, 0u) >> (countOneBits(vec4<u32>(var_1.b, 19270u, var_1.b, 1u)) % vec4<u32>(32u)))), vec4<u32>(1u, ~_wgslsmith_add_u32(21259u, var_1.b), var_1.b, var_1.b), _wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(var_1.b, 0u, var_1.b, var_1.b), ~vec4<u32>(26143u, var_1.b, 4294967295u, 1u)), firstTrailingBit(select(vec4<u32>(1u, var_1.b, var_1.b, 31800u), vec4<u32>(80490u, 4294967295u, var_1.b, var_1.b), var_1.c))), vec4<u32>(var_1.b, ~var_1.b, ~2101u, firstLeadingBit(30853u) & var_1.b)));
}

fn func_2(arg_0: u32, arg_1: vec2<i32>, arg_2: Struct_1) -> vec3<bool> {
    global1 = Struct_3(vec3<bool>(!(!all(arg_2.c.wzy)), u_input.a.x == ~countOneBits(arg_1.x), 375f != _wgslsmith_f_op_f32(129f - _wgslsmith_f_op_f32(exp2(arg_2.a.x)))));
    let var_0 = true;
    global0 = array<vec3<i32>, 23>();
    let var_1 = arg_2;
    var var_2 = select(max(min(vec4<u32>(36940u, 43638u, 0u, 44064u), vec4<u32>(arg_0, 4294967295u, arg_0, arg_0)) ^ (vec4<u32>(arg_0, 0u, arg_2.b, 1u) >> (vec4<u32>(arg_2.b, var_1.b, 4279u, arg_2.b) % vec4<u32>(32u))), firstLeadingBit(func_3(Struct_3(var_1.c.xzz), vec2<f32>(arg_2.a.x, -220f), true, var_1.a))), vec4<u32>(arg_2.b, var_1.b, ~_wgslsmith_div_u32(0u, 61522u), ~arg_2.b), select(vec4<bool>(true, global1.a.x, true, true), var_1.c, false)) | vec4<u32>(firstLeadingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 20183u, var_1.b) | vec3<u32>(arg_2.b, 1u, 28909u), _wgslsmith_sub_vec3_u32(vec3<u32>(arg_0, arg_2.b, 4294967295u), vec3<u32>(0u, arg_2.b, 57784u)))), 1u, 24169u, 35818u);
    return !vec3<bool>(global1.a.x, true, global1.a.x);
}

fn func_1(arg_0: bool) -> vec4<bool> {
    var var_0 = vec3<bool>(!global1.a.x, global1.a.x && (false || arg_0), !arg_0);
    var_0 = func_2(max(abs(1u), ~87117u), vec2<i32>(firstLeadingBit(1i), u_input.b.x), Struct_1(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(2906f, 600f, 163f, -1081f) + vec4<f32>(1171f, 965f, 1000f, -690f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(498f, -309f, 544f, -2403f) + vec4<f32>(-119f, -1512f, 852f, -508f))))), 1u, !vec4<bool>(global1.a.x, u_input.b.x <= -1i, global1.a.x, false), countOneBits(u_input.a)));
    var var_1 = Struct_4(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1096f, 1000f))), 2202f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -273f), -1325f)), -541f), 70151u, vec4<bool>(true, var_0.x, true, global1.a.x), u_input.a), Struct_2(~vec4<u32>(_wgslsmith_mod_u32(0u, 4294967295u), abs(1u), ~21975u, firstLeadingBit(0u)), ~(-vec3<i32>(u_input.b.x, -1i, u_input.b.x) & _wgslsmith_div_vec3_i32(global0[_wgslsmith_index_u32(4294967295u, 23u)], global0[_wgslsmith_index_u32(4294967295u, 23u)])), _wgslsmith_div_vec2_f32(vec2<f32>(-454f, 1061f), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1558f, -2015f))))), Struct_1(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1f, 1f, 1f, 1f), vec4<f32>(1f, 1f, 1f, 1f))), ~reverseBits(1u), select(vec4<bool>(u_input.b.x <= -2147483647i, select(true, false, true), global1.a.x | var_0.x, true), !vec4<bool>(arg_0, false, true, global1.a.x), all(!vec4<bool>(true, global1.a.x, false, global1.a.x))), -(vec2<i32>(-28598i, 0i) ^ -u_input.b)), vec4<u32>(1u, firstTrailingBit(_wgslsmith_add_u32(38396u, _wgslsmith_div_u32(1u, 4294967295u))), 50229u, 1u));
    var var_2 = vec2<bool>(true, var_1.a.c.x);
    global2 = array<Struct_2, 15>();
    return var_1.a.c;
}

fn func_4(arg_0: Struct_1) -> Struct_3 {
    let var_0 = global2[_wgslsmith_index_u32(~0u, 15u)];
    var var_1 = _wgslsmith_add_u32(arg_0.b, ~27024u);
    global1 = Struct_3(!arg_0.c.zwy);
    var var_2 = Struct_4(Struct_1(arg_0.a, _wgslsmith_mult_u32(abs(abs(var_0.a.x)), 1u), !(!(!arg_0.c)), ~countOneBits(countOneBits(arg_0.d))), global2[_wgslsmith_index_u32(38954u >> (arg_0.b % 32u), 15u)], arg_0, ~reverseBits(abs(vec4<u32>(63388u, 13558u, 4294967295u, var_0.a.x))));
    global1 = Struct_3(global1.a);
    return Struct_3(select(func_1(!all(arg_0.c)).ywx, select(func_1(true).zyz, !(!global1.a), !var_2.a.c.x), vec3<bool>(global1.a.x, var_2.c.c.x, false)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_4(Struct_1(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1000f, _wgslsmith_f_op_f32(-1189f + 256f), _wgslsmith_f_op_f32(-1804f * -1001f), _wgslsmith_f_op_f32(ceil(275f))))), ~(~_wgslsmith_mult_u32(16606u, 85070u)), select(vec4<bool>(global1.a.x, false, true, !global1.a.x), select(!vec4<bool>(false, false, global1.a.x, true), select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, global1.a.x), global1.a.x), func_1(global1.a.x)), all(vec2<bool>(global1.a.x, global1.a.x))), firstLeadingBit(u_input.a | u_input.b)));
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(520f, -1249f, -795f, 416f))))), 133441u, !func_1(true), u_input.b);
    var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(var_0.a, var_0.a) - var_0.a))), _wgslsmith_dot_vec3_u32(vec3<u32>(~(~12165u), _wgslsmith_add_u32(var_0.b | 27365u, _wgslsmith_sub_u32(76783u, var_0.b)), 15335u), vec3<u32>(var_0.b, var_0.b, ~37557u)), var_0.c, ~min(~max(vec2<i32>(-1i, 2147483647i), u_input.b), var_0.d));
    let var_1 = false;
    var var_2 = vec4<i32>(_wgslsmith_clamp_i32(~(~u_input.a.x), 1i, -var_0.d.x) | var_0.d.x, u_input.a.x, abs(u_input.a.x), 0i);
    var var_3 = -1852i;
    var_0 = Struct_1(var_0.a, ~227u, vec4<bool>(true, true, true, true), _wgslsmith_mult_vec2_i32(u_input.b, reverseBits(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-9879i, 0i, var_2.x, 0i), vec4<i32>(7726i, u_input.b.x, var_0.d.x, 0i)), _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.d.x, var_2.x, -11239i, -53868i), vec4<i32>(u_input.a.x, 1i, -21228i, 31080i))))));
    let var_4 = var_2.x < _wgslsmith_dot_vec2_i32(~var_2.xx, select(select(select(vec2<i32>(-39842i, -2147483647i), vec2<i32>(23040i, var_2.x), var_1), vec2<i32>(var_0.d.x, -18662i) | u_input.b, any(vec2<bool>(true, false))), _wgslsmith_add_vec2_i32(vec2<i32>(var_2.x, 0i), min(var_2.wz, u_input.b)), vec2<bool>(any(vec3<bool>(var_0.c.x, true, var_0.c.x)), true)));
    global1 = func_4(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.x, var_0.a.x, 242f, -852f)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0.a.x, var_0.a.x, var_0.a.x, -625f))), false))), var_0.b | ~countOneBits(var_0.b), vec4<bool>(var_4, !(var_0.b > 16791u), !func_1(var_4).x, var_0.c.x), min(vec2<i32>(72321i, _wgslsmith_add_i32(u_input.b.x, var_2.x)), var_0.d)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(-16558i, _wgslsmith_add_i32(51751i, u_input.a.x), var_0.d.x));
}

