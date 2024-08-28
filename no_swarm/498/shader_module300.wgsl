struct Struct_1 {
    a: vec2<u32>,
    b: bool,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec2<u32>,
    c: u32,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec2<f32>,
    c: vec3<f32>,
    d: bool,
    e: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: vec4<f32>,
    d: vec3<u32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
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

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> u32 {
    var var_0 = Struct_1(~(~(vec2<u32>(1u, 4294967295u) | ~vec2<u32>(u_input.b, 89430u))), false);
    let var_1 = Struct_3(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-212f, _wgslsmith_f_op_f32(abs(-201f)), _wgslsmith_f_op_f32(-875f - 893f), _wgslsmith_f_op_f32(round(205f)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(-2461f, -517f) - vec2<f32>(-133f, -790f))))), vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(672f, -1934f)))), -1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-174f))) - 383f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(699f + 1151f)), 1000f))), var_0.b & all(select(vec2<bool>(var_0.b, false), select(vec2<bool>(var_0.b, true), vec2<bool>(true, true), true), true)), abs(_wgslsmith_mod_i32(-1i, _wgslsmith_add_i32(~(-2147483647i), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, 2147483647i, u_input.a.x), u_input.a)))));
    var_0 = Struct_1(min(~_wgslsmith_sub_vec2_u32(var_0.a, vec2<u32>(var_0.a.x, 45395u)) & ~(~vec2<u32>(1u, 134362u)), var_0.a), true);
    let var_2 = false;
    let var_3 = ~vec2<i32>(var_1.e, _wgslsmith_clamp_i32(_wgslsmith_sub_i32(-var_1.e, firstLeadingBit(-2147483647i)), _wgslsmith_dot_vec3_i32(-u_input.a, reverseBits(vec3<i32>(-10058i, -2147483647i, -25737i))), 2147483647i));
    return abs(1u);
}

fn func_2(arg_0: Struct_2) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1845f, 1f, 627f)));
    let var_1 = arg_0.d;
    var var_2 = vec4<bool>(_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.a.x, 4294967295u, 0u) & ~arg_0.a.ywz, ~vec3<u32>(var_1.a.x, 52110u, 0u)) > u_input.b, true, any(vec3<bool>(false, -20157i >= ~u_input.a.x, arg_0.d.b)), true);
    let var_3 = var_2.xyz;
    var var_4 = vec2<bool>(true, ~(~u_input.a.x) == 1i);
    return Struct_2(arg_0.a, vec2<u32>(73855u, countOneBits(~firstTrailingBit(44882u))), ~func_3(), Struct_1(var_1.a, all(vec3<bool>(any(vec4<bool>(var_1.b, true, arg_0.d.b, true)), true, !var_1.b))), u_input.b);
}

fn func_4(arg_0: vec2<u32>, arg_1: vec3<i32>, arg_2: Struct_2, arg_3: bool) -> u32 {
    let var_0 = !(!(!vec3<bool>(false, true, arg_3)));
    var var_1 = Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(-1071f)), _wgslsmith_f_op_f32(f32(-1f) * -872f), _wgslsmith_f_op_f32(abs(-346f)), _wgslsmith_f_op_f32(ceil(158f))))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1000f)) - -702f)), -1412f), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(2097f, -1448f, 985f) + vec3<f32>(-1000f, -1210f, -788f)), vec3<f32>(-1161f, -325f, 834f))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1223f, 289f, 226f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(589f, -974f, 1336f))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(786f, -462f, 560f) + vec3<f32>(754f, -519f, -2327f))))))), false, -2147483647i);
    let var_2 = !select(!(!(!vec4<bool>(true, arg_2.d.b, var_0.x, true))), vec4<bool>(false, var_1.d, arg_3, var_0.x), vec4<bool>(any(vec4<bool>(true, false, arg_3, var_1.d)), any(vec3<bool>(var_0.x, false, var_0.x)), false, arg_2.a.x == _wgslsmith_add_u32(59365u, 3060u)));
    var_1 = Struct_3(_wgslsmith_f_op_vec4_f32(var_1.a - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.c.x, var_1.a.x, var_1.b.x, var_1.b.x)))), vec2<f32>(370f, var_1.c.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_1.c + _wgslsmith_f_op_vec3_f32(var_1.a.xww - vec3<f32>(-814f, 453f, -3545f))))), var_1.d, 0i);
    var var_3 = !vec2<bool>(arg_2.d.b & true, !(arg_0.x >= _wgslsmith_sub_u32(u_input.b, arg_2.c)));
    return 23876u;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_3) -> f32 {
    let var_0 = firstLeadingBit(select(~firstTrailingBit(19619u), ~(~u_input.b), arg_0.b | true) ^ func_4(arg_0.a, select(max(u_input.a, u_input.a), reverseBits(u_input.a), !arg_0.b), func_2(Struct_2(vec4<u32>(48186u, u_input.b, 4294967295u, 1449u), arg_0.a, 72679u, Struct_1(arg_0.a, arg_0.b), 0u)), !arg_1.d));
    let var_1 = _wgslsmith_f_op_f32(min(arg_1.a.x, -1271f));
    let var_2 = arg_0.a;
    var var_3 = vec4<bool>((reverseBits(0u) > ((var_0 ^ 4870u) << (0u % 32u))) || arg_0.b, all(!(!(!vec4<bool>(false, arg_0.b, false, arg_1.d)))), !(!arg_1.d || (-arg_1.e != ~(-2147483647i))), true);
    var var_4 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -762f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1367f + arg_1.c.x) - arg_1.b.x));
    return var_1;
}

fn func_5(arg_0: vec3<f32>, arg_1: vec4<bool>, arg_2: f32, arg_3: Struct_2) -> vec3<f32> {
    let var_0 = arg_3;
    var var_1 = func_2(Struct_2(~var_0.a, var_0.d.a, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, ~arg_3.a.x), _wgslsmith_add_vec2_u32(vec2<u32>(0u, 0u), arg_3.a.wy << (var_0.b % vec2<u32>(32u)))), func_2(func_2(arg_3)).d, var_0.c));
    let var_2 = func_2(Struct_2(var_0.a, vec2<u32>(_wgslsmith_clamp_u32(arg_3.e, var_0.a.x, var_1.a.x), _wgslsmith_dot_vec3_u32(var_1.a.yzx, _wgslsmith_sub_vec3_u32(vec3<u32>(var_1.a.x, var_0.b.x, 1u), var_1.a.zxy))), _wgslsmith_add_u32(1u, var_1.a.x), var_0.d, ~var_1.c)).d;
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(-196f, _wgslsmith_f_op_f32(min(-543f, -651f)), _wgslsmith_f_op_f32(-arg_0.x)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-2164f, 1000f, arg_2) * vec3<f32>(525f, 108f, 2275f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, arg_2, arg_2)))))));
    var var_4 = func_2(func_2(func_2(arg_3)));
    return _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -486f), _wgslsmith_f_op_f32(f32(-1f) * -244f), var_1.d.b != false)) + arg_0.x), -637f, _wgslsmith_f_op_f32(-var_3.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 28226u;
    var_0 = 16906u;
    let var_1 = Struct_3(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(295f, 1000f, 228f, 209f), vec4<f32>(-2792f, 800f, -375f, 720f))) - vec4<f32>(-100f, _wgslsmith_f_op_f32(-2041f - 766f), _wgslsmith_f_op_f32(sign(614f)), _wgslsmith_f_op_f32(min(284f, 697f)))), vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-637f, -111f))), 2073f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(550f * -1252f) + _wgslsmith_f_op_f32(f32(-1f) * -1570f)), _wgslsmith_f_op_f32(-841f - _wgslsmith_f_op_f32(-166f - 232f)))), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1194f, _wgslsmith_div_f32(1000f, _wgslsmith_div_f32(-618f, -1081f))))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-224f, -169f, -442f), vec3<f32>(722f, -2339f, 308f), vec3<bool>(false, true, true)))))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(func_5(_wgslsmith_div_vec3_f32(vec3<f32>(679f, 1584f, 1527f), vec3<f32>(1583f, 192f, 560f)), vec4<bool>(false, false, false, true), _wgslsmith_f_op_f32(func_1(Struct_1(vec2<u32>(14193u, u_input.b), false), Struct_3(vec4<f32>(-1358f, -1825f, -626f, -1057f), vec2<f32>(499f, 453f), vec3<f32>(607f, 117f, -2713f), true, u_input.a.x))), Struct_2(vec4<u32>(u_input.b, 1u, u_input.b, u_input.b), vec2<u32>(u_input.b, u_input.b), 24483u, Struct_1(vec2<u32>(u_input.b, u_input.b), false), 0u))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(258f, 230f, -368f), vec3<f32>(-1611f, 253f, -918f))))), true)))), false, -2147483647i);
    var_0 = func_3();
    var_0 = func_4(vec2<u32>(~0u, ~u_input.b) >> (~(vec2<u32>(25971u, 24507u) >> (vec2<u32>(4294967295u, u_input.b) % vec2<u32>(32u))) % vec2<u32>(32u)), min(u_input.a, ~vec3<i32>(var_1.e, u_input.a.x, 2147483647i)) & vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(24185i, 1i, var_1.e, u_input.a.x), vec4<i32>(56974i, -35179i, 2147483647i, u_input.a.x)), _wgslsmith_dot_vec4_i32(vec4<i32>(37471i, -1i, u_input.a.x, u_input.a.x), vec4<i32>(u_input.a.x, var_1.e, -1i, var_1.e)), var_1.e << (u_input.b % 32u)), Struct_2(vec4<u32>(_wgslsmith_add_u32(u_input.b, 1u), firstTrailingBit(4294967295u), _wgslsmith_sub_u32(64779u, 51321u), ~110116u), ~(~vec2<u32>(4294967295u, 16166u)), 1u, Struct_1(vec2<u32>(u_input.b, 0u), true), ~(~u_input.b)), var_1.d) ^ min(u_input.b, func_2(func_2(func_2(Struct_2(vec4<u32>(u_input.b, 4294967295u, 1u, u_input.b), vec2<u32>(u_input.b, 0u), u_input.b, Struct_1(vec2<u32>(u_input.b, u_input.b), true), u_input.b)))).b.x);
    var var_2 = _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(var_1.e, var_1.e), u_input.a.yy), _wgslsmith_mod_vec2_i32(~u_input.a.xy, _wgslsmith_mult_vec2_i32(select(vec2<i32>(var_1.e, 44237i), u_input.a.xy, vec2<bool>(var_1.d, var_1.d)), vec2<i32>(1i, 36740i)))), ~(vec2<i32>(_wgslsmith_div_i32(u_input.a.x, -15488i), _wgslsmith_dot_vec2_i32(vec2<i32>(var_1.e, -48985i), vec2<i32>(27628i, var_1.e))) ^ _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), _wgslsmith_clamp_vec2_i32(u_input.a.zx, vec2<i32>(var_1.e, u_input.a.x), vec2<i32>(u_input.a.x, var_1.e)))));
    var_2 = ~(~var_1.e);
    var var_3 = Struct_3(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-988f * _wgslsmith_f_op_f32(-var_1.a.x))), var_1.a.x, 376f, var_1.a.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(var_1.a.yx)) * _wgslsmith_f_op_vec2_f32(-var_1.a.wy)) - vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -535f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(var_1.c.x)), _wgslsmith_f_op_f32(-var_1.a.x))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-656f - -939f), var_1.a.x, _wgslsmith_f_op_f32(floor(1f)))), !all(!vec3<bool>(true, false, var_1.d)) & false, 2147483647i);
    let x = u_input.a;
    s_output = StorageBuffer(1105f, min(vec3<u32>(select(u_input.b << (46971u % 32u), _wgslsmith_div_u32(4294967295u, 1u), true), u_input.b, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.b, u_input.b, 1u), vec4<u32>(18596u, u_input.b, u_input.b, 4980u)) & (u_input.b | u_input.b)), _wgslsmith_sub_vec3_u32(max(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.b, u_input.b, 1002u), vec3<u32>(79645u, 106257u, u_input.b)), vec3<u32>(u_input.b, 1u, u_input.b)), _wgslsmith_add_vec3_u32(vec3<u32>(12259u, 13392u, u_input.b) >> (vec3<u32>(u_input.b, u_input.b, 4294967295u) % vec3<u32>(32u)), vec3<u32>(u_input.b, u_input.b, u_input.b) ^ vec3<u32>(u_input.b, u_input.b, 1u)))), _wgslsmith_f_op_vec4_f32(-var_1.a), vec3<u32>(1u, ~max(4294967295u, u_input.b), _wgslsmith_clamp_u32(~u_input.b, ~u_input.b, u_input.b)) ^ ~vec3<u32>(4294967295u, u_input.b, 4965u >> (1u % 32u)), ~_wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(func_2(Struct_2(vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b), vec2<u32>(63164u, 4294967295u), 1u, Struct_1(vec2<u32>(u_input.b, u_input.b), var_3.d), u_input.b)).a.xwy, ~vec3<u32>(u_input.b, 0u, u_input.b)), ~abs(vec3<u32>(29437u, u_input.b, u_input.b))));
}

