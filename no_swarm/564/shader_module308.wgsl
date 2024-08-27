struct Struct_1 {
    a: vec4<f32>,
    b: vec2<f32>,
    c: i32,
    d: vec3<f32>,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: u32,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<u32>,
    c: Struct_3,
    d: Struct_3,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: i32, arg_3: Struct_2) -> vec2<i32> {
    let var_0 = ~_wgslsmith_div_u32(_wgslsmith_mult_u32(1u, 4294967295u), ~1u);
    global0 = arg_3.a;
    let var_1 = u_input.a;
    let var_2 = abs(vec3<i32>(abs(abs(-arg_2)), select(2147483647i, var_1, any(arg_3.a.xx)), ~(-var_1) & _wgslsmith_clamp_i32(countOneBits(-2147483647i), 1i, 19803i)));
    var var_3 = Struct_4(Struct_2(select(vec3<bool>(true, all(arg_3.a.yy), true), select(vec3<bool>(global0.x, global0.x, false), arg_3.a, arg_0.a), 1u >= _wgslsmith_sub_u32(var_0, 1u))), abs(vec2<u32>(47428u, ~(4294967295u | var_0))), Struct_3(arg_3, Struct_1(arg_1.a, _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.d.x, -2382f)), max(0i, _wgslsmith_mod_i32(2147483647i, arg_2)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(arg_1.d, vec3<f32>(arg_1.b.x, arg_1.d.x, 309f))))), var_0, arg_1), Struct_3(Struct_2(vec3<bool>(false, any(vec4<bool>(global0.x, global0.x, false, true)), false)), arg_1, firstLeadingBit(_wgslsmith_sub_u32(_wgslsmith_div_u32(1u, 4294967295u), var_0)), arg_1));
    return firstLeadingBit(min(_wgslsmith_div_vec2_i32(reverseBits(vec2<i32>(351i, 46320i)), var_2.zy), var_2.zx));
}

fn func_4(arg_0: i32, arg_1: f32, arg_2: vec3<i32>, arg_3: Struct_1) -> u32 {
    global0 = select(select(!vec3<bool>(-1039f < arg_1, !global0.x, any(vec3<bool>(global0.x, global0.x, global0.x))), select(select(vec3<bool>(false, true, true), select(vec3<bool>(true, global0.x, global0.x), vec3<bool>(global0.x, false, false), false), !vec3<bool>(true, true, global0.x)), vec3<bool>(!global0.x, !global0.x, any(vec3<bool>(true, global0.x, false))), !select(vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(false, false, global0.x), true)), !select(vec3<bool>(global0.x, global0.x, true), vec3<bool>(global0.x, global0.x, false), true)), select(!(!vec3<bool>(global0.x, true, global0.x)), !vec3<bool>(true, !global0.x, !global0.x), vec3<bool>(global0.x, !(arg_1 != 638f), global0.x)), select(vec3<bool>(all(vec3<bool>(global0.x, global0.x, global0.x)), global0.x | all(global0.xx), global0.x), select(select(select(vec3<bool>(false, global0.x, global0.x), vec3<bool>(false, global0.x, true), false), !vec3<bool>(true, false, global0.x), !vec3<bool>(global0.x, global0.x, global0.x)), select(vec3<bool>(global0.x, true, global0.x), vec3<bool>(false, false, global0.x), !vec3<bool>(global0.x, global0.x, true)), !select(vec3<bool>(global0.x, global0.x, false), vec3<bool>(global0.x, false, global0.x), vec3<bool>(global0.x, global0.x, global0.x))), vec3<bool>(!(!global0.x), true, true & !global0.x)));
    var var_0 = u_input.a;
    var_0 = -14235i;
    var_0 = arg_3.c;
    var var_1 = global0.x;
    return 9500u;
}

fn func_2(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: vec4<f32>) -> u32 {
    let var_0 = abs(firstLeadingBit(1u));
    let var_1 = func_4(-55127i, 566f, vec3<i32>(-max(arg_0.c, arg_0.c), abs(_wgslsmith_dot_vec2_i32(func_3(Struct_2(arg_1.xyw), Struct_1(arg_0.a, arg_0.b, 1i, vec3<f32>(arg_2.x, -340f, arg_2.x)), -30710i, Struct_2(vec3<bool>(false, true, false))), ~vec2<i32>(-2147483647i, arg_0.c))), arg_0.c), arg_0);
    global0 = vec3<bool>(arg_1.x, any(select(arg_1.wxz, vec3<bool>(true, false, all(vec2<bool>(global0.x, false))), arg_1.xyz)), arg_1.x);
    var var_2 = vec3<bool>(select(true, true, !(!(!arg_1.x))), !global0.x, true);
    global0 = select(arg_1.zyz, !vec3<bool>(!(true && var_2.x), false, var_2.x), arg_1.zxw);
    return _wgslsmith_sub_u32(firstTrailingBit(~reverseBits(_wgslsmith_add_u32(17166u, 48878u))), ~_wgslsmith_div_u32(~1u, abs(24010u)) >> (_wgslsmith_mod_u32(var_1, select(45811u | var_1, abs(340u), arg_0.c > 0i)) % 32u));
}

fn func_5(arg_0: u32, arg_1: Struct_4, arg_2: vec3<i32>, arg_3: vec4<f32>) -> Struct_2 {
    var var_0 = arg_1.d.d;
    var var_1 = _wgslsmith_sub_vec4_i32(_wgslsmith_clamp_vec4_i32(_wgslsmith_mult_vec4_i32(reverseBits(vec4<i32>(-6291i, 4657i, u_input.a, -36335i)), _wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, arg_1.c.d.c, -26532i, u_input.a), vec4<i32>(arg_2.x, arg_2.x, arg_2.x, -2147483647i))), _wgslsmith_clamp_vec4_i32(firstTrailingBit(vec4<i32>(-1i, var_0.c, -22958i, arg_2.x)), firstTrailingBit(vec4<i32>(-2668i, 2147483647i, arg_2.x, 26338i)), vec4<i32>(u_input.a, 21205i, arg_1.c.d.c, -51945i) & vec4<i32>(-11280i, 10330i, arg_1.c.d.c, var_0.c)), ~vec4<i32>(arg_1.c.b.c, u_input.a, var_0.c, 7902i)), -vec4<i32>(21755i, -29009i, arg_2.x, 1i) ^ vec4<i32>(-1i, ~arg_2.x, u_input.a, _wgslsmith_sub_i32(-38751i, -29387i))) | -_wgslsmith_add_vec4_i32(vec4<i32>(-20494i, 0i, u_input.a, var_0.c) << (~vec4<u32>(arg_0, 0u, arg_1.b.x, 7677u) % vec4<u32>(32u)), ~abs(vec4<i32>(arg_1.d.b.c, u_input.a, var_0.c, -65163i)));
    let var_2 = select(vec4<bool>(!all(vec2<bool>(true, false)), all(select(!global0.xx, arg_1.c.a.a.yy, true)), true, true), select(!select(!vec4<bool>(arg_1.a.a.x, arg_1.c.a.a.x, arg_1.d.a.a.x, arg_1.c.a.a.x), !vec4<bool>(arg_1.a.a.x, arg_1.d.a.a.x, true, arg_1.c.a.a.x), vec4<bool>(global0.x, global0.x, global0.x, false)), select(select(select(vec4<bool>(global0.x, false, false, arg_1.a.a.x), vec4<bool>(false, arg_1.c.a.a.x, global0.x, true), false), vec4<bool>(true, arg_1.d.a.a.x, arg_1.a.a.x, global0.x), select(vec4<bool>(true, arg_1.a.a.x, arg_1.c.a.a.x, arg_1.a.a.x), vec4<bool>(true, false, arg_1.c.a.a.x, global0.x), vec4<bool>(global0.x, true, global0.x, false))), !select(vec4<bool>(false, arg_1.d.a.a.x, false, global0.x), vec4<bool>(false, false, arg_1.d.a.a.x, true), true), !(!vec4<bool>(true, arg_1.a.a.x, global0.x, arg_1.a.a.x))), !global0.x), vec4<bool>(!(!arg_1.d.a.a.x), select(true, all(!vec2<bool>(arg_1.a.a.x, global0.x)), _wgslsmith_add_i32(var_0.c, 25203i) > -6159i), arg_1.d.a.a.x, select(_wgslsmith_f_op_f32(f32(-1f) * -262f) != _wgslsmith_f_op_f32(-arg_3.x), any(select(vec4<bool>(true, global0.x, true, arg_1.c.a.a.x), vec4<bool>(false, true, false, false), true)), true)));
    let var_3 = arg_1.d.b;
    var var_4 = vec2<f32>(var_3.a.x, _wgslsmith_div_f32(arg_3.x, _wgslsmith_f_op_f32(sign(-999f))));
    return Struct_2(vec3<bool>(global0.x, true, all(!global0.xx)));
}

fn func_6(arg_0: Struct_2, arg_1: f32, arg_2: Struct_4) -> Struct_3 {
    var var_0 = Struct_2(arg_0.a);
    var var_1 = false;
    return arg_2.d;
}

fn func_7(arg_0: Struct_3, arg_1: i32, arg_2: bool, arg_3: bool) -> Struct_1 {
    let var_0 = -max(_wgslsmith_add_vec2_i32(vec2<i32>(i32(-1i) * -42292i, 54039i | u_input.a), reverseBits(-vec2<i32>(-54193i, -1i))), vec2<i32>(-1i) * -(~vec2<i32>(-45160i, u_input.a)));
    var var_1 = -vec3<i32>(602i, -11076i, _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(-19144i, -2147483647i, u_input.a), -vec3<i32>(-1i, arg_1, 0i)), ~countOneBits(vec3<i32>(u_input.a, -9207i, -1i))));
    global0 = !arg_0.a.a;
    var var_2 = !vec4<bool>(any(vec2<bool>(global0.x, all(vec4<bool>(true, false, global0.x, true)))), func_5(_wgslsmith_mod_u32(countOneBits(arg_0.c), arg_0.c), Struct_4(Struct_2(vec3<bool>(false, arg_3, true)), abs(vec2<u32>(arg_0.c, 90667u)), arg_0, Struct_3(Struct_2(vec3<bool>(true, false, global0.x)), Struct_1(vec4<f32>(-2301f, arg_0.d.b.x, -2499f, arg_0.b.b.x), arg_0.b.b, -42850i, vec3<f32>(246f, -120f, -1486f)), 0u, arg_0.b)), vec3<i32>(var_0.x, firstLeadingBit(50247i), firstTrailingBit(-11056i)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-936f, -454f, -1317f, -1371f)))).a.x, !(!arg_0.a.a.x), false);
    var_1 = vec3<i32>(i32(-1i) * -_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.b.c, arg_1, 48276i, -2147483647i) << (vec4<u32>(1u, 37655u, 4294967295u, arg_0.c) % vec4<u32>(32u)), -vec4<i32>(arg_0.b.c, var_0.x, -54013i, -2147483647i)), arg_1 >> (arg_0.c % 32u), ~1i);
    return func_6(func_5(0u >> ((_wgslsmith_div_u32(arg_0.c, arg_0.c) >> ((23993u ^ arg_0.c) % 32u)) % 32u), Struct_4(func_5(func_2(arg_0.d, vec4<bool>(arg_2, false, arg_0.a.a.x, true), vec4<f32>(975f, -767f, 1000f, -263f)), Struct_4(Struct_2(var_2.xyz), vec2<u32>(0u, arg_0.c), arg_0, arg_0), ~vec3<i32>(var_0.x, arg_1, 22797i), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(1114f, -1144f, 1816f, 1580f), vec4<f32>(arg_0.d.d.x, arg_0.b.a.x, -564f, arg_0.d.b.x)))), (vec2<u32>(1u, 527u) & vec2<u32>(arg_0.c, arg_0.c)) << (vec2<u32>(101857u, arg_0.c) % vec2<u32>(32u)), func_6(func_5(14723u, Struct_4(Struct_2(vec3<bool>(arg_2, arg_3, arg_0.a.a.x)), vec2<u32>(arg_0.c, arg_0.c), Struct_3(Struct_2(arg_0.a.a), Struct_1(arg_0.b.a, vec2<f32>(966f, arg_0.d.a.x), arg_1, arg_0.b.a.wxx), arg_0.c, arg_0.b), Struct_3(Struct_2(vec3<bool>(false, global0.x, true)), arg_0.d, arg_0.c, arg_0.b)), vec3<i32>(18440i, 1i, var_0.x), vec4<f32>(arg_0.d.b.x, 761f, 1072f, -1514f)), _wgslsmith_f_op_f32(arg_0.d.d.x * arg_0.b.a.x), Struct_4(arg_0.a, vec2<u32>(arg_0.c, 88549u), Struct_3(arg_0.a, Struct_1(vec4<f32>(-722f, arg_0.d.d.x, -1287f, arg_0.b.a.x), arg_0.d.d.zx, 2147483647i, vec3<f32>(-239f, arg_0.d.d.x, 1286f)), arg_0.c, arg_0.d), Struct_3(arg_0.a, Struct_1(arg_0.d.a, arg_0.b.b, arg_0.d.c, vec3<f32>(394f, arg_0.d.b.x, 1100f)), 25932u, Struct_1(vec4<f32>(arg_0.b.a.x, 857f, arg_0.d.b.x, arg_0.b.a.x), arg_0.d.d.xx, -6353i, vec3<f32>(1737f, -194f, arg_0.b.a.x))))), Struct_3(func_6(Struct_2(var_2.zzx), -1000f, Struct_4(Struct_2(vec3<bool>(true, var_2.x, arg_0.a.a.x)), vec2<u32>(16375u, arg_0.c), Struct_3(Struct_2(arg_0.a.a), Struct_1(arg_0.b.a, vec2<f32>(arg_0.d.d.x, arg_0.d.b.x), arg_0.d.c, arg_0.d.a.yyy), 1u, Struct_1(vec4<f32>(arg_0.d.a.x, arg_0.b.a.x, arg_0.b.d.x, 200f), arg_0.d.d.yx, 1i, arg_0.d.d)), arg_0)).a, arg_0.b, 4294967295u, arg_0.b)), ~firstTrailingBit(~vec3<i32>(20868i, 1i, arg_0.d.c)), func_6(func_6(Struct_2(var_2.yyz), 1500f, Struct_4(Struct_2(arg_0.a.a), vec2<u32>(69950u, 4294967295u), arg_0, Struct_3(arg_0.a, arg_0.d, arg_0.c, Struct_1(vec4<f32>(503f, arg_0.b.d.x, arg_0.d.d.x, -1000f), vec2<f32>(252f, arg_0.d.d.x), -10720i, arg_0.b.d)))).a, arg_0.b.a.x, Struct_4(func_5(1u, Struct_4(arg_0.a, vec2<u32>(arg_0.c, 46415u), Struct_3(Struct_2(vec3<bool>(var_2.x, arg_0.a.a.x, true)), arg_0.b, 4294967295u, Struct_1(vec4<f32>(arg_0.b.b.x, -1001f, arg_0.d.b.x, 1046f), arg_0.d.d.zz, -8331i, vec3<f32>(arg_0.b.d.x, arg_0.b.a.x, arg_0.b.a.x))), arg_0), vec3<i32>(2147483647i, -9290i, 2147483647i), arg_0.b.a), max(vec2<u32>(1u, arg_0.c), vec2<u32>(5744u, 8795u)), Struct_3(Struct_2(arg_0.a.a), Struct_1(vec4<f32>(arg_0.b.d.x, arg_0.d.a.x, arg_0.d.a.x, arg_0.d.b.x), arg_0.d.a.zy, 2147483647i, arg_0.d.a.zzy), arg_0.c, Struct_1(arg_0.b.a, arg_0.b.a.yz, 0i, arg_0.b.a.wyw)), arg_0)).b.a), _wgslsmith_f_op_f32(-arg_0.b.d.x), Struct_4(Struct_2(!select(arg_0.a.a, vec3<bool>(false, false, false), false)), vec2<u32>(arg_0.c, arg_0.c), arg_0, func_6(func_6(Struct_2(var_2.zxw), _wgslsmith_f_op_f32(select(arg_0.d.a.x, 921f, arg_2)), Struct_4(Struct_2(var_2.wwy), vec2<u32>(9417u, arg_0.c), arg_0, Struct_3(Struct_2(var_2.www), arg_0.b, 0u, Struct_1(arg_0.d.a, arg_0.b.b, 2147483647i, vec3<f32>(arg_0.d.a.x, -209f, -188f))))).a, _wgslsmith_f_op_f32(f32(-1f) * -212f), Struct_4(func_6(arg_0.a, 1262f, Struct_4(Struct_2(vec3<bool>(true, arg_2, global0.x)), vec2<u32>(23920u, 15232u), Struct_3(arg_0.a, arg_0.d, arg_0.c, arg_0.b), Struct_3(arg_0.a, arg_0.b, arg_0.c, Struct_1(vec4<f32>(-650f, arg_0.b.d.x, -617f, arg_0.d.d.x), vec2<f32>(arg_0.b.b.x, arg_0.d.d.x), var_0.x, arg_0.b.d)))).a, reverseBits(vec2<u32>(14206u, arg_0.c)), arg_0, arg_0)))).d;
}

fn func_1(arg_0: i32) -> vec3<f32> {
    var var_0 = func_7(func_6(Struct_2(!vec3<bool>(global0.x, false, global0.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1362f + -1179f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * 625f)), global0.x)), Struct_4(func_5(func_2(Struct_1(vec4<f32>(-516f, -912f, -163f, 150f), vec2<f32>(1469f, 556f), arg_0, vec3<f32>(-484f, 428f, 1258f)), vec4<bool>(global0.x, global0.x, true, false), vec4<f32>(-287f, -571f, -1390f, -1023f)), Struct_4(Struct_2(vec3<bool>(false, false, true)), vec2<u32>(28201u, 18140u), Struct_3(Struct_2(vec3<bool>(global0.x, false, false)), Struct_1(vec4<f32>(1618f, 543f, 110f, 1000f), vec2<f32>(-314f, 434f), arg_0, vec3<f32>(1367f, -2579f, -1372f)), 13069u, Struct_1(vec4<f32>(530f, -502f, 576f, 1011f), vec2<f32>(-939f, 1419f), 27646i, vec3<f32>(-1000f, 651f, -726f))), Struct_3(Struct_2(vec3<bool>(true, false, global0.x)), Struct_1(vec4<f32>(-802f, -1356f, 187f, -732f), vec2<f32>(1165f, -828f), 0i, vec3<f32>(-676f, 554f, 1058f)), 9365u, Struct_1(vec4<f32>(-1000f, 232f, 371f, 1747f), vec2<f32>(1222f, -654f), arg_0, vec3<f32>(1000f, 305f, 1051f)))), vec3<i32>(arg_0, u_input.a, u_input.a), _wgslsmith_f_op_vec4_f32(vec4<f32>(237f, -473f, 993f, 2087f) - vec4<f32>(-133f, 983f, -1397f, -1016f))), vec2<u32>(~0u, ~18990u), Struct_3(func_5(1u, Struct_4(Struct_2(vec3<bool>(false, global0.x, global0.x)), vec2<u32>(45181u, 21844u), Struct_3(Struct_2(vec3<bool>(false, false, true)), Struct_1(vec4<f32>(-1000f, 2066f, -421f, -1238f), vec2<f32>(1625f, 1740f), u_input.a, vec3<f32>(345f, -428f, -194f)), 20551u, Struct_1(vec4<f32>(1000f, -626f, -1520f, 738f), vec2<f32>(-1000f, 1082f), -6032i, vec3<f32>(-254f, 554f, -614f))), Struct_3(Struct_2(vec3<bool>(global0.x, true, false)), Struct_1(vec4<f32>(1703f, -1952f, -351f, 1037f), vec2<f32>(-919f, -611f), u_input.a, vec3<f32>(1147f, 215f, -1237f)), 4294967295u, Struct_1(vec4<f32>(-564f, 693f, 912f, 928f), vec2<f32>(-194f, -266f), -30876i, vec3<f32>(644f, 2147f, -308f)))), vec3<i32>(arg_0, u_input.a, arg_0), vec4<f32>(852f, 1566f, 683f, 2392f)), Struct_1(vec4<f32>(337f, 1071f, 750f, 1038f), vec2<f32>(-742f, -1304f), arg_0, vec3<f32>(350f, -1662f, 1000f)), abs(0u), Struct_1(vec4<f32>(-576f, -1055f, -1227f, 855f), vec2<f32>(-198f, 1800f), 1382i, vec3<f32>(1264f, -1000f, -1705f))), Struct_3(Struct_2(vec3<bool>(global0.x, true, false)), Struct_1(vec4<f32>(-221f, 1401f, 1212f, 1000f), vec2<f32>(627f, 743f), -57572i, vec3<f32>(-999f, -476f, 420f)), abs(10692u), Struct_1(vec4<f32>(164f, 814f, 328f, -737f), vec2<f32>(-1462f, -1282f), u_input.a, vec3<f32>(393f, 227f, -1000f))))), 0i, !(1u >= _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), ~vec4<u32>(76727u, 4294967295u, 41424u, 1u))), all(select(global0.xx, func_5(19379u, Struct_4(Struct_2(vec3<bool>(true, global0.x, global0.x)), vec2<u32>(26508u, 23491u), Struct_3(Struct_2(vec3<bool>(global0.x, global0.x, true)), Struct_1(vec4<f32>(459f, 286f, -888f, -215f), vec2<f32>(-823f, 525f), u_input.a, vec3<f32>(-197f, -1961f, 278f)), 62975u, Struct_1(vec4<f32>(295f, -613f, 1267f, -673f), vec2<f32>(-1917f, -483f), u_input.a, vec3<f32>(776f, 1003f, 414f))), Struct_3(Struct_2(vec3<bool>(global0.x, false, global0.x)), Struct_1(vec4<f32>(-706f, -325f, -954f, 1000f), vec2<f32>(1294f, 1829f), 1i, vec3<f32>(-1632f, 486f, 328f)), 9655u, Struct_1(vec4<f32>(1000f, 967f, -1364f, 1000f), vec2<f32>(-1532f, -1374f), -1i, vec3<f32>(-814f, 470f, 870f)))), firstLeadingBit(vec3<i32>(2147483647i, 1i, 0i)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-130f, -128f, 1997f, 167f))).a.xy, global0.zx)));
    global0 = !func_5(~1u, Struct_4(Struct_2(vec3<bool>(false, global0.x, global0.x)), _wgslsmith_div_vec2_u32(~vec2<u32>(2880u, 4294967295u), _wgslsmith_clamp_vec2_u32(vec2<u32>(56549u, 1u), vec2<u32>(1u, 1u), vec2<u32>(70621u, 26456u))), func_6(Struct_2(vec3<bool>(global0.x, global0.x, global0.x)), -1104f, Struct_4(Struct_2(vec3<bool>(global0.x, global0.x, true)), vec2<u32>(105436u, 4294967295u), Struct_3(Struct_2(vec3<bool>(global0.x, false, false)), Struct_1(var_0.a, vec2<f32>(1259f, 1000f), u_input.a, vec3<f32>(var_0.d.x, -1000f, 1000f)), 4294967295u, Struct_1(vec4<f32>(var_0.d.x, var_0.a.x, var_0.a.x, 1021f), vec2<f32>(-860f, 325f), u_input.a, vec3<f32>(-1029f, var_0.d.x, var_0.a.x))), Struct_3(Struct_2(vec3<bool>(global0.x, global0.x, false)), Struct_1(vec4<f32>(var_0.a.x, var_0.a.x, var_0.a.x, var_0.d.x), vec2<f32>(var_0.b.x, var_0.a.x), 44511i, vec3<f32>(var_0.b.x, var_0.d.x, var_0.a.x)), 1u, Struct_1(vec4<f32>(var_0.b.x, var_0.d.x, -1000f, -1010f), vec2<f32>(553f, 156f), var_0.c, vec3<f32>(-1737f, var_0.d.x, var_0.d.x))))), Struct_3(func_6(Struct_2(vec3<bool>(global0.x, false, false)), -1450f, Struct_4(Struct_2(vec3<bool>(true, global0.x, false)), vec2<u32>(110699u, 4294967295u), Struct_3(Struct_2(vec3<bool>(true, false, global0.x)), Struct_1(var_0.a, vec2<f32>(var_0.a.x, var_0.b.x), -2147483647i, vec3<f32>(var_0.b.x, 972f, var_0.b.x)), 59322u, Struct_1(var_0.a, vec2<f32>(var_0.a.x, var_0.b.x), var_0.c, var_0.a.zxx)), Struct_3(Struct_2(vec3<bool>(true, true, false)), Struct_1(var_0.a, vec2<f32>(var_0.d.x, var_0.a.x), u_input.a, vec3<f32>(-727f, var_0.b.x, var_0.a.x)), 35383u, Struct_1(var_0.a, vec2<f32>(688f, -1973f), -1926i, vec3<f32>(var_0.b.x, 1000f, var_0.d.x))))).a, func_7(Struct_3(Struct_2(vec3<bool>(false, global0.x, global0.x)), Struct_1(vec4<f32>(-999f, -664f, -833f, var_0.d.x), var_0.d.yz, 1i, vec3<f32>(-1377f, var_0.a.x, -227f)), 1u, Struct_1(var_0.a, vec2<f32>(1289f, -1000f), 1i, var_0.a.zzw)), u_input.a, global0.x, global0.x), ~12987u, Struct_1(vec4<f32>(-1186f, var_0.a.x, 1187f, var_0.a.x), var_0.d.zy, u_input.a, vec3<f32>(var_0.d.x, -1333f, var_0.d.x)))), -(~vec3<i32>(var_0.c, var_0.c, 0i) | reverseBits(vec3<i32>(-2147483647i, var_0.c, 2147483647i))), _wgslsmith_f_op_vec4_f32(var_0.a - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(317f, 709f, var_0.a.x, 650f)))))).a;
    var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.d.x, -340f, var_0.b.x, _wgslsmith_f_op_f32(var_0.d.x - -705f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.d.x, -772f)))), -1i, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.d + _wgslsmith_f_op_vec3_f32(exp2(var_0.d)))) + var_0.a.xyw));
    var var_1 = all(vec4<bool>(false, func_6(func_6(func_6(Struct_2(vec3<bool>(global0.x, false, false)), -1000f, Struct_4(Struct_2(vec3<bool>(global0.x, global0.x, global0.x)), vec2<u32>(37149u, 10338u), Struct_3(Struct_2(vec3<bool>(true, false, global0.x)), Struct_1(vec4<f32>(var_0.d.x, var_0.d.x, var_0.b.x, -1591f), vec2<f32>(1000f, -1000f), u_input.a, var_0.d), 1u, Struct_1(vec4<f32>(var_0.b.x, var_0.a.x, -1000f, -487f), var_0.d.xx, -2977i, var_0.d)), Struct_3(Struct_2(vec3<bool>(true, false, false)), Struct_1(vec4<f32>(var_0.a.x, 467f, var_0.a.x, var_0.d.x), var_0.a.xw, u_input.a, vec3<f32>(1734f, -1018f, 434f)), 0u, Struct_1(var_0.a, vec2<f32>(397f, 857f), -1i, vec3<f32>(-283f, -456f, 362f))))).a, -1438f, Struct_4(Struct_2(vec3<bool>(global0.x, true, global0.x)), vec2<u32>(1u, 1u), Struct_3(Struct_2(vec3<bool>(false, global0.x, true)), Struct_1(vec4<f32>(var_0.b.x, 451f, var_0.b.x, 2562f), var_0.b, -1i, var_0.a.yxz), 1u, Struct_1(var_0.a, vec2<f32>(var_0.d.x, 296f), arg_0, var_0.a.xxy)), Struct_3(Struct_2(vec3<bool>(true, global0.x, global0.x)), Struct_1(vec4<f32>(var_0.b.x, -107f, 599f, 408f), vec2<f32>(1837f, 2340f), u_input.a, var_0.a.xxw), 4294967295u, Struct_1(var_0.a, var_0.b, arg_0, var_0.a.zxy)))).a, -378f, Struct_4(func_6(Struct_2(vec3<bool>(global0.x, false, false)), var_0.b.x, Struct_4(Struct_2(vec3<bool>(true, global0.x, global0.x)), vec2<u32>(15404u, 1u), Struct_3(Struct_2(vec3<bool>(global0.x, global0.x, global0.x)), Struct_1(vec4<f32>(var_0.d.x, 699f, var_0.b.x, 423f), var_0.b, var_0.c, vec3<f32>(var_0.a.x, -531f, 196f)), 66493u, Struct_1(vec4<f32>(var_0.d.x, var_0.d.x, var_0.d.x, 374f), var_0.d.xz, -1i, var_0.d)), Struct_3(Struct_2(vec3<bool>(false, true, false)), Struct_1(var_0.a, vec2<f32>(254f, 449f), u_input.a, vec3<f32>(1255f, -1596f, -153f)), 40578u, Struct_1(var_0.a, var_0.a.xx, u_input.a, vec3<f32>(617f, var_0.a.x, var_0.b.x))))).a, vec2<u32>(0u, 119493u), Struct_3(Struct_2(vec3<bool>(global0.x, false, global0.x)), Struct_1(vec4<f32>(var_0.a.x, -1144f, -1805f, -548f), vec2<f32>(-996f, -813f), arg_0, vec3<f32>(var_0.b.x, var_0.b.x, var_0.b.x)), 9660u, Struct_1(var_0.a, var_0.d.yx, u_input.a, var_0.a.xxx)), Struct_3(Struct_2(vec3<bool>(global0.x, global0.x, true)), Struct_1(var_0.a, vec2<f32>(282f, var_0.a.x), 1i, var_0.a.xxw), 37695u, Struct_1(vec4<f32>(-437f, -354f, var_0.d.x, -295f), vec2<f32>(-1032f, var_0.b.x), u_input.a, var_0.a.wyw)))).a.a.x, select(!global0.x, false, select(global0.x, !global0.x, 23277i < u_input.a)), global0.x));
    global0 = !(!vec3<bool>(all(vec3<bool>(false, global0.x, global0.x)), func_6(func_5(0u, Struct_4(Struct_2(vec3<bool>(true, global0.x, global0.x)), vec2<u32>(47249u, 0u), Struct_3(Struct_2(vec3<bool>(global0.x, false, true)), Struct_1(vec4<f32>(-1165f, -262f, 157f, 401f), var_0.b, -7118i, vec3<f32>(var_0.a.x, var_0.a.x, 135f)), 4549u, Struct_1(var_0.a, var_0.a.wx, arg_0, var_0.d)), Struct_3(Struct_2(vec3<bool>(global0.x, global0.x, global0.x)), Struct_1(vec4<f32>(1000f, var_0.a.x, var_0.d.x, -1295f), var_0.d.yz, var_0.c, vec3<f32>(var_0.a.x, -2116f, var_0.a.x)), 4294967295u, Struct_1(vec4<f32>(666f, -399f, -1340f, 770f), vec2<f32>(var_0.a.x, var_0.b.x), 0i, vec3<f32>(var_0.b.x, -623f, var_0.d.x)))), vec3<i32>(u_input.a, -44243i, 0i), var_0.a), _wgslsmith_f_op_f32(518f - 1680f), Struct_4(Struct_2(vec3<bool>(global0.x, global0.x, global0.x)), vec2<u32>(0u, 106769u), Struct_3(Struct_2(vec3<bool>(false, global0.x, global0.x)), Struct_1(vec4<f32>(var_0.a.x, 273f, var_0.d.x, 661f), var_0.a.xw, var_0.c, var_0.d), 1u, Struct_1(var_0.a, var_0.b, 1i, vec3<f32>(1000f, 475f, 1251f))), Struct_3(Struct_2(vec3<bool>(global0.x, global0.x, true)), Struct_1(vec4<f32>(748f, -450f, -744f, var_0.d.x), var_0.a.wy, 43940i, var_0.a.zxw), 84510u, Struct_1(var_0.a, vec2<f32>(809f, -1012f), arg_0, vec3<f32>(-2664f, 858f, var_0.d.x))))).a.a.x, !global0.x));
    return _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-694f, _wgslsmith_f_op_f32(min(-669f, -1404f)))), var_0.d.x), _wgslsmith_f_op_f32(-var_0.a.x), 794f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-816f + 390f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-721f * -1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + -1428f)), _wgslsmith_f_op_vec3_f32(func_1(-28396i)))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1053f, 945f, 1061f))))))));
    var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + _wgslsmith_f_op_f32(step(var_0.x, var_0.x)))), var_0.x));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(736f, 317f, var_0.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1211f, -436f, 910f))))))));
    var var_2 = 1830u;
    var var_3 = func_7(func_6(func_6(Struct_2(!vec3<bool>(global0.x, true, true)), -1000f, Struct_4(Struct_2(vec3<bool>(global0.x, false, true)), ~vec2<u32>(541u, 88008u), func_6(Struct_2(vec3<bool>(true, false, global0.x)), -1534f, Struct_4(Struct_2(vec3<bool>(true, global0.x, true)), vec2<u32>(4294967295u, 0u), Struct_3(Struct_2(vec3<bool>(global0.x, false, false)), Struct_1(vec4<f32>(1000f, 751f, 2147f, var_0.x), var_1.xy, -1i, vec3<f32>(var_1.x, var_0.x, -465f)), 4294967295u, Struct_1(vec4<f32>(774f, var_1.x, var_1.x, 1000f), vec2<f32>(var_0.x, var_1.x), u_input.a, vec3<f32>(var_0.x, var_0.x, var_0.x))), Struct_3(Struct_2(vec3<bool>(true, true, global0.x)), Struct_1(vec4<f32>(-1468f, var_1.x, var_1.x, var_1.x), vec2<f32>(-745f, -1330f), u_input.a, vec3<f32>(var_1.x, var_1.x, 2491f)), 53488u, Struct_1(vec4<f32>(var_1.x, var_0.x, var_1.x, -1519f), vec2<f32>(var_1.x, var_0.x), u_input.a, var_1)))), func_6(Struct_2(vec3<bool>(false, global0.x, true)), 3149f, Struct_4(Struct_2(vec3<bool>(true, global0.x, false)), vec2<u32>(42525u, 7845u), Struct_3(Struct_2(vec3<bool>(false, true, true)), Struct_1(vec4<f32>(410f, -175f, var_0.x, -1000f), vec2<f32>(var_1.x, var_0.x), u_input.a, var_1), 51779u, Struct_1(vec4<f32>(var_0.x, var_0.x, var_0.x, -1532f), vec2<f32>(-260f, -325f), u_input.a, vec3<f32>(-2650f, var_1.x, var_1.x))), Struct_3(Struct_2(vec3<bool>(global0.x, false, true)), Struct_1(vec4<f32>(var_1.x, 1576f, -363f, var_1.x), vec2<f32>(1354f, 146f), 29394i, vec3<f32>(var_0.x, 1314f, -1000f)), 73753u, Struct_1(vec4<f32>(-1656f, var_1.x, var_1.x, -808f), var_1.yx, -24536i, var_1)))))).a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x + _wgslsmith_div_f32(-214f, var_1.x)) * var_0.x), Struct_4(func_5(_wgslsmith_add_u32(1u, 61105u), Struct_4(Struct_2(vec3<bool>(true, global0.x, true)), vec2<u32>(0u, 0u), Struct_3(Struct_2(vec3<bool>(global0.x, global0.x, global0.x)), Struct_1(vec4<f32>(var_0.x, 963f, -409f, 620f), vec2<f32>(1192f, var_1.x), u_input.a, var_1), 54556u, Struct_1(vec4<f32>(-807f, var_1.x, 1380f, var_1.x), vec2<f32>(var_1.x, var_0.x), 2147483647i, vec3<f32>(var_0.x, -493f, var_1.x))), Struct_3(Struct_2(vec3<bool>(global0.x, true, global0.x)), Struct_1(vec4<f32>(var_1.x, var_0.x, 1165f, -905f), var_0.xz, 4326i, vec3<f32>(-862f, -1417f, var_1.x)), 379u, Struct_1(vec4<f32>(1000f, 1129f, var_0.x, var_0.x), vec2<f32>(var_1.x, -1337f), u_input.a, var_1))), _wgslsmith_mod_vec3_i32(vec3<i32>(14756i, u_input.a, u_input.a), vec3<i32>(u_input.a, -64308i, 6404i)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1243f, 681f, var_1.x, var_1.x))), ~countOneBits(vec2<u32>(10450u, 37446u)), Struct_3(Struct_2(vec3<bool>(global0.x, global0.x, false)), Struct_1(vec4<f32>(-2873f, -1397f, 1793f, -213f), vec2<f32>(var_1.x, var_1.x), u_input.a, var_1), _wgslsmith_add_u32(63093u, 1u), func_6(Struct_2(vec3<bool>(global0.x, false, false)), -2173f, Struct_4(Struct_2(vec3<bool>(global0.x, global0.x, global0.x)), vec2<u32>(52466u, 19640u), Struct_3(Struct_2(vec3<bool>(false, false, false)), Struct_1(vec4<f32>(var_0.x, var_0.x, 551f, var_1.x), vec2<f32>(-215f, -268f), u_input.a, var_1), 1u, Struct_1(vec4<f32>(-1000f, var_1.x, -700f, var_1.x), vec2<f32>(1927f, -885f), -15671i, vec3<f32>(-457f, var_0.x, 456f))), Struct_3(Struct_2(vec3<bool>(global0.x, false, global0.x)), Struct_1(vec4<f32>(var_0.x, 436f, var_0.x, -919f), vec2<f32>(var_0.x, -1489f), u_input.a, var_1), 21367u, Struct_1(vec4<f32>(1752f, -1030f, 607f, 372f), var_1.zz, u_input.a, vec3<f32>(-598f, var_1.x, var_0.x))))).b), Struct_3(Struct_2(vec3<bool>(true, global0.x, global0.x)), Struct_1(vec4<f32>(var_1.x, var_1.x, var_0.x, -697f), var_1.zz, 27419i, var_1), _wgslsmith_clamp_u32(26987u, 0u, 33345u), Struct_1(vec4<f32>(var_0.x, -785f, var_1.x, 425f), vec2<f32>(var_0.x, 869f), 31443i, vec3<f32>(var_0.x, -540f, -246f))))), u_input.a, func_6(func_6(Struct_2(vec3<bool>(false, true, global0.x)), _wgslsmith_f_op_f32(sign(var_1.x)), Struct_4(Struct_2(vec3<bool>(global0.x, true, global0.x)), vec2<u32>(5820u, 4012u), Struct_3(Struct_2(vec3<bool>(true, global0.x, false)), Struct_1(vec4<f32>(var_0.x, 779f, var_0.x, 281f), var_0.yz, u_input.a, vec3<f32>(470f, var_0.x, 1029f)), 0u, Struct_1(vec4<f32>(1115f, 328f, var_0.x, var_0.x), vec2<f32>(var_0.x, var_0.x), u_input.a, vec3<f32>(380f, 1170f, -412f))), Struct_3(Struct_2(vec3<bool>(false, global0.x, true)), Struct_1(vec4<f32>(694f, var_1.x, -1371f, var_0.x), var_1.xy, 2147483647i, vec3<f32>(2030f, var_1.x, 772f)), 4294967295u, Struct_1(vec4<f32>(var_1.x, -687f, 446f, -675f), vec2<f32>(var_0.x, var_0.x), u_input.a, var_1)))).a, _wgslsmith_f_op_f32(f32(-1f) * -508f), Struct_4(Struct_2(vec3<bool>(true, global0.x, global0.x)), vec2<u32>(1u, 1u), func_6(Struct_2(vec3<bool>(true, false, true)), -444f, Struct_4(Struct_2(vec3<bool>(global0.x, global0.x, true)), vec2<u32>(30196u, 0u), Struct_3(Struct_2(vec3<bool>(global0.x, true, global0.x)), Struct_1(vec4<f32>(var_1.x, -147f, -105f, -889f), var_0.zy, u_input.a, vec3<f32>(-1210f, var_1.x, var_1.x)), 61797u, Struct_1(vec4<f32>(-1329f, var_0.x, var_1.x, var_0.x), var_1.xy, u_input.a, vec3<f32>(1197f, var_0.x, var_1.x))), Struct_3(Struct_2(vec3<bool>(global0.x, global0.x, true)), Struct_1(vec4<f32>(-1000f, var_1.x, -956f, -394f), vec2<f32>(894f, 1000f), u_input.a, vec3<f32>(-1184f, 1000f, -683f)), 39594u, Struct_1(vec4<f32>(791f, var_0.x, -1588f, -478f), var_0.xz, -1i, var_1)))), Struct_3(Struct_2(vec3<bool>(true, false, global0.x)), Struct_1(vec4<f32>(var_1.x, var_0.x, 1345f, var_0.x), var_1.yy, u_input.a, vec3<f32>(662f, 162f, var_0.x)), 1u, Struct_1(vec4<f32>(-1172f, var_1.x, 317f, var_0.x), var_1.zy, u_input.a, var_1)))).d.c > u_input.a, any(vec3<bool>(true, true, func_6(func_5(22073u, Struct_4(Struct_2(vec3<bool>(false, true, global0.x)), vec2<u32>(37538u, 30830u), Struct_3(Struct_2(vec3<bool>(global0.x, false, global0.x)), Struct_1(vec4<f32>(var_1.x, 1819f, var_1.x, -178f), var_0.yy, u_input.a, vec3<f32>(-203f, var_0.x, var_0.x)), 1u, Struct_1(vec4<f32>(-616f, var_1.x, -186f, 823f), vec2<f32>(var_1.x, -2926f), 0i, var_1)), Struct_3(Struct_2(vec3<bool>(false, global0.x, false)), Struct_1(vec4<f32>(var_0.x, 1057f, -1000f, -494f), vec2<f32>(1091f, -578f), u_input.a, var_1), 81764u, Struct_1(vec4<f32>(var_1.x, var_1.x, var_1.x, var_1.x), var_1.yy, 0i, var_1))), vec3<i32>(23694i, -23453i, u_input.a), vec4<f32>(-1000f, 1020f, -806f, var_1.x)), var_1.x, Struct_4(Struct_2(vec3<bool>(global0.x, true, true)), vec2<u32>(4294967295u, 0u), Struct_3(Struct_2(vec3<bool>(global0.x, global0.x, true)), Struct_1(vec4<f32>(-461f, 641f, var_0.x, var_0.x), vec2<f32>(-149f, var_0.x), u_input.a, vec3<f32>(var_0.x, var_1.x, 2839f)), 36851u, Struct_1(vec4<f32>(var_1.x, 1000f, var_0.x, var_1.x), var_1.zy, 2147483647i, vec3<f32>(1096f, var_0.x, 1340f))), Struct_3(Struct_2(vec3<bool>(false, global0.x, global0.x)), Struct_1(vec4<f32>(var_1.x, var_0.x, 2450f, 398f), vec2<f32>(var_1.x, var_0.x), u_input.a, var_1), 19238u, Struct_1(vec4<f32>(714f, -704f, -379f, 1152f), var_0.zy, 1i, var_1)))).a.a.x)));
    var var_4 = _wgslsmith_f_op_f32(floor(482f));
    let var_5 = !any(!select(vec4<bool>(true, true, true, true), !vec4<bool>(true, global0.x, true, true), select(vec4<bool>(global0.x, false, global0.x, global0.x), vec4<bool>(false, false, false, true), false)));
    var var_6 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(654f * _wgslsmith_div_f32(369f, _wgslsmith_f_op_f32(-var_1.x))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2248f + 532f)))) + var_1.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_3.a * vec4<f32>(_wgslsmith_f_op_f32(-1125f * var_0.x), _wgslsmith_f_op_f32(-var_0.x), var_1.x, _wgslsmith_f_op_f32(1256f * var_3.d.x)))), countOneBits(_wgslsmith_sub_u32(min(~86309u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 4278u), vec3<u32>(69908u, 4294967295u, 1u))), 13790u)));
}

