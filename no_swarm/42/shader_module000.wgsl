struct Struct_1 {
    a: vec4<i32>,
    b: u32,
    c: vec3<f32>,
    d: i32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_1() -> i32 {
    return -222i;
}

fn func_3(arg_0: vec2<bool>, arg_1: u32) -> f32 {
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -470f) + _wgslsmith_f_op_f32(select(296f, 2169f, arg_0.x))) * _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-1076f, 1584f), _wgslsmith_f_op_f32(trunc(-617f))))))));
}

fn func_2() -> i32 {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(func_3(vec2<bool>(true, !all(vec2<bool>(false, true))), firstLeadingBit(32247u))), -330f);
    let var_1 = vec4<i32>(-(~u_input.a.x) << (abs((u_input.b >> (u_input.b % 32u)) ^ 23956u) % 32u), 2147483647i, _wgslsmith_dot_vec4_i32(-_wgslsmith_mod_vec4_i32(u_input.a, u_input.a), _wgslsmith_mult_vec4_i32(u_input.a, abs(-u_input.a))), ~_wgslsmith_sub_i32(u_input.c, u_input.a.x));
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-467f, -975f) + vec2<f32>(-306f, var_0.x)), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-2201f, var_0.x))), false)) - _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1100f, var_0.x), vec2<f32>(-709f, -1000f)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-766f, 1133f))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, 593f)) + vec2<f32>(var_0.x, 2770f))))) - vec2<f32>(var_0.x, var_0.x));
    var var_3 = countOneBits(1u);
    var var_4 = _wgslsmith_div_vec3_i32(vec3<i32>(var_1.x ^ u_input.c, _wgslsmith_div_i32(-18757i << (u_input.b % 32u), (u_input.c >> (u_input.b % 32u)) >> (~1u % 32u)), 1i), vec3<i32>(u_input.c, 1i, abs(var_1.x)));
    return var_4.x;
}

fn func_4(arg_0: i32, arg_1: f32) -> u32 {
    return u_input.b;
}

fn func_5(arg_0: vec3<i32>, arg_1: vec3<i32>, arg_2: u32, arg_3: Struct_1) -> Struct_1 {
    let var_0 = arg_3;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-804f - var_0.c.x));
    var var_2 = Struct_3(Struct_1(arg_3.a, ~(1u ^ ~arg_2), var_0.c, select(select(-36410i, 1i, all(vec2<bool>(true, true))), arg_1.x, 505i == arg_0.x)), all(select(select(select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), false), select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), false), vec3<bool>(true, true, true)), !select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false)), any(select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true))))), Struct_2(firstLeadingBit(_wgslsmith_div_vec4_i32(u_input.a & vec4<i32>(arg_1.x, arg_3.a.x, arg_1.x, 56098i), _wgslsmith_add_vec4_i32(vec4<i32>(var_0.a.x, -1i, arg_3.d, -1i), vec4<i32>(1i, 0i, arg_0.x, 3934i)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_3.c.x)) * -187f)))));
    let var_3 = _wgslsmith_f_op_f32(arg_3.c.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_1, 276f)))) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1 + var_2.a.c.x), arg_3.c.x))));
    var var_4 = (~(~arg_1.x) << (~countOneBits(1u) % 32u)) << (_wgslsmith_div_u32(firstLeadingBit(0u | u_input.b) & (~46209u & _wgslsmith_add_u32(var_0.b, 57195u)), arg_3.b) % 32u);
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b;
    var var_1 = func_5(u_input.d, ~u_input.d, func_4(_wgslsmith_clamp_i32(func_1(), ~(-u_input.a.x), func_2()), _wgslsmith_f_op_f32(min(700f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1014f))))), Struct_1(u_input.a, _wgslsmith_sub_u32(~_wgslsmith_mult_u32(var_0, var_0), _wgslsmith_sub_u32(select(0u, 0u, true), u_input.b)), _wgslsmith_div_vec3_f32(vec3<f32>(1f, 1f, 1f), vec3<f32>(1f, 1f, 1f)), firstTrailingBit(u_input.c) ^ -2147483647i));
    let var_2 = max(var_1.a.x, countOneBits(u_input.c));
    var_1 = func_5(vec3<i32>(44524i, var_1.d, func_1()), vec3<i32>(~(-var_1.a.x), 5662i, _wgslsmith_sub_i32(-1i | var_1.d, countOneBits(var_2))) ^ (var_1.a.xzx & u_input.d), var_0, func_5(u_input.d, max(max(var_1.a.wxx, _wgslsmith_mod_vec3_i32(var_1.a.wxz, vec3<i32>(var_1.d, var_2, u_input.a.x))), vec3<i32>(_wgslsmith_sub_i32(39771i, 52707i), -2147483647i << (var_0 % 32u), 2147483647i)), ~var_1.b, func_5(u_input.d & (u_input.a.yxz >> (vec3<u32>(4294967295u, var_1.b, 0u) % vec3<u32>(32u))), vec3<i32>(abs(var_2), _wgslsmith_mult_i32(2605i, -1i), func_1()), var_1.b, Struct_1(var_1.a, 1u, _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_1.c.x, -253f, -955f))), var_2 & var_2))));
    var var_3 = any(vec3<bool>(true, any(vec2<bool>(false, all(vec3<bool>(false, true, false)))), !(_wgslsmith_add_u32(var_0, 0u) == ~u_input.b)));
    let x = u_input.a;
    s_output = StorageBuffer(select(~(~vec3<i32>(22514i, var_1.a.x, var_2)) >> (_wgslsmith_mod_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(39733u, var_1.b, var_0), vec3<u32>(u_input.b, u_input.b, var_0)), vec3<u32>(30266u, 4294967295u, 1u) >> (vec3<u32>(var_0, 4294967295u, var_1.b) % vec3<u32>(32u))) % vec3<u32>(32u)), vec3<i32>(u_input.a.x, ~32268i, var_2 & min(-1i, var_1.a.x)), !select(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), true), vec3<bool>(false, true, false), vec3<bool>(false, false, true))), min(_wgslsmith_div_vec3_u32(~vec3<u32>(4294967295u, 1u, var_0) >> ((vec3<u32>(63032u, var_1.b, u_input.b) | vec3<u32>(var_0, 33762u, u_input.b)) % vec3<u32>(32u)), vec3<u32>(var_0, 4294967295u, ~var_0)), abs(_wgslsmith_div_vec3_u32(~vec3<u32>(var_1.b, u_input.b, var_0), abs(vec3<u32>(u_input.b, var_1.b, var_0))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-462f)) * _wgslsmith_f_op_f32(func_3(vec2<bool>(true, true), u_input.b)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-647f)))));
}

