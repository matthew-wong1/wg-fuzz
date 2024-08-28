struct Struct_1 {
    a: bool,
    b: vec2<u32>,
    c: vec2<i32>,
    d: i32,
    e: vec3<f32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: u32,
    c: bool,
    d: vec4<i32>,
    e: vec2<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<f32>,
}

struct Struct_4 {
    a: i32,
    b: bool,
    c: i32,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: u32, arg_3: Struct_4) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(ceil(1356f))) - _wgslsmith_f_op_f32(-441f * _wgslsmith_f_op_f32(max(-267f, _wgslsmith_f_op_f32(abs(-1558f))))));
    let var_1 = Struct_3(Struct_1(arg_3.b, arg_1.wx, arg_0.e, arg_3.c, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_0, var_0, var_0)))), vec3<f32>(704f, var_0, var_0))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(exp2(var_0)), var_0), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, var_0) + vec2<f32>(var_0, var_0))), any(arg_0.a.xx)))));
    var var_2 = !vec3<bool>(all(arg_0.a), false, true);
    var_2 = vec3<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_1.a.e.x)))) <= var_1.a.e.x, true, !any(!(!arg_0.a.yx)));
    var var_3 = arg_0.a;
    return reverseBits(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(arg_1.yzx, vec3<u32>(78342u ^ arg_0.b, 13907u, 0u)), u_input.a.x));
}

fn func_2(arg_0: f32, arg_1: bool) -> vec3<f32> {
    let var_0 = vec4<u32>(firstLeadingBit(_wgslsmith_dot_vec3_u32(u_input.a.zxw, abs(vec3<u32>(31767u, 68022u, u_input.a.x)))), u_input.a.x, 52403u, 127644u);
    let var_1 = Struct_2(!vec4<bool>(~var_0.x < 1u, true, any(vec2<bool>(true, false)), !(!arg_1)), firstTrailingBit(_wgslsmith_sub_u32(70817u, u_input.a.x | func_3(Struct_2(vec4<bool>(true, true, true, true), var_0.x, arg_1, vec4<i32>(1i, u_input.b, u_input.b, u_input.b), vec2<i32>(u_input.b, u_input.b)), u_input.a, 0u, Struct_4(u_input.b, false, 12536i)))), (u_input.b != -69039i) && !arg_1, abs(-_wgslsmith_add_vec4_i32(-vec4<i32>(16150i, 1i, u_input.b, u_input.b), ~vec4<i32>(u_input.b, 3690i, u_input.b, u_input.b))), vec2<i32>(-2147483647i, ~u_input.b));
    let var_2 = -var_1.d.x;
    var var_3 = Struct_1(var_1.a.x, vec2<u32>(~4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, var_0.x), countOneBits(var_0.xy))), _wgslsmith_clamp_vec2_i32(_wgslsmith_mod_vec2_i32(-vec2<i32>(-1i, 1i), firstLeadingBit(vec2<i32>(0i, 0i)) | firstTrailingBit(vec2<i32>(-2147483647i, var_2))), _wgslsmith_sub_vec2_i32(_wgslsmith_clamp_vec2_i32(var_1.d.xy, vec2<i32>(2147483647i, u_input.b), vec2<i32>(2147483647i, u_input.b)), _wgslsmith_sub_vec2_i32(var_1.d.wz, var_1.e)) << (_wgslsmith_sub_vec2_u32(vec2<u32>(var_0.x, 43245u), _wgslsmith_mult_vec2_u32(vec2<u32>(25528u, 69730u), var_0.yw)) % vec2<u32>(32u)), select(select(vec2<i32>(var_1.e.x, -18608i), var_1.e, true), ~firstTrailingBit(vec2<i32>(u_input.b, 38453i)), vec2<bool>(var_1.c, true))), _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(var_1.d.xxw, _wgslsmith_div_vec3_i32(vec3<i32>(20892i, var_1.e.x, var_1.d.x), vec3<i32>(var_2, 15292i, 2147483647i)) & vec3<i32>(2147483647i, -2147483647i, -12274i), _wgslsmith_sub_vec3_i32(var_1.d.wxz, _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.b, var_2, u_input.b), var_1.d.yzy, vec3<i32>(-7830i, 2147483647i, var_2)))), var_1.d.zzy), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-488f, arg_0, arg_0) + vec3<f32>(arg_0, 762f, arg_0)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1695f, arg_0, -674f))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_0, arg_0)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(352f, -118f, -753f))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1448f, -151f, arg_0))) * vec3<f32>(_wgslsmith_f_op_f32(ceil(arg_0)), -1000f, -554f))));
    var var_4 = arg_1;
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, 1241f, -430f)))) * vec3<f32>(_wgslsmith_f_op_f32(arg_0 - arg_0), _wgslsmith_f_op_f32(sign(-562f)), arg_0)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(var_3.e, vec3<f32>(arg_0, -1000f, arg_0))) * var_3.e))) - _wgslsmith_f_op_vec3_f32(-var_3.e));
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_4, arg_2: vec2<u32>, arg_3: vec2<u32>) -> u32 {
    let var_0 = Struct_2(select(select(!select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, arg_1.b, false), true), vec4<bool>(false, all(vec4<bool>(true, arg_1.b, arg_1.b, arg_1.b)), 47723u <= u_input.a.x, true), !(!vec4<bool>(true, true, false, arg_1.b))), select(vec4<bool>(21790u > arg_3.x, arg_1.b, arg_1.b && arg_1.b, true), select(select(vec4<bool>(arg_1.b, arg_1.b, arg_1.b, arg_1.b), vec4<bool>(arg_1.b, false, arg_1.b, true), arg_1.b), !vec4<bool>(arg_1.b, true, arg_1.b, false), false || arg_1.b), true), select(select(vec4<bool>(true, arg_1.b, false, true), vec4<bool>(arg_1.b, arg_1.b, arg_1.b, false), true), select(!vec4<bool>(false, arg_1.b, true, arg_1.b), select(vec4<bool>(arg_1.b, arg_1.b, arg_1.b, arg_1.b), vec4<bool>(arg_1.b, arg_1.b, arg_1.b, arg_1.b), vec4<bool>(arg_1.b, false, false, true)), arg_1.b), select(!vec4<bool>(true, arg_1.b, false, false), select(vec4<bool>(false, arg_1.b, true, false), vec4<bool>(false, arg_1.b, arg_1.b, true), arg_1.b), vec4<bool>(arg_1.b, false, true, false)))), arg_3.x, !(!arg_1.b), _wgslsmith_mod_vec4_i32(vec4<i32>(1650i, u_input.b >> (6184u % 32u), u_input.b, u_input.b) >> (vec4<u32>(_wgslsmith_mod_u32(22390u, arg_2.x), u_input.a.x, arg_3.x, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_2.x, 4294967295u, arg_2.x), u_input.a.ywx)) % vec4<u32>(32u)), ~vec4<i32>(2147483647i, -1i, u_input.b, u_input.b) >> (_wgslsmith_clamp_vec4_u32(select(vec4<u32>(4294967295u, arg_2.x, 4294967295u, 62003u), u_input.a, false), vec4<u32>(arg_3.x, 4167u, arg_3.x, u_input.a.x), max(u_input.a, u_input.a)) % vec4<u32>(32u))), abs(max(vec2<i32>(-arg_1.c, countOneBits(arg_1.a)), vec2<i32>(~(-39444i), -2147483647i))));
    let var_1 = arg_1;
    let var_2 = vec3<i32>(-firstLeadingBit(reverseBits(u_input.b)) ^ 19105i, -(arg_1.a << (((arg_3.x ^ 53285u) >> (11989u % 32u)) % 32u)), var_1.c << ((abs(var_0.b) & _wgslsmith_add_u32(u_input.a.x, _wgslsmith_mod_u32(arg_2.x, u_input.a.x))) % 32u));
    let var_3 = -var_0.d.wx;
    let var_4 = Struct_3(Struct_1(var_0.e.x > (_wgslsmith_dot_vec2_i32(var_0.e, var_2.yy) << (arg_3.x % 32u)), u_input.a.wy, vec2<i32>(var_2.x, 2147483647i), -arg_1.c, vec3<f32>(-1000f, -399f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_0.x))))), arg_0.yx);
    return 22110u;
}

fn func_1() -> vec3<i32> {
    var var_0 = Struct_4(u_input.b, func_4(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(605f, 249f, 2009f))), _wgslsmith_f_op_vec3_f32(func_2(-590f, true))), Struct_4(75032i << (u_input.a.x % 32u), all(vec4<bool>(false, true, false, true)), 19825i), ~_wgslsmith_add_vec2_u32(vec2<u32>(1u, u_input.a.x), vec2<u32>(1u, 4294967295u)), ~abs(u_input.a.xy)) != select(65946u, 0u, false), -26115i);
    var_0 = Struct_4(-abs(select(_wgslsmith_sub_i32(-23379i, var_0.a), -51130i, var_0.b)), var_0.b, 33589i);
    var_0 = Struct_4(var_0.a | 0i, false, -1i);
    var var_1 = Struct_2(!vec4<bool>(false, true, any(vec4<bool>(var_0.b, var_0.b, true, false)), true), reverseBits(4294967295u), true, vec4<i32>(-(~abs(0i)), var_0.c | 1i, var_0.c, ~(-u_input.b)), reverseBits(vec2<i32>(var_0.a, u_input.b)));
    let var_2 = Struct_2(vec4<bool>(!(u_input.b >= 44657i), var_1.a.x, 44622i == u_input.b, var_1.c), 44967u, true, _wgslsmith_mult_vec4_i32(_wgslsmith_clamp_vec4_i32(select(~var_1.d, _wgslsmith_clamp_vec4_i32(var_1.d, vec4<i32>(var_1.d.x, 2955i, -37138i, u_input.b), var_1.d), !var_0.b), var_1.d & select(vec4<i32>(-16243i, var_0.a, var_0.c, 24785i), vec4<i32>(13808i, u_input.b, var_1.d.x, 0i), var_1.a), vec4<i32>(-var_0.a, 18342i, _wgslsmith_mod_i32(u_input.b, 0i), u_input.b)), vec4<i32>(-1i) * -var_1.d), var_1.e);
    return vec3<i32>(_wgslsmith_dot_vec3_i32(var_2.d.xzx, vec3<i32>(7097i, 2147483647i, 7590i) ^ vec3<i32>(-1i, min(8117i, -1i), _wgslsmith_mult_i32(var_0.c, -36809i))), 67995i, 1i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_5(Struct_1(false, ~_wgslsmith_div_vec2_u32(~vec2<u32>(u_input.a.x, u_input.a.x), u_input.a.zw), min(_wgslsmith_sub_vec2_i32(vec2<i32>(-41622i, u_input.b), max(vec2<i32>(u_input.b, u_input.b), vec2<i32>(14201i, u_input.b))), countOneBits(vec2<i32>(-3805i, u_input.b) << (vec2<u32>(70809u, u_input.a.x) % vec2<u32>(32u)))), _wgslsmith_sub_i32(firstLeadingBit(1i), countOneBits(~u_input.b)), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(958f + 818f) + _wgslsmith_f_op_f32(f32(-1f) * -1380f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(112f, 473f, true)) + -978f), _wgslsmith_f_op_f32(max(-223f, _wgslsmith_f_op_f32(-1142f + 653f))))));
    var var_1 = (vec4<i32>(var_0.a.c.x, -4316i, -25542i, 19540i) & ~_wgslsmith_mod_vec4_i32(firstTrailingBit(vec4<i32>(2147483647i, 2147483647i, -2147483647i, var_0.a.d)), -vec4<i32>(var_0.a.c.x, -20480i, var_0.a.c.x, -8480i))) | vec4<i32>(var_0.a.d, ~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, u_input.b, u_input.b, 2147483647i), vec4<i32>(var_0.a.d, 25741i, -67332i, var_0.a.d)) << (~1u % 32u), i32(-1i) * -1i, ~min(var_0.a.d, max(2147483647i, var_0.a.d)));
    var var_2 = ~func_1();
    let var_3 = true;
    var var_4 = var_0.a;
    var var_5 = Struct_5(Struct_1(var_0.a.a, _wgslsmith_clamp_vec2_u32(u_input.a.wy, u_input.a.yy, vec2<u32>(_wgslsmith_dot_vec4_u32(u_input.a, u_input.a), 28060u)), ~abs(reverseBits(vec2<i32>(var_0.a.c.x, var_2.x))), _wgslsmith_clamp_i32(min(-465i, firstLeadingBit(u_input.b)), -select(var_0.a.d, var_0.a.d, var_0.a.a), ~(~u_input.b)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1000f, var_4.e.x, 639f), _wgslsmith_f_op_vec3_f32(var_0.a.e * vec3<f32>(var_4.e.x, -443f, 114f)))))));
    var_4 = Struct_1(false, ~_wgslsmith_clamp_vec2_u32(min(abs(var_5.a.b), vec2<u32>(0u, 0u)), _wgslsmith_mult_vec2_u32(vec2<u32>(var_0.a.b.x, var_0.a.b.x), vec2<u32>(386u, var_4.b.x)) & vec2<u32>(1u, var_4.b.x), vec2<u32>(_wgslsmith_dot_vec2_u32(u_input.a.wy, vec2<u32>(u_input.a.x, 0u)), 0u)), -var_4.c | func_1().xx, _wgslsmith_sub_i32(-var_1.x, 1i), var_0.a.e);
    var var_6 = var_5.a;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(-661f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.a.e.x), 135f))), _wgslsmith_mult_i32(var_1.x, var_4.c.x), var_1.xyz);
}

