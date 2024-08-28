struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: i32,
    d: vec4<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec3<f32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: f32, arg_1: Struct_2) -> vec4<f32> {
    let var_0 = ~vec2<u32>(u_input.a.x << (~(~50140u) % 32u), arg_1.a.a << (_wgslsmith_sub_u32(arg_1.a.a ^ arg_1.a.a, 4294967295u) % 32u));
    var var_1 = Struct_1(firstLeadingBit(_wgslsmith_div_u32(4294967295u, var_0.x)));
    global0 = vec4<f32>(-239f, _wgslsmith_f_op_f32(round(arg_0)), global0.x, _wgslsmith_f_op_f32(select(global0.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(-934f - -1000f)))), arg_1.d.x)));
    var var_2 = Struct_2(arg_1.a, all(!vec2<bool>(!arg_1.b, false)), i32(-1i) * -35478i, !(!vec4<bool>(all(arg_1.d.zyz), arg_1.b, false | arg_1.d.x, arg_1.b)));
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_0, global0.x, arg_0, -1758f))))) * _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1019f, 197f, arg_0, arg_0) * vec4<f32>(984f, global0.x, arg_0, 348f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.x, arg_0, -372f, 993f), vec4<f32>(global0.x, arg_0, global0.x, global0.x), false))))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, _wgslsmith_f_op_f32(global0.x - -1602f), _wgslsmith_f_op_f32(-arg_0)))));
    return vec4<f32>(_wgslsmith_f_op_f32(ceil(-715f)), global0.x, arg_0, _wgslsmith_f_op_f32(arg_0 * arg_0));
}

fn func_2() -> Struct_2 {
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(-922f, 1000f, true)))), _wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(global0.x + -1087f)), 1029f, global0.x))) + _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(-254f, Struct_2(Struct_1(u_input.a.x), false, -49499i, vec4<bool>(true, false, false, false)))), vec4<f32>(global0.x, 1440f, -453f, global0.x)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(311f, -150f, global0.x, -1797f) - vec4<f32>(global0.x, global0.x, -313f, global0.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, global0.x, 791f))))))));
    global0 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(-770f)))), 1000f, global0.x, -1296f), vec4<f32>(_wgslsmith_f_op_f32(trunc(418f)), global0.x, global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(global0.x)), 733f)))), false));
    let var_0 = 1u;
    var var_1 = -52876i;
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(global0.x, Struct_2(Struct_1(var_0), true, -1i, vec4<bool>(false, false, false, false)))))));
    return Struct_2(Struct_1(var_0 & 1u), ~max(1i, 1i) != _wgslsmith_div_i32(_wgslsmith_clamp_i32(-7788i, 2147483647i >> (var_0 % 32u), 2625i), _wgslsmith_mult_i32(_wgslsmith_div_i32(63776i, -2147483647i), _wgslsmith_dot_vec4_i32(vec4<i32>(-24364i, -480i, -1i, 16715i), vec4<i32>(2147483647i, -27323i, -1i, -48081i)))), 1i, vec4<bool>(false, false, true && all(vec2<bool>(true, true)), (any(vec2<bool>(false, false)) || true) && any(vec2<bool>(true, true))));
}

fn func_4(arg_0: vec4<i32>, arg_1: i32, arg_2: Struct_2, arg_3: i32) -> f32 {
    var var_0 = arg_2;
    let var_1 = vec3<bool>(var_0.b, false, !var_0.b);
    var var_2 = _wgslsmith_div_u32(~arg_2.a.a, min(23977u, ~(~14909u)));
    var_0 = func_2();
    var_0 = arg_2;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_vec4_f32(func_3(500f, func_2())).x)))));
}

fn func_1(arg_0: i32) -> Struct_3 {
    let var_0 = false;
    global0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(func_4(vec4<i32>(-15577i, 1i, firstTrailingBit(-2147483647i), -arg_0), -arg_0, func_2(), arg_0)), _wgslsmith_f_op_f32(-1619f + global0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x - -3025f)) * 1896f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1115f * -1106f) - _wgslsmith_f_op_f32(max(global0.x, -581f))) + _wgslsmith_f_op_f32(func_4(vec4<i32>(1i, arg_0, 1i, arg_0) >> (vec4<u32>(1u, u_input.a.x, u_input.a.x, u_input.a.x) % vec4<u32>(32u)), arg_0, Struct_2(Struct_1(1u), var_0, arg_0, vec4<bool>(false, true, false, var_0)), countOneBits(-1i))))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(exp2(global0.x)))) * global0.x));
    var_1 = global0.x;
    let var_2 = func_2();
    return Struct_3(Struct_1(~(~(var_2.a.a >> (1u % 32u)))), var_2.c, func_2().d.zwx);
}

fn func_5(arg_0: vec4<i32>, arg_1: vec3<f32>, arg_2: Struct_3) -> vec2<i32> {
    var var_0 = u_input.a.x;
    let var_1 = reverseBits(~vec2<i32>(-(arg_2.b << (47947u % 32u)), i32(-1i) * -1i));
    var var_2 = arg_0.x;
    var var_3 = func_1(1i);
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(func_3(-727f, func_2())))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, _wgslsmith_f_op_f32(floor(global0.x)), global0.x, _wgslsmith_f_op_f32(sign(global0.x))) + _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global0.x, global0.x, arg_1.x, global0.x)))))) + vec4<f32>(778f, -444f, _wgslsmith_f_op_f32(ceil(global0.x)), _wgslsmith_div_f32(-179f, _wgslsmith_f_op_f32(ceil(846f))))));
    return var_1;
}

fn func_6(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: Struct_3, arg_3: i32) -> Struct_1 {
    global0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1250f, 861f, global0.x, 569f))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(385f + global0.x), global0.x)), _wgslsmith_f_op_vec4_f32(func_3(-909f, Struct_2(Struct_1(30027u), true, -2147483647i, vec4<bool>(arg_2.c.x, arg_2.c.x, arg_2.c.x, true)))).x, _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -887f) - -957f))), !vec4<bool>(arg_2.c.x, arg_2.c.x, func_1(arg_2.b).c.x, select(!arg_2.c.x, arg_2.c.x, arg_2.c.x))));
    let var_0 = Struct_3(func_1(arg_0.x).a, arg_3, vec3<bool>(true, _wgslsmith_sub_i32(-arg_2.b, countOneBits(arg_2.b)) <= select(arg_0.x, _wgslsmith_add_i32(arg_2.b, 2147483647i), !arg_2.c.x), false));
    var var_1 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(floor(global0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global0.x, -745f)) + 1149f), 886f, -1493f)))));
    let var_2 = ~firstLeadingBit(_wgslsmith_mod_vec3_u32(vec3<u32>(arg_2.a.a, 4294967295u, 2736u) << (vec3<u32>(u_input.a.x, arg_1.a, var_0.a.a) % vec3<u32>(32u)), vec3<u32>(u_input.a.x, _wgslsmith_div_u32(0u, var_0.a.a), 25260u)));
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(-258f, func_2())) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(209f, 308f, var_1.x, var_1.x)))), vec4<f32>(_wgslsmith_f_op_f32(-1000f * -1505f), 1364f, global0.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(1464f, 846f, arg_2.c.x)))))));
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(u_input.a.x);
    var var_1 = Struct_3(func_6(_wgslsmith_sub_vec2_i32(-min(vec2<i32>(-972i, -12699i), vec2<i32>(13639i, 34441i)), func_5(vec4<i32>(1i, 1i, -26897i, 24055i), _wgslsmith_f_op_vec3_f32(vec3<f32>(284f, -1317f, -1000f) + vec3<f32>(global0.x, 850f, 165f)), func_1(0i))), Struct_1(var_0.a), func_1(func_1(firstLeadingBit(-38585i)).b), _wgslsmith_clamp_i32(countOneBits(min(13649i, -22249i)), max(_wgslsmith_mod_i32(1i, -2147483647i), ~(-2147483647i)), -1i)), 19890i, !select(vec3<bool>(all(vec2<bool>(false, false)), true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)));
    var_0 = Struct_1(_wgslsmith_sub_u32(~u_input.a.x, var_1.a.a));
    var_0 = func_6(max(max(-vec2<i32>(var_1.b, 33093i), ~(vec2<i32>(var_1.b, -1i) ^ vec2<i32>(var_1.b, 2147483647i))), vec2<i32>(2147483647i, -21621i)), func_2().a, func_1(2147483647i), -21397i >> ((u_input.a.x & ~_wgslsmith_sub_u32(u_input.a.x, var_0.a)) % 32u));
    let var_2 = var_1.c.x && (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1765f))) >= -695f);
    var var_3 = Struct_2(var_1.a, any(vec4<bool>(var_2, !(!var_1.c.x), var_1.c.x, var_0.a <= ~77589u)), 2147483647i, select(vec4<bool>(true, any(vec2<bool>(false, var_2)), true, !all(var_1.c.yx)), !select(vec4<bool>(false, var_1.c.x, var_2, var_2), vec4<bool>(true, true, true, true), true), any(func_1(var_1.b).c)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_u32(~(abs(vec4<u32>(49278u, var_0.a, 4294967295u, 57063u)) ^ vec4<u32>(14055u, 7874u, 65941u, var_1.a.a)), vec4<u32>(u_input.a.x, _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a.x, u_input.a.x), _wgslsmith_mult_vec2_u32(vec2<u32>(var_3.a.a, 1u), vec2<u32>(7204u, 355u))), ~(~9079u), ~var_0.a >> (var_0.a % 32u))), _wgslsmith_mod_i32(-2147483647i, ~0i), global0.wyy, ~max(-select(vec3<i32>(-1i, var_1.b, 2147483647i), vec3<i32>(61760i, -34200i, 0i), true), abs(min(vec3<i32>(var_3.c, 2147483647i, 10563i), vec3<i32>(var_1.b, var_3.c, var_1.b)))));
}

