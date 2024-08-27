struct Struct_1 {
    a: vec3<bool>,
    b: u32,
    c: f32,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: vec2<f32>,
    d: vec4<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 19>;

var<private> global1: array<vec4<i32>, 5> = array<vec4<i32>, 5>(vec4<i32>(-56081i, 2147483647i, -17955i, 0i), vec4<i32>(2147483647i, 388i, 2147483647i, -25371i), vec4<i32>(2147483647i, 28828i, -7170i, -27600i), vec4<i32>(28082i, -62830i, 39325i, 16808i), vec4<i32>(-1i, 1i, i32(-2147483648), -1i));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: vec4<u32>) -> vec3<f32> {
    global0 = array<Struct_1, 19>();
    global0 = array<Struct_1, 19>();
    var var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_1.d)));
    let var_1 = arg_3.ww;
    global0 = array<Struct_1, 19>();
    return _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(vec3<f32>(arg_1.c, arg_2.x, arg_1.d), vec3<f32>(arg_1.d, arg_2.x, 1196f)))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * arg_1.c))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(207f)) + _wgslsmith_f_op_f32(max(-570f, arg_2.x))), _wgslsmith_f_op_f32(arg_1.c * arg_2.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.x) - _wgslsmith_f_op_f32(round(-194f)))));
}

fn func_4(arg_0: f32, arg_1: i32, arg_2: vec3<f32>, arg_3: Struct_1) -> vec4<f32> {
    var var_0 = !arg_3.a.xy;
    global0 = array<Struct_1, 19>();
    global0 = array<Struct_1, 19>();
    var var_1 = arg_3.a.x;
    var var_2 = _wgslsmith_add_vec2_u32(vec2<u32>(1u, arg_3.b), vec2<u32>(u_input.a, 0u) | (vec2<u32>(83029u, 1u) & vec2<u32>(~arg_3.b, 19886u)));
    return _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.d, -1200f, arg_2.x, arg_2.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1928f, arg_0, 906f, arg_2.x))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_div_vec4_f32(vec4<f32>(arg_0, 1757f, arg_3.c, -1113f), vec4<f32>(638f, arg_0, -1000f, arg_2.x)))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_3.d, arg_3.c, 936f, 1000f), vec4<f32>(arg_3.c, arg_3.d, arg_2.x, arg_0), vec4<bool>(false, true, arg_3.a.x, true))))))));
}

fn func_2() -> i32 {
    let var_0 = global0[_wgslsmith_index_u32(u_input.a >> (u_input.a % 32u), 19u)];
    let var_1 = _wgslsmith_f_op_vec4_f32(func_4(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -947f) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -534f)))))), _wgslsmith_mod_i32(i32(-1i) * -2147483647i, min(u_input.d.x, 1i)), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(623f, var_0.d, 154f)))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.c, 1179f, var_0.c), vec3<f32>(var_0.d, var_0.c, var_0.d), false))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(vec4<u32>(u_input.a, 48480u, 4294967295u, var_0.b) ^ vec4<u32>(u_input.a, 4294967295u, u_input.a, 47339u), Struct_1(var_0.a, var_0.b, var_0.d, var_0.c), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_0.c, var_0.d, 475f))), select(vec4<u32>(12285u, 0u, 17801u, var_0.b), vec4<u32>(u_input.a, 4294967295u, 1u, u_input.a), vec4<bool>(var_0.a.x, true, false, true)))))), global0[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(~(4294967295u & u_input.b), _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.b, u_input.b) >> (vec2<u32>(4294967295u, 32367u) % vec2<u32>(32u)), vec2<u32>(1u, u_input.b)), 0u), 19u)]));
    global1 = array<vec4<i32>, 5>();
    let var_2 = u_input.c.wxz;
    let var_3 = var_0.b;
    return var_2.x;
}

fn func_5(arg_0: bool, arg_1: i32, arg_2: Struct_1) -> Struct_1 {
    let var_0 = Struct_1(vec3<bool>(arg_2.a.x, all(vec3<bool>(arg_2.a.x, arg_2.a.x, arg_2.a.x)), false), 2945u, _wgslsmith_f_op_f32(f32(-1f) * -912f), 1f);
    global0 = array<Struct_1, 19>();
    let var_1 = Struct_1(var_0.a, _wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(60726u ^ arg_2.b, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_2.b, var_0.b, 0u), vec3<u32>(1u, arg_2.b, var_0.b)))), ~vec2<u32>(1u, 39933u)), -1042f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_vec3_f32(func_3(reverseBits(vec4<u32>(u_input.b, u_input.a, arg_2.b, 4294967295u)), arg_2, vec3<f32>(1872f, arg_2.c, arg_2.d), reverseBits(vec4<u32>(4294967295u, var_0.b, 4294967295u, var_0.b)))).x * -402f))));
    let var_2 = select(vec3<bool>(true, (var_0.b | _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 0u, 4294967295u, 20587u), vec4<u32>(7348u, 4294967295u, 5387u, u_input.a))) <= u_input.b, !(!var_1.a.x)), var_0.a, true);
    var var_3 = ~_wgslsmith_div_i32(27033i, func_2());
    return Struct_1(!var_1.a, ~countOneBits(countOneBits(var_0.b)), 1000f, -373f);
}

fn func_1(arg_0: Struct_1, arg_1: bool, arg_2: vec2<f32>) -> bool {
    let var_0 = func_5(true, func_2(), Struct_1(select(!vec3<bool>(arg_1, arg_0.a.x, arg_0.a.x), !select(arg_0.a, arg_0.a, arg_0.a), any(vec3<bool>(arg_0.a.x, true, arg_1))), _wgslsmith_div_u32(arg_0.b, _wgslsmith_dot_vec2_u32(vec2<u32>(40592u, arg_0.b), vec2<u32>(arg_0.b, u_input.a))), arg_0.d, _wgslsmith_f_op_f32(-arg_2.x)));
    global1 = array<vec4<i32>, 5>();
    global1 = array<vec4<i32>, 5>();
    let var_1 = Struct_1(var_0.a, u_input.a, 1695f, _wgslsmith_f_op_f32(-634f * var_0.d));
    global0 = array<Struct_1, 19>();
    return var_0.a.x;
}

fn func_6(arg_0: bool, arg_1: vec4<bool>, arg_2: Struct_1, arg_3: Struct_1) -> bool {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-821f, _wgslsmith_f_op_f32(f32(-1f) * -1660f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1325f, -763f)) + -114f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.d) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1047f, arg_3.c))), _wgslsmith_f_op_f32(func_5(true, i32(-1i) * -31808i, global0[_wgslsmith_index_u32(6406u, 19u)]).c * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_3.c), _wgslsmith_f_op_f32(arg_2.c * arg_3.d))))));
    global0 = array<Struct_1, 19>();
    var var_1 = ~(~12066i);
    var_1 = u_input.d.x;
    global0 = array<Struct_1, 19>();
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_add_vec3_u32(~_wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(1u, u_input.b, 4294967295u), vec3<u32>(27681u, 4294967295u, u_input.b)), ~vec3<u32>(u_input.b, 13502u, 0u)), countOneBits(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, u_input.a, 0u), vec3<u32>(u_input.a, 28619u, 37638u))) & firstTrailingBit(~vec3<u32>(u_input.a, 41634u, u_input.a)));
    var var_1 = vec4<bool>(1f >= _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1533f * _wgslsmith_f_op_f32(step(1558f, 686f))))), u_input.b < _wgslsmith_div_u32(4294967295u | ~var_0.x, var_0.x), func_6(any(vec2<bool>(true, true)), vec4<bool>(all(vec4<bool>(true, true, true, true)), true, true & func_1(global0[_wgslsmith_index_u32(4294967295u, 19u)], true, vec2<f32>(-196f, -2177f)), true), global0[_wgslsmith_index_u32(~4294967295u, 19u)], global0[_wgslsmith_index_u32(var_0.x, 19u)]), true);
    var var_2 = ~u_input.a;
    var var_3 = vec3<i32>(-(~0i), u_input.d.x, ~u_input.c.x);
    global1 = array<vec4<i32>, 5>();
    var var_4 = _wgslsmith_f_op_f32(-523f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1790f + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1242f * -620f))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_clamp_vec4_u32(~vec4<u32>(43614u, u_input.b, 60454u, var_0.x), ~firstLeadingBit(vec4<u32>(var_0.x, 4294967295u, var_0.x, 26689u)), _wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, 0u, var_0.x, 1u), vec4<u32>(1u, u_input.b, 4294967295u, 1u)), vec4<u32>(var_0.x, 4294967295u, var_0.x, u_input.b) | vec4<u32>(53002u, u_input.a, 15068u, var_0.x))), global0[_wgslsmith_index_u32(~29758u, 19u)], _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1009f, 2076f, -664f) - vec3<f32>(-1000f, 2572f, -1876f))))), ~(~abs(vec4<u32>(74372u, var_0.x, 18233u, var_0.x))))).x, ~(~((vec4<u32>(var_0.x, 0u, u_input.b, var_0.x) << (vec4<u32>(46196u, 1u, 4294967295u, 1u) % vec4<u32>(32u))) | _wgslsmith_add_vec4_u32(vec4<u32>(var_0.x, 61828u, 0u, var_0.x), vec4<u32>(var_0.x, u_input.a, 4294967295u, 101543u)))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1331f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-613f * 985f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - -505f))), ~select(vec4<u32>(~5818u, 20936u, firstLeadingBit(42938u), 0u), ~select(vec4<u32>(u_input.b, var_0.x, u_input.b, 26057u), vec4<u32>(13813u, 59504u, 4294967295u, 0u), vec4<bool>(true, false, true, true)), func_6(true, select(vec4<bool>(false, true, true, false), vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), true), Struct_1(vec3<bool>(var_1.x, var_1.x, var_1.x), 70017u, -573f, 359f), Struct_1(vec3<bool>(false, var_1.x, var_1.x), 10592u, 389f, 525f))), i32(-1i) * -_wgslsmith_add_i32(~63581i, 45985i));
}

