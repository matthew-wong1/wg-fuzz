struct Struct_1 {
    a: vec2<u32>,
    b: vec3<u32>,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: f32,
    b: Struct_1,
}

struct Struct_5 {
    a: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 16> = array<Struct_4, 16>(Struct_4(774f, Struct_1(vec2<u32>(9449u, 50672u), vec3<u32>(1u, 21027u, 31677u), 43313u)), Struct_4(174f, Struct_1(vec2<u32>(1286u, 36825u), vec3<u32>(36427u, 24729u, 4294967295u), 4294967295u)), Struct_4(678f, Struct_1(vec2<u32>(1u, 21390u), vec3<u32>(38285u, 4294967295u, 25641u), 1u)), Struct_4(-640f, Struct_1(vec2<u32>(12329u, 1u), vec3<u32>(4294967295u, 4201u, 0u), 11666u)), Struct_4(-556f, Struct_1(vec2<u32>(4294967295u, 35981u), vec3<u32>(26840u, 1u, 4294967295u), 1u)), Struct_4(1000f, Struct_1(vec2<u32>(4294967295u, 55527u), vec3<u32>(96110u, 74533u, 1u), 73113u)), Struct_4(-1301f, Struct_1(vec2<u32>(15574u, 1u), vec3<u32>(7626u, 1u, 4294967295u), 2781u)), Struct_4(1176f, Struct_1(vec2<u32>(4294967295u, 4294967295u), vec3<u32>(0u, 0u, 4294967295u), 5752u)), Struct_4(1000f, Struct_1(vec2<u32>(0u, 1u), vec3<u32>(1035u, 14950u, 75628u), 100946u)), Struct_4(691f, Struct_1(vec2<u32>(4294967295u, 32573u), vec3<u32>(0u, 11425u, 1u), 0u)), Struct_4(564f, Struct_1(vec2<u32>(16451u, 0u), vec3<u32>(1u, 4294967295u, 1u), 28758u)), Struct_4(-995f, Struct_1(vec2<u32>(0u, 4294967295u), vec3<u32>(0u, 1u, 1u), 28324u)), Struct_4(1996f, Struct_1(vec2<u32>(4294967295u, 1u), vec3<u32>(74665u, 1u, 18020u), 0u)), Struct_4(635f, Struct_1(vec2<u32>(4294967295u, 1u), vec3<u32>(0u, 146205u, 8890u), 1u)), Struct_4(-936f, Struct_1(vec2<u32>(1u, 4294967295u), vec3<u32>(4294967295u, 1u, 63970u), 0u)), Struct_4(1528f, Struct_1(vec2<u32>(86548u, 1u), vec3<u32>(1u, 4294967295u, 0u), 29392u)));

var<private> global1: Struct_2;

var<private> global2: array<vec3<i32>, 28> = array<vec3<i32>, 28>(vec3<i32>(-1i, 0i, 1i), vec3<i32>(26272i, i32(-2147483648), 0i), vec3<i32>(1i, 0i, -1i), vec3<i32>(2147483647i, -1i, -12361i), vec3<i32>(35350i, -48957i, -1i), vec3<i32>(1i, 0i, 2147483647i), vec3<i32>(-1i, -43908i, 0i), vec3<i32>(0i, -61275i, i32(-2147483648)), vec3<i32>(i32(-2147483648), 16060i, -85682i), vec3<i32>(i32(-2147483648), 10213i, 16533i), vec3<i32>(-42010i, -49751i, 2147483647i), vec3<i32>(0i, -58039i, 2147483647i), vec3<i32>(16514i, -55074i, i32(-2147483648)), vec3<i32>(-36940i, 16123i, i32(-2147483648)), vec3<i32>(3282i, -51670i, 0i), vec3<i32>(-1i, 2147483647i, 5294i), vec3<i32>(-1535i, 1i, 1i), vec3<i32>(-31199i, -38083i, 31039i), vec3<i32>(-11881i, 2147483647i, 2147483647i), vec3<i32>(-1i, -3201i, 5082i), vec3<i32>(-1i, 1i, i32(-2147483648)), vec3<i32>(2147483647i, 2147483647i, i32(-2147483648)), vec3<i32>(i32(-2147483648), 1i, -28806i), vec3<i32>(14743i, -24899i, i32(-2147483648)), vec3<i32>(2147483647i, 2147483647i, -1i), vec3<i32>(39645i, -23953i, 1i), vec3<i32>(i32(-2147483648), -44456i, 41329i), vec3<i32>(0i, 1i, 7234i));

var<private> global3: bool;

var<private> global4: u32;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> u32 {
    var var_0 = global0[_wgslsmith_index_u32(~global1.d.b.x & ~(23749u >> (~4294967295u % 32u)), 16u)];
    return _wgslsmith_dot_vec4_u32(~_wgslsmith_mult_vec4_u32(firstTrailingBit(vec4<u32>(global1.d.b.x, var_0.b.b.x, global1.a.a.x, 6432u)), _wgslsmith_mult_vec4_u32(vec4<u32>(var_0.b.a.x, 1u, global1.b.c, 0u), vec4<u32>(u_input.a.x, 4294967295u, var_0.b.c, 4294967295u))), vec4<u32>(22304u, _wgslsmith_mult_u32(global1.b.c >> (global1.b.b.x % 32u), ~73267u), 1061u, ~_wgslsmith_clamp_u32(0u, u_input.a.x, 1u)) & vec4<u32>(_wgslsmith_dot_vec2_u32(~u_input.a, abs(vec2<u32>(u_input.a.x, u_input.a.x))), _wgslsmith_div_u32(var_0.b.b.x, ~var_0.b.b.x), _wgslsmith_dot_vec3_u32(firstLeadingBit(global1.a.b), ~vec3<u32>(u_input.a.x, var_0.b.b.x, 1u)), u_input.a.x));
}

fn func_2(arg_0: bool, arg_1: vec2<i32>) -> Struct_3 {
    let var_0 = Struct_3(_wgslsmith_clamp_u32(firstTrailingBit(~0u), 1u, u_input.a.x >> (global1.b.a.x % 32u)) | ~1u);
    global3 = all(!(!(!select(vec4<bool>(arg_0, arg_0, true, false), vec4<bool>(arg_0, arg_0, true, true), arg_0))));
    global1 = Struct_2(Struct_1(vec2<u32>(23275u, select(4294967295u, 4294967295u, any(vec2<bool>(true, true)))), vec3<u32>(u_input.a.x, func_3(), 1u & global1.b.a.x), 4294967295u), global1.d, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.c.x) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global1.c.x), 1000f))), -559f), global1.a);
    let var_1 = global1.c.x;
    var var_2 = _wgslsmith_clamp_u32(global1.b.b.x, 18466u, _wgslsmith_dot_vec4_u32(abs(vec4<u32>(60729u, 4294967295u, 4294967295u, var_0.a)), ~(vec4<u32>(global1.d.c, global1.b.c, var_0.a, global1.d.a.x) << (vec4<u32>(1u, u_input.a.x, u_input.a.x, 33690u) % vec4<u32>(32u))))) & _wgslsmith_clamp_u32(global1.d.b.x, 1u, 9063u);
    return Struct_3(var_0.a ^ global1.b.c);
}

fn func_4(arg_0: Struct_3, arg_1: Struct_4, arg_2: Struct_2, arg_3: f32) -> bool {
    let var_0 = func_2(true, max(vec2<i32>(u_input.d.x, u_input.b), vec2<i32>(_wgslsmith_sub_i32(~u_input.d.x, 1i), u_input.c))).a;
    let var_1 = abs(~global1.d.a);
    var var_2 = _wgslsmith_mod_vec4_u32(min(countOneBits(firstLeadingBit(abs(vec4<u32>(global1.d.a.x, arg_1.b.b.x, arg_2.b.a.x, 0u)))), vec4<u32>(var_0, 0u, 126953u, ~9856u) & _wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(22123u, 1u, 73591u, arg_0.a), vec4<u32>(arg_2.d.b.x, arg_2.a.a.x, u_input.a.x, 6914u)), countOneBits(vec4<u32>(49598u, arg_1.b.b.x, 44152u, var_0)))), firstTrailingBit(min(~(~vec4<u32>(var_1.x, 0u, arg_2.d.c, 13752u)), ~(~vec4<u32>(6680u, 21021u, 38091u, 4294967295u)))));
    global3 = !(arg_0.a < ~(~reverseBits(45615u)));
    var var_3 = vec4<u32>(firstTrailingBit(49195u) >> (arg_2.d.b.x % 32u), ~(~var_2.x), firstLeadingBit(~0u >> (_wgslsmith_mult_u32(var_2.x, var_2.x) % 32u)), 67049u) ^ (_wgslsmith_mod_vec4_u32(vec4<u32>(var_2.x, arg_1.b.a.x >> (var_2.x % 32u), firstLeadingBit(arg_1.b.a.x), min(1u, 60005u)), firstLeadingBit(~vec4<u32>(0u, arg_2.d.c, arg_1.b.a.x, var_1.x))) | ~(~vec4<u32>(var_0, 58905u, var_1.x, var_2.x)));
    return false;
}

fn func_1(arg_0: Struct_4, arg_1: u32, arg_2: u32, arg_3: vec4<bool>) -> Struct_5 {
    let var_0 = -max(-(~_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.c, -1i, -39224i, u_input.c), vec4<i32>(-87114i, u_input.b, 2147483647i, 52746i))), max(-vec4<i32>(1i, u_input.c, 1i, u_input.b), vec4<i32>(-19945i, 2147483647i, u_input.d.x, 1i)) << (~(~vec4<u32>(4294967295u, 29072u, 657u, arg_2)) % vec4<u32>(32u)));
    var var_1 = !func_4(func_2(true, var_0.ww), Struct_4(global1.c.x, global1.d), Struct_2(global1.a, Struct_1(countOneBits(vec2<u32>(4294967295u, 64424u)), vec3<u32>(global1.b.a.x, arg_1, 36083u), global1.b.b.x), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.c.x, global1.c.x)), _wgslsmith_f_op_vec2_f32(-global1.c))), global1.a), _wgslsmith_f_op_f32(-1000f * global1.c.x));
    var var_2 = Struct_5(!arg_3.x);
    var var_3 = Struct_2(Struct_1(firstLeadingBit(reverseBits(vec2<u32>(arg_2, arg_2)) & ~u_input.a), arg_0.b.b, abs(4294967295u)), global1.d, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(879f, _wgslsmith_f_op_f32(floor(arg_0.a))) - _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(global1.c.x, global1.c.x), vec2<f32>(arg_0.a, -148f))))))), Struct_1(vec2<u32>(0u, 53991u), vec3<u32>(_wgslsmith_dot_vec3_u32(arg_0.b.b, arg_0.b.b), ~global1.d.a.x, _wgslsmith_div_u32(29229u, 11609u)) | (_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, arg_2, 14878u), arg_0.b.b) ^ ~global1.a.b), min(0u, 34821u ^ arg_0.b.c) ^ _wgslsmith_mod_u32(u_input.a.x, arg_1)));
    let var_4 = var_2.a;
    return Struct_5(any(!select(vec4<bool>(arg_3.x, false, var_2.a, var_2.a), vec4<bool>(true, arg_3.x, var_2.a, true), var_2.a)));
}

fn func_5(arg_0: i32, arg_1: Struct_5) -> StorageBuffer {
    return StorageBuffer(-261f, firstLeadingBit(min(_wgslsmith_sub_vec3_i32(global2[_wgslsmith_index_u32(35315u, 28u)], vec3<i32>(arg_0, -56147i, -5888i)), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(18533u, 0u, global1.b.a.x), global1.d.b), 28u)]) ^ ~(-vec3<i32>(34472i, 1i, arg_0))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_5(~(u_input.d.x >> (abs(1u) % 32u)), func_1(global0[_wgslsmith_index_u32(1u, 16u)], u_input.a.x, firstLeadingBit(_wgslsmith_sub_u32(u_input.a.x, ~global1.a.a.x)), !vec4<bool>(all(vec4<bool>(false, false, false, true)), 302f > global1.c.x, true, false)));
}

