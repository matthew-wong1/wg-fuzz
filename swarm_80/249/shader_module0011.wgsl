struct Struct_1 {
    a: vec4<bool>,
    b: u32,
    c: f32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec4<i32>,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_2) -> bool {
    let var_0 = arg_0;
    let var_1 = firstTrailingBit(_wgslsmith_div_u32((var_0.c.x >> (arg_0.b.b % 32u)) >> (~u_input.b.x % 32u), u_input.a.x) >> (_wgslsmith_div_u32(~arg_0.c.x, ~_wgslsmith_dot_vec3_u32(u_input.b.zwz, vec3<u32>(0u, 17954u, 34656u))) % 32u));
    let var_2 = Struct_1(!vec4<bool>(var_0.b.a.x, arg_0.b.a.x, false, var_0.b.a.x), ((u_input.a.x & ~4294967295u) ^ 56256u) ^ _wgslsmith_sub_u32(_wgslsmith_mod_u32(~var_1, ~u_input.b.x), arg_0.c.x), _wgslsmith_f_op_f32(f32(-1f) * -1743f));
    var var_3 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(3228f * -489f), var_2.c, _wgslsmith_f_op_f32(arg_0.b.c * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_0.b.c), -971f)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1554f, -770f, var_0.b.c)))))) - vec3<f32>(-463f, -166f, -199f)));
    var var_4 = var_0;
    return false;
}

fn func_2(arg_0: i32, arg_1: bool, arg_2: vec3<bool>) -> Struct_2 {
    var var_0 = vec3<bool>(arg_1, func_3(Struct_2(arg_0, Struct_1(vec4<bool>(arg_2.x, true, arg_1, arg_1), u_input.b.x, -332f), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b.x, u_input.a.x), vec2<u32>(59159u, 0u)))) != all(!vec3<bool>(true, arg_2.x, arg_2.x)), ~_wgslsmith_clamp_i32(arg_0, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.e.x, u_input.c.x, u_input.e.x), vec3<i32>(-2147483647i, u_input.c.x, 2147483647i)), 42496i) < abs(_wgslsmith_dot_vec4_i32(min(vec4<i32>(-1i, arg_0, 10705i, u_input.c.x), vec4<i32>(-49941i, u_input.d, -56779i, 1998i)), _wgslsmith_div_vec4_i32(u_input.c, u_input.c))));
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(291f - 441f) * _wgslsmith_div_f32(-1727f, -1032f)), 409f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -546f) * _wgslsmith_f_op_f32(485f - -2195f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1787f, _wgslsmith_f_op_f32(f32(-1f) * -387f), _wgslsmith_f_op_f32(sign(-278f))))));
    let var_2 = false;
    var var_3 = Struct_2(_wgslsmith_dot_vec2_i32(u_input.e, ~_wgslsmith_clamp_vec2_i32(vec2<i32>(-26032i, arg_0), _wgslsmith_mod_vec2_i32(u_input.c.zx, vec2<i32>(arg_0, -22545i)), firstLeadingBit(vec2<i32>(arg_0, 8901i)))), Struct_1(select(vec4<bool>(!arg_2.x, !var_0.x, false, 4294967295u <= u_input.b.x), select(select(vec4<bool>(true, arg_1, true, false), vec4<bool>(var_2, false, var_0.x, arg_2.x), vec4<bool>(var_2, false, true, arg_2.x)), vec4<bool>(var_0.x, false, true, true), select(vec4<bool>(arg_1, var_2, true, true), vec4<bool>(true, true, false, var_2), arg_1)), var_0.x), 37903u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(step(851f, var_1.x))) - _wgslsmith_f_op_f32(ceil(var_1.x)))), u_input.b.zw);
    let var_4 = Struct_2(-1i & _wgslsmith_mult_i32(select(~var_3.a, 9487i, false && arg_2.x), (-19953i >> (u_input.b.x % 32u)) ^ _wgslsmith_sub_i32(-1i, 69865i)), var_3.b, firstLeadingBit(max(vec2<u32>(var_3.b.b << (u_input.b.x % 32u), var_3.b.b), ~vec2<u32>(37565u, u_input.a.x))));
    return var_4;
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_2) -> Struct_2 {
    var var_0 = func_2(firstLeadingBit(u_input.c.x) & _wgslsmith_mult_i32(firstLeadingBit(1i), u_input.e.x), !(arg_1.b.a.x && false), arg_1.b.a.yyy);
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1576f), arg_1.b.c, arg_1.b.c, -2029f);
    var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-989f, -230f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_1.b.c + var_0.b.c)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-606f)) * 1397f) - var_1.x)) + vec4<f32>(var_0.b.c, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(-234f, 159f)))))), -1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b.c + 670f) - -155f)));
    let var_2 = func_2(-25558i, (_wgslsmith_mod_i32(~1i, firstTrailingBit(0i)) >> (1u % 32u)) > u_input.d, arg_1.b.a.zww);
    var var_3 = Struct_2(1i, Struct_1(select(!select(arg_1.b.a, vec4<bool>(true, true, var_2.b.a.x, var_2.b.a.x), arg_1.b.a), select(vec4<bool>(true, true, var_2.b.a.x, var_0.b.a.x), func_2(-2147483647i, true, var_2.b.a.yww).b.a, arg_1.b.b <= 1u), !var_2.b.a.x), ~abs(max(var_2.b.b, var_2.b.b)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1116f - _wgslsmith_f_op_f32(ceil(var_2.b.c))), _wgslsmith_f_op_f32(f32(-1f) * -3221f))), _wgslsmith_div_vec2_u32(~(vec2<u32>(127636u, var_0.b.b) | ~vec2<u32>(arg_1.b.b, 18643u)), _wgslsmith_clamp_vec2_u32(vec2<u32>(0u, 32962u) << ((arg_1.c & vec2<u32>(24073u, var_0.b.b)) % vec2<u32>(32u)), ~u_input.a, vec2<u32>(abs(arg_1.c.x), u_input.a.x))));
    return Struct_2(var_0.a, Struct_1(func_2(-12489i, any(vec4<bool>(false, false, true, false)), vec3<bool>(true | var_2.b.a.x, true, var_0.b.a.x)).b.a, max(_wgslsmith_add_u32(firstLeadingBit(var_3.c.x), ~u_input.a.x), 71997u), _wgslsmith_f_op_f32(max(-1000f, _wgslsmith_div_f32(-1514f, _wgslsmith_f_op_f32(-var_0.b.c))))), vec2<u32>(var_3.c.x, u_input.b.x));
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_2) -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(251f)))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0));
    var var_2 = select(arg_0.yx, max(~vec2<i32>(arg_1.a, countOneBits(u_input.d)), -abs(u_input.e) ^ u_input.c.xw), !arg_1.b.a.zw);
    let var_3 = func_1(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-235f, 1755f, var_0, -735f), vec4<f32>(441f, arg_1.b.c, arg_1.b.c, -345f), vec4<bool>(false, arg_1.b.a.x, arg_1.b.a.x, arg_1.b.a.x))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, var_1, -1000f, -404f) - vec4<f32>(arg_1.b.c, arg_1.b.c, var_0, 659f))))))), Struct_2(abs(_wgslsmith_mod_i32(min(arg_1.a, arg_1.a), func_2(-13885i, true, arg_1.b.a.yxx).a)), Struct_1(!select(arg_1.b.a, arg_1.b.a, arg_1.b.a.x), u_input.b.x, _wgslsmith_f_op_f32(-var_1)), func_1(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2208f, var_1, -1221f, var_0)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1025f, -1353f, var_1, -639f) - vec4<f32>(-227f, var_0, 899f, var_1)))), arg_1).c));
    var_2 = _wgslsmith_mult_vec2_i32(vec2<i32>(-1i) * -_wgslsmith_sub_vec2_i32(vec2<i32>(var_3.a, var_2.x) ^ vec2<i32>(u_input.d, 2147483647i), vec2<i32>(1i, arg_1.a) | vec2<i32>(2147483647i, -2147483647i)), select(~vec2<i32>(-1i, 35348i), _wgslsmith_div_vec2_i32(vec2<i32>(arg_1.a, var_3.a), abs(vec2<i32>(-1i, var_2.x))), vec2<bool>(true, true)) << (vec2<u32>(_wgslsmith_dot_vec2_u32(arg_1.c << (vec2<u32>(4294967295u, arg_1.b.b) % vec2<u32>(32u)), u_input.b.yy), arg_1.c.x) % vec2<u32>(32u)));
    return arg_1.b.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(func_4(u_input.c.wyx, func_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(320f, -317f, -1000f, -784f), vec4<f32>(-324f, 1000f, -589f, -166f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(444f, -1606f, 115f, -696f))), Struct_2(u_input.e.x, Struct_1(vec4<bool>(false, true, false, true), 79018u, -112f), min(vec2<u32>(u_input.b.x, 0u), u_input.a)))), !func_2(_wgslsmith_clamp_i32(u_input.c.x, reverseBits(-26660i), 2147483647i), any(vec3<bool>(false, true, true)), func_2(-u_input.e.x, all(vec2<bool>(true, false)), func_4(vec3<i32>(u_input.e.x, 36556i, -590i), Struct_2(-1i, Struct_1(vec4<bool>(false, false, false, false), u_input.a.x, 1000f), vec2<u32>(5156u, 0u))).ywy).b.a.zwy).b.a, func_4(u_input.c.xxz, Struct_2(22102i, Struct_1(vec4<bool>(true, true, true, true), u_input.a.x, _wgslsmith_f_op_f32(f32(-1f) * -302f)), u_input.b.yx)));
    var var_1 = Struct_1(select(!func_2(func_2(u_input.c.x, false, vec3<bool>(true, var_0.x, var_0.x)).a, var_0.x, var_0.yxw).b.a, !select(vec4<bool>(var_0.x, var_0.x, false, var_0.x), !vec4<bool>(var_0.x, var_0.x, true, var_0.x), func_4(vec3<i32>(-2147483647i, u_input.c.x, u_input.e.x), Struct_2(0i, Struct_1(vec4<bool>(var_0.x, true, false, true), u_input.a.x, 124f), u_input.a))), vec4<bool>(true, func_4(u_input.c.zyz, func_1(vec4<f32>(483f, -925f, -604f, 1012f), Struct_2(-60910i, Struct_1(vec4<bool>(false, var_0.x, true, true), u_input.a.x, -1000f), vec2<u32>(3863u, u_input.b.x)))).x, !var_0.x, all(vec4<bool>(false, true, true, var_0.x)))), u_input.a.x, 1631f);
    var_0 = vec4<bool>(!(var_1.b != _wgslsmith_dot_vec3_u32(~u_input.b.wxw, ~vec3<u32>(93777u, u_input.b.x, u_input.a.x))), var_1.a.x, any(vec2<bool>(var_0.x, false)), !(func_2(_wgslsmith_mod_i32(u_input.e.x, u_input.c.x), !var_1.a.x, func_4(vec3<i32>(u_input.e.x, u_input.e.x, 61168i), Struct_2(-82922i, Struct_1(vec4<bool>(true, false, false, true), 21767u, var_1.c), vec2<u32>(u_input.b.x, u_input.a.x))).zyx).b.a.x && select(any(var_1.a), var_1.a.x, true)));
    var_1 = Struct_1(vec4<bool>(false, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(var_1.c, -799f)))) == var_1.c, var_0.x, any(func_4(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.c.x, -1i, u_input.e.x), vec3<i32>(9140i, u_input.e.x, -1i)), func_1(vec4<f32>(1000f, var_1.c, var_1.c, var_1.c), Struct_2(u_input.c.x, Struct_1(vec4<bool>(true, true, var_0.x, var_1.a.x), var_1.b, 1582f), u_input.b.zw))).yw)), 1u, _wgslsmith_f_op_f32(var_1.c - var_1.c));
    var var_2 = _wgslsmith_div_u32(var_1.b, _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(u_input.b, reverseBits(~vec4<u32>(var_1.b, 4294967295u, var_1.b, u_input.b.x))), 1u));
    let var_3 = !select(!func_2(1i, true | var_1.a.x, select(vec3<bool>(var_0.x, true, var_1.a.x), var_0.xwz, false)).b.a.xy, vec2<bool>(any(vec3<bool>(false, var_0.x, var_1.a.x)), all(func_1(vec4<f32>(-356f, var_1.c, 1106f, -1596f), Struct_2(u_input.d, Struct_1(var_1.a, 4294967295u, -729f), u_input.a)).b.a.xw)), var_0.x);
    var var_4 = _wgslsmith_sub_i32(_wgslsmith_add_i32(u_input.c.x, u_input.d) << (u_input.b.x % 32u), -1i);
    let x = u_input.a;
    s_output = StorageBuffer(-521f, -(~(-u_input.c)));
}

