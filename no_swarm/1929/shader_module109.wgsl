struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: vec2<u32>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec3<f32>,
    d: vec3<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
    d: bool,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: bool) -> u32 {
    let var_0 = Struct_2(Struct_1(_wgslsmith_div_f32(326f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1077f)) - -1885f)), _wgslsmith_mult_vec2_u32(vec2<u32>(abs(u_input.b.x), 4294967295u), vec2<u32>(u_input.b.x, u_input.a.x)), _wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, u_input.a.x), _wgslsmith_add_vec2_u32(u_input.b.wx, min(u_input.b.xz, vec2<u32>(u_input.b.x, u_input.a.x)))), ~(vec2<u32>(u_input.a.x, 58106u) << (_wgslsmith_add_vec2_u32(vec2<u32>(u_input.b.x, u_input.b.x), vec2<u32>(3306u, 0u)) % vec2<u32>(32u)))), ~abs(~9467u), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(225f, 921f, 788f), vec3<f32>(-389f, 225f, 1000f))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(810f, -1165f, -528f), vec3<f32>(201f, 379f, -2418f), vec3<bool>(arg_0, arg_0, false))) - vec3<f32>(-1348f, 1214f, 615f))) + vec3<f32>(_wgslsmith_div_f32(1403f, 144f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1462f * 624f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -587f)))), select(!(!vec3<bool>(arg_0, arg_0, false)), !vec3<bool>(false, all(vec2<bool>(false, arg_0)), true), select(firstLeadingBit(51039u), _wgslsmith_dot_vec3_u32(u_input.b.wxz, vec3<u32>(13896u, 17215u, 1u)), !arg_0) > _wgslsmith_sub_u32(u_input.a.x, ~u_input.a.x)));
    let var_1 = ~(_wgslsmith_sub_vec2_i32(_wgslsmith_clamp_vec2_i32(select(vec2<i32>(1i, 2147483647i), vec2<i32>(49819i, 22369i), arg_0), vec2<i32>(19976i, 1i), vec2<i32>(1i, 1i)), min(-vec2<i32>(-11980i, -25318i), ~vec2<i32>(32086i, 1389i))) | -(~(~vec2<i32>(-2147483647i, 1985i))));
    let var_2 = var_1.x;
    var var_3 = Struct_1(var_0.a.a, vec2<u32>(73089u, max(_wgslsmith_dot_vec4_u32(u_input.b >> (vec4<u32>(0u, 4294967295u, 25434u, 1u) % vec4<u32>(32u)), vec4<u32>(74830u, 60823u, 87584u, 1u) | vec4<u32>(4294967295u, var_0.b, 1u, u_input.b.x)), _wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(96384u, 0u)), ~u_input.a.xz))), firstTrailingBit(_wgslsmith_clamp_vec2_u32(_wgslsmith_mod_vec2_u32(u_input.b.yw, u_input.b.zy | vec2<u32>(var_0.b, 32512u)), select(vec2<u32>(var_0.a.b.x, 4294967295u), abs(vec2<u32>(u_input.a.x, 13191u)), vec2<bool>(true, true)), vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(86491u, 28168u, 3310u, var_0.a.c.x), vec4<u32>(u_input.a.x, 34987u, u_input.b.x, var_0.a.b.x)), ~0u))), _wgslsmith_clamp_vec2_u32(var_0.a.c, _wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(select(vec2<u32>(4294967295u, var_0.a.c.x), u_input.a.xx, false), ~var_0.a.b), ~(~var_0.a.b)), ~_wgslsmith_mod_vec2_u32(vec2<u32>(6831u, 59636u), select(vec2<u32>(13494u, u_input.b.x), vec2<u32>(47585u, 47333u), arg_0))));
    var_3 = Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-796f, _wgslsmith_f_op_f32(step(var_0.c.x, -741f))))))), ~vec2<u32>(11279u, u_input.a.x >> (u_input.b.x % 32u)), var_0.a.d, var_3.d | ((~vec2<u32>(4294967295u, u_input.b.x) << (select(vec2<u32>(1u, 0u), var_0.a.d, vec2<bool>(false, true)) % vec2<u32>(32u))) ^ var_0.a.b));
    return ~u_input.b.x;
}

fn func_2(arg_0: f32) -> f32 {
    let var_0 = Struct_1(-2038f, vec2<u32>(4294967295u >> (~u_input.b.x % 32u), 0u), u_input.b.ww, ~min(max(~u_input.a.xx, u_input.b.zz), u_input.b.yw));
    let var_1 = _wgslsmith_f_op_f32(sign(arg_0));
    var var_2 = ~_wgslsmith_dot_vec4_u32(select(vec4<u32>(u_input.a.x, ~u_input.a.x, u_input.b.x ^ u_input.a.x, 1u), vec4<u32>(~1u, func_3(false), abs(1u), _wgslsmith_mod_u32(22280u, 40573u)), vec4<bool>(true, true, true, true)), vec4<u32>(countOneBits(u_input.b.x), u_input.b.x, 84927u, _wgslsmith_div_u32(_wgslsmith_div_u32(u_input.b.x, var_0.b.x), var_0.d.x)));
    var_2 = 102889u;
    var_2 = _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(u_input.a.xz, max(~vec2<u32>(60103u, 44323u) >> ((u_input.a.xy | var_0.d) % vec2<u32>(32u)), _wgslsmith_div_vec2_u32(vec2<u32>(var_0.b.x, var_0.b.x), vec2<u32>(91044u, var_0.c.x)) ^ _wgslsmith_clamp_vec2_u32(u_input.a.yz, vec2<u32>(u_input.b.x, 75939u), vec2<u32>(u_input.b.x, 9796u)))), abs(firstTrailingBit(u_input.b.zz)));
    return 1067f;
}

fn func_1(arg_0: vec4<i32>, arg_1: vec2<bool>) -> Struct_1 {
    var var_0 = Struct_3(Struct_1(_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(-856f - 479f))), vec2<u32>(u_input.a.x, u_input.b.x), ((vec2<u32>(0u, u_input.a.x) >> (vec2<u32>(0u, 1u) % vec2<u32>(32u))) ^ _wgslsmith_add_vec2_u32(u_input.a.xz, vec2<u32>(u_input.b.x, 0u))) & u_input.a.zy, abs(abs(vec2<u32>(0u, 4294967295u)))), arg_0.x, Struct_1(-267f, _wgslsmith_mod_vec2_u32(vec2<u32>(~u_input.b.x, 0u), u_input.a.xy), _wgslsmith_clamp_vec2_u32(vec2<u32>(5664u, u_input.b.x), firstLeadingBit(u_input.b.xy), _wgslsmith_mult_vec2_u32(u_input.b.zw, vec2<u32>(u_input.a.x, 4294967295u))), u_input.b.xx), true, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(393f, -305f, -523f, 1000f) * vec4<f32>(1178f, 437f, 116f, 1890f))) - _wgslsmith_div_vec4_f32(vec4<f32>(1516f, 1025f, -2227f, 1155f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1929f, 182f, 161f, 239f)))), vec4<f32>(_wgslsmith_f_op_f32(-626f - -590f), -1254f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -2385f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-735f, 709f))))));
    var_0 = Struct_3(var_0.a, arg_0.x, Struct_1(var_0.a.a, ~u_input.a.yx >> (vec2<u32>(10640u, var_0.a.c.x) % vec2<u32>(32u)), ~var_0.a.b >> (var_0.a.d % vec2<u32>(32u)), u_input.b.xx), select(!any(vec3<bool>(var_0.d, true, var_0.d)), false, !(!all(vec3<bool>(arg_1.x, false, var_0.d)))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(1207f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.a) + 1923f), var_0.c.a, var_0.a.a), var_0.e)));
    let var_1 = reverseBits(-var_0.b);
    let var_2 = vec4<i32>(abs(firstTrailingBit(arg_0.x)), var_1, arg_0.x, _wgslsmith_add_i32(_wgslsmith_mult_i32(select(var_0.b, var_1, var_0.b != -3135i), firstLeadingBit(-13712i)), firstTrailingBit(var_1) | _wgslsmith_mult_i32(_wgslsmith_div_i32(var_1, 20173i), -2147483647i)));
    let var_3 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-var_0.c.a), select(var_0.a.c, var_0.a.c, !(20359u > var_0.a.b.x)), vec2<u32>(var_0.a.d.x, ~func_3(true)), ~(var_0.a.b >> ((u_input.a.zy & u_input.b.xz) % vec2<u32>(32u)))), ~(~28969u), vec3<f32>(var_0.c.a, -1000f, _wgslsmith_f_op_f32(max(-896f, _wgslsmith_f_op_f32(-var_0.e.x)))), !(!(!select(vec3<bool>(arg_1.x, arg_1.x, true), vec3<bool>(true, arg_1.x, arg_1.x), vec3<bool>(arg_1.x, arg_1.x, true)))));
    return var_3.a;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> vec3<f32> {
    var var_0 = any(select(vec3<bool>(select(arg_0.c.x, u_input.a.x, true) > ~arg_0.c.x, true, true), vec3<bool>(true, true, !all(vec3<bool>(false, true, false))), !(u_input.a.x < func_1(vec4<i32>(-2147483647i, 0i, 1i, -2147483647i), vec2<bool>(true, false)).d.x)));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a * 198f))))));
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1520f)));
    var var_2 = min(2147483647i, max(_wgslsmith_sub_i32(2147483647i, 0i), ~(-(i32(-1i) * -1i))));
    var_1 = 229f;
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a) * arg_0.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a * 1098f) + func_1(vec4<i32>(-22087i, -5473i, 24233i, -3826i), vec2<bool>(false, true)).a), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(arg_1.a))))), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-arg_1.a), _wgslsmith_f_op_f32(-641f + arg_0.a), _wgslsmith_f_op_f32(f32(-1f) * -1119f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_1.a, 1881f, -1045f), vec3<f32>(736f, arg_0.a, arg_0.a), vec3<bool>(true, true, true))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-422f, arg_0.a, arg_1.a))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(Struct_1(1474f, _wgslsmith_clamp_vec2_u32(_wgslsmith_div_vec2_u32(u_input.b.xx, u_input.b.yz) << (u_input.b.zz % vec2<u32>(32u)), vec2<u32>(u_input.b.x ^ 40225u, u_input.b.x), u_input.a.zy), ~(~u_input.b.yz), ~u_input.a.yy), 105145u, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_4(func_1(~vec4<i32>(0i, -2147483647i, 2147483647i, 1i), vec2<bool>(true, true)), Struct_1(_wgslsmith_f_op_f32(step(828f, 733f)), _wgslsmith_add_vec2_u32(u_input.b.yy, vec2<u32>(u_input.b.x, 14291u)), vec2<u32>(1570u, 27759u), u_input.a.zx >> (u_input.b.yz % vec2<u32>(32u))))) - vec3<f32>(1f, 1f, 1f)), select(!(!select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true))), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), true), vec3<bool>(any(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), true)), _wgslsmith_f_op_vec3_f32(func_4(Struct_1(1319f, vec2<u32>(2647u, u_input.a.x), u_input.a.xx, u_input.b.xx), Struct_1(1666f, vec2<u32>(u_input.a.x, u_input.a.x), u_input.b.yy, vec2<u32>(3774u, 4294967295u)))).x != _wgslsmith_f_op_f32(-222f - -937f), false)));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-770f, var_0.c.x, var_0.c.x, 515f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-545f, var_0.a.a, 1245f, var_0.c.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1103f, var_0.a.a, var_0.a.a, 558f), vec4<f32>(var_0.a.a, 516f, -514f, var_0.a.a))), select(!vec4<bool>(var_0.d.x, var_0.d.x, false, false), !vec4<bool>(false, var_0.d.x, var_0.d.x, false), select(vec4<bool>(true, false, var_0.d.x, var_0.d.x), vec4<bool>(var_0.d.x, var_0.d.x, true, false), vec4<bool>(true, true, var_0.d.x, false))))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c.x, var_0.a.a, var_0.c.x, var_0.c.x) - vec4<f32>(var_0.a.a, var_0.c.x, -1146f, 535f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c.x, -794f, var_0.a.a, 703f))))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(407f, 1138f, var_0.a.a, -1192f))))));
    let var_2 = !select(vec2<bool>(true, true), !(!var_0.d.yx), !vec2<bool>(all(vec3<bool>(var_0.d.x, true, true)), true));
    var var_3 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1893f), vec2<u32>(u_input.a.x, func_3(true)), u_input.b.wz, ~(~u_input.b.xz));
    let var_4 = select(var_0.d, !var_0.d, var_2.x);
    var var_5 = !var_4.x;
    let var_6 = Struct_1(var_3.a, var_0.a.c ^ _wgslsmith_add_vec2_u32(reverseBits(u_input.b.ww), u_input.a.yy), ~vec2<u32>(u_input.a.x, _wgslsmith_clamp_u32(18904u, u_input.a.x | 4294967295u, ~0u)), ~_wgslsmith_mult_vec2_u32(~(~vec2<u32>(31826u, var_0.b)), ~var_3.c ^ (var_3.d & vec2<u32>(4321u, 8727u))));
    var_5 = all(vec2<bool>(var_2.x, true));
    var var_7 = Struct_2(Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -902f) - _wgslsmith_f_op_f32(var_6.a + 1053f)))), select(firstTrailingBit(var_3.d) & u_input.a.xx, u_input.a.xz, true), ~(~(~vec2<u32>(27682u, var_0.b))), ~firstTrailingBit(reverseBits(var_0.a.d))), _wgslsmith_dot_vec4_u32(u_input.b, min(~u_input.b, ~u_input.b)), _wgslsmith_f_op_vec3_f32(var_0.c * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(var_0.c, var_0.c) + var_1.wzz))), vec3<bool>(true, var_0.d.x, !any(!vec4<bool>(var_4.x, var_0.d.x, true, false))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c.x, var_0.c.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1376f, var_1.x)), func_1(vec4<i32>(32398i, 37894i, 1i, 2147483647i), var_7.d.yx).a)));
}

