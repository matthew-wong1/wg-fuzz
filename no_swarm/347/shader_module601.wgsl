struct Struct_1 {
    a: vec2<f32>,
    b: i32,
    c: vec3<u32>,
    d: i32,
    e: f32,
}

struct Struct_2 {
    a: f32,
    b: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<i32>,
    c: f32,
}

struct Struct_4 {
    a: bool,
    b: vec3<i32>,
    c: Struct_3,
    d: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<bool>) -> vec4<u32> {
    global0 = Struct_3(Struct_2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global0.a.a))), 1087f), vec2<i32>(~((global0.b.x & 1352i) >> (4294967295u % 32u)), 2147483647i >> (arg_0.c.x % 32u)), global0.c);
    let var_0 = Struct_4(!all(select(arg_1.xwy, vec3<bool>(true, arg_1.x, true), select(vec3<bool>(arg_1.x, true, arg_1.x), vec3<bool>(true, false, true), arg_1.x))), vec3<i32>(~(-(global0.b.x >> (0u % 32u))), _wgslsmith_div_i32(min(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.b, 5063i), vec2<i32>(14672i, global0.b.x)), _wgslsmith_add_i32(arg_0.b, arg_0.b)), _wgslsmith_div_i32(-17332i, arg_0.d)), select(global0.b.x, -1i, global0.b.x > arg_0.b)), Struct_3(Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.e)), 1f), countOneBits(~reverseBits(vec2<i32>(global0.b.x, arg_0.d))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(353f * 1875f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-772f)) * _wgslsmith_f_op_f32(f32(-1f) * -131f)))), ~(~(-global0.b.x)));
    var var_1 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.x) * global0.a.b), global0.a.a);
    let var_2 = var_0;
    global0 = Struct_3(var_2.c.a, global0.b, _wgslsmith_f_op_f32(min(var_2.c.c, _wgslsmith_f_op_f32(exp2(global0.a.a)))));
    return ~((_wgslsmith_mult_vec4_u32(vec4<u32>(0u, 1u, 51474u, arg_0.c.x) >> (vec4<u32>(0u, u_input.a.x, u_input.a.x, 0u) % vec4<u32>(32u)), vec4<u32>(19542u, arg_0.c.x, arg_0.c.x, 14747u)) << (~(~vec4<u32>(1u, arg_0.c.x, 61705u, u_input.a.x)) % vec4<u32>(32u))) & ((_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, 19946u, 54594u, arg_0.c.x), vec4<u32>(1u, arg_0.c.x, 28564u, 0u)) ^ vec4<u32>(u_input.b.x, arg_0.c.x, 92972u, arg_0.c.x)) | ~(~vec4<u32>(32464u, 4294967295u, 32990u, arg_0.c.x))));
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_1) -> i32 {
    global0 = Struct_3(Struct_2(577f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(655f))) - -1015f)), firstLeadingBit(abs(vec2<i32>(-61767i, 38682i)) & -vec2<i32>(1i, arg_1.d)), -1442f);
    var var_0 = Struct_4(!select(true, -24965i != countOneBits(arg_1.b), all(select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, false), false))), abs(abs(-(~vec3<i32>(global0.b.x, -2147483647i, global0.b.x)))), Struct_3(Struct_2(-157f, -1115f), ~(global0.b ^ _wgslsmith_mult_vec2_i32(global0.b, vec2<i32>(arg_1.b, -37347i))), 1f), ~(abs(-13633i) ^ ((1i & global0.b.x) ^ arg_1.b)));
    let var_1 = var_0.b;
    global0 = Struct_3(global0.a, vec2<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(-55671i, -1i, var_0.c.b.x), min(var_0.b, vec3<i32>(-7418i, var_0.c.b.x, 27756i))), var_0.b), -1i), _wgslsmith_f_op_f32(floor(-2369f)));
    global0 = Struct_3(global0.a, _wgslsmith_div_vec2_i32(max(reverseBits(vec2<i32>(var_0.c.b.x, 2147483647i)) ^ vec2<i32>(global0.b.x, arg_1.b), global0.b), countOneBits(~var_0.c.b)), _wgslsmith_f_op_f32(trunc(global0.c)));
    return abs(_wgslsmith_dot_vec4_i32(max(~countOneBits(vec4<i32>(0i, -284i, global0.b.x, global0.b.x)), vec4<i32>(-global0.b.x, ~arg_1.b, -2147483647i, -13118i)), vec4<i32>(_wgslsmith_sub_i32(_wgslsmith_div_i32(18770i, var_1.x), ~global0.b.x), -var_0.b.x, abs(global0.b.x), -811i >> (~arg_1.c.x % 32u))));
}

fn func_2() -> i32 {
    let var_0 = global0.a;
    global0 = Struct_3(Struct_2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(291f - -2065f) * 1f), _wgslsmith_f_op_f32(max(var_0.a, _wgslsmith_f_op_f32(f32(-1f) * -558f))))), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), global0.b ^ -(vec2<i32>(-47518i, 0i) & reverseBits(global0.b)), -725f);
    var var_1 = _wgslsmith_div_i32(-_wgslsmith_sub_i32(1i, -18102i), reverseBits(-1i));
    let var_2 = u_input.a;
    var var_3 = -vec4<i32>(func_4(~func_3(Struct_1(vec2<f32>(var_0.a, -1522f), 45816i, vec3<u32>(4294967295u, 1u, var_2.x), -2147483647i, var_0.b), vec4<bool>(false, false, true, false)), Struct_1(vec2<f32>(var_0.a, -267f), -1363i, ~u_input.a, -41280i, var_0.a)), global0.b.x, _wgslsmith_sub_i32(_wgslsmith_add_i32(global0.b.x, global0.b.x & -71356i), 2147483647i), firstTrailingBit(global0.b.x));
    return 2147483647i;
}

fn func_1(arg_0: Struct_4, arg_1: u32, arg_2: vec2<bool>, arg_3: vec2<f32>) -> u32 {
    global0 = Struct_3(global0.a, vec2<i32>(_wgslsmith_clamp_i32(_wgslsmith_div_i32(0i, -15169i), max(arg_0.b.x, 2147483647i), 1i), abs(reverseBits(arg_0.b.x))) ^ firstLeadingBit(firstLeadingBit(global0.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.x * _wgslsmith_f_op_f32(_wgslsmith_div_f32(781f, arg_3.x) - global0.a.a))));
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(arg_3 * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1840f, arg_3.x)))))), -global0.b.x, vec3<u32>(~4294967295u, arg_1, _wgslsmith_clamp_u32(countOneBits(0u), ~4294967295u, 0u)) << (u_input.b % vec3<u32>(32u)), min(0i, -38584i), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(-628f, global0.c)))));
    let var_1 = vec3<bool>(true, !(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-1918f, global0.c)), global0.a.a) == -904f), false & (func_2() != ~(var_0.b & var_0.d)));
    var var_2 = Struct_3(Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -875f)), _wgslsmith_div_f32(-1340f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_0.c.c - arg_3.x), _wgslsmith_f_op_f32(var_0.a.x - 481f), !arg_2.x)))), -select(vec2<i32>(var_0.b & 0i, -7919i | arg_0.c.b.x), ~abs(global0.b), true), 1000f);
    var var_3 = arg_0;
    return var_0.c.x ^ ~(~var_0.c.x);
}

fn func_5(arg_0: f32, arg_1: u32) -> Struct_3 {
    let var_0 = Struct_2(_wgslsmith_div_f32(arg_0, -785f), global0.c);
    global0 = Struct_3(global0.a, _wgslsmith_mod_vec2_i32(vec2<i32>(2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(-23668i, -21118i), vec2<i32>(global0.b.x, global0.b.x))) ^ global0.b, -countOneBits(vec2<i32>(global0.b.x, global0.b.x))), 494f);
    let var_1 = Struct_3(global0.a, vec2<i32>(reverseBits(0i), _wgslsmith_dot_vec2_i32(vec2<i32>(i32(-1i) * -2147483647i, ~global0.b.x), ~(-vec2<i32>(-2147483647i, global0.b.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.c * arg_0)))) * arg_0));
    var var_2 = Struct_4(!(!(1u == _wgslsmith_clamp_u32(arg_1, u_input.a.x, 1u))), ~vec3<i32>(global0.b.x, ~(global0.b.x | -16565i), ~var_1.b.x), var_1, 1i);
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_5(global0.a.a, _wgslsmith_dot_vec4_u32(vec4<u32>(firstTrailingBit(func_1(Struct_4(false, vec3<i32>(2147483647i, 16830i, global0.b.x), Struct_3(global0.a, vec2<i32>(global0.b.x, 2147483647i), -1239f), -2147483647i), u_input.a.x, vec2<bool>(true, false), vec2<f32>(402f, -2235f))), u_input.b.x, 689u, 4294967295u), ~vec4<u32>(~39509u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, u_input.a.x), vec2<u32>(73807u, u_input.b.x)), countOneBits(85729u), u_input.b.x ^ 8736u)));
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(192f, -225f)), 2147483647i, u_input.a, global0.b.x, global0.a.b);
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-546f + -462f), _wgslsmith_f_op_f32(f32(-1f) * -248f)), var_0.a))), firstLeadingBit(var_0.d), var_0.c, 14820i, global0.c);
    let var_2 = select(true, 1u > ~var_1.c.x, !(true & any(vec2<bool>(true, false))));
    var var_3 = Struct_4(true, vec3<i32>(_wgslsmith_dot_vec4_i32(firstTrailingBit(min(vec4<i32>(var_0.d, global0.b.x, 5304i, 7762i), vec4<i32>(-1i, var_0.d, var_0.b, -11052i))), vec4<i32>(min(-6072i, global0.b.x), i32(-1i) * -90344i, abs(var_0.d), abs(global0.b.x))), abs(var_1.b), firstLeadingBit(-9906i)), func_5(783f, _wgslsmith_add_u32(firstLeadingBit(var_0.c.x >> (u_input.a.x % 32u)), ~var_1.c.x)), _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(-(vec2<i32>(1i, global0.b.x) ^ global0.b), ~abs(vec2<i32>(var_0.d, 0i))), vec2<i32>(~var_0.b, _wgslsmith_mult_i32(var_1.b, abs(global0.b.x)))));
    global0 = var_3.c;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.d);
}

