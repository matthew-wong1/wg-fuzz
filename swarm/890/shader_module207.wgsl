struct Struct_1 {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec2<u32>,
    d: f32,
    e: vec2<u32>,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_2,
    c: Struct_2,
    d: i32,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: vec3<f32>;

var<private> global2: array<vec2<bool>, 30>;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3() -> vec3<i32> {
    let var_0 = _wgslsmith_mod_vec3_u32(select(_wgslsmith_mult_vec3_u32(countOneBits(vec3<u32>(15960u, u_input.a.x, u_input.a.x)), vec3<u32>(1u, 49205u, 4294967295u) << (vec3<u32>(u_input.a.x, u_input.a.x, 5535u) % vec3<u32>(32u))), vec3<u32>(u_input.a.x, u_input.a.x, _wgslsmith_div_u32(u_input.a.x, u_input.a.x)), vec3<bool>(true, true, true)) | min(vec3<u32>(0u, _wgslsmith_mult_u32(1u, 0u), firstTrailingBit(u_input.a.x)), reverseBits(max(vec3<u32>(54739u, 3353u, u_input.a.x), vec3<u32>(1u, u_input.a.x, 48585u)))), ~vec3<u32>(min(0u, 0u) >> (select(u_input.a.x, u_input.a.x, true) % 32u), ~firstLeadingBit(u_input.a.x), 6075u));
    let var_1 = _wgslsmith_mult_vec2_u32(var_0.yz, vec2<u32>(select(_wgslsmith_sub_u32(u_input.a.x, max(var_0.x, 23460u)), reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, var_0.x, 1u, 21250u), vec4<u32>(var_0.x, var_0.x, var_0.x, 131222u))), !all(vec2<bool>(true, true))), 0u));
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global1.x + 551f)))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -543f) + _wgslsmith_f_op_f32(global1.x * -468f)) + -1000f))));
    let var_3 = ~(global0.yyx << (var_0 % vec3<u32>(32u)));
    var var_4 = false;
    return reverseBits(_wgslsmith_mod_vec3_i32(-max(var_3, abs(vec3<i32>(u_input.b, var_3.x, 0i))), global0.wxx ^ (vec3<i32>(-1i) * -vec3<i32>(u_input.b, var_3.x, var_3.x))));
}

fn func_2(arg_0: vec4<u32>, arg_1: u32) -> f32 {
    global2 = array<vec2<bool>, 30>();
    var var_0 = 2147483647i;
    let var_1 = Struct_2(func_3());
    let var_2 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(1862f, global1.x) * _wgslsmith_f_op_f32(select(global1.x, 393f, true))), _wgslsmith_f_op_f32(global1.x - _wgslsmith_f_op_f32(f32(-1f) * -652f))) - vec3<f32>(global1.x, global1.x, _wgslsmith_f_op_f32(-global1.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, -472f, global1.x)) * _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global1.x, 1052f, global1.x))))))));
    global0 = reverseBits(select(-((vec4<i32>(14776i, 1811i, var_1.a.x, u_input.b) & vec4<i32>(global0.x, global0.x, global0.x, 27477i)) ^ _wgslsmith_add_vec4_i32(vec4<i32>(global0.x, -2147483647i, global0.x, -4525i), vec4<i32>(u_input.b, u_input.b, -20087i, 19899i))), reverseBits(_wgslsmith_add_vec4_i32(countOneBits(vec4<i32>(var_1.a.x, -2147483647i, var_1.a.x, u_input.b)), ~vec4<i32>(2147483647i, 0i, 35884i, u_input.b))), vec4<bool>(true, 1997f <= global1.x, true, true)));
    return var_2.x;
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: vec4<bool>, arg_3: Struct_3) -> vec3<f32> {
    global1 = vec3<f32>(721f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(1117f, arg_1.d)), _wgslsmith_f_op_f32(func_2(~vec4<u32>(86066u, 1u, u_input.a.x, 372u), ~1u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global1.x))));
    let var_0 = Struct_2(firstTrailingBit(global0.yxy));
    let var_1 = vec2<u32>(arg_1.c.x, abs(_wgslsmith_div_u32(_wgslsmith_mod_u32(firstLeadingBit(arg_1.e.x), arg_3.e.x | arg_3.e.x), firstLeadingBit(~1u))));
    let var_2 = ~_wgslsmith_sub_u32(1u, select(~2838u >> (~var_1.x % 32u), reverseBits(73714u | var_1.x), any(global2[_wgslsmith_index_u32(4294967295u, 30u)]) && !arg_3.a.x));
    global1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-arg_0.xzw))));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0.zxy) + _wgslsmith_f_op_vec3_f32(arg_0.xyx * arg_0.wwy)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = any(vec2<bool>(select(all(vec4<bool>(false, true, false, true)), true, all(global2[_wgslsmith_index_u32(u_input.a.x, 30u)])), true)) || false;
    global1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, _wgslsmith_f_op_f32(min(365f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global1.x)) + _wgslsmith_f_op_f32(-global1.x)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.x + global1.x), 301f) * global1.x)) - _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1(vec4<f32>(global1.x, global1.x, -1647f, global1.x), Struct_1(vec2<i32>(global0.x, u_input.b), vec4<i32>(u_input.b, global0.x, 36581i, 2147483647i), u_input.a, 1298f, u_input.a), vec4<bool>(false, true, true, true), Struct_3(global2[_wgslsmith_index_u32(u_input.a.x, 30u)], Struct_2(global0.yzw), Struct_2(global0.yxw), 2147483647i, vec4<u32>(u_input.a.x, 0u, 0u, u_input.a.x))))))))));
    var var_1 = Struct_1(global0.xw, vec4<i32>(_wgslsmith_div_i32(_wgslsmith_mod_i32(1i, 1i), _wgslsmith_div_i32(u_input.b, -u_input.b)), 2147483647i, -24729i, ~u_input.b & _wgslsmith_dot_vec3_i32(global0.yyz, global0.zyw)), max(vec2<u32>(u_input.a.x, u_input.a.x), ~(~vec2<u32>(58269u, u_input.a.x)) ^ ~u_input.a), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)))), vec2<u32>(u_input.a.x, u_input.a.x));
    let var_2 = Struct_3(select(select(vec2<bool>(true, true), global2[_wgslsmith_index_u32(var_1.c.x, 30u)], any(vec3<bool>(true, true, true))), global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.a.x >> (0u % 32u), u_input.a.x), 30u)], select(!select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false)), global2[_wgslsmith_index_u32(~abs(0u), 30u)], false)), Struct_2(vec3<i32>(-u_input.b, _wgslsmith_add_i32(reverseBits(12550i), func_3().x), _wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(global0.x, 0i, -1i, -2147483647i)), abs(vec4<i32>(u_input.b, u_input.b, 2147483647i, -8102i))))), Struct_2(reverseBits(global0.www)), global0.x, vec4<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 21874u, var_1.e.x) << (_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, 97172u), vec3<u32>(var_1.e.x, u_input.a.x, 1u)) % vec3<u32>(32u)), vec3<u32>(u_input.a.x, ~u_input.a.x, ~45207u)), 45883u, 13010u, _wgslsmith_sub_u32(reverseBits(0u) >> (max(45950u, u_input.a.x) % 32u), _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(1u, var_1.c.x, u_input.a.x), vec3<u32>(var_1.e.x, var_1.e.x, var_1.e.x)), firstTrailingBit(vec3<u32>(30592u, 102124u, var_1.e.x))))));
    global1 = vec3<f32>(_wgslsmith_f_op_f32(-var_1.d), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -422f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1452f - -1000f))), _wgslsmith_f_op_f32(sign(global1.x)), !(_wgslsmith_div_f32(global1.x, var_1.d) < _wgslsmith_div_f32(global1.x, 368f)))), global1.x);
    let var_3 = var_2.a.x;
    global1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -274f), -1056f, global1.x) * _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(884f, -1758f, -888f), vec3<f32>(global1.x, 398f, var_1.d)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-424f, 1571f, global1.x))))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_1.d, var_1.d, -1274f))), vec3<f32>(global1.x, -948f, -815f))))));
    let var_4 = select(!select(!select(vec3<bool>(var_3, var_2.a.x, false), vec3<bool>(true, var_2.a.x, var_3), false), select(vec3<bool>(false, false, true), select(vec3<bool>(var_2.a.x, var_2.a.x, var_3), vec3<bool>(var_3, var_2.a.x, var_2.a.x), var_2.a.x), vec3<bool>(var_3, false, var_2.a.x)), vec3<bool>(!var_2.a.x, all(vec4<bool>(false, var_2.a.x, true, true)), !var_3)), select(select(vec3<bool>(var_3 == true, false, true), vec3<bool>(184f > var_1.d, 36542u > var_2.e.x, var_3), select(vec3<bool>(var_3, true, false), vec3<bool>(true, true, false), select(vec3<bool>(true, true, var_3), vec3<bool>(true, var_2.a.x, true), true))), select(select(select(vec3<bool>(var_2.a.x, var_2.a.x, false), vec3<bool>(var_2.a.x, var_2.a.x, false), vec3<bool>(var_3, true, var_2.a.x)), vec3<bool>(true, true, true), true), select(vec3<bool>(true, false, var_3), vec3<bool>(true, var_3, true), vec3<bool>(true, false, true)), select(select(vec3<bool>(true, var_2.a.x, var_3), vec3<bool>(false, false, var_2.a.x), var_3), vec3<bool>(true, true, true), -928f != var_1.d)), !var_2.a.x), vec3<bool>(false, true, true & var_3));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global1.x))))), max(var_2.b.a.x, ~_wgslsmith_div_i32(0i, 29045i)));
}

