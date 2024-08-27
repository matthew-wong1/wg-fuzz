struct Struct_1 {
    a: f32,
    b: u32,
    c: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: vec2<u32>,
    d: bool,
    e: bool,
}

struct Struct_3 {
    a: f32,
    b: vec2<bool>,
    c: vec4<u32>,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
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

var<private> global0: i32;

var<private> global1: array<Struct_3, 10> = array<Struct_3, 10>(Struct_3(-444f, vec2<bool>(false, true), vec4<u32>(1u, 1u, 1u, 4294967295u), vec4<f32>(-1091f, -1000f, -538f, -306f)), Struct_3(1000f, vec2<bool>(false, false), vec4<u32>(4294967295u, 18334u, 4294967295u, 36173u), vec4<f32>(805f, -665f, -783f, -664f)), Struct_3(-1487f, vec2<bool>(false, false), vec4<u32>(4294967295u, 1u, 0u, 45756u), vec4<f32>(1410f, -763f, -161f, 573f)), Struct_3(-260f, vec2<bool>(true, true), vec4<u32>(39564u, 0u, 0u, 47199u), vec4<f32>(835f, 1010f, -654f, -221f)), Struct_3(-603f, vec2<bool>(true, false), vec4<u32>(10201u, 1u, 10356u, 34615u), vec4<f32>(848f, -1000f, -723f, 232f)), Struct_3(737f, vec2<bool>(true, true), vec4<u32>(1u, 42672u, 1u, 43785u), vec4<f32>(1858f, -553f, -1231f, 1901f)), Struct_3(1485f, vec2<bool>(false, false), vec4<u32>(75993u, 18947u, 56760u, 1u), vec4<f32>(850f, -917f, -585f, -390f)), Struct_3(478f, vec2<bool>(false, false), vec4<u32>(54604u, 4294967295u, 63779u, 4294967295u), vec4<f32>(657f, 1000f, 1307f, -349f)), Struct_3(-1135f, vec2<bool>(true, false), vec4<u32>(4294967295u, 21986u, 4294967295u, 4294967295u), vec4<f32>(252f, -732f, 1025f, -1288f)), Struct_3(-1000f, vec2<bool>(false, false), vec4<u32>(4294967295u, 1u, 71488u, 0u), vec4<f32>(865f, 1024f, -103f, 1540f)));

var<private> global2: array<vec2<bool>, 12> = array<vec2<bool>, 12>(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false));

var<private> global3: array<f32, 22> = array<f32, 22>(-648f, -843f, -473f, -175f, -446f, 1855f, 1840f, -754f, -521f, -1960f, 244f, -596f, 940f, 640f, -641f, -523f, -1576f, 651f, -1117f, 609f, -828f, 200f);

var<private> global4: Struct_2;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec3<u32>) -> u32 {
    var var_0 = Struct_3(198f, !vec2<bool>(global4.d, false), _wgslsmith_clamp_vec4_u32(vec4<u32>(arg_0.x, ~(~47442u), arg_0.x, arg_0.x), _wgslsmith_add_vec4_u32(firstTrailingBit(_wgslsmith_clamp_vec4_u32(vec4<u32>(global4.a.b, 4294967295u, 21961u, arg_0.x), vec4<u32>(10403u, u_input.a.x, u_input.a.x, 8040u), vec4<u32>(arg_0.x, global4.a.b, global4.c.x, 4294967295u))), ~vec4<u32>(5866u, 9969u, 47564u, arg_0.x)), ~(_wgslsmith_clamp_vec4_u32(vec4<u32>(13171u, 1u, arg_0.x, u_input.a.x), vec4<u32>(global4.c.x, 24489u, arg_0.x, arg_0.x), vec4<u32>(8411u, global4.a.b, global4.c.x, 34196u)) ^ countOneBits(vec4<u32>(1u, global4.a.b, arg_0.x, u_input.a.x)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1120f, global4.a.a, global3[_wgslsmith_index_u32(6884u, 22u)], global4.a.a) + _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global4.a.a, 178f, global4.a.a, global3[_wgslsmith_index_u32(1u, 22u)])))) + vec4<f32>(global4.a.a, -904f, 147f, _wgslsmith_f_op_f32(ceil(global4.a.a)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.a.a, global3[_wgslsmith_index_u32(0u, 22u)], global4.a.a, global4.a.a))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-523f, -1072f, global3[_wgslsmith_index_u32(56234u, 22u)], 286f))), vec4<bool>(global4.e, true, global4.b.x && global4.d, any(vec2<bool>(global4.b.x, false)))))));
    let var_1 = Struct_3(1000f, var_0.b, vec4<u32>(global4.c.x, u_input.a.x, 1u & arg_0.x, _wgslsmith_div_u32(~arg_0.x, ~4294967295u)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-705f, _wgslsmith_f_op_f32(sign(-412f)), global4.a.a, global3[_wgslsmith_index_u32(max(var_0.c.x, abs(1u)), 22u)]))));
    var var_2 = Struct_2(global4.a, select(select(select(select(vec3<bool>(var_1.b.x, var_0.b.x, false), global4.b, vec3<bool>(false, var_0.b.x, var_1.b.x)), !vec3<bool>(false, true, var_0.b.x), select(global4.b, global4.b, vec3<bool>(var_0.b.x, false, var_1.b.x))), vec3<bool>(true, true, var_0.b.x), !any(global4.b)), !select(global4.b, global4.b, !var_0.b.x), true), vec2<u32>(0u, arg_0.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.d.x) * _wgslsmith_f_op_f32(607f * 1000f)), -501f)) > _wgslsmith_f_op_f32(var_1.a - global4.a.a), true);
    return u_input.a.x;
}

fn func_2(arg_0: i32, arg_1: bool, arg_2: u32, arg_3: bool) -> f32 {
    var var_0 = -47109i;
    let var_1 = Struct_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -586f), global4.a.a), global4.a.c, vec4<u32>(u_input.a.x, arg_2, global4.a.b & 4294967295u, func_3(~abs(vec3<u32>(global4.c.x, arg_2, 54197u)))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1015f, 771f, global3[_wgslsmith_index_u32(u_input.a.x, 22u)], global4.a.a)), vec4<f32>(324f, _wgslsmith_f_op_f32(step(global4.a.a, 946f)), _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(arg_2, 22u)] * global3[_wgslsmith_index_u32(arg_2, 22u)]), _wgslsmith_f_op_f32(f32(-1f) * -229f)))))));
    let var_2 = abs(1u);
    let var_3 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_1.a))), select(vec2<bool>(true, true), select(!vec2<bool>(arg_3, false), select(global4.a.c, vec2<bool>(true, arg_1), var_1.b), arg_1), true), ~(~vec4<u32>(abs(var_2), global4.c.x ^ 1u, ~0u, countOneBits(0u))), vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(-212f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.a + 1320f), _wgslsmith_f_op_f32(max(global4.a.a, -1920f)))), _wgslsmith_f_op_f32(min(global3[_wgslsmith_index_u32(0u, 22u)], _wgslsmith_f_op_f32(f32(-1f) * -654f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(global4.a.a, global4.a.a, true)), _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(17641u, 22u)]))) + -544f)));
    global0 = abs(17676i);
    return var_3.d.x;
}

fn func_1(arg_0: u32, arg_1: bool) -> vec4<f32> {
    let var_0 = global4.a;
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(_wgslsmith_div_i32(60854i, -705i), any(vec2<bool>(false, global4.a.c.x)), var_0.b ^ global4.c.x, true))), _wgslsmith_add_u32(4294967295u, abs(_wgslsmith_add_u32(global4.c.x, 76182u))), !vec2<bool>(global4.a.c.x != true, !var_0.c.x)), select(vec3<bool>(false, !(false || global4.b.x), arg_1), vec3<bool>(var_0.c.x, false, all(vec2<bool>(var_0.c.x, arg_1)) || (78079u >= var_0.b)), false), ~abs(abs(vec2<u32>(1u, 29629u)) << (u_input.a % vec2<u32>(32u))), false, arg_1);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.a.a, -405f));
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(-145f, 825f, 1141f, -1040f) + vec4<f32>(global3[_wgslsmith_index_u32(global4.c.x, 22u)], var_0.a, var_1.a.a, global3[_wgslsmith_index_u32(1u, 22u)])), vec4<f32>(var_1.a.a, var_0.a, 746f, var_1.a.a))))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-834f, -2114f, var_0.a, -115f), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_0.a, 857f, -455f, 1000f))), true || var_1.a.c.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.a.a, var_1.a.a, global3[_wgslsmith_index_u32(var_0.b, 22u)], var_1.a.a)) + _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global4.a.a, global4.a.a, var_1.a.a, var_1.a.a))))) * vec4<f32>(var_0.a, _wgslsmith_f_op_f32(1206f * -284f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-301f, global3[_wgslsmith_index_u32(u_input.a.x, 22u)])), 1000f)));
    var_1 = Struct_2(var_1.a, !vec3<bool>(global4.e, false, false), ~(var_1.c & _wgslsmith_mod_vec2_u32(~vec2<u32>(var_0.b, 1553u), vec2<u32>(u_input.a.x, 6759u))), max(var_0.b, _wgslsmith_clamp_u32(~0u, ~global4.c.x, 4294967295u)) <= 1u, !any(vec2<bool>(arg_1, true)));
    return _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(var_3, _wgslsmith_f_op_vec4_f32(round(var_3)))) * _wgslsmith_f_op_vec4_f32(trunc(var_3))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1095f * -942f)))), _wgslsmith_div_f32(711f, var_0.a), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(239f + -343f))), var_3.x)));
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec2<i32>) -> Struct_3 {
    let var_0 = ~(-arg_3);
    global4 = Struct_2(Struct_1(1000f, ~arg_1.b, vec2<bool>(any(global4.b), false)), select(vec3<bool>(arg_2.c.x == arg_2.c.x, true, all(!arg_1.c)), select(!(!global4.b), vec3<bool>(50321u < arg_1.b, arg_2.b <= 1u, arg_2.c.x), select(vec3<bool>(false, global4.e, global4.b.x), !vec3<bool>(arg_2.c.x, arg_2.c.x, global4.a.c.x), global4.a.c.x || arg_1.c.x)), arg_2.c.x), vec2<u32>(_wgslsmith_mod_u32(1u, ~select(53570u, global4.c.x, arg_2.c.x)), 4294967295u), global4.e, global4.b.x);
    var var_1 = -(i32(-1i) * -69084i);
    let var_2 = global1[_wgslsmith_index_u32(53799u, 10u)];
    global3 = array<f32, 22>();
    return Struct_3(738f, !vec2<bool>(select(-10305i, -1506i, true) <= -1i, false), _wgslsmith_clamp_vec4_u32(~countOneBits(~vec4<u32>(var_2.c.x, arg_2.b, 11737u, arg_1.b)), _wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(select(vec4<u32>(9002u, 9254u, var_2.c.x, arg_2.b), vec4<u32>(6624u, u_input.a.x, u_input.a.x, 27678u), vec4<bool>(false, arg_1.c.x, var_2.b.x, arg_2.c.x)), countOneBits(var_2.c)), _wgslsmith_mod_vec4_u32(abs(vec4<u32>(u_input.a.x, u_input.a.x, arg_2.b, global4.a.b)), firstTrailingBit(var_2.c))), var_2.c), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1427f, _wgslsmith_f_op_f32(-557f - 1000f), _wgslsmith_f_op_f32(112f - 1204f), _wgslsmith_div_f32(var_2.d.x, arg_1.a)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-626f, global4.a.a, -1564f, _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(1u, 22u)])) + _wgslsmith_f_op_vec4_f32(func_1(abs(4294967295u), true)))), Struct_1(global4.a.a, ~_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a.x, 4294967295u, u_input.a.x), select(vec3<u32>(49732u, 87275u, 0u), vec3<u32>(u_input.a.x, 34409u, global4.a.b), global4.e)), global4.b.zy), Struct_1(373f, abs(93637u), global4.b.zx), -vec2<i32>(-2147483647i, -1i));
    var_0 = func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_0.d * vec4<f32>(var_0.d.x, global3[_wgslsmith_index_u32(global4.c.x, 22u)], -1262f, global4.a.a)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.d.x, global4.a.a, 660f, 276f)))))), Struct_1(var_0.a, ~firstTrailingBit(u_input.a.x) << (global4.c.x % 32u), global2[_wgslsmith_index_u32(var_0.c.x, 12u)]), global4.a, firstTrailingBit(max(firstLeadingBit(-vec2<i32>(2147483647i, -28293i)), select(_wgslsmith_div_vec2_i32(vec2<i32>(5719i, 2147483647i), vec2<i32>(-2147483647i, -27168i)), _wgslsmith_div_vec2_i32(vec2<i32>(-3211i, -1i), vec2<i32>(2147483647i, 1i)), vec2<bool>(false, true)))));
    global3 = array<f32, 22>();
    let var_1 = global1[_wgslsmith_index_u32(func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.a.a, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(global4.a.a)), _wgslsmith_div_f32(global4.a.a, var_0.a))), _wgslsmith_f_op_f32(-global4.a.a), _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(global4.c.x | 4294967295u, 22u)] - -543f))), global4.a, Struct_1(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(32406u, 22u)] * -1644f), var_0.c.x, vec2<bool>(func_4(var_0.d, Struct_1(1234f, u_input.a.x, vec2<bool>(global4.d, global4.e)), Struct_1(-784f, global4.a.b, vec2<bool>(false, false)), vec2<i32>(1i, 1i)).b.x, true)), ~select(-reverseBits(vec2<i32>(-210i, -1i)), abs(vec2<i32>(1i, 1i)), var_0.b)).c.x, 10u)];
    var var_2 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-309f + _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(2675u, var_1.c.x), 22u)]))), !vec2<bool>(!(!global4.e), _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(global4.a.b, 22u)] - 643f) < _wgslsmith_f_op_f32(-global4.a.a)), vec4<u32>(var_0.c.x, _wgslsmith_clamp_u32(26201u, ~_wgslsmith_mod_u32(4257u, 1u), 44027u), ~_wgslsmith_div_u32(_wgslsmith_clamp_u32(var_1.c.x, 39602u, 88577u), firstLeadingBit(10407u)), ~reverseBits(4294967295u << (var_1.c.x % 32u))), var_0.d);
    let var_3 = Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-133f)) - 1f), var_2.c.x, select(vec2<bool>(func_4(vec4<f32>(global4.a.a, var_2.a, global4.a.a, -1094f), Struct_1(-1000f, var_1.c.x, vec2<bool>(var_2.b.x, var_0.b.x)), global4.a, vec2<i32>(32189i, 16288i)).b.x, true), select(select(vec2<bool>(true, global4.d), vec2<bool>(global4.a.c.x, global4.d), var_1.b.x), vec2<bool>(var_2.b.x, false), select(global2[_wgslsmith_index_u32(18793u, 12u)], vec2<bool>(true, global4.e), vec2<bool>(true, global4.b.x))), vec2<bool>(!var_0.b.x, any(global4.b)))), global4.b, vec2<u32>(reverseBits(var_2.c.x), _wgslsmith_dot_vec2_u32(vec2<u32>(17325u, 1u) >> (select(var_2.c.xx, u_input.a, global4.b.x) % vec2<u32>(32u)), vec2<u32>(51334u << (var_1.c.x % 32u), 1u))), var_2.b.x, select(!any(global4.b.zz), var_1.b.x, all(global4.b)));
    global4 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_i32(-abs(0i), _wgslsmith_mod_i32(1i, _wgslsmith_dot_vec4_i32(min(vec4<i32>(2147483647i, 33304i, 0i, 0i), vec4<i32>(-2147483647i, 0i, 2147483647i, -1i)), ~vec4<i32>(-3901i, -63625i, -1i, -24835i)))));
}

