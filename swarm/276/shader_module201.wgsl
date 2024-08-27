struct Struct_1 {
    a: vec4<i32>,
    b: vec4<f32>,
    c: vec2<bool>,
    d: u32,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: f32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: vec4<u32> = vec4<u32>(64457u, 14640u, 11911u, 4061u);

var<private> global2: array<i32, 7>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: vec4<i32>) -> vec4<f32> {
    let var_0 = Struct_1(abs((vec4<i32>(-1i) * -arg_1) >> (vec4<u32>(4294967295u, _wgslsmith_div_u32(4294967295u, u_input.c), 1u, abs(4294967295u)) % vec4<u32>(32u))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_0, 1275f, arg_0, -1233f)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(518f, arg_0, arg_0, -609f))) - _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(795f, arg_0, arg_0, -1170f))))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, arg_0, -1691f, arg_0) * vec4<f32>(arg_0, 1603f, arg_0, arg_0))))), vec4<bool>(true, any(vec2<bool>(true, true)), false, true))), vec2<bool>(all(select(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false)), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false)), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true)))), true), ~(~_wgslsmith_mult_u32(1u, global1.x)), max(firstLeadingBit(arg_1.yzy | ~vec3<i32>(u_input.a.x, 2147483647i, arg_1.x)), vec3<i32>(2147483647i, max(arg_1.x | global0.x, _wgslsmith_mod_i32(global2[_wgslsmith_index_u32(u_input.b.x, 7u)], u_input.a.x)), 0i)));
    let var_1 = arg_1.x;
    var var_2 = select(!(!(!select(vec4<bool>(var_0.c.x, true, true, false), vec4<bool>(true, true, var_0.c.x, var_0.c.x), var_0.c.x))), select(vec4<bool>(var_0.c.x, true, false && var_0.c.x, var_0.c.x), !select(select(vec4<bool>(var_0.c.x, var_0.c.x, var_0.c.x, var_0.c.x), vec4<bool>(false, true, true, false), vec4<bool>(true, var_0.c.x, var_0.c.x, false)), vec4<bool>(false, var_0.c.x, false, var_0.c.x), all(vec4<bool>(var_0.c.x, var_0.c.x, var_0.c.x, var_0.c.x))), true), select(!select(!vec4<bool>(var_0.c.x, var_0.c.x, var_0.c.x, false), !vec4<bool>(true, var_0.c.x, false, var_0.c.x), vec4<bool>(var_0.c.x, false, var_0.c.x, true)), !vec4<bool>(var_0.c.x, select(true, false, var_0.c.x), any(var_0.c), var_0.c.x), vec4<bool>(select(true, false, any(var_0.c)), var_0.c.x, var_0.c.x || true, true)));
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b.x, _wgslsmith_f_op_f32(trunc(arg_0))) * vec2<f32>(_wgslsmith_f_op_f32(step(-927f, -305f)), 285f)) + _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(var_0.b.yw * _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, -1000f)))))));
    return _wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(var_0.b, var_0.b), vec4<f32>(_wgslsmith_f_op_f32(914f + var_0.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_0)) + _wgslsmith_f_op_f32(floor(-1148f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1000f * arg_0), 335f, var_2.x)))), _wgslsmith_f_op_f32(-var_3.x))));
}

fn func_2(arg_0: f32, arg_1: Struct_1) -> Struct_1 {
    let var_0 = arg_1;
    let var_1 = arg_1;
    let var_2 = -18052i;
    var var_3 = Struct_1(firstLeadingBit(select(-vec4<i32>(u_input.a.x, 56763i, 12353i, var_2), var_1.a, any(!vec3<bool>(true, true, var_1.c.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(1f, -var_0.a))), arg_1.c, 4294967295u, ~vec3<i32>(max(global2[_wgslsmith_index_u32(1u, 7u)], -var_1.a.x), -_wgslsmith_div_i32(40576i, global0.x), abs(46635i) | _wgslsmith_dot_vec2_i32(vec2<i32>(global0.x, -9203i), vec2<i32>(37311i, 29034i))));
    var var_4 = Struct_1(vec4<i32>(~(~min(-1i, -1i)), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(var_1.d, 27058u) ^ vec2<u32>(20644u, var_3.d), firstTrailingBit(countOneBits(vec2<u32>(var_1.d, 4294967295u)))), 7u)], var_3.e.x, var_2), vec4<f32>(var_3.b.x, _wgslsmith_f_op_f32(f32(-1f) * -2747f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.b.x))), _wgslsmith_div_f32(-329f, var_1.b.x)), select(vec2<bool>(1u == var_3.d, !(arg_1.b.x <= 904f)), select(vec2<bool>(var_1.c.x == arg_1.c.x, var_1.c.x), vec2<bool>(var_1.c.x, all(vec3<bool>(false, var_1.c.x, true))), select(vec2<bool>(true, true), arg_1.c, true)), true), abs(~arg_1.d >> (firstTrailingBit(arg_1.d) % 32u)), -var_3.a.zwy);
    return Struct_1(_wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, var_4.a.x, ~8081i, -(global0.x | var_4.a.x)), select(arg_1.a, countOneBits(vec4<i32>(var_4.e.x, var_0.a.x, 34555i, global2[_wgslsmith_index_u32(0u, 7u)])), !select(vec4<bool>(var_0.c.x, var_0.c.x, true, var_0.c.x), vec4<bool>(var_1.c.x, arg_1.c.x, false, var_3.c.x), true))), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(var_0.b.x)), 1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_4.b.x) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -433f), _wgslsmith_f_op_f32(-var_3.b.x))), -501f, -1057f), !(!vec2<bool>(var_1.d != 1u, !var_0.c.x)), _wgslsmith_mod_u32(~min(u_input.c, arg_1.d) >> (4294967295u % 32u), 22096u), var_1.e);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32, arg_3: u32) -> Struct_1 {
    let var_0 = arg_0;
    var var_1 = max(vec2<u32>(_wgslsmith_div_u32(~var_0.d ^ 4294967295u, arg_0.d), ~arg_1.d), vec2<u32>(min(global1.x, 12767u), ~0u));
    global0 = vec3<i32>(~(-2147483647i), firstTrailingBit(max(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(var_1.x, u_input.c), 7u)], 5927i)), _wgslsmith_div_i32(((arg_0.e.x & -7279i) << (var_1.x % 32u)) | -2147483647i, -(func_2(arg_1.b.x, arg_0).e.x >> (_wgslsmith_mult_u32(1u, u_input.c) % 32u))));
    var_1 = vec2<u32>(abs(select(arg_1.d, select(~55915u, 0u, select(false, true, arg_0.c.x)), !(!var_0.c.x))), 63665u);
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(arg_0.b.x + _wgslsmith_f_op_f32(-633f * arg_0.b.x)), var_0.b.x, _wgslsmith_f_op_f32(-arg_0.b.x));
    return var_0;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(932f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.b.x)))));
    var_0 = 1118f;
    var_0 = arg_1.b.x;
    var var_1 = arg_0;
    var var_2 = max(vec2<u32>(func_2(_wgslsmith_f_op_f32(abs(-303f)), func_2(_wgslsmith_f_op_f32(-arg_0.b.x), arg_0)).d, arg_0.d), ~(~(u_input.b.xy & vec2<u32>(38312u, 12467u))) ^ u_input.b.yy);
    return arg_0;
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32) -> Struct_1 {
    global1 = _wgslsmith_mult_vec4_u32(vec4<u32>(arg_1.d, arg_1.d, firstLeadingBit(global1.x), arg_0.d ^ _wgslsmith_mult_u32(2835u, arg_1.d)), ~_wgslsmith_mod_vec4_u32(~vec4<u32>(1u, 58094u, u_input.b.x, arg_0.d) >> (_wgslsmith_mult_vec4_u32(vec4<u32>(arg_0.d, global1.x, u_input.b.x, 1u), vec4<u32>(arg_0.d, u_input.b.x, 0u, 0u)) % vec4<u32>(32u)), firstLeadingBit(~vec4<u32>(u_input.c, u_input.c, 68001u, u_input.b.x))));
    global0 = _wgslsmith_sub_vec3_i32(vec3<i32>(0i, -_wgslsmith_div_i32(arg_0.a.x, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.a.x, -98368i, 1i), arg_1.e)), i32(-1i) * -func_4(arg_0, Struct_1(arg_1.a, vec4<f32>(arg_1.b.x, -265f, -1081f, arg_1.b.x), vec2<bool>(false, arg_0.c.x), 32090u, arg_0.e), arg_1.a.x, arg_1.d).a.x), arg_1.e);
    let var_0 = func_4(arg_1, Struct_1(~vec4<i32>(2147483647i, global0.x >> (global1.x % 32u), min(global0.x, global0.x), global2[_wgslsmith_index_u32(~global1.x, 7u)]), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(arg_1.b))), vec2<bool>(arg_1.c.x, all(func_2(1000f, Struct_1(vec4<i32>(u_input.a.x, -37816i, 0i, arg_1.a.x), vec4<f32>(-474f, arg_0.b.x, arg_0.b.x, 1881f), vec2<bool>(arg_0.c.x, false), global1.x, vec3<i32>(global2[_wgslsmith_index_u32(global1.x, 7u)], -52159i, 2748i))).c)), select(abs(58418u), ~(~12355u), true), _wgslsmith_mult_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(arg_0.a.x, -1i, arg_0.e.x), -arg_1.a.yzz, vec3<i32>(2147483647i, -48178i, 48649i) & vec3<i32>(global0.x, arg_0.a.x, global0.x)), arg_1.a.xwy)), ~1i, _wgslsmith_mod_u32(arg_0.d, abs(global1.x) << (global1.x % 32u)) ^ 1u);
    global2 = array<i32, 7>();
    let var_1 = func_2(-1398f, func_4(var_0, arg_1, var_0.a.x, _wgslsmith_mult_u32(_wgslsmith_div_u32(4294967295u, 41301u), u_input.b.x))).c;
    return Struct_1(~(~abs(arg_0.a) ^ _wgslsmith_mod_vec4_i32(var_0.a, vec4<i32>(arg_0.e.x, arg_2, -1i, 10653i) | vec4<i32>(global0.x, u_input.a.x, 2147483647i, 11729i))), arg_0.b, var_0.c, arg_1.d, -(vec3<i32>(countOneBits(arg_0.e.x), var_0.e.x << (u_input.c % 32u), -94018i) | vec3<i32>(reverseBits(2147483647i), -global0.x, abs(63151i))));
}

fn func_1(arg_0: vec2<i32>) -> bool {
    let var_0 = func_6(func_5(func_4(func_2(_wgslsmith_f_op_f32(f32(-1f) * -1212f), Struct_1(vec4<i32>(u_input.a.x, arg_0.x, 1i, -1i), vec4<f32>(-505f, 921f, -378f, -2265f), vec2<bool>(false, true), u_input.c, vec3<i32>(8179i, 2147483647i, 0i))), Struct_1(vec4<i32>(u_input.a.x, global0.x, u_input.a.x, u_input.a.x), vec4<f32>(847f, -800f, -1677f, 796f), vec2<bool>(true, true), 43309u, vec3<i32>(-1i, 2147483647i, -44913i)), 2147483647i, global1.x >> (23819u % 32u)), func_4(Struct_1(~vec4<i32>(u_input.a.x, arg_0.x, 1i, u_input.a.x), vec4<f32>(498f, 241f, -1022f, 389f), vec2<bool>(true, false), u_input.c, vec3<i32>(u_input.a.x, global0.x, arg_0.x) << (global1.yyx % vec3<u32>(32u))), Struct_1(firstLeadingBit(vec4<i32>(1i, u_input.a.x, 29241i, arg_0.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(243f, -1000f, 657f, -208f) * vec4<f32>(446f, 449f, 1000f, -1518f)), select(vec2<bool>(true, true), vec2<bool>(true, true), false), ~0u, vec3<i32>(1i, 2837i, global2[_wgslsmith_index_u32(9727u, 7u)])), -1i, ~global1.x ^ _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 4294967295u, u_input.b.x, 26886u), vec4<u32>(43227u, 10686u, 1u, global1.x))), ~1u), Struct_1(_wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(12123i, global0.x, u_input.a.x, global0.x), vec4<i32>(arg_0.x, -42548i, -24002i, global2[_wgslsmith_index_u32(38144u, 7u)]), vec4<i32>(global2[_wgslsmith_index_u32(1u, 7u)], global2[_wgslsmith_index_u32(u_input.c, 7u)], u_input.a.x, global0.x)), ~vec4<i32>(u_input.a.x, arg_0.x, arg_0.x, global0.x)), firstLeadingBit(~vec4<i32>(0i, 0i, global0.x, -35620i))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-280f, -1686f, -689f, -135f))), func_4(Struct_1(vec4<i32>(-1i, 30098i, -1i, 11780i), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1382f, 875f, 412f, -1612f), vec4<f32>(1524f, -346f, 226f, 271f))), vec2<bool>(true, true), func_4(Struct_1(vec4<i32>(-39583i, u_input.a.x, 0i, 2147483647i), vec4<f32>(1151f, 215f, 217f, -1470f), vec2<bool>(true, false), global1.x, vec3<i32>(u_input.a.x, -2147483647i, global0.x)), Struct_1(vec4<i32>(0i, 12679i, global0.x, global2[_wgslsmith_index_u32(u_input.b.x, 7u)]), vec4<f32>(-445f, 1982f, 1256f, 1321f), vec2<bool>(true, true), u_input.c, vec3<i32>(arg_0.x, global2[_wgslsmith_index_u32(global1.x, 7u)], global2[_wgslsmith_index_u32(global1.x, 7u)])), 0i, global1.x).d, countOneBits(vec3<i32>(global2[_wgslsmith_index_u32(56825u, 7u)], 20303i, 5099i))), func_2(_wgslsmith_f_op_f32(select(-998f, -1303f, false)), Struct_1(vec4<i32>(43348i, global2[_wgslsmith_index_u32(global1.x, 7u)], u_input.a.x, arg_0.x), vec4<f32>(1534f, -361f, -107f, -1000f), vec2<bool>(false, true), global1.x, vec3<i32>(global2[_wgslsmith_index_u32(global1.x, 7u)], -15076i, global2[_wgslsmith_index_u32(u_input.c, 7u)]))), -23174i, ~(~0u)).c, global1.x, _wgslsmith_clamp_vec3_i32(func_4(Struct_1(vec4<i32>(41251i, 19559i, global0.x, arg_0.x), vec4<f32>(638f, 208f, -1631f, -1447f), vec2<bool>(false, true), global1.x, vec3<i32>(u_input.a.x, global2[_wgslsmith_index_u32(4294967295u, 7u)], 1i)), func_4(Struct_1(vec4<i32>(-50289i, -1i, -2147483647i, 17283i), vec4<f32>(-399f, -1355f, 760f, -912f), vec2<bool>(true, true), u_input.c, vec3<i32>(0i, global2[_wgslsmith_index_u32(global1.x, 7u)], global2[_wgslsmith_index_u32(1u, 7u)])), Struct_1(vec4<i32>(arg_0.x, arg_0.x, arg_0.x, u_input.a.x), vec4<f32>(-275f, -1145f, 1267f, -829f), vec2<bool>(true, false), u_input.b.x, vec3<i32>(global0.x, u_input.a.x, 1i)), global2[_wgslsmith_index_u32(u_input.b.x, 7u)], global1.x), countOneBits(arg_0.x), global1.x).a.zzx, func_4(func_2(-193f, Struct_1(vec4<i32>(-36777i, arg_0.x, global2[_wgslsmith_index_u32(4736u, 7u)], -31206i), vec4<f32>(-516f, -1068f, 318f, -1385f), vec2<bool>(false, true), 77333u, vec3<i32>(-7493i, u_input.a.x, arg_0.x))), func_2(-1000f, Struct_1(vec4<i32>(-2147483647i, u_input.a.x, global0.x, 24833i), vec4<f32>(107f, 1166f, -531f, -641f), vec2<bool>(true, false), 30526u, vec3<i32>(u_input.a.x, -18855i, global2[_wgslsmith_index_u32(6151u, 7u)]))), -2147483647i, ~26110u).e, _wgslsmith_add_vec3_i32(func_2(-1065f, Struct_1(vec4<i32>(-40377i, u_input.a.x, 0i, -2117i), vec4<f32>(185f, 331f, -397f, 425f), vec2<bool>(true, false), 4294967295u, vec3<i32>(-21784i, -17639i, global0.x))).e, vec3<i32>(49962i, u_input.a.x, arg_0.x)))), firstTrailingBit(-1i));
    let var_1 = ~(~firstLeadingBit(select(vec4<u32>(0u, 1u, 97940u, var_0.d), vec4<u32>(var_0.d, 3000u, 0u, u_input.b.x), true) << (vec4<u32>(61355u, 0u, global1.x, 4294967295u) % vec4<u32>(32u))));
    global2 = array<i32, 7>();
    var var_2 = _wgslsmith_f_op_f32(-var_0.b.x);
    var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.x));
    return any(vec4<bool>(var_0.c.x, true, true | !var_0.c.x, !any(!vec4<bool>(var_0.c.x, true, true, var_0.c.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0.x;
    let var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1348f)) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1f, _wgslsmith_div_f32(-349f, -2361f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(420f + 943f), _wgslsmith_f_op_f32(abs(537f)))))))), any(vec2<bool>(false, true))));
    let var_2 = (func_1(vec2<i32>(-1040i, -u_input.a.x)) || (true | (-global0.x > func_6(Struct_1(vec4<i32>(1i, global0.x, -15781i, 27389i), vec4<f32>(var_1, -2080f, 836f, 202f), vec2<bool>(true, true), u_input.b.x, vec3<i32>(global0.x, global2[_wgslsmith_index_u32(15637u, 7u)], -3328i)), Struct_1(vec4<i32>(global0.x, global2[_wgslsmith_index_u32(0u, 7u)], global0.x, global0.x), vec4<f32>(var_1, var_1, var_1, var_1), vec2<bool>(true, true), 4294967295u, vec3<i32>(global0.x, u_input.a.x, 2147483647i)), 16395i).a.x))) || func_4(func_2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(515f, var_1)), Struct_1(-vec4<i32>(-2147483647i, global2[_wgslsmith_index_u32(0u, 7u)], 60624i, -33013i), vec4<f32>(-1578f, var_1, var_1, 1340f), vec2<bool>(false, true), 4294967295u, ~vec3<i32>(0i, -21763i, 47368i))), func_2(func_6(Struct_1(vec4<i32>(-2147483647i, global0.x, 0i, 2147483647i), vec4<f32>(-1566f, -583f, var_1, var_1), vec2<bool>(false, false), u_input.b.x, vec3<i32>(1i, global0.x, -2147483647i)), func_5(Struct_1(vec4<i32>(-14544i, u_input.a.x, 2147483647i, global0.x), vec4<f32>(-367f, var_1, var_1, 494f), vec2<bool>(false, false), 37534u, vec3<i32>(0i, global2[_wgslsmith_index_u32(u_input.b.x, 7u)], u_input.a.x)), Struct_1(vec4<i32>(-1i, 15884i, 22860i, u_input.a.x), vec4<f32>(var_1, 709f, var_1, 1000f), vec2<bool>(false, false), global1.x, vec3<i32>(-1i, 0i, global2[_wgslsmith_index_u32(4294967295u, 7u)])), 1u), u_input.a.x).b.x, func_5(func_4(Struct_1(vec4<i32>(16559i, global0.x, global2[_wgslsmith_index_u32(u_input.b.x, 7u)], global0.x), vec4<f32>(var_1, var_1, -415f, var_1), vec2<bool>(true, false), global1.x, vec3<i32>(45981i, 67899i, 0i)), Struct_1(vec4<i32>(global0.x, u_input.a.x, -11300i, -7827i), vec4<f32>(-1000f, -1437f, var_1, 742f), vec2<bool>(true, false), 21488u, vec3<i32>(-1i, u_input.a.x, global2[_wgslsmith_index_u32(29364u, 7u)])), -17419i, global1.x), func_6(Struct_1(vec4<i32>(-1i, global0.x, -49895i, -2147483647i), vec4<f32>(var_1, var_1, 626f, -577f), vec2<bool>(false, false), 19704u, vec3<i32>(0i, -34381i, -24116i)), Struct_1(vec4<i32>(global0.x, global0.x, 1i, u_input.a.x), vec4<f32>(273f, 186f, var_1, 133f), vec2<bool>(true, true), global1.x, vec3<i32>(global0.x, u_input.a.x, u_input.a.x)), u_input.a.x), max(global1.x, 4294967295u))), u_input.a.x << (_wgslsmith_dot_vec3_u32(vec3<u32>(3738u, 75665u, 82436u), firstLeadingBit(u_input.b)) % 32u), ~(u_input.b.x >> (global1.x % 32u))).c.x;
    var var_3 = func_6(Struct_1(vec4<i32>(0i, -2147483647i, _wgslsmith_add_i32(global0.x >> (44441u % 32u), 22641i), -firstTrailingBit(-49468i)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1292f, -1368f, 1402f, var_1)))), func_4(Struct_1(~vec4<i32>(global2[_wgslsmith_index_u32(40697u, 7u)], u_input.a.x, global0.x, -48224i), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-337f, var_1, var_1, var_1), vec4<f32>(-383f, 1657f, -119f, -494f))), vec2<bool>(true, var_2), 24684u, vec3<i32>(-5216i, 19578i, 0i)), Struct_1(~vec4<i32>(global0.x, u_input.a.x, 40462i, 0i), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, var_1, -608f, var_1)), vec2<bool>(var_2, false), ~global1.x, func_5(Struct_1(vec4<i32>(global2[_wgslsmith_index_u32(4294967295u, 7u)], 1i, 0i, -31573i), vec4<f32>(var_1, var_1, -463f, 1446f), vec2<bool>(var_2, var_2), global1.x, vec3<i32>(1i, global2[_wgslsmith_index_u32(7265u, 7u)], 2147483647i)), Struct_1(vec4<i32>(global2[_wgslsmith_index_u32(global1.x, 7u)], 0i, u_input.a.x, 1i), vec4<f32>(var_1, var_1, -1817f, var_1), vec2<bool>(var_2, var_2), 75592u, vec3<i32>(global0.x, -46190i, global0.x)), global1.x).a.ywx), _wgslsmith_dot_vec4_i32(select(vec4<i32>(57781i, 2147483647i, global2[_wgslsmith_index_u32(44407u, 7u)], 2047i), vec4<i32>(4110i, 2147483647i, -2147483647i, global0.x), false), _wgslsmith_mult_vec4_i32(vec4<i32>(-4862i, u_input.a.x, -2147483647i, global0.x), vec4<i32>(1i, 5809i, global0.x, 2147483647i))), ~(~14632u)).c, _wgslsmith_mult_u32(u_input.b.x | 4294967295u, u_input.b.x), abs(_wgslsmith_div_vec3_i32(-vec3<i32>(global0.x, 20436i, global2[_wgslsmith_index_u32(global1.x, 7u)]), -vec3<i32>(22840i, 2147483647i, 0i)))), func_2(func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(190f))), Struct_1(-vec4<i32>(-28586i, u_input.a.x, 0i, u_input.a.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(231f, 674f, 285f, 1218f)), vec2<bool>(true, true), 4294967295u | u_input.b.x, -vec3<i32>(1i, global0.x, 1i))).b.x, Struct_1(~vec4<i32>(global0.x, 1i, -16246i, -83685i), vec4<f32>(var_1, var_1, _wgslsmith_f_op_f32(-1465f * var_1), 463f), !select(vec2<bool>(false, var_2), vec2<bool>(var_2, true), true), ~4294967295u, vec3<i32>(-2147483647i, -2147483647i, -17615i) ^ select(vec3<i32>(u_input.a.x, 10812i, u_input.a.x), vec3<i32>(-2147483647i, global2[_wgslsmith_index_u32(11203u, 7u)], global0.x), false))), -1i).b;
    let var_4 = Struct_1(firstLeadingBit(func_2(_wgslsmith_f_op_f32(step(-1012f, -1000f)), Struct_1(_wgslsmith_div_vec4_i32(vec4<i32>(0i, -1i, global2[_wgslsmith_index_u32(1u, 7u)], global2[_wgslsmith_index_u32(32279u, 7u)]), vec4<i32>(global0.x, global0.x, 2147483647i, global2[_wgslsmith_index_u32(4294967295u, 7u)])), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_3.x, var_1, var_3.x, var_3.x), vec4<f32>(-935f, 361f, -1603f, var_3.x))), vec2<bool>(var_2, var_2), global1.x, func_2(var_1, Struct_1(vec4<i32>(-1i, -1i, 45178i, global0.x), vec4<f32>(var_1, 1203f, 503f, var_1), vec2<bool>(var_2, var_2), global1.x, vec3<i32>(1i, 1i, global0.x))).a.zxy)).a), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(var_1, vec4<i32>(global0.x, -2147483647i, 41460i, global2[_wgslsmith_index_u32(u_input.c, 7u)])))))), !(!func_5(func_2(var_3.x, Struct_1(vec4<i32>(29126i, u_input.a.x, global2[_wgslsmith_index_u32(global1.x, 7u)], u_input.a.x), vec4<f32>(1168f, var_3.x, 568f, var_1), vec2<bool>(var_2, false), u_input.b.x, vec3<i32>(30682i, global2[_wgslsmith_index_u32(global1.x, 7u)], -1i))), func_5(Struct_1(vec4<i32>(global2[_wgslsmith_index_u32(0u, 7u)], u_input.a.x, global2[_wgslsmith_index_u32(global1.x, 7u)], u_input.a.x), vec4<f32>(var_3.x, -2013f, var_1, var_1), vec2<bool>(var_2, true), 1u, vec3<i32>(global0.x, 0i, global2[_wgslsmith_index_u32(1u, 7u)])), Struct_1(vec4<i32>(global2[_wgslsmith_index_u32(57600u, 7u)], -22419i, -20145i, -10135i), vec4<f32>(var_3.x, var_1, var_3.x, -1443f), vec2<bool>(false, true), 1u, vec3<i32>(global0.x, -30894i, 841i)), global1.x), _wgslsmith_sub_u32(53730u, 0u)).c), _wgslsmith_div_u32(1u, global1.x), vec3<i32>(_wgslsmith_clamp_i32(global0.x, u_input.a.x, u_input.a.x), ~global0.x, global0.x) & abs(-(~vec3<i32>(global2[_wgslsmith_index_u32(global1.x, 7u)], 7997i, global0.x))));
    var var_5 = var_4;
    global0 = _wgslsmith_div_vec3_i32(_wgslsmith_clamp_vec3_i32(var_4.a.zwz, vec3<i32>(-13498i, 68486i, ~(-var_4.e.x)), ~vec3<i32>(1i, -12526i ^ global0.x, u_input.a.x)), var_5.a.xyw);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(~var_4.d, _wgslsmith_add_u32(u_input.b.x, 0u)), min(global1.xxx, global1.ywz), _wgslsmith_f_op_f32(trunc(592f)), func_5(var_4, func_6(Struct_1(_wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, 27092i, var_4.e.x, var_4.a.x), var_5.a), _wgslsmith_f_op_vec4_f32(-var_4.b), func_6(Struct_1(vec4<i32>(global2[_wgslsmith_index_u32(28519u, 7u)], var_5.a.x, -68749i, 26364i), var_4.b, vec2<bool>(true, var_2), global1.x, vec3<i32>(var_5.a.x, 16906i, 2147483647i)), Struct_1(vec4<i32>(-29964i, u_input.a.x, var_4.e.x, -9657i), var_5.b, vec2<bool>(var_2, var_4.c.x), 0u, vec3<i32>(global0.x, global2[_wgslsmith_index_u32(var_4.d, 7u)], u_input.a.x)), global0.x).c, u_input.b.x, var_5.a.yyw << (u_input.b % vec3<u32>(32u))), Struct_1(var_5.a, _wgslsmith_f_op_vec4_f32(select(var_4.b, var_5.b, var_2)), func_2(-547f, Struct_1(var_5.a, vec4<f32>(var_3.x, var_4.b.x, var_1, var_5.b.x), vec2<bool>(var_4.c.x, false), 1u, var_5.a.xyz)).c, 1u, var_5.e << (global1.zzy % vec3<u32>(32u))), var_5.e.x), ~2118u & _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(global1.zxx, vec3<u32>(var_5.d, var_4.d, 140227u)), u_input.b.x)).b.wy);
}

