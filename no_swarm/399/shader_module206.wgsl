struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: i32,
    d: i32,
    e: vec2<f32>,
}

struct Struct_4 {
    a: vec4<f32>,
    b: vec2<f32>,
    c: bool,
    d: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_2) -> u32 {
    var var_0 = 49215u;
    let var_1 = Struct_2(vec2<u32>(arg_0.a.x, 21504u));
    var_0 = _wgslsmith_dot_vec4_u32(~_wgslsmith_add_vec4_u32(~(vec4<u32>(53466u, 4294967295u, u_input.d, var_1.a.x) | vec4<u32>(23806u, 68550u, 90767u, 25395u)), ~vec4<u32>(var_1.a.x, var_1.a.x, 0u, 43357u)), vec4<u32>(~_wgslsmith_dot_vec2_u32(~var_1.a, vec2<u32>(12639u, 4294967295u)), arg_0.a.x, _wgslsmith_dot_vec3_u32(~(~vec3<u32>(2027u, u_input.a.x, arg_0.a.x)), vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.a.x, u_input.a.x, 99194u, 11811u), vec4<u32>(0u, 34896u, 4294967295u, 28011u)), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.d), vec2<u32>(arg_0.a.x, arg_0.a.x)), ~0u)), arg_0.a.x));
    var_0 = ~(~arg_0.a.x);
    let var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-858f, 1417f))));
    return ~((firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, 0u, 27464u, 1u), vec4<u32>(u_input.d, var_1.a.x, var_1.a.x, 46112u))) << (~1u % 32u)) ^ select(4294967295u, ~_wgslsmith_add_u32(var_1.a.x, 85252u), !any(vec4<bool>(true, true, false, true))));
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: u32) -> Struct_3 {
    let var_0 = any(vec4<bool>(_wgslsmith_mod_u32(arg_2, ~107538u) == func_3(Struct_2(u_input.a)), any(select(vec4<bool>(true, false, true, false), select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true)), select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, true), false))), true, false));
    var var_1 = _wgslsmith_mod_i32(-46845i, i32(-1i) * -21773i) >> (firstLeadingBit(firstLeadingBit(abs(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_2, u_input.c), u_input.a)))) % 32u);
    var var_2 = vec2<bool>(all(!(!(!vec3<bool>(var_0, false, var_0)))), any(!(!select(vec4<bool>(true, true, false, var_0), vec4<bool>(false, var_0, var_0, true), false))));
    var var_3 = any(vec2<bool>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1919f * arg_1.a.x), _wgslsmith_f_op_f32(-arg_1.a.x)) < arg_1.a.x, false));
    let var_4 = var_2.x && select(true, false, false | all(vec3<bool>(false, var_0, var_2.x)));
    return Struct_3(!(u_input.a.x >= (0u | u_input.c)), Struct_2(select(vec2<u32>(u_input.d, u_input.c), countOneBits(vec2<u32>(arg_2, u_input.d)), select(vec2<bool>(var_0, true), vec2<bool>(var_2.x, false), vec2<bool>(false, var_4))) & _wgslsmith_mult_vec2_u32(u_input.a, firstLeadingBit(u_input.a))), 37145i ^ u_input.e.x, 57987i, vec2<f32>(arg_1.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.a.x - -744f) - arg_1.a.x)));
}

fn func_4(arg_0: Struct_3, arg_1: u32) -> f32 {
    let var_0 = vec4<bool>(arg_0.a & (~(~arg_1) == ~func_3(arg_0.b)), false, arg_0.a, arg_0.a);
    let var_1 = true;
    let var_2 = ~(-(_wgslsmith_dot_vec3_i32(countOneBits(u_input.e.xwz), u_input.e.xyx) | abs(2147483647i)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-490f - _wgslsmith_div_f32(arg_0.e.x, _wgslsmith_f_op_f32(-arg_0.e.x))));
}

fn func_5(arg_0: Struct_3, arg_1: vec3<f32>) -> vec4<bool> {
    var var_0 = func_2(_wgslsmith_mod_vec3_i32(~u_input.e.yyy, u_input.e.wyz), Struct_1(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(arg_1.zz)) + _wgslsmith_f_op_vec2_f32(-arg_0.e))))), u_input.a.x).b;
    var_0 = arg_0.b;
    var_0 = Struct_2(u_input.a);
    var_0 = func_2(abs(vec3<i32>(563i, -2147483647i, u_input.e.x)), Struct_1(arg_0.e), 0u).b;
    let var_1 = arg_0.a || (arg_0.e.x != _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_1.x)) + arg_1.x))));
    return select(vec4<bool>(any(!vec4<bool>(arg_0.a, false, arg_0.a, var_1)) && (!arg_0.a || !arg_0.a), var_1 & any(!vec4<bool>(var_1, arg_0.a, false, var_1)), false, arg_0.a), !select(!vec4<bool>(true, false, true, arg_0.a), !vec4<bool>(true, var_1, arg_0.a, arg_0.a), all(select(vec3<bool>(arg_0.a, true, false), vec3<bool>(false, true, true), vec3<bool>(true, arg_0.a, var_1)))), vec4<bool>(true, true, true, true));
}

fn func_1(arg_0: bool, arg_1: vec2<i32>) -> vec2<u32> {
    let var_0 = select(func_5(Struct_3(any(select(vec4<bool>(arg_0, arg_0, true, arg_0), vec4<bool>(arg_0, true, true, true), true)), Struct_2(u_input.a), -2147483647i, 21071i, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(-868f, 1423f) + vec2<f32>(134f, 859f)), vec2<f32>(-1000f, 199f)))), vec3<f32>(_wgslsmith_f_op_f32(1191f - _wgslsmith_f_op_f32(f32(-1f) * -788f)), _wgslsmith_f_op_f32(func_4(func_2(vec3<i32>(0i, u_input.b, -97502i), Struct_1(vec2<f32>(963f, -566f)), u_input.d), 1u)), _wgslsmith_f_op_f32(f32(-1f) * -273f))), func_5(Struct_3(!(arg_0 | arg_0), Struct_2(u_input.a), i32(-1i) * -20900i, _wgslsmith_dot_vec4_i32(u_input.e, _wgslsmith_sub_vec4_i32(vec4<i32>(-40352i, 1i, -3067i, arg_1.x), vec4<i32>(0i, u_input.b, u_input.e.x, arg_1.x))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(668f, -756f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1017f, 559f)))), vec3<f32>(-1461f, _wgslsmith_f_op_f32(abs(1f)), 220f)), true & !any(select(vec2<bool>(true, false), vec2<bool>(arg_0, false), vec2<bool>(false, arg_0))));
    var var_1 = u_input.e.x << (u_input.c % 32u);
    let var_2 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -938f))), func_2(~firstTrailingBit(u_input.e.xww), Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(-721f, 377f) + vec2<f32>(176f, -538f))), ~u_input.a.x << (50438u % 32u)).e.x));
    var_1 = i32(-1i) * -_wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.e.x, u_input.b), u_input.e.yz), -2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(12282i, u_input.b), vec2<i32>(2147483647i, 0i))), -u_input.e.xxy ^ _wgslsmith_mod_vec3_i32(u_input.e.xzx, vec3<i32>(-15200i, arg_1.x, 1i)));
    let var_3 = func_2(reverseBits(vec3<i32>(-arg_1.x, u_input.b, u_input.e.x)), var_2, _wgslsmith_sub_u32(((u_input.a.x >> (u_input.d % 32u)) & u_input.d) << ((func_3(Struct_2(vec2<u32>(u_input.d, 14199u))) & ~u_input.a.x) % 32u), ~func_3(Struct_2(u_input.a)) & u_input.c)).b;
    return ~(~(~vec2<u32>(0u, 18266u)) << (_wgslsmith_mult_vec2_u32(var_3.a, u_input.a) % vec2<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = reverseBits(abs(u_input.a));
    var_0 = _wgslsmith_clamp_vec2_u32(vec2<u32>(_wgslsmith_clamp_u32(reverseBits(_wgslsmith_div_u32(u_input.c, u_input.c)), abs(_wgslsmith_clamp_u32(0u, u_input.a.x, 15830u)), 4294967295u | var_0.x), var_0.x), vec2<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.c, u_input.d, 1u) << (~vec3<u32>(11485u, var_0.x, var_0.x) % vec3<u32>(32u)), ~vec3<u32>(var_0.x, u_input.d, var_0.x)), u_input.a.x), select(abs(vec2<u32>(u_input.d, var_0.x)), func_1(true, vec2<i32>(u_input.b, u_input.e.x)) << (~(~u_input.a) % vec2<u32>(32u)), false));
    var var_1 = true;
    let var_2 = Struct_3((true & (max(u_input.b, u_input.e.x) < _wgslsmith_clamp_i32(2147483647i, u_input.b, u_input.b))) && func_5(Struct_3(true, Struct_2(vec2<u32>(0u, 53504u)), u_input.e.x, select(u_input.e.x, u_input.e.x, true), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(406f, -237f), vec2<f32>(1007f, 1209f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(833f, -848f, -1227f))))).x, Struct_2(vec2<u32>(_wgslsmith_div_u32(_wgslsmith_clamp_u32(0u, u_input.c, 4294967295u), ~u_input.d), _wgslsmith_mult_u32(firstTrailingBit(4294967295u), _wgslsmith_div_u32(u_input.d, 4294967295u)))), -_wgslsmith_clamp_i32(~(59791i >> (var_0.x % 32u)), u_input.e.x, ~u_input.b << (4294967295u % 32u)), u_input.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(780f, -1131f), vec2<f32>(-1694f, 1142f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(798f, 128f))))) + vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(153f))), _wgslsmith_f_op_f32(select(-1354f, _wgslsmith_f_op_f32(round(-481f)), false)))));
    var var_3 = 4294967295u;
    let var_4 = var_2.a;
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(vec2<u32>(~firstLeadingBit(4356u), var_0.x)), firstLeadingBit(vec4<i32>(2147483647i, ~var_2.d, 47340i, -2147483647i)));
}

