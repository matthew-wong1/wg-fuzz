struct Struct_1 {
    a: i32,
    b: vec4<bool>,
    c: f32,
    d: i32,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
    d: vec4<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_1;

var<private> global2: array<vec3<f32>, 25>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: vec2<bool>, arg_3: vec2<f32>) -> f32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-287f + 181f), global0.c, 617f, -994f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(global1.c)), _wgslsmith_f_op_f32(arg_3.x + global1.c), _wgslsmith_f_op_f32(sign(global0.c)), _wgslsmith_f_op_f32(step(-763f, 2024f))) - vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -417f), _wgslsmith_f_op_f32(-global0.c), arg_3.x, global0.c))));
    let var_1 = _wgslsmith_clamp_vec3_u32(~global1.e, _wgslsmith_add_vec3_u32(global0.e << (arg_0.e % vec3<u32>(32u)), vec3<u32>(global1.e.x, arg_0.e.x, _wgslsmith_sub_u32(global0.e.x, 67797u)) ^ _wgslsmith_sub_vec3_u32(~vec3<u32>(23969u, global0.e.x, 49459u), global0.e)), ~(~vec3<u32>(_wgslsmith_add_u32(4294967295u, u_input.a), ~8830u, _wgslsmith_dot_vec4_u32(vec4<u32>(global1.e.x, 79208u, global0.e.x, u_input.a), vec4<u32>(u_input.a, arg_0.e.x, u_input.a, global0.e.x)))));
    var var_2 = Struct_1(select(_wgslsmith_add_i32(global0.a, -abs(global0.d)), -global1.a, !(-997f >= _wgslsmith_f_op_f32(-global0.c))), vec4<bool>(arg_2.x & all(vec3<bool>(true, true, true)), true, any(vec3<bool>(global0.b.x, false, false)) | !arg_0.b.x, arg_2.x), _wgslsmith_div_f32(-665f, _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1609f, global0.c)))), _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(-_wgslsmith_sub_vec4_i32(vec4<i32>(-13735i, -2147483647i, 14941i, -10097i), vec4<i32>(arg_0.a, global0.a, 2147483647i, 0i)), min(vec4<i32>(global1.a, global0.a, 1i, arg_0.a), vec4<i32>(1i, u_input.b.x, global1.d, -1i) ^ vec4<i32>(global1.d, 0i, global0.d, arg_0.a)), vec4<i32>(global0.a, -2147483647i, 1i, arg_1.x)), reverseBits(countOneBits(vec4<i32>(-6492i, global0.a, 27382i, u_input.b.x) >> (vec4<u32>(53390u, var_1.x, u_input.a, 28565u) % vec4<u32>(32u))))), vec3<u32>(0u, global0.e.x, abs(firstLeadingBit(43960u) ^ global1.e.x)));
    var var_3 = arg_0;
    var var_4 = _wgslsmith_div_i32(-arg_0.d, -22884i) | (_wgslsmith_mod_i32(arg_1.x, var_2.a << (arg_0.e.x % 32u)) & firstLeadingBit(-1i));
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global1.c)) * _wgslsmith_f_op_f32(sign(-646f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-342f, _wgslsmith_f_op_f32(round(670f)))) - var_0.x)) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global0.c, 603f)) + _wgslsmith_f_op_f32(sign(var_3.c))), global1.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c)) + -808f))));
}

fn func_2(arg_0: vec2<bool>, arg_1: vec4<bool>, arg_2: bool, arg_3: i32) -> Struct_1 {
    let var_0 = Struct_1(-17324i, vec4<bool>(!((global1.b.x == arg_1.x) == false), arg_1.x, arg_1.x, true), _wgslsmith_f_op_f32(func_3(Struct_1(_wgslsmith_clamp_i32(11166i, global1.d, 2147483647i) | global1.d, vec4<bool>(all(arg_1.xxx), arg_2, true, all(vec2<bool>(true, arg_0.x))), 2242f, 1947i, global0.e), u_input.b, vec2<bool>(global1.b.x, true), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.c, 430f))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(740f, global1.c))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.c, global0.c)))))), ~_wgslsmith_div_i32(_wgslsmith_mult_i32(global1.a, min(-3407i, u_input.b.x)), ~(-2147483647i)), select(global0.e, reverseBits(vec3<u32>(4294967295u, global1.e.x, 23165u) << (vec3<u32>(global0.e.x, u_input.a, global1.e.x) % vec3<u32>(32u))) ^ ~(~vec3<u32>(global0.e.x, 30605u, global1.e.x)), true));
    var var_1 = all(!vec3<bool>(all(vec3<bool>(arg_0.x, true, false)), var_0.e.x != global1.e.x, select(false, true, true))) | any(vec2<bool>((global1.d > 2147483647i) || !arg_0.x, !global0.b.x));
    var var_2 = _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(trunc(var_0.c)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(var_0.c, _wgslsmith_f_op_f32(var_0.c * global0.c))), _wgslsmith_f_op_f32(exp2(global0.c))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(var_0.c, _wgslsmith_f_op_f32(step(global0.c, global0.c)))))), 360f)));
    global0 = Struct_1(~(-9000i) << (~global0.e.x % 32u), vec4<bool>((_wgslsmith_f_op_f32(sign(var_2.x)) <= _wgslsmith_f_op_f32(-global1.c)) && !global0.b.x, true, all(!arg_1) || true, false), _wgslsmith_f_op_f32(ceil(var_0.c)), _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(abs(u_input.b.x), -1i), -u_input.b.yz), -vec2<i32>(firstLeadingBit(global0.d), -1i >> (var_0.e.x % 32u))), vec3<u32>(~(~(~12687u)), global0.e.x, _wgslsmith_clamp_u32(1u, var_0.e.x, 40563u)));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_1(-3871i, vec4<bool>(true, !arg_1.x, false, any(vec2<bool>(arg_1.x, global1.b.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-734f - global0.c) + _wgslsmith_f_op_f32(-166f + -187f)), _wgslsmith_mod_i32(var_0.a, 2147483647i), ~var_0.e), firstTrailingBit(firstTrailingBit(u_input.b)) & u_input.b, vec2<bool>(arg_2, _wgslsmith_div_u32(49099u, global1.e.x) >= (var_0.e.x ^ 15006u)), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(var_2.xy * vec2<f32>(836f, var_0.c)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-726f, -477f) * var_2.xy) - var_2.yz))))) - var_0.c);
    return Struct_1(1i, !vec4<bool>((var_0.b.x | true) || true, true, arg_2, false), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_2.x))), ~arg_3, ~vec3<u32>(_wgslsmith_mod_u32(firstLeadingBit(19955u), 14000u), reverseBits(select(var_0.e.x, 1u, arg_1.x)), u_input.a));
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    return Struct_1(_wgslsmith_dot_vec4_i32(abs(~vec4<i32>(global1.a, u_input.b.x, 4452i, global1.d)), ~(-vec4<i32>(36163i, -85147i, global0.d, arg_0.a))) & -arg_0.a, func_2(!global1.b.yx, arg_0.b, !all(vec3<bool>(global0.b.x, global0.b.x, false)), 39858i).b, func_2(global1.b.zz, vec4<bool>(true, global1.b.x, !global0.b.x, ~u_input.b.x == ~global1.d), !global1.b.x != global0.b.x, abs(~1i)).c, -(_wgslsmith_add_i32(1i, -global0.a) & _wgslsmith_mod_i32(~u_input.b.x, func_2(vec2<bool>(global0.b.x, true), vec4<bool>(false, global0.b.x, arg_0.b.x, global0.b.x), global0.b.x, -1i).a)), global1.e);
}

fn func_1() -> vec3<u32> {
    global2 = array<vec3<f32>, 25>();
    global0 = func_4(func_2(vec2<bool>(global0.b.x, select(!global1.b.x, all(vec4<bool>(false, global0.b.x, global0.b.x, global0.b.x)), any(vec4<bool>(global0.b.x, global1.b.x, global0.b.x, global0.b.x)))), select(!global1.b, global1.b, (global0.b.x || true) | global1.b.x), global1.b.x, -1i));
    var var_0 = !(_wgslsmith_sub_i32(2147483647i, ~firstTrailingBit(1i)) >= global0.d);
    var_0 = !all(!select(select(global1.b, vec4<bool>(true, global0.b.x, global0.b.x, false), global0.b.x), !vec4<bool>(global1.b.x, global1.b.x, global0.b.x, global1.b.x), vec4<bool>(global0.b.x, global1.b.x, global1.b.x, global1.b.x)));
    let var_1 = _wgslsmith_f_op_f32(floor(global1.c)) >= _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_div_f32(-1288f, _wgslsmith_f_op_f32(exp2(global0.c))), _wgslsmith_f_op_f32(min(-447f, _wgslsmith_f_op_f32(-941f - global0.c)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global0.c))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_1(global1.a, global0.b, 1234f, global1.d, vec3<u32>(global0.e.x, global1.e.x, 4294967295u)), u_input.b, vec2<bool>(global1.b.x, global1.b.x), vec2<f32>(1507f, -1456f))) - 1000f))));
    return global0.e;
}

fn func_5(arg_0: vec3<u32>) -> Struct_1 {
    global1 = Struct_1(reverseBits(countOneBits(_wgslsmith_add_i32(0i, 42827i))), vec4<bool>(true, false, func_4(func_2(vec2<bool>(true, true), func_4(Struct_1(global1.a, vec4<bool>(true, global1.b.x, global1.b.x, true), -844f, u_input.b.x, arg_0)).b, !global0.b.x, abs(-2147483647i))).b.x, global1.b.x), 1f, -2147483647i, global0.e);
    let var_0 = func_2(vec2<bool>(true, func_2(global0.b.yz, !global1.b, any(global1.b.wz), -24161i ^ global0.a).a >= -8462i), global1.b, true, _wgslsmith_add_i32(0i, ~global0.a));
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(634f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -657f)))))));
    var_1 = _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(624f, 598f)));
    var var_2 = false;
    return func_2(vec2<bool>(global0.b.x, select(true, var_0.b.x, min(arg_0.x, 1u) < arg_0.x)), !vec4<bool>(all(func_4(var_0).b.xz), !global0.b.x, global0.b.x, true), !(var_0.b.x || (true & (var_0.b.x & global0.b.x))), i32(-1i) * -countOneBits(1i));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_5(func_1());
    let var_0 = ~vec3<u32>(106754u, 67016u, firstTrailingBit(global0.e.x));
    global1 = func_2(func_2(vec2<bool>(true, func_2(vec2<bool>(false, global0.b.x), vec4<bool>(global1.b.x, false, false, true), !global1.b.x, _wgslsmith_sub_i32(-1i, u_input.b.x)).b.x), global1.b, false, func_5(~vec3<u32>(global0.e.x, 41611u, global1.e.x)).a).b.xy, vec4<bool>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-299f)), global0.c) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1553f) + _wgslsmith_f_op_f32(max(global0.c, -1247f))), !((var_0.x < var_0.x) & func_4(Struct_1(global1.d, vec4<bool>(global0.b.x, false, true, global1.b.x), -1036f, -36424i, global0.e)).b.x), func_5(~_wgslsmith_clamp_vec3_u32(global0.e, vec3<u32>(u_input.a, 3305u, 1u), vec3<u32>(u_input.a, 91493u, 76734u))).b.x, true), true, 1i);
    let var_1 = func_5(global0.e);
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -500f), func_5(_wgslsmith_mult_vec3_u32(firstTrailingBit(vec3<u32>(u_input.a, var_1.e.x, 4294967295u)), select(global1.e >> (var_0 % vec3<u32>(32u)), func_2(vec2<bool>(true, false), var_1.b, var_1.b.x, global1.a).e, vec3<bool>(true, false, true)))).c);
    global1 = Struct_1(-(~0i), global0.b, _wgslsmith_f_op_f32(-var_1.c), u_input.b.x, max(select(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, global0.e.x, 53246u) & global0.e, reverseBits(vec3<u32>(4294967295u, 0u, u_input.a))), vec3<u32>(_wgslsmith_div_u32(u_input.a, var_1.e.x), ~var_0.x, func_4(var_1).e.x), select(!var_1.b.wxz, global0.b.xzy, false)), ~var_1.e));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(1i, ~(i32(-1i) * -10413i), ~(u_input.b.x << (0u % 32u)) << (61613u % 32u), u_input.b.x), -1i << (global0.e.x % 32u), ~firstTrailingBit(_wgslsmith_mod_u32(var_0.x, global0.e.x)) >> (u_input.a % 32u), vec4<f32>(_wgslsmith_f_op_f32(-var_1.c), 421f, var_1.c, 1172f), var_1.c);
}

