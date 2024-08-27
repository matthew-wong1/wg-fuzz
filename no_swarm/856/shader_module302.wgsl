struct Struct_1 {
    a: vec4<bool>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<i32>,
    d: vec4<bool>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
}

struct Struct_5 {
    a: f32,
    b: Struct_2,
    c: Struct_4,
    d: bool,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec4<u32>,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
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

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: f32, arg_1: bool, arg_2: Struct_1, arg_3: Struct_2) -> vec2<u32> {
    var var_0 = countOneBits(~((~vec4<u32>(19285u, arg_3.a.b, 35012u, u_input.a) << ((vec4<u32>(4294967295u, 1u, u_input.a, 92543u) >> (vec4<u32>(arg_2.b, 0u, 4294967295u, 0u) % vec4<u32>(32u))) % vec4<u32>(32u))) | ~(vec4<u32>(arg_2.b, 1u, 0u, u_input.d) | vec4<u32>(arg_2.b, 4294967295u, arg_3.b.b, u_input.e))));
    var_0 = ~vec4<u32>(var_0.x, ~reverseBits(arg_3.b.b), abs(abs(_wgslsmith_div_u32(1u, arg_3.a.b))), _wgslsmith_add_u32(~1u, abs(u_input.d)));
    let var_1 = _wgslsmith_f_op_f32(-arg_0);
    var var_2 = arg_3.c.x;
    var var_3 = var_1;
    return vec2<u32>(~(~arg_2.b), ~1u);
}

fn func_2() -> i32 {
    var var_0 = vec2<i32>(32871i, u_input.c);
    var_0 = (((~vec2<i32>(-2147483647i, 2147483647i) ^ _wgslsmith_add_vec2_i32(vec2<i32>(var_0.x, 2147483647i), vec2<i32>(50387i, 1i))) ^ -vec2<i32>(var_0.x, u_input.b)) >> (~func_3(_wgslsmith_f_op_f32(f32(-1f) * -1570f), true, Struct_1(vec4<bool>(true, true, true, true), u_input.d), Struct_2(Struct_1(vec4<bool>(false, false, true, false), 1u), Struct_1(vec4<bool>(true, false, false, false), 20571u), vec4<i32>(2147483647i, u_input.c, var_0.x, var_0.x), vec4<bool>(true, false, true, false))) % vec2<u32>(32u))) << ((~(~abs(vec2<u32>(u_input.a, 1u))) & vec2<u32>(~u_input.a << (26621u % 32u), _wgslsmith_div_u32(~16066u, countOneBits(105082u)))) % vec2<u32>(32u));
    var var_1 = Struct_2(Struct_1(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), false), ~countOneBits(0u)), Struct_1(vec4<bool>(true, ~u_input.a >= min(4294967295u, 4294967295u), any(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false))), !any(vec3<bool>(false, false, true))), _wgslsmith_add_u32(u_input.a, _wgslsmith_sub_u32(u_input.a << (u_input.e % 32u), u_input.e << (4294967295u % 32u)))), _wgslsmith_div_vec4_i32(~abs(vec4<i32>(var_0.x, var_0.x, u_input.c, -9488i)), ~vec4<i32>(_wgslsmith_sub_i32(var_0.x, var_0.x), var_0.x, _wgslsmith_mult_i32(2591i, -1i), -2147483647i)), vec4<bool>(true, !any(vec2<bool>(true, true)), false, true));
    var_0 = vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(select(-1i, 35601i, var_1.a.a.x), 1i, ~(-32690i)), var_1.c.yyx | min(vec3<i32>(var_1.c.x, u_input.c, var_0.x), vec3<i32>(var_0.x, 2147483647i, u_input.b))) & ~abs(u_input.c), 26997i);
    let var_2 = 0u;
    return firstLeadingBit(_wgslsmith_sub_i32(_wgslsmith_mult_i32(-(var_1.c.x ^ var_0.x), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, var_0.x, -49679i, var_0.x), -vec4<i32>(-41079i, u_input.c, u_input.c, var_0.x))), 1i));
}

fn func_1(arg_0: vec3<i32>) -> Struct_2 {
    let var_0 = countOneBits(-31388i) >= (_wgslsmith_mod_i32(arg_0.x ^ 2147483647i, u_input.b) ^ -u_input.c);
    let var_1 = -1i;
    var var_2 = Struct_1(!vec4<bool>(var_0, var_0, var_0, !any(vec3<bool>(false, false, var_0))), 48237u);
    var_2 = Struct_1(!(!vec4<bool>(any(vec2<bool>(var_0, var_0)), all(vec3<bool>(var_0, true, false)), var_0 || true, true)), reverseBits(_wgslsmith_div_u32(_wgslsmith_add_u32(_wgslsmith_div_u32(4294967295u, var_2.b), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d, u_input.e), vec2<u32>(var_2.b, u_input.d))), abs(var_2.b))));
    let var_3 = !(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(394f)), _wgslsmith_f_op_f32(1197f - 105f))), _wgslsmith_f_op_f32(abs(211f))) == _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f * 1f), _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(f32(-1f) * -688f))));
    return Struct_2(Struct_1(!vec4<bool>(var_1 > var_1, false, arg_0.x <= u_input.c, var_3), firstLeadingBit(~_wgslsmith_sub_u32(u_input.e, u_input.a))), Struct_1(var_2.a, ~30968u), vec4<i32>(-_wgslsmith_div_i32(abs(0i), func_2()), u_input.c, u_input.b, _wgslsmith_div_i32(-(~arg_0.x), _wgslsmith_add_i32(23585i, ~u_input.b))), select(select(var_2.a, var_2.a, !select(vec4<bool>(true, var_3, false, var_2.a.x), var_2.a, var_2.a)), select(var_2.a, vec4<bool>(var_2.a.x, false & var_0, any(vec4<bool>(var_0, true, false, false)), var_0), vec4<bool>(all(vec3<bool>(var_3, true, true)), all(vec4<bool>(var_3, true, var_3, var_2.a.x)), var_2.a.x || var_0, -1i <= arg_0.x)), true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_5(-624f, func_1(select(~(vec3<i32>(u_input.c, -30100i, -15541i) ^ vec3<i32>(u_input.c, u_input.b, -8088i)), _wgslsmith_div_vec3_i32(vec3<i32>(-866i, u_input.c, 2147483647i), vec3<i32>(u_input.b, -43636i, u_input.b)), all(vec3<bool>(false, false, false)))), Struct_4(Struct_3(Struct_2(Struct_1(vec4<bool>(false, false, true, true), u_input.d), func_1(vec3<i32>(-2830i, u_input.b, 0i)).a, -vec4<i32>(u_input.c, u_input.c, u_input.c, u_input.c), select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, false)))), Struct_1(vec4<bool>(all(vec3<bool>(true, true, true)), u_input.d > 0u, true, true), _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, 91704u, 4294967295u), vec3<u32>(u_input.a, u_input.e, u_input.a), vec3<u32>(u_input.a, 1u, 40574u)), ~vec3<u32>(u_input.a, u_input.e, u_input.e)))), false, Struct_2(func_1(vec3<i32>(_wgslsmith_sub_i32(-15234i, -10516i), u_input.b, abs(u_input.b))).a, Struct_1(vec4<bool>(true, true, any(vec2<bool>(false, false)), true), 1u), min(firstLeadingBit(vec4<i32>(-1i, 34059i, u_input.c, u_input.c)), vec4<i32>(1i, -1i, u_input.b, 1i) ^ vec4<i32>(u_input.c, u_input.c, u_input.c, 1i)) >> (vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.e, 7761u, u_input.e), vec3<u32>(1u, 1539u, u_input.a)), ~u_input.a, ~4294967295u, u_input.d) % vec4<u32>(32u)), !vec4<bool>(-1i >= u_input.c, true, any(vec4<bool>(false, true, false, false)), all(vec3<bool>(false, true, false)))));
    let var_1 = var_0.b.d.x;
    let var_2 = vec3<f32>(887f, -462f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1284f + -431f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(952f)) * _wgslsmith_f_op_f32(-var_0.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-153f * _wgslsmith_f_op_f32(abs(-1844f)))))));
    var var_3 = func_1(_wgslsmith_mult_vec3_i32(vec3<i32>(_wgslsmith_mult_i32(i32(-1i) * -37715i, u_input.c), reverseBits(30056i), _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.e.c.x, var_0.e.c.x, u_input.c), _wgslsmith_clamp_vec3_i32(var_0.e.c.zzx, var_0.b.c.wxz, var_0.e.c.yzx))), ~max(reverseBits(var_0.b.c.zwy), ~vec3<i32>(-24382i, u_input.c, 1i))));
    let var_4 = ~(~(~(vec4<u32>(u_input.d, 4294967295u, 30854u, 4294967295u) & vec4<u32>(var_3.b.b, 62446u, var_3.a.b, var_3.b.b))));
    let var_5 = func_1(vec3<i32>(firstLeadingBit(-2147483647i), func_2(), _wgslsmith_sub_i32(~var_0.e.c.x, func_1(vec3<i32>(0i, -76117i, var_0.b.c.x)).c.x) ^ 0i)).a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(var_0.c.b.b, ~0u), var_3.c.yyz, vec4<u32>(_wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(var_5.b, 54725u, 42650u, 7583u)), select(var_4, var_4, var_0.e.b.a)), min(1u, firstLeadingBit(var_3.a.b)), var_0.b.a.b, var_4.x) >> (vec4<u32>(u_input.a, _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(var_4.x, 4294967295u, var_4.x), vec3<u32>(839u, var_0.b.a.b, 90885u)), vec3<u32>(4294967295u, 24742u, u_input.d) & var_4.yyx), ~u_input.a, ~var_4.x) % vec4<u32>(32u)), _wgslsmith_clamp_i32(firstLeadingBit(-60221i), ~(~var_0.e.c.x ^ u_input.b), -8998i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(387f - var_2.x)))));
}

