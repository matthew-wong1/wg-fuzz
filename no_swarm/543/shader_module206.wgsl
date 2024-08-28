struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: i32,
    d: vec4<bool>,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: vec4<f32>,
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

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: vec4<u32>, arg_1: vec4<i32>) -> u32 {
    let var_0 = min(25995i, _wgslsmith_mod_i32(-2147483647i, firstTrailingBit(arg_1.x)));
    var var_1 = Struct_1(vec4<u32>(1u, ~arg_0.x, ~(~_wgslsmith_dot_vec2_u32(u_input.c, arg_0.xy)), 28487u), 0i, _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(~arg_1.zwx, arg_1.zwz, -(~vec3<i32>(arg_1.x, 2147483647i, -10626i))), arg_1.xxw), !vec4<bool>(true, true, all(vec4<bool>(true, true, true, false)), true != all(vec2<bool>(true, true))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -214f)), 1000f, _wgslsmith_f_op_f32(-624f - _wgslsmith_f_op_f32(-1272f - -1886f)))));
    var var_2 = ~_wgslsmith_mod_vec4_i32(vec4<i32>(-15332i, 0i, abs(i32(-1i) * -50207i), select(-65380i, arg_1.x, var_1.d.x)), ~vec4<i32>(var_1.c | arg_1.x, i32(-1i) * -10166i, i32(-1i) * -2147483647i, var_0));
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_1.e.x, var_1.e.x, -2834f)))))) * var_1.e));
    var var_4 = var_1.e.x;
    return 1u;
}

fn func_3() -> vec4<i32> {
    var var_0 = u_input.c;
    var var_1 = ~(~(~vec3<u32>(firstTrailingBit(31707u), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, var_0.x, 0u), vec3<u32>(var_0.x, 4294967295u, u_input.a)), u_input.c.x)));
    var var_2 = Struct_1(min(reverseBits(_wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.c.x, 0u, var_1.x, 22888u), vec4<u32>(0u, 29876u, var_0.x, 1u) & vec4<u32>(4294967295u, 0u, 9461u, var_0.x))), min(~vec4<u32>(var_1.x, var_0.x, 0u, 38314u), ~vec4<u32>(u_input.c.x, u_input.b, 110580u, var_0.x) << (firstLeadingBit(vec4<u32>(var_1.x, var_1.x, 1u, 0u)) % vec4<u32>(32u)))), countOneBits(reverseBits(min(1i, 1i))), 21976i, select(select(vec4<bool>(any(vec3<bool>(false, true, true)), true, true, true), !select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, true), true), true), vec4<bool>(true, false, select(false, any(vec2<bool>(true, true)), true), all(vec3<bool>(true, true, true)) != select(true, false, true)), select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(1f, 1f, 1f))))));
    var var_3 = vec3<u32>(var_1.x, max(var_1.x, ~(select(var_2.a.x, var_1.x, false) ^ ~4294967295u)), reverseBits(var_0.x));
    var var_4 = var_2.d.x & var_2.d.x;
    return countOneBits(_wgslsmith_sub_vec4_i32(vec4<i32>(1i, -10394i, ~(~37375i), firstTrailingBit(19918i ^ var_2.c)), _wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(-vec4<i32>(var_2.b, var_2.c, 2147483647i, 0i), -vec4<i32>(var_2.b, -34020i, var_2.c, 5332i), vec4<i32>(var_2.c, var_2.b, -13981i, -2147483647i) | vec4<i32>(1i, var_2.b, var_2.c, 0i)), _wgslsmith_div_vec4_i32(select(vec4<i32>(var_2.b, var_2.b, 41895i, -2147483647i), vec4<i32>(var_2.b, -2147483647i, var_2.c, var_2.b), true), -vec4<i32>(2147483647i, 0i, -28720i, var_2.c)))));
}

fn func_1() -> bool {
    var var_0 = _wgslsmith_sub_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(1i, 1i), select(select(vec2<i32>(2147483647i, 0i), vec2<i32>(1i, -64379i), vec2<bool>(true, false)), vec2<i32>(1i, -64341i), vec2<bool>(false, false)) << (vec2<u32>(1u | u_input.a, func_2(vec4<u32>(1u, u_input.b, 4160u, u_input.c.x), vec4<i32>(41050i, -1i, -4326i, 43090i))) % vec2<u32>(32u)), vec2<i32>(_wgslsmith_dot_vec4_i32(func_3(), _wgslsmith_mod_vec4_i32(vec4<i32>(-31596i, 53790i, 27888i, 1i), vec4<i32>(-1i, 29136i, -13435i, -1i))), _wgslsmith_dot_vec4_i32(vec4<i32>(25419i, 2147483647i, -25411i, 2147483647i), firstLeadingBit(vec4<i32>(80271i, 0i, 51391i, -2147483647i))))), _wgslsmith_mult_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(1i, 21816i << (1u % 32u)), vec2<i32>(28809i, -1i) << (_wgslsmith_clamp_vec2_u32(u_input.c, u_input.c, vec2<u32>(0u, 4294967295u)) % vec2<u32>(32u))), -(vec2<i32>(-2147483647i, -2147483647i) << (u_input.c % vec2<u32>(32u)))));
    let var_1 = vec4<i32>(var_0.x, max(firstLeadingBit(var_0.x << (12951u % 32u)) ^ func_3().x, var_0.x), _wgslsmith_add_i32(-(~var_0.x << (0u % 32u)), select(_wgslsmith_mod_i32(_wgslsmith_div_i32(var_0.x, 1i), ~46940i), var_0.x, abs(4294967295u) >= _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, u_input.c.x, 1u), vec3<u32>(1u, u_input.a, u_input.c.x)))), var_0.x);
    var var_2 = Struct_1(_wgslsmith_mod_vec4_u32(~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, 0u, 0u, 76869u), vec4<u32>(2809u, u_input.b, u_input.b, 56844u)), vec4<u32>(4294967295u, u_input.a, ~u_input.c.x, 1u)) << (max(_wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(8732u, u_input.b, u_input.b, u_input.b), vec4<u32>(u_input.c.x, 1u, u_input.a, u_input.c.x)), _wgslsmith_div_vec4_u32(vec4<u32>(1054u, u_input.b, 7622u, u_input.c.x), vec4<u32>(22044u, 89009u, u_input.c.x, 18016u)), ~vec4<u32>(4294967295u, 30347u, 2126u, u_input.c.x)), ~select(vec4<u32>(u_input.c.x, 4976u, 3014u, 4294967295u), vec4<u32>(u_input.b, u_input.a, 5473u, 4294967295u), true)) % vec4<u32>(32u)), _wgslsmith_sub_i32(_wgslsmith_mult_i32(firstTrailingBit(var_1.x), func_3().x), (_wgslsmith_mod_i32(0i, var_0.x) ^ -1i) << ((~4294967295u >> (_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 4294967295u, 4294967295u), vec3<u32>(u_input.c.x, 1u, u_input.a)) % 32u)) % 32u)), _wgslsmith_clamp_i32(_wgslsmith_div_i32(abs(0i), _wgslsmith_add_i32(-1i, -7848i)), _wgslsmith_dot_vec3_i32(select(vec3<i32>(var_0.x, 22887i, 32158i), var_1.wxy, vec3<bool>(true, true, true)), reverseBits(var_1.xww)), _wgslsmith_mod_i32(var_1.x, ~(-68592i))) >> (_wgslsmith_dot_vec3_u32(~_wgslsmith_div_vec3_u32(vec3<u32>(u_input.c.x, 22073u, u_input.a), vec3<u32>(u_input.a, u_input.c.x, u_input.a)), ~(~vec3<u32>(40813u, u_input.c.x, 4294967295u))) % 32u), vec4<bool>(true, true, true, true), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 782f, _wgslsmith_f_op_f32(f32(-1f) * -272f))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -883f), _wgslsmith_f_op_f32(331f - -174f), 1000f), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(-575f, 2908f, 905f) - vec3<f32>(-319f, 737f, -270f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-614f, -163f, -253f) - vec3<f32>(1316f, -412f, -1524f)))), select(select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, false)), select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), true), true)))));
    var_0 = _wgslsmith_sub_vec2_i32(reverseBits(vec2<i32>(-var_0.x, _wgslsmith_dot_vec2_i32(var_1.zw, var_1.xz))) << (~(_wgslsmith_mod_vec2_u32(u_input.c, vec2<u32>(4294967295u, 17795u)) << (~var_2.a.xz % vec2<u32>(32u))) % vec2<u32>(32u)), ~(var_1.wy << (_wgslsmith_sub_vec2_u32(var_2.a.zx, _wgslsmith_sub_vec2_u32(var_2.a.zw, u_input.c)) % vec2<u32>(32u))));
    var var_3 = Struct_1(select(~(abs(var_2.a) ^ firstLeadingBit(var_2.a)), vec4<u32>(~(var_2.a.x & u_input.c.x), u_input.b, ~u_input.c.x ^ 4294967295u, var_2.a.x), var_2.d.x), ~func_3().x, var_0.x, var_2.d, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1183f * _wgslsmith_f_op_f32(-var_2.e.x)) + _wgslsmith_f_op_f32(floor(2484f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1244f, var_2.e.x)))), _wgslsmith_f_op_f32(f32(-1f) * -1136f)));
    return var_3.d.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !vec4<bool>(!(1i > _wgslsmith_dot_vec2_i32(vec2<i32>(-3759i, 0i), vec2<i32>(2147483647i, 0i))), all(vec4<bool>(true, true, true, true)), false, func_1());
    var_0 = !vec4<bool>(func_1(), ~_wgslsmith_clamp_u32(25983u, 4294967295u, 23642u) > u_input.b, true, var_0.x);
    var var_1 = _wgslsmith_sub_vec2_i32(vec2<i32>(_wgslsmith_mult_i32(min(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 32252i, -2147483647i), vec3<i32>(-2147483647i, 2147483647i, 32167i)), ~3733i), -(~(-11799i))), ~_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 69956i, 34848i, -55358i), vec4<i32>(-1i, -46748i, -1i, -2147483647i)), 1i)), max(vec2<i32>(7116i, _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(-6369i, -2147483647i), vec2<i32>(-1i, -2147483647i)), _wgslsmith_clamp_vec2_i32(vec2<i32>(-82013i, 2147483647i), vec2<i32>(1i, 2147483647i), vec2<i32>(0i, -2147483647i)))), -vec2<i32>(1i, 1i)));
    let var_2 = var_0.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(-676f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-746f, -289f)) - _wgslsmith_f_op_f32(round(1617f))))))), ~(-(~vec4<i32>(-2147483647i, -5637i, var_1.x, 31451i))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(127f)), 1028f, -242f, _wgslsmith_f_op_f32(round(-281f))) - vec4<f32>(_wgslsmith_div_f32(334f, -164f), _wgslsmith_f_op_f32(1162f - 1000f), -418f, _wgslsmith_f_op_f32(-629f * 316f))))));
}

