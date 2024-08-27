struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: i32,
    c: i32,
    d: Struct_1,
    e: u32,
}

struct Struct_4 {
    a: vec4<u32>,
    b: i32,
    c: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec4<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> vec2<u32> {
    return vec2<u32>(_wgslsmith_clamp_u32(~0u, u_input.c.x, u_input.c.x), u_input.b);
}

fn func_2(arg_0: f32, arg_1: bool) -> i32 {
    var var_0 = _wgslsmith_mult_vec4_i32(-(~(vec4<i32>(-1i, u_input.a.x, u_input.a.x, 30973i) << (vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.c.x) % vec4<u32>(32u)))) ^ (vec4<i32>(countOneBits(u_input.a.x), 6708i & u_input.a.x, u_input.a.x, u_input.a.x) >> ((countOneBits(vec4<u32>(u_input.c.x, u_input.b, 8408u, u_input.b)) ^ _wgslsmith_sub_vec4_u32(vec4<u32>(50321u, u_input.b, u_input.c.x, u_input.c.x), vec4<u32>(9514u, u_input.b, 4294967295u, u_input.c.x))) % vec4<u32>(32u))), select(vec4<i32>(_wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(-28099i, u_input.a.x, -45885i)) & 24899i, -32682i, 1i | _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, 2147483647i, 35561i), vec3<i32>(u_input.a.x, -1i, 2147483647i)), u_input.a.x), _wgslsmith_sub_vec4_i32(-_wgslsmith_div_vec4_i32(vec4<i32>(-1i, -10088i, u_input.a.x, u_input.a.x), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 12190i)), vec4<i32>(u_input.a.x, 41055i, u_input.a.x, -1i) & select(vec4<i32>(u_input.a.x, -19796i, -15867i, u_input.a.x), vec4<i32>(46629i, u_input.a.x, -1i, u_input.a.x), false)), select(vec4<bool>(any(vec2<bool>(arg_1, false)), !arg_1, true, false & arg_1), select(select(vec4<bool>(true, false, arg_1, arg_1), vec4<bool>(arg_1, arg_1, arg_1, false), vec4<bool>(true, false, false, arg_1)), vec4<bool>(false, arg_1, arg_1, false), !vec4<bool>(true, false, true, arg_1)), any(vec2<bool>(arg_1, arg_1)) & true)));
    var var_1 = Struct_1(u_input.b);
    var_1 = Struct_1(~_wgslsmith_dot_vec2_u32(~func_3(), ~(~u_input.c)));
    let var_2 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1000f, _wgslsmith_f_op_f32(-arg_0), arg_0))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_0, 170f)) + vec3<f32>(-717f, -337f, 1582f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(arg_0, -1000f, -2311f), vec3<f32>(arg_0, -1967f, -1392f))))), select(!vec3<bool>(true, arg_1, u_input.c.x < 36699u), !vec3<bool>(true, arg_1, false), select(select(!vec3<bool>(arg_1, false, arg_1), select(vec3<bool>(true, false, arg_1), vec3<bool>(true, true, true), true), any(vec4<bool>(true, arg_1, false, arg_1))), vec3<bool>(true, true, all(vec3<bool>(arg_1, arg_1, false))), true))));
    var_0 = ~select(vec4<i32>(min(u_input.a.x ^ 0i, var_0.x), select(var_0.x, 0i, arg_1), -2147483647i, 1i), firstLeadingBit(vec4<i32>(_wgslsmith_mult_i32(0i, var_0.x), _wgslsmith_add_i32(u_input.a.x, 19750i), ~1i, var_0.x)), !select(vec4<bool>(true, true, true, true), !vec4<bool>(true, arg_1, false, true), !vec4<bool>(arg_1, false, true, arg_1)));
    return abs(var_0.x);
}

fn func_4(arg_0: bool, arg_1: i32, arg_2: vec3<u32>) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1093f, _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(abs(1706f))), _wgslsmith_f_op_f32(min(2367f, _wgslsmith_f_op_f32(min(1355f, 647f))))), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1965f, _wgslsmith_f_op_f32(round(-657f)), -389f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)))), !((arg_1 ^ 26333i) >= _wgslsmith_mod_i32(~u_input.a.x, abs(1i)))));
    var var_1 = Struct_4(((_wgslsmith_clamp_vec4_u32(vec4<u32>(2436u, u_input.b, 4537u, u_input.b), vec4<u32>(arg_2.x, arg_2.x, 10238u, 37810u), vec4<u32>(u_input.b, u_input.b, 20296u, u_input.c.x)) << (vec4<u32>(4294967295u, 20296u, u_input.c.x, arg_2.x) % vec4<u32>(32u))) << (firstTrailingBit(~vec4<u32>(u_input.c.x, 1u, u_input.c.x, u_input.b)) % vec4<u32>(32u))) << (~(~(~vec4<u32>(0u, arg_2.x, u_input.c.x, 0u))) % vec4<u32>(32u)), _wgslsmith_dot_vec2_i32(u_input.a.zz, vec2<i32>(_wgslsmith_sub_i32(max(34717i, -3396i), firstTrailingBit(arg_1)), u_input.a.x)), _wgslsmith_sub_u32(arg_2.x, 1u));
    let var_2 = Struct_1(4294967295u);
    let var_3 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1000f, -945f, arg_0)))) + _wgslsmith_f_op_f32(-var_0.x))));
    var_0 = _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(abs(721f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3 - -1073f)), _wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(min(var_3, _wgslsmith_f_op_f32(step(-1036f, var_3))))))));
    return Struct_3(27789u, ~(-u_input.a.x), i32(-1i) * -arg_1, var_2, abs(~abs(~arg_2.x)));
}

fn func_1(arg_0: u32) -> f32 {
    var var_0 = func_4(all(!(!select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true)))), -func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), true), vec3<u32>(4294967295u, _wgslsmith_clamp_u32(arg_0, ~u_input.c.x, 34747u), min(30105u, arg_0 | u_input.c.x)) >> (~(~(~vec3<u32>(52327u, u_input.b, 0u))) % vec3<u32>(32u)));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1f, -1920f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-253f, 215f, -205f), vec3<f32>(-2091f, 300f, 606f), true))) + vec3<f32>(-1788f, 1102f, 1f)), !(!select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false))))));
    let var_2 = countOneBits(_wgslsmith_add_i32(var_0.c, -var_0.b << (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 4294967295u, 64340u, arg_0), vec4<u32>(4294967295u, 4294967295u, u_input.b, 4294967295u)) % 32u)));
    var_0 = func_4(any(vec3<bool>(true, false, any(vec2<bool>(true, true)))), abs(countOneBits(u_input.a.x)), ~countOneBits(abs(select(vec3<u32>(arg_0, 47279u, 4294967295u), vec3<u32>(0u, 0u, arg_0), vec3<bool>(true, false, true)))));
    var var_3 = _wgslsmith_clamp_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(33609i, ~(-83714i)), vec2<i32>(~reverseBits(var_0.c), -_wgslsmith_div_i32(u_input.a.x, u_input.a.x))), vec2<i32>(18743i, _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i & var_2, _wgslsmith_div_i32(18174i, u_input.a.x)), _wgslsmith_mod_vec2_i32(~vec2<i32>(u_input.a.x, u_input.a.x), _wgslsmith_add_vec2_i32(vec2<i32>(var_0.b, -2147483647i), u_input.a.yx)))), vec2<i32>(~0i, firstLeadingBit(u_input.a.x)));
    return 1000f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(-120f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-432f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(31970u))))) * _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(866f, -1224f, 173f)))))));
    var var_1 = Struct_3(1u, _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_mult_i32(2147483647i, ~u_input.a.x), _wgslsmith_sub_i32(u_input.a.x, u_input.a.x)), vec2<i32>(_wgslsmith_mult_i32(u_input.a.x, abs(-2147483647i)), _wgslsmith_div_i32(2147483647i, u_input.a.x) ^ -40i)), 0i, func_4(any(!select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(true, true, false))), _wgslsmith_clamp_i32(firstLeadingBit(_wgslsmith_mod_i32(u_input.a.x, 40991i)), abs(u_input.a.x), 1i), _wgslsmith_sub_vec3_u32(select(vec3<u32>(25255u, u_input.b, 44226u), vec3<u32>(41795u, u_input.b, u_input.c.x) | vec3<u32>(0u, u_input.b, u_input.c.x), true), firstTrailingBit(select(vec3<u32>(0u, 4294967295u, 1u), vec3<u32>(u_input.b, u_input.b, 1u), true)))).d, u_input.b);
    let var_2 = func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0.x)) + -237f) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -224f)))), var_1.b, vec3<u32>(u_input.b, 8138u, func_4(false, firstLeadingBit(1i), firstLeadingBit(vec3<u32>(var_1.d.a, u_input.b, var_1.a)) << (vec3<u32>(0u, 37684u, 13037u) % vec3<u32>(32u))).e)).d;
    var var_3 = func_4(~(~func_3().x) != 39328u, u_input.a.x, _wgslsmith_div_vec3_u32(_wgslsmith_clamp_vec3_u32(~vec3<u32>(var_1.d.a, u_input.b, 1u) << (_wgslsmith_sub_vec3_u32(vec3<u32>(var_1.e, u_input.c.x, var_1.e), vec3<u32>(u_input.c.x, var_2.a, var_2.a)) % vec3<u32>(32u)), ~vec3<u32>(56925u, var_2.a, 1u), vec3<u32>(0u, var_2.a, 11680u) & ~vec3<u32>(2293u, u_input.c.x, 1u)), ~vec3<u32>(var_1.e | 22241u, var_1.d.a, 1u))).d;
    var_3 = func_4(false, -(0i ^ ((u_input.a.x | var_1.b) ^ var_1.b)), countOneBits(~abs(abs(vec3<u32>(59869u, 0u, var_2.a))))).d;
    var_3 = func_4(false, -39851i, vec3<u32>(reverseBits(1u), _wgslsmith_mod_u32(func_4(true, 2147483647i, firstTrailingBit(vec3<u32>(var_1.a, var_1.e, u_input.c.x))).a, ~2259u), countOneBits(select(1u, ~u_input.c.x, all(vec2<bool>(false, false)))))).d;
    let x = u_input.a;
    s_output = StorageBuffer(~(~0u), ~(vec3<u32>(var_1.a & var_2.a, abs(var_3.a), _wgslsmith_div_u32(var_3.a, var_3.a)) & vec3<u32>(func_4(true, 8711i, vec3<u32>(u_input.c.x, 12783u, u_input.b)).d.a, 1u, 1u)), vec4<u32>(u_input.b, ~(~u_input.b), var_2.a, abs(~4294967295u)) >> (min(firstLeadingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(var_3.a, 6259u, u_input.b, 7212u), vec4<u32>(u_input.c.x, 116963u, var_2.a, 78274u))), _wgslsmith_add_vec4_u32(vec4<u32>(var_1.d.a, var_3.a, 39792u, 4294967295u) << (vec4<u32>(var_3.a, 28250u, 0u, u_input.c.x) % vec4<u32>(32u)), _wgslsmith_mod_vec4_u32(vec4<u32>(57020u, 58545u, 1u, var_3.a), vec4<u32>(63263u, var_3.a, 43351u, 0u)))) % vec4<u32>(32u)), var_0.x);
}

