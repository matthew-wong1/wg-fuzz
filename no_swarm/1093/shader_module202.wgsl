struct Struct_1 {
    a: vec2<i32>,
    b: u32,
    c: vec4<u32>,
    d: vec2<f32>,
    e: i32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: i32,
    b: f32,
    c: f32,
    d: Struct_2,
    e: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
    d: f32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 23>;

var<private> global1: i32;

var<private> global2: Struct_3;

var<private> global3: array<bool, 23>;

var<private> global4: Struct_2;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec4<i32>) -> bool {
    global3 = array<bool, 23>();
    let var_0 = Struct_2(~min(max(global4.a ^ global4.a, global4.a), global4.a));
    let var_1 = vec3<u32>(~(global2.d.a ^ global4.a), global2.d.a, (1u & _wgslsmith_add_u32(global2.d.a & var_0.a, 13028u)) >> (min(67784u, var_0.a) % 32u));
    global3 = array<bool, 23>();
    global0 = array<f32, 23>();
    return _wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(34467u, global2.d.a, 1u), var_1), 23u)])) > -1953f;
}

fn func_4(arg_0: u32, arg_1: vec4<bool>) -> vec3<f32> {
    let var_0 = global2.c;
    let var_1 = arg_1.wwy;
    let var_2 = Struct_1(vec2<i32>(i32(-1i) * -global2.a, u_input.a.x) >> (~vec2<u32>(~1u, arg_0) % vec2<u32>(32u)), ~global4.a ^ 0u, firstTrailingBit(_wgslsmith_add_vec4_u32((vec4<u32>(arg_0, global4.a, arg_0, 0u) >> (vec4<u32>(global4.a, 4948u, global4.a, 1950u) % vec4<u32>(32u))) ^ reverseBits(vec4<u32>(arg_0, arg_0, global4.a, 45417u)), (vec4<u32>(62749u, 0u, global2.d.a, arg_0) & vec4<u32>(global4.a, 29698u, 0u, 0u)) ^ min(vec4<u32>(4294967295u, global2.d.a, 14818u, 0u), vec4<u32>(4294967295u, global2.d.a, 27651u, arg_0)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(0u, 23u)], -145f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, global2.c))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(893f, global0[_wgslsmith_index_u32(arg_0, 23u)])) * vec2<f32>(887f, -431f)))), ~_wgslsmith_dot_vec4_i32(-_wgslsmith_div_vec4_i32(vec4<i32>(-35819i, global2.a, -2147483647i, -21073i), vec4<i32>(-1i, u_input.a.x, 2147483647i, -4625i)), vec4<i32>(abs(-2147483647i), -56346i | u_input.a.x, global2.a, reverseBits(-1i))));
    let var_3 = global2.d;
    let var_4 = -493f;
    return _wgslsmith_div_vec3_f32(vec3<f32>(761f, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(min(abs(0u), _wgslsmith_mult_u32(13966u, 12320u)), 23u)]), 980f), vec3<f32>(-251f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1467f + _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(global4.a, 23u)]))), global0[_wgslsmith_index_u32(min(~50880u, ~(~global4.a)), 23u)]));
}

fn func_2(arg_0: vec4<bool>, arg_1: u32, arg_2: Struct_3, arg_3: i32) -> vec3<f32> {
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_4(4294967295u, vec4<bool>(false, ~arg_1 < _wgslsmith_add_u32(global2.d.a, global4.a), func_3(vec4<f32>(global2.c, global2.c, 1576f, global0[_wgslsmith_index_u32(arg_2.d.a, 23u)]), vec4<i32>(-2147483647i, global2.a, arg_3, global2.a)) || (global2.a <= global2.a), !any(vec4<bool>(arg_2.e, true, false, false))))) - vec3<f32>(-1451f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(160f + global0[_wgslsmith_index_u32(~9826u, 23u)]))), 951f));
}

fn func_5(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: Struct_1) -> Struct_2 {
    var var_0 = Struct_3(arg_1.e, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(391f - -2298f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1160f)), Struct_2(~(54951u >> (~global2.d.a % 32u))), true);
    var var_1 = vec4<bool>(all(!select(select(vec2<bool>(false, global3[_wgslsmith_index_u32(global2.d.a, 23u)]), vec2<bool>(global2.e, false), vec2<bool>(true, false)), vec2<bool>(var_0.e, global3[_wgslsmith_index_u32(4294967295u, 23u)]), select(vec2<bool>(global3[_wgslsmith_index_u32(16001u, 23u)], true), vec2<bool>(global2.e, true), vec2<bool>(true, var_0.e)))), -927f != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(571f)) - _wgslsmith_f_op_f32(f32(-1f) * -713f))), all(select(select(vec2<bool>(var_0.e, global3[_wgslsmith_index_u32(arg_1.c.x, 23u)]), vec2<bool>(true, var_0.e), vec2<bool>(false, global3[_wgslsmith_index_u32(arg_2.b, 23u)])), select(vec2<bool>(global2.e, global2.e), vec2<bool>(true, false), vec2<bool>(var_0.e, var_0.e)), select(vec2<bool>(true, global2.e), vec2<bool>(true, true), global2.e))) & var_0.e, all(vec2<bool>(global2.e, !var_0.e)));
    let var_2 = arg_1.d.x;
    var_1 = vec4<bool>(any(select(var_1.yw, vec2<bool>(global2.d.a != arg_1.b, true), vec2<bool>(all(vec4<bool>(false, false, true, false)), true))), !var_0.e, global2.e == (_wgslsmith_f_op_vec3_f32(func_2(vec4<bool>(global2.e, true, false, false), ~arg_1.b, Struct_3(12939i, 380f, var_2, Struct_2(arg_1.b), global3[_wgslsmith_index_u32(20118u, 23u)]), 1i)).x < arg_1.d.x), true);
    global2 = Struct_3(u_input.a.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global2.b))), arg_0.x, global2.d, global2.e);
    return Struct_2(firstLeadingBit(21891u));
}

fn func_1(arg_0: vec3<u32>, arg_1: vec4<u32>) -> bool {
    global0 = array<f32, 23>();
    var var_0 = Struct_3(u_input.a.x, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(1u, 23u)] - -118f), -1905f, func_5(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_2(vec4<bool>(global3[_wgslsmith_index_u32(global2.d.a, 23u)], false, true, false), 4294967295u, Struct_3(global2.a, -1000f, 214f, Struct_2(arg_1.x), global2.e), global2.a))) * _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global0[_wgslsmith_index_u32(45826u, 23u)], global0[_wgslsmith_index_u32(4294967295u, 23u)], global2.b))), vec3<f32>(-179f, global2.c, global2.c)))), Struct_1(u_input.a.zz, 0u, countOneBits(vec4<u32>(30937u, 1u, arg_0.x, global2.d.a) >> (arg_1 % vec4<u32>(32u))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-1412f, 1000f), vec2<f32>(global0[_wgslsmith_index_u32(4294967295u, 23u)], -157f))), global2.a), Struct_1(u_input.a.yy, min(1u, 4294967295u), reverseBits(arg_1), vec2<f32>(_wgslsmith_f_op_f32(1226f * global2.c), 1488f), -u_input.a.x)), !(select(global3[_wgslsmith_index_u32(arg_0.x, 23u)], true, true) && false) & select(false, global3[_wgslsmith_index_u32(~28610u, 23u)] | global3[_wgslsmith_index_u32(select(global4.a, 29459u, global3[_wgslsmith_index_u32(1u, 23u)]), 23u)], global2.e == global2.e));
    var var_1 = abs(-23962i);
    global1 = 1i;
    var var_2 = true;
    return func_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(694f, var_0.c, -846f, global2.b), vec4<f32>(var_0.b, 1000f, -1000f, global2.c), vec4<bool>(global2.e, var_0.e, global3[_wgslsmith_index_u32(global2.d.a, 23u)], global3[_wgslsmith_index_u32(1u, 23u)]))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(18019u, 23u)], 645f, global0[_wgslsmith_index_u32(arg_0.x, 23u)], global0[_wgslsmith_index_u32(36242u, 23u)])))) * _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2078f, global2.c, var_0.b, -283f)), vec4<f32>(global2.b, global2.c, 1009f, 992f))))), -(-vec4<i32>(-1i, var_0.a, var_0.a, -4676i) << (vec4<u32>(~0u, _wgslsmith_add_u32(1u, 1u), arg_1.x, 1u) % vec4<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(select(select(vec4<bool>(all(vec4<bool>(global3[_wgslsmith_index_u32(global4.a, 23u)], global2.e, false, global3[_wgslsmith_index_u32(global4.a, 23u)])), global3[_wgslsmith_index_u32(min(global4.a, 28343u), 23u)], u_input.a.x >= 1i, global3[_wgslsmith_index_u32(global2.d.a, 23u)]), !select(vec4<bool>(true, global2.e, global2.e, global3[_wgslsmith_index_u32(global2.d.a, 23u)]), vec4<bool>(global3[_wgslsmith_index_u32(562u, 23u)], true, true, false), true), vec4<bool>(false, true && global3[_wgslsmith_index_u32(global2.d.a, 23u)], !global2.e, func_1(vec3<u32>(35974u, global4.a, global2.d.a), vec4<u32>(10948u, global2.d.a, 1u, global4.a)))), vec4<bool>(global3[_wgslsmith_index_u32(global4.a, 23u)], true, !any(vec2<bool>(global3[_wgslsmith_index_u32(global4.a, 23u)], global2.e)), func_3(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(213f, global2.c, 1000f, 1000f), vec4<f32>(global2.c, -626f, global0[_wgslsmith_index_u32(global4.a, 23u)], global0[_wgslsmith_index_u32(44779u, 23u)]), global3[_wgslsmith_index_u32(17461u, 23u)])), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a.x, 40630i, global2.a, global2.a), vec4<i32>(global2.a, -37105i, 25789i, u_input.a.x)))), select(select(select(vec4<bool>(false, false, false, true), vec4<bool>(global3[_wgslsmith_index_u32(26493u, 23u)], global3[_wgslsmith_index_u32(1u, 23u)], global3[_wgslsmith_index_u32(71215u, 23u)], global2.e), global3[_wgslsmith_index_u32(global2.d.a, 23u)]), select(vec4<bool>(false, true, global3[_wgslsmith_index_u32(global4.a, 23u)], global2.e), vec4<bool>(false, global2.e, true, global3[_wgslsmith_index_u32(global2.d.a, 23u)]), global3[_wgslsmith_index_u32(1u, 23u)]), !vec4<bool>(true, global2.e, false, global2.e)), select(select(vec4<bool>(global3[_wgslsmith_index_u32(global4.a, 23u)], global3[_wgslsmith_index_u32(global2.d.a, 23u)], false, global2.e), vec4<bool>(false, false, global2.e, false), vec4<bool>(true, false, false, global2.e)), vec4<bool>(global3[_wgslsmith_index_u32(7333u, 23u)], false, false, global2.e), select(vec4<bool>(global3[_wgslsmith_index_u32(global2.d.a, 23u)], false, global3[_wgslsmith_index_u32(1u, 23u)], false), vec4<bool>(global3[_wgslsmith_index_u32(0u, 23u)], true, global2.e, global3[_wgslsmith_index_u32(58380u, 23u)]), vec4<bool>(global2.e, global2.e, false, false))), global2.e)), !vec4<bool>(true || !global3[_wgslsmith_index_u32(100269u, 23u)], true, !(global2.e || false), false && global3[_wgslsmith_index_u32(_wgslsmith_add_u32(53689u, 74378u), 23u)]), !vec4<bool>(global2.e, all(vec2<bool>(false, global3[_wgslsmith_index_u32(74731u, 23u)])), true, global3[_wgslsmith_index_u32(reverseBits(4294967295u), 23u)]));
    global0 = array<f32, 23>();
    var var_1 = Struct_1(vec2<i32>(~global2.a, max(-907i, -u_input.a.x)) & select(_wgslsmith_clamp_vec2_i32(u_input.a.yy, -vec2<i32>(2147483647i, u_input.a.x), max(vec2<i32>(44006i, -2147483647i), vec2<i32>(global2.a, global2.a))), ~vec2<i32>(global2.a, u_input.a.x) >> ((vec2<u32>(1u, 1u) & vec2<u32>(global4.a, 13532u)) % vec2<u32>(32u)), max(global4.a, 28513u) != global2.d.a), ~global2.d.a, max(abs(_wgslsmith_mult_vec4_u32(countOneBits(vec4<u32>(0u, global4.a, 0u, global4.a)), vec4<u32>(17238u, global4.a, 1u, 78194u))), ~(_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, global2.d.a, 56270u, 52831u), vec4<u32>(21178u, global2.d.a, global2.d.a, 7549u)) & _wgslsmith_clamp_vec4_u32(vec4<u32>(global4.a, 18523u, 15932u, global2.d.a), vec4<u32>(4294967295u, global2.d.a, 0u, global2.d.a), vec4<u32>(global4.a, 0u, global2.d.a, global2.d.a)))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1047f, global0[_wgslsmith_index_u32(1u, 23u)])) * 662f), _wgslsmith_f_op_f32(1015f + _wgslsmith_f_op_f32(f32(-1f) * -486f))), global2.a);
    let var_2 = Struct_1(_wgslsmith_div_vec2_i32(_wgslsmith_div_vec2_i32(u_input.a.xx, ~u_input.a.xy), u_input.a.zx) & firstLeadingBit(vec2<i32>(u_input.a.x, 35412i << (global4.a % 32u))), var_1.c.x, select(min(~var_1.c | vec4<u32>(global2.d.a, global2.d.a, var_1.b, 0u), var_1.c << (var_1.c % vec4<u32>(32u))), var_1.c, true), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec3_f32(func_2(!vec4<bool>(global2.e, true, global2.e, false), global2.d.a, Struct_3(var_1.e, _wgslsmith_f_op_f32(1000f - -878f), _wgslsmith_f_op_f32(exp2(var_1.d.x)), global2.d, global3[_wgslsmith_index_u32(~4294967295u, 23u)]), _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(global2.a, 2147483647i), vec2<i32>(var_1.e, 12710i)), countOneBits(var_1.a)))).yx)), _wgslsmith_div_i32(abs(~u_input.a.x) << (~func_5(vec3<f32>(-862f, -813f, 1583f), Struct_1(vec2<i32>(global2.a, u_input.a.x), global2.d.a, vec4<u32>(global2.d.a, 30026u, global4.a, 0u), var_1.d, 2147483647i), Struct_1(vec2<i32>(global2.a, -28710i), 4294967295u, vec4<u32>(59488u, global2.d.a, global2.d.a, 0u), vec2<f32>(global2.b, global2.b), u_input.a.x)).a % 32u), var_1.e));
    let var_3 = _wgslsmith_f_op_vec2_f32(ceil(var_1.d));
    var_0 = vec4<bool>(false, all(!vec4<bool>(any(vec4<bool>(global2.e, var_0.x, true, false)), any(var_0.yw), true, true)), var_0.x, true);
    let var_4 = vec4<f32>(_wgslsmith_f_op_f32(min(var_1.d.x, 321f)), _wgslsmith_f_op_f32(-var_1.d.x), 1162f, 1000f);
    var var_5 = 1000f;
    let x = u_input.a;
    s_output = StorageBuffer(-25064i, u_input.a, ~61121u, var_3.x, ~(~((vec4<u32>(var_2.b, global2.d.a, var_2.c.x, global2.d.a) | var_2.c) & vec4<u32>(var_1.b, global4.a, 0u, 1u))));
}

