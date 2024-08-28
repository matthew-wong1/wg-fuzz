struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: f32,
    b: vec3<f32>,
    c: Struct_1,
    d: vec2<i32>,
    e: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct Struct_4 {
    a: vec4<i32>,
    b: f32,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: bool;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec2<bool>, arg_1: vec2<u32>) -> vec4<bool> {
    let var_0 = Struct_4(vec4<i32>(u_input.a, _wgslsmith_mult_i32(_wgslsmith_div_i32(u_input.a, countOneBits(u_input.a)), u_input.a), u_input.a, u_input.a), 797f, vec2<i32>(-1i) * -max(vec2<i32>(-10921i, u_input.a), _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(-50553i, u_input.a))));
    let var_1 = Struct_3(Struct_1(_wgslsmith_mult_vec4_u32(abs(vec4<u32>(arg_1.x, 6139u, arg_1.x, 60279u)), _wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b, 35230u, arg_1.x, 51297u), vec4<u32>(0u, u_input.b, 0u, arg_1.x)), ~vec4<u32>(50437u, 51339u, arg_1.x, u_input.b)))), Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -425f), vec3<f32>(-982f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-603f))), _wgslsmith_f_op_f32(-var_0.b)), Struct_1(abs(vec4<u32>(0u, u_input.b, 33951u, 0u) ^ vec4<u32>(arg_1.x, u_input.b, 16946u, 57496u))), vec2<i32>(-49514i, -var_0.c.x), _wgslsmith_dot_vec4_u32(max(~vec4<u32>(u_input.b, 0u, 109712u, u_input.b), vec4<u32>(arg_1.x, 0u, arg_1.x, 8088u)), select(max(vec4<u32>(arg_1.x, arg_1.x, arg_1.x, 0u), vec4<u32>(u_input.b, u_input.b, u_input.b, 4294967295u)), ~vec4<u32>(1u, 44892u, arg_1.x, 4294967295u), all(arg_0)))));
    var var_2 = Struct_4(reverseBits(var_0.a), _wgslsmith_f_op_f32(var_1.b.b.x - var_0.b), vec2<i32>(-abs(-2147483647i), 26901i));
    let var_3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(325f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_2.b)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.b) * _wgslsmith_f_op_f32(1743f + -598f))), 1041f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_1.b.a)) - -1110f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.b.a, 817f, -850f, 166f) - vec4<f32>(var_2.b, -1000f, var_2.b, var_2.b)))) * _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1650f, -1201f, var_0.b, var_0.b) + vec4<f32>(-726f, 176f, 344f, 1066f)))))));
    var var_4 = _wgslsmith_mult_vec4_u32(~_wgslsmith_div_vec4_u32(~var_1.a.a, vec4<u32>(_wgslsmith_add_u32(u_input.b, arg_1.x), abs(29243u), var_1.b.e, arg_1.x)), ~(~vec4<u32>(u_input.b ^ 19057u, 13956u, arg_1.x >> (7507u % 32u), _wgslsmith_add_u32(arg_1.x, 26490u))));
    return !select(select(vec4<bool>(global0.x, true, global0.x, false), select(vec4<bool>(true, arg_0.x, true, global0.x), vec4<bool>(false, true, false, global0.x), any(arg_0)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, arg_0.x, global0.x, false), vec4<bool>(global0.x, true, global0.x, false), false), var_0.c.x > var_2.c.x)), select(select(select(vec4<bool>(global0.x, arg_0.x, true, arg_0.x), vec4<bool>(true, arg_0.x, arg_0.x, global0.x), global0.x), vec4<bool>(global0.x, global0.x, global0.x, true), !vec4<bool>(arg_0.x, global0.x, false, true)), vec4<bool>(true, true, true, true), arg_0.x), !vec4<bool>(103276i >= var_2.a.x, any(vec4<bool>(global0.x, arg_0.x, global0.x, global0.x)), true, global0.x == arg_0.x));
}

fn func_2(arg_0: vec4<f32>) -> vec2<bool> {
    var var_0 = func_3(!(!(!(!vec2<bool>(true, global0.x)))), vec2<u32>(~(~52122u), 56534u) & ~(~max(vec2<u32>(8585u, 1u), vec2<u32>(u_input.b, 35879u))));
    global0 = var_0.zx;
    let var_1 = 251f;
    global1 = global0.x;
    var var_2 = Struct_4(_wgslsmith_mult_vec4_i32((_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, 1i, u_input.a, 2147483647i), vec4<i32>(u_input.a, u_input.a, -36606i, 24175i)) & (vec4<i32>(u_input.a, -2147483647i, u_input.a, -6384i) << (vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b) % vec4<u32>(32u)))) << (_wgslsmith_sub_vec4_u32(~vec4<u32>(67221u, 4294967295u, 48056u, u_input.b), vec4<u32>(53892u, u_input.b, u_input.b, u_input.b) & vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b)) % vec4<u32>(32u)), vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(2147483647i, u_input.a, -18618i)), u_input.a ^ u_input.a, ~u_input.a, 1i)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1, _wgslsmith_f_op_f32(exp2(arg_0.x)))), -_wgslsmith_sub_vec2_i32(vec2<i32>(-42685i, max(u_input.a, 2147483647i)), vec2<i32>(_wgslsmith_mod_i32(-1i, -15242i), -u_input.a)));
    return select(!select(select(vec2<bool>(false, true), var_0.xy, select(vec2<bool>(false, true), vec2<bool>(global0.x, global0.x), vec2<bool>(true, var_0.x))), var_0.yw, vec2<bool>(var_0.x, var_0.x)), var_0.wy, false);
}

fn func_1(arg_0: Struct_4) -> Struct_1 {
    let var_0 = select(select(func_2(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_0.b, -258f, -614f, arg_0.b), vec4<f32>(-1000f, -1492f, -2041f, arg_0.b)))), vec2<bool>(!all(vec4<bool>(global0.x, true, global0.x, global0.x)), all(vec3<bool>(false, global0.x, false))), func_3(select(vec2<bool>(true, true), !vec2<bool>(false, global0.x), true), ~max(vec2<u32>(u_input.b, u_input.b), vec2<u32>(u_input.b, u_input.b))).yx), !select(func_3(!vec2<bool>(global0.x, global0.x), ~vec2<u32>(47266u, 0u)).zx, vec2<bool>(true, true), false), !any(vec3<bool>(any(vec3<bool>(global0.x, false, false)), global0.x, false)));
    let var_1 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(arg_0.b, 1712f)), -273f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(arg_0.b)), _wgslsmith_f_op_f32(sign(495f))), global0.x)) - 1768f), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1987f, -1159f, -1313f)) * _wgslsmith_f_op_vec3_f32(step(vec3<f32>(241f, arg_0.b, arg_0.b), vec3<f32>(arg_0.b, 538f, arg_0.b)))))))), Struct_1(vec4<u32>(_wgslsmith_div_u32(~u_input.b, 4294967295u), _wgslsmith_add_u32(u_input.b, ~0u), max(~u_input.b, 0u), _wgslsmith_clamp_u32(~4527u, u_input.b, 144u >> (u_input.b % 32u)))), _wgslsmith_sub_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(arg_0.c.x & arg_0.c.x, _wgslsmith_dot_vec2_i32(vec2<i32>(43666i, u_input.a), vec2<i32>(1i, arg_0.a.x))), ~vec2<i32>(u_input.a, u_input.a), reverseBits(select(vec2<i32>(arg_0.c.x, arg_0.a.x), vec2<i32>(u_input.a, u_input.a), vec2<bool>(false, false)))), abs(~(arg_0.c >> (vec2<u32>(u_input.b, 4294967295u) % vec2<u32>(32u))))), ~1u);
    return var_1.c;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> Struct_2 {
    global1 = false;
    var var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(1f)), 1091f));
    let var_1 = vec3<bool>(true, !any(select(!vec2<bool>(global0.x, false), vec2<bool>(global0.x, false), !global0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-2215f, -991f) + -467f) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(-313f))))) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(-139f)))) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(-2137f))))));
    var_0 = _wgslsmith_f_op_f32(-1f);
    let var_2 = Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(399f, 315f)) + _wgslsmith_f_op_f32(floor(-1159f))), _wgslsmith_f_op_f32(-128f - 175f), true)), 2129f), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(-793f, 149f, 1320f) + vec3<f32>(-983f, 1000f, -146f)))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)))), arg_1, _wgslsmith_sub_vec2_i32(select(vec2<i32>(_wgslsmith_mult_i32(u_input.a, u_input.a), -1i), vec2<i32>(2147483647i, ~(-1i)), vec2<bool>(true, true)), _wgslsmith_mult_vec2_i32(vec2<i32>(-u_input.a, u_input.a), (vec2<i32>(0i, u_input.a) >> (vec2<u32>(0u, 41440u) % vec2<u32>(32u))) << (~vec2<u32>(21527u, 55657u) % vec2<u32>(32u)))), func_1(Struct_4((vec4<i32>(u_input.a, u_input.a, -17015i, u_input.a) | vec4<i32>(u_input.a, 2147483647i, -58227i, 17476i)) >> (arg_1.a % vec4<u32>(32u)), _wgslsmith_div_f32(-469f, -1441f), -firstLeadingBit(vec2<i32>(956i, u_input.a)))).a.x);
    return var_2;
}

fn func_5(arg_0: Struct_2, arg_1: Struct_2) -> Struct_4 {
    var var_0 = Struct_3(Struct_1(vec4<u32>(~_wgslsmith_dot_vec2_u32(arg_1.c.a.zz, arg_1.c.a.yz), _wgslsmith_div_u32(arg_0.e, ~u_input.b), ~(~arg_0.e), max(u_input.b, 1u))), func_4(func_1(Struct_4(_wgslsmith_div_vec4_i32(vec4<i32>(17966i, -2147483647i, -2147483647i, -2147483647i), vec4<i32>(arg_1.d.x, -2147483647i, arg_1.d.x, 19330i)), 832f, reverseBits(arg_0.d))), arg_1.c));
    let var_1 = 0u;
    var_0 = Struct_3(Struct_1(_wgslsmith_div_vec4_u32(vec4<u32>(~16434u, var_0.a.a.x, _wgslsmith_mod_u32(var_1, 4294967295u), 1u), func_4(Struct_1(var_0.a.a), func_1(Struct_4(vec4<i32>(u_input.a, 0i, 1i, 2147483647i), 549f, vec2<i32>(-1i, -2147483647i)))).c.a)), func_4(Struct_1(firstTrailingBit(~arg_1.c.a)), Struct_1(_wgslsmith_div_vec4_u32(arg_1.c.a >> (vec4<u32>(38223u, u_input.b, u_input.b, u_input.b) % vec4<u32>(32u)), ~arg_0.c.a))));
    global1 = true;
    var var_2 = ~vec4<u32>(~4294967295u, max(_wgslsmith_dot_vec3_u32(arg_1.c.a.xyz, ~arg_0.c.a.wwx), arg_0.c.a.x), firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.c.a.x, arg_1.c.a.x, u_input.b), vec3<u32>(var_0.b.e, 4294967295u, 4294967295u))), u_input.b);
    return Struct_4(vec4<i32>(~_wgslsmith_add_i32(~arg_1.d.x, _wgslsmith_mult_i32(var_0.b.d.x, arg_0.d.x)), 4603i, 1i, -352i), _wgslsmith_f_op_f32(-794f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1062f * 2038f)) * arg_0.a)), vec2<i32>(arg_0.d.x, countOneBits(_wgslsmith_sub_i32(-2147483647i, 0i))) | var_0.b.d);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(func_4(func_1(Struct_4(vec4<i32>(2147483647i, u_input.a, 0i, 0i), 1000f, vec2<i32>(-2147483647i, u_input.a) ^ vec2<i32>(-1i, -28305i))), Struct_1(vec4<u32>(15798u, u_input.b, u_input.b, u_input.b))), func_4(func_4(func_1(Struct_4(vec4<i32>(u_input.a, 1i, u_input.a, u_input.a), 108f, vec2<i32>(-1i, -2147483647i))), Struct_1(func_4(Struct_1(vec4<u32>(0u, 0u, u_input.b, 4294967295u)), Struct_1(vec4<u32>(1u, 4294967295u, 0u, 4155u))).c.a)).c, Struct_1(~(~vec4<u32>(u_input.b, 15001u, 10903u, u_input.b)))));
    let var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_0.b * _wgslsmith_f_op_f32(-var_0.b)))), _wgslsmith_f_op_f32(-1898f * var_0.b), 319f) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b, -477f, 1558f) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1000f, 150f, 157f), vec3<f32>(-637f, 1243f, 230f), global0.x))) - vec3<f32>(_wgslsmith_f_op_f32(-var_0.b), _wgslsmith_f_op_f32(f32(-1f) * -443f), var_0.b))));
    var var_2 = _wgslsmith_f_op_f32(trunc(-1126f));
    var var_3 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b)), -1059f, all(vec3<bool>(global0.x, global0.x, false)))) + -338f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1111f)) * -591f), -645f, 661f)), func_1(func_5(Struct_2(-362f, vec3<f32>(var_0.b, -1205f, var_1.x), func_1(Struct_4(var_0.a, -1279f, vec2<i32>(var_0.a.x, var_0.c.x))), max(var_0.a.yw, var_0.a.zx), _wgslsmith_add_u32(10620u, u_input.b)), Struct_2(var_0.b, _wgslsmith_div_vec3_f32(var_1, var_1), func_4(Struct_1(vec4<u32>(u_input.b, u_input.b, u_input.b, 0u)), Struct_1(vec4<u32>(65299u, u_input.b, 1u, 27888u))).c, firstLeadingBit(var_0.a.yx), u_input.b))), var_0.c, _wgslsmith_dot_vec4_u32(min(countOneBits(~vec4<u32>(0u, u_input.b, u_input.b, u_input.b)), vec4<u32>(9840u, u_input.b << (4294967295u % 32u), 26079u, firstTrailingBit(u_input.b))), min(~(~vec4<u32>(1u, u_input.b, u_input.b, u_input.b)), ~func_4(Struct_1(vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b)), Struct_1(vec4<u32>(44491u, 27027u, u_input.b, u_input.b))).c.a)));
    var var_4 = func_3(!(!(!(!vec2<bool>(global0.x, true)))), ~max(vec2<u32>(firstTrailingBit(28739u), 0u & u_input.b), ~var_3.c.a.xz >> (var_3.c.a.xx % vec2<u32>(32u)))).zzz;
    var_2 = var_3.b.x;
    var var_5 = Struct_3(Struct_1(~(~func_1(Struct_4(vec4<i32>(-34710i, var_3.d.x, var_3.d.x, -26969i), var_1.x, vec2<i32>(u_input.a, u_input.a))).a)), func_4(Struct_1(~(var_3.c.a >> (vec4<u32>(var_3.e, u_input.b, u_input.b, 4294967295u) % vec4<u32>(32u)))), func_1(func_5(Struct_2(var_1.x, vec3<f32>(1322f, -1637f, -1000f), var_3.c, vec2<i32>(0i, 15822i), 39686u), func_4(Struct_1(vec4<u32>(var_3.e, 4294967295u, 102248u, u_input.b)), var_3.c)))));
    var var_6 = abs(1u);
    var_5 = Struct_3(var_5.b.c, var_5.b);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b - _wgslsmith_f_op_f32(round(-250f))) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_1.x), 1183f, true))), var_5.b.b.x, 343f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(490f - _wgslsmith_f_op_f32(-var_1.x)) - _wgslsmith_f_op_f32(round(func_4(func_1(Struct_4(vec4<i32>(2147483647i, var_5.b.d.x, var_5.b.d.x, -24467i), 1044f, vec2<i32>(u_input.a, u_input.a))), var_5.b.c).a))));
}

