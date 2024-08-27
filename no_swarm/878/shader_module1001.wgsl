struct Struct_1 {
    a: i32,
    b: bool,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: vec2<u32>,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: Struct_1,
    b: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 6>;

var<private> global1: Struct_2;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3() -> i32 {
    let var_0 = _wgslsmith_sub_i32(-(~(-51666i)), ~(~(-1i)));
    global1 = Struct_2(_wgslsmith_f_op_f32(-global1.a), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(global1.b, _wgslsmith_f_op_f32(round(217f))))), countOneBits(abs(_wgslsmith_mult_vec2_u32(vec2<u32>(global1.c.x, u_input.a.x) ^ vec2<u32>(4814u, u_input.a.x), max(vec2<u32>(25836u, 24692u), vec2<u32>(global1.e, global1.c.x))))), Struct_1(i32(-1i) * -8344i, true), ~((17139u & select(u_input.a.x, 3008u, false)) ^ global1.c.x));
    let var_1 = Struct_4(global1.d, _wgslsmith_clamp_u32(global1.e, ~28543u, ~1u));
    return -39297i | _wgslsmith_div_i32(var_1.a.a, 9998i);
}

fn func_2() -> Struct_3 {
    let var_0 = vec2<i32>(~0i, ~_wgslsmith_mult_i32(3321i, _wgslsmith_add_i32(global1.d.a, -global1.d.a)));
    var var_1 = _wgslsmith_div_i32(func_3(), _wgslsmith_mod_i32(~(-31754i) << (~u_input.a.x % 32u), select(firstLeadingBit(5494i), 1i, true)) >> (4294967295u % 32u));
    var var_2 = ~global1.e;
    var var_3 = abs(-_wgslsmith_add_vec3_i32(countOneBits(~vec3<i32>(0i, var_0.x, var_0.x)), vec3<i32>(_wgslsmith_add_i32(-1i, -22208i), global1.d.a, 1i)));
    let var_4 = Struct_4(Struct_1(func_3(), !(!any(vec4<bool>(false, false, false, global1.d.b)))), 42215u);
    return Struct_3(true);
}

fn func_4(arg_0: f32, arg_1: Struct_3, arg_2: vec4<f32>, arg_3: vec3<f32>) -> Struct_1 {
    global1 = Struct_2(501f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-752f, 1363f)), vec2<u32>(~1u, ~_wgslsmith_sub_u32(0u, u_input.a.x)) & vec2<u32>(1u, min(_wgslsmith_add_u32(1u, global1.e), ~1u)), Struct_1(31303i, !any(vec4<bool>(true, arg_1.a, true, true))), _wgslsmith_sub_u32(global1.e, global1.e));
    let var_0 = ~(~firstLeadingBit(~(vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, 0u) >> (vec4<u32>(u_input.a.x, u_input.a.x, global1.c.x, u_input.a.x) % vec4<u32>(32u)))));
    global1 = Struct_2(1038f, arg_0, global1.c, global0[_wgslsmith_index_u32(countOneBits(_wgslsmith_dot_vec2_u32(~firstLeadingBit(vec2<u32>(global1.c.x, u_input.a.x)), (vec2<u32>(4720u, 28490u) >> (vec2<u32>(17329u, global1.e) % vec2<u32>(32u))) >> (~vec2<u32>(var_0.x, var_0.x) % vec2<u32>(32u)))), 6u)], ~u_input.a.x);
    let var_1 = vec3<u32>(~var_0.x, 50033u >> (_wgslsmith_dot_vec3_u32(~var_0.xyy, vec3<u32>(4294967295u, 4294967295u, u_input.a.x) >> (abs(var_0.xyy) % vec3<u32>(32u))) % 32u), ~global1.e);
    var var_2 = -1293f;
    return Struct_1(_wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(-global1.d.a, -764i & global1.d.a, global1.d.a)), vec3<i32>(-1i) * -(vec3<i32>(global1.d.a, global1.d.a, -28591i) | vec3<i32>(-14510i, global1.d.a, global1.d.a))), any(vec3<bool>(true, !(49562i > global1.d.a), true)));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_3, arg_2: Struct_2, arg_3: vec3<bool>) -> vec3<f32> {
    var var_0 = !(!select(select(select(vec4<bool>(arg_3.x, false, arg_3.x, false), vec4<bool>(false, true, arg_0.b, false), vec4<bool>(arg_3.x, arg_3.x, true, false)), vec4<bool>(false, global1.d.b, true, false), !vec4<bool>(true, global1.d.b, false, arg_0.b)), select(vec4<bool>(false, arg_1.a, global1.d.b, true), vec4<bool>(arg_1.a, false, false, true), true), true));
    let var_1 = var_0.yx;
    var_0 = vec4<bool>(func_2().a, var_0.x, true, _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(1i, arg_0.a, -26104i), _wgslsmith_add_vec3_i32(vec3<i32>(-7956i, 39513i, 2147483647i), vec3<i32>(-35314i, 62564i, arg_0.a))), select(abs(vec3<i32>(arg_2.d.a, 69064i, arg_0.a)), vec3<i32>(arg_2.d.a, global1.d.a, global1.d.a), all(arg_3.yy))) < arg_2.d.a);
    var var_2 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -834f))), -262f, (_wgslsmith_mod_vec2_u32(~vec2<u32>(55097u, 5667u), _wgslsmith_sub_vec2_u32(arg_2.c, vec2<u32>(1u, arg_2.c.x))) | firstLeadingBit(u_input.a)) << (vec2<u32>(0u, u_input.a.x) % vec2<u32>(32u)), arg_0, reverseBits(~66954u));
    var var_3 = -268f;
    return _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_2.a, -261f, -790f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.a, global1.b, global1.a) + vec3<f32>(arg_2.b, var_2.b, global1.a))) + _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(826f, var_2.b, 561f))))), vec3<f32>(var_2.b, 581f, _wgslsmith_f_op_f32(abs(global1.b))), var_0.zxw))));
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_2) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_5(Struct_1(-1i, select(any(vec2<bool>(true, false)), arg_1.d.b, false)), Struct_3(false), Struct_2(_wgslsmith_f_op_f32(-arg_1.b), _wgslsmith_f_op_f32(-arg_0.x), arg_1.c, func_4(arg_0.x, func_2(), arg_0, _wgslsmith_f_op_vec3_f32(select(arg_0.xyz, vec3<f32>(arg_0.x, 1714f, 1000f), vec3<bool>(true, true, arg_1.d.b)))), 4294967295u), vec3<bool>(false, func_4(arg_1.a, Struct_3(global1.d.b), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, -714f, 576f, arg_1.a)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-617f, global1.a, 834f), vec3<f32>(arg_1.b, 1114f, global1.b), vec3<bool>(true, global1.d.b, global1.d.b)))).b, true && !global1.d.b))));
    let var_1 = 1304f;
    let var_2 = !arg_1.d.b & arg_1.d.b;
    let var_3 = global1.d.a;
    var var_4 = firstTrailingBit(vec2<i32>(abs(1i), -1i));
    return func_2();
}

fn func_6(arg_0: Struct_3, arg_1: u32, arg_2: vec4<f32>, arg_3: vec4<bool>) -> Struct_3 {
    var var_0 = vec4<u32>(abs(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1, 44547u, 4294967295u) | vec3<u32>(arg_1, 15503u, global1.e), vec3<u32>(0u, 23730u, global1.c.x)) | 0u), 1u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, arg_1 & 4294967295u, ~0u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, global1.c.x, arg_1, 8319u), vec4<u32>(u_input.a.x, arg_1, u_input.a.x, 23197u))) << (max(vec4<u32>(u_input.a.x, 4294967295u, 0u, 9246u), ~vec4<u32>(1u, global1.e, 1u, 1u)) % vec4<u32>(32u)), _wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(4328u, global1.c.x, u_input.a.x, global1.e), select(vec4<u32>(10111u, global1.e, u_input.a.x, 34255u), vec4<u32>(u_input.a.x, arg_1, 0u, arg_1), arg_3.x)), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, 14869u, arg_1, 1u), ~vec4<u32>(arg_1, 35389u, arg_1, 1u)))), global1.e);
    global1 = Struct_2(_wgslsmith_f_op_f32(min(-789f, arg_2.x)), -277f, _wgslsmith_add_vec2_u32(vec2<u32>(~39712u, u_input.a.x), var_0.xz), Struct_1(global1.d.a, arg_3.x), 1u);
    global1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1271f * arg_2.x)), vec2<u32>(4294967295u, global1.c.x), Struct_1(func_3(), !((107546u ^ arg_1) > 4294967295u)), firstLeadingBit(~(~151735u)));
    global0 = array<Struct_1, 6>();
    var var_1 = 33773i;
    return arg_0;
}

fn func_7(arg_0: vec4<i32>, arg_1: u32, arg_2: vec2<f32>, arg_3: Struct_3) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(arg_2.x * -610f), _wgslsmith_f_op_f32(global1.a + -2269f), _wgslsmith_f_op_f32(-967f * 183f), arg_2.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-2937f, arg_2.x, 114f, arg_2.x) - vec4<f32>(global1.a, -740f, arg_2.x, -395f)) - _wgslsmith_div_vec4_f32(vec4<f32>(global1.b, global1.b, global1.a, -1717f), vec4<f32>(global1.b, global1.a, arg_2.x, global1.a))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.x, global1.a, 960f, arg_2.x) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_2.x, arg_2.x, arg_2.x, 832f))))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1178f, global1.b, -836f, arg_2.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.b, global1.a, global1.a, arg_2.x) + vec4<f32>(-1067f, -1214f, 703f, global1.a)) - vec4<f32>(1361f, -1082f, arg_2.x, 279f))) + vec4<f32>(_wgslsmith_f_op_f32(-792f - 1653f), _wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_f32(f32(-1f) * -1377f), arg_2.x)));
    var var_1 = _wgslsmith_div_i32(min(713i, max(global1.d.a, _wgslsmith_div_i32(48471i, 20240i))), 11378i);
    let var_2 = 4294967295u;
    global1 = Struct_2(-761f, _wgslsmith_f_op_f32(-1f), u_input.a, global0[_wgslsmith_index_u32(2833u, 6u)], _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_div_u32(19574u, u_input.a.x), countOneBits(29362u), firstLeadingBit(global1.e)), select(~vec3<u32>(arg_1, u_input.a.x, 14507u), firstTrailingBit(vec3<u32>(4294967295u, var_2, 99084u)), !global1.d.b)) ^ arg_1);
    let var_3 = reverseBits(vec4<i32>(global1.d.a >> (_wgslsmith_add_u32(var_2, 27711u) % 32u), _wgslsmith_clamp_i32(arg_0.x, arg_0.x, arg_0.x), _wgslsmith_div_i32(abs(arg_0.x), min(0i, 2147483647i)), -(i32(-1i) * -15141i))) >> (~firstTrailingBit(abs(vec4<u32>(global1.c.x, arg_1, var_2, var_2))) % vec4<u32>(32u));
    return Struct_1(global1.d.a, all(!(!(!vec3<bool>(true, arg_3.a, arg_3.a)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(func_7(~vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(global1.d.a, global1.d.a, global1.d.a, global1.d.a), vec4<i32>(global1.d.a, global1.d.a, global1.d.a, global1.d.a)), _wgslsmith_mod_i32(2147483647i, -2147483647i), 0i, 0i & global1.d.a), firstLeadingBit(37380u >> (0u % 32u)) & (~u_input.a.x << (abs(4294967295u) % 32u)), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(select(global1.a, 519f, false)), _wgslsmith_f_op_f32(1570f + global1.b)))), func_6(func_1(vec4<f32>(global1.a, global1.a, 316f, global1.a), Struct_2(global1.b, 338f, global1.c, Struct_1(global1.d.a, false), 7664u)), ~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 3289u), vec2<u32>(global1.e, u_input.a.x)), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(vec4<f32>(-949f, -391f, global1.a, -633f), vec4<f32>(-1556f, global1.b, -838f, global1.b)))), !select(vec4<bool>(global1.d.b, global1.d.b, true, global1.d.b), vec4<bool>(global1.d.b, global1.d.b, true, global1.d.b), vec4<bool>(global1.d.b, global1.d.b, true, global1.d.b)))), u_input.a.x);
    let var_1 = ~_wgslsmith_clamp_vec4_i32(reverseBits(vec4<i32>(-5596i, ~(-54274i), 2147483647i, ~(-2147483647i))), _wgslsmith_mult_vec4_i32(_wgslsmith_clamp_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, 2147483647i, var_0.a.a, var_0.a.a), vec4<i32>(global1.d.a, -1i, global1.d.a, global1.d.a)), vec4<i32>(-1i, var_0.a.a, -68982i, 5682i) & vec4<i32>(66634i, -94024i, 23020i, global1.d.a), _wgslsmith_div_vec4_i32(vec4<i32>(global1.d.a, 13989i, 2147483647i, 31838i), vec4<i32>(-7355i, 0i, global1.d.a, 1i))), -vec4<i32>(global1.d.a, global1.d.a, -2147483647i, global1.d.a)), ~abs(_wgslsmith_div_vec4_i32(vec4<i32>(0i, 26641i, -68003i, global1.d.a), vec4<i32>(2147483647i, -1i, global1.d.a, -2147483647i))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(~58038u, 1u, _wgslsmith_mod_u32((71655u | global1.c.x) >> (1u % 32u), ~61969u)));
}

