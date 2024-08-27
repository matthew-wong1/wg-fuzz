struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: u32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec2<i32>,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: f32,
}

struct Struct_4 {
    a: u32,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec2<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<i32>,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<i32>(1i, -2371i, 3060i, -16159i), false, 0u);

var<private> global1: array<Struct_1, 31>;

var<private> global2: array<vec4<bool>, 2>;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: u32) -> u32 {
    var var_0 = 4294967295u ^ _wgslsmith_mult_u32(arg_0, firstTrailingBit(~0u));
    global2 = array<vec4<bool>, 2>();
    global0 = global1[_wgslsmith_index_u32(4294967295u, 31u)];
    global1 = array<Struct_1, 31>();
    global0 = Struct_1(vec4<i32>(-(~12821i), 0i, -_wgslsmith_mult_i32(abs(-75072i), 1i), -2147483647i), (false && (any(vec4<bool>(false, false, true, global0.b)) && any(vec3<bool>(true, false, true)))) & global0.b, _wgslsmith_add_u32(abs(abs(28298u)), arg_0));
    return _wgslsmith_clamp_u32(64278u, 0u, u_input.b);
}

fn func_2(arg_0: Struct_4, arg_1: vec2<i32>, arg_2: Struct_4, arg_3: Struct_3) -> f32 {
    var var_0 = Struct_4(64693u, arg_0.a);
    let var_1 = ~(~_wgslsmith_mod_vec4_u32(~(~vec4<u32>(arg_3.a, 33984u, 1u, arg_3.a)), ~abs(vec4<u32>(global0.c, global0.c, arg_3.a, 0u))));
    let var_2 = vec2<u32>(func_3(~(~_wgslsmith_sub_u32(arg_0.b, 48790u))), abs(global0.c ^ ~arg_0.a) ^ firstLeadingBit(29144u));
    var var_3 = vec3<f32>(arg_3.b, _wgslsmith_f_op_f32(round(arg_3.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(436f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.b) - _wgslsmith_f_op_f32(ceil(arg_3.b)))) + arg_3.b));
    var var_4 = _wgslsmith_f_op_f32(max(-884f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_3.x)))))));
    return _wgslsmith_f_op_f32(var_3.x * _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -2229f))))), _wgslsmith_f_op_f32(floor(1f))));
}

fn func_4(arg_0: Struct_4, arg_1: vec4<f32>, arg_2: Struct_1) -> vec4<bool> {
    let var_0 = arg_0;
    global0 = global1[_wgslsmith_index_u32(global0.c, 31u)];
    global1 = array<Struct_1, 31>();
    global2 = array<vec4<bool>, 2>();
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_1) - arg_1);
    return select(!(!global2[_wgslsmith_index_u32(~arg_0.b, 2u)]), select(select(global2[_wgslsmith_index_u32(~4294967295u, 2u)], global2[_wgslsmith_index_u32(4294967295u, 2u)], arg_0.a < 35634u), select(!(!vec4<bool>(false, true, global0.b, true)), select(vec4<bool>(arg_2.b, true, false, global0.b), global2[_wgslsmith_index_u32(abs(var_0.a), 2u)], !global2[_wgslsmith_index_u32(1u, 2u)]), all(vec3<bool>(false, false, true))), vec4<bool>(arg_2.b, !(!arg_2.b), true, arg_2.c <= ~5419u)), false);
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_1) -> bool {
    let var_0 = func_4(Struct_4(~(~global0.c >> (u_input.b % 32u)), _wgslsmith_dot_vec3_u32(~(u_input.e | u_input.e), vec3<u32>(5239u, 0u, arg_1.c) & u_input.e)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(floor(-2470f)), 454f, -1595f, _wgslsmith_f_op_f32(step(448f, 301f))), vec4<f32>(_wgslsmith_f_op_f32(func_2(Struct_4(77886u, 1u), arg_1.a.ww, Struct_4(global0.c, u_input.a), Struct_3(1u, 1655f))), _wgslsmith_f_op_f32(min(-1000f, 1787f)), _wgslsmith_f_op_f32(trunc(-846f)), -313f), vec4<bool>(true, all(vec2<bool>(false, arg_1.b)), true, arg_1.b)))), Struct_1(countOneBits(-vec4<i32>(arg_0.x, -2147483647i, 17733i, u_input.c)) ^ vec4<i32>(_wgslsmith_mult_i32(-3407i, u_input.c), arg_1.a.x, 1i, -1i), !all(select(vec4<bool>(true, arg_1.b, arg_1.b, false), global2[_wgslsmith_index_u32(48016u, 2u)], global2[_wgslsmith_index_u32(0u, 2u)])), 112356u));
    global0 = arg_1;
    global0 = Struct_1(-firstLeadingBit(arg_1.a), false, 11656u);
    let var_1 = Struct_1(vec4<i32>(_wgslsmith_div_i32(u_input.c, u_input.c), arg_0.x, -_wgslsmith_div_i32(reverseBits(-34159i), _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, arg_0.x, u_input.c, arg_1.a.x), arg_1.a)), -18818i), true, ~(~(0u >> (_wgslsmith_mod_u32(u_input.a, 4294967295u) % 32u))));
    var var_2 = Struct_1(select(abs(_wgslsmith_div_vec4_i32(vec4<i32>(global0.a.x, 1i, 591i, u_input.c), global0.a)), (-var_1.a ^ vec4<i32>(arg_1.a.x, arg_1.a.x, arg_1.a.x, 2147483647i)) >> (vec4<u32>(2501u, _wgslsmith_add_u32(20163u, 0u), _wgslsmith_dot_vec2_u32(u_input.d, u_input.d), ~arg_1.c) % vec4<u32>(32u)), all(!select(var_0.yzz, vec3<bool>(true, global0.b, var_1.b), vec3<bool>(true, arg_1.b, false)))), any(!(!select(var_0, vec4<bool>(false, true, false, false), vec4<bool>(arg_1.b, true, false, var_1.b)))), firstTrailingBit(26765u));
    return _wgslsmith_div_u32(4294967295u, 1u) != arg_1.c;
}

fn func_5(arg_0: bool, arg_1: bool) -> f32 {
    var var_0 = max(vec4<i32>(u_input.c, -u_input.c, ~global0.a.x, _wgslsmith_sub_i32(-global0.a.x, ~(-46839i))), global0.a);
    let var_1 = ~firstLeadingBit(_wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(global0.c, 60778u, 1u, u_input.d.x), ~vec4<u32>(439u, 4294967295u, 2748u, u_input.b)), ~(~vec4<u32>(u_input.a, 4294967295u, 1u, 10885u))));
    global2 = array<vec4<bool>, 2>();
    return _wgslsmith_div_f32(-165f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1166f - -1438f))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_5(func_1(global0.a.wwz, global1[_wgslsmith_index_u32(0u, 31u)]), true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1428f)))) - -1863f);
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(765f, 1032f, 789f, 415f), vec4<f32>(1000f, 841f, 1732f, -1409f))) + vec4<f32>(-718f, -911f, 2565f, 560f))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(811f, -450f, 564f, -374f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1490f, -343f, -511f, -978f))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1613f, 926f, 1548f, -1000f) - vec4<f32>(502f, -326f, 1740f, -434f)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-2077f, -1173f, -335f, 1523f))), true)))));
    let var_2 = vec4<bool>(all(vec2<bool>(!any(vec3<bool>(global0.b, global0.b, false)), true || func_4(Struct_4(global0.c, global0.c), vec4<f32>(953f, -486f, var_1.x, var_1.x), Struct_1(vec4<i32>(u_input.c, -3391i, u_input.c, u_input.c), global0.b, global0.c)).x)), !(!any(!vec3<bool>(global0.b, false, global0.b))), all(!vec4<bool>(func_1(vec3<i32>(37268i, 0i, global0.a.x), Struct_1(global0.a, true, 54098u)), all(vec3<bool>(global0.b, true, global0.b)), true, true)), !((_wgslsmith_dot_vec2_i32(global0.a.zz, vec2<i32>(-64750i, global0.a.x)) > u_input.c) & true));
    global0 = global1[_wgslsmith_index_u32(9322u, 31u)];
    let var_3 = Struct_2(vec2<bool>(select(global0.b, !func_1(global0.a.zzx, Struct_1(vec4<i32>(global0.a.x, global0.a.x, u_input.c, u_input.c), false, 22500u)), !(!global0.b)), true), vec2<i32>(-1i) * -_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.c, global0.a.x), _wgslsmith_mult_vec2_i32(global0.a.zx, vec2<i32>(u_input.c, -2147483647i))), Struct_1(global0.a, !(all(global2[_wgslsmith_index_u32(1u, 2u)]) | !var_2.x), 53946u), Struct_1(global0.a, !select(all(var_2), var_1.x < 642f, true | global0.b), reverseBits(u_input.e.x)), global1[_wgslsmith_index_u32(54668u, 31u)]);
    global1 = array<Struct_1, 31>();
    var var_4 = Struct_4(_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(~u_input.e.xy, vec2<u32>(u_input.e.x, _wgslsmith_dot_vec4_u32(vec4<u32>(var_3.e.c, global0.c, 21875u, var_3.c.c), vec4<u32>(u_input.b, 61695u, 1u, u_input.d.x)))), _wgslsmith_mod_u32(var_3.c.c, _wgslsmith_dot_vec2_u32(~vec2<u32>(var_3.e.c, u_input.d.x), vec2<u32>(67807u, 41540u))), _wgslsmith_sub_u32(_wgslsmith_div_u32(select(u_input.b, 2255u, var_3.c.b), 20505u), countOneBits(abs(1u)))), firstTrailingBit(countOneBits(15075u)));
    let var_5 = global0.c;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x * var_1.x))), _wgslsmith_f_op_f32(-1844f * -588f)), global0.a.xxy, max(global0.a.x, -global0.a.x), -2147483647i);
}

