struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec3<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: i32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> f32 {
    let var_0 = select(vec3<bool>(any(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true))) && true, any(vec2<bool>(true, true)), all(select(select(vec2<bool>(false, true), vec2<bool>(false, true), false), vec2<bool>(false, true), true))), select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true)), vec3<bool>(any(vec3<bool>(true, false, false)), select(true, true, true), u_input.e.x <= u_input.d.x)), vec3<bool>(true, any(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false))), any(vec2<bool>(true, true))), !select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true)))), true);
    let var_1 = Struct_1(false, vec2<f32>(592f, -1807f), reverseBits(_wgslsmith_mult_vec4_u32(max(vec4<u32>(u_input.b, u_input.e.x, u_input.c, 7747u), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.e.x, u_input.b, u_input.c, u_input.b), vec4<u32>(u_input.e.x, u_input.e.x, u_input.e.x, u_input.c))), _wgslsmith_clamp_vec4_u32(~vec4<u32>(20956u, u_input.d.x, 41298u, 1u), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.d.x, u_input.c, u_input.e.x, 57678u), vec4<u32>(u_input.e.x, u_input.d.x, u_input.b, 6475u)), vec4<u32>(u_input.b, u_input.d.x, 42685u, 5145u)))));
    let var_2 = var_1;
    return 1f;
}

fn func_2(arg_0: i32, arg_1: bool) -> Struct_1 {
    let var_0 = Struct_1(any(select(select(vec4<bool>(false, true, false, arg_1), vec4<bool>(true, arg_1, false, arg_1), true), !vec4<bool>(false, arg_1, true, arg_1), true)) | (select(_wgslsmith_mult_i32(arg_0, arg_0), -1i, true) < u_input.a), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(vec2<f32>(715f, -322f), vec2<f32>(-953f, -936f)), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1094f, 192f), vec2<f32>(847f, -528f))))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(func_3()), -287f))), (_wgslsmith_add_vec4_u32(vec4<u32>(u_input.c, u_input.e.x, 1u, u_input.c), vec4<u32>(19724u, u_input.d.x, u_input.e.x, 1u) | vec4<u32>(1u, 1u, u_input.b, u_input.e.x)) & vec4<u32>(max(1u, 1u), u_input.e.x, reverseBits(u_input.c), _wgslsmith_div_u32(u_input.b, 0u))) | _wgslsmith_clamp_vec4_u32(~vec4<u32>(34432u, 4294967295u, 4294967295u, 13125u) | max(vec4<u32>(12258u, u_input.d.x, 0u, u_input.e.x), vec4<u32>(26726u, u_input.d.x, 1u, 0u)), ~(vec4<u32>(60923u, u_input.c, u_input.e.x, 0u) & vec4<u32>(52245u, u_input.b, 4294967295u, u_input.b)), vec4<u32>(~u_input.b, u_input.d.x, 1u, u_input.d.x)));
    var var_1 = Struct_1(true, var_0.b, firstLeadingBit(~abs(var_0.c)) & firstTrailingBit(var_0.c));
    var_1 = var_0;
    var_1 = Struct_1(true & !(arg_1 || true), vec2<f32>(_wgslsmith_f_op_f32(-1000f + var_1.b.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1265f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.b.x), 149f))), var_0.c);
    let var_2 = Struct_1(true, vec2<f32>(var_0.b.x, var_1.b.x), (var_0.c << (select(vec4<u32>(var_1.c.x, u_input.e.x, var_1.c.x, var_0.c.x) ^ vec4<u32>(u_input.b, 50162u, u_input.d.x, 26441u), ~vec4<u32>(var_1.c.x, 4294967295u, 1u, 0u), var_0.a) % vec4<u32>(32u))) >> (~var_1.c % vec4<u32>(32u)));
    return Struct_1(var_2.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(abs(var_2.b.x)), _wgslsmith_f_op_f32(var_1.b.x + -897f)), _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-291f, 902f), vec2<f32>(var_0.b.x, 1000f)), vec2<f32>(292f, 304f))))), ~vec4<u32>(0u, ~u_input.c, 22745u, _wgslsmith_div_u32(4294967295u, 4294967295u)) >> (~vec4<u32>(var_2.c.x, var_2.c.x, 0u, max(55866u, u_input.b)) % vec4<u32>(32u)));
}

fn func_4(arg_0: i32, arg_1: f32, arg_2: Struct_1) -> bool {
    let var_0 = _wgslsmith_f_op_f32(-arg_1) > arg_2.b.x;
    let var_1 = Struct_1(func_2(~u_input.a, var_0).a, _wgslsmith_f_op_vec2_f32(max(vec2<f32>(arg_1, 373f), vec2<f32>(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-439f + arg_1))))), max(reverseBits(arg_2.c), arg_2.c));
    var var_2 = Struct_1(false, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_2.b * arg_2.b)), abs(~arg_2.c));
    var var_3 = vec4<i32>(_wgslsmith_mod_i32(-2147483647i, _wgslsmith_dot_vec4_i32(-_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, u_input.a, arg_0, -19532i), vec4<i32>(0i, u_input.a, u_input.a, u_input.a)), _wgslsmith_add_vec4_i32(vec4<i32>(-13700i, u_input.a, 2147483647i, arg_0) >> (vec4<u32>(arg_2.c.x, arg_2.c.x, 0u, var_2.c.x) % vec4<u32>(32u)), vec4<i32>(arg_0, 2147483647i, u_input.a, -1i)))), _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a, abs(-60413i), 9347i & u_input.a), vec3<i32>(14765i, -45885i, -69450i), vec3<i32>(_wgslsmith_clamp_i32(u_input.a, arg_0, 3129i), arg_0 >> (var_2.c.x % 32u), u_input.a | arg_0)), reverseBits(_wgslsmith_mod_vec3_i32(vec3<i32>(-22560i, arg_0, arg_0), vec3<i32>(22566i, -27088i, u_input.a)))), arg_0, max(select(countOneBits(firstTrailingBit(arg_0)), -18532i, var_1.a), ~u_input.a));
    var_3 = reverseBits(_wgslsmith_mult_vec4_i32(-_wgslsmith_mod_vec4_i32(~vec4<i32>(var_3.x, 1621i, 50024i, -1i), _wgslsmith_sub_vec4_i32(vec4<i32>(-19872i, -11788i, 2147483647i, arg_0), vec4<i32>(u_input.a, 0i, u_input.a, u_input.a))), vec4<i32>(select(u_input.a, arg_0, var_0) | -var_3.x, 15602i, u_input.a, -_wgslsmith_mod_i32(-2147483647i, -12970i))));
    return false;
}

fn func_1() -> vec3<u32> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -890f) - 1099f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(710f, -1349f, true)) * 1187f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1340f + _wgslsmith_f_op_f32(-1019f + -1568f)))));
    var var_1 = select(select(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), any(vec2<bool>(true, false))), !select(select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true), true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true)), -1i != _wgslsmith_div_i32(-u_input.a, 12342i)), !select(select(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true), true), select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false), false), select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true), false)), select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), true)), select(vec4<bool>(func_4(u_input.a, var_0, func_2(-1i, false)), !all(vec3<bool>(false, true, false)), any(select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true))), all(vec4<bool>(false, true, true, true)) != any(vec4<bool>(false, false, true, true))), select(!select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false), true), vec4<bool>(true, true, true, true), all(vec2<bool>(false, true))), !func_4(_wgslsmith_add_i32(u_input.a, 82838i), -116f, func_2(0i, true))));
    var var_2 = vec2<u32>(~4294967295u, abs(104755u) >> (u_input.e.x % 32u));
    var var_3 = !((!all(vec4<bool>(var_1.x, var_1.x, true, var_1.x)) != var_1.x) == true);
    let var_4 = _wgslsmith_f_op_f32(func_3());
    return u_input.d;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -757f;
    var var_1 = ~(~(~(~u_input.e.x)) & ~(~u_input.d.x));
    var var_2 = true;
    var_2 = all(!select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), select(select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false)), vec3<bool>(false, false, true), vec3<bool>(true, true, true))));
    var_1 = ~_wgslsmith_dot_vec3_u32(func_1(), vec3<u32>(~(~u_input.e.x), u_input.c, 15114u));
    var var_3 = max(-2147483647i, u_input.a) > (countOneBits(countOneBits(u_input.a) & -89932i) ^ abs(2147483647i));
    let var_4 = select(vec3<bool>(true, true, any(vec4<bool>(true, true, true, true))), vec3<bool>(!(false && func_2(0i, false).a), !(u_input.b < (37703u ^ u_input.b)), !all(select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true)))), !vec3<bool>(false, all(vec4<bool>(true, true, true, true)), true));
    var_1 = firstTrailingBit(abs(~u_input.b));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(var_0, var_0), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(877f * 551f)))))), -u_input.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, var_0, 890f, -2004f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-634f, -216f, var_0, 1282f)))))));
}

