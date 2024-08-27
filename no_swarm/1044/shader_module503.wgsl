struct Struct_1 {
    a: vec3<f32>,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<i32>,
    c: vec4<u32>,
    d: i32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 26>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: i32, arg_1: vec2<f32>) -> f32 {
    global0 = array<vec4<bool>, 26>();
    let var_0 = ~1u;
    global0 = array<vec4<bool>, 26>();
    global0 = array<vec4<bool>, 26>();
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-341f + arg_1.x)), 1447f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(arg_1.x, arg_1.x))))))), _wgslsmith_f_op_f32(floor(arg_1.x)));
    return 1746f;
}

fn func_3() -> vec2<u32> {
    var var_0 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(min(130f, _wgslsmith_f_op_f32(-366f + _wgslsmith_f_op_f32(abs(-1545f))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-948f, -591f), _wgslsmith_div_f32(-672f, 855f), true))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-449f))));
    var var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0.a.x), 1306f));
    var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b, var_0.a.x, -704f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(var_0.a, vec3<f32>(var_0.b, var_0.a.x, -415f), false)) - _wgslsmith_f_op_vec3_f32(min(var_0.a, var_0.a)))), ~abs(u_input.c) >= ~(u_input.c & u_input.a))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(var_0.a.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(776f, var_0.b))), var_0.b))));
    let var_2 = _wgslsmith_f_op_f32(1854f - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-301f * _wgslsmith_f_op_f32(abs(2480f))) * var_0.b), var_0.a.x)));
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(var_0.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -133f), true)));
    return ~vec2<u32>(1u, 1u);
}

fn func_4(arg_0: Struct_1, arg_1: vec2<u32>) -> Struct_1 {
    let var_0 = arg_0;
    global0 = array<vec4<bool>, 26>();
    var var_1 = var_0;
    global0 = array<vec4<bool>, 26>();
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(min(arg_0.a, var_0.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-541f, _wgslsmith_f_op_f32(select(-1992f, var_1.b, true)))) * -135f));
    return Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-465f, _wgslsmith_f_op_f32(-1841f + -670f), _wgslsmith_f_op_f32(min(arg_0.a.x, 1293f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.b, var_2.a.x, var_1.a.x)) * _wgslsmith_f_op_vec3_f32(-arg_0.a)))), var_0.a.x);
}

fn func_1(arg_0: f32, arg_1: vec4<bool>) -> vec3<bool> {
    var var_0 = func_4(Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0, 869f, 1183f), _wgslsmith_f_op_vec3_f32(vec3<f32>(-591f, 703f, arg_0) - vec3<f32>(arg_0, arg_0, -1000f)), select(vec3<bool>(false, arg_1.x, false), vec3<bool>(false, arg_1.x, false), arg_1.x))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, arg_0, -239f) + vec3<f32>(arg_0, 1796f, arg_0)))), _wgslsmith_f_op_f32(func_2(-firstTrailingBit(-2147483647i), _wgslsmith_div_vec2_f32(vec2<f32>(arg_0, -1268f), vec2<f32>(-101f, 423f))))), _wgslsmith_mult_vec2_u32(firstTrailingBit(vec2<u32>(0u, u_input.c)), func_3() | _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, u_input.c), vec2<u32>(4294967295u, u_input.a))) ^ vec2<u32>(u_input.c, countOneBits(_wgslsmith_add_u32(17181u, 1u))));
    let var_1 = vec2<i32>(2147483647i, u_input.b);
    var var_2 = Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.a) + vec3<f32>(arg_0, 139f, -583f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(var_0.a))))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(var_0.a.x - var_0.b), _wgslsmith_f_op_f32(-arg_0), 322f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.x, 342f, arg_0))), !select(vec3<bool>(true, false, arg_1.x), arg_1.xyz, true)))), _wgslsmith_f_op_f32(func_2(-_wgslsmith_div_i32(1498i, var_1.x), vec2<f32>(589f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b) - var_0.a.x)))));
    var var_3 = arg_1.wyw;
    let var_4 = vec3<bool>(true, false, false);
    return vec3<bool>(var_3.x, true, false);
}

fn func_5(arg_0: bool, arg_1: vec3<bool>, arg_2: bool) -> bool {
    global0 = array<vec4<bool>, 26>();
    return !func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1264f, 1268f, false)) - _wgslsmith_f_op_f32(-600f + -1049f)), select(vec4<bool>(arg_0, arg_1.x, arg_0, true), vec4<bool>(arg_0, arg_0, arg_1.x, false), arg_0)).x || (any(vec2<bool>(true, true)) | !any(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.a, u_input.a), 26u)]));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<bool>(func_5(-989f != _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1182f))), func_1(-107f, vec4<bool>(any(vec2<bool>(false, false)), true, true, true)), -(~u_input.b) <= firstLeadingBit(_wgslsmith_mult_i32(u_input.b, 0i))), select(false, true, false), (((1u << (u_input.a % 32u)) == _wgslsmith_mult_u32(4294967295u, 0u)) & !func_1(502f, vec4<bool>(false, true, false, true)).x) == func_5(true, vec3<bool>(true, true, all(vec3<bool>(false, true, false))), true));
    var_0 = func_1(_wgslsmith_f_op_f32(round(1f)), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~u_input.c, 4294967295u), 26u)]);
    var var_1 = func_4(func_4(func_4(func_4(Struct_1(vec3<f32>(-1261f, -324f, 161f), 1149f), ~vec2<u32>(0u, 1015u)), _wgslsmith_mod_vec2_u32(reverseBits(vec2<u32>(u_input.a, u_input.a)), reverseBits(vec2<u32>(u_input.a, u_input.a)))), _wgslsmith_mult_vec2_u32(~vec2<u32>(u_input.c, u_input.a), ~_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a, u_input.c), vec2<u32>(49900u, 0u), vec2<u32>(u_input.c, 3622u)))), select(~(~(vec2<u32>(1u, u_input.c) | vec2<u32>(u_input.a, 1u))), ~min(vec2<u32>(u_input.c, 37287u), vec2<u32>(u_input.a, u_input.a)), var_0.yx));
    let var_2 = func_4(func_4(func_4(Struct_1(_wgslsmith_div_vec3_f32(vec3<f32>(-637f, var_1.b, var_1.a.x), vec3<f32>(var_1.a.x, 1389f, var_1.a.x)), _wgslsmith_f_op_f32(-var_1.b)), ~vec2<u32>(72316u, u_input.a)), select(_wgslsmith_mod_vec2_u32(vec2<u32>(0u, 43330u), vec2<u32>(u_input.a, 4294967295u)), vec2<u32>(u_input.c, 3487u) | vec2<u32>(u_input.a, u_input.c), !var_0.yy) << (~(~vec2<u32>(0u, u_input.a)) % vec2<u32>(32u))), vec2<u32>(u_input.c, ~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.a), vec2<u32>(39070u, u_input.c))));
    global0 = array<vec4<bool>, 26>();
    global0 = array<vec4<bool>, 26>();
    global0 = array<vec4<bool>, 26>();
    var var_3 = ~(min(~countOneBits(vec2<i32>(u_input.b, u_input.b)), ~vec2<i32>(u_input.b, 4497i)) | (min(vec2<i32>(-2147483647i, 26507i), select(vec2<i32>(2039i, 18193i), vec2<i32>(u_input.b, -18425i), vec2<bool>(true, false))) | vec2<i32>(-u_input.b, 6952i)));
    var_3 = _wgslsmith_mod_vec2_i32(reverseBits(~_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.b, -19836i) >> (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u)), ~vec2<i32>(1i, -2147483647i), ~vec2<i32>(-1i, var_3.x))), _wgslsmith_mod_vec2_i32(vec2<i32>(0i, -_wgslsmith_dot_vec4_i32(vec4<i32>(-70881i, -2147483647i, 1i, 1i), vec4<i32>(33020i, 0i, 11112i, u_input.b))), (vec2<i32>(-1i, 2147483647i) >> (firstTrailingBit(vec2<u32>(17389u, 53561u)) % vec2<u32>(32u))) << (~_wgslsmith_add_vec2_u32(vec2<u32>(u_input.c, u_input.c), vec2<u32>(u_input.c, u_input.a)) % vec2<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_2.b), _wgslsmith_f_op_f32(sign(var_1.b)), 438f, _wgslsmith_div_f32(var_2.b, var_1.a.x)) * vec4<f32>(_wgslsmith_f_op_f32(-var_2.b), 560f, -268f, var_2.a.x)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.a.x, var_2.b, var_1.b, var_1.b))))), vec2<i32>(1i, u_input.b), vec4<u32>(~(~u_input.c), 6319u, u_input.a, 1u) >> (reverseBits(abs(vec4<u32>(1u, u_input.a, 1u, 1u) ^ vec4<u32>(1u, u_input.c, 0u, 0u))) % vec4<u32>(32u)), -(min(abs(-13826i), -var_3.x) >> (~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 84728u), vec2<u32>(u_input.a, u_input.c)) % 32u)), -select(_wgslsmith_add_vec4_i32(vec4<i32>(var_3.x, u_input.b, 2147483647i, 62821i) ^ vec4<i32>(-2147483647i, -23698i, 0i, 48649i), countOneBits(vec4<i32>(1i, u_input.b, -1i, -17428i))), abs(_wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, -27816i, var_3.x, 1i), vec4<i32>(u_input.b, 102419i, var_3.x, -21532i))), func_1(_wgslsmith_f_op_f32(-var_2.b), vec4<bool>(true, var_0.x, var_0.x, false)).x));
}

