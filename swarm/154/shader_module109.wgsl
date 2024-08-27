struct Struct_1 {
    a: vec4<i32>,
    b: vec2<f32>,
    c: u32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: f32,
    c: f32,
    d: vec3<bool>,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(-19241i, 276i);

var<private> global1: Struct_2 = Struct_2(vec4<u32>(21966u, 8727u, 48552u, 15032u), -316f, -103f, vec3<bool>(false, false, false), vec4<i32>(-15706i, -1i, i32(-2147483648), 1i));

var<private> global2: Struct_2 = Struct_2(vec4<u32>(0u, 59388u, 14426u, 1u), -2728f, -1402f, vec3<bool>(false, false, false), vec4<i32>(1i, 5371i, -9573i, 0i));

var<private> global3: Struct_2;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec2<i32>) -> u32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), global3.b, _wgslsmith_f_op_f32(min(332f, _wgslsmith_f_op_f32(-global2.c)))))));
    let var_1 = Struct_1(countOneBits(_wgslsmith_mod_vec4_i32(~global1.e, global3.e)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-374f * -110f)) + _wgslsmith_f_op_f32(1283f * 318f)), 465f), _wgslsmith_mod_u32(firstTrailingBit(0u), 1u));
    let var_2 = u_input.d != ~(~global2.a.x);
    return _wgslsmith_dot_vec3_u32(select(vec3<u32>(global1.a.x, ~global1.a.x ^ 36577u, 0u), min(~_wgslsmith_add_vec3_u32(global3.a.zxx, vec3<u32>(var_1.c, var_1.c, var_1.c)), (global1.a.xxz << (vec3<u32>(41159u, 1u, 63542u) % vec3<u32>(32u))) ^ reverseBits(global2.a.xzy)), vec3<bool>(false, global3.d.x, !global2.d.x)), vec3<u32>(abs(global3.a.x), global1.a.x, ~u_input.b));
}

fn func_4(arg_0: u32, arg_1: vec2<u32>, arg_2: vec3<f32>) -> vec4<u32> {
    global2 = Struct_2(max(~_wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(global3.a, vec4<u32>(global2.a.x, global3.a.x, global1.a.x, 0u)), vec4<u32>(arg_0, global2.a.x, 1u, global3.a.x) ^ vec4<u32>(arg_1.x, 74859u, global3.a.x, 16974u)), vec4<u32>(68044u, abs(~u_input.e.x), _wgslsmith_add_u32(arg_0, 1u) ^ _wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.x, arg_1.x, global2.a.x), vec3<u32>(10138u, 4294967295u, u_input.d)), ~4472u)), 1f, global3.b, select(global3.d, global1.d, !select(global2.d, select(global1.d, global1.d, true), vec3<bool>(false, true, true))), abs(_wgslsmith_sub_vec4_i32(select(global2.e >> (vec4<u32>(1u, 3288u, global2.a.x, 4294967295u) % vec4<u32>(32u)), _wgslsmith_mod_vec4_i32(u_input.c, global3.e), select(vec4<bool>(global3.d.x, false, global3.d.x, false), vec4<bool>(global1.d.x, false, false, true), vec4<bool>(false, global2.d.x, true, global1.d.x))), -_wgslsmith_div_vec4_i32(global3.e, global3.e))));
    var var_0 = Struct_2(vec4<u32>(~(select(0u, 473u, true) & ~u_input.e.x), arg_0, _wgslsmith_div_u32(0u, max(arg_0, _wgslsmith_div_u32(arg_1.x, 47604u))), countOneBits(abs(0u))), _wgslsmith_f_op_f32(-global1.c), _wgslsmith_f_op_f32(trunc(-754f)), !(!(!select(global2.d, vec3<bool>(global2.d.x, false, true), true))), vec4<i32>(global0.x, global1.e.x, _wgslsmith_dot_vec2_i32(global1.e.yz, ~global1.e.xy), select(global3.e.x, firstTrailingBit(global2.e.x), _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 0i), vec2<i32>(6208i, global1.e.x)) > max(-45656i, -35423i))));
    var_0 = Struct_2(global3.a, 523f, _wgslsmith_f_op_f32(-global3.c), global1.d, select(vec4<i32>(global2.e.x, (global3.e.x >> (global3.a.x % 32u)) ^ ~u_input.a, max(1i, ~(-35619i)), ~(~global2.e.x)), global2.e, global3.d.x));
    let var_1 = select(global1.e.xyw, _wgslsmith_mod_vec3_i32(~firstLeadingBit(~vec3<i32>(global0.x, global0.x, u_input.c.x)), abs(reverseBits(_wgslsmith_mult_vec3_i32(vec3<i32>(var_0.e.x, -52689i, global0.x), vec3<i32>(-26705i, u_input.c.x, global0.x))))), all(select(!global1.d, vec3<bool>(global2.d.x, all(vec4<bool>(global3.d.x, false, global3.d.x, true)), var_0.d.x), select(select(global1.d, var_0.d, vec3<bool>(var_0.d.x, global3.d.x, global2.d.x)), !var_0.d, select(vec3<bool>(true, var_0.d.x, global1.d.x), vec3<bool>(global1.d.x, false, global1.d.x), global1.d)))));
    global0 = vec2<i32>(54332i, u_input.a);
    return ~(~(~global1.a)) >> (firstLeadingBit(~vec4<u32>(1u, ~4294967295u, 38242u, global2.a.x)) % vec4<u32>(32u));
}

fn func_2() -> vec4<u32> {
    global3 = Struct_2(func_4(~_wgslsmith_sub_u32(func_3(global2.e.xw), ~global1.a.x), vec2<u32>(67696u, abs(58031u)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(global3.b, global1.b, 404f), vec3<f32>(global1.c, 916f, global1.c))))))), global3.c, _wgslsmith_f_op_f32(-915f - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global1.c + _wgslsmith_f_op_f32(step(987f, 460f))), _wgslsmith_f_op_f32(exp2(global2.c))))), global3.d, vec4<i32>(~global1.e.x, _wgslsmith_dot_vec3_i32(firstLeadingBit(max(vec3<i32>(-2147483647i, global0.x, 1i), u_input.c.zyw)), vec3<i32>(~2147483647i, global3.e.x, _wgslsmith_clamp_i32(global3.e.x, global3.e.x, 1i))), ~global1.e.x, ~(~(~0i))));
    var var_0 = select(global2.e, _wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, reverseBits(-1i | global3.e.x), 2147483647i, -(i32(-1i) * -1i)), -(~global1.e)), vec4<bool>(false, true, !any(!global3.d), all(!global1.d)));
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -651f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(global3.c))))));
    let var_2 = Struct_2(_wgslsmith_mod_vec4_u32(~(~global1.a), ~vec4<u32>(u_input.d, ~u_input.e.x, 0u, global1.a.x)), 1837f, global1.c, vec3<bool>(false & global1.d.x, true, !global1.d.x), vec4<i32>(global3.e.x, _wgslsmith_div_i32(1i | -var_0.x, global3.e.x), -2147483647i, _wgslsmith_mod_i32(~global2.e.x, 32428i)));
    global3 = var_2;
    return vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(firstTrailingBit(10594u), 4294967295u, func_4(52745u, var_2.a.zz, vec3<f32>(-236f, -223f, global1.c)).x), 4294967295u), ~(~1u), 1u, ~u_input.e.x) | (global3.a >> (~global1.a % vec4<u32>(32u)));
}

fn func_1(arg_0: f32, arg_1: Struct_1) -> Struct_2 {
    let var_0 = ~global1.e.x;
    var var_1 = ~(arg_1.c >> (_wgslsmith_sub_u32(104897u, ~2172u >> (global3.a.x % 32u)) % 32u));
    let var_2 = _wgslsmith_mult_vec4_u32(select(~global2.a, firstLeadingBit(func_2()), global1.d.x), select(~vec4<u32>(0u, u_input.e.x, global2.a.x, 7157u), global2.a, !(!(!vec4<bool>(global2.d.x, true, global3.d.x, false)))));
    var var_3 = Struct_1(_wgslsmith_div_vec4_i32(_wgslsmith_clamp_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-3715i, -24833i, arg_1.a.x, -2147483647i), u_input.c), global3.e, u_input.c), global2.e ^ vec4<i32>(u_input.a, arg_1.a.x, global2.e.x, 1i)) << (~(_wgslsmith_sub_vec4_u32(global3.a, vec4<u32>(0u, global2.a.x, u_input.e.x, 98110u)) ^ ~global1.a) % vec4<u32>(32u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-arg_1.b), vec2<f32>(-464f, global2.c), !vec2<bool>(global2.d.x, true))) * _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1085f, arg_1.b.x), arg_1.b)))))), _wgslsmith_clamp_u32(~_wgslsmith_add_u32(u_input.b, global2.a.x), 0u, 0u) << ((~(~global1.a.x) ^ u_input.e.x) % 32u));
    let var_4 = var_2 | global2.a;
    return Struct_2(global2.a, -1548f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.c) * 1123f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(arg_0, var_3.b.x)))))) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_3.b.x - _wgslsmith_f_op_f32(trunc(-480f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-516f + var_3.b.x), _wgslsmith_div_f32(global3.c, 720f)))))), vec3<bool>(true, !any(vec2<bool>(false, false)), true), ~(~countOneBits(var_3.a)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<bool>(true, 4294967295u < global1.a.x, global1.d.x, true | (any(vec4<bool>(global2.d.x, global1.d.x, true, false)) || global2.d.x));
    global1 = func_1(-666f, Struct_1(vec4<i32>(max(global3.e.x & global2.e.x, -14180i), -37993i, 0i, -2147483647i), vec2<f32>(_wgslsmith_f_op_f32(min(-2298f, -650f)), global3.b), abs(global2.a.x)));
    let var_1 = Struct_2(vec4<u32>(abs(u_input.b), func_1(-720f, Struct_1(vec4<i32>(u_input.a, global1.e.x, u_input.a, 18540i), vec2<f32>(global1.b, global1.b), 5427u)).a.x >> (~(global3.a.x >> (0u % 32u)) % 32u), u_input.d, 0u), _wgslsmith_f_op_f32(f32(-1f) * -1234f), 857f, !global2.d, vec4<i32>(firstLeadingBit(firstTrailingBit(global3.e.x)), _wgslsmith_sub_i32((i32(-1i) * -1i) << (1u % 32u), -90554i), global2.e.x, countOneBits(~global1.e.x)));
    let var_2 = u_input.e.x;
    let var_3 = Struct_1(abs(-select(global2.e, _wgslsmith_div_vec4_i32(global3.e, vec4<i32>(global1.e.x, -8126i, 34511i, 74501i)), false | global3.d.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global1.b, var_1.c))))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-671f, var_1.c))), vec2<f32>(global3.c, global3.b)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.b, -671f) + vec2<f32>(-1459f, global1.c)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 1046f))))), _wgslsmith_dot_vec2_u32(abs(vec2<u32>(~global2.a.x, ~u_input.d)), ~select(_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, var_2), vec2<u32>(var_1.a.x, 0u), global1.a.yy), global1.a.xx >> (global1.a.zy % vec2<u32>(32u)), global3.d.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-vec4<f32>(984f, global2.b, func_1(2483f, Struct_1(global2.e, var_3.b, var_2)).c, var_1.b)), 1u, global2.c, ~_wgslsmith_dot_vec4_u32(min(vec4<u32>(var_2, 0u, 0u, var_2) & global1.a, abs(global1.a)), global1.a));
}

