struct Struct_1 {
    a: u32,
    b: vec3<u32>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec3<f32>,
    c: Struct_1,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
    d: Struct_1,
    e: f32,
}

struct Struct_4 {
    a: vec4<bool>,
    b: vec2<f32>,
    c: vec4<f32>,
    d: Struct_2,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 10> = array<Struct_2, 10>(Struct_2(vec4<i32>(-1i, i32(-2147483648), -1i, i32(-2147483648)), vec3<f32>(-137f, 1753f, 169f), Struct_1(3236u, vec3<u32>(0u, 13214u, 58578u), vec2<i32>(39357i, -1i)), Struct_1(4294967295u, vec3<u32>(63490u, 54295u, 1u), vec2<i32>(13975i, 1i)), 94985u), Struct_2(vec4<i32>(i32(-2147483648), 1i, 2147483647i, -1i), vec3<f32>(1000f, 1645f, 181f), Struct_1(50075u, vec3<u32>(20066u, 4294967295u, 0u), vec2<i32>(0i, 1i)), Struct_1(4294967295u, vec3<u32>(27348u, 1u, 4294967295u), vec2<i32>(89486i, -1i)), 87870u), Struct_2(vec4<i32>(1i, 0i, 15099i, -5402i), vec3<f32>(1188f, -1594f, -495f), Struct_1(0u, vec3<u32>(4294967295u, 4294967295u, 4294967295u), vec2<i32>(-1i, 48891i)), Struct_1(1u, vec3<u32>(0u, 42723u, 4158u), vec2<i32>(0i, 12347i)), 0u), Struct_2(vec4<i32>(1i, 2147483647i, 33660i, 0i), vec3<f32>(473f, -1624f, 243f), Struct_1(1u, vec3<u32>(46479u, 5454u, 15844u), vec2<i32>(2147483647i, 1i)), Struct_1(45547u, vec3<u32>(41737u, 2291u, 1u), vec2<i32>(-1i, 47040i)), 11184u), Struct_2(vec4<i32>(36818i, 1i, -37113i, 2147483647i), vec3<f32>(-1061f, -2944f, -1000f), Struct_1(4294967295u, vec3<u32>(4294967295u, 39540u, 0u), vec2<i32>(42269i, -1019i)), Struct_1(4294967295u, vec3<u32>(4294967295u, 4294967295u, 4294967295u), vec2<i32>(-28723i, i32(-2147483648))), 0u), Struct_2(vec4<i32>(-1i, 2147483647i, -28160i, -10867i), vec3<f32>(1140f, 1618f, -445f), Struct_1(1u, vec3<u32>(57645u, 101143u, 4294967295u), vec2<i32>(-43056i, -1i)), Struct_1(1u, vec3<u32>(84835u, 4294967295u, 62948u), vec2<i32>(-1i, 20443i)), 1u), Struct_2(vec4<i32>(-9206i, 73528i, 3919i, 2147483647i), vec3<f32>(-1511f, -447f, 165f), Struct_1(4294967295u, vec3<u32>(1u, 20835u, 932u), vec2<i32>(17273i, 1i)), Struct_1(26421u, vec3<u32>(69204u, 0u, 26234u), vec2<i32>(-1i, -2112i)), 4294967295u), Struct_2(vec4<i32>(7196i, 1i, 2147483647i, 1i), vec3<f32>(-1673f, -165f, 1036f), Struct_1(106393u, vec3<u32>(0u, 1u, 4294967295u), vec2<i32>(17567i, 41708i)), Struct_1(1u, vec3<u32>(23678u, 17657u, 4294967295u), vec2<i32>(1i, 2147483647i)), 0u), Struct_2(vec4<i32>(17542i, -11982i, 12053i, -29638i), vec3<f32>(-262f, -674f, -406f), Struct_1(6249u, vec3<u32>(40746u, 114854u, 58853u), vec2<i32>(-20315i, -1i)), Struct_1(1u, vec3<u32>(0u, 46852u, 4294967295u), vec2<i32>(-1i, 5206i)), 4294967295u), Struct_2(vec4<i32>(-13381i, 59203i, 0i, 0i), vec3<f32>(1684f, -770f, 1488f), Struct_1(21604u, vec3<u32>(0u, 68750u, 4294967295u), vec2<i32>(0i, 12273i)), Struct_1(1u, vec3<u32>(4294967295u, 0u, 12693u), vec2<i32>(63008i, -1i)), 43583u));

var<private> global1: array<vec3<bool>, 28> = array<vec3<bool>, 28>(vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, true));

var<private> global2: array<Struct_2, 6>;

var<private> global3: array<bool, 26> = array<bool, 26>(false, false, true, false, true, false, false, true, true, true, false, false, false, true, true, true, false, false, false, true, false, true, true, true, false, true);

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: f32, arg_1: f32, arg_2: vec2<bool>) -> bool {
    return true;
}

fn func_2(arg_0: vec3<i32>, arg_1: i32) -> vec4<bool> {
    let var_0 = _wgslsmith_sub_i32(12418i, _wgslsmith_mod_i32(_wgslsmith_clamp_i32(i32(-1i) * -25321i, _wgslsmith_sub_i32(-1i, -40046i), u_input.c >> (45980u % 32u)) ^ 2147483647i, arg_1));
    global3 = array<bool, 26>();
    let var_1 = global3[_wgslsmith_index_u32(0u, 26u)];
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-698f - _wgslsmith_f_op_f32(-664f * -620f))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(-735f, -759f)))), -1000f)), _wgslsmith_f_op_f32(ceil(-406f)), -1095f);
    var var_3 = vec2<bool>(!(!(!all(vec2<bool>(global3[_wgslsmith_index_u32(u_input.d, 26u)], false)))), global3[_wgslsmith_index_u32(~(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d, 1019u, 0u), u_input.a.yxx)) ^ ~(~u_input.a.x), 26u)]);
    return vec4<bool>(!(true && any(vec2<bool>(true, true))), 4294967295u <= (firstTrailingBit(max(4294967295u, 39338u)) ^ _wgslsmith_dot_vec3_u32(select(vec3<u32>(11290u, 0u, 23291u), u_input.a.ywy, true), u_input.a.wyy)), func_3(var_2.x, _wgslsmith_f_op_f32(f32(-1f) * -869f), vec2<bool>(!var_3.x, !all(vec4<bool>(global3[_wgslsmith_index_u32(0u, 26u)], var_3.x, global3[_wgslsmith_index_u32(u_input.b, 26u)], true)))), !any(!(!vec4<bool>(true, var_3.x, global3[_wgslsmith_index_u32(u_input.d, 26u)], var_3.x))));
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: vec4<bool>, arg_3: Struct_3) -> u32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(154f))) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(859f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-656f, _wgslsmith_f_op_f32(-arg_1.b.x))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.b.x))), arg_1.b.x, _wgslsmith_f_op_f32(arg_3.e - -799f)));
    global1 = array<vec3<bool>, 28>();
    let var_1 = arg_1.d.a;
    global1 = array<vec3<bool>, 28>();
    var var_2 = Struct_5(Struct_1(~(~(~arg_3.c.b.x)), vec3<u32>(arg_0.x, arg_1.e << (53853u % 32u), _wgslsmith_mod_u32(arg_1.d.b.x & 43310u, ~1u)), _wgslsmith_div_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(-11224i, u_input.e), arg_3.c.c)));
    return reverseBits(~_wgslsmith_mult_u32(~(~arg_1.d.a), ~4294967295u));
}

fn func_5(arg_0: u32, arg_1: vec2<bool>, arg_2: bool, arg_3: vec4<i32>) -> Struct_2 {
    var var_0 = _wgslsmith_sub_vec4_u32(vec4<u32>(arg_0, _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(_wgslsmith_add_vec2_u32(u_input.a.ww, u_input.a.zz), ~u_input.a.xz), ~_wgslsmith_mult_vec2_u32(u_input.a.yz, u_input.a.ww)), ~countOneBits(abs(4294967295u)), _wgslsmith_dot_vec4_u32(reverseBits(~u_input.a), firstLeadingBit(_wgslsmith_clamp_vec4_u32(vec4<u32>(56028u, u_input.b, arg_0, arg_0), vec4<u32>(arg_0, arg_0, 4294967295u, 40062u), vec4<u32>(2046u, 0u, 0u, 46772u))))), _wgslsmith_mod_vec4_u32(u_input.a | select(vec4<u32>(1u, 1u, u_input.b, arg_0), vec4<u32>(1u, 19966u, 1u, arg_0) << (vec4<u32>(1u, 41729u, 4410u, 103183u) % vec4<u32>(32u)), !vec4<bool>(true, arg_1.x, arg_2, arg_2)), ~abs(vec4<u32>(4294967295u, u_input.d, arg_0, u_input.a.x))));
    var var_1 = ~(~(vec4<u32>(max(arg_0, var_0.x), ~var_0.x, select(u_input.b, u_input.a.x, arg_1.x), 23131u >> (u_input.d % 32u)) | u_input.a));
    let var_2 = 502f;
    var var_3 = Struct_5(Struct_1(var_0.x, select(~u_input.a.wyw, ~(var_0.xxy & var_0.ywz), vec3<bool>(true, true, arg_2)), max(firstLeadingBit(arg_3.wy), countOneBits(-vec2<i32>(1i, 10914i)))));
    global2 = array<Struct_2, 6>();
    return Struct_2(arg_3, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_2, var_2, -1971f), vec3<f32>(-1154f, var_2, var_2), arg_2)), vec3<f32>(var_2, 1004f, -978f)))), var_3.a, var_3.a, u_input.b);
}

fn func_1(arg_0: Struct_4) -> u32 {
    global1 = array<vec3<bool>, 28>();
    var var_0 = func_5(749u, vec2<bool>(global3[_wgslsmith_index_u32(func_4(vec3<u32>(u_input.d, ~5202u, 0u), Struct_2(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c, 1i, u_input.c, arg_0.d.a.x), vec4<i32>(-2147483647i, u_input.c, 2147483647i, arg_0.d.d.c.x)), arg_0.d.b, Struct_1(1u, vec3<u32>(22725u, u_input.b, arg_0.d.d.b.x), arg_0.d.c.c), arg_0.d.c, 11488u), select(select(arg_0.a, arg_0.a, false), func_2(vec3<i32>(u_input.e, 1i, arg_0.d.a.x), -2147483647i), all(vec3<bool>(global3[_wgslsmith_index_u32(arg_0.d.c.b.x, 26u)], true, arg_0.a.x))), Struct_3(Struct_1(1u, arg_0.d.c.b, arg_0.d.d.c), 18963i >> (u_input.a.x % 32u), arg_0.d.c, Struct_1(arg_0.d.d.b.x, vec3<u32>(1u, arg_0.d.e, u_input.d), vec2<i32>(-29261i, u_input.c)), _wgslsmith_div_f32(arg_0.c.x, arg_0.d.b.x))), 26u)], !global3[_wgslsmith_index_u32(~arg_0.d.e, 26u)] & (false != arg_0.a.x)), arg_0.a.x, -_wgslsmith_mod_vec4_i32(countOneBits(~arg_0.d.a), arg_0.d.a));
    var var_1 = arg_0.a;
    return _wgslsmith_mult_u32(firstTrailingBit(arg_0.d.e) | ~u_input.d, 4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~_wgslsmith_add_u32(func_1(Struct_4(vec4<bool>(global3[_wgslsmith_index_u32(u_input.a.x, 26u)], false, global3[_wgslsmith_index_u32(10156u, 26u)], true), _wgslsmith_f_op_vec2_f32(-vec2<f32>(390f, -1087f)), vec4<f32>(571f, -963f, 400f, 1224f), global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.a.x, 0u), 6u)])), _wgslsmith_dot_vec3_u32(~u_input.a.zzz, _wgslsmith_mult_vec3_u32(u_input.a.zzw, vec3<u32>(4294967295u, u_input.a.x, u_input.d)) >> (~u_input.a.zxy % vec3<u32>(32u))));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-744f, -1287f))))))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(530f, -648f))))))));
    let x = u_input.a;
    s_output = StorageBuffer(-firstLeadingBit(vec2<i32>(u_input.e, reverseBits(49801i))), _wgslsmith_f_op_f32(316f * var_1.x), ~var_0);
}

