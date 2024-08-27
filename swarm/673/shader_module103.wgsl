struct Struct_1 {
    a: i32,
    b: vec3<f32>,
}

struct Struct_2 {
    a: bool,
    b: vec4<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<f32>,
    c: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: i32,
    c: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> vec3<i32> {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(842f)) + -1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1000f, _wgslsmith_f_op_f32(floor(418f)), true)) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1682f + -871f))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1044f))));
    let var_1 = Struct_4(any(vec4<bool>(!(58331u > u_input.b.x), u_input.b.x < 85437u, all(vec3<bool>(true, true, true)), select(false, true, all(vec3<bool>(false, true, true))))), u_input.d >> (u_input.b.x % 32u), _wgslsmith_f_op_f32(floor(1708f)));
    var var_2 = _wgslsmith_mult_vec3_i32(~(-_wgslsmith_div_vec3_i32(-u_input.a, u_input.a)), select(u_input.a, _wgslsmith_clamp_vec3_i32(u_input.a, -_wgslsmith_div_vec3_i32(u_input.a, u_input.a), ~_wgslsmith_mod_vec3_i32(vec3<i32>(var_1.b, u_input.d, -31938i), u_input.a)), !vec3<bool>(!var_1.a, all(vec4<bool>(false, var_1.a, var_1.a, var_1.a)), var_1.a || var_1.a)));
    var_0 = var_1.c;
    var_2 = countOneBits(countOneBits(vec3<i32>(15785i, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, -14578i, var_2.x, var_2.x), vec4<i32>(var_2.x, 39241i, var_1.b, 173i)), u_input.a.x) ^ firstLeadingBit(u_input.a)));
    return u_input.a;
}

fn func_2(arg_0: f32, arg_1: vec3<u32>, arg_2: vec4<bool>, arg_3: i32) -> u32 {
    var var_0 = arg_1.x;
    let var_1 = 6690u;
    var var_2 = _wgslsmith_add_i32(arg_3, 2147483647i);
    let var_3 = _wgslsmith_div_vec3_i32(~(~(vec3<i32>(2147483647i, arg_3, u_input.c.x) | vec3<i32>(0i, -53333i, -49506i))), _wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_mod_i32(-2147483647i, -u_input.c.x), arg_3, _wgslsmith_dot_vec3_i32(vec3<i32>(-12901i, -9607i, -8846i), ~u_input.a)), _wgslsmith_div_vec3_i32(u_input.a, func_3())));
    var_0 = var_1;
    return 3905u;
}

fn func_1(arg_0: vec4<bool>, arg_1: vec3<u32>) -> Struct_3 {
    var var_0 = -535f;
    let var_1 = firstTrailingBit(arg_1) & reverseBits(vec3<u32>(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.b.x), u_input.b.yy), ~u_input.b.x), func_2(-1196f, _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b.x, 0u, 1u), vec3<u32>(u_input.b.x, 63514u, 33935u)), vec4<bool>(arg_0.x, true, false, arg_0.x), -34666i), 23905u));
    var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1963f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-688f + 149f)), arg_0.x)) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1345f))))));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1139f)));
    var var_2 = 0u;
    return Struct_3(Struct_1(27108i, _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1318f), 602f, -649f), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -596f), _wgslsmith_f_op_f32(min(-804f, 237f)), -715f)))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 1349f) - vec2<f32>(-183f, 1847f)))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-313f, 812f))))))), Struct_1(13179i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-953f, -784f, -1066f)), !arg_0.xwx)))));
}

fn func_4(arg_0: Struct_3, arg_1: f32, arg_2: bool) -> Struct_2 {
    var var_0 = ~(~(~_wgslsmith_div_u32(firstTrailingBit(u_input.b.x), 6739u)));
    return Struct_2(true, vec4<f32>(222f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_0.a.b.x)) - _wgslsmith_f_op_f32(sign(arg_1))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2835f + _wgslsmith_f_op_f32(select(arg_0.b.x, arg_1, false)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_1)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(func_1(vec4<bool>(true, true, true, true), vec3<u32>(u_input.b.x >> ((u_input.b.x | u_input.b.x) % 32u), firstLeadingBit(_wgslsmith_add_u32(u_input.b.x, 0u)), _wgslsmith_div_u32(~66385u, 124155u))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-283f, 2285f, true)) + -1000f))))), !any(select(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true), false)));
    let var_1 = 4294967295u;
    var_0 = Struct_2(var_0.a, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(var_0.b))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(var_0.b * _wgslsmith_f_op_vec4_f32(var_0.b * var_0.b)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(var_0.b + var_0.b), var_0.b), select(!vec4<bool>(var_0.a, true, var_0.a, var_0.a), vec4<bool>(var_0.a, true, false, false), select(vec4<bool>(true, true, false, var_0.a), vec4<bool>(true, var_0.a, var_0.a, var_0.a), vec4<bool>(var_0.a, true, false, false)))))));
    let var_2 = firstLeadingBit(_wgslsmith_clamp_vec4_i32(firstLeadingBit(-vec4<i32>(-71323i, u_input.a.x, 0i, 1i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a.x, 2301i, u_input.a.x, -14076i), vec4<i32>(-16941i, u_input.a.x, -1i, u_input.d), vec4<i32>(1i, u_input.d, 2147483647i, u_input.c.x)) << (min(vec4<u32>(13006u, 73082u, u_input.b.x, var_1), vec4<u32>(3174u, 1u, 4294967295u, 4294967295u)) % vec4<u32>(32u)), _wgslsmith_add_vec4_i32(vec4<i32>(1i, -10842i, u_input.d, 1i), vec4<i32>(u_input.c.x, u_input.d, 21829i, 2147483647i)))) ^ _wgslsmith_add_vec4_i32(~(-vec4<i32>(-4033i, u_input.d, -10747i, -1i) | ~vec4<i32>(-38099i, -19266i, 1i, u_input.a.x)), vec4<i32>(~(~6576i), -12468i, _wgslsmith_mod_i32(u_input.c.x | -83153i, u_input.a.x), -2147483647i & u_input.d));
    var var_3 = func_4(func_1(!(!vec4<bool>(var_0.a, var_0.a, true, var_0.a)), u_input.b), -1021f, var_0.a);
    var var_4 = Struct_2(!(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(835f - var_0.b.x))) >= _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_3.b.x)))), _wgslsmith_f_op_vec4_f32(-var_0.b));
    let x = u_input.a;
    s_output = StorageBuffer(var_4.b.x, u_input.a);
}

