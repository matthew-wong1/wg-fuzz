struct Struct_1 {
    a: vec2<i32>,
    b: f32,
    c: vec2<f32>,
    d: u32,
    e: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> i32 {
    let var_0 = Struct_1(-select(max(countOneBits(vec2<i32>(17830i, 1i)), vec2<i32>(-1i, 21135i) >> (vec2<u32>(0u, 1u) % vec2<u32>(32u))), vec2<i32>(_wgslsmith_sub_i32(2147483647i, 0i), 1i), select(!vec2<bool>(false, global0.x), select(global0.yx, global0.zx, global0.x), global0.zz)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1331f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1671f, 168f)), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1620f, 125f), vec2<f32>(621f, -592f))))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, -1000f) + vec2<f32>(-817f, -665f)), _wgslsmith_div_vec2_f32(vec2<f32>(-564f, -625f), vec2<f32>(-1000f, -174f)))), any(vec3<bool>(false, true, global0.x))))), _wgslsmith_dot_vec4_u32(max(~vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, u_input.a.x) ^ vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 6859u), ~vec4<u32>(16207u, 1u, u_input.a.x, u_input.a.x)), ~vec4<u32>(u_input.a.x, ~u_input.a.x, ~0u, select(1u, 4294967295u, false))), false);
    global0 = vec3<bool>(global0.x, !select(global0.x || var_0.e, true, var_0.a.x <= abs(var_0.a.x)), all(vec4<bool>(var_0.e, -var_0.a.x == var_0.a.x, true, true)));
    global0 = vec3<bool>(true, true, true);
    var var_1 = var_0;
    var var_2 = vec4<i32>(7418i, 2147483647i, 2147483647i, abs(-countOneBits(-2147483647i)));
    return 0i;
}

fn func_4(arg_0: Struct_1, arg_1: vec2<i32>) -> vec2<i32> {
    global0 = !(!(!(!(!vec3<bool>(false, arg_0.e, arg_0.e)))));
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.c.x * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(558f, 557f))))) * arg_0.c.x) * arg_0.b);
    let var_1 = _wgslsmith_f_op_f32(-var_0);
    let var_2 = arg_0;
    var var_3 = var_2.d;
    return abs(abs(_wgslsmith_sub_vec2_i32(select(vec2<i32>(-8568i, -24766i), -var_2.a, arg_0.e), var_2.a)));
}

fn func_2(arg_0: i32, arg_1: Struct_1, arg_2: f32, arg_3: vec4<i32>) -> i32 {
    let var_0 = arg_3;
    global0 = select(!vec3<bool>(select(true, any(vec3<bool>(arg_1.e, arg_1.e, true)), true), arg_1.e, all(!global0.zy)), !(!(!vec3<bool>(false, global0.x, global0.x))), all(global0.yx) && !(!(!arg_1.e)));
    let var_1 = Struct_1(func_4(arg_1, vec2<i32>(func_3(), 2147483647i)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1000f + -681f))), arg_1.c, ~(u_input.a.x & _wgslsmith_mod_u32(51402u, _wgslsmith_mod_u32(40132u, arg_1.d))), !arg_1.e);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(arg_2, -505f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2)))) - _wgslsmith_div_f32(1153f, var_1.c.x)));
    var var_3 = var_2;
    return _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(arg_3.xwy, _wgslsmith_div_vec3_i32(vec3<i32>(arg_0, 3339i, 0i ^ arg_3.x), _wgslsmith_sub_vec3_i32(vec3<i32>(var_1.a.x, 33879i, var_1.a.x), ~vec3<i32>(0i, var_0.x, 8722i)))), abs(countOneBits(-arg_0 ^ (-15497i << (var_1.d % 32u)))));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: u32) -> Struct_1 {
    var var_0 = _wgslsmith_sub_i32(~(~func_2(-45526i, arg_2, _wgslsmith_f_op_f32(-1408f * 870f), ~vec4<i32>(arg_1.a.x, 14172i, -36023i, arg_0.a.x))), arg_2.a.x);
    let var_1 = vec2<bool>(_wgslsmith_sub_i32(_wgslsmith_add_i32(abs(arg_1.a.x), abs(1i)), arg_1.a.x) != ~(-2147483647i), _wgslsmith_f_op_f32(-arg_1.b) > _wgslsmith_f_op_f32(-418f * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_1.c.x - -401f)))));
    let var_2 = Struct_1(min(vec2<i32>(arg_0.a.x, i32(-1i) * -8771i), arg_2.a), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(arg_0.c.x)), _wgslsmith_f_op_f32(step(-1528f, 170f)))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(arg_2.c)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, -754f) * vec2<f32>(908f, arg_2.c.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.b, arg_1.c.x)))), vec2<f32>(_wgslsmith_f_op_f32(min(-804f, -438f)), _wgslsmith_f_op_f32(arg_0.c.x + arg_1.c.x)))), _wgslsmith_mult_u32(~countOneBits(arg_2.d), u_input.a.x), !arg_2.e);
    global0 = !(!vec3<bool>(false, (var_1.x & false) & true, any(!global0.yx)));
    global0 = !(!(!(!select(vec3<bool>(arg_1.e, var_1.x, false), vec3<bool>(var_1.x, arg_1.e, false), true))));
    return arg_2;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1) -> f32 {
    let var_0 = ~_wgslsmith_div_u32(1u ^ u_input.a.x, _wgslsmith_dot_vec4_u32(select(_wgslsmith_sub_vec4_u32(vec4<u32>(7403u, 27968u, u_input.a.x, 0u), vec4<u32>(0u, u_input.a.x, 1u, arg_0.d)), abs(vec4<u32>(48988u, 4294967295u, arg_1.d, 1u)), u_input.a.x > 0u), firstLeadingBit(~vec4<u32>(arg_0.d, 0u, u_input.a.x, arg_0.d))));
    var var_1 = func_1(arg_0, arg_0, arg_1, _wgslsmith_sub_u32(~_wgslsmith_mult_u32(max(4294967295u, var_0), ~u_input.a.x), arg_0.d));
    var var_2 = Struct_1(-countOneBits(arg_0.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-431f, 205f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_1.b, -1000f)))) - -432f), _wgslsmith_f_op_vec2_f32(vec2<f32>(463f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-945f, -1000f)) - _wgslsmith_div_f32(arg_1.b, -223f))) + _wgslsmith_f_op_vec2_f32(max(arg_1.c, _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.c.x, 626f))))))), _wgslsmith_mod_u32(~var_0, var_1.d), select(!(select(true, arg_1.e, arg_1.e) || (arg_1.b <= -1000f)), true, var_1.e));
    let var_3 = func_1(Struct_1(_wgslsmith_div_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(42901i, -1i), var_1.a), ~abs(vec2<i32>(-30761i, arg_0.a.x))), -220f, vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(var_1.c.x, var_2.b, true)), 876f, true)), -842f), 21971u, true), func_1(arg_1, func_1(Struct_1(~arg_1.a, arg_0.c.x, _wgslsmith_f_op_vec2_f32(-vec2<f32>(334f, 1442f)), var_0, false), arg_1, arg_0, countOneBits(~45260u)), func_1(func_1(func_1(Struct_1(arg_0.a, var_1.b, vec2<f32>(var_2.c.x, var_1.c.x), var_0, arg_1.e), arg_1, arg_0, 0u), func_1(Struct_1(arg_0.a, var_1.b, vec2<f32>(var_1.b, -1096f), arg_0.d, var_2.e), arg_1, Struct_1(var_1.a, var_2.b, arg_1.c, var_2.d, false), arg_0.d), arg_0, arg_1.d | var_1.d), Struct_1(select(arg_1.a, vec2<i32>(14974i, 0i), vec2<bool>(arg_1.e, false)), _wgslsmith_f_op_f32(min(var_2.c.x, var_1.c.x)), _wgslsmith_div_vec2_f32(arg_1.c, vec2<f32>(714f, 960f)), ~var_2.d, !global0.x), arg_1, ~10607u), var_2.d), Struct_1(vec2<i32>((var_1.a.x >> (u_input.a.x % 32u)) << (4294967295u % 32u), var_2.a.x), -1972f, _wgslsmith_f_op_vec2_f32(-var_2.c), arg_1.d & ~(~103509u), true), 0u);
    var var_4 = Struct_1(_wgslsmith_sub_vec2_i32(var_2.a, -(var_3.a >> (vec2<u32>(var_1.d, 1u) % vec2<u32>(32u)))) & var_2.a, _wgslsmith_f_op_f32(exp2(var_3.b)), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-694f, var_1.b)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-443f, -113f)))))), ~((_wgslsmith_sub_u32(u_input.a.x, 16316u) | countOneBits(4294967295u)) ^ 27861u), var_2.e);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -742f));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec3<bool>(true, true, global0.x);
    let var_0 = Struct_1(_wgslsmith_clamp_vec2_i32(-(vec2<i32>(-2147483647i, -45961i) >> (vec2<u32>(u_input.a.x, 1u) % vec2<u32>(32u))), vec2<i32>(1i, -(~0i)), _wgslsmith_mult_vec2_i32(vec2<i32>(1i, 1i), select(~vec2<i32>(0i, 0i), -vec2<i32>(2147483647i, -2147483647i), false))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_5(Struct_1(vec2<i32>(-2147483647i, -1i), 1917f, vec2<f32>(-2775f, -599f), 4294967295u, false), func_1(Struct_1(vec2<i32>(0i, -2147483647i), -256f, vec2<f32>(991f, -1052f), u_input.a.x, false), Struct_1(vec2<i32>(-1i, 32499i), -283f, vec2<f32>(543f, -1228f), 4294967295u, false), Struct_1(vec2<i32>(-1i, -31404i), 163f, vec2<f32>(-740f, 1085f), 113315u, global0.x), 1u))) + 980f) - 500f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1070f, 793f)) + _wgslsmith_f_op_vec2_f32(floor(func_1(Struct_1(vec2<i32>(-2147483647i, 35708i), 1000f, vec2<f32>(-2150f, 107f), u_input.a.x, global0.x), Struct_1(vec2<i32>(0i, 32224i), 583f, vec2<f32>(1213f, -838f), u_input.a.x, false), Struct_1(vec2<i32>(0i, 10160i), 623f, vec2<f32>(-816f, 655f), 4294967295u, true), u_input.a.x).c)))), max(~(~countOneBits(u_input.a.x)), 23751u), !(u_input.a.x >= max(~37400u, 4294967295u)));
    let var_1 = var_0;
    global0 = select(vec3<bool>(var_1.e, -751f != var_1.b, true), vec3<bool>(any(vec3<bool>(!var_1.e, all(vec4<bool>(false, false, false, var_0.e)), true)), select(all(vec3<bool>(var_1.e, var_1.e, var_1.e)) || var_1.e, var_1.e, (var_1.a.x & var_1.a.x) > _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, var_1.a.x, var_0.a.x, var_1.a.x), vec4<i32>(-3792i, var_0.a.x, var_0.a.x, var_0.a.x))), false), vec3<bool>(global0.x, false, var_1.e | !all(vec4<bool>(var_1.e, global0.x, var_1.e, false))));
    global0 = vec3<bool>(true, 914f > _wgslsmith_f_op_f32(max(var_0.c.x, _wgslsmith_f_op_f32(func_5(func_1(Struct_1(vec2<i32>(0i, var_1.a.x), var_0.b, vec2<f32>(var_1.c.x, var_1.c.x), var_0.d, true), var_0, Struct_1(var_0.a, var_0.c.x, vec2<f32>(var_1.b, var_0.c.x), u_input.a.x, var_0.e), u_input.a.x), var_0)))), var_1.e);
    var var_2 = Struct_1(var_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f))), vec2<f32>(1400f, -921f), _wgslsmith_div_u32(~u_input.a.x, ~1u), var_1.e == !all(select(vec3<bool>(var_0.e, false, false), vec3<bool>(true, true, true), var_0.e)));
    var var_3 = func_1(var_1, var_1, var_1, 97493u);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(127f, _wgslsmith_f_op_f32(-141f * 381f)));
}

