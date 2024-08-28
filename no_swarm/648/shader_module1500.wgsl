struct Struct_1 {
    a: u32,
    b: vec3<u32>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
}

struct Struct_4 {
    a: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec2<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> i32 {
    var var_0 = 9275i >= u_input.c.x;
    var_0 = any(vec2<bool>(true, true));
    var var_1 = select(max(max(u_input.c.x, -u_input.c.x), max(u_input.c.x, max(u_input.c.x, 2147483647i))) > (-15895i & max(u_input.c.x & u_input.c.x, u_input.c.x)), !all(select(select(vec2<bool>(false, false), vec2<bool>(true, true), false), vec2<bool>(true, true), vec2<bool>(false, false))), !(~(~14839u) <= _wgslsmith_mod_u32(u_input.a.x, _wgslsmith_mult_u32(u_input.b.x, 22341u))));
    var_0 = !all(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), true), vec2<bool>(true, true)));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-950f, 683f, 258f) * vec3<f32>(-992f, 212f, 657f)) - vec3<f32>(1553f, 1966f, 488f))))));
    return max(-(~u_input.c.x), 1i) << (u_input.a.x % 32u);
}

fn func_2() -> Struct_4 {
    var var_0 = _wgslsmith_dot_vec3_i32(vec3<i32>(-(u_input.c.x | func_3()), u_input.c.x, 1i), _wgslsmith_sub_vec3_i32(select(~_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.c.x, 16381i, u_input.c.x), vec3<i32>(u_input.c.x, -2147483647i, u_input.c.x)), vec3<i32>(reverseBits(18839i), -9397i, 2147483647i), false), vec3<i32>(func_3() ^ _wgslsmith_clamp_i32(-2147483647i, 51136i, u_input.c.x), _wgslsmith_add_i32(u_input.c.x, u_input.c.x), firstLeadingBit(firstLeadingBit(14083i)))));
    let var_1 = Struct_2(vec4<u32>(105527u, min(_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(u_input.d, u_input.b.wx, vec2<u32>(1u, u_input.b.x)), ~u_input.b.xy), abs(1u)), firstLeadingBit(u_input.d.x) | _wgslsmith_mod_u32(u_input.d.x, abs(u_input.d.x)), ~(~(~u_input.a.x))));
    var_0 = 0i;
    return Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -276f)) * -2032f) + -1419f));
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_4, arg_2: i32) -> f32 {
    let var_0 = u_input.d;
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-533f, arg_1.a, 472f), vec3<f32>(arg_1.a, arg_1.a, 1627f), vec3<bool>(false, arg_0.x, arg_0.x))) * vec3<f32>(-830f, arg_1.a, arg_1.a))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.a, arg_1.a, arg_1.a)) + _wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_1.a, arg_1.a, arg_1.a), vec3<f32>(arg_1.a, -273f, 1101f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(662f, -414f, arg_1.a)))))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-576f + arg_1.a), _wgslsmith_f_op_f32(arg_1.a - arg_1.a)), arg_1.a) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-661f, arg_1.a, arg_1.a)))))));
    let var_2 = Struct_2(max(_wgslsmith_div_vec4_u32(abs(firstTrailingBit(vec4<u32>(1u, 23233u, var_0.x, 45925u))), u_input.b), ~(select(vec4<u32>(var_0.x, var_0.x, var_0.x, 24711u), vec4<u32>(4776u, u_input.b.x, 4294967295u, 45588u), vec4<bool>(false, true, true, arg_0.x)) << (~u_input.b % vec4<u32>(32u)))));
    let var_3 = Struct_1(~(1u | ~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.a.x), vec2<u32>(1u, var_0.x))), ~abs(abs(_wgslsmith_div_vec3_u32(var_2.a.xzx, vec3<u32>(var_0.x, var_0.x, var_0.x)))), vec4<bool>(arg_0.x, arg_0.x, _wgslsmith_clamp_u32(var_0.x, 80261u, max(59736u, 48015u)) > _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(u_input.b.wxx, u_input.b.ywy), _wgslsmith_div_u32(6962u, 46758u), u_input.b.x), select(arg_0.x, any(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, true)), !(2147483647i <= u_input.c.x))));
    let var_4 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(ceil(-1204f)))), arg_1.a) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(291f, var_1.x)), vec2<f32>(-360f, -1000f))))));
    return 286f;
}

fn func_1() -> Struct_4 {
    let var_0 = _wgslsmith_mult_i32(~_wgslsmith_div_i32(u_input.c.x, -1i), -u_input.c.x);
    let var_1 = _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(480f + 1000f) - _wgslsmith_f_op_f32(max(1110f, -862f)))))));
    let var_2 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(vec3<bool>(true, true, true), func_2(), -20803i >> (u_input.a.x % 32u))))));
    var var_3 = false;
    var var_4 = !(!vec3<bool>(all(select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false), true)), any(vec3<bool>(false, true, true)), true));
    return Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_2.a)) + _wgslsmith_f_op_f32(f32(-1f) * -1074f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-1855f)), _wgslsmith_f_op_f32(var_0.a + -305f)), _wgslsmith_f_op_f32(f32(-1f) * -637f), -692f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.a, var_0.a, true)))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.a))), var_0.a, var_0.a, -289f) * _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(204f, -2047f, var_0.a, var_0.a), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a, 415f, var_0.a, var_0.a) * vec4<f32>(-558f, 1764f, 2564f, 1055f))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-659f, var_0.a, var_0.a, 1239f) + vec4<f32>(863f, var_0.a, 391f, -1251f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-797f, 1463f, var_0.a, var_0.a)), true)))), !(!(!select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true))))));
    var var_2 = Struct_2(u_input.b);
    var var_3 = Struct_1(1u, var_2.a.xyz, !select(vec4<bool>(true, true, all(vec3<bool>(false, true, false)), true), vec4<bool>(all(vec4<bool>(false, false, true, false)), select(false, false, false), all(vec3<bool>(true, false, true)), false), vec4<bool>(false, false, true, all(vec3<bool>(true, true, true)))));
    var_3 = Struct_1(var_3.b.x, var_2.a.zyy, !(!(!vec4<bool>(var_3.c.x, var_3.c.x, var_3.c.x, false))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(floor(var_1.yxz)), _wgslsmith_f_op_vec3_f32(exp2(var_1.ywy)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_1.wxz * var_1.xxx) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-744f, var_0.a, 1000f))))), firstTrailingBit(vec2<i32>(-1i) * -vec2<i32>(-2147483647i, 8310i)));
}

