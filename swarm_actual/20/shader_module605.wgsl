struct Struct_1 {
    a: vec3<bool>,
    b: f32,
    c: u32,
    d: bool,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: vec2<i32>,
    d: i32,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_5 {
    a: f32,
    b: f32,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: vec3<i32>,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3() -> u32 {
    global0 = ~vec3<u32>(~firstLeadingBit(~global0.x), u_input.c, _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a, global0.x, 51285u), vec3<u32>(6476u, u_input.c, u_input.c)) << (max(~0u, _wgslsmith_div_u32(1u, 55744u)) % 32u));
    let var_0 = Struct_3(Struct_1(!(!select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), true)), 1752f, firstTrailingBit(~u_input.a) >> (4294967295u % 32u), any(vec4<bool>(true, true, true, true))), 1012f, _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.b, abs(u_input.b) << (firstLeadingBit(global0.x) % 32u)), -vec2<i32>(i32(-1i) * -20805i, -1i)), _wgslsmith_sub_i32(countOneBits(_wgslsmith_mod_i32(1i, -78099i)) << (0u % 32u), 0i));
    var var_1 = 1f;
    return ~_wgslsmith_sub_u32(_wgslsmith_sub_u32(_wgslsmith_sub_u32(u_input.c, global0.x) & ~global0.x, ~u_input.a), ~select(var_0.a.c, ~4294967295u, true));
}

fn func_2() -> Struct_5 {
    let var_0 = Struct_3(Struct_1(select(vec3<bool>(true, true, true), !select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), true), any(vec2<bool>(true, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-779f)) - -222f), func_3(), all(vec4<bool>(true, true, false, select(true, true, false)))), _wgslsmith_f_op_f32(-1f), reverseBits(vec2<i32>(1i, -4403i | _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, u_input.b, u_input.b, 1i), vec4<i32>(u_input.b, 1i, -9891i, 2147483647i)))), u_input.b);
    var var_1 = Struct_4(Struct_2(select(countOneBits(global0.xx), _wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(global0.xy, global0.yy), global0.yz << (global0.yz % vec2<u32>(32u))), !vec2<bool>(var_0.a.a.x, var_0.a.d))), Struct_2(~firstLeadingBit(global0.yx)), var_0.a, var_0.a);
    let var_2 = var_1.a.a;
    global0 = vec3<u32>(~var_0.a.c, _wgslsmith_sub_u32(var_2.x, countOneBits(34285u)), _wgslsmith_mult_u32(22244u, var_0.a.c)) >> (_wgslsmith_clamp_vec3_u32(~(~(vec3<u32>(global0.x, global0.x, global0.x) ^ vec3<u32>(u_input.a, u_input.c, var_0.a.c))), vec3<u32>(~_wgslsmith_dot_vec2_u32(global0.xy, vec2<u32>(30232u, 90931u)), var_2.x, ~_wgslsmith_sub_u32(var_0.a.c, 0u)), ~vec3<u32>(1u, u_input.c, var_1.a.a.x) & (~vec3<u32>(40812u, var_1.c.c, var_1.b.a.x) & ~vec3<u32>(u_input.c, var_1.c.c, 24982u))) % vec3<u32>(32u));
    let var_3 = 799f;
    return Struct_5(var_0.a.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_3 - -134f), 487f))), var_0.a.a.xx);
}

fn func_4(arg_0: Struct_4, arg_1: Struct_5, arg_2: Struct_2, arg_3: Struct_2) -> f32 {
    global0 = vec3<u32>(~1u, _wgslsmith_add_u32(arg_0.a.a.x, _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.c, 61222u, 0u, arg_0.a.a.x), abs(vec4<u32>(4294967295u, 0u, 56980u, u_input.a)))), 1u);
    var var_0 = vec4<u32>(min(_wgslsmith_add_u32(0u, _wgslsmith_mult_u32(arg_0.b.a.x, u_input.c)), arg_2.a.x), arg_3.a.x, ~(global0.x | ~global0.x), 4294967295u) & _wgslsmith_mod_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a & 0u, 4294967295u, _wgslsmith_mod_u32(1u, 83158u), ~arg_3.a.x), min(vec4<u32>(arg_2.a.x, arg_0.a.a.x, 1u, 4294967295u), ~vec4<u32>(9068u, global0.x, arg_3.a.x, u_input.a)), select(vec4<u32>(4294967295u, arg_0.b.a.x, arg_2.a.x, arg_0.d.c), vec4<u32>(1u, 0u, 1u, 71969u), vec4<bool>(true, arg_1.c.x, arg_0.d.a.x, false)) ^ _wgslsmith_sub_vec4_u32(vec4<u32>(arg_3.a.x, 12739u, arg_3.a.x, arg_2.a.x), vec4<u32>(1u, 1u, 1u, 0u))), ~vec4<u32>(1u, arg_0.d.c, 4294967295u, 46938u));
    let var_1 = _wgslsmith_add_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_div_i32(u_input.b, u_input.b), u_input.b & u_input.b), ~(-1i), i32(-1i) * -49257i, 8254i), ~(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b, 5464i, u_input.b, -2147483647i), vec4<i32>(44929i, u_input.b, u_input.b, -60540i)) & _wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, 54020i, u_input.b, -1i), vec4<i32>(2147483647i, -1370i, u_input.b, -49231i)))), _wgslsmith_sub_vec4_i32(min(~abs(vec4<i32>(29624i, u_input.b, -26823i, u_input.b)), vec4<i32>(_wgslsmith_sub_i32(-18930i, u_input.b), -2147483647i, u_input.b, -u_input.b)), _wgslsmith_add_vec4_i32(~_wgslsmith_add_vec4_i32(vec4<i32>(-47882i, -30470i, u_input.b, 2147483647i), vec4<i32>(u_input.b, u_input.b, u_input.b, 26709i)), vec4<i32>(-2147483647i >> (1u % 32u), u_input.b << (11329u % 32u), u_input.b, ~u_input.b))));
    let var_2 = min(var_1.x, ~u_input.b);
    var var_3 = ~_wgslsmith_dot_vec2_i32(-vec2<i32>(var_1.x, abs(u_input.b)), countOneBits(-(var_1.zz << (arg_0.b.a % vec2<u32>(32u)))));
    return arg_0.d.b;
}

fn func_1(arg_0: vec2<bool>) -> f32 {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(Struct_4(Struct_2(global0.yz), Struct_2(global0.zz), Struct_1(vec3<bool>(true, false, arg_0.x), 1583f, 7337u, arg_0.x), Struct_1(vec3<bool>(false, arg_0.x, true), -501f, 10343u, false)), func_2(), Struct_2(vec2<u32>(4294967295u, 96370u)), Struct_2(vec2<u32>(u_input.c, global0.x)))) + _wgslsmith_f_op_f32(round(-348f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1065f + 743f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-159f))), any(vec3<bool>(true, true, true)))) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-864f)))))), -709f);
    let var_1 = Struct_3(Struct_1(select(select(!vec3<bool>(arg_0.x, arg_0.x, arg_0.x), select(vec3<bool>(arg_0.x, arg_0.x, false), vec3<bool>(false, false, arg_0.x), true), !arg_0.x), !vec3<bool>(arg_0.x, false, true), select(vec3<bool>(false, arg_0.x, false), !vec3<bool>(false, arg_0.x, arg_0.x), arg_0.x)), 488f, ~u_input.c, any(select(!vec3<bool>(arg_0.x, true, arg_0.x), vec3<bool>(arg_0.x, false, arg_0.x), true))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(1759f)), var_0.x)), var_0.x)), min(_wgslsmith_div_vec2_i32(~(~vec2<i32>(72499i, -2147483647i)), ~(-vec2<i32>(u_input.b, 26511i))), vec2<i32>(_wgslsmith_div_i32(-17689i >> (global0.x % 32u), u_input.b >> (1u % 32u)), -reverseBits(u_input.b))), _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(_wgslsmith_clamp_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(-29030i, u_input.b, u_input.b), vec3<i32>(23233i, u_input.b, u_input.b)), vec3<i32>(1i, u_input.b, -6347i), select(vec3<i32>(0i, 0i, 0i), vec3<i32>(2147483647i, u_input.b, -33381i), vec3<bool>(arg_0.x, arg_0.x, true))), vec3<i32>(u_input.b, firstTrailingBit(u_input.b), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, u_input.b, 26868i), vec3<i32>(u_input.b, u_input.b, u_input.b)))), _wgslsmith_sub_vec3_i32(-vec3<i32>(u_input.b, u_input.b, u_input.b), _wgslsmith_clamp_vec3_i32(vec3<i32>(1i, -1i, -10012i) >> (vec3<u32>(1u, u_input.a, global0.x) % vec3<u32>(32u)), abs(vec3<i32>(-4547i, u_input.b, -2665i)), vec3<i32>(0i, u_input.b, u_input.b) ^ vec3<i32>(u_input.b, u_input.b, u_input.b)))));
    let var_2 = Struct_2(vec2<u32>(u_input.a, ~countOneBits(40855u)));
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_0.x, var_0.x, 428f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0 + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0 + var_0) * _wgslsmith_div_vec3_f32(vec3<f32>(var_1.b, var_0.x, var_1.b), vec3<f32>(var_1.b, var_0.x, -1374f))))));
    let var_4 = abs(max(i32(-1i) * -var_1.c.x, -(0i ^ ~var_1.d)));
    return _wgslsmith_f_op_f32(func_4(Struct_4(var_2, var_2, Struct_1(vec3<bool>(var_1.a.a.x || arg_0.x, var_1.a.a.x != true, !arg_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.b) - var_3.x), 51496u, !any(vec4<bool>(var_1.a.a.x, true, false, arg_0.x))), Struct_1(vec3<bool>(all(vec4<bool>(arg_0.x, arg_0.x, true, arg_0.x)), all(vec2<bool>(var_1.a.d, var_1.a.d)), arg_0.x), var_1.b, _wgslsmith_div_u32(u_input.a >> (var_2.a.x % 32u), _wgslsmith_clamp_u32(10176u, 1u, 2056u)), arg_0.x)), func_2(), Struct_2(vec2<u32>(0u, ~_wgslsmith_mult_u32(1u, var_2.a.x))), var_2));
}

fn func_5(arg_0: f32, arg_1: Struct_5, arg_2: bool, arg_3: i32) -> Struct_2 {
    global0 = abs(vec3<u32>(u_input.a, ~firstTrailingBit(~u_input.a), ~3603u));
    let var_0 = Struct_3(Struct_1(vec3<bool>(any(!arg_1.c), arg_2 || arg_2, !(u_input.c > u_input.c)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(arg_1.b)))), u_input.a, true), -492f, countOneBits(max(~vec2<i32>(-6418i, 2147483647i), abs(vec2<i32>(19575i, 2147483647i))) | max(-vec2<i32>(u_input.b, 26535i), -vec2<i32>(u_input.b, 1i))), u_input.b);
    var var_1 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.b, _wgslsmith_f_op_f32(abs(arg_1.b)), _wgslsmith_f_op_f32(round(1184f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-949f, var_0.a.b, arg_1.b), vec3<f32>(arg_0, 325f, arg_0))))))));
    let var_2 = _wgslsmith_add_u32(reverseBits(var_0.a.c), 9265u);
    var var_3 = var_0.a;
    return Struct_2(global0.zz);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = false;
    let var_1 = Struct_2(vec2<u32>(12225u, firstTrailingBit(u_input.a)));
    let var_2 = _wgslsmith_mod_i32(26393i, _wgslsmith_dot_vec4_i32(vec4<i32>(-204i, firstLeadingBit(-37743i), _wgslsmith_sub_i32(u_input.b << (global0.x % 32u), -13000i), abs(_wgslsmith_div_i32(-1i, u_input.b))), -_wgslsmith_mod_vec4_i32(~vec4<i32>(1i, u_input.b, -1i, 5099i), _wgslsmith_mod_vec4_i32(vec4<i32>(-28826i, -25682i, u_input.b, u_input.b), vec4<i32>(u_input.b, -34958i, u_input.b, u_input.b)))));
    let var_3 = 76211u == u_input.c;
    let var_4 = func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(select(!vec2<bool>(var_0, var_0), vec2<bool>(false, false), true)))), func_2(), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2217f * -1046f))) < _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(647f * _wgslsmith_f_op_f32(min(111f, 1697f))))), u_input.b);
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a, -2065f, _wgslsmith_clamp_vec3_i32(vec3<i32>(~(-33252i), 0i, u_input.b ^ var_2), ~abs(vec3<i32>(var_2, -7711i, var_2)), _wgslsmith_div_vec3_i32(abs(vec3<i32>(u_input.b, -1i, u_input.b)), ~vec3<i32>(u_input.b, var_2, var_2))) >> (firstLeadingBit(select(max(vec3<u32>(var_4.a.x, 40291u, 16446u), vec3<u32>(32767u, var_1.a.x, global0.x)), select(vec3<u32>(1u, 4294967295u, global0.x), vec3<u32>(u_input.c, u_input.a, u_input.a), var_3), var_3)) % vec3<u32>(32u)), -400f, 1i);
}

