struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: f32,
    d: bool,
}

struct Struct_3 {
    a: bool,
    b: vec4<f32>,
    c: f32,
    d: vec4<f32>,
}

struct Struct_4 {
    a: f32,
    b: i32,
    c: bool,
}

struct Struct_5 {
    a: bool,
    b: i32,
    c: bool,
    d: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_4) -> vec4<bool> {
    global0 = -vec2<i32>(arg_0.b, abs(_wgslsmith_div_i32(global0.x, global0.x))) ^ abs(_wgslsmith_mult_vec2_i32(vec2<i32>(abs(0i), arg_0.b), -vec2<i32>(93085i, arg_0.b)));
    let var_0 = Struct_3(u_input.a >= u_input.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(-1304f)), _wgslsmith_f_op_f32(floor(arg_0.a)), 599f, arg_0.a)) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a, arg_0.a, arg_0.a, -1235f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1857f, arg_0.a, arg_0.a, 780f)))), arg_0.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0.a, _wgslsmith_f_op_f32(-arg_0.a), _wgslsmith_f_op_f32(min(arg_0.a, arg_0.a)), 1f), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_0.a, arg_0.a, arg_0.a, 415f))))), vec4<bool>(any(vec2<bool>(arg_0.c, false)), true & arg_0.c, arg_0.c, arg_0.c))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(exp2(arg_0.a)), _wgslsmith_f_op_f32(step(arg_0.a, arg_0.a)), _wgslsmith_f_op_f32(max(150f, -746f)), _wgslsmith_div_f32(arg_0.a, 144f)) * _wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_0.a, -237f, -1074f, arg_0.a), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-523f, -2225f, arg_0.a, arg_0.a), vec4<f32>(-1171f, 380f, arg_0.a, -1072f))))))));
    let var_1 = _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_0.c, arg_0.a)));
    global0 = vec2<i32>(1i, 30994i);
    var var_2 = 70233u;
    return select(select(vec4<bool>(true, !any(vec3<bool>(arg_0.c, false, var_0.a)), arg_0.c, !all(vec3<bool>(arg_0.c, arg_0.c, arg_0.c))), select(select(vec4<bool>(var_0.a, true, arg_0.c, var_0.a), !vec4<bool>(true, var_0.a, false, var_0.a), true), !(!vec4<bool>(var_0.a, arg_0.c, false, arg_0.c)), select(vec4<bool>(false, arg_0.c, false, false), select(vec4<bool>(true, true, false, var_0.a), vec4<bool>(var_0.a, true, false, arg_0.c), vec4<bool>(true, false, var_0.a, false)), var_0.a)), arg_0.c), select(select(vec4<bool>(all(vec3<bool>(false, arg_0.c, var_0.a)), !var_0.a, false, all(vec4<bool>(arg_0.c, false, false, var_0.a))), select(select(vec4<bool>(arg_0.c, true, true, false), vec4<bool>(var_0.a, var_0.a, true, false), vec4<bool>(arg_0.c, true, false, var_0.a)), vec4<bool>(true, true, arg_0.c, var_0.a), !vec4<bool>(true, true, false, var_0.a)), true), select(vec4<bool>(true, false, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(var_0.a, true, arg_0.c, var_0.a), all(vec3<bool>(arg_0.c, false, false))), true), !select(select(vec4<bool>(arg_0.c, var_0.a, arg_0.c, var_0.a), vec4<bool>(true, arg_0.c, arg_0.c, var_0.a), arg_0.c), vec4<bool>(var_0.a, false, arg_0.c, false), all(vec3<bool>(false, arg_0.c, false)))), !any(vec2<bool>(true, true)));
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_2(any(!select(select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true)), func_3(Struct_4(1109f, -13069i, true)), false)), Struct_1(func_3(Struct_4(-1574f, 1i, true)).xy), 1387f, all(!vec4<bool>(true, u_input.a < 1u, true, false)));
    var var_1 = Struct_2(true | var_0.a, Struct_1(vec2<bool>(var_0.d || var_0.b.a.x, var_0.b.a.x)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.c))), false);
    let var_2 = var_1.b.a;
    var_1 = Struct_2(all(!var_0.b.a) && true, var_0.b, var_1.c, any(vec4<bool>(any(vec3<bool>(true, var_2.x, false)), var_2.x, var_0.b.a.x | var_2.x, u_input.a == u_input.a)) || false);
    let var_3 = _wgslsmith_f_op_f32(max(994f, _wgslsmith_f_op_f32(var_1.c + -582f)));
    return var_1.b;
}

fn func_4(arg_0: Struct_1) -> i32 {
    global0 = firstTrailingBit(-vec2<i32>(firstTrailingBit(27822i), -(~global0.x)));
    let var_0 = u_input.a;
    var var_1 = Struct_1(select(vec2<bool>(true, false), func_2().a, false));
    var var_2 = Struct_2(arg_0.a.x, Struct_1(select(!select(var_1.a, arg_0.a, vec2<bool>(arg_0.a.x, arg_0.a.x)), vec2<bool>(true, true), _wgslsmith_f_op_f32(step(1000f, 2092f)) != -1718f)), 888f, func_2().a.x);
    let var_3 = _wgslsmith_clamp_vec2_i32(vec2<i32>(global0.x ^ _wgslsmith_mod_i32(global0.x, 46412i), _wgslsmith_clamp_i32(-(~40148i), -2147483647i, _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(global0.x, global0.x), vec2<i32>(global0.x, -2147483647i)), 2147483647i))), _wgslsmith_div_vec2_i32(max(reverseBits(-vec2<i32>(-1i, -1i)), vec2<i32>(global0.x, _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 0i), vec2<i32>(-1i, global0.x)))), vec2<i32>(~2458i, 3510i)), vec2<i32>(global0.x, global0.x));
    return global0.x;
}

fn func_1(arg_0: i32) -> i32 {
    global0 = vec2<i32>(~(-13618i), func_4(func_2()));
    var var_0 = ~_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(select(vec2<u32>(14963u, 13279u), countOneBits(vec2<u32>(0u, 13622u)), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true))), vec2<u32>(43299u & u_input.a, ~30063u)), ~(~vec2<u32>(1u, u_input.a) << (vec2<u32>(u_input.a, 1u) % vec2<u32>(32u))));
    var_0 = ~_wgslsmith_add_u32(u_input.a, ~10631u);
    let var_1 = select(reverseBits(~(~vec4<u32>(0u, u_input.a, u_input.a, 1628u))) << (~max(vec4<u32>(u_input.a, u_input.a, 22547u, u_input.a) >> (vec4<u32>(5921u, 4294967295u, 0u, u_input.a) % vec4<u32>(32u)), reverseBits(vec4<u32>(41671u, u_input.a, 4294967295u, u_input.a))) % vec4<u32>(32u)), ~vec4<u32>(_wgslsmith_mod_u32(u_input.a, u_input.a), ~u_input.a, select(u_input.a, 24411u, true), 18254u) ^ vec4<u32>(76125u, 40803u, min(_wgslsmith_add_u32(u_input.a, u_input.a), 25469u), u_input.a), !any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false)))));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-383f, _wgslsmith_f_op_f32(step(-1472f, 312f)))) * _wgslsmith_f_op_f32(1663f + -1000f));
    return 1i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(vec2<bool>(-50963i < -(global0.x << (u_input.a % 32u)), true));
    global0 = vec2<i32>(_wgslsmith_mod_i32(2545i, _wgslsmith_sub_i32(_wgslsmith_clamp_i32(-global0.x, 52355i, func_1(global0.x)), ~(-global0.x))), 1i);
    let var_1 = global0.x;
    global0 = select(~vec2<i32>(global0.x, (6963i >> (u_input.a % 32u)) | 2147483647i), firstLeadingBit(_wgslsmith_add_vec2_i32(~select(vec2<i32>(global0.x, -19439i), vec2<i32>(global0.x, -1i), true), ~_wgslsmith_mod_vec2_i32(vec2<i32>(-1i, -38608i), vec2<i32>(1i, -2147483647i)))), !func_3(Struct_4(_wgslsmith_f_op_f32(min(1076f, 482f)), global0.x, false)).zw);
    var_0 = func_2();
    var_0 = Struct_1(func_3(Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2092f)), -_wgslsmith_sub_i32(-49807i, global0.x), all(vec2<bool>(false, false)))).wy);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(-130f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(338f * -547f))), _wgslsmith_f_op_f32(trunc(-885f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(232f, -923f)) - _wgslsmith_f_op_f32(ceil(585f))))), max(~(-1i), _wgslsmith_dot_vec4_i32(~select(vec4<i32>(global0.x, 24828i, 2147483647i, 43499i), vec4<i32>(global0.x, global0.x, -19809i, 2147483647i), var_0.a.x), ~_wgslsmith_clamp_vec4_i32(vec4<i32>(-3838i, 8901i, -2147483647i, global0.x), vec4<i32>(30404i, 78059i, global0.x, 0i), vec4<i32>(global0.x, -47785i, -26040i, -1i)))));
}

