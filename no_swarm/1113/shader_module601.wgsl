struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: vec3<u32>,
    d: vec3<u32>,
    e: i32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 2>;

var<private> global1: array<Struct_1, 30>;

var<private> global2: array<vec3<f32>, 21>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<i32>) -> bool {
    let var_0 = Struct_1(vec4<i32>(arg_1.x, 84514i, ~20330i, -2147483647i), arg_1.x, _wgslsmith_mod_vec3_u32(abs(vec3<u32>(~17441u, countOneBits(u_input.b), 0u)), max(~(vec3<u32>(u_input.b, 1u, 4294967295u) >> (vec3<u32>(62561u, global0[_wgslsmith_index_u32(1u, 2u)], global0[_wgslsmith_index_u32(arg_0.a, 2u)]) % vec3<u32>(32u))), ~(vec3<u32>(4294967295u, 43274u, arg_0.a) << (vec3<u32>(global0[_wgslsmith_index_u32(70352u, 2u)], u_input.c, arg_0.a) % vec3<u32>(32u))))), vec3<u32>(~(~arg_0.a), ~abs(0u), ~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, arg_0.a, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 2u)], 2u)], 77185u), vec4<u32>(4294967295u, 4294967295u, global0[_wgslsmith_index_u32(47376u, 2u)], arg_0.a))) & vec3<u32>(~_wgslsmith_add_u32(47680u, 35675u), _wgslsmith_sub_u32(countOneBits(20680u), 1u), 5975u), -max(u_input.a, i32(-1i) * -1i));
    var var_1 = Struct_3(vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(330f))))), -1649f));
    var var_2 = Struct_1(~(~(select(var_0.a, var_0.a, vec4<bool>(true, false, false, true)) | var_0.a)), u_input.a, min(~vec3<u32>(firstTrailingBit(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_0.a, 2u)], 2u)]), countOneBits(104454u), var_0.d.x << (4294967295u % 32u)), ~var_0.c), var_0.c, abs(u_input.a));
    var_1 = Struct_3(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(908f, -1050f) * var_1.a))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_1.a.x, var_1.a.x), _wgslsmith_f_op_vec2_f32(var_1.a - vec2<f32>(var_1.a.x, var_1.a.x)), vec2<bool>(true, true))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(floor(-844f)), _wgslsmith_f_op_f32(round(1454f))) + vec2<f32>(_wgslsmith_f_op_f32(-var_1.a.x), -591f)))));
    var var_3 = all(select(select(!select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, false)), vec4<bool>(true, true, true, true), !(var_1.a.x == var_1.a.x)), !(!select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false))), vec4<bool>(true, true, true, true)));
    return any(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, any(vec3<bool>(true, false, false)), u_input.a != 3946i)));
}

fn func_2() -> Struct_3 {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(713f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(-1000f)))))), -449f);
    global1 = array<Struct_1, 30>();
    var var_1 = !(!any(vec2<bool>(true, true))) == !(!func_3(Struct_2(43236u), vec3<i32>(-6442i, u_input.a, u_input.a)));
    global2 = array<vec3<f32>, 21>();
    global1 = array<Struct_1, 30>();
    return Struct_3(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(196f, var_0.x))), vec2<f32>(var_0.x, var_0.x)) * _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, 1201f) * vec2<f32>(var_0.x, var_0.x)), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(271f, var_0.x)))))))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3) -> vec2<f32> {
    var var_0 = _wgslsmith_f_op_f32(-arg_1.a.x);
    let var_1 = Struct_2(~u_input.c | abs(30748u));
    let var_2 = vec3<i32>(u_input.a, -1i, _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(-_wgslsmith_dot_vec3_i32(vec3<i32>(0i, u_input.a, u_input.a), vec3<i32>(-1i, 0i, 0i)), i32(-1i) * -1i, u_input.a), u_input.a, -21853i));
    var var_3 = Struct_1(countOneBits(select(-_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a, 1i, 21400i, var_2.x), vec4<i32>(2147483647i, var_2.x, u_input.a, u_input.a), vec4<i32>(44813i, var_2.x, u_input.a, 2147483647i)), vec4<i32>(_wgslsmith_mult_i32(u_input.a, 24694i), reverseBits(u_input.a), _wgslsmith_div_i32(var_2.x, -1i), i32(-1i) * -15678i), all(select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), false)))), i32(-1i) * -1i, ~(~_wgslsmith_mult_vec3_u32(vec3<u32>(arg_0.a, 4294967295u, arg_0.a), vec3<u32>(63814u, 25055u, arg_0.a))) | (vec3<u32>(u_input.c, var_1.a | u_input.c, ~arg_0.a) | select(countOneBits(vec3<u32>(0u, 77434u, u_input.b)), max(vec3<u32>(4294967295u, u_input.b, u_input.c), vec3<u32>(4294967295u, 4294967295u, arg_0.a)), vec3<bool>(true, true, true))), select(_wgslsmith_add_vec3_u32(vec3<u32>(36827u, 1u, 12150u), vec3<u32>(43145u, global0[_wgslsmith_index_u32(43994u, 2u)], u_input.b)) ^ vec3<u32>(13494u, global0[_wgslsmith_index_u32(1u, 2u)], 0u), _wgslsmith_add_vec3_u32(select(vec3<u32>(1u, 1u, global0[_wgslsmith_index_u32(0u, 2u)]), vec3<u32>(0u, 1u, arg_0.a), false), vec3<u32>(4294967295u, 4294967295u, u_input.b)), true) << (max(~max(vec3<u32>(var_1.a, global0[_wgslsmith_index_u32(var_1.a, 2u)], var_1.a), vec3<u32>(var_1.a, arg_0.a, var_1.a)), _wgslsmith_sub_vec3_u32(vec3<u32>(var_1.a, u_input.c, 4294967295u) >> (vec3<u32>(arg_0.a, u_input.c, var_1.a) % vec3<u32>(32u)), select(vec3<u32>(var_1.a, arg_0.a, 23300u), vec3<u32>(global0[_wgslsmith_index_u32(2261u, 2u)], 32137u, u_input.b), false))) % vec3<u32>(32u)), u_input.a);
    var var_4 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_1.a.x))), arg_1.a.x, _wgslsmith_f_op_f32(-arg_1.a.x), _wgslsmith_f_op_f32(-118f * _wgslsmith_f_op_f32(-535f * arg_1.a.x))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_1.a.x, arg_1.a.x, -930f, 998f))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.a.x, arg_1.a.x, arg_1.a.x, -212f) - vec4<f32>(765f, -1706f, arg_1.a.x, -555f)))))));
    return _wgslsmith_f_op_vec2_f32(abs(arg_1.a));
}

fn func_1(arg_0: u32, arg_1: vec4<i32>, arg_2: vec2<bool>, arg_3: bool) -> Struct_3 {
    global0 = array<u32, 2>();
    global2 = array<vec3<f32>, 21>();
    global2 = array<vec3<f32>, 21>();
    global0 = array<u32, 2>();
    var var_0 = select(24836i, ~(-1i), all(!vec3<bool>(arg_2.x, !arg_3, true)));
    return Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-316f, 698f), vec2<f32>(2111f, 537f)))))) + _wgslsmith_f_op_vec2_f32(func_4(Struct_2(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 95202u, 8038u), vec3<u32>(3u, 52064u, 39185u))), func_2()))));
}

fn func_5(arg_0: Struct_3, arg_1: Struct_2) -> Struct_2 {
    let var_0 = Struct_2(~(~_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(27205u, 2u)] ^ 1u, 27816u)));
    global1 = array<Struct_1, 30>();
    var var_1 = global2[_wgslsmith_index_u32(_wgslsmith_div_u32(global0[_wgslsmith_index_u32(4294967295u, 2u)], _wgslsmith_mod_u32(55170u << (firstTrailingBit(0u) % 32u), ~1u >> (_wgslsmith_add_u32(1u, arg_1.a | arg_1.a) % 32u))), 21u)];
    var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(var_1.x)), var_1.x))), arg_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_0.a.x, -495f))))));
    let var_2 = Struct_2(_wgslsmith_add_u32(_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u, arg_1.a), 2u)], 0u), max(0u, var_0.a)));
    return arg_1;
}

fn func_6(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_2) -> Struct_2 {
    let var_0 = func_5(Struct_3(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1f, 1f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1017f, 150f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-995f, 1960f) - vec2<f32>(-409f, 113f)))))), Struct_2(arg_2.a));
    global2 = array<vec3<f32>, 21>();
    let var_1 = func_2();
    let var_2 = reverseBits(max(vec4<i32>(_wgslsmith_add_i32(_wgslsmith_mod_i32(26008i, u_input.a), -43900i), u_input.a, -1i, -2147483647i), ~vec4<i32>(_wgslsmith_add_i32(-31455i, u_input.a), ~u_input.a, _wgslsmith_sub_i32(u_input.a, -1i), 0i)));
    global2 = array<vec3<f32>, 21>();
    return Struct_2(4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.c;
    global2 = array<vec3<f32>, 21>();
    let var_1 = func_6(func_5(func_1(~(~0u), select(vec4<i32>(-2147483647i, u_input.a, u_input.a, u_input.a), -vec4<i32>(1i, u_input.a, 0i, 0i), true), vec2<bool>(true, true), true && all(vec3<bool>(true, false, true))), Struct_2(~(~global0[_wgslsmith_index_u32(14667u, 2u)]))), func_5(func_1(global0[_wgslsmith_index_u32(firstTrailingBit(6025u), 2u)], abs(vec4<i32>(-19568i, u_input.a, u_input.a, 13467i)) | -vec4<i32>(0i, u_input.a, u_input.a, u_input.a), vec2<bool>(true, true), _wgslsmith_add_i32(-14028i, u_input.a) == (-2147483647i << (var_0 % 32u))), Struct_2(var_0)), func_5(func_1(min(~2215u, 0u), -vec4<i32>(0i, u_input.a, 2147483647i, -2147483647i) & -vec4<i32>(-15757i, u_input.a, u_input.a, -8950i), vec2<bool>(true, true), true), Struct_2(u_input.b | 1u)));
    var var_2 = ~(~1u);
    var var_3 = var_1;
    var var_4 = any(vec3<bool>(false, true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(876f)) - -719f) != _wgslsmith_f_op_f32(max(-621f, _wgslsmith_f_op_f32(trunc(-366f))))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, _wgslsmith_mult_i32(0i, u_input.a), vec3<u32>(~(~_wgslsmith_dot_vec2_u32(vec2<u32>(var_3.a, global0[_wgslsmith_index_u32(0u, 2u)]), vec2<u32>(var_0, 6338u))), global0[_wgslsmith_index_u32(var_3.a, 2u)], global0[_wgslsmith_index_u32(30784u, 2u)]), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-359f + 1567f)) * -776f))));
}

