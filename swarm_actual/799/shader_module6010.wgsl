struct Struct_1 {
    a: i32,
    b: vec3<u32>,
    c: bool,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec4<f32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec2<bool>, arg_1: vec4<bool>) -> vec3<bool> {
    var var_0 = reverseBits(u_input.a.zxy ^ ~select(~vec3<u32>(u_input.b.x, u_input.d, 4294967295u), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, u_input.d), u_input.b), vec3<bool>(true, true, arg_0.x)));
    var var_1 = _wgslsmith_clamp_i32(-28202i, select(i32(-1i) * -16302i, u_input.c, arg_0.x), _wgslsmith_clamp_i32(0i, countOneBits(_wgslsmith_add_i32(-24344i, 1i)), u_input.c));
    var_0 = _wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(abs(u_input.a.wwy) << ((u_input.b >> (vec3<u32>(var_0.x, 38680u, u_input.b.x) % vec3<u32>(32u))) % vec3<u32>(32u)), vec3<u32>(abs(u_input.a.x), 1u, 80824u)), ~vec3<u32>(~(~var_0.x), 0u, min(0u, var_0.x)));
    var_1 = u_input.c;
    var_0 = ~_wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(firstTrailingBit(vec3<u32>(u_input.d, var_0.x, u_input.b.x)), ~abs(vec3<u32>(15509u, var_0.x, var_0.x))), u_input.a.wwy);
    return !vec3<bool>(_wgslsmith_f_op_f32(ceil(-1058f)) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1203f, 539f))), !(!(var_0.x != 0u)), !arg_0.x);
}

fn func_2(arg_0: f32, arg_1: bool, arg_2: Struct_1, arg_3: Struct_1) -> Struct_2 {
    var var_0 = -1i;
    var_0 = 1i;
    var_0 = arg_2.a;
    let var_1 = Struct_3(!(!func_3(!vec2<bool>(true, arg_3.c), select(vec4<bool>(true, arg_3.c, false, arg_3.c), vec4<bool>(arg_1, arg_2.c, true, arg_3.c), false))));
    let var_2 = Struct_1(arg_2.a, max(countOneBits(_wgslsmith_mult_vec3_u32(vec3<u32>(arg_3.b.x, 16105u, 12562u), min(vec3<u32>(u_input.a.x, 46850u, 4294967295u), arg_2.b))), _wgslsmith_sub_vec3_u32(abs(vec3<u32>(0u, arg_2.b.x, 8042u) & arg_2.b), _wgslsmith_sub_vec3_u32(arg_3.b, vec3<u32>(arg_3.b.x, 64606u, 0u)))), true);
    return Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)), Struct_1(var_2.a, ~(~max(arg_3.b, vec3<u32>(arg_3.b.x, u_input.a.x, var_2.b.x))), 704f != _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(-1785f)), _wgslsmith_div_f32(-1023f, -359f)))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(sign(arg_0)), _wgslsmith_f_op_f32(ceil(arg_0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -802f) * _wgslsmith_f_op_f32(floor(arg_0))), arg_0), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, arg_0, arg_0, -629f) + vec4<f32>(-223f, arg_0, -244f, -1000f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, arg_0, -963f, arg_0) + vec4<f32>(2341f, arg_0, arg_0, arg_0))))), ~_wgslsmith_div_u32(u_input.b.x, 62008u) >= _wgslsmith_mod_u32(0u, arg_3.b.x))), Struct_1(~(-5528i), ~max(arg_3.b, vec3<u32>(0u, 4294967295u, 11947u)) << (_wgslsmith_sub_vec3_u32(select(u_input.a.zyw, vec3<u32>(40316u, 0u, u_input.b.x), var_1.a.x), ~vec3<u32>(arg_3.b.x, arg_3.b.x, var_2.b.x)) % vec3<u32>(32u)), true), arg_3);
}

fn func_1(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: Struct_3) -> i32 {
    let var_0 = false & all(arg_2.a);
    var var_1 = func_2(-115f, !all(vec2<bool>(true & arg_2.a.x, var_0)), Struct_1(arg_1.x & 30371i, select(_wgslsmith_mod_vec3_u32(arg_0.b | u_input.b, ~arg_0.b), ~(~arg_0.b), arg_2.a.x), ~_wgslsmith_clamp_i32(u_input.c, u_input.c, 1i) < (_wgslsmith_sub_i32(-48685i, 1i) ^ -arg_0.a)), arg_0);
    var_1 = func_2(-1000f, var_1.d.c, arg_0, func_2(_wgslsmith_f_op_f32(1522f * var_1.a), any(!vec4<bool>(arg_2.a.x, true, arg_0.c, false)), Struct_1(u_input.c, vec3<u32>(0u, var_1.e.b.x, 36984u) << (var_1.e.b % vec3<u32>(32u)), false), func_2(397f, select(true, true, true), arg_0, Struct_1(_wgslsmith_dot_vec4_i32(arg_1, arg_1), ~vec3<u32>(var_1.e.b.x, 4294967295u, var_1.d.b.x), false)).e).b);
    var_1 = func_2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_1.c.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-374f + -1000f) - _wgslsmith_f_op_f32(2545f - var_1.a))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1274f)) * -1238f))))), var_1.d.c, func_2(_wgslsmith_f_op_f32(var_1.a - 602f), func_3(select(arg_2.a.xz, func_3(vec2<bool>(var_1.d.c, arg_2.a.x), vec4<bool>(false, arg_0.c, false, var_0)).xy, true), vec4<bool>(arg_2.a.x, true, all(vec3<bool>(true, arg_0.c, true)), true)).x, Struct_1(~(-20938i), ~var_1.b.b, false), func_2(_wgslsmith_div_f32(var_1.c.x, _wgslsmith_f_op_f32(var_1.a * var_1.c.x)), select(arg_2.a.x, arg_2.a.x, true), var_1.b, Struct_1(2005i >> (u_input.d % 32u), ~vec3<u32>(4294967295u, 0u, var_1.d.b.x), true)).e).d, func_2(var_1.c.x, true, Struct_1(_wgslsmith_dot_vec3_i32(arg_1.xww, arg_1.wzy) & (i32(-1i) * -2147483647i), vec3<u32>(reverseBits(arg_0.b.x), var_1.b.b.x, _wgslsmith_div_u32(10058u, var_1.b.b.x)), !arg_0.c), Struct_1(arg_0.a, abs(arg_0.b), arg_0.c)).e);
    var_1 = func_2(_wgslsmith_f_op_f32(ceil(514f)), arg_0.c | (func_2(1128f, true, func_2(-217f, arg_0.c, var_1.b, Struct_1(u_input.c, vec3<u32>(arg_0.b.x, 114989u, u_input.a.x), var_1.b.c)).e, arg_0).b.c && (~u_input.d < countOneBits(arg_0.b.x))), Struct_1(-var_1.d.a, vec3<u32>(_wgslsmith_sub_u32(~1u, ~u_input.b.x), ~(~var_1.d.b.x), _wgslsmith_sub_u32(var_1.d.b.x, u_input.d)), all(select(arg_2.a.xz, arg_2.a.xy, !var_0))), Struct_1(u_input.c, ~(~vec3<u32>(0u, 4294967295u, var_1.b.b.x)), true));
    return 19030i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = i32(-1i) * -13999i;
    var var_1 = !(_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(~0u, u_input.a.x >> (u_input.d % 32u), u_input.b.x, 0u)) > (_wgslsmith_div_u32(~19407u, _wgslsmith_add_u32(u_input.d, 28622u)) ^ u_input.b.x));
    var var_2 = Struct_1(u_input.c, ~(~_wgslsmith_div_vec3_u32(u_input.a.xwy, ~u_input.a.zyx)), true);
    var var_3 = ~_wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(_wgslsmith_clamp_vec3_u32(var_2.b, vec3<u32>(var_2.b.x, 4294967295u, var_2.b.x), vec3<u32>(1u, var_2.b.x, 1u)), ~vec3<u32>(u_input.d, 16280u, 4294967295u)), _wgslsmith_div_vec3_u32(max(vec3<u32>(u_input.a.x, 1714u, var_2.b.x), u_input.b), ~vec3<u32>(1u, 4294967295u, 0u))), select(~vec3<u32>(u_input.a.x, u_input.b.x, 0u), u_input.a.zxx, ~u_input.a.x > firstTrailingBit(0u)));
    var var_4 = abs(vec3<i32>(_wgslsmith_mult_i32(firstTrailingBit(u_input.c) | u_input.c, ~countOneBits(var_2.a)), -_wgslsmith_mult_i32(u_input.c, ~var_2.a), _wgslsmith_mult_i32(var_2.a, func_1(Struct_1(2147483647i, vec3<u32>(7068u, 15811u, u_input.d), var_2.c), vec4<i32>(var_2.a, var_2.a, u_input.c, 2147483647i) >> (vec4<u32>(83980u, 4294967295u, 1u, 44226u) % vec4<u32>(32u)), Struct_3(vec3<bool>(true, false, false))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_4.x << (~21825u % 32u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-618f)) + 1f));
}

