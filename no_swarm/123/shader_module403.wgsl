struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: f32,
    e: u32,
}

struct Struct_3 {
    a: u32,
    b: vec4<i32>,
}

struct Struct_4 {
    a: Struct_3,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec3<f32>,
    d: vec2<u32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3() -> bool {
    let var_0 = 30063i;
    let var_1 = abs(vec3<i32>(_wgslsmith_clamp_i32(firstLeadingBit(var_0), _wgslsmith_dot_vec3_i32(vec3<i32>(0i, u_input.e, var_0), vec3<i32>(-65248i, 0i, u_input.e)), firstTrailingBit(-2147483647i)) | reverseBits(-var_0), u_input.c, _wgslsmith_dot_vec3_i32(-_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.c, 12245i, u_input.e), vec3<i32>(var_0, var_0, var_0)), vec3<i32>(u_input.e, var_0, select(var_0, -19169i, true)))));
    let var_2 = Struct_2(Struct_1(u_input.a ^ abs(u_input.b.x)), Struct_1(~(~u_input.d ^ _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.b.x, 118524u, 44657u), vec4<u32>(0u, u_input.a, 32542u, u_input.d)))), Struct_1(_wgslsmith_dot_vec3_u32(vec3<u32>(select(u_input.d, 21492u, false), 1u, ~u_input.a), vec3<u32>(u_input.b.x, select(1u, u_input.b.x, false), u_input.b.x ^ 57035u))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1393f * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(755f)), 888f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(292f)), -679f))))), u_input.a);
    let var_3 = vec4<u32>(firstLeadingBit(firstLeadingBit(_wgslsmith_clamp_u32(~4294967295u, _wgslsmith_mult_u32(var_2.a.a, var_2.a.a), ~4294967295u))), u_input.d, var_2.b.a | _wgslsmith_add_u32(18692u, firstLeadingBit(_wgslsmith_clamp_u32(var_2.b.a, 0u, u_input.a))), firstLeadingBit(~u_input.a));
    var var_4 = _wgslsmith_dot_vec2_u32(u_input.b, vec2<u32>(_wgslsmith_dot_vec3_u32(select(countOneBits(vec3<u32>(58051u, var_3.x, 4294967295u)), abs(var_3.xzx), false), reverseBits(select(vec3<u32>(60595u, u_input.d, u_input.b.x), vec3<u32>(var_2.a.a, 1u, var_2.b.a), vec3<bool>(false, true, true)))), var_2.e));
    return true;
}

fn func_4(arg_0: vec4<bool>) -> vec3<bool> {
    let var_0 = _wgslsmith_add_vec2_i32(~min(countOneBits(~vec2<i32>(u_input.e, -2147483647i)), vec2<i32>(u_input.e, -24385i) >> (vec2<u32>(u_input.b.x, 0u) % vec2<u32>(32u))), vec2<i32>(min(~_wgslsmith_mod_i32(u_input.c, 1i), u_input.c), firstLeadingBit(firstLeadingBit(1i))));
    var var_1 = !select(arg_0, vec4<bool>(arg_0.x, true, all(select(vec4<bool>(false, false, arg_0.x, false), vec4<bool>(true, true, arg_0.x, false), arg_0.x)), var_0.x <= min(var_0.x, var_0.x)), select(!vec4<bool>(true, false, true, arg_0.x), select(select(arg_0, vec4<bool>(arg_0.x, arg_0.x, false, true), true), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, true), any(vec3<bool>(true, true, arg_0.x))), arg_0));
    var var_2 = ~u_input.c;
    var var_3 = !(!all(!var_1.zxy));
    var_3 = all(arg_0.zzy);
    return select(select(select(vec3<bool>(!arg_0.x, all(var_1.wzy), all(var_1.wyx)), vec3<bool>(false, var_1.x, !var_1.x), true), vec3<bool>(arg_0.x, true, true), vec3<bool>(true, select(arg_0.x, var_1.x, all(vec4<bool>(true, true, var_1.x, arg_0.x))), arg_0.x)), vec3<bool>(false, all(select(select(arg_0.wy, vec2<bool>(false, var_1.x), vec2<bool>(var_1.x, var_1.x)), vec2<bool>(false, var_1.x), arg_0.xw)), var_1.x), true);
}

fn func_2(arg_0: vec2<i32>) -> vec3<bool> {
    let var_0 = Struct_4(Struct_3(u_input.b.x, _wgslsmith_mult_vec4_i32(abs(-vec4<i32>(u_input.c, arg_0.x, 1i, 2147483647i)), vec4<i32>(u_input.e, u_input.c, u_input.e, -2147483647i) >> (~vec4<u32>(1u, u_input.b.x, u_input.a, 1u) % vec4<u32>(32u)))), 1683f);
    let var_1 = -u_input.e >> (_wgslsmith_div_u32(~(max(37299u, var_0.a.a) ^ ~0u), u_input.b.x) % 32u);
    var var_2 = Struct_2(Struct_1(min(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.a.a, u_input.a, var_0.a.a), vec3<u32>(var_0.a.a, u_input.d, var_0.a.a)) | 52172u, reverseBits(var_0.a.a))), Struct_1(abs(~min(4294967295u, var_0.a.a))), Struct_1(var_0.a.a), _wgslsmith_f_op_f32(-var_0.b), (~select(40821u, var_0.a.a, true) >> (_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.a.a, 20918u, u_input.a), vec3<u32>(1u, 0u, var_0.a.a)), u_input.b.x >> (var_0.a.a % 32u)) % 32u)) >> (((~u_input.d & 96680u) ^ u_input.b.x) % 32u));
    var_2 = Struct_2(var_2.b, var_2.b, Struct_1(min(~(~u_input.b.x), ~(u_input.b.x >> (var_2.a.a % 32u)))), _wgslsmith_f_op_f32(1000f * var_2.d), 4294967295u);
    var_2 = Struct_2(var_2.a, var_2.b, var_2.c, 167f, ~0u);
    return func_4(!vec4<bool>(true, all(vec4<bool>(true, true, true, true)), any(select(vec2<bool>(true, false), vec2<bool>(true, false), true)), func_3()));
}

fn func_1(arg_0: vec2<f32>) -> vec2<bool> {
    return vec2<bool>(all(!func_2(vec2<i32>(u_input.e, u_input.e))) || true, !any(vec3<bool>(true, true, true)));
}

fn func_5(arg_0: vec4<bool>, arg_1: f32, arg_2: vec2<bool>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -124f);
    let var_1 = u_input.a;
    var var_2 = 0i;
    var var_3 = Struct_4(Struct_3(~(~50192u), select(vec4<i32>(u_input.c, _wgslsmith_sub_i32(2147483647i, u_input.c), ~u_input.c, 0i << (var_1 % 32u)), vec4<i32>(1i, u_input.c, ~u_input.c, 16325i ^ u_input.c), vec4<bool>(arg_0.x, true, false, !arg_0.x))), _wgslsmith_f_op_f32(min(arg_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 * _wgslsmith_f_op_f32(-arg_1)) * _wgslsmith_f_op_f32(-arg_1)))));
    var_2 = max(0i, _wgslsmith_div_i32(2147483647i, _wgslsmith_sub_i32(-(-2147483647i >> (var_3.a.a % 32u)), u_input.c)));
    return Struct_1(var_1);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(firstLeadingBit(reverseBits(u_input.d) << (u_input.b.x % 32u)));
    var_0 = func_5(!vec4<bool>(!any(vec4<bool>(true, true, false, true)), true, false, any(vec4<bool>(false, false, false, false)) || true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1321f) * _wgslsmith_f_op_f32(-659f - -1975f)))), func_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, -108f))));
    var_0 = func_5(vec4<bool>(u_input.c > u_input.c, _wgslsmith_add_u32(0u, _wgslsmith_mult_u32(0u, u_input.b.x)) == countOneBits(var_0.a), true, !any(vec4<bool>(true, true, true, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1809f - -924f)), !(!func_1(vec2<f32>(-110f, 918f))));
    var var_1 = vec4<i32>(abs(0i), abs(u_input.e), 0i, u_input.e);
    let var_2 = _wgslsmith_add_vec3_u32(~_wgslsmith_mult_vec3_u32(max(vec3<u32>(56962u, u_input.d, 1u), vec3<u32>(var_0.a, 53746u, 26735u)), vec3<u32>(var_0.a, u_input.a >> (63254u % 32u), 45119u)), countOneBits(select(~(~vec3<u32>(var_0.a, u_input.a, 0u)), select(vec3<u32>(0u, 41304u, u_input.d) | vec3<u32>(var_0.a, var_0.a, 64811u), vec3<u32>(u_input.a, u_input.a, u_input.b.x), 0u == u_input.a), vec3<bool>(true, all(vec3<bool>(false, false, false)), false))));
    let var_3 = Struct_2(func_5(!vec4<bool>(true, true, true, func_4(vec4<bool>(false, false, false, true)).x), -710f, vec2<bool>(all(vec2<bool>(true, true)), true)), func_5(vec4<bool>(true, true, true, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-181f)) * _wgslsmith_f_op_f32(step(2290f, 587f)))), select(vec2<bool>(true, true), vec2<bool>(true, true), false)), Struct_1(countOneBits(_wgslsmith_mod_u32(26452u, var_0.a) << (_wgslsmith_mod_u32(var_0.a, 8688u) % 32u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, 325f) + -2109f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -481f) * -1483f))), 81997u);
    var_0 = var_3.a;
    let var_4 = !(!(1f <= _wgslsmith_f_op_f32(round(var_3.d))));
    var_0 = var_3.c;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.yw, abs(-13440i), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(-1274f, _wgslsmith_f_op_f32(-var_3.d))), _wgslsmith_f_op_f32(round(-1488f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -448f)))), _wgslsmith_mult_vec2_u32(u_input.b, (min(var_2.yz, vec2<u32>(21414u, 1u)) & _wgslsmith_add_vec2_u32(u_input.b, vec2<u32>(1u, var_3.a.a))) << (_wgslsmith_div_vec2_u32(vec2<u32>(6292u, 23362u), abs(vec2<u32>(4294967295u, 53520u))) % vec2<u32>(32u))), abs(vec4<i32>(max(0i, ~var_1.x), -38311i, u_input.c, _wgslsmith_div_i32(u_input.c, u_input.c | -1i))));
}

