struct Struct_1 {
    a: f32,
    b: vec3<f32>,
    c: vec4<u32>,
    d: bool,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: u32,
    c: i32,
    d: vec2<bool>,
}

struct Struct_4 {
    a: i32,
    b: i32,
    c: i32,
    d: vec4<bool>,
}

struct Struct_5 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 30>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: u32) -> f32 {
    var var_0 = Struct_1(_wgslsmith_div_f32(1000f, _wgslsmith_div_f32(161f, _wgslsmith_f_op_f32(sign(224f)))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-314f, -172f, -500f))))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(1473f, 1262f, -388f) + vec3<f32>(-1383f, -347f, -198f)))))))), vec4<u32>(_wgslsmith_sub_u32(_wgslsmith_add_u32(~u_input.c.x, 1u), arg_0), _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(15855u, arg_0, u_input.c.x), firstTrailingBit(u_input.c.wwy)), 23067u), _wgslsmith_mult_u32(u_input.b.x, u_input.c.x), _wgslsmith_add_u32(reverseBits(~u_input.b.x), u_input.b.x)), any(!select(vec2<bool>(true, false), vec2<bool>(true, false), true)) || any(select(select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true)), vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), true))), 86216u);
    var_0 = Struct_1(-1621f, _wgslsmith_div_vec3_f32(var_0.b, _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(var_0.b, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.b.x, 1174f, 1000f), var_0.b, var_0.d))) - _wgslsmith_div_vec3_f32(var_0.b, var_0.b))), ~(_wgslsmith_div_vec4_u32(~vec4<u32>(80784u, arg_0, 1u, 42739u), vec4<u32>(20600u, var_0.c.x, 4294967295u, arg_0)) << ((vec4<u32>(0u, arg_0, var_0.c.x, 1u) & u_input.c) % vec4<u32>(32u))), !(!var_0.d), u_input.b.x);
    var var_1 = false;
    var var_2 = Struct_2(Struct_1(var_0.a, _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b.x, _wgslsmith_f_op_f32(floor(-1000f)), -326f) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.a, var_0.b.x, var_0.a), var_0.b, true))), _wgslsmith_mod_vec4_u32(var_0.c, u_input.c) & max(vec4<u32>(1u, u_input.c.x, var_0.e, 4294967295u) & var_0.c, _wgslsmith_mod_vec4_u32(var_0.c, vec4<u32>(var_0.c.x, 0u, 21096u, var_0.e))), !var_0.d, ~var_0.e), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_0.b.x * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_0.b.x * var_0.b.x)))))), Struct_1(722f, vec3<f32>(-1320f, _wgslsmith_f_op_f32(round(1f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.b.x - var_0.a), 1000f)), var_0.c, var_0.d, ~min(~arg_0, var_0.e)));
    var var_3 = Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -341f)), var_2.c.a)), _wgslsmith_f_op_f32(var_0.b.x + _wgslsmith_f_op_f32(f32(-1f) * -1315f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(var_0.b))), _wgslsmith_sub_vec4_u32(~vec4<u32>(var_2.a.c.x, 1u, u_input.c.x, arg_0), var_0.c) | ~vec4<u32>(var_2.a.e << (u_input.b.x % 32u), arg_0, 94377u & var_0.c.x, _wgslsmith_add_u32(4294967295u, arg_0)), var_0.d, _wgslsmith_add_u32(~reverseBits(~u_input.b.x), arg_0));
    return var_3.a;
}

fn func_2(arg_0: vec4<i32>, arg_1: i32) -> Struct_5 {
    var var_0 = Struct_1(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-119f - 1471f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(u_input.b.x)) * _wgslsmith_f_op_f32(f32(-1f) * -2740f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-228f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -293f)))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-754f, 790f, true))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1356f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -473f) - -430f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(639f + _wgslsmith_f_op_f32(round(661f)))))), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.c.x << (_wgslsmith_sub_u32(u_input.c.x, u_input.b.x) % 32u), u_input.b.x, u_input.c.x, ~97628u & ~u_input.c.x), ~(~u_input.c)), all(vec4<bool>(true, false, false, (u_input.b.x <= u_input.b.x) || true)), ~abs(1u));
    let var_1 = ~1u;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(abs(~u_input.c.x) ^ _wgslsmith_dot_vec3_u32(u_input.b, u_input.b >> (u_input.c.xzx % vec3<u32>(32u))))));
    var var_3 = var_0.d;
    global0 = array<vec4<i32>, 30>();
    return Struct_5(!vec3<bool>(!(true && var_0.d), true, var_0.d));
}

fn func_1(arg_0: vec2<i32>) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-715f, 361f))))));
    var var_1 = func_2(_wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_div_i32(0i, 27188i << (0u % 32u)), -2147483647i | _wgslsmith_div_i32(13104i, u_input.a.x), arg_0.x, -u_input.a.x), min(global0[_wgslsmith_index_u32(~u_input.b.x, 30u)], ~vec4<i32>(arg_0.x, 6103i, 71544i, u_input.d)) >> (~u_input.c % vec4<u32>(32u))), i32(-1i) * -11968i);
    let var_2 = select(-vec2<i32>(~(arg_0.x >> (u_input.c.x % 32u)), _wgslsmith_dot_vec2_i32(firstTrailingBit(arg_0), vec2<i32>(arg_0.x, -2147483647i) << (u_input.b.xx % vec2<u32>(32u)))), ~(arg_0 >> (u_input.b.yz % vec2<u32>(32u))), !select(var_1.a.xz, select(vec2<bool>(var_1.a.x, true), !var_1.a.yx, any(var_1.a)), all(func_2(vec4<i32>(1i, arg_0.x, u_input.d, -2147483647i), -2147483647i).a)));
    global0 = array<vec4<i32>, 30>();
    var var_3 = u_input.c;
    return vec4<bool>(all(!select(vec4<bool>(true, var_1.a.x, var_1.a.x, true), vec4<bool>(true, var_1.a.x, var_1.a.x, var_1.a.x), false)) && all(var_1.a.yx), all(var_1.a.yz), true, !var_1.a.x);
}

fn func_4(arg_0: f32, arg_1: vec4<bool>, arg_2: vec3<u32>) -> Struct_2 {
    var var_0 = func_2(vec4<i32>(_wgslsmith_mod_i32(firstTrailingBit(0i) << (arg_2.x % 32u), abs(-52332i)), -3616i, countOneBits(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d, u_input.d, -1i), vec3<i32>(27929i, -48369i, 1i))), i32(-1i) * -(i32(-1i) * -2147483647i)), u_input.d);
    return Struct_2(Struct_1(_wgslsmith_f_op_f32(-159f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2082f) * _wgslsmith_f_op_f32(arg_0 + arg_0))), vec3<f32>(_wgslsmith_f_op_f32(select(-160f, 351f, !arg_1.x)), 653f, arg_0), u_input.c, var_0.a.x, _wgslsmith_add_u32(_wgslsmith_add_u32(56207u, ~arg_2.x), arg_2.x)), arg_0, Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_3(~u_input.b.x)))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, -2063f, arg_0))))), vec4<u32>(~arg_2.x, ~4294967295u, 27459u, 1569u), arg_1.x, ~16577u));
}

fn func_5(arg_0: Struct_2, arg_1: f32, arg_2: i32, arg_3: Struct_5) -> vec4<f32> {
    let var_0 = _wgslsmith_mult_u32(~arg_0.a.c.x, arg_0.c.c.x ^ min(~(~u_input.b.x), ~select(u_input.c.x, arg_0.c.c.x, false)));
    var var_1 = vec4<u32>(~106952u, u_input.c.x, abs(_wgslsmith_mod_u32(~var_0, firstLeadingBit(var_0))), _wgslsmith_clamp_u32(1u, _wgslsmith_mod_u32(1u, ~5094u), 1u));
    return _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1362f, arg_1, -1184f, arg_1), vec4<f32>(1296f, -105f, arg_1, arg_0.c.b.x), false))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(2317f, 1000f, arg_0.a.b.x, -308f) - vec4<f32>(1013f, 872f, -219f, 1639f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<i32>, 30>();
    var var_0 = true;
    var var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(2450f, -285f)))) + -622f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(451f * 604f) + _wgslsmith_f_op_f32(ceil(-355f)))), -476f, _wgslsmith_f_op_f32(sign(1f))) * _wgslsmith_f_op_vec4_f32(func_5(func_4(_wgslsmith_f_op_f32(-1085f + _wgslsmith_f_op_f32(-2151f * -427f)), !func_1(u_input.a.yx), vec3<u32>(1u, ~16892u, u_input.b.x >> (u_input.b.x % 32u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(-972f, vec4<bool>(false, false, false, false), u_input.c.zwy).a.a - -936f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-311f * -257f) - _wgslsmith_f_op_f32(floor(178f)))), -u_input.d, Struct_5(func_1(vec2<i32>(u_input.a.x, u_input.a.x) | u_input.a.zz).xww))));
    let var_2 = vec4<u32>(_wgslsmith_dot_vec4_u32(u_input.c, abs(u_input.c)), _wgslsmith_clamp_u32(1u, max(_wgslsmith_div_u32(firstLeadingBit(u_input.b.x), u_input.b.x), _wgslsmith_sub_u32(_wgslsmith_div_u32(u_input.b.x, 1u), u_input.b.x)), _wgslsmith_mult_u32(_wgslsmith_clamp_u32(u_input.b.x, func_4(var_1.x, vec4<bool>(false, true, false, false), vec3<u32>(u_input.b.x, 15961u, u_input.c.x)).a.c.x, func_4(var_1.x, vec4<bool>(true, false, true, true), vec3<u32>(1u, u_input.c.x, 0u)).a.e), u_input.c.x)), u_input.b.x, ~0u);
    let var_3 = func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x + var_1.x)))) - 1142f), select(vec4<bool>(false, func_2(select(vec4<i32>(-34633i, -2147483647i, 20612i, -2147483647i), global0[_wgslsmith_index_u32(72072u, 30u)], false), -u_input.d).a.x, select(true, true, true) && true, true), vec4<bool>(false | (u_input.a.x <= u_input.d), true, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d, 2147483647i), vec2<i32>(u_input.a.x, 2147483647i)) > _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, 2163i, u_input.d, -34352i), global0[_wgslsmith_index_u32(u_input.b.x, 30u)]), 3649f <= _wgslsmith_div_f32(148f, var_1.x)), false), u_input.c.zxx).a;
    var var_4 = vec4<i32>(u_input.a.x << (1u % 32u), firstTrailingBit(40477i), abs(u_input.a.x), _wgslsmith_mod_i32(u_input.d, select(_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(u_input.a.xz, u_input.a.xy), u_input.a.x), 0i, (4294967295u > u_input.c.x) == false)));
    let x = u_input.a;
    s_output = StorageBuffer(~(abs(_wgslsmith_mult_vec3_i32(var_4.xwy, u_input.a)) >> (_wgslsmith_div_vec3_u32(vec3<u32>(1u, 4294967295u, u_input.b.x), var_2.yzw) % vec3<u32>(32u))), firstLeadingBit(49007u));
}

