struct Struct_1 {
    a: i32,
    b: vec2<u32>,
    c: vec3<f32>,
    d: vec4<i32>,
}

struct Struct_2 {
    a: i32,
    b: i32,
    c: vec4<i32>,
    d: bool,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec3<f32>,
    d: f32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: array<Struct_2, 9> = array<Struct_2, 9>(Struct_2(9965i, -24440i, vec4<i32>(-622i, -49312i, -9065i, 2147483647i), true, Struct_1(-2318i, vec2<u32>(39400u, 1u), vec3<f32>(-135f, -1817f, 562f), vec4<i32>(38956i, 0i, 1i, -7150i))), Struct_2(59517i, -36872i, vec4<i32>(62711i, -19919i, 54457i, -1i), true, Struct_1(-32945i, vec2<u32>(55810u, 13035u), vec3<f32>(735f, 1531f, -967f), vec4<i32>(-3015i, -49084i, 1i, 1549i))), Struct_2(18630i, 48298i, vec4<i32>(0i, 24068i, 2147483647i, 2147483647i), true, Struct_1(-18336i, vec2<u32>(0u, 72617u), vec3<f32>(998f, 465f, 1897f), vec4<i32>(0i, -19198i, -3906i, -6502i))), Struct_2(i32(-2147483648), -3559i, vec4<i32>(-1i, 1i, 2147483647i, -29060i), true, Struct_1(i32(-2147483648), vec2<u32>(4296u, 4754u), vec3<f32>(1656f, 468f, -243f), vec4<i32>(0i, 45975i, 33976i, 1i))), Struct_2(-687i, 0i, vec4<i32>(32660i, -23164i, -3812i, 20795i), true, Struct_1(72472i, vec2<u32>(0u, 4294967295u), vec3<f32>(-1175f, -1288f, -452f), vec4<i32>(-7471i, -1i, 1i, 17335i))), Struct_2(60194i, 0i, vec4<i32>(-72518i, -17723i, 6058i, -1i), false, Struct_1(-4800i, vec2<u32>(6066u, 4294967295u), vec3<f32>(-776f, -415f, -1000f), vec4<i32>(-7342i, 248i, 66534i, i32(-2147483648)))), Struct_2(2147483647i, -3682i, vec4<i32>(2147483647i, -1i, 0i, 2147483647i), true, Struct_1(-26667i, vec2<u32>(8841u, 1u), vec3<f32>(369f, 497f, 265f), vec4<i32>(43993i, 9002i, 0i, 2147483647i))), Struct_2(-35509i, 67465i, vec4<i32>(1i, 12355i, -6806i, 2147483647i), false, Struct_1(1i, vec2<u32>(38114u, 0u), vec3<f32>(-142f, -884f, -341f), vec4<i32>(-1i, i32(-2147483648), 2147483647i, 18319i))), Struct_2(-34397i, -36162i, vec4<i32>(1i, 2147483647i, 13763i, 19923i), true, Struct_1(-1i, vec2<u32>(43110u, 31413u), vec3<f32>(-1307f, -1310f, 2921f), vec4<i32>(-41650i, 0i, i32(-2147483648), -1i))));

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec2<i32>) -> vec3<i32> {
    global0 = -min(vec3<i32>(0i, arg_0.x, max(-u_input.a, firstLeadingBit(arg_0.x))), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, -31677i, arg_0.x) << (abs(vec3<u32>(4294967295u, 4294967295u, 1u)) % vec3<u32>(32u)), countOneBits(vec3<i32>(1i, global0.x, 14879i))));
    let var_0 = Struct_3(Struct_1(_wgslsmith_sub_i32(_wgslsmith_sub_i32(_wgslsmith_sub_i32(global0.x, 1i), i32(-1i) * -44612i), _wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(arg_0.x, arg_0.x, u_input.a)), ~vec3<i32>(u_input.a, global0.x, global0.x))), abs(~vec2<u32>(4294967295u, 0u)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-445f, 933f, -279f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-917f, -391f, 176f), vec3<f32>(365f, 1518f, -907f), false)), true)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-745f, 328f, 726f), vec3<f32>(1000f, 806f, 391f), false)), vec3<f32>(2210f, -590f, -377f)))), -select(vec4<i32>(-45113i, u_input.a, -2147483647i, global0.x), vec4<i32>(0i, 2147483647i, 0i, global0.x), false) >> (~vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u))), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(1u, max(10984u, 4294967295u)), select(39840u >> (1u % 32u), 4294967295u, true)), vec2<u32>(1u, 1u)), 9u)], vec3<bool>(_wgslsmith_dot_vec4_i32(-vec4<i32>(-42675i, u_input.a, -45170i, 40306i), reverseBits(vec4<i32>(2147483647i, 18367i, global0.x, u_input.a))) == abs(62417i), true, -317f <= _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(106f - 1121f), _wgslsmith_f_op_f32(step(1408f, -2985f))))));
    let var_1 = var_0.c.zx;
    let var_2 = Struct_3(var_0.a, Struct_2(-_wgslsmith_mod_i32(-30048i, global0.x), _wgslsmith_add_i32(u_input.a, _wgslsmith_clamp_i32(min(u_input.a, u_input.a), 41056i, -var_0.a.a)), ~firstLeadingBit(var_0.a.d), var_0.c.x, var_0.a), vec3<bool>(var_1.x, var_1.x, var_0.b.e.b.x > _wgslsmith_mult_u32(var_0.b.e.b.x, ~var_0.a.b.x)));
    let var_3 = var_0;
    return firstTrailingBit(_wgslsmith_add_vec3_i32(~vec3<i32>(arg_0.x, 9232i, -1i) | vec3<i32>(0i, var_3.b.c.x, var_2.a.a), vec3<i32>(var_2.a.a, -42938i, u_input.a) >> (abs(vec3<u32>(var_3.b.e.b.x, var_3.a.b.x, var_0.b.e.b.x)) % vec3<u32>(32u))) ^ (vec3<i32>(abs(-21129i), -2147483647i, -var_0.a.d.x) & -vec3<i32>(-2147483647i, -35072i, 0i)));
}

fn func_2(arg_0: i32, arg_1: f32, arg_2: u32) -> Struct_2 {
    global1 = array<Struct_2, 9>();
    global0 = min(_wgslsmith_add_vec3_i32(firstLeadingBit(_wgslsmith_add_vec3_i32(~vec3<i32>(0i, 32709i, global0.x), func_3(global0.yz))), ~vec3<i32>(global0.x >> (42290u % 32u), arg_0, 9483i)), -(-vec3<i32>(global0.x, -2147483647i, u_input.a) | vec3<i32>(54858i, ~arg_0, 55410i)));
    global0 = _wgslsmith_add_vec3_i32(~vec3<i32>(_wgslsmith_sub_i32(13337i, -41910i), func_3(global0.yx).x, u_input.a), -firstLeadingBit(_wgslsmith_add_vec3_i32(vec3<i32>(-20028i, 2147483647i, arg_0), vec3<i32>(-2147483647i, -1i, -2147483647i)))) | vec3<i32>(_wgslsmith_div_i32(func_3(vec2<i32>(-2147483647i, -2147483647i)).x, -59622i), u_input.a, _wgslsmith_sub_i32(arg_0, firstTrailingBit(global0.x)));
    let var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(102f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-438f + -1094f)), _wgslsmith_f_op_f32(arg_1 + arg_1)) - vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - -1870f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(194f + 460f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(arg_1, _wgslsmith_f_op_f32(-arg_1))))), 114f));
    var var_1 = max(global0.x, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, min(2046i, 2147483647i), 0i, -20179i), countOneBits(vec4<i32>(2147483647i, u_input.a, global0.x, 0i)) << (~vec4<u32>(arg_2, arg_2, arg_2, arg_2) % vec4<u32>(32u)))) > abs(select(arg_0, _wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(global0.x, arg_0, arg_0, global0.x)), -vec4<i32>(0i, arg_0, 1i, u_input.a)), select(any(vec3<bool>(true, false, false)), true, all(vec2<bool>(true, false)))));
    return Struct_2(_wgslsmith_clamp_i32(_wgslsmith_mod_i32(u_input.a, _wgslsmith_add_i32(u_input.a & -2147483647i, abs(2147483647i))), -arg_0, 2147483647i ^ arg_0), countOneBits(i32(-1i) * -19329i), ~(vec4<i32>(~15055i, countOneBits(0i), global0.x, _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 0i), global0.yx)) >> (vec4<u32>(~88513u, 1u, 27512u, arg_2 ^ 1u) % vec4<u32>(32u))), true, Struct_1(min(global0.x, u_input.a), ~max(vec2<u32>(arg_2, arg_2) & vec2<u32>(arg_2, 0u), ~vec2<u32>(0u, 0u)), vec3<f32>(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) + _wgslsmith_f_op_f32(select(arg_1, 399f, false))), 1075f), vec4<i32>(arg_0, _wgslsmith_add_i32(-22926i, u_input.a), select(global0.x, 16842i, true), 1i) >> (vec4<u32>(arg_2, 41669u, arg_2, 11929u) % vec4<u32>(32u))));
}

fn func_1(arg_0: Struct_2) -> vec3<i32> {
    global0 = arg_0.e.d.zzz;
    var var_0 = ~(~(-min(arg_0.c, _wgslsmith_div_vec4_i32(arg_0.e.d, arg_0.c))));
    var var_1 = func_2(-1i, _wgslsmith_f_op_f32(round(arg_0.e.c.x)), 1u);
    var var_2 = Struct_1(func_2(~var_1.a, _wgslsmith_f_op_f32(arg_0.e.c.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_1.e.c.x, arg_0.e.c.x)))), abs(37602u)).e.a, vec2<u32>(var_1.e.b.x, var_1.e.b.x), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_1.e.c), var_1.e.c), arg_0.c);
    var var_3 = Struct_2(global0.x, max(-global0.x, 7086i) << (var_1.e.b.x % 32u), func_2(~var_0.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1286f), var_1.e.c.x, var_2.c.x < var_2.c.x)))), 61032u).c, !((~(-31919i) << (arg_0.e.b.x % 32u)) != 2147483647i), func_2(~_wgslsmith_add_i32(global0.x, arg_0.c.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(545f, -1206f) * arg_0.e.c.x) - _wgslsmith_f_op_f32(-arg_0.e.c.x)), var_1.e.b.x).e);
    return abs(-select(-vec3<i32>(24441i, u_input.a, var_1.b), arg_0.c.xxw, arg_0.d));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~(~(-vec3<i32>(-38i, global0.x, -1i) ^ func_1(Struct_2(-888i, u_input.a, vec4<i32>(u_input.a, u_input.a, -1i, global0.x), false, Struct_1(31264i, vec2<u32>(122211u, 22920u), vec3<f32>(-1384f, 154f, -2719f), vec4<i32>(global0.x, u_input.a, u_input.a, 0i))))));
    global1 = array<Struct_2, 9>();
    let var_0 = -_wgslsmith_add_i32(u_input.a << (~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 59935u), vec2<u32>(4294967295u, 0u)) % 32u), -(2147483647i | global0.x) | ~u_input.a);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-527f)));
    let var_2 = vec3<u32>(func_2(global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-959f + -624f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-887f - 1483f))), ~4294967295u).e.b.x, ~(_wgslsmith_sub_u32(firstTrailingBit(43263u), ~4294967295u) >> ((~4524u << (_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 62167u, 0u), vec3<u32>(4294967295u, 0u, 14721u)) % 32u)) % 32u)), abs(~min(_wgslsmith_sub_u32(4294967295u, 84394u), ~26480u)));
    let var_3 = vec4<u32>(~var_2.x, 29822u ^ _wgslsmith_clamp_u32(1u, 4294967295u, 6414u), _wgslsmith_sub_u32(1u, var_2.x), 1u);
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-131f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1265f * _wgslsmith_f_op_f32(floor(-684f))), 1f))));
    let x = u_input.a;
    s_output = StorageBuffer(-10769i, func_2(_wgslsmith_mod_i32(~_wgslsmith_mult_i32(1i, -30249i), global0.x), 2266f, 4294967295u).a, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2222f, -266f))), -203f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1339f, 2258f)) + -880f))), _wgslsmith_f_op_f32(1764f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1741f)))), _wgslsmith_div_vec4_i32(max(min(reverseBits(vec4<i32>(var_0, global0.x, var_0, -1i)), firstLeadingBit(vec4<i32>(var_0, -22316i, global0.x, var_0))), abs(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_0, u_input.a, u_input.a, 90784i), vec4<i32>(global0.x, 27777i, global0.x, u_input.a), vec4<i32>(-1994i, -2147483647i, -1i, 0i)))), _wgslsmith_sub_vec4_i32(~(vec4<i32>(35556i, global0.x, 69125i, -12197i) & vec4<i32>(global0.x, global0.x, u_input.a, -1034i)), countOneBits(func_2(global0.x, 1284f, var_2.x).c))));
}

