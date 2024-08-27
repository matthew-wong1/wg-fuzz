struct Struct_1 {
    a: vec3<f32>,
    b: bool,
    c: u32,
}

struct Struct_2 {
    a: bool,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 10>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
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

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2(arg_0: f32, arg_1: Struct_1) -> i32 {
    global0 = array<u32, 10>();
    global0 = array<u32, 10>();
    global0 = array<u32, 10>();
    return min(countOneBits(select(u_input.a, _wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.a, 14269i, u_input.a, -13832i), countOneBits(vec4<i32>(1i, u_input.a, u_input.a, -10317i))), true)), -22325i);
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    var var_0 = ~(~_wgslsmith_mult_u32(1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(64069u, 10u)], 10u)])) << (4294967295u % 32u);
    let var_1 = _wgslsmith_add_vec2_u32(~(select(vec2<u32>(13259u, global0[_wgslsmith_index_u32(4294967295u, 10u)]), vec2<u32>(arg_0.c, 72940u), true) | u_input.b) & firstTrailingBit(~(u_input.b << (vec2<u32>(u_input.c, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 10u)], 10u)]) % vec2<u32>(32u)))), u_input.b);
    var var_2 = -vec2<i32>(func_2(-280f, Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.a.x, arg_1.a.x, arg_1.a.x) + arg_0.a), arg_0.b, firstLeadingBit(48820u))), _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, 14489i, u_input.a), vec3<i32>(-9930i, u_input.a, -46337i)), ~vec3<i32>(u_input.a, 1803i, u_input.a)) | (i32(-1i) * -47033i));
    let var_3 = _wgslsmith_div_i32(-(0i ^ _wgslsmith_dot_vec3_i32(vec3<i32>(var_2.x, 6882i, -68182i), vec3<i32>(u_input.a, var_2.x, -14589i))), func_2(_wgslsmith_f_op_f32(abs(arg_1.a.x)), arg_0));
    var_2 = -_wgslsmith_div_vec2_i32(vec2<i32>(-u_input.a, -32028i) ^ vec2<i32>(var_2.x, var_2.x), -reverseBits(select(vec2<i32>(var_3, u_input.a), vec2<i32>(u_input.a, var_2.x), vec2<bool>(true, true))));
    return arg_0;
}

fn func_3(arg_0: vec3<u32>, arg_1: i32, arg_2: vec2<f32>, arg_3: u32) -> f32 {
    global0 = array<u32, 10>();
    global0 = array<u32, 10>();
    let var_0 = func_1(func_1(func_1(func_1(func_1(Struct_1(vec3<f32>(arg_2.x, -334f, arg_2.x), false, global0[_wgslsmith_index_u32(arg_3, 10u)]), Struct_1(vec3<f32>(arg_2.x, arg_2.x, -464f), false, u_input.c)), func_1(Struct_1(vec3<f32>(arg_2.x, -435f, arg_2.x), true, 117158u), Struct_1(vec3<f32>(1679f, arg_2.x, arg_2.x), false, 75528u))), Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.x, -726f, arg_2.x) - vec3<f32>(1288f, arg_2.x, arg_2.x)), true, 4294967295u | global0[_wgslsmith_index_u32(arg_0.x, 10u)])), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.x, 977f, arg_2.x) - vec3<f32>(arg_2.x, -847f, -1059f)) * vec3<f32>(1394f, arg_2.x, 421f)), func_1(func_1(Struct_1(vec3<f32>(1007f, arg_2.x, 764f), true, u_input.c), Struct_1(vec3<f32>(869f, -515f, arg_2.x), false, arg_0.x)), Struct_1(vec3<f32>(arg_2.x, arg_2.x, 1554f), false, 41496u)).b, firstLeadingBit(45278u << (arg_3 % 32u)))), Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.x, arg_2.x, arg_2.x)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(482f, arg_2.x, arg_2.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_2.x, -1000f, 1638f), vec3<f32>(arg_2.x, arg_2.x, arg_2.x), vec3<bool>(false, true, true))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-265f, arg_2.x, 2329f)))), !(arg_3 < func_1(Struct_1(vec3<f32>(arg_2.x, -1000f, 488f), true, u_input.b.x), Struct_1(vec3<f32>(arg_2.x, arg_2.x, arg_2.x), false, global0[_wgslsmith_index_u32(61007u, 10u)])).c), ~global0[_wgslsmith_index_u32((arg_3 << (4294967295u % 32u)) >> (~7745u % 32u), 10u)]));
    var var_1 = !var_0.b;
    let var_2 = Struct_2(arg_1 != u_input.a, select(!vec2<bool>(var_0.b, true), !(!(!vec2<bool>(var_0.b, false))), select(vec2<bool>(!var_0.b, true), !select(vec2<bool>(true, var_0.b), vec2<bool>(true, var_0.b), vec2<bool>(var_0.b, var_0.b)), vec2<bool>(false, any(vec4<bool>(true, var_0.b, var_0.b, var_0.b))))));
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -225f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(648f, 1490f, -2209f) * vec3<f32>(580f, -766f, -836f)))), true, ~(~global0[_wgslsmith_index_u32(_wgslsmith_add_u32(30492u, 1u), 10u)])), Struct_1(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-983f, -666f, 1623f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-503f, -599f, 260f)))), _wgslsmith_sub_i32(abs(u_input.a), _wgslsmith_mult_i32(u_input.a, u_input.a)) == 71752i, _wgslsmith_mod_u32(~(u_input.b.x << (4294967295u % 32u)), ~_wgslsmith_dot_vec2_u32(u_input.b, vec2<u32>(30666u, 44229u)))));
    var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.x) - -515f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec3<u32>(0u, 1u, 40651u), 36739i, vec2<f32>(-315f, 626f), u_input.b.x))))), true, ~abs(abs(abs(global0[_wgslsmith_index_u32(u_input.b.x, 10u)]))));
    var_0 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(max(var_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(479f, 328f))))), -377f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x))))), !all(select(select(vec2<bool>(false, true), vec2<bool>(true, var_0.b), vec2<bool>(false, var_0.b)), select(vec2<bool>(false, var_0.b), vec2<bool>(true, var_0.b), var_0.b), var_0.b)), _wgslsmith_sub_u32(global0[_wgslsmith_index_u32(1u, 10u)], min(u_input.b.x, firstTrailingBit(0u))));
    var var_1 = ~_wgslsmith_mult_vec3_u32((vec3<u32>(25755u, global0[_wgslsmith_index_u32(var_0.c, 10u)], 25532u) >> (vec3<u32>(u_input.b.x, 2591u, 4294967295u) % vec3<u32>(32u))) | ~vec3<u32>(global0[_wgslsmith_index_u32(9335u, 10u)], var_0.c, var_0.c), firstLeadingBit(reverseBits(vec3<u32>(global0[_wgslsmith_index_u32(var_0.c, 10u)], u_input.c, 0u)))) | _wgslsmith_clamp_vec3_u32(firstLeadingBit(_wgslsmith_clamp_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(22931u, 10u)], 4294967295u, 4294967295u) ^ vec3<u32>(u_input.c, u_input.c, var_0.c), vec3<u32>(1u, global0[_wgslsmith_index_u32(4294967295u, 10u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 10u)], 10u)]) | vec3<u32>(4294967295u, global0[_wgslsmith_index_u32(23322u, 10u)], global0[_wgslsmith_index_u32(u_input.c, 10u)]), _wgslsmith_add_vec3_u32(vec3<u32>(3993u, global0[_wgslsmith_index_u32(0u, 10u)], 0u), vec3<u32>(78882u, u_input.b.x, global0[_wgslsmith_index_u32(4294967295u, 10u)])))), abs(~vec3<u32>(91838u, global0[_wgslsmith_index_u32(83731u, 10u)], 4294967295u) & vec3<u32>(1u, 1u, 1u)), _wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(97648u, u_input.c, var_0.c), vec3<u32>(0u, 7432u, 63663u), vec3<u32>(111130u, var_0.c, 16810u)), vec3<u32>(1u, var_0.c, u_input.b.x)), vec3<u32>(1u, global0[_wgslsmith_index_u32(var_0.c, 10u)], 4294967295u) >> (~vec3<u32>(73446u, u_input.c, 4294967295u) % vec3<u32>(32u))));
    let var_2 = _wgslsmith_f_op_f32(var_0.a.x - _wgslsmith_f_op_f32(-var_0.a.x));
    let var_3 = select(vec2<i32>(-max(u_input.a, _wgslsmith_clamp_i32(u_input.a, -2147483647i, 333i)), ~u_input.a >> (global0[_wgslsmith_index_u32(37321u, 10u)] % 32u)), vec2<i32>(12676i << ((u_input.c & 30630u) % 32u), abs(_wgslsmith_mod_i32(u_input.a, u_input.a) ^ -u_input.a)), !select(!(!vec2<bool>(var_0.b, var_0.b)), vec2<bool>(!var_0.b, select(var_0.b, true, false)), vec2<bool>(any(vec3<bool>(var_0.b, false, false)), !var_0.b)));
    var var_4 = func_1(func_1(Struct_1(var_0.a, func_1(func_1(Struct_1(vec3<f32>(var_0.a.x, 953f, -2131f), true, 0u), Struct_1(var_0.a, var_0.b, var_0.c)), func_1(Struct_1(var_0.a, true, 1u), Struct_1(vec3<f32>(var_2, -391f, var_2), false, var_0.c))).b, var_0.c), Struct_1(var_0.a, false, 1u)), func_1(func_1(Struct_1(var_0.a, var_0.b || var_0.b, u_input.b.x), Struct_1(func_1(Struct_1(vec3<f32>(var_2, var_0.a.x, var_0.a.x), true, global0[_wgslsmith_index_u32(0u, 10u)]), Struct_1(vec3<f32>(var_0.a.x, var_0.a.x, -1038f), false, global0[_wgslsmith_index_u32(1u, 10u)])).a, false, firstLeadingBit(12815u))), func_1(Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2, var_0.a.x, -1248f)), !var_0.b, _wgslsmith_mult_u32(global0[_wgslsmith_index_u32(97021u, 10u)], 34128u)), func_1(Struct_1(vec3<f32>(944f, -1170f, -944f), false, var_0.c), Struct_1(var_0.a, var_0.b, var_1.x)))));
    var_4 = func_1(Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_2), var_0.a.x, -605f)), true, 4294967295u), func_1(func_1(Struct_1(vec3<f32>(-1004f, -1782f, -1428f), all(vec2<bool>(true, true)), ~8322u), Struct_1(_wgslsmith_f_op_vec3_f32(-var_0.a), true, ~1u)), func_1(func_1(func_1(Struct_1(vec3<f32>(-1895f, var_4.a.x, var_2), var_0.b, 1u), Struct_1(var_4.a, var_0.b, var_0.c)), Struct_1(vec3<f32>(-274f, 1199f, var_2), var_0.b, 4294967295u)), Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 135f, 2258f)), true, ~var_4.c))));
    var var_5 = 26193u;
    let x = u_input.a;
    s_output = StorageBuffer(global0[_wgslsmith_index_u32(1u, 10u)]);
}

