struct Struct_1 {
    a: f32,
    b: bool,
    c: i32,
    d: vec4<u32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec3<bool>,
    c: i32,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec3<u32>,
    c: f32,
    d: Struct_1,
    e: vec4<f32>,
}

struct Struct_4 {
    a: bool,
    b: Struct_1,
    c: f32,
    d: f32,
    e: vec4<i32>,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: vec2<u32>,
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

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
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

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec4<i32>, arg_3: vec2<bool>) -> vec2<bool> {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -858f))), (true && (true != any(arg_0.b.xy))) & false, arg_0.d.c, vec4<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(arg_1.d.d, arg_0.d.d), reverseBits(vec4<u32>(arg_1.d.d.x, arg_0.d.d.x, arg_0.d.d.x, 1u))) | 0u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 28848u, 1u, arg_1.d.d.x), arg_0.d.d) << (min(91267u, _wgslsmith_dot_vec3_u32(vec3<u32>(33005u, arg_0.d.d.x, 6832u), arg_1.d.d.wzz)) % 32u), _wgslsmith_div_u32(26334u, ~arg_1.d.d.x), 19829u));
    let var_1 = Struct_5(2147483647i);
    let var_2 = u_input.a.zwx;
    let var_3 = any(select(vec3<bool>(true, false, false), vec3<bool>(any(vec4<bool>(arg_1.d.b, arg_1.d.b, arg_0.b.x, var_0.b)), arg_3.x, true), 3797i != select(var_0.c, arg_2.x, false))) != !any(vec2<bool>(true, true));
    var var_4 = 22739u >> (firstLeadingBit(_wgslsmith_dot_vec4_u32(countOneBits(var_0.d), ~arg_1.d.d ^ _wgslsmith_sub_vec4_u32(vec4<u32>(122988u, arg_1.d.d.x, arg_0.d.d.x, 1u), vec4<u32>(var_0.d.x, 22759u, 21713u, var_0.d.x)))) % 32u);
    return arg_1.b.yz;
}

fn func_2(arg_0: vec3<f32>) -> vec4<u32> {
    var var_0 = Struct_4(true, Struct_1(_wgslsmith_f_op_f32(-arg_0.x), true, _wgslsmith_add_i32(~u_input.a.x, select(-2147483647i, u_input.a.x, false)) & u_input.a.x, vec4<u32>(1u, 4294967295u, abs(~4294967295u), firstTrailingBit(4294967295u))), arg_0.x, arg_0.x, u_input.a);
    let var_1 = Struct_4(all(select(!(!vec2<bool>(true, var_0.a)), select(vec2<bool>(var_0.a, true), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false))), select(vec2<bool>(true, true), vec2<bool>(var_0.a, true), func_3(Struct_2(vec2<f32>(-2500f, -673f), vec3<bool>(false, var_0.a, var_0.b.b), u_input.a.x, Struct_1(arg_0.x, var_0.a, 0i, var_0.b.d)), Struct_2(arg_0.yz, vec3<bool>(false, false, var_0.b.b), u_input.a.x, Struct_1(arg_0.x, var_0.a, 62442i, vec4<u32>(99190u, 13372u, 4294967295u, 41026u))), vec4<i32>(var_0.b.c, var_0.e.x, u_input.a.x, 28664i), vec2<bool>(var_0.b.b, true))))), Struct_1(_wgslsmith_f_op_f32(-var_0.c), !var_0.b.b, 31955i, vec4<u32>(_wgslsmith_sub_u32(~var_0.b.d.x, 12677u), var_0.b.d.x, _wgslsmith_dot_vec2_u32(var_0.b.d.xy, var_0.b.d.yy) & ~4294967295u, 38733u)), var_0.c, _wgslsmith_f_op_f32(arg_0.x + _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_0.x, 1000f)) - _wgslsmith_f_op_f32(step(arg_0.x, var_0.b.a))), arg_0.x)), vec4<i32>(1i, var_0.b.c & u_input.a.x, var_0.b.c, 0i & u_input.a.x));
    let var_2 = var_1;
    var var_3 = -var_0.e.yzw;
    let var_4 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(step(arg_0.yy, vec2<f32>(var_2.c, var_0.c))))))) * _wgslsmith_f_op_vec2_f32(-arg_0.yx)), select(vec3<bool>(all(!vec2<bool>(var_2.b.b, false)), any(!vec2<bool>(true, var_0.a)), false), !(!(!vec3<bool>(var_2.b.b, var_2.a, var_2.a))), !select(select(vec3<bool>(false, false, var_1.b.b), vec3<bool>(true, true, true), vec3<bool>(true, true, var_1.b.b)), vec3<bool>(var_2.a, true, false), false)), _wgslsmith_div_i32(-35802i, -var_2.b.c ^ -14968i), var_2.b);
    return vec4<u32>(61151u, var_2.b.d.x, firstTrailingBit(_wgslsmith_dot_vec3_u32(~vec3<u32>(7212u, 10541u, 0u), vec3<u32>(18309u, 811u, var_2.b.d.x))) << (1u % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(~_wgslsmith_mult_u32(var_0.b.d.x, 3701u), ~select(var_2.b.d.x, var_1.b.d.x, false)), _wgslsmith_div_vec2_u32(_wgslsmith_mult_vec2_u32(var_4.d.d.yy, var_2.b.d.yx) ^ min(var_1.b.d.zz, vec2<u32>(1u, 26639u)), vec2<u32>(~var_4.d.d.x, ~4294967295u))));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> f32 {
    let var_0 = _wgslsmith_mult_vec4_u32(func_2(vec3<f32>(_wgslsmith_f_op_f32(arg_0.a + arg_1.a), _wgslsmith_f_op_f32(-arg_0.a), -355f)), vec4<u32>(arg_0.d.x, 25667u, abs(abs(arg_0.d.x)), ~5113u)) ^ _wgslsmith_mult_vec4_u32(vec4<u32>(~5720u, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.d.x, arg_1.d.x, arg_0.d.x, 55681u), vec4<u32>(0u, 4294967295u, arg_0.d.x, 1u)), firstTrailingBit(0u), ~15946u) << (arg_0.d % vec4<u32>(32u)), reverseBits(~firstTrailingBit(arg_1.d)));
    var var_1 = vec4<u32>(~_wgslsmith_add_u32(arg_0.d.x, arg_0.d.x), ~_wgslsmith_div_u32(arg_0.d.x, 40409u), 31280u, select(arg_1.d.x, 0u & max(arg_0.d.x, 23186u), true)) << (arg_1.d % vec4<u32>(32u));
    var var_2 = vec3<i32>(-1i) * -u_input.a.zzy;
    var_1 = arg_1.d;
    let var_3 = vec4<bool>(false, all(vec2<bool>(false, false)), arg_0.b, arg_0.b);
    return _wgslsmith_f_op_f32(max(-484f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_1.a + arg_0.a), arg_0.a, var_3.x)))))));
}

fn func_4(arg_0: f32, arg_1: Struct_5) -> Struct_3 {
    var var_0 = arg_1;
    var var_1 = select(vec2<bool>(!all(vec4<bool>(true, true, false, true)), true), vec2<bool>(true, !(0i <= var_0.a)), !(true && (~arg_1.a < -1i)));
    let var_2 = vec3<i32>(-1i) * -u_input.a.wyy;
    let var_3 = -2147483647i;
    var_1 = !select(vec2<bool>(true, true), !vec2<bool>(all(vec2<bool>(var_1.x, true)), false), select(!vec2<bool>(var_1.x, true), !select(vec2<bool>(true, true), vec2<bool>(var_1.x, true), var_1.x), !var_1.x));
    return Struct_3(vec3<i32>(-var_3, 2147483647i, _wgslsmith_dot_vec4_i32(-max(vec4<i32>(var_0.a, 2147483647i, -1i, var_0.a), u_input.a), u_input.a)), vec3<u32>(1u, 1u, 1u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-207f * 668f)) + _wgslsmith_f_op_f32(floor(arg_0))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1100f - arg_0))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1000f)) + _wgslsmith_f_op_f32(-arg_0)), all(vec3<bool>(var_1.x, func_3(Struct_2(vec2<f32>(arg_0, 673f), vec3<bool>(false, var_1.x, true), var_2.x, Struct_1(arg_0, var_1.x, -8915i, vec4<u32>(60310u, 0u, 18637u, 1u))), Struct_2(vec2<f32>(-1000f, 622f), vec3<bool>(false, var_1.x, false), 17904i, Struct_1(arg_0, false, var_0.a, vec4<u32>(47125u, 1u, 21160u, 63223u))), u_input.a, vec2<bool>(false, true)).x, !var_1.x)), var_2.x, vec4<u32>(1u, 1u, 1u, 1u)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_div_f32(1039f, 643f), arg_0, _wgslsmith_f_op_f32(f32(-1f) * -291f), -1471f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-207f, 1866f, -549f, arg_0) - vec4<f32>(916f, 516f, 338f, -583f)), vec4<f32>(arg_0, arg_0, arg_0, arg_0)) * _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_0, arg_0, -1214f, 468f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var var_1 = vec2<bool>(true, true);
    var var_2 = 1u;
    let var_3 = func_4(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(round(-112f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1000f, 1528f, false)) + _wgslsmith_f_op_f32(f32(-1f) * -135f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1789f, -1159f)) + _wgslsmith_f_op_f32(func_1(Struct_1(-1000f, true, -20761i, vec4<u32>(4294967295u, 15777u, 4294967295u, 0u)), Struct_1(-994f, true, u_input.a.x, vec4<u32>(8623u, 1u, 4294967295u, 60755u))))))))), Struct_5(-12314i));
    var var_4 = var_1.x != any(select(select(vec3<bool>(var_1.x, var_1.x, var_1.x), select(vec3<bool>(true, var_1.x, true), vec3<bool>(false, var_3.d.b, false), true), var_1.x), select(vec3<bool>(true, false, var_1.x), vec3<bool>(var_1.x, true, var_1.x), vec3<bool>(true, var_3.d.b, var_1.x)), !select(vec3<bool>(true, var_3.d.b, false), vec3<bool>(false, var_3.d.b, var_3.d.b), false)));
    var var_5 = max(vec4<i32>(-1i) * -firstTrailingBit(u_input.a), ~_wgslsmith_mult_vec4_i32(~max(u_input.a, vec4<i32>(u_input.a.x, u_input.a.x, 14047i, u_input.a.x)), firstLeadingBit(vec4<i32>(-60346i, -21884i, 343i, u_input.a.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(var_3.e.zyx, _wgslsmith_div_vec3_f32(var_3.e.ywy, _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.e.x, var_3.c, var_3.e.x))))), 644f, ~(~(~_wgslsmith_clamp_vec2_u32(var_3.b.zz, vec2<u32>(var_3.b.x, 39485u), var_3.b.xx))));
}

