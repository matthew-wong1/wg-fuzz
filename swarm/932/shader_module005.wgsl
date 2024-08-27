struct Struct_1 {
    a: i32,
    b: vec3<u32>,
    c: u32,
    d: bool,
}

struct Struct_2 {
    a: f32,
    b: bool,
}

struct Struct_3 {
    a: vec2<i32>,
    b: f32,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<u32>,
    c: Struct_3,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 5> = array<vec3<u32>, 5>(vec3<u32>(15714u, 4294967295u, 25693u), vec3<u32>(33192u, 31265u, 1u), vec3<u32>(42569u, 4294967295u, 1u), vec3<u32>(35826u, 0u, 1u), vec3<u32>(20751u, 4294967295u, 8621u));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> vec3<u32> {
    var var_0 = max(select(vec4<i32>(firstLeadingBit(-4741i), 2147483647i, 15773i, _wgslsmith_sub_i32(u_input.a.x, -51624i)) >> (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u)), select(vec4<i32>(~46991i, u_input.a.x ^ u_input.a.x, u_input.a.x, _wgslsmith_clamp_i32(32172i, u_input.a.x, 2306i)), -vec4<i32>(u_input.a.x, u_input.a.x, -3103i, 2147483647i) >> (~vec4<u32>(45098u, 0u, 18852u, 34786u) % vec4<u32>(32u)), vec4<bool>(true, false, any(vec4<bool>(false, true, false, false)), any(vec4<bool>(true, false, true, false)))), false), _wgslsmith_mod_vec4_i32(-(~vec4<i32>(u_input.a.x, 0i, u_input.a.x, -1i)), _wgslsmith_sub_vec4_i32(~vec4<i32>(0i, 11179i, u_input.a.x, u_input.a.x), -vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x))) ^ -(~vec4<i32>(u_input.a.x, -30231i, u_input.a.x, -2147483647i)));
    var var_1 = Struct_3(abs(abs(vec2<i32>(var_0.x, var_0.x) ^ (var_0.ww & var_0.xx))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(668f)) + 395f) - 266f), _wgslsmith_f_op_f32(sign(-692f))));
    let var_2 = u_input.a.x;
    let var_3 = Struct_4(Struct_2(var_1.b, select(_wgslsmith_dot_vec3_u32(global0[_wgslsmith_index_u32(21381u, 5u)], global0[_wgslsmith_index_u32(1u, 5u)]), 69473u, true) == (~1u << (firstLeadingBit(4294967295u) % 32u))), select(global0[_wgslsmith_index_u32(45613u, 5u)], _wgslsmith_mult_vec3_u32(vec3<u32>(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(62952u, 0u)), max(0u, 1u)), global0[_wgslsmith_index_u32(min(_wgslsmith_dot_vec2_u32(vec2<u32>(6965u, 1u), vec2<u32>(0u, 0u)), ~4294967295u), 5u)]), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), true))), Struct_3(u_input.a, -574f), Struct_1(_wgslsmith_dot_vec4_i32(reverseBits(min(vec4<i32>(var_0.x, -1i, var_2, var_0.x), vec4<i32>(0i, var_2, var_2, -8918i))), vec4<i32>(-1i) * -vec4<i32>(-18902i, 55425i, var_1.a.x, -2147483647i)), global0[_wgslsmith_index_u32(~88137u, 5u)], ~8785u, any(select(select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, false)), vec3<bool>(false, false, false), vec3<bool>(true, false, false)))));
    let var_4 = var_3.d;
    return _wgslsmith_mult_vec3_u32(firstTrailingBit(abs(~vec3<u32>(var_3.d.b.x, 55047u, var_4.c))), select(~firstTrailingBit(vec3<u32>(48201u, 1u, 26608u)), vec3<u32>(65935u & var_3.d.c, 37373u, 11555u), var_4.d));
}

fn func_2() -> f32 {
    var var_0 = Struct_1(i32(-1i) * -(~_wgslsmith_mult_i32(-2147483647i, -1i)), _wgslsmith_clamp_vec3_u32(_wgslsmith_sub_vec3_u32(_wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(global0[_wgslsmith_index_u32(63042u, 5u)], vec3<u32>(10754u, 1u, 54660u)), firstLeadingBit(vec3<u32>(2881u, 1u, 48645u))), global0[_wgslsmith_index_u32(~(~29104u), 5u)]), _wgslsmith_mod_vec3_u32(vec3<u32>(55772u, 47093u, select(1u, 22014u, false)), firstTrailingBit(vec3<u32>(0u, 74823u, 35316u))), select(func_3(), vec3<u32>(4294967295u, 0u, min(32439u, 21592u)), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)))), reverseBits(~countOneBits(4294967295u)), true);
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1523f);
    let var_2 = true;
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-1000f)), -505f);
}

fn func_4(arg_0: f32, arg_1: vec2<i32>) -> Struct_2 {
    global0 = array<vec3<u32>, 5>();
    var var_0 = Struct_2(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(arg_0, _wgslsmith_f_op_f32(abs(-700f)))), _wgslsmith_f_op_f32(round(823f))))), arg_1.x <= _wgslsmith_add_i32(_wgslsmith_div_i32(-u_input.a.x, arg_1.x), u_input.a.x));
    let var_1 = var_0.b;
    let var_2 = Struct_4(Struct_2(var_0.a, true), ~(~global0[_wgslsmith_index_u32(~64051u, 5u)]), Struct_3(vec2<i32>(1i, u_input.a.x | -29159i), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f * -380f), var_0.a)))), Struct_1(~min(-55418i, 0i), select(abs(select(global0[_wgslsmith_index_u32(30295u, 5u)], global0[_wgslsmith_index_u32(0u, 5u)], false)), global0[_wgslsmith_index_u32(~select(4294967295u, 10833u, var_0.b), 5u)], true), ~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(35373u, 62922u)), any(vec3<bool>(true, all(vec2<bool>(var_0.b, true)), u_input.a.x != 0i))));
    var var_3 = Struct_4(Struct_2(1568f, all(vec2<bool>(false, true))), global0[_wgslsmith_index_u32(1u, 5u)], var_2.c, var_2.d);
    return Struct_2(_wgslsmith_f_op_f32(var_3.a.a + _wgslsmith_f_op_f32(step(-1397f, _wgslsmith_f_op_f32(floor(arg_0))))), false);
}

fn func_5(arg_0: Struct_2, arg_1: i32, arg_2: Struct_1, arg_3: vec3<f32>) -> Struct_4 {
    global0 = array<vec3<u32>, 5>();
    return Struct_4(Struct_2(-684f, arg_2.d), min(vec3<u32>(arg_2.c, firstLeadingBit(abs(arg_2.c)), _wgslsmith_mod_u32(~4294967295u, firstLeadingBit(0u))), firstTrailingBit(arg_2.b)), Struct_3(u_input.a & firstTrailingBit(vec2<i32>(arg_1, -2147483647i)), -1403f), Struct_1(_wgslsmith_mult_i32(-13120i, ~(i32(-1i) * -19227i)), max(~vec3<u32>(arg_2.b.x, arg_2.c, 4294967295u), select(arg_2.b, _wgslsmith_sub_vec3_u32(vec3<u32>(21116u, 4294967295u, 0u), global0[_wgslsmith_index_u32(arg_2.b.x, 5u)]), select(vec3<bool>(arg_0.b, false, arg_0.b), vec3<bool>(arg_0.b, arg_0.b, false), vec3<bool>(true, true, true)))), func_3().x, !(~arg_2.c <= ~31115u)));
}

fn func_1(arg_0: vec3<u32>, arg_1: f32, arg_2: bool, arg_3: vec2<f32>) -> vec2<bool> {
    let var_0 = func_5(func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) - arg_1), u_input.a), 2147483647i, Struct_1(abs(-u_input.a.x | -u_input.a.x), ~min(arg_0, vec3<u32>(1u, arg_0.x, 0u)) & global0[_wgslsmith_index_u32(35182u << (~4294967295u % 32u), 5u)], ~reverseBits(12054u), arg_2), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(-931f + arg_3.x), arg_1, _wgslsmith_f_op_f32(-1028f * arg_1)))))));
    global0 = array<vec3<u32>, 5>();
    let var_1 = func_5(func_4(_wgslsmith_f_op_f32(round(arg_3.x)), firstTrailingBit(vec2<i32>(u_input.a.x >> (0u % 32u), func_5(Struct_2(-1136f, true), 46612i, var_0.d, vec3<f32>(-348f, 1343f, arg_1)).c.a.x))), -2147483647i, func_5(var_0.a, _wgslsmith_dot_vec3_i32(firstTrailingBit(_wgslsmith_add_vec3_i32(vec3<i32>(var_0.d.a, -1i, u_input.a.x), vec3<i32>(u_input.a.x, var_0.d.a, -1i))), ~firstTrailingBit(vec3<i32>(var_0.c.a.x, var_0.c.a.x, u_input.a.x))), func_5(func_5(var_0.a, 1i, func_5(Struct_2(arg_3.x, true), var_0.d.a, Struct_1(-1i, vec3<u32>(12586u, 39918u, 0u), arg_0.x, false), vec3<f32>(var_0.c.b, arg_3.x, -992f)).d, _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_1, -1109f, 179f)))).a, var_0.d.a, Struct_1(func_5(Struct_2(1538f, true), 26960i, Struct_1(0i, var_0.b, 39450u, arg_2), vec3<f32>(-2421f, -473f, var_0.a.a)).c.a.x, var_0.d.b, 0u & var_0.d.b.x, true), vec3<f32>(arg_1, arg_1, -301f)).d, vec3<f32>(_wgslsmith_f_op_f32(min(arg_3.x, -477f)), _wgslsmith_div_f32(var_0.c.b, _wgslsmith_f_op_f32(-arg_3.x)), _wgslsmith_f_op_f32(916f * 821f))).d, _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-346f, 929f))), _wgslsmith_f_op_f32(trunc(func_5(Struct_2(var_0.c.b, var_0.a.b), var_0.c.a.x, Struct_1(u_input.a.x, var_0.b, var_0.d.c, true), vec3<f32>(arg_1, -311f, arg_3.x)).c.b)), 824f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(747f, arg_3.x, arg_1)) - _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(754f, -1184f, arg_1)))))).c;
    var var_2 = select(select(select(!vec4<bool>(false, var_0.a.b, true, false), vec4<bool>(true, arg_0.x > 40236u, false, !arg_2), !select(false, arg_2, var_0.d.d)), vec4<bool>(!(!var_0.a.b), !var_0.d.d || true, reverseBits(u_input.a.x) == 1i, !arg_2), vec4<bool>(true, var_0.a.b, false, var_0.a.b)), vec4<bool>(!(var_0.d.b.x > ~arg_0.x), all(vec4<bool>(false | var_0.d.d, false, all(vec2<bool>(false, false)), var_0.d.d || arg_2)), !(!all(vec4<bool>(var_0.d.d, true, true, var_0.a.b))), func_4(_wgslsmith_f_op_f32(-1678f * func_5(Struct_2(-273f, var_0.a.b), 1i, var_0.d, vec3<f32>(var_0.a.a, arg_1, 1000f)).a.a), u_input.a).b), !vec4<bool>(arg_2, !arg_2 | var_0.a.b, true, ~var_0.d.a != firstTrailingBit(u_input.a.x)));
    var var_3 = func_5(Struct_2(_wgslsmith_f_op_f32(-1f), var_2.x), -1i, func_5(var_0.a, reverseBits(_wgslsmith_clamp_i32(-19298i, u_input.a.x, 891i) & -var_0.c.a.x), Struct_1(u_input.a.x, vec3<u32>(64729u, ~1u, 1u), max(68429u, 0u), all(vec4<bool>(true, true, true, true))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c.b, arg_1, -1409f)) - _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1303f, var_0.a.a, 1282f), vec3<f32>(var_0.c.b, var_1.b, arg_1))))))).d, _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(var_1.b, 1000f, arg_3.x), vec3<f32>(-1000f, -390f, -213f)), _wgslsmith_div_vec3_f32(vec3<f32>(828f, -612f, arg_1), vec3<f32>(arg_1, var_1.b, var_1.b)), select(true, true, false))), _wgslsmith_f_op_vec3_f32(vec3<f32>(262f, -791f, -548f) * _wgslsmith_f_op_vec3_f32(round(vec3<f32>(408f, -1247f, 800f))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_1, arg_1, var_0.c.b), vec3<f32>(arg_1, var_1.b, 1800f)))))));
    return var_2.ww;
}

fn func_6(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: Struct_1) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(func_2());
    var var_1 = false;
    var var_2 = 1u | arg_0.c;
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_dot_vec3_u32(global0[_wgslsmith_index_u32(min(func_6(Struct_1(1i, vec3<u32>(4294967295u, 40929u, 15987u), 5098u, true), !func_1(vec3<u32>(4294967295u, 0u, 1u), -181f, true, vec2<f32>(241f, 2318f)), func_5(Struct_2(-338f, false), 1i, func_5(Struct_2(239f, true), u_input.a.x, Struct_1(-2147483647i, vec3<u32>(31566u, 4294967295u, 85026u), 68836u, false), vec3<f32>(-1115f, 1468f, 772f)).d, _wgslsmith_f_op_vec3_f32(-vec3<f32>(1463f, 1581f, -1979f))).d), 1u), 5u)], ~_wgslsmith_clamp_vec3_u32(abs(global0[_wgslsmith_index_u32(85188u, 5u)]), select(~global0[_wgslsmith_index_u32(0u, 5u)], func_5(Struct_2(1790f, false), u_input.a.x, Struct_1(u_input.a.x, global0[_wgslsmith_index_u32(1996u, 5u)], 4294967295u, true), vec3<f32>(1144f, 442f, -850f)).b, true), func_5(func_4(-238f, vec2<i32>(u_input.a.x, 62625i)), select(-2147483647i, 2147483647i, true), func_5(Struct_2(515f, false), u_input.a.x, Struct_1(4164i, vec3<u32>(82699u, 0u, 33635u), 0u, true), vec3<f32>(-447f, -681f, -796f)).d, vec3<f32>(-865f, 1460f, -611f)).d.b));
    let var_1 = Struct_1(_wgslsmith_clamp_i32(-2147483647i, -14769i, func_5(func_4(-482f, u_input.a), -2147483647i, func_5(Struct_2(987f, false), select(u_input.a.x, u_input.a.x, true), Struct_1(-2147483647i, vec3<u32>(0u, var_0, var_0), 1u, true), _wgslsmith_f_op_vec3_f32(-vec3<f32>(615f, 709f, 827f))).d, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-636f, 1394f, 589f)))))).d.a), ~(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(61200u, var_0), 5u)] >> ((vec3<u32>(var_0, var_0, var_0) >> (vec3<u32>(var_0, 22693u, 1u) % vec3<u32>(32u))) % vec3<u32>(32u))), reverseBits(~(~select(var_0, var_0, false))), true);
    let var_2 = func_5(func_4(_wgslsmith_f_op_f32(f32(-1f) * -211f), vec2<i32>(abs(max(45070i, -1i)), _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(u_input.a, u_input.a), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, var_1.a, var_1.a, var_1.a), vec4<i32>(var_1.a, 6848i, 35291i, 18187i)), u_input.a.x))), _wgslsmith_dot_vec2_i32(vec2<i32>(i32(-1i) * -u_input.a.x, 1i), select(u_input.a, u_input.a, true)), func_5(Struct_2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(-342f)))), var_1.d), u_input.a.x, var_1, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1018f, 909f, 1078f), vec3<f32>(1000f, -367f, 536f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-659f, 2050f, 1914f)))))).d, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1539f, -1471f, 1809f) - vec3<f32>(774f, -602f, 263f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1111f, 1150f, -1854f)))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(698f, 314f, var_1.d)), _wgslsmith_f_op_f32(-227f - 355f), _wgslsmith_f_op_f32(select(-500f, 482f, false))) + vec3<f32>(_wgslsmith_f_op_f32(trunc(-764f)), -595f, _wgslsmith_f_op_f32(1000f + -1650f))))).d;
    var var_3 = 950f;
    let var_4 = Struct_4(Struct_2(_wgslsmith_f_op_f32(max(224f, func_5(Struct_2(-947f, false), u_input.a.x, var_1, vec3<f32>(-309f, 699f, 1172f)).a.a)), true), _wgslsmith_sub_vec3_u32(var_1.b, max(func_5(Struct_2(-733f, true), var_1.a, Struct_1(var_1.a, vec3<u32>(6497u, 11297u, 0u), var_1.b.x, var_2.d), vec3<f32>(307f, -474f, -805f)).d.b & func_5(Struct_2(1115f, var_1.d), u_input.a.x, var_1, vec3<f32>(687f, -1247f, -307f)).d.b, var_1.b)), func_5(func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1026f, -1300f))), ~(vec2<i32>(-16055i, -56892i) >> (vec2<u32>(var_1.b.x, 81695u) % vec2<u32>(32u)))), var_2.a, func_5(Struct_2(983f, true), ~(~1i), func_5(func_4(-382f, u_input.a), ~(-28684i), func_5(Struct_2(576f, true), var_2.a, Struct_1(-13198i, var_2.b, var_1.c, false), vec3<f32>(1148f, 1000f, -406f)).d, vec3<f32>(-684f, 1682f, 1410f)).d, _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1196f, 1128f, -434f)))).d, _wgslsmith_f_op_vec3_f32(vec3<f32>(-295f, 1000f, _wgslsmith_f_op_f32(trunc(-116f))) * vec3<f32>(_wgslsmith_f_op_f32(abs(453f)), 226f, _wgslsmith_f_op_f32(523f - -440f)))).c, Struct_1(reverseBits(~reverseBits(8317i)), var_2.b, _wgslsmith_div_u32(func_6(func_5(Struct_2(1959f, var_2.d), 62051i, var_1, vec3<f32>(-876f, -1101f, 1218f)).d, vec2<bool>(var_1.d, var_2.d), func_5(Struct_2(-979f, var_2.d), -15468i, var_1, vec3<f32>(1068f, 241f, 645f)).d), select(8060u, ~var_1.b.x, var_1.a <= 1i)), all(!vec4<bool>(true, true, false, var_1.d))));
    let x = u_input.a;
    s_output = StorageBuffer(-max(abs(min(vec3<i32>(u_input.a.x, 0i, -1071i), vec3<i32>(var_4.c.a.x, u_input.a.x, var_2.a))), vec3<i32>(-1i, u_input.a.x, var_2.a | -39799i)), ~0u);
}

