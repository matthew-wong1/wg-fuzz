struct Struct_1 {
    a: f32,
    b: f32,
    c: u32,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: f32,
    d: vec2<f32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: i32,
    c: vec2<u32>,
    d: vec2<f32>,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 2147483647i;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_2) -> vec2<bool> {
    return select(vec2<bool>(true, true), vec2<bool>(true, true), false && (u_input.c <= reverseBits(-u_input.e)));
}

fn func_2(arg_0: bool, arg_1: i32, arg_2: Struct_2) -> vec4<i32> {
    global0 = arg_1;
    let var_0 = arg_2.e;
    var var_1 = select(func_3(Struct_3(_wgslsmith_f_op_vec2_f32(arg_2.d * _wgslsmith_f_op_vec2_f32(vec2<f32>(-173f, 857f) + arg_2.d)), countOneBits(25840i), _wgslsmith_sub_vec2_u32(u_input.d.yx, vec2<u32>(arg_2.e.c, 6300u)), _wgslsmith_f_op_vec2_f32(-arg_2.d), ~vec3<i32>(arg_1, arg_1, arg_1)), Struct_2(~(~var_0.c), arg_2.c, var_0.a, arg_2.d, Struct_1(arg_2.b, -1000f, ~var_0.c))), vec2<bool>(true, true), select(vec2<bool>(any(vec4<bool>(true, arg_0, false, arg_0)), true), func_3(Struct_3(vec2<f32>(1f, 1f), abs(4432i), abs(u_input.d.xy), vec2<f32>(-871f, 451f), select(vec3<i32>(0i, -43849i, arg_1), vec3<i32>(30809i, u_input.e, -1i), vec3<bool>(false, false, false))), arg_2), select(!select(vec2<bool>(arg_0, false), vec2<bool>(arg_0, true), true), !select(vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, false), vec2<bool>(false, arg_0)), select(vec2<bool>(arg_0, false), !vec2<bool>(arg_0, true), arg_0))));
    var var_2 = u_input.a;
    var_2 = ~_wgslsmith_clamp_vec2_u32(u_input.d.zx | u_input.a, _wgslsmith_sub_vec2_u32(_wgslsmith_mult_vec2_u32(u_input.d.xy, u_input.d.yx) >> (~u_input.a % vec2<u32>(32u)), select(u_input.d.zw, u_input.d.yx, false) << (select(vec2<u32>(var_2.x, u_input.d.x), vec2<u32>(var_2.x, 0u), true) % vec2<u32>(32u))), vec2<u32>(var_2.x, 20226u) ^ u_input.a);
    return select(firstLeadingBit(~(~(~vec4<i32>(u_input.e, -2147483647i, u_input.e, 2147483647i)))), vec4<i32>(_wgslsmith_clamp_i32(countOneBits(-1i), u_input.c, arg_1), u_input.e, ~1i, arg_1) & firstTrailingBit(vec4<i32>(-u_input.e, ~2147483647i, ~arg_1, u_input.c >> (arg_2.a % 32u))), var_1.x);
}

fn func_1(arg_0: vec2<i32>, arg_1: i32, arg_2: i32) -> Struct_2 {
    global0 = u_input.e;
    global0 = select(arg_2, arg_0.x, !(_wgslsmith_sub_i32(arg_2, -1987i) < _wgslsmith_mod_i32(arg_0.x, 36039i)) | true);
    var var_0 = -(vec4<i32>(arg_2, arg_0.x | 25560i, 0i, -6585i) ^ -select(vec4<i32>(-13393i, -1i, arg_1, arg_1), vec4<i32>(384i, 0i, arg_1, -2147483647i), false)) | firstTrailingBit(vec4<i32>(~(-arg_1), firstTrailingBit(arg_0.x ^ -2147483647i), 16958i, -_wgslsmith_dot_vec4_i32(vec4<i32>(19615i, arg_1, -1i, -1i), vec4<i32>(u_input.e, -86146i, -13261i, -34956i))));
    var_0 = -abs(-func_2(false, ~arg_1, Struct_2(u_input.d.x, 520f, -383f, vec2<f32>(-120f, 1000f), Struct_1(-467f, 856f, u_input.b))));
    let var_1 = reverseBits(select(firstTrailingBit(~(~vec4<u32>(u_input.d.x, u_input.d.x, u_input.a.x, u_input.d.x))), (u_input.d >> (~u_input.d % vec4<u32>(32u))) & vec4<u32>(~u_input.a.x, ~1u, 1u, ~u_input.a.x), select(!select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false)), !select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false), false), true)));
    return Struct_2(var_1.x, 1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -924f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(254f + 1145f), _wgslsmith_f_op_f32(max(-1000f, 1984f)), true)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1321f)) - _wgslsmith_f_op_f32(trunc(-992f))))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(675f, 888f) * vec2<f32>(463f, 1249f))))))), Struct_1(_wgslsmith_f_op_f32(-1788f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + -985f) + _wgslsmith_f_op_f32(f32(-1f) * -1124f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(1828f)), _wgslsmith_f_op_f32(379f + -466f))), ~0u));
}

fn func_4(arg_0: bool, arg_1: Struct_2, arg_2: bool, arg_3: Struct_1) -> f32 {
    global0 = reverseBits(~_wgslsmith_sub_i32(8039i, -u_input.e));
    global0 = 24286i;
    global0 = u_input.e;
    global0 = u_input.c;
    return arg_3.a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_mod_i32(max(u_input.c, 1i), _wgslsmith_sub_i32(firstTrailingBit(min(u_input.e, u_input.c)), _wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.e, u_input.e, -1i), _wgslsmith_div_vec3_i32(vec3<i32>(0i, u_input.e, -15223i), vec3<i32>(-3728i, -2086i, u_input.e))))) ^ -_wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(u_input.c, u_input.e, -2147483647i)), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.c, u_input.c, u_input.c) ^ vec3<i32>(u_input.c, -5581i, -2147483647i), select(vec3<i32>(u_input.e, 21857i, u_input.c), vec3<i32>(u_input.c, u_input.c, u_input.c), false)));
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-100f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1286f, _wgslsmith_f_op_f32(f32(-1f) * -215f))) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1130f - 898f), -1000f)))), _wgslsmith_f_op_f32(func_4(true, func_1(vec2<i32>(u_input.c, -u_input.c), 10918i, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, u_input.c, u_input.e, 15118i), firstLeadingBit(vec4<i32>(u_input.c, -1685i, 22440i, u_input.c)))), false, Struct_1(_wgslsmith_f_op_f32(sign(1000f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(1754f)), 1f)), ~27629u << (select(u_input.a.x, u_input.d.x, true) % 32u)))), 1u);
    var var_1 = Struct_1(-1313f, -1000f, var_0.c);
    let var_2 = func_1(vec2<i32>((_wgslsmith_div_i32(-19981i, -1i) & _wgslsmith_dot_vec4_i32(vec4<i32>(1i, u_input.c, u_input.c, 0i), vec4<i32>(u_input.c, u_input.c, -41541i, u_input.e))) & _wgslsmith_add_i32(~u_input.e, i32(-1i) * -1i), u_input.e), u_input.c, _wgslsmith_dot_vec2_i32(reverseBits(vec2<i32>(-u_input.c, u_input.e)), vec2<i32>(~_wgslsmith_sub_i32(-1i, u_input.c), u_input.c))).e;
    var_0 = var_2;
    let var_3 = func_1(~(vec2<i32>(-1i) * -_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.e, u_input.c), vec2<i32>(-1i, -2147483647i))), _wgslsmith_div_i32(-min(2147483647i, i32(-1i) * -2147483647i), -u_input.e), func_2(true, 48657i & u_input.c, func_1(-vec2<i32>(u_input.c, u_input.e), _wgslsmith_add_i32(u_input.c, 1i), -60932i)).x).e;
    var var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b)), var_3.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_3.a, var_1.b))), -1659f)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.a, var_0.b, -497f, -1000f)))) + vec4<f32>(var_3.a, func_1(vec2<i32>(41920i, u_input.e), 19032i, u_input.e).d.x, var_1.b, 499f)) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.b, var_1.a, var_0.a, var_0.b)))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(984f, 115f, -467f, 131f) + vec4<f32>(1116f, var_3.a, -583f, 1333f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(2404f, -489f, var_1.b, var_2.a) + vec4<f32>(-1236f, -436f, 564f, var_2.b)))), select(select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, true), false), select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false)), select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false)))))));
    global0 = _wgslsmith_div_i32(_wgslsmith_mult_i32(~1i, u_input.e), ~1i << (_wgslsmith_mod_u32(84389u, _wgslsmith_clamp_u32(var_1.c, _wgslsmith_mult_u32(var_2.c, 2497u), 1u)) % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<u32>(var_2.c, _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.c, 18306u), vec2<u32>(0u, 0u)), min(12724u, 1u), _wgslsmith_sub_u32(4294967295u, 5777u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a) - _wgslsmith_f_op_f32(f32(-1f) * -1203f)), ~0u);
}

