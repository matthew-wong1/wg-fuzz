struct Struct_1 {
    a: bool,
    b: vec2<u32>,
    c: vec2<u32>,
    d: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
    d: vec2<u32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: vec2<i32>) -> bool {
    let var_0 = select(vec3<bool>(true, true, false), !select(select(!vec3<bool>(true, false, global0.a), select(vec3<bool>(false, global0.a, global0.a), vec3<bool>(false, false, global0.a), vec3<bool>(false, global0.a, global0.a)), true), select(select(vec3<bool>(true, false, true), vec3<bool>(global0.a, global0.a, true), vec3<bool>(global0.a, false, global0.a)), select(vec3<bool>(global0.a, global0.a, true), vec3<bool>(global0.a, true, true), vec3<bool>(global0.a, global0.a, false)), false), global0.a == (u_input.c < arg_0.x)), true || all(!select(vec2<bool>(global0.a, false), vec2<bool>(true, true), global0.a)));
    let var_1 = _wgslsmith_f_op_f32(step(1085f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-2072f - -506f), _wgslsmith_f_op_f32(1622f + 1439f))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(-1315f, 814f)), _wgslsmith_f_op_f32(197f - 1909f)))))));
    global0 = Struct_1(!global0.a, ~vec2<u32>(global0.b.x, countOneBits(_wgslsmith_dot_vec2_u32(global0.c, u_input.b.zy))), _wgslsmith_clamp_vec2_u32(vec2<u32>(global0.d ^ 1u, 4294967295u), vec2<u32>(u_input.b.x, _wgslsmith_dot_vec2_u32(global0.c, vec2<u32>(global0.d, u_input.b.x)) >> (_wgslsmith_sub_u32(78020u, global0.b.x) % 32u)), countOneBits(u_input.a.yy)), max(29420u, min(0u, global0.b.x)));
    let var_2 = all(!(!(!select(vec4<bool>(global0.a, global0.a, true, global0.a), vec4<bool>(false, true, global0.a, false), vec4<bool>(var_0.x, global0.a, global0.a, var_0.x)))));
    let var_3 = -reverseBits(_wgslsmith_mult_i32(countOneBits(-57852i), 1i) & _wgslsmith_add_i32(-1i, arg_0.x));
    return var_0.x;
}

fn func_2() -> bool {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(select(281f, -388f, global0.a)), _wgslsmith_f_op_f32(-1556f * 235f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(179f)), _wgslsmith_f_op_f32(sign(-917f))))));
    global0 = Struct_1(true || func_3(select(firstLeadingBit(vec2<i32>(u_input.c, u_input.c)), reverseBits(vec2<i32>(u_input.c, u_input.c)), vec2<bool>(true, global0.a))), ~(~(global0.c << (vec2<u32>(9554u, global0.d) % vec2<u32>(32u))) >> (global0.b % vec2<u32>(32u))), ~vec2<u32>(56024u << (_wgslsmith_div_u32(global0.c.x, global0.c.x) % 32u), ~reverseBits(u_input.a.x)), reverseBits(~u_input.b.x));
    let var_1 = 1019f;
    var var_2 = Struct_1(any(vec3<bool>(~u_input.c <= (u_input.c ^ 1i), true, global0.a)), _wgslsmith_mult_vec2_u32(abs(~_wgslsmith_sub_vec2_u32(vec2<u32>(global0.b.x, 0u), global0.c)), vec2<u32>(_wgslsmith_sub_u32(global0.d, global0.d) >> (global0.c.x % 32u), ~_wgslsmith_add_u32(46660u, global0.b.x))), abs(vec2<u32>(4294967295u, global0.c.x)), global0.d);
    var var_3 = _wgslsmith_mod_vec4_i32(vec4<i32>(countOneBits(-13818i), _wgslsmith_div_i32(u_input.c, u_input.c), -max(u_input.c, u_input.c) ^ 0i, -u_input.c), vec4<i32>(~(-36212i), u_input.c, reverseBits(_wgslsmith_dot_vec4_i32(vec4<i32>(47214i, u_input.c, u_input.c, 1i) << (u_input.a % vec4<u32>(32u)), vec4<i32>(-27449i, -31443i, u_input.c, u_input.c))), 2147483647i));
    return !global0.a;
}

fn func_4(arg_0: vec3<bool>) -> i32 {
    global0 = Struct_1(global0.a, _wgslsmith_div_vec2_u32(global0.c, u_input.a.yx), vec2<u32>(4739u, ~_wgslsmith_div_u32(1u, u_input.a.x)), select(43401u, global0.b.x, !(!func_2())));
    global0 = Struct_1(false, vec2<u32>(_wgslsmith_mod_u32(~(~1u), global0.c.x), select(~global0.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, global0.b.x, global0.c.x, 0u), u_input.a) >> (select(10066u, 0u, arg_0.x) % 32u), func_3(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.c, u_input.c), vec2<i32>(1181i, 23006i))))), vec2<u32>(u_input.a.x, _wgslsmith_mult_u32(global0.d, u_input.a.x)), _wgslsmith_mult_u32(25963u, ~_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(global0.c, vec2<u32>(0u, u_input.a.x)), max(4294967295u, 4294967295u))));
    var var_0 = vec4<i32>(u_input.c ^ ~(~u_input.c << (countOneBits(global0.d) % 32u)), i32(-1i) * -18930i, ~u_input.c, u_input.c);
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-109f))))), 958f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(272f)) + 307f)), _wgslsmith_f_op_f32(trunc(1f))));
    global0 = Struct_1(false, countOneBits(select(select(_wgslsmith_add_vec2_u32(u_input.b.xz, u_input.a.yw), max(u_input.b.zx, global0.b), !vec2<bool>(global0.a, true)), u_input.b.xz, vec2<bool>(true, !global0.a))), _wgslsmith_mod_vec2_u32(~vec2<u32>(~u_input.b.x, ~u_input.b.x), ~global0.c), ~(~global0.c.x >> (~0u % 32u)));
    return reverseBits(2147483647i);
}

fn func_1(arg_0: i32) -> f32 {
    let var_0 = -reverseBits(arg_0);
    let var_1 = func_4(select(vec3<bool>(global0.a, -u_input.c <= arg_0, false), vec3<bool>(!func_2(), false, global0.a), select(vec3<bool>(arg_0 > 0i, true, true), select(!vec3<bool>(false, global0.a, global0.a), select(vec3<bool>(true, global0.a, true), vec3<bool>(true, global0.a, true), global0.a), select(vec3<bool>(false, global0.a, global0.a), vec3<bool>(false, global0.a, global0.a), true)), !vec3<bool>(false, global0.a, global0.a))));
    var var_2 = -_wgslsmith_div_vec3_i32(max(vec3<i32>(-2147483647i, i32(-1i) * -5190i, 2147483647i), firstTrailingBit(vec3<i32>(var_0, 2516i, 28120i)) & vec3<i32>(-45206i, -30302i, arg_0)), firstTrailingBit(~(-vec3<i32>(arg_0, -13814i, 2147483647i))));
    var var_3 = Struct_1(!func_3(vec2<i32>(var_0, 39581i) >> (firstLeadingBit(vec2<u32>(41842u, u_input.a.x)) % vec2<u32>(32u))), vec2<u32>(0u, global0.c.x), vec2<u32>(4294967295u, global0.d), 36436u & _wgslsmith_dot_vec4_u32(vec4<u32>(firstLeadingBit(0u), countOneBits(global0.d), 0u, ~u_input.a.x), firstTrailingBit(u_input.a) >> (min(vec4<u32>(40764u, u_input.a.x, u_input.a.x, global0.c.x), u_input.a) % vec4<u32>(32u))));
    var var_4 = global0.c.x;
    return 342f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-274f))), 504f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(931f * _wgslsmith_f_op_f32(1989f + 2594f))) + _wgslsmith_f_op_f32(-880f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -143f) - _wgslsmith_f_op_f32(func_1(2147483647i))))), -381f);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(step(415f, var_0.x))) * _wgslsmith_f_op_f32(var_0.x + var_0.x));
    var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(350f + -682f) + _wgslsmith_f_op_f32(ceil(-396f)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(u_input.c)) - _wgslsmith_f_op_f32(var_0.x * var_0.x)) * var_0.x))));
    var var_2 = Struct_1(1i != abs(abs(~u_input.c)), ~(vec2<u32>(35127u, 4294967295u) | (global0.b | vec2<u32>(global0.c.x, global0.b.x))) << (_wgslsmith_add_vec2_u32(~(~vec2<u32>(global0.b.x, global0.d)), firstLeadingBit(vec2<u32>(global0.c.x, 0u))) % vec2<u32>(32u)), u_input.b.zy, min(63740u, 0u));
    global0 = Struct_1((reverseBits(1u) > (var_2.d & 19631u)) & (_wgslsmith_f_op_f32(-var_0.x) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(517f + -1015f) - var_0.x)), reverseBits(_wgslsmith_sub_vec2_u32(vec2<u32>(1766u, 0u), _wgslsmith_clamp_vec2_u32(global0.c, u_input.b.zz, u_input.a.zz)) & select(~vec2<u32>(127947u, 37287u), _wgslsmith_mult_vec2_u32(vec2<u32>(global0.b.x, u_input.a.x), u_input.b.yz), var_2.a)), vec2<u32>(~min(0u, u_input.a.x << (13509u % 32u)), 37719u), _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(~global0.b.x, abs(0u), _wgslsmith_clamp_u32(27873u, 1u, 4294967295u), 1631u), u_input.a), ~_wgslsmith_dot_vec3_u32(select(vec3<u32>(u_input.b.x, 59113u, var_2.d), vec3<u32>(7591u, var_2.b.x, var_2.b.x), vec3<bool>(var_2.a, true, false)), u_input.a.wzw)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_u32(u_input.a.x << (firstTrailingBit(_wgslsmith_add_u32(1u, 1u)) % 32u), var_2.c.x), countOneBits(global0.c.x), vec4<u32>(~1u, var_2.c.x, var_2.d, (36051u >> (var_2.b.x % 32u)) & _wgslsmith_add_u32(abs(38312u), max(64768u, u_input.b.x))), ~_wgslsmith_clamp_vec2_u32(_wgslsmith_clamp_vec2_u32(_wgslsmith_mod_vec2_u32(var_2.b, vec2<u32>(var_2.d, 47653u)), vec2<u32>(u_input.a.x, u_input.a.x), global0.b), firstTrailingBit(~vec2<u32>(global0.c.x, 0u)), countOneBits(max(vec2<u32>(var_2.d, u_input.b.x), vec2<u32>(0u, 4294967295u)))), firstTrailingBit(u_input.a));
}

