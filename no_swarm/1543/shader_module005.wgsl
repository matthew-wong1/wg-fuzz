struct Struct_1 {
    a: vec2<i32>,
    b: vec4<i32>,
    c: bool,
    d: i32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: f32,
    c: vec3<u32>,
    d: vec2<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: Struct_1,
    d: vec3<u32>,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec4<bool> {
    let var_0 = _wgslsmith_mult_vec2_u32(~(~abs(vec2<u32>(u_input.a.x, 5351u))), u_input.a.zy);
    let var_1 = Struct_2(~u_input.a, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -198f), _wgslsmith_f_op_f32(step(-512f, 362f)), all(vec3<bool>(false, true, true))))))), ~reverseBits(reverseBits(~u_input.a)), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-161f, 962f))))));
    return !vec4<bool>(reverseBits(u_input.d) != _wgslsmith_add_i32(-26076i, reverseBits(u_input.c)), all(vec4<bool>(true, any(vec2<bool>(true, false)), all(vec4<bool>(true, true, false, false)), any(vec4<bool>(false, true, false, false)))), any(!select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false))), true);
}

fn func_2(arg_0: vec3<i32>) -> bool {
    let var_0 = func_3();
    var var_1 = all(vec2<bool>(u_input.c < ~_wgslsmith_mod_i32(u_input.d, 21804i), true || (false | any(vec2<bool>(var_0.x, var_0.x)))));
    var_1 = var_0.x;
    let var_2 = var_0.x;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(654f)))) - 1f) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -429f), _wgslsmith_f_op_f32(trunc(-1574f)))) * _wgslsmith_f_op_f32(-498f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1194f)) + _wgslsmith_f_op_f32(f32(-1f) * -1116f))));
}

fn func_1() -> u32 {
    let var_0 = -1000f;
    var var_1 = select(!vec2<bool>(func_2(-vec3<i32>(u_input.d, u_input.d, -15898i)), all(func_3())), !vec2<bool>(all(vec2<bool>(true, true)), !any(vec4<bool>(true, false, false, false))), true);
    var var_2 = Struct_3(Struct_2(vec3<u32>(abs(31177u), _wgslsmith_add_u32(u_input.a.x, 12948u), u_input.b.x ^ 64304u) >> (~(~vec3<u32>(u_input.a.x, 27177u, 0u)) % vec3<u32>(32u)), -199f, vec3<u32>(u_input.b.x, ~_wgslsmith_clamp_u32(u_input.a.x, u_input.b.x, 0u), _wgslsmith_mult_u32(4294967295u, 1u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-2267f, -1860f) - vec2<f32>(-542f, var_0))))), (_wgslsmith_mod_i32(_wgslsmith_div_i32(-1i, u_input.c), 42404i) << (~(46167u << (u_input.a.x % 32u)) % 32u)) >= 2147483647i, Struct_1(~firstTrailingBit(vec2<i32>(u_input.c, 5180i)) << (reverseBits(_wgslsmith_mod_vec2_u32(u_input.b, vec2<u32>(u_input.a.x, 42777u))) % vec2<u32>(32u)), vec4<i32>(-select(1i, -2147483647i, false), 1i, 1i, -15215i), any(vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x)) || var_1.x, _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(1i, 43279i, 10738i), vec3<i32>(0i, u_input.d, u_input.d) ^ vec3<i32>(-2147483647i, -53417i, u_input.c)), (vec3<i32>(u_input.d, u_input.c, u_input.c) << (u_input.a % vec3<u32>(32u))) | (vec3<i32>(-2147483647i, 14088i, 31181i) >> (u_input.a % vec3<u32>(32u))))), _wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(1u, ~91609u, 0u), ~(~vec3<u32>(u_input.a.x, u_input.a.x, 51295u))), vec3<u32>(4294967295u, _wgslsmith_mod_u32(41452u, u_input.a.x), ~u_input.b.x) >> (vec3<u32>(~u_input.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, 1u, 4294967295u), vec4<u32>(1u, u_input.a.x, u_input.b.x, 1u)), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 38736u, u_input.a.x, u_input.b.x), vec4<u32>(4294967295u, 1u, 1u, 4294967295u))) % vec3<u32>(32u))), !vec3<bool>(-353f > var_0, false, var_1.x));
    var var_3 = _wgslsmith_f_op_vec3_f32(min(vec3<f32>(1604f, -584f, var_2.a.b), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1973f, -1113f, -424f)))))));
    var_2 = Struct_3(Struct_2(~_wgslsmith_mod_vec3_u32(var_2.d, ~u_input.a), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_2.a.d.x - -1933f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(814f, 1000f)))), _wgslsmith_add_vec3_u32(var_2.d, vec3<u32>(~u_input.a.x, _wgslsmith_div_u32(4294967295u, 4294967295u), u_input.b.x)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(var_3.yy, vec2<f32>(var_0, var_0)), var_3.yy, var_2.e.yz))), var_1.x, Struct_1(var_2.c.b.wz, ~(var_2.c.b & var_2.c.b), (_wgslsmith_mod_i32(27359i, 14349i) < (17941i | u_input.d)) && true, _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(24461i, -2147483647i, u_input.d, 1i), var_2.c.b) & u_input.c, 1i & ~var_2.c.d)), u_input.a, var_2.e);
    return (1u >> (~(_wgslsmith_mult_u32(var_2.d.x, var_2.d.x) ^ ~4294967295u) % 32u)) >> (var_2.a.c.x % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(458f * 589f))))));
    let var_1 = func_1() == 44922u;
    var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(986f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1261f) - -601f))))));
    var var_2 = abs(~(~1u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 1107f, -1348f) + vec3<f32>(-409f, 1000f, -1258f)))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1581f, -583f, -295f), vec3<f32>(455f, -114f, 1498f), vec3<bool>(false, var_1, false))), vec3<f32>(1022f, -1938f, -477f)))), _wgslsmith_dot_vec4_u32(~vec4<u32>(30178u, 20582u, u_input.b.x, 362u) | ~vec4<u32>(41962u, u_input.a.x, 4294967295u, 0u), ~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b.x, 45212u, u_input.b.x, u_input.b.x), vec4<u32>(100459u, u_input.b.x, u_input.a.x, 11661u)) << (select(vec4<u32>(u_input.b.x, 43126u, u_input.a.x, u_input.a.x), vec4<u32>(22489u, 855u, 25943u, 36947u), func_3()) % vec4<u32>(32u))), vec4<i32>(abs(-(u_input.c << (10649u % 32u))), -u_input.c, _wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-20159i, u_input.d, u_input.d), vec3<i32>(u_input.d, u_input.d, u_input.c)) & select(u_input.d, u_input.c, var_1), 0i, -43574i), u_input.d));
}

