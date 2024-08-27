struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: u32,
    d: u32,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec4<u32>,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: vec4<u32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(1193f, 1000f, -212f, 326f);

var<private> global1: Struct_1 = Struct_1(vec4<i32>(-32996i, 2147483647i, 0i, 1i), 433f, 3214u, 4294967295u, 2147483647i);

var<private> global2: vec2<f32> = vec2<f32>(-499f, -2170f);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: vec2<f32>) -> f32 {
    global2 = _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(-976f * 1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.x * arg_2.b)) * _wgslsmith_f_op_f32(sign(global2.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1188f, _wgslsmith_div_f32(-3003f, arg_3.x)))))));
    var var_0 = _wgslsmith_dot_vec4_u32(vec4<u32>(~(~abs(32392u)), 0u, max(1u >> (~u_input.b.x % 32u), countOneBits(~arg_2.c)), 84699u), vec4<u32>(1u | _wgslsmith_dot_vec2_u32(arg_1.zx, arg_1.xz), _wgslsmith_div_u32(arg_2.c, u_input.c.x), arg_2.c, arg_0.d) & ~_wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(u_input.e, vec4<u32>(1u, arg_1.x, global1.c, u_input.a)), ~vec4<u32>(4294967295u, 1u, 1u, arg_2.c)));
    var var_1 = abs(-(_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_2.e, 21650i, 61856i, arg_2.e), vec4<i32>(arg_0.a.x, 14641i, 0i, arg_2.a.x)), _wgslsmith_sub_i32(u_input.d, global1.a.x)) >> (10695u % 32u)));
    let var_2 = arg_0.a;
    var_0 = arg_2.c;
    return _wgslsmith_f_op_f32(-118f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-408f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(327f + 233f) + _wgslsmith_div_f32(-2097f, arg_3.x)), all(vec3<bool>(true, false, true)) || true))));
}

fn func_2(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: f32) -> vec4<bool> {
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(global2.x * global1.b), arg_1.b, -1657f, _wgslsmith_f_op_f32(select(arg_1.b, -507f, true))), vec4<f32>(2496f, arg_1.b, global0.x, 1267f))), vec4<f32>(_wgslsmith_f_op_f32(-global2.x), global2.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.b, arg_2) + _wgslsmith_f_op_f32(func_3(arg_1, vec3<u32>(arg_0.x, 5593u, arg_0.x), Struct_1(vec4<i32>(0i, -2147483647i, arg_1.a.x, u_input.d), arg_2, u_input.a, global1.c, -1i), global0.yw))), global2.x)) * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_div_f32(global2.x, _wgslsmith_f_op_f32(max(-1092f, 992f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1292f)), 1884f, -1369f), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(global1.b, 115f, _wgslsmith_f_op_f32(ceil(arg_1.b)), global2.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.b, -377f, 1330f, arg_2))))))));
    var var_0 = select(vec3<bool>(!any(vec3<bool>(true, true, true)), any(vec3<bool>(false, all(vec2<bool>(false, false)), all(vec3<bool>(true, true, false)))), arg_2 >= global2.x), select(!(!select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false))), !vec3<bool>(false, global1.c > arg_1.c, true), select(vec3<bool>(true, true, arg_1.b >= -538f), vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), false)))), vec3<bool>(any(vec3<bool>(-497f != arg_2, true, any(vec2<bool>(true, true)))), true, true));
    var_0 = select(vec3<bool>(all(select(!vec4<bool>(var_0.x, true, var_0.x, var_0.x), vec4<bool>(var_0.x, false, var_0.x, false), !var_0.x)), var_0.x, var_0.x), vec3<bool>(all(vec4<bool>(true, true, true, true)), all(vec3<bool>(false, 1114f != global1.b, any(vec3<bool>(true, false, var_0.x)))), arg_1.b <= global0.x), !select(!vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(true, true, true), all(vec4<bool>(var_0.x, false, var_0.x, false))));
    var var_1 = u_input.c;
    var_1 = u_input.e;
    return !vec4<bool>(any(select(vec4<bool>(var_0.x, false, var_0.x, false), vec4<bool>(true, var_0.x, false, var_0.x), var_0.x)), !var_0.x, select(false, !(1u > arg_1.c), select(false, true, any(vec3<bool>(false, false, var_0.x)))), all(select(vec2<bool>(true, true), select(vec2<bool>(false, false), var_0.xy, var_0.x), false)));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> i32 {
    let var_0 = Struct_1(-arg_0.a, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(181f)))), 4272u, u_input.b.x, min(abs(_wgslsmith_dot_vec3_i32(~vec3<i32>(-2147483647i, global1.e, arg_0.a.x), max(global1.a.wwy, vec3<i32>(0i, u_input.d, u_input.d)))), u_input.d));
    var var_1 = select(vec2<bool>(!(arg_1.a.x > -5295i), all(func_2(~u_input.e.yyw, Struct_1(vec4<i32>(var_0.a.x, arg_0.e, global1.a.x, arg_0.e), -1430f, arg_0.d, 21913u, u_input.d), global0.x))), select(select(vec2<bool>(true, true), vec2<bool>(true, false), false), select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))), !(!func_2(vec3<u32>(arg_0.c, 41230u, arg_0.d), arg_1, 2318f).zy)), true);
    var var_2 = arg_1;
    var_2 = var_0;
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-131f, -313f, -843f, -662f)))))));
    return max(1i, countOneBits(_wgslsmith_mod_i32(var_0.a.x & 20250i, u_input.d)));
}

fn func_4(arg_0: i32, arg_1: u32, arg_2: vec2<i32>, arg_3: u32) -> f32 {
    let var_0 = ~vec2<u32>(arg_3, ~_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(arg_3, u_input.a, arg_1), u_input.c.xyx, u_input.e.yww), select(u_input.e.yyw, vec3<u32>(4294967295u, 1u, 42113u), false)));
    let var_1 = ~(~(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1, arg_3, u_input.b.x, 57931u), u_input.c))));
    var var_2 = Struct_1(firstLeadingBit(~vec4<i32>(-68544i, -2147483647i, i32(-1i) * -20148i, ~1i)), -1433f, _wgslsmith_mod_u32(global1.c & 110327u, 0u), ~arg_1, 1i);
    var var_3 = -1350f;
    global1 = Struct_1(select(global1.a, global1.a & var_2.a, vec4<bool>((global0.x != global2.x) == (u_input.b.x > 50996u), false, false, any(vec4<bool>(false, true, true, false)))), global2.x, countOneBits(u_input.b.x | 0u), ~var_0.x | 1u, var_2.e ^ -(~max(u_input.d, 0i)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -557f));
}

fn func_5(arg_0: f32, arg_1: Struct_1) -> Struct_1 {
    global2 = global0.ww;
    var var_0 = _wgslsmith_f_op_vec3_f32(global0.xyw + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(global0.xxz - vec3<f32>(arg_1.b, arg_0, global1.b)), vec3<f32>(global1.b, global2.x, global1.b), vec3<bool>(true, false, true))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(global0.xzz)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1205f, 1000f, arg_0))));
    let var_1 = vec2<i32>(max(-arg_1.a.x, _wgslsmith_sub_i32(global1.a.x, ~(-1i))), -2147483647i) | select(vec2<i32>(_wgslsmith_add_i32(~23549i, _wgslsmith_sub_i32(1958i, arg_1.a.x)), firstTrailingBit(1i)), arg_1.a.wx, !all(select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), false)));
    var var_2 = ~(~1u);
    global1 = Struct_1(global1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global0.x, _wgslsmith_f_op_f32(ceil(arg_1.b))))), ~0u, ~_wgslsmith_sub_u32(reverseBits(arg_1.c & 0u), arg_1.c), _wgslsmith_div_i32(~var_1.x, 1i) | (~61474i << (1u % 32u)));
    return Struct_1(reverseBits(vec4<i32>(-1i) * -global1.a) >> (countOneBits(_wgslsmith_sub_vec4_u32(u_input.c, u_input.e)) % vec4<u32>(32u)), _wgslsmith_f_op_f32(ceil(962f)), global1.d, arg_1.d, min(18054i, -23428i));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_5(_wgslsmith_f_op_f32(func_4(_wgslsmith_add_i32(-2147483647i, 1i), u_input.c.x, _wgslsmith_sub_vec2_i32(vec2<i32>(1i, -global1.e), vec2<i32>(func_1(Struct_1(global1.a, global1.b, 24847u, 7379u, 0i), Struct_1(global1.a, 143f, global1.d, global1.c, global1.e)), global1.e)), ~(~global1.d))), Struct_1(-select(global1.a, global1.a, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(1000f)), _wgslsmith_f_op_f32(-global1.b)))), _wgslsmith_div_u32(~(~1u), 106842u), ~reverseBits(u_input.e.x), min(_wgslsmith_clamp_i32(u_input.d, abs(-1i), 2147483647i), _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(global1.e, -1i, -2147483647i, u_input.d), vec4<i32>(-30858i, 23820i, u_input.d, global1.e)), -vec4<i32>(-57098i, 11824i, 0i, u_input.d)))));
    var var_0 = func_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.b) * 1172f)) * 550f), func_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global1.b, global0.x))) * -331f), Struct_1(vec4<i32>(0i, _wgslsmith_dot_vec3_i32(vec3<i32>(16343i, u_input.d, u_input.d), global1.a.wyw), global1.e, global1.e), _wgslsmith_f_op_f32(trunc(global1.b)), global1.c, 0u, _wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(u_input.d, u_input.d, global1.e, global1.a.x)), abs(vec4<i32>(u_input.d, u_input.d, u_input.d, 32096i))))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -306f) * global1.b);
    let var_2 = func_5(_wgslsmith_div_f32(-527f, _wgslsmith_div_f32(-568f, _wgslsmith_f_op_f32(sign(-229f)))), func_5(285f, Struct_1(vec4<i32>(_wgslsmith_mod_i32(-2147483647i, -59812i), -7835i, 1i, var_0.a.x), global0.x, ~u_input.b.x, 1u, -1138i)));
    global2 = global0.xz;
    let x = u_input.a;
    s_output = StorageBuffer(-353f, vec4<u32>(~_wgslsmith_dot_vec4_u32(u_input.e, u_input.e), firstTrailingBit(~1u) >> (_wgslsmith_dot_vec2_u32(u_input.c.wx ^ vec2<u32>(global1.c, var_2.d), vec2<u32>(var_2.d, global1.c)) % 32u), 4294967295u | ~_wgslsmith_dot_vec2_u32(vec2<u32>(global1.c, 0u), vec2<u32>(global1.c, global1.d)), max(4294967295u, _wgslsmith_clamp_u32(1u, 15186u, 1u)) << ((72363u >> (var_2.c % 32u)) % 32u)), _wgslsmith_sub_vec4_u32(countOneBits(_wgslsmith_add_vec4_u32(u_input.e, u_input.c)), vec4<u32>(u_input.b.x, ~var_0.d, 33566u, var_2.d & var_2.c)), u_input.e);
}

