struct Struct_1 {
    a: vec2<f32>,
    b: f32,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: bool = false;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> bool {
    var var_0 = true;
    let var_1 = false;
    var var_2 = arg_0;
    let var_3 = var_2.c.x;
    let var_4 = !vec3<bool>(!any(select(vec3<bool>(var_1, var_1, true), vec3<bool>(var_1, true, true), false)), any(!select(vec4<bool>(false, true, true, var_1), vec4<bool>(true, var_1, true, true), var_1)), false);
    return true;
}

fn func_2() -> i32 {
    global1 = any(vec4<bool>(1i < global0.x, any(vec2<bool>(true, true)), func_3(Struct_1(vec2<f32>(1f, 1f), _wgslsmith_f_op_f32(f32(-1f) * -102f), vec2<f32>(-537f, 611f)), Struct_1(vec2<f32>(-1006f, 472f), _wgslsmith_f_op_f32(ceil(-215f)), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(448f, 1574f))))), any(!select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false)))));
    global0 = -(vec2<i32>(-1i) * -_wgslsmith_sub_vec2_i32(~vec2<i32>(global0.x, 1i), -vec2<i32>(37352i, -16790i)));
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(388f, -796f, true))))), _wgslsmith_div_f32(-765f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(2514f * -967f), _wgslsmith_f_op_f32(trunc(-2579f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-326f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-327f, -1084f))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(1027f, -1268f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(701f, -564f), vec2<f32>(-1029f, 1555f), vec2<bool>(true, true))))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-152f, 578f))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1821f, -304f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-700f, -1000f), vec2<f32>(496f, -595f))) * vec2<f32>(3256f, 586f)))));
    var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.c))))), _wgslsmith_f_op_f32(var_0.c.x * -159f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b, _wgslsmith_f_op_f32(-230f + -735f))));
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_0.b, var_0.b), vec2<f32>(var_0.a.x, -577f))), var_0.a)) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(var_0.c)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-284f, 2026f), var_0.c, false)), true))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.a + vec2<f32>(var_0.a.x, 357f)) * _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1000f, -1525f))))))), var_0.a.x, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-var_0.c), var_0.c)))), vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_0.c.x * var_0.b))), -316f))));
    return _wgslsmith_sub_i32(-countOneBits(_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(global0.x, -18153i, -1i), vec3<i32>(global0.x, 16864i, global0.x)), vec3<i32>(-25868i, 39273i, global0.x))), 0i);
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: vec3<i32>, arg_3: vec4<i32>) -> vec3<bool> {
    let var_0 = firstLeadingBit(min(abs(-70385i) & arg_3.x, _wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(arg_2, reverseBits(arg_3.zzw)), -_wgslsmith_mult_i32(-11370i, -1i), (arg_3.x | arg_0) & _wgslsmith_mult_i32(-1i, 21879i))));
    global1 = true;
    global1 = !all(select(select(vec3<bool>(false, false, false), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true)), vec3<bool>(true, true, true)), select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(false, true, false)), select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(true, false, false))), true));
    var var_1 = 539u;
    let var_2 = any(!(!vec4<bool>(all(vec4<bool>(true, true, false, true)), -2147483647i >= arg_0, true, true)));
    return vec3<bool>(!var_2, var_2, true);
}

fn func_1(arg_0: vec3<i32>, arg_1: vec3<f32>, arg_2: f32, arg_3: u32) -> vec2<bool> {
    var var_0 = func_4(_wgslsmith_sub_i32(i32(-1i) * -36852i, max(-30693i, func_2())), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_1.xz) + _wgslsmith_div_vec2_f32(arg_1.zx, vec2<f32>(arg_1.x, 134f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(-1000f)), 1231f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1490f, -290f)) + _wgslsmith_f_op_vec2_f32(-arg_1.yx)))), _wgslsmith_clamp_vec3_i32(reverseBits(arg_0), arg_0, arg_0), ~vec4<i32>(_wgslsmith_sub_i32(-arg_0.x, global0.x), _wgslsmith_dot_vec2_i32(vec2<i32>(8562i, global0.x), arg_0.yz), max(arg_0.x, arg_0.x ^ arg_0.x), i32(-1i) * -global0.x));
    var var_1 = global0.x;
    global0 = ~firstLeadingBit(-(_wgslsmith_add_vec2_i32(arg_0.yz, arg_0.yy) ^ vec2<i32>(0i, arg_0.x)));
    var_0 = func_4(arg_0.x, Struct_1(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(521f + arg_2) - _wgslsmith_f_op_f32(-arg_1.x)), -197f), -851f, vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_2), arg_2)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -983f)))), _wgslsmith_div_vec3_i32(arg_0, arg_0), _wgslsmith_mod_vec4_i32(~min(vec4<i32>(arg_0.x, global0.x, 8597i, -1i), vec4<i32>(global0.x, 32948i, 1i, -2147483647i)), vec4<i32>(~arg_0.x, _wgslsmith_add_i32(global0.x, arg_0.x), max(0i, 7916i), -2147483647i)) ^ -vec4<i32>(1i, ~2147483647i, 0i, global0.x & arg_0.x));
    global0 = _wgslsmith_sub_vec2_i32(vec2<i32>(~(-arg_0.x), global0.x), arg_0.yx);
    return var_0.yx;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = select(~vec2<i32>(reverseBits(global0.x), 28280i), ~vec2<i32>(_wgslsmith_add_i32(global0.x, -222i), i32(-1i) * -8751i), !func_1(vec3<i32>(68202i, -7113i, -63405i) ^ vec3<i32>(global0.x, global0.x, -38826i), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1000f, -1000f, -623f))), _wgslsmith_f_op_f32(-234f - -964f), ~u_input.a)) >> ((_wgslsmith_mult_vec2_u32(~_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(52805u, u_input.a), vec2<u32>(0u, 0u)), ~vec2<u32>(1u, u_input.a)) & max(vec2<u32>(~43025u, ~1774u), ~_wgslsmith_mult_vec2_u32(vec2<u32>(2358u, 7468u), vec2<u32>(0u, 6753u)))) % vec2<u32>(32u));
    var var_0 = Struct_1(vec2<f32>(1999f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-372f, 1209f)), _wgslsmith_f_op_f32(min(1744f, -1000f))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -461f)) - _wgslsmith_f_op_f32(sign(-741f))))), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -605f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-348f)) + _wgslsmith_f_op_f32(max(1624f, -644f)))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1000f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -675f), -339f, u_input.a <= 50829u)))));
    var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.c.x, var_0.b)))) * _wgslsmith_f_op_vec2_f32(select(var_0.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.c * vec2<f32>(1000f, 697f))), func_4(_wgslsmith_div_i32(global0.x, global0.x), Struct_1(var_0.a, 148f, vec2<f32>(var_0.b, 861f)), select(vec3<i32>(-1i, 2147483647i, global0.x), vec3<i32>(global0.x, 1i, 282i), true), ~vec4<i32>(global0.x, 10570i, global0.x, global0.x)).xy))), var_0.a.x, vec2<f32>(-411f, _wgslsmith_f_op_f32(var_0.b + var_0.a.x)));
    global1 = !((((global0.x >> (4294967295u % 32u)) & global0.x) <= global0.x) | (true && (u_input.a <= ~u_input.a)));
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(exp2(var_0.c)), -403f, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(1259f)), var_0.a.x) * _wgslsmith_f_op_vec2_f32(-var_0.c)))));
    global1 = true;
    var var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(min(-2828f, 1000f)), _wgslsmith_f_op_f32(var_1.a.x - var_0.a.x)))), _wgslsmith_f_op_f32(-634f - _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.x, 1003f))), _wgslsmith_f_op_vec2_f32(min(var_1.a, _wgslsmith_f_op_vec2_f32(-var_0.c))))), vec2<f32>(-1039f, var_0.c.x)));
    var var_3 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.c.x), _wgslsmith_div_f32(var_1.c.x, var_0.c.x)) * var_1.a.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1569f)), -945f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * 1508f)));
}

