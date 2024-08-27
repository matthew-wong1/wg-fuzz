struct Struct_1 {
    a: bool,
    b: i32,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec2<bool>,
    c: vec3<bool>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<i32>,
    c: Struct_3,
    d: f32,
    e: f32,
}

struct Struct_5 {
    a: Struct_1,
    b: vec3<f32>,
    c: Struct_3,
    d: u32,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: Struct_4) -> vec3<i32> {
    var var_0 = 4294967295u;
    let var_1 = Struct_1(arg_2.c.b.x, -8873i, _wgslsmith_f_op_f32(arg_0.a.c * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -262f))))));
    var var_2 = min(~min(firstTrailingBit(arg_2.c.a) << ((arg_2.c.a >> (arg_2.c.a % vec4<u32>(32u))) % vec4<u32>(32u)), vec4<u32>(u_input.a, arg_2.c.a.x, 16490u, 1u) >> (arg_2.c.a % vec4<u32>(32u))), select(select(arg_2.c.a, arg_2.c.a, true), arg_2.c.a, true) >> (arg_2.c.a % vec4<u32>(32u)));
    var_0 = var_2.x;
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(var_1.c * _wgslsmith_f_op_f32(-530f * -125f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0.b.c))), 686f, max(~u_input.a, _wgslsmith_mod_u32(arg_2.c.a.x, 82441u)) <= (var_2.x & max(var_2.x, 15325u)))), _wgslsmith_f_op_f32(min(var_1.c, 1072f)));
    return vec3<i32>(1081i, _wgslsmith_div_i32(~(arg_0.a.b >> (reverseBits(0u) % 32u)), arg_2.b.x), 1i);
}

fn func_4(arg_0: f32, arg_1: f32, arg_2: i32, arg_3: vec3<i32>) -> vec3<f32> {
    var var_0 = _wgslsmith_mod_u32(_wgslsmith_clamp_u32(abs(~0u), ~16423u, 4294967295u), u_input.b.x);
    var var_1 = _wgslsmith_clamp_u32(abs(u_input.b.x), _wgslsmith_clamp_u32(~(~u_input.a), u_input.a, u_input.b.x), 59792u) <= (u_input.b.x >> (u_input.b.x % 32u));
    let var_2 = u_input.a;
    var_0 = var_2;
    let var_3 = arg_0;
    return _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(vec3<f32>(2335f, 436f, arg_1), vec3<f32>(-100f, 187f, arg_1))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_0, var_3, arg_1), vec3<f32>(-852f, var_3, arg_1))))) * vec3<f32>(_wgslsmith_f_op_f32(-838f + 532f), _wgslsmith_f_op_f32(floor(var_3)), _wgslsmith_f_op_f32(-var_3)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, _wgslsmith_f_op_f32(-var_3), arg_1))));
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_5, arg_2: Struct_5, arg_3: vec3<f32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_1.b * vec3<f32>(869f, arg_3.x, arg_2.a.c))))))));
    var var_1 = arg_1.c.c.x;
    var_0 = _wgslsmith_f_op_vec3_f32(arg_3 * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(arg_1.b + _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.e.c, 179f, arg_2.a.c))), _wgslsmith_f_op_vec3_f32(func_4(-1509f, arg_1.a.c, -87883i, func_3(Struct_2(arg_1.a, Struct_1(false, -12530i, arg_1.e.c)), vec3<bool>(arg_2.e.a, arg_1.a.a, false), Struct_4(Struct_2(Struct_1(arg_1.e.a, arg_1.e.b, 307f), Struct_1(true, arg_0.x, arg_2.b.x)), vec2<i32>(arg_2.e.b, arg_1.e.b), arg_2.c, arg_2.a.c, -613f))))))));
    var_1 = any(!select(!select(arg_2.c.c.yz, arg_2.c.b, arg_1.c.b), arg_1.c.c.yy, !(true == arg_1.e.a)));
    let var_2 = Struct_5(Struct_1(true, _wgslsmith_add_i32(_wgslsmith_mod_i32(1i, -1i), 5413i), _wgslsmith_f_op_f32(974f + _wgslsmith_f_op_f32(sign(-190f)))), _wgslsmith_f_op_vec3_f32(arg_3 * _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(arg_3 - vec3<f32>(-901f, -711f, arg_2.e.c))))))), arg_1.c, _wgslsmith_div_u32(_wgslsmith_sub_u32(~(~4294967295u), countOneBits(arg_1.d) | u_input.b.x), reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.c.a.x, arg_2.c.a.x, u_input.b.x, 0u), vec4<u32>(50221u, u_input.b.x, arg_1.c.a.x, 105364u)))), Struct_1(true, _wgslsmith_dot_vec2_i32(-(~vec2<i32>(arg_2.e.b, -13895i)), -vec2<i32>(0i, arg_2.e.b)), _wgslsmith_f_op_f32(-arg_3.x)));
    return var_2.e;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_3) -> bool {
    var var_0 = Struct_1(arg_1.c.x, -6842i, -804f);
    var var_1 = 2147483647i;
    var var_2 = var_0.a;
    var_2 = ~(~abs(~u_input.a)) < u_input.b.x;
    var var_3 = u_input.a;
    return arg_0.b <= abs(_wgslsmith_dot_vec3_i32(select(vec3<i32>(-15040i, arg_0.b, 1i), vec3<i32>(17439i, -1i, 68694i), false), vec3<i32>(-4042i, u_input.c, arg_0.b)) ^ u_input.c);
}

fn func_6(arg_0: vec4<bool>, arg_1: vec3<i32>) -> Struct_5 {
    var var_0 = arg_0.wyz;
    let var_1 = Struct_3(_wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_dot_vec4_u32(select(vec4<u32>(u_input.a, 34098u, 30210u, 21208u), vec4<u32>(u_input.b.x, u_input.a, u_input.a, u_input.b.x), vec4<bool>(false, arg_0.x, var_0.x, var_0.x)), vec4<u32>(u_input.a, 0u, u_input.b.x, 0u) ^ vec4<u32>(30635u, 1u, 1u, 1u)), min(max(20128u, u_input.b.x), _wgslsmith_mult_u32(10992u, 6010u)), ~0u, _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, u_input.a, 47098u), u_input.b), 2255u)), min(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 1u, 1u, u_input.b.x), ~vec4<u32>(4294967295u, 103084u, u_input.a, 4294967295u), vec4<u32>(33302u, u_input.a, u_input.a, 1u)), _wgslsmith_sub_vec4_u32(vec4<u32>(18020u, 0u, u_input.a, 29118u), select(vec4<u32>(u_input.a, 4294967295u, u_input.b.x, u_input.b.x), vec4<u32>(1u, u_input.b.x, u_input.b.x, u_input.b.x), arg_0)))), !select(var_0.xx, arg_0.xx, arg_0.xy), select(vec3<bool>(true, !var_0.x, true), arg_0.wzz, select(!(!vec3<bool>(var_0.x, var_0.x, arg_0.x)), select(!arg_0.zyw, arg_0.wwz, vec3<bool>(var_0.x, false, arg_0.x)), select(vec3<bool>(arg_0.x, false, false), arg_0.yyy, false))));
    let var_2 = _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(600f))));
    let var_3 = func_2(_wgslsmith_div_vec2_i32(countOneBits(vec2<i32>(arg_1.x, _wgslsmith_add_i32(1i, -1i))), vec2<i32>(~u_input.c >> (_wgslsmith_dot_vec2_u32(u_input.b.xy, vec2<u32>(4294967295u, var_1.a.x)) % 32u), countOneBits(~arg_1.x))), Struct_5(Struct_1(arg_0.x, _wgslsmith_div_i32(24753i, -10242i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(-312f, 389f, var_2) - vec3<f32>(-111f, var_2, var_2)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_2, 294f, 1000f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2, var_2, -254f)))), Struct_3(var_1.a, arg_0.yz, arg_0.xxz), ~countOneBits(select(0u, u_input.b.x, true)), func_2(vec2<i32>(~2147483647i, max(arg_1.x, 2147483647i)), Struct_5(func_2(vec2<i32>(u_input.c, u_input.c), Struct_5(Struct_1(arg_0.x, arg_1.x, 2640f), vec3<f32>(var_2, -441f, var_2), Struct_3(var_1.a, vec2<bool>(var_1.c.x, false), vec3<bool>(arg_0.x, false, true)), 0u, Struct_1(arg_0.x, 1i, var_2)), Struct_5(Struct_1(true, 53478i, 1251f), vec3<f32>(var_2, 977f, var_2), Struct_3(vec4<u32>(var_1.a.x, u_input.a, var_1.a.x, u_input.a), arg_0.yx, arg_0.wxx), 7671u, Struct_1(arg_0.x, arg_1.x, 1047f)), vec3<f32>(491f, -267f, var_2)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2, var_2, var_2)), var_1, 1u, func_2(vec2<i32>(u_input.c, -2147483647i), Struct_5(Struct_1(false, u_input.c, 1987f), vec3<f32>(1315f, var_2, var_2), var_1, 77274u, Struct_1(var_0.x, -23931i, var_2)), Struct_5(Struct_1(arg_0.x, arg_1.x, 1000f), vec3<f32>(var_2, 1480f, var_2), var_1, var_1.a.x, Struct_1(true, u_input.c, -1000f)), vec3<f32>(-1000f, -521f, -1000f))), Struct_5(Struct_1(false, 2869i, var_2), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_2, var_2, 2893f), vec3<f32>(139f, var_2, var_2))), Struct_3(vec4<u32>(u_input.a, u_input.b.x, u_input.b.x, u_input.b.x), var_0.zy, vec3<bool>(var_0.x, arg_0.x, false)), var_1.a.x >> (u_input.b.x % 32u), func_2(vec2<i32>(arg_1.x, 0i), Struct_5(Struct_1(true, u_input.c, -486f), vec3<f32>(-622f, var_2, var_2), Struct_3(var_1.a, vec2<bool>(arg_0.x, true), arg_0.wzw), 16792u, Struct_1(var_0.x, arg_1.x, -731f)), Struct_5(Struct_1(var_0.x, 19419i, 1232f), vec3<f32>(141f, -556f, var_2), var_1, 4294967295u, Struct_1(var_1.c.x, 2147483647i, var_2)), vec3<f32>(1392f, 1768f, -2336f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2, -990f, -1452f))))), Struct_5(Struct_1(false, firstTrailingBit(i32(-1i) * -34224i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_2, var_2)) - -1000f)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1995f, var_2, 782f)))), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_2, var_2, -1000f), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_2, -341f, -1304f)))))), var_1, var_1.a.x, func_2(_wgslsmith_clamp_vec2_i32(~vec2<i32>(5125i, arg_1.x), vec2<i32>(u_input.c, -2147483647i) << (vec2<u32>(var_1.a.x, var_1.a.x) % vec2<u32>(32u)), -vec2<i32>(-2147483647i, u_input.c)), Struct_5(func_2(arg_1.xy, Struct_5(Struct_1(true, 28110i, var_2), vec3<f32>(var_2, var_2, var_2), var_1, 46542u, Struct_1(var_1.b.x, -2147483647i, var_2)), Struct_5(Struct_1(var_1.c.x, u_input.c, var_2), vec3<f32>(var_2, 1314f, var_2), Struct_3(var_1.a, arg_0.zy, arg_0.zwz), 57345u, Struct_1(var_0.x, 21788i, var_2)), vec3<f32>(var_2, var_2, -1000f)), vec3<f32>(1f, 1f, 1f), Struct_3(vec4<u32>(35908u, u_input.b.x, var_1.a.x, u_input.b.x), arg_0.wz, vec3<bool>(false, true, var_0.x)), ~0u, func_2(arg_1.xz, Struct_5(Struct_1(true, -1i, var_2), vec3<f32>(1000f, -1000f, -419f), Struct_3(vec4<u32>(u_input.b.x, 1u, 23418u, 0u), vec2<bool>(arg_0.x, var_0.x), arg_0.wyw), 4294967295u, Struct_1(var_0.x, -2147483647i, -670f)), Struct_5(Struct_1(var_0.x, u_input.c, -1230f), vec3<f32>(1123f, var_2, -929f), var_1, u_input.b.x, Struct_1(var_1.b.x, 2147483647i, 562f)), vec3<f32>(var_2, var_2, 874f))), Struct_5(Struct_1(var_0.x, 31542i, var_2), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1174f, -1536f, -154f)), Struct_3(var_1.a, vec2<bool>(arg_0.x, true), vec3<bool>(var_1.b.x, var_0.x, true)), 20740u, func_2(arg_1.zz, Struct_5(Struct_1(false, u_input.c, 514f), vec3<f32>(var_2, var_2, 313f), Struct_3(var_1.a, arg_0.zz, vec3<bool>(arg_0.x, var_1.c.x, false)), var_1.a.x, Struct_1(var_1.c.x, 0i, 133f)), Struct_5(Struct_1(false, u_input.c, var_2), vec3<f32>(1000f, var_2, -638f), var_1, 4294967295u, Struct_1(arg_0.x, 0i, var_2)), vec3<f32>(1525f, var_2, -372f))), _wgslsmith_div_vec3_f32(vec3<f32>(-822f, var_2, 372f), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_2, var_2, var_2)))))), vec3<f32>(var_2, _wgslsmith_f_op_f32(-var_2), var_2));
    return Struct_5(var_3, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_2, var_3.c, -458f), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_3.c, -318f, -204f), vec3<f32>(var_2, var_3.c, var_3.c), var_1.c)))) * vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1358f), _wgslsmith_f_op_f32(floor(403f)), _wgslsmith_f_op_f32(-var_2))), vec3<f32>(_wgslsmith_f_op_f32(-var_2), 274f, _wgslsmith_f_op_f32(func_2(vec2<i32>(4970i, var_3.b), Struct_5(var_3, vec3<f32>(-175f, var_2, 1000f), Struct_3(var_1.a, vec2<bool>(arg_0.x, false), vec3<bool>(var_0.x, false, var_3.a)), var_1.a.x, Struct_1(var_1.b.x, -1i, var_2)), Struct_5(Struct_1(var_3.a, 46240i, var_3.c), vec3<f32>(-962f, 348f, var_2), Struct_3(var_1.a, vec2<bool>(false, var_0.x), vec3<bool>(true, false, false)), var_1.a.x, Struct_1(var_3.a, u_input.c, var_3.c)), vec3<f32>(var_2, var_3.c, var_3.c)).c - -967f))), var_1, abs(u_input.b.x), var_3);
}

fn func_1(arg_0: vec2<f32>, arg_1: i32) -> vec3<u32> {
    var var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1123f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(arg_0.x, -1139f), 1192f)) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(-606f)), _wgslsmith_f_op_f32(round(855f)))))));
    var var_1 = countOneBits(~(~reverseBits(~vec2<i32>(arg_1, arg_1))));
    var_0 = 495f;
    var var_2 = func_6(!select(vec4<bool>(arg_1 > var_1.x, false, true, select(false, false, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false)), func_5(func_2(vec2<i32>(-2147483647i, var_1.x), Struct_5(Struct_1(false, u_input.c, 221f), vec3<f32>(130f, arg_0.x, 1261f), Struct_3(vec4<u32>(u_input.a, 42015u, u_input.b.x, 54184u), vec2<bool>(true, false), vec3<bool>(false, true, true)), u_input.a, Struct_1(true, -1i, arg_0.x)), Struct_5(Struct_1(false, 54368i, arg_0.x), vec3<f32>(-247f, arg_0.x, -608f), Struct_3(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 14832u), vec2<bool>(false, false), vec3<bool>(true, true, false)), 2796u, Struct_1(true, 2147483647i, arg_0.x)), vec3<f32>(-147f, 219f, arg_0.x)), Struct_3(vec4<u32>(u_input.a, 35262u, 1u, u_input.a), vec2<bool>(false, true), vec3<bool>(false, false, false)))), _wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(countOneBits(max(vec3<i32>(-29077i, -17188i, 2147483647i), vec3<i32>(var_1.x, 2147483647i, -44093i))), (vec3<i32>(u_input.c, arg_1, 1112i) << (vec3<u32>(50548u, 18773u, 3895u) % vec3<u32>(32u))) & ~vec3<i32>(u_input.c, 0i, var_1.x)), _wgslsmith_mod_vec3_i32(min(countOneBits(vec3<i32>(u_input.c, arg_1, 0i)), -vec3<i32>(var_1.x, u_input.c, -1i)), _wgslsmith_mult_vec3_i32(vec3<i32>(-4141i, u_input.c, 4729i) | vec3<i32>(arg_1, 51456i, var_1.x), -vec3<i32>(u_input.c, var_1.x, -2147483647i)))));
    var var_3 = _wgslsmith_mod_i32(var_2.a.b, -abs(~arg_1)) >> (var_2.c.a.x % 32u);
    return vec3<u32>(func_6(select(select(vec4<bool>(var_2.a.a, var_2.a.a, true, var_2.e.a), vec4<bool>(true, var_2.e.a, var_2.a.a, true), func_5(var_2.e, Struct_3(vec4<u32>(var_2.c.a.x, 27919u, u_input.b.x, 14078u), var_2.c.c.zz, vec3<bool>(var_2.e.a, false, var_2.e.a)))), select(select(vec4<bool>(var_2.a.a, false, false, false), vec4<bool>(var_2.a.a, false, true, true), var_2.c.b.x), vec4<bool>(false, var_2.a.a, var_2.c.c.x, var_2.a.a), true), var_2.e.a), vec3<i32>((arg_1 >> (4294967295u % 32u)) | _wgslsmith_add_i32(20208i, -1i), ~(~23932i), u_input.c)).c.a.x, ~4294967295u, _wgslsmith_div_u32(0u, _wgslsmith_dot_vec2_u32(~var_2.c.a.xx ^ (u_input.b.yz | vec2<u32>(var_2.d, 1u)), ~abs(var_2.c.a.wy))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~func_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-919f, 1000f)) + vec2<f32>(1000f, 177f)), 0i) & u_input.b;
    var var_1 = select(select(!vec3<bool>(func_5(Struct_1(false, -2147483647i, 1000f), Struct_3(vec4<u32>(1u, u_input.a, 0u, 0u), vec2<bool>(true, true), vec3<bool>(false, true, true))), true, any(vec3<bool>(false, true, false))), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), !select(vec3<bool>(true, true, true), vec3<bool>(true, 10127i <= u_input.c, true), vec3<bool>(true, true, true)));
    var var_2 = func_6(select(select(vec4<bool>(false, false, true || var_1.x, false), vec4<bool>(false, var_1.x || var_1.x, any(vec2<bool>(true, var_1.x)), var_1.x), !vec4<bool>(true, false, var_1.x, var_1.x)), select(!(!vec4<bool>(var_1.x, false, var_1.x, false)), select(vec4<bool>(var_1.x, true, true, var_1.x), vec4<bool>(var_1.x, true, var_1.x, false), vec4<bool>(true, true, var_1.x, var_1.x)), true), var_1.x), vec3<i32>(func_2(abs(vec2<i32>(u_input.c, -1i)) ^ vec2<i32>(91635i, -19337i), Struct_5(Struct_1(true, -2147483647i, 550f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1008f, -1256f, -1186f)), func_6(vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), vec3<i32>(17966i, -771i, u_input.c)).c, _wgslsmith_div_u32(18477u, u_input.b.x), func_6(vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), vec3<i32>(u_input.c, u_input.c, u_input.c)).e), Struct_5(Struct_1(false, u_input.c, -1417f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1319f, -1000f, 140f)), Struct_3(vec4<u32>(u_input.b.x, 4294967295u, var_0.x, 1u), vec2<bool>(var_1.x, false), vec3<bool>(var_1.x, false, true)), 1u, Struct_1(var_1.x, u_input.c, 387f)), vec3<f32>(_wgslsmith_f_op_f32(1103f * -935f), _wgslsmith_f_op_f32(f32(-1f) * -940f), -1075f)).b, func_3(Struct_2(Struct_1(var_1.x, -35519i, -1072f), func_6(vec4<bool>(var_1.x, false, var_1.x, var_1.x), vec3<i32>(u_input.c, u_input.c, 23095i)).a), select(select(vec3<bool>(var_1.x, false, true), vec3<bool>(var_1.x, var_1.x, true), vec3<bool>(var_1.x, true, false)), vec3<bool>(true, true, true), all(vec4<bool>(false, true, var_1.x, true))), Struct_4(Struct_2(Struct_1(false, -73909i, -1390f), Struct_1(var_1.x, -42364i, -241f)), ~vec2<i32>(u_input.c, u_input.c), Struct_3(vec4<u32>(24243u, u_input.a, 4294967295u, var_0.x), vec2<bool>(var_1.x, false), vec3<bool>(var_1.x, var_1.x, var_1.x)), _wgslsmith_f_op_f32(f32(-1f) * -122f), _wgslsmith_div_f32(-577f, -1222f))).x, u_input.c)).a;
    var_1 = select(func_6(!vec4<bool>(any(vec3<bool>(true, var_1.x, var_2.a)), true, any(vec3<bool>(var_2.a, false, var_2.a)), false), countOneBits(vec3<i32>(var_2.b & -26143i, -229i, _wgslsmith_add_i32(-49054i, var_2.b)))).c.c, !(!select(vec3<bool>(var_1.x, false, true), vec3<bool>(var_2.a, var_2.a, var_2.a), select(vec3<bool>(false, var_2.a, var_1.x), vec3<bool>(false, true, true), vec3<bool>(true, false, var_1.x)))), var_2.a);
    var_0 = vec3<u32>(~(~4294967295u << (var_0.x % 32u)) ^ ~firstLeadingBit(var_0.x << (var_0.x % 32u)), _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, 0u, 11461u), u_input.b << (~vec3<u32>(1u, var_0.x, var_0.x) % vec3<u32>(32u))), ~_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(var_0.yy, u_input.b.xy), select(vec2<u32>(var_0.x, 31662u), vec2<u32>(30538u, u_input.a), vec2<bool>(var_1.x, true))), 4436u));
    let var_3 = vec3<bool>(all(var_1.zy) || var_1.x, u_input.c > ~min(-u_input.c, u_input.c), !func_2(firstLeadingBit(vec2<i32>(72058i, 33407i)) & func_3(Struct_2(Struct_1(true, 43879i, -1000f), Struct_1(true, -19126i, -498f)), vec3<bool>(var_2.a, true, false), Struct_4(Struct_2(Struct_1(var_1.x, u_input.c, -808f), Struct_1(var_2.a, 0i, 2196f)), vec2<i32>(5751i, var_2.b), Struct_3(vec4<u32>(39018u, var_0.x, 1u, 32328u), vec2<bool>(false, true), vec3<bool>(true, var_1.x, false)), 254f, -359f)).xx, Struct_5(func_6(vec4<bool>(false, var_2.a, false, false), vec3<i32>(12787i, u_input.c, var_2.b)).e, _wgslsmith_f_op_vec3_f32(vec3<f32>(563f, -1846f, -1643f) + vec3<f32>(535f, var_2.c, var_2.c)), func_6(vec4<bool>(var_1.x, var_2.a, true, var_1.x), vec3<i32>(-1i, -2147483647i, u_input.c)).c, ~0u, func_6(vec4<bool>(true, var_2.a, var_1.x, true), vec3<i32>(u_input.c, -31842i, 12789i)).a), Struct_5(Struct_1(true, -1i, var_2.c), vec3<f32>(711f, var_2.c, -756f), func_6(vec4<bool>(false, var_1.x, true, false), vec3<i32>(u_input.c, 1i, var_2.b)).c, _wgslsmith_add_u32(var_0.x, 25061u), func_2(vec2<i32>(54082i, u_input.c), Struct_5(Struct_1(var_2.a, -9031i, -841f), vec3<f32>(var_2.c, var_2.c, -994f), Struct_3(vec4<u32>(u_input.a, 0u, u_input.a, var_0.x), vec2<bool>(var_2.a, true), vec3<bool>(false, var_2.a, var_2.a)), u_input.a, Struct_1(var_1.x, -2147483647i, var_2.c)), Struct_5(Struct_1(var_2.a, 2147483647i, var_2.c), vec3<f32>(var_2.c, 300f, var_2.c), Struct_3(vec4<u32>(0u, 69935u, 1u, u_input.b.x), vec2<bool>(var_2.a, var_1.x), vec3<bool>(var_1.x, var_1.x, var_2.a)), var_0.x, Struct_1(var_1.x, 1i, var_2.c)), vec3<f32>(var_2.c, -1205f, -318f))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1223f, var_2.c, -1417f))))).a);
    let x = u_input.a;
    s_output = StorageBuffer(~(max(~var_0.x, 34367u) << (~u_input.a % 32u)));
}

