struct Struct_1 {
    a: bool,
    b: u32,
    c: bool,
    d: vec2<f32>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<u32>,
    c: u32,
    d: vec4<bool>,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
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

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec2<f32>, arg_3: Struct_2) -> bool {
    let var_0 = true;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-650f * _wgslsmith_f_op_f32(select(arg_2.x, -1132f, arg_3.a.x)))), -3198f, ~_wgslsmith_mod_i32(67020i, -7562i) > select(_wgslsmith_dot_vec4_i32(vec4<i32>(21764i, -44582i, 26482i, 2147483647i), vec4<i32>(-21090i, -2147483647i, -68672i, -2213i)), ~(-2147483647i), all(vec3<bool>(false, var_0, arg_0.a.x))))));
    var var_2 = arg_1;
    var_1 = _wgslsmith_f_op_f32(-750f * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.d.x * var_2.d.x)))))));
    let var_3 = arg_3;
    return !(var_0 || false);
}

fn func_4(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: vec2<bool>) -> vec2<bool> {
    let var_0 = arg_0;
    let var_1 = Struct_2(select(!(!(!vec4<bool>(arg_2.x, arg_2.x, false, var_0.e.x))), select(select(!vec4<bool>(false, arg_0.e.x, arg_0.c, false), !vec4<bool>(arg_0.a, arg_2.x, false, false), arg_2.x && false), !select(vec4<bool>(var_0.e.x, var_0.c, arg_0.a, true), vec4<bool>(arg_2.x, arg_2.x, false, true), true), vec4<bool>(true, true, true, true)), any(!vec3<bool>(true, false, var_0.a))));
    var var_2 = arg_0;
    var var_3 = arg_0;
    var var_4 = var_3.b;
    return var_2.e;
}

fn func_2() -> i32 {
    let var_0 = Struct_1(!(!(all(vec4<bool>(true, false, true, false)) && true)), ~_wgslsmith_sub_u32(25004u, max(u_input.a.x, _wgslsmith_dot_vec2_u32(vec2<u32>(2845u, 0u), vec2<u32>(91333u, 23128u)))), true, vec2<f32>(1632f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1462f + -344f)))), func_4(Struct_1(true, ~97490u, !func_3(Struct_2(vec4<bool>(true, true, false, false)), Struct_1(false, 4294967295u, true, vec2<f32>(-795f, 1000f), vec2<bool>(false, false)), vec2<f32>(-1717f, -1499f), Struct_2(vec4<bool>(false, false, false, false))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-488f, -1294f))), vec2<bool>(true, true)), ~abs(~u_input.a.yw), !select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false)), true)));
    let var_1 = Struct_1(!(select(47245i, 1i, var_0.e.x) <= _wgslsmith_mod_i32(-1i, 8206i)) & var_0.a, _wgslsmith_sub_u32(_wgslsmith_clamp_u32(~5650u, 32423u & var_0.b, 25561u) ^ 4294967295u, ~(~(~1u))), var_0.a, _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_0.d.x, -171f))), select(!var_0.e, vec2<bool>(select(var_0.e.x, true, var_0.a), true), vec2<bool>(!(var_0.a | false), var_0.e.x && true)));
    let var_2 = abs(max(~(~(~u_input.a.wxz)), u_input.a.zxz));
    return firstTrailingBit(i32(-1i) * -1i);
}

fn func_1() -> Struct_1 {
    let var_0 = !vec4<bool>(!(all(vec2<bool>(false, false)) & true), _wgslsmith_add_i32(-10012i >> (u_input.a.x % 32u), -1i) > _wgslsmith_sub_i32(~(-51633i), select(1i, 1i, false)), true, all(vec3<bool>(all(vec3<bool>(false, false, false)), true, true)));
    let var_1 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(466f, 956f)))) - vec2<f32>(_wgslsmith_div_f32(2174f, -1429f), 1081f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(343f, _wgslsmith_f_op_f32(-321f - 1742f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-627f, 1391f)) + _wgslsmith_f_op_vec2_f32(step(vec2<f32>(723f, 643f), vec2<f32>(-347f, 768f)))) - _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(325f, -120f))))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-415f, _wgslsmith_f_op_f32(-412f + 1243f)) + vec2<f32>(_wgslsmith_f_op_f32(floor(996f)), _wgslsmith_div_f32(-1498f, -1963f))))));
    var var_2 = _wgslsmith_mult_i32(reverseBits(i32(-1i) * -1i), _wgslsmith_sub_i32(func_2(), -_wgslsmith_dot_vec2_i32(vec2<i32>(-12941i, -2147483647i), vec2<i32>(1i, 1i))));
    let var_3 = Struct_1(true || func_4(Struct_1(!var_0.x, ~1u, var_0.x, _wgslsmith_f_op_vec2_f32(-var_1), var_0.xz), _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a.x, 56143u), vec2<u32>(13315u, 0u)) ^ countOneBits(u_input.a.wy), vec2<bool>(var_0.x || var_0.x, false && var_0.x)).x, firstLeadingBit(9122u), func_3(Struct_2(!var_0), Struct_1(true, 49083u, false, _wgslsmith_f_op_vec2_f32(abs(var_1)), !var_0.ww), var_1, Struct_2(select(vec4<bool>(var_0.x, false, false, false), var_0, select(vec4<bool>(var_0.x, var_0.x, true, var_0.x), vec4<bool>(var_0.x, true, false, true), vec4<bool>(true, var_0.x, true, var_0.x))))), _wgslsmith_f_op_vec2_f32(-var_1), var_0.xz);
    var var_4 = Struct_3(var_3, ~vec4<u32>(58107u, var_3.b, ~68669u >> (u_input.a.x % 32u), _wgslsmith_mod_u32(0u, var_3.b) >> (~4294967295u % 32u)), ~(u_input.a.x << (0u % 32u)), vec4<bool>(true, !var_0.x, var_0.x, false), !select(!var_0, select(select(vec4<bool>(false, true, var_3.a, var_3.a), var_0, vec4<bool>(var_3.a, var_3.e.x, true, var_0.x)), !var_0, vec4<bool>(var_3.e.x, var_0.x, var_3.a, var_0.x)), true));
    return var_3;
}

fn func_5(arg_0: vec3<f32>, arg_1: u32, arg_2: Struct_1) -> Struct_1 {
    var var_0 = Struct_2(vec4<bool>(arg_2.e.x != any(select(vec3<bool>(arg_2.c, arg_2.a, arg_2.a), vec3<bool>(true, false, arg_2.c), vec3<bool>(arg_2.e.x, arg_2.c, false))), !(!any(vec4<bool>(arg_2.e.x, true, true, arg_2.a))), select(!all(vec4<bool>(arg_2.e.x, arg_2.e.x, arg_2.c, false)), !any(vec4<bool>(arg_2.c, false, false, arg_2.e.x)), false), arg_2.c));
    var_0 = Struct_2(select(!(!vec4<bool>(true, true, arg_2.c, arg_2.e.x)), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(arg_2.a, var_0.a.x, true, false)), !var_0.a, !any(vec2<bool>(arg_2.a, arg_2.c))), var_0.a));
    var var_1 = Struct_2(var_0.a);
    var_0 = Struct_2(vec4<bool>(any(vec3<bool>(any(vec3<bool>(arg_2.e.x, false, true)), true, false)), all(var_1.a.wx), true, false));
    var_1 = Struct_2(var_0.a);
    return Struct_1(var_0.a.x | var_0.a.x, ~43589u, any(!select(vec4<bool>(arg_2.c, var_1.a.x, true, false), select(vec4<bool>(false, var_0.a.x, true, false), vec4<bool>(true, arg_2.e.x, false, var_0.a.x), var_1.a.x), vec4<bool>(arg_2.c, var_1.a.x, true, true))), vec2<f32>(-591f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-518f + -1634f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(arg_2.d.x))))))), vec2<bool>(func_3(Struct_2(var_0.a), func_1(), _wgslsmith_f_op_vec2_f32(sign(arg_0.xx)), Struct_2(vec4<bool>(var_1.a.x, true, true, true))), var_0.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-207f + -137f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1001f, _wgslsmith_f_op_f32(f32(-1f) * -398f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1209f, 675f)))), u_input.a.x, func_1());
    let var_1 = Struct_2(select(select(!(!vec4<bool>(false, var_0.c, false, false)), select(vec4<bool>(false, var_0.e.x, true, var_0.a), select(vec4<bool>(var_0.e.x, var_0.e.x, true, var_0.e.x), vec4<bool>(var_0.a, false, false, var_0.c), vec4<bool>(false, var_0.e.x, false, var_0.c)), var_0.a), select(select(vec4<bool>(false, false, var_0.c, var_0.e.x), vec4<bool>(var_0.a, true, true, var_0.a), vec4<bool>(false, var_0.c, false, var_0.a)), select(vec4<bool>(var_0.a, true, var_0.e.x, false), vec4<bool>(false, var_0.c, false, var_0.c), true), any(vec3<bool>(var_0.a, true, var_0.e.x)))), select(vec4<bool>(true, !var_0.e.x, var_0.e.x, false), select(!vec4<bool>(false, var_0.c, var_0.e.x, var_0.a), vec4<bool>(false, var_0.e.x, true, var_0.a), vec4<bool>(var_0.a, var_0.a, true, var_0.e.x)), vec4<bool>(false, !var_0.c, var_0.c, false)), select(!(!vec4<bool>(false, false, var_0.a, var_0.e.x)), select(select(vec4<bool>(false, true, var_0.c, true), vec4<bool>(var_0.e.x, true, true, true), false), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true)), select(vec4<bool>(var_0.c, false, var_0.c, false), select(vec4<bool>(false, false, true, false), vec4<bool>(var_0.c, var_0.a, true, var_0.c), var_0.c), var_0.c))));
    let var_2 = -756f;
    var_0 = func_1();
    let var_3 = var_1.a.yxx;
    var var_4 = Struct_3(Struct_1(true, u_input.a.x & countOneBits(u_input.a.x << (0u % 32u)), var_0.e.x && any(select(var_1.a.zx, vec2<bool>(true, false), var_1.a.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.d)), func_4(Struct_1(true, 20068u, select(true, false, false), var_0.d, !var_3.xy), ~firstTrailingBit(vec2<u32>(35958u, 46008u)), !var_1.a.yz)), _wgslsmith_mult_vec4_u32(vec4<u32>(var_0.b, var_0.b, _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(3785u, 4471u), u_input.a.wy), reverseBits(vec2<u32>(27979u, var_0.b))), ~var_0.b), _wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a.x, var_0.b, var_0.b, 53969u), vec4<u32>(70993u, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, 7269u, 59489u, 1u)), abs(u_input.a)), ~vec4<u32>(var_0.b, u_input.a.x, u_input.a.x, u_input.a.x), _wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, 27208u, var_0.b, 80905u), vec4<u32>(var_0.b, var_0.b, 1u, var_0.b)), vec4<u32>(var_0.b, var_0.b, var_0.b, 10371u)))), 67478u, vec4<bool>(true, (var_0.b ^ var_0.b) > firstTrailingBit(var_0.b), all(!vec3<bool>(var_3.x, var_1.a.x, var_3.x)) && true, func_4(Struct_1(var_1.a.x, u_input.a.x, var_0.c, vec2<f32>(1000f, -1090f), var_0.e), vec2<u32>(var_0.b, var_0.b), !vec2<bool>(var_3.x, false)).x | var_3.x), var_1.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(select(vec4<u32>(u_input.a.x, var_4.c, u_input.a.x, u_input.a.x), vec4<u32>(var_0.b, 18518u, var_4.b.x, var_4.c), false) ^ ~vec4<u32>(var_0.b, var_4.a.b, 26265u, var_4.b.x), _wgslsmith_mult_vec4_u32(select(var_4.b, u_input.a, var_0.e.x), ~u_input.a)), u_input.a.x), func_1().b, _wgslsmith_mult_vec4_u32(u_input.a, vec4<u32>(abs(_wgslsmith_div_u32(31652u, 25997u)), 4294967295u, u_input.a.x, _wgslsmith_clamp_u32(0u ^ var_0.b, 26375u, 1u))), _wgslsmith_div_u32(min(var_0.b, _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(var_4.b.yy, vec2<u32>(u_input.a.x, var_0.b)), ~var_0.b, ~u_input.a.x)), 1u));
}

