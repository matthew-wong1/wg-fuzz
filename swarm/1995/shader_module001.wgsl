struct Struct_1 {
    a: i32,
    b: vec2<u32>,
    c: f32,
    d: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: bool,
}

struct Struct_4 {
    a: vec4<f32>,
    b: bool,
    c: u32,
    d: Struct_2,
}

struct Struct_5 {
    a: Struct_4,
    b: bool,
    c: vec2<i32>,
    d: Struct_4,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec3<u32>,
    d: vec2<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: f32,
    d: f32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 21>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec3<bool>, arg_1: bool, arg_2: bool, arg_3: bool) -> bool {
    let var_0 = Struct_3(any(select(select(select(vec4<bool>(true, false, false, arg_0.x), vec4<bool>(arg_1, true, arg_1, arg_1), arg_2), vec4<bool>(false, true, arg_3, arg_2), vec4<bool>(arg_0.x, false, arg_0.x, arg_0.x)), vec4<bool>(false, arg_1, false, any(vec4<bool>(arg_2, false, arg_1, false))), select(true, u_input.e.x < 21688i, arg_1))), arg_0.x);
    let var_1 = Struct_5(Struct_4(vec4<f32>(1f, 1f, 1f, 1f), any(select(arg_0, !arg_0, true)), 18016u, Struct_2(Struct_1(-12533i, u_input.c.yy, -968f, vec4<u32>(u_input.b.x, 4294967295u, 58074u, 53225u)))), !(!(arg_2 == arg_2)), reverseBits(max(~u_input.a.ww, vec2<i32>(u_input.a.x, u_input.a.x)) ^ ~abs(vec2<i32>(u_input.e.x, -1i))), Struct_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(499f, -1304f, 121f, -2048f))), all(vec4<bool>(true, arg_0.x && var_0.a, any(arg_0.xz), true)), ~(_wgslsmith_mod_u32(117600u, u_input.b.x) ^ 0u), Struct_2(Struct_1(59091i, ~vec2<u32>(4294967295u, u_input.b.x), _wgslsmith_div_f32(-272f, -1579f), _wgslsmith_mod_vec4_u32(vec4<u32>(0u, u_input.b.x, 47230u, 31958u), vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 1u))))));
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-202f * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(var_1.a.d.a.c))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a.d.a.c - _wgslsmith_f_op_f32(var_1.a.a.x + var_1.d.d.a.c)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1329f * 1000f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a.d.a.c * -847f) * _wgslsmith_f_op_f32(var_1.d.d.a.c - 773f))), _wgslsmith_f_op_f32(-334f + var_1.a.a.x)), -1000f);
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(117f, _wgslsmith_f_op_f32(floor(1358f))) * 2043f) < _wgslsmith_f_op_f32(-var_2.x);
    let var_4 = _wgslsmith_div_vec4_u32(var_1.a.d.a.d, countOneBits(firstTrailingBit(vec4<u32>(~u_input.c.x, u_input.b.x, ~4294967295u, 20467u))));
    return !any(select(select(!vec3<bool>(false, arg_1, false), select(arg_0, arg_0, vec3<bool>(arg_3, false, false)), select(arg_0, vec3<bool>(arg_3, true, false), arg_0)), select(select(vec3<bool>(arg_1, var_1.d.b, true), arg_0, arg_0), arg_0, true), !select(var_1.d.b, false, var_0.b)));
}

fn func_2(arg_0: f32, arg_1: vec2<bool>, arg_2: vec4<u32>, arg_3: Struct_4) -> f32 {
    var var_0 = vec3<f32>(1445f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) * _wgslsmith_f_op_f32(-arg_0))))), arg_0);
    var var_1 = !select(!vec4<bool>(false, !arg_3.b, true, true), select(!select(vec4<bool>(arg_1.x, arg_1.x, true, arg_1.x), vec4<bool>(arg_3.b, true, arg_1.x, false), vec4<bool>(arg_3.b, true, arg_3.b, arg_1.x)), vec4<bool>(true, !arg_1.x, true, arg_1.x | arg_1.x), arg_3.b), arg_3.b);
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(trunc(-1006f)), _wgslsmith_f_op_f32(exp2(var_0.x)), arg_3.a.x);
    var_1 = vec4<bool>(true && var_1.x, 0i >= _wgslsmith_mult_i32(1i, u_input.e.x), false, ((u_input.b.x | 72043u) > _wgslsmith_div_u32(u_input.c.x, 29372u)) & all(vec2<bool>(true, true)));
    let var_2 = true && (func_3(!var_1.zzx, false, arg_3.b, arg_1.x) || !all(vec2<bool>(arg_3.b, true)));
    return 1434f;
}

fn func_4(arg_0: Struct_2, arg_1: f32, arg_2: Struct_1, arg_3: vec3<u32>) -> Struct_5 {
    global0 = array<Struct_3, 21>();
    global0 = array<Struct_3, 21>();
    var var_0 = u_input.a;
    let var_1 = ~vec4<u32>(~_wgslsmith_mod_u32(firstLeadingBit(21917u), 6671u), abs(1u), _wgslsmith_div_u32(arg_0.a.d.x, ~(~1u)), firstTrailingBit(~arg_2.b.x << (~42713u % 32u)));
    var var_2 = Struct_5(Struct_4(vec4<f32>(-1657f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 - 328f) * arg_0.a.c), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_1), -1756f)), -541f), true, 18340u, arg_0), select(var_0.x, u_input.a.x, arg_1 <= -257f) < _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(countOneBits(var_0.zw), _wgslsmith_div_vec2_i32(vec2<i32>(31817i, arg_2.a), vec2<i32>(-66360i, -34334i))), select(_wgslsmith_dot_vec2_i32(var_0.xw, vec2<i32>(2147483647i, u_input.d.x)), _wgslsmith_mod_i32(-33792i, arg_0.a.a), false)), vec2<i32>(_wgslsmith_div_i32(u_input.a.x, u_input.e.x), abs(-1i)), Struct_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(132f, -127f, 275f, arg_1))))), true, ~var_1.x, Struct_2(Struct_1(_wgslsmith_mult_i32(24024i, -8220i), max(arg_3.yz, vec2<u32>(arg_0.a.d.x, 117307u)), _wgslsmith_f_op_f32(f32(-1f) * -1065f), ~var_1))));
    return Struct_5(Struct_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-120f, 693f, arg_2.c, -226f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-768f, 1000f, 1198f, 1495f) * var_2.a.a))), true, ~reverseBits(46704u | var_1.x), arg_0), var_2.a.b, vec2<i32>(_wgslsmith_mult_i32(_wgslsmith_div_i32(-2147483647i, arg_2.a) << (~arg_2.d.x % 32u), arg_2.a), 1i), Struct_4(_wgslsmith_f_op_vec4_f32(-var_2.d.a), false, ~abs(1u), arg_0));
}

fn func_1() -> vec4<bool> {
    global0 = array<Struct_3, 21>();
    let var_0 = -1326f;
    let var_1 = func_4(Struct_2(Struct_1(select(-19126i, u_input.d.x | u_input.e.x, u_input.d.x >= -19425i), ~(vec2<u32>(u_input.c.x, u_input.b.x) | u_input.c.xy), var_0, ~min(vec4<u32>(39949u, u_input.b.x, u_input.b.x, u_input.b.x), vec4<u32>(u_input.b.x, u_input.c.x, 31717u, 4294967295u)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(735f, vec2<bool>(all(vec3<bool>(true, false, true)), true), _wgslsmith_mult_vec4_u32(vec4<u32>(0u, u_input.b.x, u_input.c.x, u_input.b.x) << (vec4<u32>(u_input.c.x, 56139u, 0u, 53569u) % vec4<u32>(32u)), ~vec4<u32>(u_input.c.x, u_input.b.x, u_input.c.x, u_input.c.x)), Struct_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, 1000f, -133f, 616f)), true, ~u_input.c.x, Struct_2(Struct_1(-8595i, vec2<u32>(u_input.b.x, 4294967295u), -999f, vec4<u32>(u_input.b.x, u_input.b.x, 1u, 0u)))))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(443f * -1522f), vec2<bool>(true, true), vec4<u32>(1u, u_input.b.x, u_input.c.x, u_input.c.x) & vec4<u32>(0u, 1u, u_input.b.x, u_input.b.x), Struct_4(vec4<f32>(var_0, -1078f, var_0, var_0), false, u_input.c.x, Struct_2(Struct_1(u_input.e.x, u_input.b, 479f, vec4<u32>(u_input.b.x, 0u, 26335u, 43113u)))))) - -1041f)), Struct_1(-_wgslsmith_sub_i32(u_input.e.x, u_input.e.x ^ u_input.e.x), _wgslsmith_div_vec2_u32(vec2<u32>(_wgslsmith_dot_vec3_u32(u_input.c, vec3<u32>(8553u, u_input.b.x, 33888u)), ~4294967295u), ~countOneBits(u_input.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -238f)), min(_wgslsmith_div_vec4_u32(vec4<u32>(397u, 4294967295u, 38014u, u_input.b.x), vec4<u32>(u_input.c.x, u_input.c.x, 1u, u_input.b.x)), max(~vec4<u32>(41654u, 1u, u_input.c.x, u_input.b.x), vec4<u32>(u_input.b.x, u_input.c.x, u_input.b.x, 0u)))), _wgslsmith_sub_vec3_u32((vec3<u32>(u_input.b.x, 40804u, u_input.b.x) & u_input.c) << (_wgslsmith_div_vec3_u32(u_input.c, u_input.c) % vec3<u32>(32u)), select(vec3<u32>(u_input.b.x, _wgslsmith_div_u32(1u, u_input.c.x), 11857u << (u_input.b.x % 32u)), ~vec3<u32>(u_input.b.x, 1u, u_input.b.x) << (_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b.x, 4294967295u, 0u), vec3<u32>(u_input.c.x, u_input.c.x, 31661u), vec3<u32>(u_input.c.x, 0u, 69089u)) % vec3<u32>(32u)), false)));
    var var_2 = func_4(Struct_2(Struct_1(_wgslsmith_mod_i32(u_input.e.x, var_1.d.d.a.a << (var_1.a.d.a.b.x % 32u)), _wgslsmith_add_vec2_u32(select(u_input.b, vec2<u32>(var_1.d.d.a.b.x, u_input.b.x), var_1.d.b), u_input.b), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0, -1152f)), var_1.a.d.a.d)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(f32(-1f) * -1000f), !vec2<bool>(var_1.d.b, var_1.a.b), ~var_1.d.d.a.d, func_4(Struct_2(Struct_1(var_1.c.x, var_1.a.d.a.b, 1098f, vec4<u32>(var_1.d.c, 44390u, 4294967295u, u_input.b.x))), 524f, Struct_1(u_input.a.x, vec2<u32>(4294967295u, var_1.a.c), -1688f, var_1.a.d.a.d), vec3<u32>(0u, 0u, u_input.c.x)).a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0))))))), Struct_1(countOneBits(select(var_1.c.x, u_input.d.x, var_1.b)), var_1.a.d.a.d.ww, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.d.d.a.c * _wgslsmith_f_op_f32(abs(var_0)))), vec4<u32>(u_input.b.x, ~u_input.c.x, ~(24088u ^ var_1.a.c), var_1.d.d.a.b.x << (_wgslsmith_mult_u32(u_input.b.x, var_1.d.c) % 32u))), ~(var_1.d.d.a.d.wxx << (var_1.a.d.a.d.xxx % vec3<u32>(32u)))).a;
    let var_3 = Struct_2(func_4(func_4(var_1.d.d, _wgslsmith_f_op_f32(var_0 + _wgslsmith_f_op_f32(min(var_2.d.a.c, var_0))), Struct_1(-35958i, ~vec2<u32>(4294967295u, 0u), _wgslsmith_f_op_f32(var_0 + -1210f), ~var_1.d.d.a.d), var_2.d.a.d.xzy).d.d, _wgslsmith_f_op_f32(f32(-1f) * -471f), func_4(Struct_2(func_4(Struct_2(var_2.d.a), var_1.d.a.x, Struct_1(u_input.d.x, vec2<u32>(var_1.a.d.a.d.x, var_2.d.a.b.x), var_1.d.d.a.c, var_1.a.d.a.d), vec3<u32>(1u, 16607u, 1u)).d.d.a), -935f, Struct_1(~u_input.e.x, u_input.b, var_0, ~var_2.d.a.d), ~select(vec3<u32>(u_input.b.x, 73479u, var_2.d.a.b.x), vec3<u32>(var_2.d.a.d.x, 18890u, 4294967295u), false)).d.d.a, firstTrailingBit(~vec3<u32>(87883u, var_2.d.a.b.x, u_input.c.x))).a.d.a);
    return vec4<bool>((~_wgslsmith_div_i32(-2147483647i, var_1.d.d.a.a) > firstTrailingBit(~var_2.d.a.a)) & var_2.b, var_2.b, var_2.d.a.b.x >= abs(u_input.c.x >> (var_3.a.b.x % 32u)), false);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_3, 21>();
    global0 = array<Struct_3, 21>();
    global0 = array<Struct_3, 21>();
    let var_0 = select(select(!select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false)), vec4<bool>(false, true, false, false), true), select(func_1(), !func_1(), true & func_4(Struct_2(Struct_1(u_input.a.x, u_input.b, -118f, vec4<u32>(51316u, u_input.b.x, 1u, 4294967295u))), 101f, Struct_1(0i, u_input.c.xz, 1967f, vec4<u32>(4294967295u, u_input.c.x, 0u, 16858u)), u_input.c).b), vec4<bool>(true, true, true, true)), select(select(func_1(), select(vec4<bool>(true, true, true, true), func_1(), func_1()), func_3(select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true)), true, u_input.c.x >= 1u, func_4(Struct_2(Struct_1(-23962i, u_input.c.zz, 1627f, vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 58316u))), 2448f, Struct_1(10092i, u_input.c.xz, 174f, vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 4294967295u)), u_input.c).d.b)), select(vec4<bool>(true, true, true, 59436u > u_input.c.x), vec4<bool>(func_1().x, false, true, true), vec4<bool>(all(vec4<bool>(true, true, false, false)), true, true, any(vec4<bool>(true, true, true, true)))), !vec4<bool>(func_3(vec3<bool>(false, false, true), true, false, false), true, 0u != u_input.b.x, true)), true && func_1().x);
    var var_1 = firstLeadingBit(vec4<u32>(~43402u, min(_wgslsmith_dot_vec3_u32(u_input.c, _wgslsmith_add_vec3_u32(vec3<u32>(0u, 4294967295u, u_input.b.x), u_input.c)), ~countOneBits(u_input.b.x)), u_input.c.x, abs(1u)));
    var var_2 = Struct_2(Struct_1(-54126i, min(vec2<u32>(54252u, 22083u), select(var_1.wx, ~u_input.b, vec2<bool>(var_0.x, var_0.x))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1520f * _wgslsmith_f_op_f32(floor(1000f))))), max(select(_wgslsmith_sub_vec4_u32(vec4<u32>(0u, var_1.x, u_input.c.x, 33900u), vec4<u32>(u_input.b.x, u_input.c.x, var_1.x, 4294967295u)), vec4<u32>(var_1.x, var_1.x, u_input.b.x, 1u) & vec4<u32>(0u, 1u, 43344u, 0u), var_0.x), ~vec4<u32>(45697u, var_1.x, 1u, 16194u))));
    var var_3 = Struct_2(Struct_1(2147483647i, _wgslsmith_add_vec2_u32(var_1.xy, ~vec2<u32>(var_1.x, 4294967295u) & _wgslsmith_add_vec2_u32(var_2.a.b, u_input.b)), var_2.a.c, vec4<u32>(0u, _wgslsmith_dot_vec3_u32(vec3<u32>(131196u, var_1.x, 32196u), u_input.c), 1u, ~0u)));
    var var_4 = Struct_4(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-742f, -711f, -708f, var_2.a.c) * vec4<f32>(1074f, -189f, -1000f, 294f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1670f, -188f, 441f, -329f)))), vec4<f32>(_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(step(434f, var_2.a.c)), vec2<bool>(false, false), vec4<u32>(0u, 4294967295u, 1u, var_3.a.d.x), func_4(Struct_2(Struct_1(u_input.d.x, var_1.yz, 1539f, vec4<u32>(u_input.c.x, 23845u, var_3.a.b.x, 25239u))), -178f, Struct_1(1819i, vec2<u32>(0u, var_2.a.b.x), 2002f, var_2.a.d), vec3<u32>(1u, 1u, 5754u)).d)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(var_3.a.c)), -1347f)), var_2.a.c, var_2.a.c), false)), !var_0.x, _wgslsmith_dot_vec4_u32(abs(firstTrailingBit(abs(var_2.a.d))), vec4<u32>(4294967295u, select(_wgslsmith_dot_vec4_u32(var_2.a.d, var_2.a.d), var_3.a.b.x, var_0.x), var_2.a.d.x, 18492u)), func_4(func_4(func_4(Struct_2(Struct_1(2147483647i, var_2.a.b, var_3.a.c, var_2.a.d)), _wgslsmith_f_op_f32(571f * var_3.a.c), var_3.a, ~u_input.c).a.d, _wgslsmith_f_op_f32(f32(-1f) * -1380f), func_4(func_4(Struct_2(var_2.a), -783f, Struct_1(22603i, vec2<u32>(81114u, u_input.c.x), 136f, var_2.a.d), var_1.wyy).d.d, func_4(Struct_2(Struct_1(var_3.a.a, var_2.a.d.yx, 831f, vec4<u32>(var_3.a.d.x, var_2.a.b.x, u_input.c.x, 24497u))), 1088f, var_3.a, var_3.a.d.zyx).d.d.a.c, var_3.a, select(var_3.a.d.xzz, var_2.a.d.zwx, vec3<bool>(true, var_0.x, true))).a.d.a, vec3<u32>(var_2.a.b.x, 76563u, var_3.a.b.x)).a.d, _wgslsmith_f_op_f32(floor(var_2.a.c)), func_4(Struct_2(Struct_1(-2147483647i, vec2<u32>(41874u, 48374u), -1000f, var_3.a.d)), var_2.a.c, Struct_1(_wgslsmith_sub_i32(var_3.a.a, 0i), ~var_3.a.d.wz, -1781f, ~var_2.a.d), vec3<u32>(var_3.a.d.x, ~0u, 4294967295u)).d.d.a, ~abs(vec3<u32>(var_3.a.b.x, 4294967295u, 2371u))).a.d);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(var_4.d.a.a, var_4.d.a.a, max(var_3.a.a, var_4.d.a.a), -1i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -640f)), var_4.d.a.c, _wgslsmith_f_op_f32(round(var_4.d.a.c)), _wgslsmith_f_op_vec2_f32(trunc(var_4.a.zw)));
}

