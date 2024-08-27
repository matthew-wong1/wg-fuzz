struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec4<i32>,
    b: vec4<bool>,
    c: Struct_2,
    d: bool,
}

struct Struct_5 {
    a: Struct_2,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec3<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> vec3<u32> {
    var var_0 = Struct_5(Struct_2(Struct_1(firstTrailingBit(select(vec3<u32>(u_input.a, u_input.d.x, u_input.d.x), vec3<u32>(3706u, 38964u, 4101u), vec3<bool>(false, false, true)))), Struct_1(vec3<u32>(u_input.a, u_input.d.x, u_input.a) >> (vec3<u32>(0u, u_input.a, u_input.d.x) % vec3<u32>(32u)))), select(!select(vec2<bool>(true, true), vec2<bool>(true, true), any(vec2<bool>(true, true))), !(!select(vec2<bool>(true, true), vec2<bool>(false, false), false)), select(!select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), any(vec3<bool>(true, true, true))))));
    let var_1 = !select(select(vec2<bool>(true || var_0.b.x, var_0.b.x), select(!vec2<bool>(var_0.b.x, true), var_0.b, select(var_0.b, vec2<bool>(true, true), vec2<bool>(var_0.b.x, false))), !(u_input.d.x >= u_input.a)), select(select(vec2<bool>(var_0.b.x, var_0.b.x), vec2<bool>(false, true), !var_0.b), vec2<bool>(true, u_input.e != 11246i), true), all(vec3<bool>(false, var_0.b.x, true)));
    var var_2 = Struct_2(var_0.a.b, Struct_1(countOneBits(var_0.a.b.a)));
    var_0 = Struct_5(var_0.a, !select(select(var_0.b, select(var_1, var_1, var_1), vec2<bool>(var_0.b.x, var_1.x)), vec2<bool>(true, true), var_0.b.x));
    let var_3 = vec3<i32>(2147483647i, max(~(countOneBits(-2147483647i) ^ _wgslsmith_div_i32(u_input.e, 1i)), -u_input.c), u_input.c);
    return ~var_0.a.b.a;
}

fn func_2(arg_0: bool, arg_1: bool, arg_2: f32) -> Struct_5 {
    var var_0 = Struct_1(func_3());
    var_0 = Struct_1(vec3<u32>(var_0.a.x, u_input.d.x, func_3().x));
    return Struct_5(Struct_2(Struct_1(vec3<u32>(~0u, _wgslsmith_clamp_u32(0u, u_input.d.x, var_0.a.x), var_0.a.x)), Struct_1(var_0.a)), vec2<bool>(false, !(~u_input.d.x > ~0u)));
}

fn func_4(arg_0: Struct_5, arg_1: i32, arg_2: vec4<i32>, arg_3: Struct_3) -> vec2<u32> {
    var var_0 = _wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.e, arg_1, arg_2.x) & _wgslsmith_mult_vec3_i32(vec3<i32>(0i, 1i, u_input.c), abs(vec3<i32>(arg_1, 1i, arg_1))), arg_2.yyz) | -37094i;
    let var_1 = arg_3;
    let var_2 = ~2147483647i;
    let var_3 = func_2(func_2(false, select(arg_0.b.x, arg_0.b.x, true), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-322f + 135f) - -414f)))).b.x, true, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -886f), _wgslsmith_div_f32(-695f, _wgslsmith_f_op_f32(f32(-1f) * -499f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(178f))))).b.x;
    var_0 = -(arg_2.x | _wgslsmith_dot_vec2_i32(countOneBits(vec2<i32>(arg_1, 2147483647i)), arg_2.xw));
    return ~(~(arg_3.a.b.a.xz | var_1.a.a.a.yz));
}

fn func_5(arg_0: u32, arg_1: vec4<f32>, arg_2: f32, arg_3: vec2<u32>) -> Struct_3 {
    let var_0 = !(arg_0 == ~reverseBits(firstLeadingBit(arg_3.x)));
    let var_1 = abs(~_wgslsmith_mod_u32(120410u, _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(14072u, arg_0), vec2<u32>(9071u, arg_0)), arg_3)));
    let var_2 = func_2(!(!any(select(vec2<bool>(var_0, true), vec2<bool>(var_0, var_0), var_0))), any(vec4<bool>(false, min(u_input.b, -14760i) < 0i, any(vec2<bool>(true, var_0)) || false, var_0)), -808f).a;
    let var_3 = func_2(!var_0 && all(select(!vec3<bool>(var_0, var_0, true), select(vec3<bool>(var_0, false, var_0), vec3<bool>(false, var_0, var_0), vec3<bool>(var_0, var_0, true)), !vec3<bool>(var_0, false, var_0))), true, arg_1.x);
    var var_4 = u_input.e;
    return Struct_3(func_2(1i > u_input.b, true, arg_2).a);
}

fn func_6(arg_0: Struct_3, arg_1: vec4<bool>, arg_2: vec3<i32>, arg_3: vec4<f32>) -> f32 {
    let var_0 = countOneBits(~arg_0.a.a.a);
    var var_1 = ~arg_2;
    var var_2 = 1i;
    var var_3 = var_1.zy;
    let var_4 = arg_1.x;
    return _wgslsmith_f_op_f32(-arg_3.x);
}

fn func_1(arg_0: bool, arg_1: i32, arg_2: vec2<u32>) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-222f, -735f)), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(334f, 2295f)))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(1271f, -1690f) + vec2<f32>(-538f, -832f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(728f, 370f), vec2<f32>(-299f, 1326f))))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_6(func_5(select(1u, _wgslsmith_div_u32(u_input.d.x, u_input.d.x), !arg_0), vec4<f32>(_wgslsmith_f_op_f32(-461f - var_0.x), _wgslsmith_f_op_f32(select(var_0.x, var_0.x, true)), var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -2080f)), var_0.x, func_4(func_2(arg_0, true, var_0.x), arg_1, _wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, u_input.e, 39690i, -97672i), vec4<i32>(u_input.c, 17457i, u_input.e, u_input.b), vec4<i32>(-41851i, u_input.b, arg_1, u_input.e)), Struct_3(Struct_2(Struct_1(vec3<u32>(arg_2.x, 31245u, 13360u)), Struct_1(vec3<u32>(u_input.a, 1u, u_input.a)))))), !vec4<bool>(arg_0, false, false, -1121f >= var_0.x), select(vec3<i32>(abs(arg_1), countOneBits(2147483647i), -2147483647i), vec3<i32>(1i, u_input.c, u_input.b), !vec3<bool>(false, arg_0, false)), vec4<f32>(-257f, _wgslsmith_f_op_f32(select(797f, _wgslsmith_f_op_f32(exp2(var_0.x)), false)), 1061f, _wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(-var_0.x))))) - _wgslsmith_div_f32(222f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(1f))))));
    let var_2 = !(!select(select(vec3<bool>(false, arg_0, true), !vec3<bool>(arg_0, true, false), arg_0), vec3<bool>(true, arg_0, arg_0), !arg_0));
    let var_3 = Struct_1(vec3<u32>(0u, 6722u, u_input.a));
    var_1 = -1000f;
    return Struct_2(Struct_1(~firstLeadingBit(vec3<u32>(4294967295u, 9789u, 27230u))), Struct_1(var_3.a));
}

fn func_7(arg_0: Struct_2, arg_1: Struct_4, arg_2: bool) -> Struct_5 {
    var var_0 = arg_0.b.a;
    var_0 = ~(~_wgslsmith_add_vec3_u32(~(~arg_1.c.b.a), func_2(true, !arg_1.b.x, _wgslsmith_f_op_f32(575f + -595f)).a.a.a));
    var_0 = arg_0.a.a;
    var_0 = arg_0.a.a;
    var var_1 = func_2(false, all(vec4<bool>(func_2(!arg_1.d, !arg_1.b.x, 335f).b.x, arg_1.d, arg_2, !arg_1.d)), -136f);
    return Struct_5(Struct_2(arg_0.a, Struct_1(vec3<u32>(func_4(Struct_5(Struct_2(Struct_1(arg_0.b.a), var_1.a.a), vec2<bool>(var_1.b.x, true)), arg_1.a.x, vec4<i32>(arg_1.a.x, u_input.b, 1i, u_input.c), Struct_3(arg_0)).x, ~arg_1.c.b.a.x, 1u))), !(!select(vec2<bool>(false, false), !arg_1.b.xx, true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -425f;
    let var_1 = ~vec4<i32>(u_input.c, u_input.c, 1i, 1i);
    var var_2 = func_7(func_1(!select(true, true, false), var_1.x, vec2<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, u_input.d.x, 0u), vec3<u32>(4294967295u, u_input.d.x, 26336u)), _wgslsmith_div_vec3_u32(vec3<u32>(1u, u_input.a, u_input.d.x), vec3<u32>(12043u, u_input.d.x, u_input.a))), u_input.d.x)), Struct_4(_wgslsmith_mult_vec4_i32(var_1, vec4<i32>(countOneBits(u_input.c), var_1.x & -1i, _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.x, 0i, var_1.x, 1i), var_1), -2147483647i)), vec4<bool>(!any(vec2<bool>(true, false)), true, any(vec3<bool>(true, true, true)), true), func_1(u_input.b == _wgslsmith_mult_i32(var_1.x, 13362i), firstTrailingBit(-var_1.x), vec2<u32>(_wgslsmith_clamp_u32(u_input.a, u_input.a, 1u), max(u_input.d.x, u_input.d.x))), true), all(!func_2(any(vec4<bool>(false, false, false, false)), false, -1041f).b));
    var var_3 = func_2(func_2(false, !(!(u_input.e < var_1.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -914f), -487f)).b.x, true, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(-514f)), _wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(1f - 293f)))))).a;
    var var_4 = var_2.a;
    var_4 = func_5(_wgslsmith_clamp_u32(var_4.b.a.x, ~(~var_2.a.a.a.x), 1u), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(vec4<f32>(-1418f, -1000f, 1483f, 736f), vec4<f32>(-1000f, -1446f, -105f, 2494f))))) * vec4<f32>(-948f, -683f, 945f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(816f * -1706f) - -508f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-655f, -1174f)))), ~u_input.d).a;
    var var_5 = var_1.wz;
    let x = u_input.a;
    s_output = StorageBuffer(max(vec4<u32>(~(~60168u), reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(26748u, 50377u, var_4.b.a.x), var_3.b.a)), select(~u_input.d.x, 1u, true), ~var_4.a.a.x & ~26680u), firstLeadingBit(vec4<u32>(_wgslsmith_mult_u32(0u, 1u), u_input.d.x, reverseBits(var_2.a.a.a.x), func_4(Struct_5(var_2.a, vec2<bool>(var_2.b.x, false)), 34224i, vec4<i32>(u_input.c, var_1.x, 1i, var_5.x), Struct_3(var_2.a)).x))), -u_input.c, vec3<i32>(-3843i, -_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(var_1, vec4<i32>(-21255i, var_1.x, -2147483647i, -16854i)), -var_5.x), var_1.x >> (var_3.b.a.x % 32u)), 22100i);
}

