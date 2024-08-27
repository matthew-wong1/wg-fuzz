struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec4<u32>,
    c: bool,
    d: Struct_1,
    e: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: i32 = 2147483647i;

var<private> global2: f32;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: Struct_3, arg_2: vec4<i32>) -> vec3<u32> {
    var var_0 = Struct_3(arg_1.d.a.x, arg_1.b, arg_1.c, arg_1.d, countOneBits(_wgslsmith_mult_u32(~(~arg_1.a), 1u)));
    var var_1 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_0, -774f, arg_0), vec3<f32>(546f, arg_0, 190f))))), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_0, 326f, -261f), vec3<f32>(295f, arg_0, 185f))), var_0.c)), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(min(arg_0, 1000f)), _wgslsmith_f_op_f32(-arg_0), -373f) - vec3<f32>(_wgslsmith_f_op_f32(arg_0 * arg_0), _wgslsmith_f_op_f32(491f + arg_0), -275f))))));
    var var_2 = _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1126f)))), var_1.x)));
    global0 = arg_1.e;
    var_1 = _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-220f)) + arg_0) * _wgslsmith_f_op_f32(floor(arg_0))), var_1.x, _wgslsmith_f_op_f32(abs(arg_0))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, var_2.x, 1046f) * vec3<f32>(203f, var_1.x, 2119f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(290f, var_2.x, -1000f)))))));
    return _wgslsmith_add_vec3_u32(var_0.b.xxz, arg_1.b.zzx);
}

fn func_2() -> Struct_3 {
    global2 = 529f;
    var var_0 = Struct_2(Struct_1(_wgslsmith_mult_vec3_u32(firstLeadingBit(vec3<u32>(0u, 24606u, 43566u)), func_3(_wgslsmith_div_f32(1192f, 773f), Struct_3(37377u, vec4<u32>(4624u, 97711u, 4294967295u, 35143u), false, Struct_1(vec3<u32>(20333u, 0u, 4294967295u)), 80935u), vec4<i32>(u_input.a, -7272i, u_input.a, -2147483647i) | vec4<i32>(10313i, u_input.a, u_input.a, 2147483647i)))));
    let var_1 = var_0.a.a.yy << (vec2<u32>(var_0.a.a.x, var_0.a.a.x >> (0u % 32u)) % vec2<u32>(32u));
    let var_2 = select(vec2<bool>(!any(vec2<bool>(true, true)), any(vec4<bool>(u_input.a < u_input.a, all(vec2<bool>(true, true)), true, false))), !select(vec2<bool>(true, all(vec3<bool>(false, false, true))), select(vec2<bool>(false, false), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), true)), select(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true), any(vec2<bool>(false, false)))), all(vec3<bool>(all(vec4<bool>(true, true, true, true)), true, any(select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true), false)))));
    let var_3 = 1f;
    return Struct_3(var_0.a.a.x, vec4<u32>(3849u, firstLeadingBit(_wgslsmith_clamp_u32(1u, var_0.a.a.x, var_1.x)), 23806u, min(_wgslsmith_add_u32(var_1.x | var_1.x, 4539u), _wgslsmith_mult_u32(var_0.a.a.x, var_1.x))), select(all(select(vec2<bool>(true, true), var_2, true)), true, any(select(vec3<bool>(true, false, var_2.x), vec3<bool>(true, var_2.x, true), vec3<bool>(false, var_2.x, true))) && true), var_0.a, var_1.x);
}

fn func_4(arg_0: bool, arg_1: Struct_3, arg_2: Struct_2) -> u32 {
    global0 = ~4294967295u;
    global2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1f)));
    var var_0 = min(vec4<u32>(arg_2.a.a.x, 0u, arg_2.a.a.x, 0u), arg_1.b);
    var var_1 = _wgslsmith_mult_i32(-11754i, _wgslsmith_add_i32(u_input.a, 2147483647i));
    var_0 = vec4<u32>(~firstTrailingBit(~firstTrailingBit(1u)), arg_2.a.a.x, 0u, _wgslsmith_mod_u32(_wgslsmith_sub_u32(firstLeadingBit(arg_2.a.a.x), _wgslsmith_mod_u32(~32334u, ~arg_2.a.a.x)), ~_wgslsmith_div_u32(16397u, func_2().e)));
    return _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(func_3(341f, Struct_3(~var_0.x, firstTrailingBit(arg_1.b), true, func_2().d, abs(1u)), vec4<i32>(1i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, -10344i, u_input.a), vec3<i32>(u_input.a, u_input.a, -11546i)), min(3946i, -7122i), u_input.a)).xx, firstTrailingBit(vec2<u32>(arg_2.a.a.x, 21772u)) << (vec2<u32>(func_3(263f, Struct_3(arg_2.a.a.x, arg_1.b, arg_1.c, Struct_1(var_0.wwx), 1352u), vec4<i32>(2147483647i, -20589i, -2147483647i, -75i)).x, arg_1.a) % vec2<u32>(32u))), var_0.x);
}

fn func_1() -> vec3<f32> {
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -720f));
    var var_0 = Struct_3(~(~(~33116u)), vec4<u32>(4294967295u, abs(1u), ~1u, reverseBits(func_4(true, func_2(), Struct_2(Struct_1(vec3<u32>(1u, 4294967295u, 17467u)))))), any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(96428u, 46047u, false) < ~1u)), func_2().d, 9579u);
    var var_1 = Struct_2(func_2().d);
    let var_2 = vec3<u32>(_wgslsmith_clamp_u32(var_1.a.a.x ^ reverseBits(_wgslsmith_clamp_u32(26222u, 13179u, var_1.a.a.x)), var_0.d.a.x, var_0.b.x), var_1.a.a.x << ((3943u | _wgslsmith_add_u32(7361u, _wgslsmith_dot_vec4_u32(var_0.b, var_0.b))) % 32u), select(21833u, var_0.d.a.x, any(vec2<bool>(true, false | var_0.c))));
    global0 = var_0.e;
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(320f, -452f)))), -548f, _wgslsmith_f_op_f32(max(-985f, _wgslsmith_f_op_f32(f32(-1f) * -923f)))) + vec3<f32>(_wgslsmith_f_op_f32(round(-1645f)), _wgslsmith_f_op_f32(floor(482f)), -1000f)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1000f, -1059f, 159f), vec3<f32>(1573f, 1000f, -1000f), true))))) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-332f, _wgslsmith_f_op_f32(select(-396f, 1770f, false)), 182f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-167f, 1414f, 1358f), vec3<f32>(-468f, 832f, 867f)))), !(!vec3<bool>(var_0.c, var_0.c, true))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_1()) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-165f, 506f, -486f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(578f, -1596f, -571f))))));
    global1 = min(u_input.a, max(u_input.a, u_input.a >> ((_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 24949u, 4294967295u), vec3<u32>(66895u, 24305u, 79832u)) ^ (5036u << (0u % 32u))) % 32u)));
    let var_1 = Struct_2(Struct_1(vec3<u32>(~42372u, ~_wgslsmith_sub_u32(67495u, 24636u), ~4294967295u)));
    global1 = -u_input.a;
    let var_2 = Struct_2(var_1.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(_wgslsmith_add_u32(min(_wgslsmith_dot_vec3_u32(var_2.a.a, vec3<u32>(var_2.a.a.x, 43853u, var_1.a.a.x)), ~var_1.a.a.x), 1u), var_1.a.a.x), ~(~(func_3(var_0.x, Struct_3(1u, vec4<u32>(var_2.a.a.x, 44360u, 1u, 4294967295u), true, Struct_1(vec3<u32>(38232u, var_2.a.a.x, 1u)), 31312u), vec4<i32>(-38428i, u_input.a, u_input.a, u_input.a)) << (_wgslsmith_sub_vec3_u32(var_2.a.a, vec3<u32>(53609u, 4294967295u, 1u)) % vec3<u32>(32u)))), -1i, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1318f, 1091f)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.yy + vec2<f32>(var_0.x, -480f)) - _wgslsmith_f_op_vec2_f32(-var_0.zx))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(var_0.zy)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, var_0.x) - vec2<f32>(var_0.x, var_0.x))))));
}

