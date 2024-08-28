struct Struct_1 {
    a: u32,
    b: vec3<bool>,
    c: vec4<f32>,
    d: vec3<i32>,
    e: f32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec3<bool>,
    c: Struct_1,
    d: vec4<i32>,
    e: u32,
}

struct Struct_3 {
    a: f32,
    b: vec4<bool>,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: vec2<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 26>;

var<private> global1: i32 = 38534i;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3() -> vec4<bool> {
    var var_0 = Struct_1(u_input.b, vec3<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 26u)] >= -1993f, true), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global0[_wgslsmith_index_u32(46409u, 26u)], -158f, 1172f, global0[_wgslsmith_index_u32(56180u, 26u)])))))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(4294967295u, 26u)], 1217f, _wgslsmith_div_f32(-2711f, 2723f), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.b, 26u)] + 1236f)))), _wgslsmith_clamp_vec3_i32(_wgslsmith_mult_vec3_i32(u_input.a.zyx, vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)), select(u_input.a.xxx, vec3<i32>(20482i, 0i, -3281i) | _wgslsmith_mult_vec3_i32(vec3<i32>(-4007i, u_input.a.x, -2147483647i), vec3<i32>(0i, -4779i, u_input.a.x)), true), vec3<i32>(-1838i, ~u_input.a.x, 3535i) | _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a.x, -1641i, u_input.a.x), -vec3<i32>(0i, u_input.a.x, -8846i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1419f - _wgslsmith_f_op_f32(-1078f - -291f)) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0[_wgslsmith_index_u32(20465u, 26u)], -675f)))));
    var var_1 = vec2<f32>(global0[_wgslsmith_index_u32(1u, 26u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.e))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c.x) + -320f)));
    global0 = array<f32, 26>();
    var_0 = Struct_1(var_0.a, select(select(!select(vec3<bool>(true, true, true), vec3<bool>(var_0.b.x, true, var_0.b.x), var_0.b.x), var_0.b, true), var_0.b, var_0.b), vec4<f32>(1115f, var_0.e, -1076f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -586f) + _wgslsmith_f_op_f32(floor(261f)))), -select(var_0.d, var_0.d, !select(false, var_0.b.x, var_0.b.x)), var_0.c.x);
    var var_2 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-627f)) - _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(~u_input.b ^ firstLeadingBit(var_0.a), 26u)] - var_1.x)), vec4<bool>(false, true, var_0.b.x, false && all(vec4<bool>(var_0.b.x, true, true, true))), Struct_2(vec4<i32>(min(2147483647i, var_0.d.x) ^ reverseBits(var_0.d.x), -1i, -19496i, _wgslsmith_clamp_i32(var_0.d.x, 0i, firstLeadingBit(-1i))), !select(select(var_0.b, vec3<bool>(var_0.b.x, var_0.b.x, var_0.b.x), true), select(vec3<bool>(false, false, true), vec3<bool>(true, var_0.b.x, false), var_0.b), any(vec4<bool>(var_0.b.x, var_0.b.x, true, var_0.b.x))), Struct_1(~_wgslsmith_clamp_u32(var_0.a, var_0.a, var_0.a), var_0.b, _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(250f, global0[_wgslsmith_index_u32(105947u, 26u)], 105f, 1687f)))), ~_wgslsmith_add_vec3_i32(vec3<i32>(23452i, -17988i, 2147483647i), var_0.d), 332f), -(~vec4<i32>(0i, u_input.a.x, var_0.d.x, 43216i) << (~vec4<u32>(0u, 40159u, u_input.b, var_0.a) % vec4<u32>(32u))), 39789u));
    return select(select(var_2.b, vec4<bool>(var_2.c.c.b.x, var_2.b.x, max(35229i, var_0.d.x) > _wgslsmith_dot_vec2_i32(vec2<i32>(-52561i, -11787i), u_input.a.xx), !(!var_2.c.c.b.x)), true), var_2.b, any(!(!vec2<bool>(var_0.b.x, var_2.c.b.x))));
}

fn func_2(arg_0: i32) -> Struct_2 {
    global1 = u_input.a.x;
    let var_0 = !func_3();
    var var_1 = u_input.b;
    var var_2 = _wgslsmith_mult_i32(~(33222i ^ (_wgslsmith_mult_i32(u_input.a.x, u_input.a.x) | abs(2147483647i))), ~(-40514i));
    let var_3 = abs(_wgslsmith_mod_u32(0u, ~(~_wgslsmith_mod_u32(12172u, u_input.b))));
    return Struct_2(reverseBits(-firstTrailingBit(_wgslsmith_mult_vec4_i32(u_input.a, vec4<i32>(91461i, 1i, u_input.a.x, u_input.a.x)))), var_0.zxy, Struct_1(select(~firstTrailingBit(var_3), firstLeadingBit(1u), select(var_0.x, any(var_0.ww), any(vec4<bool>(var_0.x, true, var_0.x, var_0.x)))), var_0.xxx, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(var_3, 26u)])) - -326f), _wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(var_3, 26u)])), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(6116u, 26u)] - _wgslsmith_f_op_f32(min(-734f, -230f))), _wgslsmith_f_op_f32(floor(210f))), countOneBits(select(vec3<i32>(-2147483647i, u_input.a.x, u_input.a.x), u_input.a.yyx, true)) ^ vec3<i32>(-1i, 1i, _wgslsmith_div_i32(1i, -6226i)), global0[_wgslsmith_index_u32(var_3, 26u)]), u_input.a, _wgslsmith_div_u32(firstLeadingBit(_wgslsmith_sub_u32(1u, 1u)), _wgslsmith_mult_u32(var_3, min(min(19432u, var_3), 4294967295u))));
}

fn func_4(arg_0: Struct_3, arg_1: vec3<bool>, arg_2: f32, arg_3: vec3<bool>) -> Struct_2 {
    global0 = array<f32, 26>();
    global1 = -80672i;
    var var_0 = func_2(2147483647i).c;
    let var_1 = arg_0.c;
    var var_2 = vec3<bool>(var_0.b.x, !arg_3.x, arg_1.x);
    return Struct_2(_wgslsmith_add_vec4_i32(max(func_2(-16969i).a, reverseBits(u_input.a)), -_wgslsmith_div_vec4_i32(var_1.d, arg_0.c.d)) | _wgslsmith_mod_vec4_i32(firstLeadingBit(vec4<i32>(arg_0.c.d.x, -49752i, -1i, var_0.d.x)), min(abs(vec4<i32>(1i, arg_0.c.a.x, -2147483647i, -41850i)), -vec4<i32>(2147483647i, 0i, arg_0.c.a.x, u_input.a.x))), vec3<bool>(1000f < arg_0.c.c.e, arg_0.c.c.b.x, arg_1.x), Struct_1(arg_0.c.c.a, func_2(-_wgslsmith_sub_i32(-52882i, -36769i)).b, arg_0.c.c.c, _wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(arg_0.c.a.wzz, var_0.d) ^ var_1.d.zxw, vec3<i32>(arg_0.c.c.d.x, _wgslsmith_add_i32(var_0.d.x, u_input.a.x), min(-1i, u_input.a.x))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(156f * 300f)))), vec4<i32>(firstLeadingBit(-var_0.d.x << (_wgslsmith_add_u32(var_0.a, var_0.a) % 32u)), min(1i, _wgslsmith_dot_vec2_i32(vec2<i32>(5687i, var_1.d.x) | var_0.d.zz, _wgslsmith_clamp_vec2_i32(vec2<i32>(-18704i, -1i), var_1.a.wx, arg_0.c.a.xy))), select(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.d.x, 2147483647i, arg_0.c.a.x, var_0.d.x) | vec4<i32>(var_1.d.x, u_input.a.x, var_0.d.x, arg_0.c.c.d.x), _wgslsmith_mult_vec4_i32(arg_0.c.a, vec4<i32>(-25336i, -1i, arg_0.c.c.d.x, -1i))), abs(-53246i), any(!vec4<bool>(false, arg_1.x, arg_0.b.x, false))), i32(-1i) * -4153i), _wgslsmith_div_u32(2491u, _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_clamp_u32(var_0.a, var_0.a, var_0.a), _wgslsmith_clamp_u32(arg_0.c.c.a, var_1.e, 9240u)), ~min(vec2<u32>(var_0.a, 0u), vec2<u32>(var_1.c.a, 0u)))));
}

fn func_1() -> Struct_2 {
    global0 = array<f32, 26>();
    let var_0 = _wgslsmith_sub_vec3_i32(~vec3<i32>(_wgslsmith_div_i32(21529i, u_input.a.x), u_input.a.x | u_input.a.x, ~u_input.a.x), vec3<i32>(~(-u_input.a.x), ~_wgslsmith_dot_vec3_i32(u_input.a.wzz, vec3<i32>(0i, u_input.a.x, -1i)), -(~2147483647i))) & u_input.a.yzx;
    var var_1 = Struct_3(_wgslsmith_f_op_f32(trunc(1086f)), select(!(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false))), vec4<bool>(any(vec3<bool>(true, true, true)), true, true || all(vec2<bool>(false, true)), any(vec2<bool>(false, false))), !select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), all(vec3<bool>(true, false, false)))), func_4(Struct_3(1906f, select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), true), func_2(_wgslsmith_sub_i32(-11162i, -3620i))), select(func_3().yyz, func_2(_wgslsmith_add_i32(var_0.x, var_0.x)).b, vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(168f + 1864f), func_3().xyw));
    let var_2 = var_1.a;
    global0 = array<f32, 26>();
    return var_1.c;
}

fn func_5(arg_0: Struct_3, arg_1: bool, arg_2: u32, arg_3: Struct_2) -> Struct_2 {
    var var_0 = false;
    global1 = i32(-1i) * -4352i;
    global1 = u_input.a.x;
    global0 = array<f32, 26>();
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -182f) - global0[_wgslsmith_index_u32(arg_3.e, 26u)]) + global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(0u, 38010u)), abs(vec2<u32>(0u, u_input.b))), 26u)])));
    return func_1();
}

fn func_6(arg_0: Struct_2, arg_1: f32, arg_2: vec2<bool>, arg_3: Struct_2) -> vec4<bool> {
    global1 = _wgslsmith_add_i32(firstTrailingBit(countOneBits(firstTrailingBit(arg_3.c.d.x)) ^ arg_3.a.x), 66893i);
    global1 = firstTrailingBit(_wgslsmith_add_i32(-(u_input.a.x >> (_wgslsmith_dot_vec2_u32(vec2<u32>(11690u, 26880u), vec2<u32>(0u, arg_3.c.a)) % 32u)), arg_3.d.x));
    var var_0 = min(u_input.a.x, func_1().c.d.x);
    let var_1 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_3.c.c.x + -223f))))) - -1000f), !vec4<bool>(!(arg_3.d.x >= 4910i), true, false, false), func_2(-(max(arg_0.c.d.x, 61095i) << (func_4(Struct_3(arg_0.c.e, vec4<bool>(false, false, true, true), Struct_2(vec4<i32>(0i, u_input.a.x, 1i, -2147483647i), arg_0.b, arg_0.c, arg_0.a, arg_3.c.a)), vec3<bool>(arg_0.b.x, arg_3.c.b.x, false), 326f, vec3<bool>(false, false, false)).e % 32u))));
    var var_2 = var_1.c.a.yxz;
    return !vec4<bool>(arg_2.x, var_1.b.x, arg_0.b.x, any(!select(arg_2, vec2<bool>(false, arg_3.b.x), false)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(14142u >> ((~firstLeadingBit(68594u) >> (~(~u_input.b) % 32u)) % 32u), vec3<bool>(true, any(vec4<bool>(true, true, true, true)), true), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1238f, -263f, global0[_wgslsmith_index_u32(u_input.b, 26u)], global0[_wgslsmith_index_u32(13425u, 26u)]) - vec4<f32>(-1806f, 836f, -1000f, global0[_wgslsmith_index_u32(u_input.b, 26u)])) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(1u, 26u)], 1367f, global0[_wgslsmith_index_u32(u_input.b, 26u)], 168f))) * vec4<f32>(_wgslsmith_div_f32(1030f, -1068f), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.b, 26u)]), _wgslsmith_f_op_f32(1550f - global0[_wgslsmith_index_u32(u_input.b, 26u)]), _wgslsmith_div_f32(global0[_wgslsmith_index_u32(0u, 26u)], global0[_wgslsmith_index_u32(u_input.b, 26u)]))))), u_input.a.xyy, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1170f * 369f))));
    let var_1 = Struct_3(-2601f, func_6(func_5(Struct_3(global0[_wgslsmith_index_u32(~72052u, 26u)], !vec4<bool>(var_0.b.x, var_0.b.x, true, false), func_1()), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_0.a, 26u)]) != _wgslsmith_f_op_f32(-304f - 456f), _wgslsmith_sub_u32(var_0.a, 1u), func_4(Struct_3(global0[_wgslsmith_index_u32(18685u, 26u)], vec4<bool>(false, var_0.b.x, var_0.b.x, true), Struct_2(u_input.a, vec3<bool>(true, var_0.b.x, true), Struct_1(1u, vec3<bool>(false, false, false), var_0.c, u_input.a.yxw, 664f), vec4<i32>(u_input.a.x, -1i, 2147483647i, u_input.a.x), var_0.a)), vec3<bool>(var_0.b.x, var_0.b.x, false), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(44667u, 26u)]), var_0.b)), _wgslsmith_f_op_f32(629f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(min(221f, -832f)))), var_0.b.xy, func_4(Struct_3(_wgslsmith_f_op_f32(-var_0.c.x), select(vec4<bool>(var_0.b.x, true, var_0.b.x, false), vec4<bool>(false, false, true, true), var_0.b.x), func_1()), var_0.b, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(302f)), _wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(4294967295u, 26u)])))), vec3<bool>(var_0.b.x, true, var_0.b.x))), func_2(7302i));
    global0 = array<f32, 26>();
    global0 = array<f32, 26>();
    let var_2 = var_1.c;
    let var_3 = func_4(Struct_3(_wgslsmith_f_op_f32(-func_5(var_1, true, select(var_1.c.c.a, 1u, true), Struct_2(vec4<i32>(-10807i, -1067i, 42551i, 10379i), vec3<bool>(var_2.b.x, true, false), Struct_1(2073u, vec3<bool>(false, var_0.b.x, var_2.b.x), var_2.c.c, u_input.a.xzw, global0[_wgslsmith_index_u32(67385u, 26u)]), vec4<i32>(-1047i, var_0.d.x, 24510i, var_1.c.d.x), 1u)).c.c.x), var_1.b, Struct_2(var_2.d << (vec4<u32>(1u, 4294967295u, 0u, var_2.e) % vec4<u32>(32u)), var_0.b, func_2(reverseBits(var_1.c.d.x)).c, vec4<i32>(var_1.c.a.x, ~2147483647i, var_1.c.d.x & -29499i, max(var_1.c.d.x, -5334i)), _wgslsmith_sub_u32(_wgslsmith_add_u32(28865u, var_2.c.a), ~u_input.b))), vec3<bool>(false, true, func_5(var_1, all(select(vec4<bool>(var_1.c.b.x, var_0.b.x, false, true), vec4<bool>(true, var_1.b.x, true, true), var_1.c.c.b.x)), 26812u, var_1.c).c.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.c.c.c.x) * -175f), func_2(0i).b).e;
    let var_4 = ~abs(_wgslsmith_div_i32(u_input.a.x, -var_2.c.d.x)) | var_1.c.c.d.x;
    global1 = -57249i;
    let x = u_input.a;
    s_output = StorageBuffer(-1527f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.e, -118f, 187f, var_1.c.c.e), var_0.c, var_1.b.x)))))), var_0.d.zx, var_1.a);
}

