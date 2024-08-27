struct Struct_1 {
    a: vec4<i32>,
    b: bool,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: i32,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: vec4<i32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 5> = array<f32, 5>(715f, 1000f, 732f, -1074f, 583f);

var<private> global1: vec4<f32> = vec4<f32>(1180f, -1786f, 1642f, 1000f);

var<private> global2: i32 = -15420i;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: f32, arg_3: u32) -> vec2<u32> {
    global1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(1000f)), _wgslsmith_f_op_f32(min(arg_2, arg_2))), global1.x, global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(4294967295u, 23727u), 5u)], _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -472f), arg_0))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, -1000f, 1157f, global1.x)))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(453f, 614f, global0[_wgslsmith_index_u32(1u, 5u)], arg_2) - vec4<f32>(global0[_wgslsmith_index_u32(4294967295u, 5u)], arg_0, arg_2, -910f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(arg_0, global1.x), -176f, _wgslsmith_f_op_f32(-188f + -1000f), _wgslsmith_f_op_f32(sign(1070f)))), arg_1.b)));
    global2 = arg_1.a.x;
    let var_0 = Struct_3(firstLeadingBit(vec2<u32>(1u, ~firstLeadingBit(22591u))), -1436i, _wgslsmith_dot_vec3_i32(vec3<i32>(~_wgslsmith_div_i32(u_input.a, 2147483647i), 1i, arg_1.a.x), vec3<i32>(~(~2147483647i), max(-2131i, 1i), _wgslsmith_mult_i32(1i, 11607i))));
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(-702f, -424f), 1074f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(var_0.a.x, 5u)] * global1.x) - _wgslsmith_f_op_f32(max(-1321f, 354f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2 * arg_2)))));
    global2 = i32(-1i) * -_wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(u_input.a, u_input.a, -33002i, arg_1.a.x) << (vec4<u32>(arg_3, arg_3, arg_3, u_input.b) % vec4<u32>(32u))), _wgslsmith_mult_vec4_i32(vec4<i32>(var_0.b, arg_1.a.x, var_0.b, u_input.a), min(arg_1.a, vec4<i32>(u_input.a, var_0.b, u_input.a, arg_1.a.x))));
    return ~(~var_0.a);
}

fn func_2(arg_0: Struct_2, arg_1: Struct_3, arg_2: vec4<bool>) -> u32 {
    var var_0 = select(arg_2.zx, arg_2.ww, !arg_2.yy);
    let var_1 = vec3<bool>(false, var_0.x, select(any(vec3<bool>(arg_2.x, arg_2.x, true)), _wgslsmith_clamp_u32(~u_input.b, 0u, ~arg_1.a.x) == abs(reverseBits(arg_0.a.x)), !any(!vec2<bool>(arg_2.x, arg_2.x))));
    var_0 = arg_2.zy;
    var var_2 = _wgslsmith_dot_vec3_u32(abs(~(~vec3<u32>(arg_1.a.x, arg_1.a.x, arg_0.a.x))), _wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, _wgslsmith_sub_u32(~u_input.b, ~arg_0.a.x), 1u), ~vec3<u32>(arg_0.a.x, arg_1.a.x, 3305u) >> (vec3<u32>(54210u, 41500u, ~1u) % vec3<u32>(32u))));
    var_0 = var_1.xz;
    return _wgslsmith_sub_u32(1u, _wgslsmith_dot_vec2_u32(firstLeadingBit(select(func_3(-119f, Struct_1(vec4<i32>(0i, arg_1.c, u_input.a, arg_1.b), true), global1.x, 55576u), arg_1.a, vec2<bool>(arg_2.x, var_1.x))), ~reverseBits(arg_1.a)));
}

fn func_4(arg_0: vec2<u32>) -> Struct_1 {
    var var_0 = Struct_1(firstTrailingBit(vec4<i32>(1i, -max(2147483647i, 0i), u_input.a, ~firstLeadingBit(-2859i))), !(!((-2147483647i < u_input.a) & true)));
    var_0 = Struct_1(~(~_wgslsmith_sub_vec4_i32(vec4<i32>(-15826i, var_0.a.x, var_0.a.x, 7772i) | var_0.a, var_0.a)), false);
    let var_1 = ~_wgslsmith_dot_vec2_i32(firstLeadingBit(max(var_0.a.yw, vec2<i32>(u_input.a, -7033i)) >> (vec2<u32>(58331u, arg_0.x) % vec2<u32>(32u))), -(var_0.a.wz | var_0.a.zx) & abs(var_0.a.yw));
    global0 = array<f32, 5>();
    var var_2 = Struct_2(arg_0);
    return Struct_1(firstTrailingBit(-(_wgslsmith_div_vec4_i32(var_0.a, var_0.a) ^ (vec4<i32>(var_1, u_input.a, u_input.a, var_0.a.x) & vec4<i32>(var_1, 8184i, u_input.a, u_input.a)))), true);
}

fn func_1(arg_0: vec4<f32>, arg_1: bool, arg_2: i32) -> i32 {
    let var_0 = func_4(select(vec2<u32>(~func_2(Struct_2(vec2<u32>(u_input.b, 4294967295u)), Struct_3(vec2<u32>(25595u, 0u), arg_2, arg_2), vec4<bool>(true, false, arg_1, false)), ~func_2(Struct_2(vec2<u32>(37328u, u_input.b)), Struct_3(vec2<u32>(u_input.b, u_input.b), -2147483647i, 1i), vec4<bool>(false, true, false, arg_1))), firstLeadingBit(vec2<u32>(u_input.b, 1u)), vec2<bool>(select(arg_1, false, arg_1), 4294967295u != max(u_input.b, 1u))));
    var var_1 = firstTrailingBit(35429i);
    global2 = _wgslsmith_clamp_i32(var_0.a.x, ~_wgslsmith_clamp_i32(arg_2, u_input.a, arg_2), _wgslsmith_div_i32(var_0.a.x, var_0.a.x));
    global0 = array<f32, 5>();
    global1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(2198f, -1297f)) + _wgslsmith_f_op_f32(trunc(global1.x))))), -2081f, arg_0.x, global1.x);
    return 26378i;
}

fn func_5(arg_0: i32) -> Struct_3 {
    let var_0 = Struct_1(vec4<i32>(max(-14127i, u_input.a), 2147483647i & func_4(vec2<u32>(1u, 9017u)).a.x, 0i, u_input.a) | ~countOneBits(vec4<i32>(u_input.a, -2147483647i, 20514i, 18511i)), all(vec4<bool>(true, !all(vec2<bool>(false, false)), max(arg_0, u_input.a) >= (arg_0 & u_input.a), select(all(vec4<bool>(false, false, false, true)), true, -418f != global0[_wgslsmith_index_u32(1u, 5u)]))));
    var var_1 = func_4(_wgslsmith_sub_vec2_u32(~select(vec2<u32>(u_input.b, 11806u), vec2<u32>(10224u, 0u), false), ~_wgslsmith_sub_vec2_u32(vec2<u32>(30483u, u_input.b), vec2<u32>(u_input.b, u_input.b))) ^ ~(~min(vec2<u32>(1u, 0u), vec2<u32>(0u, u_input.b))));
    var var_2 = vec3<i32>(~var_0.a.x, ~(~59477i), _wgslsmith_dot_vec4_i32(-vec4<i32>(-619i, arg_0, arg_0, 1i), _wgslsmith_div_vec4_i32(min(abs(vec4<i32>(arg_0, arg_0, u_input.a, -6007i)), abs(var_0.a)), vec4<i32>(_wgslsmith_sub_i32(0i, var_0.a.x), 1i, ~58624i, -var_1.a.x))));
    var var_3 = var_0.b;
    return Struct_3(~abs(~select(vec2<u32>(1u, u_input.b), vec2<u32>(u_input.b, u_input.b), var_1.b)), reverseBits(-2147483647i), -(-1i << (_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 130u, u_input.b), vec3<u32>(u_input.b, u_input.b, 4294967295u)), ~u_input.b) % 32u)));
}

fn func_6(arg_0: Struct_3, arg_1: i32, arg_2: vec2<f32>) -> vec4<f32> {
    global0 = array<f32, 5>();
    var var_0 = true;
    let var_1 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(43093u, 5u)], global0[_wgslsmith_index_u32(55874u, 5u)])))))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(arg_0.a.x, 5u)], global1.x)) - _wgslsmith_div_vec2_f32(vec2<f32>(-445f, -166f), global1.xz)))))), vec2<f32>(1030f, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(~_wgslsmith_mult_u32(48424u, arg_0.a.x), 5u)] + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global1.x - -258f)))))));
    var var_2 = 0u;
    var var_3 = Struct_2(arg_0.a);
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(339f, arg_2.x, -563f, global1.x)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(156f, 3018f, 2872f, 239f)), func_4(vec2<u32>(var_3.a.x, 4294967295u)).b)), _wgslsmith_f_op_vec4_f32(vec4<f32>(137f, _wgslsmith_f_op_f32(floor(var_1.x)), _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(var_1.x + -592f)) * _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.x, -534f, global1.x, global0[_wgslsmith_index_u32(var_3.a.x, 5u)]) * vec4<f32>(arg_2.x, -1570f, -1000f, -634f)), vec4<f32>(-628f, 333f, 551f, 312f)))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(136f, arg_2.x, 1449f, global0[_wgslsmith_index_u32(9082u, 5u)])))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global1.x, -437f, -619f, global1.x))))))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_6(func_5(func_1(vec4<f32>(global1.x, global1.x, 691f, -480f), false, 2292i)), _wgslsmith_sub_i32(_wgslsmith_mod_i32(u_input.a, 23714i), ~u_input.a), vec2<f32>(_wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(4294967295u, 5u)], global1.x)), _wgslsmith_f_op_f32(select(global1.x, global0[_wgslsmith_index_u32(8239u, 5u)], true))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, global1.x, global0[_wgslsmith_index_u32(u_input.b, 5u)], -169f)) * vec4<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.b, 5u)]), _wgslsmith_f_op_f32(select(global1.x, 741f, false)), global0[_wgslsmith_index_u32(30213u >> (u_input.b % 32u), 5u)], _wgslsmith_f_op_f32(exp2(global1.x))))));
    let var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(global1.ywz, global1.xzy))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(global1.xwz * vec3<f32>(-987f, -292f, -1064f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, 457f, 1099f) - global1.wzy)))) - vec3<f32>(-1000f, _wgslsmith_f_op_vec4_f32(func_6(Struct_3(vec2<u32>(u_input.b, 0u), -32561i, 27816i), u_input.a, vec2<f32>(2061f, 310f))).x, -420f)));
    var var_1 = true;
    var var_2 = !(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 16434u, 4294967295u), vec3<u32>(u_input.b, u_input.b, u_input.b))), vec2<u32>(func_2(Struct_2(vec2<u32>(4294967295u, 32072u)), Struct_3(vec2<u32>(u_input.b, 4294967295u), 68196i, u_input.a), vec4<bool>(true, true, false, false)), ~1u)) > ~u_input.b);
    var var_3 = vec4<bool>((true | !all(vec2<bool>(true, false))) == true, true, func_4(_wgslsmith_div_vec2_u32(vec2<u32>(17326u, ~33690u), _wgslsmith_mult_vec2_u32(select(vec2<u32>(8147u, u_input.b), vec2<u32>(98592u, 19994u), true), select(vec2<u32>(u_input.b, u_input.b), vec2<u32>(u_input.b, u_input.b), vec2<bool>(false, false))))).b, true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, -677f) + global1.zw) * vec2<f32>(864f, global0[_wgslsmith_index_u32(_wgslsmith_div_u32(~u_input.b, func_3(-2796f, Struct_1(vec4<i32>(u_input.a, u_input.a, 2147483647i, u_input.a), var_3.x), 1000f, u_input.b).x), 5u)])), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global1.x + 839f))), vec4<i32>(func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0.x, 333f, global0[_wgslsmith_index_u32(21642u, 5u)], -503f)))), -990f == global0[_wgslsmith_index_u32(~3559u, 5u)], u_input.a), abs(max(u_input.a, u_input.a) ^ countOneBits(0i)), ~u_input.a, ~u_input.a), -min(_wgslsmith_sub_vec2_i32(vec2<i32>(-21755i, 2147483647i), vec2<i32>(u_input.a, 0i) | vec2<i32>(-35538i, -23207i)), abs(select(vec2<i32>(31985i, 4839i), vec2<i32>(u_input.a, 49595i), var_3.x))));
}

