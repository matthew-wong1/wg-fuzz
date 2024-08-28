struct Struct_1 {
    a: vec3<bool>,
    b: vec2<bool>,
    c: vec2<f32>,
    d: vec2<i32>,
    e: vec3<f32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: bool,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 21> = array<vec2<i32>, 21>(vec2<i32>(i32(-2147483648), 1i), vec2<i32>(-14557i, i32(-2147483648)), vec2<i32>(21315i, 9371i), vec2<i32>(2147483647i, -21819i), vec2<i32>(i32(-2147483648), 1i), vec2<i32>(6104i, -1i), vec2<i32>(-26063i, 14221i), vec2<i32>(-37582i, 8027i), vec2<i32>(1i, 2147483647i), vec2<i32>(i32(-2147483648), 2147483647i), vec2<i32>(30822i, -12830i), vec2<i32>(2147483647i, 40353i), vec2<i32>(19391i, 24979i), vec2<i32>(-14040i, 52108i), vec2<i32>(69818i, i32(-2147483648)), vec2<i32>(33827i, -28762i), vec2<i32>(i32(-2147483648), -17165i), vec2<i32>(i32(-2147483648), 0i), vec2<i32>(6722i, i32(-2147483648)), vec2<i32>(i32(-2147483648), -25172i), vec2<i32>(27155i, -1792i));

var<private> global1: bool = true;

var<private> global2: array<vec2<i32>, 20> = array<vec2<i32>, 20>(vec2<i32>(0i, 0i), vec2<i32>(16420i, 50067i), vec2<i32>(0i, 2147483647i), vec2<i32>(i32(-2147483648), -46612i), vec2<i32>(0i, i32(-2147483648)), vec2<i32>(6824i, -16642i), vec2<i32>(1i, 2147483647i), vec2<i32>(2147483647i, -5946i), vec2<i32>(i32(-2147483648), i32(-2147483648)), vec2<i32>(2147483647i, 22588i), vec2<i32>(2147483647i, 16025i), vec2<i32>(-1i, -1i), vec2<i32>(-15732i, 63349i), vec2<i32>(0i, 0i), vec2<i32>(i32(-2147483648), 20100i), vec2<i32>(21254i, 1i), vec2<i32>(10326i, 47616i), vec2<i32>(6893i, i32(-2147483648)), vec2<i32>(1i, 0i), vec2<i32>(-34594i, i32(-2147483648)));

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: vec2<f32>) -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, arg_0.x, 1f, _wgslsmith_f_op_f32(arg_0.x - -1000f))) + vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) * _wgslsmith_f_op_f32(max(arg_0.x, 1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x * arg_0.x)), _wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(-arg_0.x)))));
    let var_1 = abs(min(countOneBits(_wgslsmith_div_vec4_u32(vec4<u32>(10837u, 51275u, 26603u, 0u), vec4<u32>(1u, 1u, 50086u, 1u))), vec4<u32>(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 72434u), vec2<u32>(0u, 0u)), ~0u, ~4294967295u)) ^ min(vec4<u32>(44980u, 1u, 1u, 15536u), vec4<u32>(~0u, ~51324u, 1u, 1u)));
    var var_2 = !(!vec4<bool>(true, all(select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), false)), select(true, false, any(vec4<bool>(false, true, true, false))), true));
    var var_3 = Struct_1(!vec3<bool>(any(vec4<bool>(var_2.x, true, true, var_2.x)) && (var_2.x & false), 1i < _wgslsmith_mult_i32(u_input.a, -2147483647i), false), select(var_2.zw, var_2.yz, all(var_2.wxw)), arg_0, global0[_wgslsmith_index_u32(1u, 21u)] >> (~(~(~var_1.yw)) % vec2<u32>(32u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_0.x, var_0.x, -1098f))))));
    let var_4 = 4294967295u;
    return vec3<bool>(!(var_4 != select(var_4, var_4, false)), var_3.a.x, !(!(all(vec4<bool>(var_3.a.x, false, var_3.b.x, false)) || var_3.a.x)));
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(func_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(-374f, -928f) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-819f, -1915f) + vec2<f32>(-767f, 173f))))), select(vec2<bool>(true, false), !vec2<bool>(true, any(vec3<bool>(false, true, false))), func_3(vec2<f32>(-540f, _wgslsmith_div_f32(-432f, -1000f))).x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(263f, -1563f))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(1324f, -330f) + vec2<f32>(-857f, 595f))) + vec2<f32>(_wgslsmith_f_op_f32(-407f + 573f), -546f)) - vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1433f)), _wgslsmith_f_op_f32(step(-1553f, 308f)))), select(vec2<i32>(2147483647i, min(u_input.a, 18516i)), ~(~vec2<i32>(u_input.a, 1i)), any(select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), true))) & _wgslsmith_div_vec2_i32(_wgslsmith_clamp_vec2_i32(-global2[_wgslsmith_index_u32(12375u, 20u)], vec2<i32>(u_input.a, 20507i), vec2<i32>(0i, -1i)), -global0[_wgslsmith_index_u32(~0u, 21u)]), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(-246f, 528f, 724f) * vec3<f32>(1000f, -438f, 1195f)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(565f, -422f, -1000f)) + vec3<f32>(-1000f, -724f, 632f)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-220f, 1738f, 150f), vec3<f32>(-124f, 233f, -734f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-227f, -1114f, -2953f))))));
    global0 = array<vec2<i32>, 21>();
    var var_1 = ~firstLeadingBit(-((u_input.a | var_0.d.x) >> (75853u % 32u)));
    global1 = any(vec4<bool>(!var_0.a.x, var_0.b.x, !any(var_0.a), var_0.b.x));
    global1 = true;
    return Struct_1(var_0.a, func_3(vec2<f32>(_wgslsmith_f_op_f32(var_0.c.x * _wgslsmith_f_op_f32(select(1499f, var_0.c.x, true))), _wgslsmith_f_op_f32(floor(-1000f)))).xx, var_0.e.xy, -(var_0.d >> (vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 0u), vec2<u32>(7988u, 68887u)), 1u) % vec2<u32>(32u))), vec3<f32>(1554f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(-1344f)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0.c.x, -388f)) - var_0.c.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(674f, -823f)))) - _wgslsmith_f_op_f32(var_0.e.x * -297f))));
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: u32, arg_3: Struct_2) -> Struct_1 {
    global1 = (min(select(11458i, arg_0.d.x, true) & -33757i, arg_0.d.x) | _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(arg_3.c.d.x, arg_3.c.d.x) ^ global2[_wgslsmith_index_u32(1u, 20u)], ~global2[_wgslsmith_index_u32(47565u, 20u)]), firstLeadingBit(-vec2<i32>(arg_0.d.x, arg_3.c.d.x)))) <= u_input.a;
    let var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(arg_0.e - _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_3.c.c.x, 619f, 1000f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1623f, arg_3.a.x, -1000f), vec3<f32>(arg_3.c.c.x, arg_1, arg_1)))))), arg_0.b.x, Struct_1(func_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.e.yz) + _wgslsmith_f_op_vec2_f32(step(vec2<f32>(674f, arg_1), arg_0.e.yx)))), select(select(arg_3.c.a.zz, arg_3.c.a.xy, !arg_0.a.x), vec2<bool>(arg_3.b, true), false && !arg_3.b), arg_0.c, countOneBits(arg_0.d >> (~vec2<u32>(4294967295u, arg_2) % vec2<u32>(32u))), arg_3.c.e));
    let var_1 = select(vec4<bool>(true, func_2().b.x, all(vec3<bool>(true, arg_0.b.x, 175f < arg_1)), true), vec4<bool>(false, _wgslsmith_dot_vec4_i32(max(vec4<i32>(32704i, arg_3.c.d.x, 37877i, u_input.a), vec4<i32>(arg_0.d.x, 18053i, var_0.c.d.x, u_input.a)), _wgslsmith_div_vec4_i32(vec4<i32>(1i, arg_0.d.x, u_input.a, arg_3.c.d.x), vec4<i32>(u_input.a, -2147483647i, -33930i, -2147483647i))) == 1i, true, true), all(func_2().a));
    var var_2 = arg_3.c;
    var_2 = var_0.c;
    return arg_3.c;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<i32>) -> Struct_2 {
    global1 = true;
    var var_0 = all(!(!vec2<bool>(true, arg_0.a.x)));
    let var_1 = Struct_1(!(!vec3<bool>(arg_0.b.x, false, !arg_1.b.x)), vec2<bool>(false, true), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.e.x - arg_0.c.x)), 360f)), -(~max(vec2<i32>(52714i, arg_0.d.x), _wgslsmith_mod_vec2_i32(global0[_wgslsmith_index_u32(0u, 21u)], global2[_wgslsmith_index_u32(0u, 20u)]))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(721f * -137f))), _wgslsmith_f_op_f32(-1000f * -1229f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.c.x) * _wgslsmith_f_op_f32(-arg_0.e.x)))));
    var var_2 = var_1;
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-722f + _wgslsmith_f_op_f32(trunc(551f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(783f, 710f))))) - 442f), var_2.c.x, _wgslsmith_f_op_f32(-var_1.c.x), var_1.e.x);
    return Struct_2(var_1.e, arg_1.b.x, arg_0);
}

fn func_1(arg_0: i32, arg_1: vec4<f32>) -> vec3<bool> {
    var var_0 = func_5(func_4(func_2(), 1178f, abs(countOneBits(countOneBits(43064u))), Struct_2(arg_1.xzw, all(vec4<bool>(true, true, true, true)), func_2())), Struct_1(vec3<bool>(false, any(vec4<bool>(true, false, false, false)) | true, any(vec3<bool>(true, true, false))), vec2<bool>(!all(vec3<bool>(true, false, false)), true), arg_1.zz, countOneBits(global2[_wgslsmith_index_u32(59875u, 20u)]), _wgslsmith_f_op_vec3_f32(select(arg_1.wwz, _wgslsmith_f_op_vec3_f32(-func_2().e), !func_2().a))), ~_wgslsmith_sub_vec3_i32(abs(vec3<i32>(u_input.a, -2147483647i, u_input.a)), vec3<i32>(min(-1i, -2147483647i), abs(0i), 19981i)));
    var_0 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(1340f, arg_1.x)))) + 1f), func_2().e.x, 1940f), true, var_0.c);
    let var_1 = countOneBits(select(~(~vec2<u32>(0u, 41865u)), ~vec2<u32>(1503u, 35091u), select(false, all(vec4<bool>(var_0.c.a.x, var_0.b, var_0.c.b.x, var_0.c.a.x)), var_0.c.a.x)) ^ _wgslsmith_clamp_vec2_u32(~select(vec2<u32>(88357u, 4294967295u), vec2<u32>(1u, 0u), var_0.c.a.xz), vec2<u32>(1u, 1u), select(vec2<u32>(1u, 78696u), vec2<u32>(19766u, 71267u), false) >> (vec2<u32>(1u, 68113u) % vec2<u32>(32u))));
    var var_2 = ~_wgslsmith_add_u32(var_1.x, ~0u);
    global0 = array<vec2<i32>, 21>();
    return var_0.c.a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<i32>, 21>();
    global1 = true;
    global1 = true;
    var var_0 = Struct_1(func_1(_wgslsmith_dot_vec2_i32(global2[_wgslsmith_index_u32(~0u, 20u)], global2[_wgslsmith_index_u32(_wgslsmith_add_u32(4294967295u, ~4294967295u), 20u)]), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-541f, -127f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -840f), _wgslsmith_f_op_f32(floor(1283f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1434f))), -538f)), !vec2<bool>(func_2().b.x & true, true), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(826f, 1280f))) - vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1290f), -197f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_5(Struct_1(vec3<bool>(true, true, false), vec2<bool>(true, false), vec2<f32>(801f, 421f), vec2<i32>(2147483647i, u_input.a), vec3<f32>(-1000f, 2065f, 156f)), Struct_1(vec3<bool>(false, false, true), vec2<bool>(false, false), vec2<f32>(272f, -318f), vec2<i32>(-1i, 8785i), vec3<f32>(2039f, 125f, 216f)), vec3<i32>(u_input.a, u_input.a, -42906i)).a.zz + _wgslsmith_f_op_vec2_f32(round(vec2<f32>(697f, -113f)))))), ~(-global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(28220u, _wgslsmith_mult_u32(18572u, 78436u), max(57808u, 89430u)), 21u)]), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -611f) - _wgslsmith_f_op_f32(floor(190f))) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -879f), _wgslsmith_f_op_f32(-2002f * -954f), func_2().a.x))), -1203f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(170f)))))));
    global2 = array<vec2<i32>, 20>();
    let var_1 = max(_wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(reverseBits(vec4<u32>(1u, 1u, 1u, 1u)), select(vec4<u32>(4294967295u, 4294967295u, 0u, 4294967295u), max(vec4<u32>(14756u, 45848u, 6667u, 13512u), vec4<u32>(4294967295u, 20336u, 1u, 4294967295u)), var_0.b.x)), vec4<u32>(_wgslsmith_mod_u32(98144u, 16623u), _wgslsmith_clamp_u32(23822u, ~6641u, abs(12687u)), ~_wgslsmith_mult_u32(1u, 4294967295u), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 0u, 1u), vec3<u32>(16355u, 4294967295u, 58033u)) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 53916u, 15356u, 21361u), vec4<u32>(4294967295u, 0u, 0u, 86724u)) % 32u))), ~(~reverseBits(max(vec4<u32>(80970u, 68173u, 37333u, 44968u), vec4<u32>(30661u, 0u, 0u, 4294967295u)))));
    var_0 = func_4(Struct_1(var_0.a, func_5(func_2(), func_2(), _wgslsmith_clamp_vec3_i32(abs(vec3<i32>(1617i, 12150i, 12254i)), vec3<i32>(u_input.a, u_input.a, 1i), abs(vec3<i32>(u_input.a, var_0.d.x, u_input.a)))).c.a.zz, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.c.x, var_0.e.x) * var_0.c) + var_0.e.xy), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_0.c.x, -2854f)))), _wgslsmith_add_vec2_i32(-vec2<i32>(0i, var_0.d.x), vec2<i32>(-46432i, _wgslsmith_sub_i32(28074i, -1i))), var_0.e), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.e.x) * var_0.c.x) - var_0.e.x) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(336f + var_0.e.x))), 4294967295u, func_5(Struct_1(var_0.a, var_0.b, var_0.c, vec2<i32>(u_input.a, u_input.a & -87142i), vec3<f32>(1162f, var_0.c.x, _wgslsmith_f_op_f32(492f * var_0.c.x))), Struct_1(!func_4(Struct_1(var_0.a, var_0.a.xy, var_0.c, vec2<i32>(-43671i, -32194i), var_0.e), var_0.c.x, var_1.x, Struct_2(var_0.e, true, Struct_1(vec3<bool>(true, var_0.a.x, var_0.b.x), var_0.a.xz, vec2<f32>(var_0.c.x, var_0.c.x), global2[_wgslsmith_index_u32(var_1.x, 20u)], vec3<f32>(var_0.e.x, -1499f, var_0.c.x)))).a, !var_0.a.yy, vec2<f32>(129f, var_0.e.x), vec2<i32>(-25433i, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, u_input.a, var_0.d.x, var_0.d.x), vec4<i32>(1i, u_input.a, u_input.a, 2617i))), vec3<f32>(_wgslsmith_f_op_f32(var_0.c.x * var_0.c.x), 1f, _wgslsmith_f_op_f32(trunc(var_0.c.x)))), ~(~select(vec3<i32>(-2147483647i, u_input.a, u_input.a), vec3<i32>(2147483647i, u_input.a, var_0.d.x), vec3<bool>(var_0.b.x, false, true)))));
    var var_2 = select(!(!select(select(vec4<bool>(true, false, var_0.a.x, var_0.b.x), vec4<bool>(false, false, true, var_0.a.x), vec4<bool>(var_0.b.x, true, var_0.a.x, false)), vec4<bool>(true, false, var_0.b.x, var_0.a.x), vec4<bool>(true, true, true, true))), select(!vec4<bool>(var_0.b.x == var_0.a.x, 176f != var_0.c.x, var_0.a.x, select(var_0.a.x, var_0.b.x, var_0.a.x)), vec4<bool>(true, !var_0.a.x, false, true), vec4<bool>(any(func_1(u_input.a, vec4<f32>(var_0.e.x, var_0.e.x, var_0.e.x, 1000f))), all(vec2<bool>(false, var_0.b.x)), !select(false, var_0.a.x, true), _wgslsmith_f_op_f32(f32(-1f) * -1740f) <= func_4(Struct_1(var_0.a, var_0.a.zx, var_0.e.xz, vec2<i32>(0i, u_input.a), vec3<f32>(var_0.c.x, var_0.c.x, var_0.c.x)), 234f, var_1.x, Struct_2(var_0.e, true, Struct_1(var_0.a, var_0.a.xx, var_0.c, global0[_wgslsmith_index_u32(var_1.x, 21u)], vec3<f32>(1000f, 1673f, var_0.c.x)))).c.x)), vec4<bool>(true, _wgslsmith_clamp_u32(abs(4294967295u), ~32247u, var_1.x) < _wgslsmith_mod_u32(var_1.x << (0u % 32u), _wgslsmith_div_u32(4294967295u, var_1.x)), var_0.b.x, true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.c.x, _wgslsmith_div_f32(-492f, _wgslsmith_f_op_f32(-var_0.c.x)), _wgslsmith_f_op_f32(var_0.e.x - _wgslsmith_f_op_f32(select(-1287f, 234f, false)))), vec3<f32>(var_0.e.x, 375f, _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(-var_0.c.x))), !any(var_0.a.zz))));
}

