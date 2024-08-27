struct Struct_1 {
    a: f32,
    b: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec2<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: f32, arg_1: u32, arg_2: Struct_1) -> f32 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-747f * 1690f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_2.a))))), _wgslsmith_f_op_vec3_f32(-global0.b));
    let var_1 = firstTrailingBit(firstTrailingBit(vec2<u32>(46662u, u_input.b)));
    let var_2 = -824f;
    global0 = var_0;
    var var_3 = Struct_2(var_0, ~_wgslsmith_div_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, var_1.x, 44600u, 44785u), vec4<u32>(arg_1, 4294967295u, 4294967295u, 0u)), ~min(14983u, 0u)), Struct_1(1519f, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.b.x, -1192f, var_2) - vec3<f32>(-1000f, 2045f, arg_0)))) * global0.b)), _wgslsmith_dot_vec3_i32(~(vec3<i32>(-9203i, 0i, -44337i) ^ ~vec3<i32>(u_input.a.x, -52773i, u_input.a.x)), -_wgslsmith_clamp_vec3_i32(vec3<i32>(27615i, u_input.a.x, -65786i) << (vec3<u32>(u_input.b, var_1.x, var_1.x) % vec3<u32>(32u)), abs(vec3<i32>(0i, 13152i, u_input.a.x)), ~vec3<i32>(u_input.a.x, u_input.a.x, -2147483647i))));
    return 636f;
}

fn func_2(arg_0: f32, arg_1: vec2<i32>) -> f32 {
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0 + global0.a), _wgslsmith_f_op_f32(global0.a * 171f)))), vec3<f32>(-2024f, -1137f, 626f)), 1u, Struct_1(_wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(func_3(global0.b.x, firstTrailingBit(u_input.b), Struct_1(arg_0, global0.b)))), global0.b), _wgslsmith_sub_i32(firstTrailingBit(arg_1.x), -32683i));
    let var_1 = vec2<u32>(select(4294967295u & var_0.b, _wgslsmith_clamp_u32(12759u, 4294967295u, ~46856u << (~4294967295u % 32u)), false), 36982u);
    var var_2 = vec2<u32>(~(~_wgslsmith_mod_u32(u_input.b, var_1.x)) ^ max(u_input.b, var_1.x), ~u_input.b);
    var_2 = ~max(var_1, ~_wgslsmith_div_vec2_u32(max(var_1, var_1), vec2<u32>(var_2.x, var_0.b)));
    global0 = var_0.a;
    return -1787f;
}

fn func_4(arg_0: f32, arg_1: vec4<i32>, arg_2: Struct_1, arg_3: vec3<i32>) -> Struct_1 {
    let var_0 = _wgslsmith_mult_vec2_u32(_wgslsmith_mod_vec2_u32(abs(vec2<u32>(1282u, 1u)), firstTrailingBit(~_wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(1u, u_input.b)))), min(vec2<u32>(u_input.b, ~u_input.b), min(_wgslsmith_mult_vec2_u32(~vec2<u32>(u_input.b, u_input.b), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.b, 15721u), vec2<u32>(80091u, u_input.b))), min(vec2<u32>(18708u, 1u), vec2<u32>(47683u, 1u)))));
    global0 = arg_2;
    let var_1 = Struct_1(arg_0, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(arg_2.b, vec3<f32>(390f, arg_0, -1000f)))) + _wgslsmith_f_op_vec3_f32(ceil(global0.b)))));
    let var_2 = (!any(select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), true)) || true) && !(!(arg_3.x > (arg_3.x << (5743u % 32u))));
    var var_3 = ~_wgslsmith_add_vec4_u32(~countOneBits(~vec4<u32>(u_input.b, u_input.b, u_input.b, 1u)), vec4<u32>(1u, 23445u, ~(~4294967295u), var_0.x));
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -312f) - 816f)), vec3<f32>(var_1.b.x, _wgslsmith_div_f32(global0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.a))), arg_2.b.x));
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    global0 = arg_0;
    global0 = arg_0;
    var var_0 = !vec3<bool>(select(any(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true))), all(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false))), false), any(vec3<bool>(true, true, true)), true);
    let var_1 = Struct_2(arg_0, u_input.b, Struct_1(-1130f, arg_0.b), 1i);
    var_0 = !(!vec3<bool>(var_0.x, true, all(var_0.zy)));
    return var_1.c;
}

fn func_1(arg_0: vec3<f32>) -> f32 {
    global0 = func_5(func_4(_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(1311f * _wgslsmith_f_op_f32(-125f + 1180f)), vec2<i32>(u_input.a.x, ~(-1i)))), ~(~vec4<i32>(-2147483647i, -2147483647i, u_input.a.x, u_input.a.x)) >> (vec4<u32>(~11999u, 22277u, _wgslsmith_div_u32(u_input.b, u_input.b), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.b, u_input.b), vec3<u32>(u_input.b, 1u, 1581u))) % vec4<u32>(32u)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1081f)), _wgslsmith_div_vec3_f32(vec3<f32>(arg_0.x, -760f, arg_0.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(-2451f, 1783f, 1226f) - vec3<f32>(982f, 250f, arg_0.x)))), ~(-(vec3<i32>(u_input.a.x, 1i, 13078i) ^ vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)))));
    global0 = func_4(arg_0.x, _wgslsmith_add_vec4_i32(select(vec4<i32>(~50508i, u_input.a.x, -27266i, 17796i), abs(select(vec4<i32>(u_input.a.x, -4861i, u_input.a.x, u_input.a.x), vec4<i32>(u_input.a.x, 16563i, u_input.a.x, u_input.a.x), true)), (u_input.a.x <= u_input.a.x) && false), -(vec4<i32>(-15625i, 23225i, u_input.a.x, -1i) & select(vec4<i32>(-59784i, u_input.a.x, 30325i, u_input.a.x), vec4<i32>(u_input.a.x, u_input.a.x, 8603i, 9557i), vec4<bool>(true, false, false, true)))), func_5(Struct_1(_wgslsmith_f_op_f32(abs(613f)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(arg_0, vec3<f32>(arg_0.x, arg_0.x, global0.a))), vec3<f32>(arg_0.x, arg_0.x, 387f)))), ~_wgslsmith_mult_vec3_i32(abs(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, -2147483647i), vec3<i32>(4037i, u_input.a.x, -51337i))), vec3<i32>(abs(-2147483647i), _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, u_input.a.x, -9942i, u_input.a.x), vec4<i32>(6636i, -1i, -2147483647i, u_input.a.x)), -6131i)));
    let var_0 = _wgslsmith_div_vec2_u32(~_wgslsmith_add_vec2_u32(~(~vec2<u32>(u_input.b, u_input.b)), abs(~vec2<u32>(u_input.b, u_input.b))), ~reverseBits(vec2<u32>(u_input.b, u_input.b) >> (vec2<u32>(1u, 29482u) % vec2<u32>(32u))) & vec2<u32>(4294967295u, 0u | u_input.b));
    var var_1 = countOneBits(reverseBits(vec2<i32>(i32(-1i) * -13712i, 1i) << (select(min(var_0, vec2<u32>(0u, 4294967295u)), firstTrailingBit(vec2<u32>(var_0.x, 40051u)), any(vec4<bool>(false, true, false, false))) % vec2<u32>(32u))));
    let var_2 = Struct_2(func_5(func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(327f, 17937u, Struct_1(arg_0.x, global0.b))) - 588f), -(vec4<i32>(var_1.x, 16645i, var_1.x, u_input.a.x) & vec4<i32>(2147483647i, var_1.x, var_1.x, var_1.x)), Struct_1(-228f, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1000f, 1007f, 1599f), global0.b, vec3<bool>(true, true, true)))), vec3<i32>(-var_1.x, _wgslsmith_div_i32(1i, -16196i), min(0i, u_input.a.x)))), u_input.b, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global0.b.x, global0.a)) * _wgslsmith_f_op_f32(f32(-1f) * -165f))), vec3<f32>(global0.a, global0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a)))), _wgslsmith_dot_vec3_i32(vec3<i32>(firstLeadingBit(~var_1.x), 19354i, _wgslsmith_dot_vec2_i32(vec2<i32>(var_1.x, var_1.x), _wgslsmith_add_vec2_i32(vec2<i32>(var_1.x, u_input.a.x), vec2<i32>(u_input.a.x, u_input.a.x)))), vec3<i32>(-max(1i, -27588i), var_1.x, _wgslsmith_mult_i32(-1i << (u_input.b % 32u), 1i))));
    return _wgslsmith_f_op_f32(floor(arg_0.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(-322f, global0.a, 220f) * _wgslsmith_f_op_vec3_f32(-global0.b)))) - _wgslsmith_f_op_f32(global0.a * -631f)) <= _wgslsmith_f_op_f32(abs(-282f));
    global0 = func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b.x)), firstTrailingBit(~_wgslsmith_add_vec4_i32(-vec4<i32>(u_input.a.x, 0i, 22926i, u_input.a.x), ~vec4<i32>(u_input.a.x, 2147483647i, u_input.a.x, u_input.a.x))), Struct_1(global0.b.x, global0.b), select(_wgslsmith_sub_vec3_i32(_wgslsmith_div_vec3_i32(-vec3<i32>(57960i, -1i, 33489i), -vec3<i32>(-1i, -2147483647i, 2147483647i)), _wgslsmith_add_vec3_i32(vec3<i32>(-8033i, 14262i, -1i) >> (vec3<u32>(63457u, 17583u, u_input.b) % vec3<u32>(32u)), ~vec3<i32>(29972i, u_input.a.x, u_input.a.x))), _wgslsmith_add_vec3_i32(-vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), -vec3<i32>(2147483647i, 0i, 8177i) ^ -vec3<i32>(26263i, -2147483647i, u_input.a.x)), !vec3<bool>(true, true, any(vec2<bool>(false, false)))));
    var_0 = ~u_input.b > 0u;
    var var_1 = select(select(select(!select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, false)), select(select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false)), select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true), false), select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false))), abs(u_input.b) == ~1u), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), false), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, any(vec2<bool>(true, false)), true, 577f != global0.a))), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(true, true, any(vec4<bool>(true, false, false, true)))), !select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, true)), all(vec4<bool>(false, true, true, true))), select(select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true), true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false))), vec4<bool>(true, true, true, true))), vec4<bool>(true, !(!select(false, true, true)), true, true));
    let var_2 = _wgslsmith_add_vec3_i32(vec3<i32>(-1i) * -_wgslsmith_mod_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a.x, 309i, 0i), vec3<i32>(-1i, u_input.a.x, u_input.a.x)), abs(vec3<i32>(-3471i, u_input.a.x, 1i))), ~vec3<i32>(_wgslsmith_mod_i32(1i, 1i), 1i, reverseBits(select(u_input.a.x, 0i, var_1.x))));
    var var_3 = !var_1.x;
    let x = u_input.a;
    s_output = StorageBuffer(var_2, abs(var_2) & min(var_2, ~_wgslsmith_add_vec3_i32(vec3<i32>(u_input.a.x, var_2.x, -75687i), var_2)), vec2<u32>(max(u_input.b, 1u) << (u_input.b % 32u), 1u), ~_wgslsmith_mult_u32(u_input.b, ~u_input.b));
}

