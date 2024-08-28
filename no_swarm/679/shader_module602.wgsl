struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: Struct_1,
    d: vec2<f32>,
    e: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: u32,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec3<u32>,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
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

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: f32, arg_1: i32, arg_2: bool, arg_3: u32) -> vec4<f32> {
    let var_0 = _wgslsmith_f_op_f32(1775f - _wgslsmith_f_op_f32(-arg_0));
    global0 = max(abs(vec4<i32>(0i >> (1u % 32u), select(i32(-1i) * -23146i, i32(-1i) * -2147483647i, arg_2), _wgslsmith_sub_i32(51343i, _wgslsmith_clamp_i32(arg_1, u_input.d.x, u_input.d.x)), u_input.d.x)), vec4<i32>(-1i) * -(abs(vec4<i32>(arg_1, global0.x, -74784i, 55291i)) << (u_input.b % vec4<u32>(32u))));
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-958f))))), arg_0) < _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1679f + _wgslsmith_f_op_f32(arg_0 - 1675f)))));
    var var_2 = arg_1;
    global0 = vec4<i32>(-2147483647i, ~(i32(-1i) * -2147483647i), 1i, -2147483647i);
    return _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(exp2(1f)), _wgslsmith_f_op_f32(ceil(var_0)), 781f, _wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(239f + _wgslsmith_f_op_f32(-arg_0))))));
}

fn func_2(arg_0: i32) -> Struct_2 {
    global0 = ~vec4<i32>(global0.x, 29515i, u_input.a.x, reverseBits(~arg_0));
    let var_0 = Struct_2(Struct_1(u_input.a.zx), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 136f, 924f, 435f) * _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-700f, -523f, -139f, 484f)))), _wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_f_op_f32(select(2413f, 455f, true)), ~(-2147483647i), true, max(4294967295u, 1u))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), 26749u > u_input.c))) * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1285f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-713f, -666f)) + _wgslsmith_f_op_f32(ceil(1100f))), -1073f, -223f)), Struct_1(reverseBits(_wgslsmith_clamp_vec2_i32(select(vec2<i32>(arg_0, 47724i), vec2<i32>(-16126i, global0.x), false), global0.zy, -global0.wz))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(2793f, 1925f), vec2<f32>(387f, 350f), true))), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1000f, 967f))))), ~max(_wgslsmith_add_u32(1u, 4487u), u_input.c));
    global0 = -(~(~(~(~vec4<i32>(var_0.a.a.x, 0i, 0i, arg_0)))));
    var var_1 = _wgslsmith_f_op_f32(min(-576f, 464f));
    let var_2 = var_0;
    return Struct_2(Struct_1(vec2<i32>(global0.x, global0.x ^ -20257i) & vec2<i32>(_wgslsmith_add_i32(global0.x, var_2.a.a.x), i32(-1i) * -21570i)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(var_2.b.x + var_0.b.x), var_0.b.x, _wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_f_op_f32(-1224f + -480f), _wgslsmith_sub_i32(27309i, -1i), all(vec2<bool>(false, true)), ~u_input.c)).x, 675f), _wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.b.x))), _wgslsmith_sub_i32(i32(-1i) * -22188i, ~global0.x), true != any(vec4<bool>(true, false, true, false)), firstTrailingBit(u_input.c))))), Struct_1(-(~firstTrailingBit(vec2<i32>(-46003i, arg_0)))), _wgslsmith_f_op_vec4_f32(func_3(-1554f, var_2.a.a.x, true | (-1i < ~arg_0), 1851u)).xw, select(select(67167u, 118477u, 4294967295u == u_input.c), ~max(30766u, 0u), true) & firstLeadingBit(countOneBits(17530u)));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2) -> Struct_2 {
    global0 = vec4<i32>(min(firstTrailingBit(min(11233i, global0.x)), firstTrailingBit(1i)) & -1i, i32(-1i) * -global0.x, _wgslsmith_sub_i32(1i, max(-2147483647i, ~(8798i & arg_0.a.x))), select((14306i >> (~u_input.b.x % 32u)) >> (min(~4294967295u, 1u) % 32u), 0i, true));
    global0 = (vec4<i32>(-31986i, u_input.e, i32(-1i) * -1i, ~1i) | -vec4<i32>(-u_input.d.x, func_2(global0.x).a.a.x, ~u_input.a.x, i32(-1i) * -1i)) & ~_wgslsmith_clamp_vec4_i32(vec4<i32>(-arg_1.c.a.x, abs(global0.x), func_2(2147483647i).c.a.x, -1i), select(vec4<i32>(u_input.e, global0.x, -2147483647i, u_input.a.x), vec4<i32>(u_input.d.x, -2147483647i, u_input.e, -2147483647i), vec4<bool>(true, false, true, false)), -vec4<i32>(global0.x, -1i, -2147483647i, arg_1.c.a.x));
    var var_0 = ~1u;
    var var_1 = 51761u;
    var_1 = arg_1.e;
    return Struct_2(arg_1.a, vec4<f32>(arg_1.d.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(1263f, -470f))))), arg_1.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(323f * _wgslsmith_div_f32(196f, 628f)))), func_2(i32(-1i) * -_wgslsmith_clamp_i32(global0.x, 37374i, -36880i)).a, _wgslsmith_f_op_vec2_f32(arg_1.b.wz * arg_1.d), ~35382u);
}

fn func_5(arg_0: i32, arg_1: Struct_1, arg_2: Struct_2, arg_3: vec2<i32>) -> vec4<f32> {
    let var_0 = Struct_1(~(-vec2<i32>(_wgslsmith_dot_vec2_i32(arg_2.c.a, vec2<i32>(-2147483647i, arg_3.x)), arg_3.x)));
    let var_1 = _wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(~select(~vec4<u32>(0u, arg_2.e, u_input.c, u_input.b.x), u_input.b, vec4<bool>(true, true, true, true)), max(_wgslsmith_add_vec4_u32(vec4<u32>(arg_2.e, 0u, arg_2.e, arg_2.e), u_input.b), abs(vec4<u32>(arg_2.e, 0u, 11061u, 16407u)))), vec4<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(u_input.b.zz, _wgslsmith_div_vec2_u32(u_input.b.wz, u_input.b.zx)), _wgslsmith_mult_vec2_u32(u_input.b.wx, vec2<u32>(arg_2.e, u_input.c)) >> (~vec2<u32>(4294967295u, 0u) % vec2<u32>(32u))), arg_2.e, 1637u, max(0u, ~(~u_input.c))), u_input.b);
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-349f, arg_2.d.x, -601f, arg_2.d.x), _wgslsmith_f_op_vec4_f32(-arg_2.b))) + arg_2.b)) + arg_2.b);
}

fn func_1(arg_0: u32, arg_1: vec3<f32>, arg_2: Struct_1, arg_3: u32) -> vec2<i32> {
    var var_0 = Struct_2(arg_2, _wgslsmith_f_op_vec4_f32(func_5(0i, Struct_1(~u_input.d), func_4(Struct_1(vec2<i32>(global0.x, -2147483647i)), func_2(~global0.x)), u_input.d)), func_4(arg_2, func_2(~global0.x & ~u_input.d.x)).a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(749f, 1262f) + _wgslsmith_f_op_vec2_f32(trunc(arg_1.xy))) + _wgslsmith_f_op_vec2_f32(-arg_1.yz)), _wgslsmith_dot_vec3_u32(u_input.b.yxw, countOneBits(~u_input.b.wwx) & ~firstLeadingBit(vec3<u32>(arg_3, u_input.b.x, 16698u))));
    let var_1 = func_4(Struct_1(vec2<i32>(global0.x, _wgslsmith_dot_vec2_i32(arg_2.a, reverseBits(vec2<i32>(global0.x, 8398i))))), func_2(_wgslsmith_dot_vec2_i32(vec2<i32>(func_4(Struct_1(vec2<i32>(u_input.d.x, u_input.a.x)), Struct_2(Struct_1(vec2<i32>(14760i, u_input.e)), var_0.b, var_0.a, vec2<f32>(541f, arg_1.x), 13674u)).c.a.x, var_0.a.a.x), -max(arg_2.a, var_0.c.a))));
    var var_2 = select(!vec2<bool>(!all(vec4<bool>(false, true, true, false)), false), select(vec2<bool>(true, true), select(select(select(vec2<bool>(false, true), vec2<bool>(true, true), true), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), false)), vec2<bool>(true, true), false), vec2<bool>(true, true)), select(vec2<bool>(true, true), select(select(vec2<bool>(true, false), select(vec2<bool>(true, false), vec2<bool>(false, true), false), true), vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false)), vec2<bool>(true, true))), vec2<bool>(var_1.a.a.x >= reverseBits(var_1.a.a.x), false)));
    var var_3 = var_0.c;
    global0 = vec4<i32>(var_1.c.a.x & (arg_2.a.x >> ((arg_3 ^ func_2(var_3.a.x).e) % 32u)), 0i, _wgslsmith_clamp_i32(var_0.a.a.x, _wgslsmith_mult_i32(arg_2.a.x, _wgslsmith_mod_i32(var_3.a.x, global0.x)) ^ firstTrailingBit(abs(var_3.a.x)), func_2(-18706i).c.a.x | var_3.a.x), abs(-26206i));
    return -var_0.c.a;
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1) -> u32 {
    var var_0 = !select(vec3<bool>(true, any(vec2<bool>(true, true)), true), select(vec3<bool>(false, true, all(vec4<bool>(false, false, true, true))), vec3<bool>(any(vec3<bool>(false, true, true)), select(true, true, false), select(false, true, true)), select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), true)), !select(select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), false), vec3<bool>(true, false, false), false));
    let var_1 = Struct_1(-vec2<i32>(func_1(~u_input.c, _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1018f, -421f, 124f))), Struct_1(vec2<i32>(arg_1.a.x, -9434i)), u_input.c).x, -max(0i, 13162i)));
    let var_2 = vec3<i32>(~1i, ~(var_1.a.x & (u_input.e << (4294967295u % 32u))), func_2(-9519i).a.a.x);
    global0 = vec4<i32>(abs(func_4(func_4(func_2(var_1.a.x).c, Struct_2(Struct_1(u_input.a.xx), vec4<f32>(486f, -135f, 1460f, 1000f), Struct_1(vec2<i32>(u_input.a.x, 49736i)), vec2<f32>(-445f, -1340f), 1u)).c, Struct_2(var_1, _wgslsmith_div_vec4_f32(vec4<f32>(-1125f, 511f, -693f, 497f), vec4<f32>(-1187f, 2062f, 867f, 1163f)), Struct_1(vec2<i32>(global0.x, -42915i)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(515f, 1144f)), ~u_input.b.x)).c.a.x), ~(u_input.a.x << (4294967295u % 32u)), -1i, func_2(-1i).c.a.x);
    var var_3 = reverseBits(_wgslsmith_mod_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(var_2.x, var_1.a.x, select(2147483647i, 27813i, var_0.x)), -vec3<i32>(2147483647i, arg_0.a.x, 0i)), abs(abs(abs(vec3<i32>(1i, u_input.a.x, -30399i))))));
    return _wgslsmith_dot_vec4_u32(~(~vec4<u32>(u_input.c, 71924u, ~54405u, 135646u)), vec4<u32>(3086u, 0u, _wgslsmith_div_u32(~u_input.b.x & 23729u, select(3575u, u_input.c, false) & 24605u), ~(~0u)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32(select(min(~vec4<i32>(global0.x, u_input.a.x, u_input.d.x, global0.x), -vec4<i32>(u_input.d.x, u_input.e, global0.x, 19225i)), vec4<i32>(_wgslsmith_mod_i32(u_input.a.x, 1i), -15273i, _wgslsmith_sub_i32(2147483647i, global0.x), global0.x), true), vec4<i32>(global0.x, -(~u_input.a.x), u_input.d.x, 5769i)), _wgslsmith_mult_vec4_i32(~_wgslsmith_mult_vec4_i32(-vec4<i32>(u_input.e, 2147483647i, u_input.d.x, u_input.a.x), -vec4<i32>(0i, global0.x, global0.x, -1543i)), _wgslsmith_mult_vec4_i32(~firstLeadingBit(vec4<i32>(global0.x, -7574i, u_input.a.x, global0.x)), _wgslsmith_div_vec4_i32(~vec4<i32>(global0.x, -55406i, global0.x, 24555i), ~vec4<i32>(68243i, -1i, 26491i, -1i)))));
    global0 = vec4<i32>(-(~13922i), u_input.a.x, _wgslsmith_clamp_i32(-((u_input.a.x ^ -2147483647i) >> (~u_input.c % 32u)), 2147483647i, min(_wgslsmith_div_i32(_wgslsmith_sub_i32(global0.x, 8496i), u_input.a.x << (u_input.c % 32u)), 0i)), _wgslsmith_dot_vec3_i32(vec3<i32>(global0.x, -2147483647i, -(~44878i)), _wgslsmith_mod_vec3_i32(~vec3<i32>(32524i, -29345i, 0i), global0.zxy)));
    let var_0 = vec4<u32>(countOneBits(func_6(Struct_1(func_1(u_input.b.x, vec3<f32>(285f, -970f, 788f), Struct_1(vec2<i32>(-2147483647i, global0.x)), u_input.c)), Struct_1(-u_input.a.xy))), 27145u, _wgslsmith_clamp_u32(~(~func_6(Struct_1(vec2<i32>(2147483647i, 1i)), Struct_1(vec2<i32>(0i, -16764i)))), 21926u, u_input.b.x), 32575u);
    global0 = ~(~(-_wgslsmith_add_vec4_i32(select(vec4<i32>(-1i, 46286i, u_input.e, global0.x), vec4<i32>(-23143i, 1i, global0.x, 24154i), true), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a.x, global0.x, 0i, -29552i), vec4<i32>(global0.x, -48953i, u_input.d.x, 0i)))));
    let var_1 = select(vec2<bool>(any(vec4<bool>(all(vec4<bool>(true, true, true, true)), false, true, select(true, false, false))), countOneBits(func_2(1856i).a.a.x) != -_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -1i, global0.x, global0.x), vec4<i32>(global0.x, 858i, global0.x, 0i))), vec2<bool>(u_input.e != abs(~u_input.a.x), true), vec2<bool>(true, true));
    let var_2 = func_4(func_4(Struct_1(~(~vec2<i32>(global0.x, global0.x))), func_4(Struct_1(-vec2<i32>(-2147483647i, u_input.d.x)), Struct_2(Struct_1(vec2<i32>(global0.x, -1i)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1000f, -504f, 328f, -140f), vec4<f32>(-1000f, 664f, -700f, -1938f), vec4<bool>(var_1.x, var_1.x, true, false))), Struct_1(u_input.d), _wgslsmith_f_op_vec2_f32(-vec2<f32>(395f, -843f)), var_0.x))).a, func_2(func_4(Struct_1(vec2<i32>(0i, global0.x)), func_2(min(u_input.d.x, u_input.d.x))).a.a.x)).a;
    global0 = _wgslsmith_clamp_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-(-1i >> (u_input.c % 32u)), ~1i, i32(-1i) * -1i, -16906i | -global0.x), -(~vec4<i32>(30571i, var_2.a.x, u_input.a.x, var_2.a.x))), -_wgslsmith_mod_vec4_i32(~(vec4<i32>(var_2.a.x, var_2.a.x, -21692i, -17704i) | vec4<i32>(-1i, 2147483647i, 14054i, 1i)), ~_wgslsmith_div_vec4_i32(vec4<i32>(var_2.a.x, var_2.a.x, -51468i, 4412i), vec4<i32>(-8812i, 2147483647i, u_input.a.x, global0.x))), -(~(_wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, global0.x, 1i, 0i), vec4<i32>(80289i, global0.x, -32415i, 36430i)) ^ (vec4<i32>(-30850i, global0.x, 17688i, u_input.e) | vec4<i32>(global0.x, global0.x, 1i, var_2.a.x)))));
    global0 = vec4<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_add_i32(u_input.a.x, global0.x), 1i), vec2<i32>(_wgslsmith_div_i32(10657i, var_2.a.x), 18819i)), vec2<i32>(u_input.e, -79143i) & _wgslsmith_add_vec2_i32(vec2<i32>(var_2.a.x, var_2.a.x), abs(vec2<i32>(global0.x, 44498i)))), global0.x, -u_input.d.x, 16555i);
    let x = u_input.a;
    s_output = StorageBuffer(func_1(_wgslsmith_add_u32(47154u, u_input.b.x), vec3<f32>(-1731f, -1335f, -275f), var_2, ~u_input.c).x, firstLeadingBit(abs(vec4<i32>(global0.x, u_input.e, u_input.d.x, global0.x))) << (~countOneBits(~var_0) % vec4<u32>(32u)), ~(~(vec3<u32>(u_input.b.x, var_0.x, 4294967295u) >> (_wgslsmith_add_vec3_u32(vec3<u32>(u_input.b.x, 1u, 0u), vec3<u32>(var_0.x, 22426u, var_0.x)) % vec3<u32>(32u)))), ~select(min(global0.x << (var_0.x % 32u), var_2.a.x), -_wgslsmith_clamp_i32(u_input.d.x, 0i, -2147483647i), var_1.x), -2147483647i ^ (~global0.x & _wgslsmith_sub_i32(global0.x, u_input.e)));
}

