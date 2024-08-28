struct Struct_1 {
    a: bool,
    b: vec4<i32>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec2<f32>,
}

struct Struct_4 {
    a: bool,
    b: f32,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<i32>,
    c: vec2<i32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec3<i32> = vec3<i32>(19888i, -5087i, 2377i);

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: u32, arg_1: f32, arg_2: bool, arg_3: i32) -> i32 {
    var var_0 = Struct_4(_wgslsmith_mult_i32(global1.x, global1.x) != 13415i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_1, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_1 + arg_1))), any(vec2<bool>(true, true)))) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-427f, 1000f) - _wgslsmith_div_f32(-325f, -1825f))))), Struct_2(-158f));
    var_0 = Struct_4(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)), Struct_2(_wgslsmith_f_op_f32(-466f + _wgslsmith_div_f32(_wgslsmith_div_f32(1000f, var_0.c.a), _wgslsmith_f_op_f32(arg_1 * -1277f)))));
    var_0 = Struct_4(arg_2, 2135f, var_0.c);
    var_0 = Struct_4(!any(vec4<bool>(all(vec2<bool>(var_0.a, true)), !global0.a, !arg_2, true)), _wgslsmith_div_f32(1257f, arg_1), var_0.c);
    let var_1 = _wgslsmith_sub_i32(reverseBits(16494i), 1i);
    return firstLeadingBit(~_wgslsmith_dot_vec3_i32(-_wgslsmith_sub_vec3_i32(vec3<i32>(var_1, global0.b.x, -2147483647i), vec3<i32>(1577i, -77429i, -2147483647i)), global0.b.zyz));
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_3) -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-222f, arg_1.b.x))));
    global1 = vec3<i32>(func_3(arg_0.x, var_0, !(!global0.a), global1.x), _wgslsmith_dot_vec2_i32(~(~global0.b.xw), vec2<i32>(-1i, -(i32(-1i) * -2147483647i))), global1.x);
    let var_1 = Struct_1(true, ~(countOneBits(vec4<i32>(global0.b.x, u_input.b, 0i, global1.x) ^ global0.b) ^ (_wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, global1.x, global1.x, -2147483647i), vec4<i32>(2147483647i, 16866i, -1i, global1.x), global0.b) | global0.b)));
    let var_2 = arg_0;
    let var_3 = 0u;
    return vec4<bool>(any(!select(vec2<bool>(var_1.a, global0.a), vec2<bool>(false, false), select(vec2<bool>(var_1.a, false), vec2<bool>(global0.a, false), var_1.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-985f))) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0, 910f, false))) + -1000f), true, any(select(vec3<bool>(false, !var_1.a, true), vec3<bool>(var_1.a, !global0.a, var_1.a), select(select(vec3<bool>(global0.a, false, false), vec3<bool>(true, false, false), global0.a), vec3<bool>(true, global0.a, false), vec3<bool>(true, true, true)))));
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_1) -> Struct_2 {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -694f) * _wgslsmith_f_op_f32(-218f + 232f)))))));
    let var_1 = -2256i;
    let var_2 = ~firstLeadingBit(~_wgslsmith_mod_vec4_u32(reverseBits(vec4<u32>(u_input.a, u_input.c, u_input.c, 33157u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(42344u, 154332u, u_input.c, 0u), vec4<u32>(1u, 93002u, 0u, u_input.a), vec4<u32>(37056u, u_input.a, u_input.c, u_input.a))));
    let var_3 = Struct_3(vec3<u32>(1u, select(4294967295u, 24473u, global0.a), 1u), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1145f, var_0.a))), vec2<f32>(var_0.a, var_0.a)) * vec2<f32>(_wgslsmith_div_f32(var_0.a, -1791f), var_0.a)), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a, _wgslsmith_f_op_f32(-var_0.a)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_0.a, -574f))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a, var_0.a) * vec2<f32>(var_0.a, 452f)))), !arg_0.xw)));
    let var_4 = var_3.a.x;
    return Struct_2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-2101f - _wgslsmith_f_op_f32(var_3.b.x + 1502f)), -182f)));
}

fn func_1(arg_0: vec2<f32>) -> vec2<i32> {
    global1 = reverseBits(_wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, _wgslsmith_clamp_i32(global1.x, global0.b.x, 2147483647i), -_wgslsmith_mult_i32(1655i, 23254i)), _wgslsmith_mult_vec3_i32(~abs(vec3<i32>(-2147483647i, global1.x, global1.x)), global0.b.xyy)));
    let var_0 = vec4<u32>(abs(1u), ~452u, u_input.c, 69040u);
    let var_1 = func_4(!func_2(firstLeadingBit(vec4<u32>(var_0.x, 4294967295u, u_input.c, 63806u)), Struct_3(var_0.wxx, _wgslsmith_f_op_vec2_f32(arg_0 * arg_0))), Struct_1(!global0.a, global0.b & _wgslsmith_mod_vec4_i32(~vec4<i32>(-66467i, 18982i, global0.b.x, -8345i), ~global0.b)));
    return vec2<i32>(~(-36163i), 25433i) ^ (global0.b.xw & abs(-vec2<i32>(u_input.b, -1917i)));
}

fn func_5(arg_0: vec2<i32>, arg_1: bool) -> bool {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(137f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(690f - 439f), 1f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(624f, _wgslsmith_div_f32(-405f, -668f))) * _wgslsmith_f_op_f32(-432f + _wgslsmith_f_op_f32(867f - -264f))) + _wgslsmith_f_op_f32(ceil(-1062f))), _wgslsmith_f_op_f32(-287f + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1380f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-663f - _wgslsmith_f_op_f32(-1024f * 1f))));
    var var_1 = -(i32(-1i) * -2147483647i);
    let var_2 = ~(~1u);
    var_1 = _wgslsmith_dot_vec2_i32(select(vec2<i32>(-50844i, _wgslsmith_mult_i32(func_1(vec2<f32>(var_0.x, 1848f)).x, ~(-29531i))), vec2<i32>(_wgslsmith_sub_i32(u_input.b, arg_0.x) >> (var_2 % 32u), _wgslsmith_mult_i32(arg_0.x << (u_input.a % 32u), ~(-1i))), !vec2<bool>(!arg_1, true)), arg_0);
    global0 = Struct_1(((true | global0.a) || true) && !(any(vec3<bool>(false, true, false)) && true), global0.b);
    return arg_1 && false;
}

fn func_6(arg_0: bool, arg_1: u32, arg_2: vec4<bool>) -> Struct_1 {
    var var_0 = ~_wgslsmith_clamp_vec2_u32(~vec2<u32>(arg_1, arg_1), vec2<u32>(u_input.c, 14320u) ^ _wgslsmith_mult_vec2_u32(firstLeadingBit(vec2<u32>(u_input.a, u_input.a)), ~vec2<u32>(arg_1, u_input.a)), vec2<u32>(89665u, 4294967295u) | _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.c, 4209u), countOneBits(vec2<u32>(56755u, arg_1))));
    var var_1 = global0.b.yw;
    let var_2 = _wgslsmith_dot_vec2_i32(max(vec2<i32>(u_input.b, global1.x), reverseBits(abs(vec2<i32>(34114i, -6022i)))), vec2<i32>(~_wgslsmith_mod_i32(~0i, _wgslsmith_dot_vec2_i32(vec2<i32>(0i, global0.b.x), global0.b.yx)), 1i));
    var var_3 = Struct_4(all(!arg_2.yyx), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-2553f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1050f), _wgslsmith_f_op_f32(-237f + 1152f)))) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(-1000f, -1077f))))))), Struct_2(-1035f));
    let var_4 = _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(-var_3.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-740f + 760f)))));
    return Struct_1(!(!func_2(vec4<u32>(u_input.c, 4294967295u, u_input.a, 28096u), Struct_3(vec3<u32>(0u, 17547u, arg_1), vec2<f32>(631f, var_4.x))).x || true), vec4<i32>(-20490i, 22966i, ~(-global0.b.x), -48438i) & (max(-global0.b, ~vec4<i32>(2147483647i, 1i, global1.x, -36737i)) & _wgslsmith_clamp_vec4_i32(~vec4<i32>(u_input.b, 1i, 5817i, u_input.b), vec4<i32>(var_2, global0.b.x, -22706i, -2147483647i), ~vec4<i32>(49548i, var_2, 3969i, var_1.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec3<i32>(_wgslsmith_mult_i32(_wgslsmith_add_i32(-global1.x, -25940i), 46164i), 2147483647i, global0.b.x);
    global0 = func_6(false & global0.a, 1u, vec4<bool>(all(select(!vec2<bool>(true, global0.a), !vec2<bool>(global0.a, true), !vec2<bool>(false, global0.a))), any(select(vec4<bool>(global0.a, false, false, global0.a), select(vec4<bool>(false, global0.a, false, global0.a), vec4<bool>(true, global0.a, false, true), vec4<bool>(global0.a, false, false, global0.a)), any(vec4<bool>(global0.a, false, global0.a, false)))), func_5(func_1(_wgslsmith_div_vec2_f32(vec2<f32>(1149f, 230f), vec2<f32>(-465f, 949f))), true), false));
    let var_0 = true;
    global0 = Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-636f, 1449f))))) != _wgslsmith_f_op_f32(-269f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-750f)))), -vec4<i32>(37874i, max(-19429i, 41360i), ~(-global1.x), -u_input.b));
    global1 = ~countOneBits(-(firstLeadingBit(global0.b.yzy) << (~vec3<u32>(0u, u_input.c, u_input.a) % vec3<u32>(32u))));
    var var_1 = global0.b.xy;
    let var_2 = firstTrailingBit(global0.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-347f, -1000f, 1383f))))))), countOneBits(func_6(true, abs(_wgslsmith_add_u32(u_input.c, 4294967295u)), vec4<bool>(any(vec4<bool>(var_0, var_0, global0.a, global0.a)), all(vec4<bool>(var_0, var_0, global0.a, true)), !var_0, false)).b.zyy), vec2<i32>(-1i, global0.b.x), abs(-_wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, u_input.b, var_1.x, 2147483647i), var_2) ^ select(min(global0.b, var_2), global0.b, var_0)));
}

