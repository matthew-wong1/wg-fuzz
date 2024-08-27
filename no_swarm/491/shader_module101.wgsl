struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec2<f32>,
    c: u32,
}

struct Struct_4 {
    a: u32,
    b: u32,
}

struct Struct_5 {
    a: vec4<bool>,
    b: Struct_3,
    c: vec4<i32>,
    d: u32,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec2<i32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_3, arg_1: vec2<bool>) -> i32 {
    let var_0 = Struct_4(_wgslsmith_dot_vec4_u32(reverseBits(_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 55319u, arg_0.c, 32663u), vec4<u32>(0u, 134567u, 8737u, u_input.d))), vec4<u32>(arg_0.c, u_input.b.x, 55982u, _wgslsmith_mod_u32(u_input.e, ~42289u))), ~u_input.e);
    var var_1 = Struct_5(vec4<bool>(all(select(select(vec2<bool>(arg_1.x, arg_1.x), vec2<bool>(arg_1.x, false), arg_1.x), vec2<bool>(true, arg_1.x), all(vec4<bool>(arg_1.x, arg_1.x, true, true)))), true, arg_1.x, reverseBits(26677i) < u_input.a), Struct_3(~firstTrailingBit(vec2<u32>(1u, 1u)), arg_0.b, ((arg_0.a.x | 63614u) & 33662u) >> (u_input.e % 32u)), ~firstTrailingBit(~(vec4<i32>(u_input.c.x, -27304i, -7552i, u_input.c.x) ^ vec4<i32>(-42325i, u_input.c.x, u_input.a, u_input.c.x))), ~(~min(var_0.b, arg_0.c)) ^ min(_wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(2314u, 32263u, 4294967295u) & u_input.b), abs(60568u)), vec3<f32>(625f, arg_0.b.x, arg_0.b.x));
    var_1 = Struct_5(var_1.a, arg_0, -vec4<i32>(-16412i >> (_wgslsmith_sub_u32(arg_0.c, var_0.a) % 32u), _wgslsmith_mult_i32(var_1.c.x & -2147483647i, var_1.c.x), -select(-15379i, u_input.c.x, false), abs(var_1.c.x)), 6980u, var_1.e);
    let var_2 = Struct_1(vec4<bool>(any(!(!vec2<bool>(false, arg_1.x))), _wgslsmith_f_op_f32(-arg_0.b.x) <= _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1199f - var_1.b.b.x))), (i32(-1i) * -85539i) > var_1.c.x, var_1.a.x));
    var_1 = Struct_5(select(var_1.a, vec4<bool>(u_input.c.x < -u_input.a, !(var_1.a.x != arg_1.x), var_2.a.x, true), false), arg_0, vec4<i32>(13153i, u_input.a, u_input.c.x, min(-(0i << (var_0.a % 32u)), 1i)), 6669u, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_1.b.b.x)) * arg_0.b.x), arg_0.b.x, var_1.b.b.x) * var_1.e));
    return ~(-45018i);
}

fn func_2() -> Struct_3 {
    var var_0 = _wgslsmith_f_op_f32(round(-881f));
    let var_1 = vec2<i32>(min(-u_input.c.x, select(func_3(Struct_3(vec2<u32>(32628u, 6337u), vec2<f32>(-946f, 1223f), u_input.e), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true))), u_input.a, true)), _wgslsmith_add_i32(u_input.c.x, _wgslsmith_sub_i32(-45339i, 24193i)));
    var var_2 = Struct_3(vec2<u32>(u_input.d, u_input.d), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -928f)))), _wgslsmith_mult_u32(1u, ~7077u));
    let var_3 = Struct_1(select(select(!select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, true), false), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, true), false), all(vec4<bool>(false, true, true, true))), !select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), select(any(select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, false, true))), true, any(vec4<bool>(true, true, true, true)))));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1371f - 576f));
    return Struct_3(abs(abs(u_input.b.yx)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(427f, -414f))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(var_2.b, var_2.b, var_3.a.x)), var_2.b), _wgslsmith_div_vec2_f32(vec2<f32>(2014f, -867f), _wgslsmith_f_op_vec2_f32(vec2<f32>(-478f, var_2.b.x) * vec2<f32>(-614f, 757f))), !var_3.a.xx))), min(6840u, 4294967295u));
}

fn func_1(arg_0: Struct_3, arg_1: Struct_2, arg_2: bool) -> u32 {
    var var_0 = func_2();
    let var_1 = Struct_5(arg_1.a.a, arg_0, vec4<i32>(2147483647i, abs(-2147483647i), abs(func_3(Struct_3(vec2<u32>(arg_1.d, 0u), var_0.b, 4294967295u), select(arg_1.a.a.wz, arg_1.c.a.wx, arg_1.a.a.x))), -1i), countOneBits(var_0.c), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-881f, var_0.b.x, -1411f) * vec3<f32>(var_0.b.x, var_0.b.x, var_0.b.x))) + _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_0.b.x, arg_1.b.x, arg_1.b.x))))))));
    let var_2 = select(vec4<bool>(!select(true, all(vec2<bool>(var_1.a.x, arg_2)), all(var_1.a)), !var_1.a.x, _wgslsmith_f_op_f32(var_0.b.x + -455f) > var_0.b.x, !arg_2), !var_1.a, arg_1.c.a.x);
    let var_3 = vec4<bool>(var_2.x, false, any(vec2<bool>(true, true)), arg_1.a.a.x);
    var_0 = var_1.b;
    return ~4294967295u | _wgslsmith_div_u32(~(~0u << (abs(0u) % 32u)), ~max(var_1.d ^ 0u, _wgslsmith_div_u32(0u, u_input.d)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = min(~vec3<u32>(max(19599u, 0u) ^ (u_input.d << (u_input.e % 32u)), _wgslsmith_mult_u32(_wgslsmith_mod_u32(63313u, u_input.b.x), 0u), ~(~1u)), vec3<u32>(u_input.d, 44432u, ~u_input.e) << (~vec3<u32>(u_input.d | 1u, 82149u, select(6055u, u_input.d, false)) % vec3<u32>(32u)));
    var_0 = _wgslsmith_sub_vec3_u32(~_wgslsmith_clamp_vec3_u32(u_input.b | u_input.b, reverseBits(vec3<u32>(34225u, var_0.x, u_input.d)), u_input.b), max(vec3<u32>(40823u, _wgslsmith_div_u32(0u, 1u), func_1(Struct_3(vec2<u32>(var_0.x, 45644u), vec2<f32>(1268f, -1718f), 77092u), Struct_2(Struct_1(vec4<bool>(true, false, true, true)), vec2<f32>(1959f, -311f), Struct_1(vec4<bool>(true, false, false, false)), u_input.d), false)), _wgslsmith_clamp_vec3_u32(select(vec3<u32>(var_0.x, var_0.x, u_input.e), vec3<u32>(var_0.x, u_input.b.x, 59439u), vec3<bool>(false, true, true)), abs(vec3<u32>(var_0.x, var_0.x, 4294967295u)), _wgslsmith_mult_vec3_u32(vec3<u32>(1u, u_input.e, 5400u), u_input.b)))) & ~vec3<u32>(8023u, _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(67824u, var_0.x, 12410u), vec3<u32>(var_0.x, u_input.d, 1u)), ~36537u, 61475u), ~select(var_0.x, u_input.d, true));
    var_0 = _wgslsmith_mult_vec3_u32(vec3<u32>(~u_input.e, var_0.x, var_0.x), abs(~min(min(vec3<u32>(4294967295u, var_0.x, u_input.e), u_input.b), u_input.b)));
    let var_1 = u_input.a;
    var_0 = ~min(_wgslsmith_div_vec3_u32(~u_input.b, u_input.b) >> (vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 41781u), vec2<u32>(u_input.e, 69979u)), u_input.e, var_0.x) % vec3<u32>(32u)), u_input.b & _wgslsmith_div_vec3_u32(vec3<u32>(25297u, 1u, var_0.x), u_input.b));
    let var_2 = _wgslsmith_f_op_f32(sign(770f));
    var_0 = firstLeadingBit(u_input.b);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mod_vec3_u32(u_input.b, _wgslsmith_mult_vec3_u32(u_input.b, _wgslsmith_mod_vec3_u32(vec3<u32>(38003u, u_input.e, 1u), u_input.b))));
}

