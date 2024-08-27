struct Struct_1 {
    a: u32,
    b: f32,
    c: vec2<f32>,
    d: vec2<f32>,
    e: u32,
}

struct Struct_2 {
    a: i32,
    b: u32,
    c: vec2<f32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: i32,
    e: vec3<i32>,
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

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_3, arg_1: f32, arg_2: Struct_1, arg_3: Struct_2) -> u32 {
    let var_0 = vec3<i32>(_wgslsmith_dot_vec4_i32(select(vec4<i32>(abs(-2147483647i), u_input.e.x >> (arg_0.a % 32u), _wgslsmith_dot_vec2_i32(u_input.e.xx, vec2<i32>(-10172i, 2147483647i)), ~(-20311i)), _wgslsmith_clamp_vec4_i32(~vec4<i32>(arg_3.a, 0i, arg_3.a, -2147483647i), ~vec4<i32>(-37564i, -2147483647i, -2147483647i, 1i), vec4<i32>(-44403i, u_input.b, -5817i, u_input.d)), select(select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, false), false), vec4<bool>(true, false, false, true), any(vec4<bool>(false, false, true, false)))), -vec4<i32>(_wgslsmith_dot_vec2_i32(u_input.e.yz, u_input.a), u_input.e.x, arg_3.a, -arg_3.a)), select(-1i, _wgslsmith_dot_vec3_i32(select(vec3<i32>(u_input.d, u_input.e.x, 0i), u_input.e, any(vec2<bool>(true, true))), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a.x, 28714i, -19355i) | u_input.e, u_input.e)), any(vec2<bool>(true, true)) && !select(true, false, false)), u_input.e.x >> (~u_input.c % 32u));
    let var_1 = Struct_2(~select(~(-30397i), arg_3.a, true), max(~firstLeadingBit(arg_0.a ^ 34043u), arg_3.b), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_1)) - arg_2.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1737f))), arg_1), arg_2, Struct_1(firstLeadingBit(0u), _wgslsmith_f_op_f32(f32(-1f) * -882f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3.e.d.x, 1729f))))), arg_3.c, 41715u));
    let var_2 = !select(vec2<bool>(false, true), !vec2<bool>(all(vec4<bool>(true, false, true, false)), true), vec2<bool>(select(select(true, false, false), false, false), all(vec2<bool>(false, true))));
    return arg_0.a;
}

fn func_2(arg_0: u32, arg_1: u32) -> vec3<bool> {
    var var_0 = vec4<bool>(true, false & all(vec3<bool>(true, true, true)), true, !any(vec2<bool>(true, true)));
    var_0 = vec4<bool>(4294967295u <= ~u_input.c, !(u_input.b < min(-2147483647i ^ u_input.b, -1i)), true | (_wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.d, -2398i, 68178i, u_input.b), vec4<i32>(u_input.a.x, u_input.a.x, -2147483647i, 50069i)) <= (firstLeadingBit(u_input.d) & u_input.d)), !(!(42916i > _wgslsmith_sub_i32(u_input.b, 1i))));
    let var_1 = Struct_2(-52330i, arg_0, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-631f, -1995f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(781f, -251f)))))), Struct_1(_wgslsmith_mult_u32(55091u | arg_0, abs(func_3(Struct_3(u_input.c, -1000f), 2099f, Struct_1(u_input.c, 883f, vec2<f32>(469f, -1000f), vec2<f32>(-652f, 1338f), 1u), Struct_2(u_input.b, 8534u, vec2<f32>(179f, -782f), Struct_1(u_input.c, -690f, vec2<f32>(1000f, 430f), vec2<f32>(-1110f, -128f), 4294967295u), Struct_1(57867u, 1742f, vec2<f32>(3031f, -2717f), vec2<f32>(491f, -898f), 4371u))))), 112f, _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)), vec2<f32>(2027f, 928f), arg_0), Struct_1(_wgslsmith_div_u32(arg_0, 0u) >> (_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(arg_0, u_input.c, arg_0), vec3<u32>(arg_0, u_input.c, 4294967295u)), vec3<u32>(0u, arg_0, arg_0) << (vec3<u32>(arg_0, 0u, arg_1) % vec3<u32>(32u))) % 32u), 1518f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1000f, -1321f), vec2<f32>(-1398f, -960f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1209f, -2112f)))), vec2<f32>(_wgslsmith_f_op_f32(trunc(1448f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-834f * -666f) + -133f)), _wgslsmith_mod_u32(firstTrailingBit(arg_0 ^ arg_0), 0u)));
    var var_2 = var_1.d.d;
    let var_3 = select(var_0.wxx, select(select(!vec3<bool>(var_0.x, true, true), var_0.zyz, select(vec3<bool>(var_0.x, var_0.x, var_0.x), var_0.zyy, !vec3<bool>(var_0.x, false, false))), vec3<bool>(var_0.x, true, true), !(func_3(Struct_3(0u, -310f), var_1.c.x, var_1.d, var_1) >= arg_0)), select(firstTrailingBit(var_1.a) == reverseBits(~var_1.a), !(24382i < ~u_input.d), false));
    return !vec3<bool>(true, true, any(var_3.xz));
}

fn func_1(arg_0: vec2<f32>) -> Struct_2 {
    let var_0 = 2824i;
    let var_1 = select(~vec2<i32>(_wgslsmith_mult_i32(1i, u_input.e.x << (u_input.c % 32u)), -u_input.e.x), ~u_input.a, !(true & any(vec3<bool>(true, false, false))));
    let var_2 = abs(u_input.e);
    var var_3 = !select(select(vec3<bool>(true, true, true), select(func_2(1u, 36041u), select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), true), true), select(select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), false), select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false)), vec3<bool>(false, false, false))), vec3<bool>(true, func_2(abs(u_input.c), ~u_input.c).x, !all(vec2<bool>(true, false))), func_2(u_input.c, u_input.c).x && true);
    let var_4 = vec2<bool>(all(select(!vec2<bool>(var_3.x, var_3.x), vec2<bool>(358f >= arg_0.x, true), func_2(~u_input.c, 4294967295u).zz)), func_2(u_input.c, _wgslsmith_mult_u32(abs(~1u), 1u)).x);
    return Struct_2(u_input.b, 46100u, _wgslsmith_f_op_vec2_f32(step(arg_0, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.x, 1295f) + arg_0) * _wgslsmith_f_op_vec2_f32(-arg_0)), _wgslsmith_f_op_vec2_f32(min(arg_0, _wgslsmith_f_op_vec2_f32(arg_0 - arg_0))), true)))), Struct_1(firstTrailingBit(_wgslsmith_sub_u32(~23220u, _wgslsmith_div_u32(5814u, 43069u))), _wgslsmith_f_op_f32(-828f + arg_0.x), _wgslsmith_f_op_vec2_f32(select(arg_0, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(-843f, arg_0.x) * arg_0))), var_3.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.x, _wgslsmith_div_f32(arg_0.x, -282f)) + _wgslsmith_div_vec2_f32(vec2<f32>(1000f, arg_0.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(803f, -738f)))), 1u), Struct_1(u_input.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0.x, arg_0.x, var_3.x))) + arg_0.x), arg_0, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x))), 25390u));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3, arg_2: vec4<u32>) -> i32 {
    var var_0 = arg_0.a;
    var var_1 = 60597u;
    var var_2 = Struct_3(~u_input.c, -302f);
    var var_3 = func_1(arg_0.e.d).e;
    let var_4 = Struct_3(reverseBits(1u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.d.c.x)))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_1.b), _wgslsmith_f_op_f32(ceil(var_3.b)), func_2(var_2.a, u_input.c).x)), 2172f)));
    return arg_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(func_4(func_1(vec2<f32>(-1028f, -662f)), Struct_3(func_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-961f, 445f))).d.e, 381f), vec4<u32>(1u, ~firstTrailingBit(26514u), ~countOneBits(u_input.c), u_input.c ^ u_input.c)), ~4294967295u, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-822f, _wgslsmith_f_op_f32(sign(1112f))) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-173f, 1418f))), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(1301f, 827f))), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false))))), vec2<f32>(-744f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1428f))), !select(vec2<bool>(true, true), vec2<bool>(true, true), true))), func_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(1518f, -741f), vec2<f32>(925f, 1158f)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-283f, -1756f))))).e, Struct_1(abs(0u), -2214f, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(343f, 223f), vec2<f32>(-369f, -1005f)))) + vec2<f32>(1203f, _wgslsmith_f_op_f32(f32(-1f) * -212f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1012f, -575f) - vec2<f32>(2148f, 1000f)))), 0u));
    let var_1 = var_0.d;
    var var_2 = vec2<f32>(-304f, -1000f);
    var var_3 = func_1(vec2<f32>(_wgslsmith_f_op_f32(func_1(var_0.e.d).c.x + 852f), -557f));
    let var_4 = select(true, !all(vec4<bool>(true, true, true, true)) || all(select(vec2<bool>(true, false), vec2<bool>(false, false), u_input.a.x < 0i)), false);
    var var_5 = func_1(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(var_3.d.d)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.x, var_3.e.b) * vec2<f32>(1800f, var_1.c.x))), var_0.e.d), var_0.e.d)));
    let var_6 = func_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(247f, -252f))), vec2<f32>(_wgslsmith_f_op_f32(411f * var_2.x), 1f))) * var_5.d.d));
    var var_7 = Struct_3(31616u, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -2263f), -283f, var_4)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(trunc(1966f)));
}

