struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_2, arg_1: i32) -> i32 {
    let var_0 = Struct_2(~select(select(select(vec2<i32>(u_input.a.x, arg_0.c.x), vec2<i32>(arg_0.c.x, u_input.a.x), false), vec2<i32>(-2147483647i, arg_0.a.x), vec2<bool>(true, true)), vec2<i32>(-arg_1, abs(arg_1)), 984f >= _wgslsmith_f_op_f32(ceil(1026f))), vec2<u32>(0u, ~(44729u ^ arg_0.b.x)) >> (vec2<u32>(~arg_0.b.x, 4294967295u) % vec2<u32>(32u)), vec4<i32>(~_wgslsmith_dot_vec3_i32(-vec3<i32>(arg_1, arg_0.c.x, arg_0.c.x), arg_0.c.xwz), _wgslsmith_div_i32(-30545i, -73136i), 4542i, -_wgslsmith_sub_i32(-43535i, u_input.a.x >> (0u % 32u))));
    return -_wgslsmith_dot_vec3_i32(-firstTrailingBit(u_input.a.yzx), -vec3<i32>(_wgslsmith_clamp_i32(var_0.a.x, 20475i, 6710i), var_0.a.x, _wgslsmith_sub_i32(arg_1, -23329i)));
}

fn func_2() -> f32 {
    let var_0 = Struct_2(_wgslsmith_add_vec2_i32(-abs(u_input.a.zx) >> (~(~vec2<u32>(27675u, 12332u)) % vec2<u32>(32u)), u_input.a.wz), ~vec2<u32>(1u, 1u), vec4<i32>(u_input.a.x, func_3(Struct_2(vec2<i32>(-42528i, u_input.a.x), ~vec2<u32>(26437u, 93496u), vec4<i32>(u_input.a.x, 0i, -2147483647i, u_input.a.x) | vec4<i32>(-1i, -7155i, u_input.a.x, 2147483647i)), u_input.a.x), u_input.a.x, ~(~(u_input.a.x ^ u_input.a.x))));
    let var_1 = Struct_1(-560f);
    let var_2 = 26686u;
    var var_3 = var_1;
    var_3 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a + 457f))) - var_1.a));
    return -262f;
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-464f, 723f), vec2<f32>(1617f, -565f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-495f, 686f) + vec2<f32>(-974f, -1877f))))) + vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1108f), _wgslsmith_div_f32(-1201f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1865f, 1185f, false)) - -686f))));
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + var_0.x)));
    var var_1 = Struct_2(vec2<i32>(-2147483647i, ~countOneBits(2147483647i) << (_wgslsmith_dot_vec3_u32(max(vec3<u32>(1u, 1u, 0u), vec3<u32>(4294967295u, 42097u, 6957u)), vec3<u32>(1u, 1u, 1u)) % 32u)), vec2<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(19648u, 1u, 0u, 0u), vec4<u32>(21882u, 30568u, 28424u, 1u)), vec4<u32>(4294967295u, 0u, 0u, 93390u)) >> (0u % 32u), ~(~_wgslsmith_sub_u32(1u, 0u))), ~vec4<i32>(u_input.a.x, select(~(-46184i), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, 35575i, u_input.a.x, 1i), u_input.a), true), _wgslsmith_add_i32(-1i, 47276i), u_input.a.x));
    var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(max(-651f, var_0.x))) - var_0.x)) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_0.x))), vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.x))), var_0.x)));
    let var_2 = Struct_2(vec2<i32>(-2147483647i, -30411i), vec2<u32>(~_wgslsmith_div_u32(1u, min(1u, var_1.b.x)), _wgslsmith_mod_u32(var_1.b.x, 4294967295u)), _wgslsmith_add_vec4_i32(var_1.c, _wgslsmith_mult_vec4_i32(~vec4<i32>(var_1.c.x, u_input.a.x, 23673i, u_input.a.x), vec4<i32>(_wgslsmith_mod_i32(33192i, 3407i), -2147483647i, 0i, -5432i))));
    return Struct_1(_wgslsmith_f_op_f32(trunc(var_0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~abs(vec4<u32>(1u, 1u, 1u, 1u)));
    let var_1 = func_1();
    var var_2 = _wgslsmith_mod_u32(_wgslsmith_div_u32(var_0.x, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, ~var_0.x, firstTrailingBit(55236u)), abs(var_0.wzw ^ var_0.wxw))), var_0.x);
    let var_3 = select(select(vec2<bool>(!(var_0.x > 28588u), !all(vec4<bool>(true, true, true, true))), vec2<bool>(var_0.x > var_0.x, any(vec2<bool>(true, false))), select(vec2<bool>(true, true), !select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<bool>(true, true))), vec2<bool>(true, true), !((~u_input.a.x <= 50283i) & select(true, 375f > var_1.a, u_input.a.x > -26347i)));
    var_0 = (vec4<u32>(var_0.x, ~4294967295u & abs(var_0.x), ~4294967295u, _wgslsmith_add_u32(15961u, 30998u) & ~var_0.x) >> (~_wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(var_0.x, 0u, var_0.x, var_0.x), vec4<u32>(21128u, 60020u, 0u, 1u)), ~vec4<u32>(var_0.x, 4294967295u, 19336u, var_0.x)) % vec4<u32>(32u))) & vec4<u32>(var_0.x, ~(abs(var_0.x) ^ var_0.x), select(firstTrailingBit(~var_0.x), abs(0u), var_3.x), 18775u);
    var var_4 = Struct_2(select(u_input.a.zw, vec2<i32>(~u_input.a.x, u_input.a.x) ^ _wgslsmith_div_vec2_i32(~u_input.a.ww, u_input.a.wx), false), vec2<u32>(~_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(10730u, 0u, 86398u), var_0.wzz), vec3<u32>(4294967295u, 85284u, 0u)), 17983u), countOneBits(~u_input.a));
    var_4 = Struct_2(_wgslsmith_add_vec2_i32(u_input.a.xy, countOneBits(var_4.a)), ~vec2<u32>(~(~var_0.x), 76360u | (var_0.x ^ var_4.b.x)), _wgslsmith_clamp_vec4_i32(u_input.a, var_4.c, -u_input.a));
    var var_5 = Struct_2(firstLeadingBit(_wgslsmith_mod_vec2_i32(~var_4.c.wz, vec2<i32>(29585i, var_4.a.x))) | vec2<i32>(_wgslsmith_mult_i32(-var_4.a.x, ~var_4.c.x), _wgslsmith_add_i32(u_input.a.x >> (var_4.b.x % 32u), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 13836i), vec2<i32>(1i, 0i)))), ~(~vec2<u32>(_wgslsmith_add_u32(var_4.b.x, var_0.x), ~65924u)), u_input.a);
    let var_6 = Struct_2(vec2<i32>(~(~(var_4.c.x & 34552i)), func_3(Struct_2(var_5.c.ww, max(var_0.yx, var_4.b), reverseBits(var_4.c)), firstTrailingBit(u_input.a.x))), var_4.b, vec4<i32>(29738i, ((var_4.a.x ^ 2147483647i) << (_wgslsmith_clamp_u32(var_4.b.x, var_0.x, 59153u) % 32u)) >> ((~14041u | var_0.x) % 32u), ~(~(~0i)), 38755i));
    let x = u_input.a;
    s_output = StorageBuffer(abs(var_5.c.wx), _wgslsmith_div_u32(_wgslsmith_mod_u32(_wgslsmith_div_u32(~var_4.b.x, 1u), 6664u), _wgslsmith_mod_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(var_0.zyy, vec3<u32>(1u, 4294967295u, var_4.b.x)), ~4294967295u), ~(var_4.b.x ^ var_0.x))), ~(_wgslsmith_add_vec4_u32(~vec4<u32>(1u, var_0.x, var_4.b.x, var_4.b.x), ~vec4<u32>(var_5.b.x, var_5.b.x, var_4.b.x, var_0.x)) | vec4<u32>(1u, _wgslsmith_div_u32(var_6.b.x, var_6.b.x), firstTrailingBit(14155u), ~var_6.b.x)));
}

