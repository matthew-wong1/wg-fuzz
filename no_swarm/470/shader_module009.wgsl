struct Struct_1 {
    a: vec4<i32>,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec2<bool>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: bool,
    c: vec2<i32>,
    d: Struct_1,
    e: vec2<f32>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
    c: i32,
    d: vec2<i32>,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_2, arg_2: vec4<bool>) -> vec2<f32> {
    let var_0 = Struct_2(Struct_1(u_input.a, _wgslsmith_f_op_f32(abs(-202f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1000f)) + _wgslsmith_f_op_f32(min(arg_0.e.x, _wgslsmith_f_op_f32(arg_0.d.b + -164f)))) - _wgslsmith_f_op_f32(exp2(arg_1.b))), vec2<bool>(true, true));
    let var_1 = arg_0;
    var var_2 = arg_2.yyw;
    var_2 = !select(select(vec3<bool>(any(var_1.a), false, var_1.b), arg_0.a.yyz, arg_2.yzy), !vec3<bool>(arg_0.b, false, any(arg_2.yx)), !all(var_1.a.yy));
    var_2 = !(!arg_2.wyy);
    return vec2<f32>(938f, var_1.e.x);
}

fn func_2(arg_0: vec3<u32>, arg_1: vec3<i32>, arg_2: Struct_4, arg_3: f32) -> vec4<u32> {
    let var_0 = Struct_1(-u_input.a, 309f);
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-364f, arg_3))) * _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-arg_2.b.e), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-671f, -458f) - vec2<f32>(747f, var_0.b)), _wgslsmith_f_op_vec2_f32(-arg_2.b.e), false))))) * vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_3 - _wgslsmith_f_op_f32(trunc(var_0.b))), -314f)), arg_3));
    var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(arg_2.b.e, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(Struct_3(vec4<bool>(false, arg_2.e.b, arg_2.b.a.x, arg_2.b.b), arg_2.b.b, u_input.a.zz, var_0, arg_2.b.e), Struct_2(var_0, -1000f, vec2<bool>(arg_2.b.b, true)), vec4<bool>(arg_2.e.b, true, true, false)))), _wgslsmith_f_op_vec2_f32(floor(arg_2.e.e)))));
    var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1815f)) * _wgslsmith_f_op_f32(-arg_2.a.b)), arg_2.a.b)) - _wgslsmith_f_op_vec2_f32(arg_2.b.e * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-arg_2.e.e), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-363f, -214f)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-878f, 787f)) * _wgslsmith_f_op_vec2_f32(arg_2.b.e + vec2<f32>(-257f, 137f))))));
    var var_2 = max(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 1u, u_input.b, 32279u), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, 30708u, 16250u, 1u), vec4<u32>(arg_0.x, 0u, 4294967295u, 1u)))), ~firstLeadingBit(_wgslsmith_clamp_u32(u_input.b << (u_input.b % 32u), ~u_input.b, _wgslsmith_div_u32(arg_0.x, 4294967295u))));
    return vec4<u32>(1u, _wgslsmith_mod_u32(abs(u_input.b), u_input.b), countOneBits(_wgslsmith_mod_u32(firstTrailingBit(31591u), 4522u)), _wgslsmith_div_u32(1u, ~firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(25307u, 4294967295u), vec2<u32>(66538u, arg_0.x)))));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_2) -> f32 {
    var var_0 = _wgslsmith_add_u32(u_input.b, _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_add_u32(u_input.b, 39300u), 47789u, 65035u, 80365u), firstTrailingBit(vec4<u32>(u_input.b, u_input.b, 0u, u_input.b)) >> (func_2(vec3<u32>(u_input.b, 39364u, u_input.b), arg_0.a.yzw, Struct_4(Struct_1(vec4<i32>(1i, 4460i, arg_1.a.a.x, u_input.c.x), 808f), Struct_3(vec4<bool>(arg_1.c.x, arg_1.c.x, true, arg_1.c.x), arg_1.c.x, arg_1.a.a.xz, arg_1.a, vec2<f32>(arg_0.b, -871f)), 1i, vec2<i32>(25210i, 1i), Struct_3(vec4<bool>(false, arg_1.c.x, false, arg_1.c.x), arg_1.c.x, u_input.c, arg_0, vec2<f32>(-886f, arg_0.b))), 1132f) % vec4<u32>(32u))), 67813u));
    var_0 = 1u;
    var_0 = _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, abs(_wgslsmith_mult_u32(26982u, u_input.b)), ~u_input.b << (u_input.b % 32u)), ~(~(~vec3<u32>(31926u, u_input.b, 4294967295u)))) | 0u;
    let var_1 = Struct_3(select(vec4<bool>(arg_1.c.x, arg_1.c.x, !all(vec3<bool>(arg_1.c.x, arg_1.c.x, false)), true), select(select(vec4<bool>(true, arg_1.c.x, arg_1.c.x, true), vec4<bool>(arg_1.c.x, false, true, arg_1.c.x), select(vec4<bool>(false, false, false, false), vec4<bool>(arg_1.c.x, true, arg_1.c.x, arg_1.c.x), arg_1.c.x)), !select(vec4<bool>(arg_1.c.x, arg_1.c.x, arg_1.c.x, false), vec4<bool>(arg_1.c.x, false, false, false), false), any(vec3<bool>(arg_1.c.x, false, true))), !vec4<bool>(!arg_1.c.x, arg_1.c.x, arg_1.c.x, any(vec4<bool>(false, arg_1.c.x, arg_1.c.x, arg_1.c.x)))), any(vec2<bool>(true, all(vec4<bool>(true, true, arg_1.c.x, true)))), ~(_wgslsmith_div_vec2_i32(arg_0.a.xw, abs(vec2<i32>(arg_1.a.a.x, -33666i))) ^ firstTrailingBit(vec2<i32>(-1i, u_input.c.x))), arg_0, vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-818f, 1069f), arg_1.a.b)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(135f + arg_1.a.b))))));
    let var_2 = var_1;
    return var_1.d.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(Struct_1(u_input.a, 384f), Struct_2(Struct_1(vec4<i32>(2147483647i, -14756i, u_input.c.x, 38603i), 335f), -411f, vec2<bool>(false, true)))) - -744f), -838f, 533f, -1302f)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1000f, 712f, -600f, 1222f))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -197f, 1000f, 1742f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-364f, -629f, -217f, -1608f) + vec4<f32>(1185f, 556f, -128f, 1868f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(577f, 311f, -1345f, -579f)))))));
    let var_1 = _wgslsmith_sub_i32(_wgslsmith_sub_i32(max(abs(countOneBits(u_input.c.x)), firstTrailingBit(_wgslsmith_clamp_i32(u_input.c.x, -7570i, 0i))), -(i32(-1i) * -u_input.c.x)), u_input.a.x);
    var_0 = vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -517f))), var_0.x, -1017f, -737f);
    var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -847f), var_0.x, var_0.x, _wgslsmith_f_op_f32(var_0.x + 820f)) + _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-482f, var_0.x, var_0.x, -194f)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-831f, 1204f, 947f, -318f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-151f, var_0.x, 716f, 464f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x) * vec4<f32>(-1000f, var_0.x, 168f, var_0.x)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, 1846f, -1040f) + vec4<f32>(-406f, var_0.x, 1014f, var_0.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1534f, -271f, -339f, -500f), vec4<f32>(var_0.x, -216f, var_0.x, var_0.x))))));
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-968f, var_0.x, var_0.x, var_0.x) - vec4<f32>(var_0.x, -890f, var_0.x, var_0.x))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -2636f, var_0.x, -1061f)), vec4<f32>(var_0.x, -664f, -1000f, var_0.x)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-620f, var_0.x, 261f, var_0.x), vec4<f32>(var_0.x, 200f, -636f, var_0.x))) * vec4<f32>(_wgslsmith_f_op_f32(round(var_0.x)), _wgslsmith_f_op_f32(step(var_0.x, var_0.x)), _wgslsmith_f_op_f32(f32(-1f) * -1322f), _wgslsmith_f_op_f32(var_0.x + -574f)))));
    let var_2 = Struct_1(vec4<i32>(-1i, 1i, _wgslsmith_mod_i32(~1i, u_input.c.x), var_1), _wgslsmith_f_op_f32(func_1(Struct_1(countOneBits(-u_input.a), var_0.x), Struct_2(Struct_1(firstLeadingBit(u_input.a), _wgslsmith_f_op_f32(step(-228f, 173f))), var_0.x, vec2<bool>(true, true)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a.yx, ((~vec2<u32>(u_input.b, u_input.b) ^ (vec2<u32>(u_input.b, 51538u) >> (vec2<u32>(u_input.b, u_input.b) % vec2<u32>(32u)))) | ~min(vec2<u32>(u_input.b, 13255u), vec2<u32>(u_input.b, 0u))) << (~select(~vec2<u32>(31475u, u_input.b), max(vec2<u32>(0u, 22845u), vec2<u32>(1u, 4294967295u)), vec2<bool>(false, false)) % vec2<u32>(32u)));
}

