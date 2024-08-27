struct Struct_1 {
    a: bool,
    b: bool,
    c: f32,
    d: u32,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<u32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> bool {
    let var_0 = Struct_1(any(select(vec3<bool>(true, true, false), select(select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), true), vec3<bool>(true, true, false), true), 1u < _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 4294967295u), vec2<u32>(104144u, 45640u)))), true, 1289f, select(~_wgslsmith_mult_u32(1u, 1u), firstTrailingBit(26182u), !all(vec2<bool>(false, false))), abs(1u));
    let var_1 = var_0.e;
    global0 = var_1;
    let var_2 = -vec2<i32>(countOneBits(u_input.a), ~_wgslsmith_sub_i32(firstLeadingBit(u_input.b), -56161i));
    let var_3 = -(~(~(~_wgslsmith_div_vec3_i32(vec3<i32>(0i, u_input.a, u_input.a), vec3<i32>(var_2.x, var_2.x, -1i)))));
    return !(var_0.a || all(vec2<bool>(var_0.c > var_0.c, var_0.b)));
}

fn func_4(arg_0: vec4<bool>, arg_1: bool, arg_2: bool) -> vec3<u32> {
    let var_0 = Struct_1(arg_2, all(vec3<bool>(arg_0.x, true, !select(false, false, false))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(-533f + -908f)), -912f)) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(-1287f))))), abs(61510u), ~(~15617u));
    let var_1 = vec3<f32>(-3534f, -1797f, -1466f);
    global0 = select(_wgslsmith_mult_u32(abs(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(60915u, var_0.e, var_0.d, var_0.d), vec4<u32>(4294967295u, 49991u, var_0.d, var_0.d)), firstLeadingBit(vec4<u32>(var_0.d, 1u, 42378u, 41972u)))), _wgslsmith_add_u32(~var_0.e, _wgslsmith_sub_u32(~var_0.e, var_0.e))), 6237u, arg_0.x);
    let var_2 = var_0;
    var var_3 = i32(-1i) * -69828i;
    return ~vec3<u32>(max(var_2.d, max(~var_0.e, _wgslsmith_dot_vec4_u32(vec4<u32>(16190u, var_2.e, 1u, 62982u), vec4<u32>(var_0.d, 0u, 45075u, 0u)))), 1u, 6717u);
}

fn func_2() -> bool {
    let var_0 = func_4(!select(vec4<bool>(all(vec2<bool>(false, false)), true, true, true), vec4<bool>(true, true, true, true), true || select(true, false, false)), false, select(false, true, !func_3()));
    global0 = abs(16068u);
    var var_1 = vec3<i32>(_wgslsmith_add_i32(-2147483647i, _wgslsmith_div_i32(u_input.a, ~(-44322i))), reverseBits(-u_input.b), u_input.a);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(658f * -205f), _wgslsmith_f_op_f32(abs(603f)))), 890f));
    var var_3 = _wgslsmith_dot_vec4_i32(~firstTrailingBit(vec4<i32>(var_1.x, -2147483647i, u_input.a, reverseBits(u_input.b))), countOneBits(firstTrailingBit(select(vec4<i32>(var_1.x, var_1.x, var_1.x, u_input.a), firstTrailingBit(vec4<i32>(-25000i, u_input.b, -1i, 9082i)), all(vec3<bool>(true, false, true))))));
    return abs(~min(u_input.a, -var_1.x)) >= _wgslsmith_clamp_i32(0i, _wgslsmith_dot_vec2_i32(firstLeadingBit(-vec2<i32>(var_1.x, -2147483647i)), var_1.yz), -u_input.a);
}

fn func_1(arg_0: vec3<f32>, arg_1: vec3<bool>) -> Struct_1 {
    global0 = min(firstLeadingBit(~1u), ~select(1u, ~0u, any(!vec4<bool>(arg_1.x, false, false, true))));
    var var_0 = firstLeadingBit(u_input.a | _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(~vec2<i32>(u_input.a, -11861i), vec2<i32>(u_input.a, -2147483647i)), vec2<i32>(u_input.b, u_input.b)));
    var var_1 = Struct_1(arg_1.x, all(arg_1), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1113f), arg_0.x)))), ~(~_wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(31608u, 12678u, 23880u)), reverseBits(vec3<u32>(4294967295u, 3356u, 0u)))), 97528u);
    var var_2 = ~var_1.d;
    global0 = _wgslsmith_sub_u32(var_1.d, ~var_1.d);
    return Struct_1(func_2(), !(!(!(u_input.a == 2147483647i))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_0.x - arg_0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-966f)))), any(vec4<bool>(var_1.c >= arg_0.x, true, !arg_1.x, var_1.a)))), min(~(~0u), _wgslsmith_dot_vec4_u32(~vec4<u32>(24442u, var_1.d, var_1.e, var_1.d), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, var_1.d, 11089u, var_1.d), vec4<u32>(var_1.d, 1u, 19527u, var_1.e)), 60046u, var_1.e, var_1.e))), var_1.e);
}

fn func_5(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: bool) -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(-315f, 328f), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1441f, 995f) - vec2<f32>(arg_0.c, arg_0.c)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(560f, arg_0.c) - vec2<f32>(arg_0.c, arg_0.c)))))), vec2<f32>(_wgslsmith_f_op_f32(735f * arg_0.c), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_0.c))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(-454f, 758f)))))), select(vec2<bool>(arg_2 & func_3(), !(arg_2 != false)), !vec2<bool>(true, false != arg_0.a), true & (1u == ~arg_0.d))));
    let var_1 = Struct_1(arg_0.e == ~min(arg_1.x, max(0u, arg_0.d)), arg_2, arg_0.c, arg_1.x, arg_1.x);
    global0 = 38879u;
    var var_2 = var_0.x;
    let var_3 = arg_0;
    return select(select(vec4<bool>(true, true, true, false), vec4<bool>(all(vec4<bool>(false, arg_2, var_1.a, false)), (arg_2 & var_1.a) || any(vec2<bool>(arg_2, true)), false, true), true), vec4<bool>(_wgslsmith_mod_i32(-u_input.a, -7569i) < _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, 14583i, -1i), vec3<i32>(u_input.a, u_input.a, -1i)), -11330i << (arg_1.x % 32u)), arg_0.b, _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(-1417i, u_input.b)), -vec2<i32>(1i, u_input.a)) >= -(~u_input.b), !arg_0.a), all(vec3<bool>(false, select(false, arg_2, false), select(true, true, !var_3.b))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(false, any(!func_5(func_1(vec3<f32>(-601f, 523f, -233f), vec3<bool>(true, false, false)), _wgslsmith_clamp_vec4_u32(vec4<u32>(16088u, 4294967295u, 11589u, 91739u), vec4<u32>(113983u, 73219u, 4294967295u, 1u), vec4<u32>(51663u, 1u, 72656u, 8538u)), func_3())), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-703f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), true))), firstLeadingBit(0u), _wgslsmith_sub_u32(37941u, countOneBits(39029u)));
    global0 = var_0.d;
    global0 = var_0.d;
    let var_1 = var_0;
    let var_2 = var_0.c == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1418f));
    let var_3 = ~func_4(select(vec4<bool>(var_0.b, true, any(vec3<bool>(false, var_1.a, var_0.b)), all(vec3<bool>(false, var_0.a, true))), vec4<bool>(true, 425f >= var_0.c, true, !var_1.a), select(select(vec4<bool>(true, var_2, var_0.a, false), vec4<bool>(true, var_1.a, var_2, var_1.b), vec4<bool>(var_1.b, true, true, true)), vec4<bool>(var_2, var_1.a, false, var_1.a), func_1(vec3<f32>(var_0.c, var_1.c, var_1.c), vec3<bool>(false, var_0.a, true)).a)), all(!select(vec3<bool>(false, false, var_1.b), vec3<bool>(true, false, false), vec3<bool>(var_0.a, var_0.b, true))), !any(select(vec4<bool>(var_0.b, false, false, false), vec4<bool>(var_0.b, var_2, var_0.a, true), var_1.b))).x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-817f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(var_1.c)), _wgslsmith_f_op_f32(-var_0.c))))), (~vec3<u32>(8687u, 0u, var_3) ^ ~vec3<u32>(23753u, 10912u, 89336u)) | func_4(!vec4<bool>(var_2, false, false, true), select(var_3 != var_0.e, true, false), 14493u < ~var_0.e), vec3<f32>(_wgslsmith_f_op_f32(max(-658f, -287f)), -708f, var_1.c));
}

