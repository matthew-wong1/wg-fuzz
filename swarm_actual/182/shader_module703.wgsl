struct Struct_1 {
    a: i32,
    b: vec2<i32>,
    c: bool,
    d: vec4<bool>,
    e: i32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_2;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: f32, arg_1: vec2<u32>, arg_2: bool, arg_3: i32) -> i32 {
    global1 = Struct_2(arg_3, global1.b);
    var var_0 = Struct_1(-1i, global0.b, select(true & any(global0.d.xx), !select(global1.b.d.x, !global1.b.d.x, true), true), vec4<bool>(true, all(!vec2<bool>(arg_2, false)), all(vec4<bool>(all(vec2<bool>(false, arg_2)), global0.d.x, select(false, false, true), true)), false), global0.b.x);
    let var_1 = ~(~(-5072i));
    var_0 = Struct_1(_wgslsmith_add_i32(global0.a | -1i, firstTrailingBit(~13844i) >> (_wgslsmith_sub_u32(select(arg_1.x, u_input.c, global1.b.c), ~u_input.d) % 32u)), global1.b.b, false || global1.b.c, !global0.d, var_1 >> (4294967295u % 32u));
    var var_2 = global1.b;
    return ~(~(i32(-1i) * -1i));
}

fn func_2(arg_0: i32, arg_1: i32) -> f32 {
    global0 = Struct_1(~func_3(_wgslsmith_f_op_f32(f32(-1f) * -1214f), u_input.a, true, arg_0) >> (firstTrailingBit(~u_input.c) % 32u), abs(_wgslsmith_sub_vec2_i32(firstLeadingBit(~vec2<i32>(-1i, -8382i)), global1.b.b)), ~_wgslsmith_sub_u32(reverseBits(54431u), firstLeadingBit(4294967295u)) > ~u_input.c, global0.d, global1.b.b.x);
    var var_0 = abs(-_wgslsmith_dot_vec4_i32(~select(vec4<i32>(arg_0, -50441i, 2147483647i, arg_1), vec4<i32>(-53458i, -6634i, -21610i, 19293i), global1.b.c), firstLeadingBit(-vec4<i32>(1i, global0.e, arg_1, arg_1))));
    let var_1 = select(!vec2<bool>(all(vec2<bool>(global0.c, global0.d.x)), !(!global1.b.d.x)), global1.b.d.xw, vec2<bool>(global0.d.x, 27099u <= ~u_input.c));
    let var_2 = _wgslsmith_add_i32(-38780i, global0.e);
    global1 = Struct_2(-global1.a, Struct_1(_wgslsmith_div_i32(~arg_0, _wgslsmith_mod_i32(min(20278i, var_2), -19644i)), _wgslsmith_mod_vec2_i32(vec2<i32>(-4845i, var_2), _wgslsmith_sub_vec2_i32(global1.b.b, global1.b.b)) << (reverseBits(vec2<u32>(u_input.d, 1u)) % vec2<u32>(32u)), !(max(32717u, u_input.c) <= _wgslsmith_div_u32(27024u, u_input.b.x)), !vec4<bool>(true, true, !var_1.x, true), reverseBits(14360i)));
    return -1418f;
}

fn func_4(arg_0: f32, arg_1: vec4<f32>) -> Struct_2 {
    global1 = Struct_2(global1.a, Struct_1(global0.b.x, global0.b, global0.d.x, select(select(!vec4<bool>(true, global0.d.x, false, true), vec4<bool>(global1.b.c, global1.b.c, false, global1.b.d.x), !global1.b.d), select(global1.b.d, global0.d, !global0.d), !(!global1.b.c)), -global0.a));
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1074f, -799f, arg_0))), arg_1.yzw)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(2009f, _wgslsmith_f_op_f32(arg_1.x * arg_1.x), _wgslsmith_f_op_f32(f32(-1f) * -841f)))));
    global0 = Struct_1(global0.a, vec2<i32>(-_wgslsmith_mult_i32(global1.b.b.x, global1.a), -1i) & global0.b, true, select(select(select(vec4<bool>(global0.c, false, true, false), select(vec4<bool>(true, false, global0.d.x, global1.b.c), global1.b.d, global0.d), !vec4<bool>(false, global0.d.x, global1.b.d.x, global0.c)), select(!vec4<bool>(true, true, true, global1.b.c), global1.b.d, true), any(select(vec2<bool>(false, global0.d.x), vec2<bool>(false, true), false))), select(!global1.b.d, global1.b.d, true), !((global1.a > global1.b.a) && !global0.d.x)), 1i);
    let var_1 = global1.b;
    let var_2 = false;
    return Struct_2(-8594i, Struct_1(-_wgslsmith_clamp_i32(~var_1.e, -9058i, -30964i >> (0u % 32u)), countOneBits(global0.b), var_1.d.x, select(select(!var_1.d, var_1.d, vec4<bool>(global0.c, global0.d.x, true, true)), vec4<bool>(all(vec3<bool>(global1.b.c, false, true)), true, global1.b.c, true), global1.b.d.x), -29166i));
}

fn func_1(arg_0: vec2<i32>) -> f32 {
    global1 = func_4(_wgslsmith_f_op_f32(f32(-1f) * -649f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(554f - _wgslsmith_f_op_f32(ceil(849f))), -611f, 354f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(global1.b.b.x, arg_0.x))))));
    global1 = func_4(1000f, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1312f, _wgslsmith_f_op_f32(sign(155f)), -1443f, -908f) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1418f, 1204f, -252f, -1098f), vec4<f32>(134f, 221f, -1202f, 2006f))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 2713f, 1882f, 330f) + vec4<f32>(224f, 194f, 1145f, 1000f))))));
    global1 = Struct_2(arg_0.x, func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-947f, 805f))) - -371f), vec4<f32>(1f, 1f, 1f, 1f)).b);
    var var_0 = func_4(2134f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1f, 1f, 1f, 1f), vec4<f32>(-1341f, -1048f, 406f, -2158f)))))));
    let var_1 = func_4(_wgslsmith_f_op_f32(step(827f, _wgslsmith_f_op_f32(f32(-1f) * -187f))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -526f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(311f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -284f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -608f) - -2599f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    return _wgslsmith_f_op_f32(ceil(-224f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(-41036i, ~(-firstLeadingBit(firstTrailingBit(vec2<i32>(-52383i, global0.b.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec2<i32>(1i, 1604i)))) == _wgslsmith_f_op_f32(f32(-1f) * -108f), vec4<bool>(true, true, !any(vec3<bool>(global0.c, false, true)), global0.a > global0.a), _wgslsmith_add_i32(reverseBits(1i) ^ _wgslsmith_dot_vec3_i32(max(vec3<i32>(global1.b.e, -2147483647i, global1.a), vec3<i32>(0i, global1.b.e, global0.b.x)), ~vec3<i32>(global1.b.b.x, global0.b.x, global1.a)), abs(global0.e)));
    let var_1 = ~firstTrailingBit(vec4<i32>(-13582i, ~1i, var_0.a, _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(global0.b.x, global1.a, global0.b.x, -2147483647i), vec4<i32>(-1i, global1.b.e, -2147483647i, -46322i)), _wgslsmith_add_vec4_i32(vec4<i32>(global0.a, var_0.e, 0i, 5255i), vec4<i32>(47477i, 13106i, global0.a, global1.b.b.x)))));
    var var_2 = func_4(_wgslsmith_f_op_f32(round(1f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(383f, 1362f, -103f, 1764f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1367f, -109f, 208f, -970f)), true)) + vec4<f32>(1f, 1f, 1f, 1f)))).b.c;
    var_2 = all(global0.d.zzx);
    var var_3 = ~(var_0.b.x << ((_wgslsmith_sub_u32(~u_input.b.x, 1u & u_input.c) & ~firstTrailingBit(1219u)) % 32u));
    var var_4 = global0.e;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(~u_input.a.x, _wgslsmith_mult_u32(abs(8292u), select(u_input.b.x, 4294967295u, var_0.d.x)) << (u_input.b.x % 32u)), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-608f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-827f)))))));
}

