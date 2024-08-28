struct Struct_1 {
    a: vec3<f32>,
    b: bool,
}

struct Struct_2 {
    a: f32,
    b: vec2<f32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: f32,
    c: f32,
}

struct Struct_4 {
    a: bool,
    b: vec3<i32>,
    c: Struct_2,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: i32,
    d: vec3<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: vec4<bool>, arg_1: vec4<u32>, arg_2: Struct_2) -> i32 {
    var var_0 = Struct_3(arg_2.c.a.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), arg_2.c.a.x);
    let var_1 = arg_0.wxz;
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(1294f + _wgslsmith_f_op_f32(-arg_2.c.a.x)), 947f, 481f, var_0.a) * vec4<f32>(_wgslsmith_f_op_f32(exp2(var_0.c)), _wgslsmith_f_op_f32(arg_2.c.a.x * _wgslsmith_f_op_f32(sign(-1032f))), -270f, _wgslsmith_f_op_f32(f32(-1f) * -852f))));
    var var_3 = arg_2;
    var var_4 = countOneBits(~firstTrailingBit(max(u_input.b.x, _wgslsmith_sub_i32(u_input.a, -2147483647i))));
    return _wgslsmith_dot_vec2_i32(vec2<i32>(-u_input.a, 8403i), -_wgslsmith_clamp_vec2_i32(-u_input.b.xz, vec2<i32>(i32(-1i) * -3057i, 12021i), _wgslsmith_mod_vec2_i32(_wgslsmith_sub_vec2_i32(u_input.b.xx, vec2<i32>(u_input.a, u_input.b.x)), -vec2<i32>(29155i, 5306i))));
}

fn func_2(arg_0: vec2<f32>, arg_1: i32) -> vec4<bool> {
    var var_0 = _wgslsmith_div_i32(-_wgslsmith_div_i32(arg_1, _wgslsmith_sub_i32(_wgslsmith_div_i32(u_input.a, arg_1), 1i)), ~0i);
    var_0 = ~_wgslsmith_add_i32(-_wgslsmith_sub_i32(func_3(vec4<bool>(true, true, false, true), vec4<u32>(77942u, 54610u, 0u, 0u), Struct_2(arg_0.x, arg_0, Struct_1(vec3<f32>(arg_0.x, 384f, arg_0.x), false), Struct_1(vec3<f32>(arg_0.x, arg_0.x, -708f), true))), ~u_input.a), _wgslsmith_mult_i32(~(~u_input.b.x), ~arg_1 & 2801i));
    var var_1 = -2147483647i;
    var_1 = ~arg_1;
    var_0 = _wgslsmith_dot_vec4_i32(~vec4<i32>(~_wgslsmith_add_i32(25640i, u_input.a), abs(reverseBits(-28888i)), func_3(vec4<bool>(false, true, true, false), ~vec4<u32>(20587u, 1u, 25258u, 16287u), Struct_2(arg_0.x, vec2<f32>(arg_0.x, 2322f), Struct_1(vec3<f32>(1585f, -1440f, -1000f), false), Struct_1(vec3<f32>(arg_0.x, arg_0.x, arg_0.x), false))), arg_1), ~vec4<i32>(max(abs(11567i), _wgslsmith_mod_i32(arg_1, arg_1)), ~u_input.b.x, -2147483647i, _wgslsmith_div_i32(~u_input.b.x, 2147483647i)));
    return !vec4<bool>(true, true, any(vec4<bool>(true, true, true, true)), ~66601u >= firstTrailingBit(min(4294967295u, 0u)));
}

fn func_4(arg_0: vec4<bool>, arg_1: vec3<bool>) -> Struct_4 {
    let var_0 = max(u_input.b, vec3<i32>(1i, _wgslsmith_dot_vec2_i32(reverseBits(~vec2<i32>(u_input.b.x, u_input.b.x)), vec2<i32>(abs(u_input.b.x), 2147483647i)), u_input.b.x));
    let var_1 = abs(vec2<u32>(13029u, 4294967295u << (_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), ~vec2<u32>(1u, 15555u)) % 32u)));
    let var_2 = ~vec2<i32>(var_0.x, 25059i);
    var var_3 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1313f, 1741f, -1652f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1594f, 737f, -829f), vec3<f32>(-2507f, -944f, -199f), false)) - vec3<f32>(725f, 201f, -3231f)))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) - _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-938f, 608f, -1641f)))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-819f * 1519f))), -1000f))));
    var var_4 = _wgslsmith_clamp_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(-(~(-37696i)), _wgslsmith_mod_i32(_wgslsmith_clamp_i32(var_0.x, -2147483647i, -12036i), i32(-1i) * -30670i), var_0.x ^ -11091i, 2147483647i >> (~var_1.x % 32u)), countOneBits(~vec4<i32>(var_0.x, u_input.a, -36339i, 14381i) & -vec4<i32>(var_2.x, var_2.x, var_0.x, 2147483647i)), max(-firstLeadingBit(vec4<i32>(0i, u_input.b.x, 32278i, 14822i)), -firstTrailingBit(vec4<i32>(-2395i, var_0.x, var_0.x, var_0.x)))), ~(vec4<i32>(-1i) * -(vec4<i32>(7472i, var_0.x, var_2.x, -45609i) ^ vec4<i32>(25788i, var_0.x, -20931i, -5478i))), _wgslsmith_mult_vec4_i32(~_wgslsmith_sub_vec4_i32(vec4<i32>(35812i, var_0.x, var_0.x, -2147483647i), _wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, u_input.b.x, 8126i, u_input.b.x), vec4<i32>(32109i, 1i, var_0.x, -1i))), countOneBits(_wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b.x, -61600i, 4952i, -15928i), vec4<i32>(-43520i, 36131i, var_2.x, var_0.x)), vec4<i32>(9291i, u_input.a, u_input.a, 16869i)))));
    return Struct_4(true, -_wgslsmith_sub_vec3_i32(-var_0 >> (select(vec3<u32>(var_1.x, var_1.x, var_1.x), vec3<u32>(var_1.x, 1u, 4294967295u), vec3<bool>(arg_0.x, true, true)) % vec3<u32>(32u)), ~_wgslsmith_mod_vec3_i32(var_0, u_input.b)), Struct_2(_wgslsmith_f_op_f32(step(174f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-233f, -787f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-560f, var_3.x)), var_3.xx)), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(857f, -425f, -1000f))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.x, 910f, -968f) * vec3<f32>(var_3.x, var_3.x, -297f))), false), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-347f, -1281f, -665f))), var_1.x <= _wgslsmith_dot_vec4_u32(vec4<u32>(1u, var_1.x, var_1.x, var_1.x), vec4<u32>(var_1.x, var_1.x, 1u, 0u)))), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -745f)), var_3.x, var_3.x), arg_1.x));
}

fn func_1(arg_0: vec2<u32>) -> Struct_4 {
    var var_0 = Struct_3(1238f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-263f * 1f))), -138f);
    return func_4(select(!vec4<bool>(true, true, all(vec2<bool>(false, true)), true), !func_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1377f, var_0.a) - vec2<f32>(var_0.a, var_0.a)), ~u_input.b.x), true), !select(select(vec3<bool>(false, true, true), func_2(vec2<f32>(709f, -903f), -1i).yzy, all(vec2<bool>(false, true))), vec3<bool>(u_input.a < u_input.a, true, all(vec4<bool>(true, true, false, false))), true));
}

fn func_5(arg_0: Struct_4) -> Struct_4 {
    var var_0 = ~arg_0.b.x;
    var var_1 = arg_0.d.a.x;
    let var_2 = -2461f;
    var var_3 = ~(~(~(~(~1u))));
    var var_4 = ~_wgslsmith_mod_vec4_i32(~vec4<i32>(2147483647i, u_input.b.x, u_input.b.x, arg_0.b.x), _wgslsmith_clamp_vec4_i32(~vec4<i32>(1i, arg_0.b.x, -33353i, arg_0.b.x), _wgslsmith_mod_vec4_i32(vec4<i32>(arg_0.b.x, -1i, arg_0.b.x, 27369i), vec4<i32>(11151i, u_input.a, arg_0.b.x, -32224i)), vec4<i32>(arg_0.b.x, 0i, -1i, arg_0.b.x) << (vec4<u32>(51039u, 0u, 0u, 38961u) % vec4<u32>(32u)))) ^ ~countOneBits(abs(vec4<i32>(u_input.b.x, u_input.a, 24492i, u_input.a)));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(func_1(~firstLeadingBit(vec2<u32>(1u, 1u))));
    var var_1 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(var_0.c.d.a.x)), -1363f))), var_0.c.c.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1098f + 1023f)) - func_5(func_1(vec2<u32>(1u, 33216u))).c.a) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(975f))))));
    var var_2 = vec3<bool>(any(func_2(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_1.a, var_1.a), _wgslsmith_f_op_vec2_f32(var_0.c.b + var_0.d.a.yz))), _wgslsmith_add_i32(reverseBits(u_input.a), var_0.b.x))), true, var_0.c.c.b && var_0.a);
    var_1 = Struct_3(_wgslsmith_f_op_f32(exp2(var_1.a)), var_1.b, var_1.b);
    let var_3 = Struct_3(var_0.c.b.x, _wgslsmith_f_op_f32(-640f - _wgslsmith_f_op_f32(max(var_0.c.b.x, _wgslsmith_f_op_f32(max(-531f, func_4(vec4<bool>(false, var_0.a, var_2.x, true), vec3<bool>(false, false, var_0.c.d.b)).c.c.a.x))))), var_0.c.a);
    var var_4 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1500f))), _wgslsmith_f_op_f32(-var_0.c.a)))));
    let var_5 = all(var_2.yx);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec2_u32(vec2<u32>(_wgslsmith_div_u32(46232u, 1u), _wgslsmith_sub_u32(~42752u, firstLeadingBit(1u))), select(_wgslsmith_mod_vec2_u32(vec2<u32>(40267u, 38673u), firstTrailingBit(vec2<u32>(0u, 4294967295u))), ~vec2<u32>(1u, 25430u), func_2(_wgslsmith_f_op_vec2_f32(min(var_0.d.a.yy, vec2<f32>(-366f, -304f))), -u_input.a).wx)), ~vec2<u32>(0u, _wgslsmith_mod_u32(0u, 1u)), -(select(u_input.a, 2147483647i, -15473i != u_input.b.x) >> (~1u % 32u)), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(659f, var_1.a, 1792f))), 0u);
}

