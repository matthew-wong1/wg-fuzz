struct Struct_1 {
    a: f32,
    b: vec3<u32>,
    c: vec4<i32>,
    d: vec2<bool>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: vec3<bool>,
    d: Struct_2,
}

struct Struct_4 {
    a: vec3<f32>,
    b: f32,
    c: vec4<i32>,
}

struct Struct_5 {
    a: i32,
    b: vec4<f32>,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: u32,
    d: vec4<f32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 5> = array<i32, 5>(-19424i, 0i, -27218i, 4335i, i32(-2147483648));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: u32) -> vec2<i32> {
    var var_0 = arg_0;
    var var_1 = Struct_5(9785i, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(215f, -797f, -1277f, -1000f))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(641f, 385f, 1000f, 571f)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -1240f, -885f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-111f, -1000f, 799f)))))));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_1.c.x, -823f, true)) * _wgslsmith_f_op_f32(-736f - -789f)) - _wgslsmith_f_op_f32(ceil(-1000f))))), u_input.a.zyx, -max(~vec4<i32>(var_1.a, 38784i, var_1.a, var_1.a), _wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(var_1.a, 1i, 47398i, -2147483647i), vec4<i32>(0i, var_1.a, 33360i, 58143i)), -vec4<i32>(global0[_wgslsmith_index_u32(28600u, 5u)], global0[_wgslsmith_index_u32(4294967295u, 5u)], 1i, 31177i))), !select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, select(true, false, true))));
    var_2 = Struct_1(-1289f, select(max(vec3<u32>(1u, arg_0, u_input.b), select(var_2.b, u_input.a.xxz, var_2.d.x)) >> (vec3<u32>(_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(arg_0, var_2.b.x, var_2.b.x, 0u)), 0u, ~4294967295u) % vec3<u32>(32u)), vec3<u32>(u_input.b, ~4294967295u, ~var_2.b.x), false), min(vec4<i32>(29036i, global0[_wgslsmith_index_u32(var_2.b.x, 5u)], ~var_1.a & var_2.c.x, firstTrailingBit(select(-1i, global0[_wgslsmith_index_u32(53723u, 5u)], var_2.d.x))), var_2.c), var_2.d);
    global0 = array<i32, 5>();
    return _wgslsmith_add_vec2_i32(~var_2.c.zw, _wgslsmith_mult_vec2_i32(vec2<i32>(select(~global0[_wgslsmith_index_u32(arg_0, 5u)], ~global0[_wgslsmith_index_u32(6852u, 5u)], arg_0 < 0u), _wgslsmith_dot_vec4_i32(abs(var_2.c), _wgslsmith_mod_vec4_i32(vec4<i32>(var_2.c.x, var_2.c.x, var_2.c.x, 2147483647i), var_2.c))), var_2.c.xy));
}

fn func_2(arg_0: vec4<f32>) -> Struct_1 {
    global0 = array<i32, 5>();
    let var_0 = _wgslsmith_mult_vec2_i32(~vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-2058i, global0[_wgslsmith_index_u32(u_input.b, 5u)], global0[_wgslsmith_index_u32(333u, 5u)]) ^ vec3<i32>(global0[_wgslsmith_index_u32(8942u, 5u)], global0[_wgslsmith_index_u32(u_input.b, 5u)], global0[_wgslsmith_index_u32(1u, 5u)]), -vec3<i32>(-1i, 2293i, global0[_wgslsmith_index_u32(u_input.b, 5u)])), -1i), _wgslsmith_div_vec2_i32(vec2<i32>(-25186i, global0[_wgslsmith_index_u32(u_input.a.x, 5u)] << (u_input.a.x % 32u)), -func_3(0u)));
    var var_1 = select(vec4<i32>(-28291i, _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, -1i, -2147483647i, global0[_wgslsmith_index_u32(u_input.b, 5u)]) ^ vec4<i32>(var_0.x, 437i, global0[_wgslsmith_index_u32(u_input.b, 5u)], -2147483647i), -vec4<i32>(var_0.x, var_0.x, global0[_wgslsmith_index_u32(u_input.a.x, 5u)], global0[_wgslsmith_index_u32(u_input.b, 5u)])), _wgslsmith_mult_i32(var_0.x, ~(-2147483647i))), min(38271i, firstLeadingBit(var_0.x)) & ~(var_0.x ^ global0[_wgslsmith_index_u32(43066u, 5u)]), ~global0[_wgslsmith_index_u32(countOneBits(select(4294967295u, 4294967295u, false)), 5u)]), ~_wgslsmith_mod_vec4_i32(~_wgslsmith_div_vec4_i32(vec4<i32>(28858i, -1i, var_0.x, global0[_wgslsmith_index_u32(52785u, 5u)]), vec4<i32>(61137i, 30385i, var_0.x, 8060i)), -select(vec4<i32>(var_0.x, -4271i, -2147483647i, var_0.x), vec4<i32>(var_0.x, global0[_wgslsmith_index_u32(u_input.b, 5u)], 2147483647i, global0[_wgslsmith_index_u32(1u, 5u)]), vec4<bool>(false, true, false, true))), !select(u_input.b >= 30713u, true, true));
    global0 = array<i32, 5>();
    global0 = array<i32, 5>();
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1266f * arg_0.x))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -2072f), arg_0.x))) + _wgslsmith_f_op_f32(f32(-1f) * -1164f)), vec3<u32>(~min(_wgslsmith_clamp_u32(u_input.a.x, 4294967295u, u_input.a.x), firstLeadingBit(4294967295u)), _wgslsmith_mod_u32(_wgslsmith_div_u32(1u, firstTrailingBit(73007u)), min(u_input.a.x, ~u_input.b)), u_input.a.x), select(_wgslsmith_add_vec4_i32(abs(~vec4<i32>(var_1.x, global0[_wgslsmith_index_u32(u_input.a.x, 5u)], var_1.x, 15109i)), ~(vec4<i32>(-1i, var_1.x, -2147483647i, -871i) | vec4<i32>(38768i, 2147483647i, var_1.x, global0[_wgslsmith_index_u32(5394u, 5u)]))), vec4<i32>(max(global0[_wgslsmith_index_u32(90067u, 5u)], var_0.x) ^ -31574i, reverseBits(global0[_wgslsmith_index_u32(~u_input.a.x, 5u)]), func_3(u_input.a.x).x, _wgslsmith_dot_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(4294967295u, 5u)], global0[_wgslsmith_index_u32(u_input.b, 5u)], var_1.x, 2147483647i), vec4<i32>(var_1.x, 2147483647i, 2147483647i, 1i)) >> (u_input.a.x % 32u)), vec4<bool>(all(select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), true)), false, true, true)), select(select(vec2<bool>(false, all(vec2<bool>(false, true))), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true), vec2<bool>(all(vec2<bool>(true, true)), true)));
}

fn func_4(arg_0: Struct_1) -> i32 {
    var var_0 = _wgslsmith_sub_u32(~u_input.a.x, abs(1u));
    var var_1 = u_input.a & vec4<u32>(~41711u, _wgslsmith_dot_vec4_u32(u_input.a | u_input.a, ~(u_input.a & u_input.a)), 4294967295u, abs(min(_wgslsmith_mult_u32(arg_0.b.x, 0u), ~arg_0.b.x)));
    let var_2 = Struct_5(-1i, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(2097f * 1098f), 1101f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_0.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0.a, arg_0.a)))) - vec4<f32>(arg_0.a, -916f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a + -678f)), arg_0.a)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a, arg_0.a, 895f))) - vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -482f), arg_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a * 416f) - func_2(vec4<f32>(-820f, -340f, arg_0.a, -1331f)).a))));
    let var_3 = Struct_4(_wgslsmith_f_op_vec3_f32(-var_2.c), _wgslsmith_div_f32(-899f, _wgslsmith_f_op_f32(select(arg_0.a, _wgslsmith_f_op_f32(round(var_2.c.x)), true))), vec4<i32>(var_2.a, max(~abs(arg_0.c.x), _wgslsmith_mod_i32(_wgslsmith_mod_i32(-1i, 2147483647i), i32(-1i) * -10919i)), ~(~arg_0.c.x) << (1u % 32u), 12848i));
    let var_4 = _wgslsmith_mod_vec2_i32(arg_0.c.yw, _wgslsmith_mult_vec2_i32(func_2(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(var_2.b + var_2.b), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.a.x, var_3.b, 579f, -718f))))).c.yw, arg_0.c.wx));
    return ~(~1i);
}

fn func_1(arg_0: Struct_4, arg_1: vec4<i32>, arg_2: i32) -> vec4<i32> {
    global0 = array<i32, 5>();
    let var_0 = _wgslsmith_dot_vec2_i32(vec2<i32>(~(-2147483647i), 47584i), countOneBits(abs(_wgslsmith_sub_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(-8612i, arg_2), arg_0.c.xy), _wgslsmith_mod_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 5u)], 22369i), vec2<i32>(arg_0.c.x, 0i))))));
    let var_1 = vec3<u32>(~select(max(~28168u, _wgslsmith_mult_u32(1u, u_input.a.x)), firstLeadingBit(~24690u), !all(vec2<bool>(false, false))), u_input.b, 1u);
    var var_2 = -func_4(func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(304f, -321f, -160f, 1022f))));
    var var_3 = func_2(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2298f) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(132f - arg_0.b)))), 942f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.b + -506f) * arg_0.a.x))));
    return arg_0.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) + vec3<f32>(-684f, _wgslsmith_f_op_f32(abs(1368f)), _wgslsmith_f_op_f32(1144f + 115f)))), 1f, func_1(Struct_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1002f, 130f, -2572f)), _wgslsmith_f_op_f32(step(-1478f, _wgslsmith_f_op_f32(ceil(1000f)))), _wgslsmith_add_vec4_i32(~vec4<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 5u)], global0[_wgslsmith_index_u32(u_input.b, 5u)], 6835i, 9462i), -vec4<i32>(global0[_wgslsmith_index_u32(17399u, 5u)], global0[_wgslsmith_index_u32(35434u, 5u)], 17099i, global0[_wgslsmith_index_u32(0u, 5u)]))), vec4<i32>(1i, global0[_wgslsmith_index_u32(u_input.b, 5u)], 2147483647i, -71093i), _wgslsmith_sub_i32(2147483647i, 0i)));
    var var_1 = Struct_1(297f, vec3<u32>(u_input.a.x, 27023u, reverseBits(max(1u, _wgslsmith_dot_vec3_u32(u_input.a.wzw, u_input.a.zww)))), vec4<i32>(_wgslsmith_dot_vec2_i32(var_0.c.wx, func_3(4294967295u)), global0[_wgslsmith_index_u32(u_input.a.x, 5u)], ~(~var_0.c.x) | (_wgslsmith_add_i32(-2147483647i, var_0.c.x) << (u_input.a.x % 32u)), func_4(Struct_1(var_0.b, vec3<u32>(u_input.b, 1u, u_input.b) << (u_input.a.xxw % vec3<u32>(32u)), vec4<i32>(var_0.c.x, -36865i, global0[_wgslsmith_index_u32(u_input.a.x, 5u)], -17152i) << (vec4<u32>(u_input.a.x, u_input.a.x, u_input.b, 16685u) % vec4<u32>(32u)), vec2<bool>(true, true)))), vec2<bool>(false, true));
    let var_2 = 1i;
    var var_3 = func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1463f, var_0.b, var_0.b, 447f), vec4<f32>(-624f, -231f, -420f, 862f), vec4<bool>(var_1.d.x, false, true, false)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a, -251f, 132f, 317f) + vec4<f32>(var_1.a, 527f, -1540f, -1937f))))));
    var_3 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.b))))), var_1.b, select(vec4<i32>(-_wgslsmith_dot_vec2_i32(var_0.c.zw, vec2<i32>(var_2, var_3.c.x)), ~reverseBits(var_1.c.x), -2147483647i, ~(-var_1.c.x)), vec4<i32>(-var_3.c.x, 1i, _wgslsmith_div_i32(51089i, var_2), _wgslsmith_sub_i32(global0[_wgslsmith_index_u32(var_3.b.x, 5u)], -2147483647i)) ^ _wgslsmith_div_vec4_i32(func_1(Struct_4(var_0.a, -1000f, var_1.c), var_3.c, var_2), vec4<i32>(0i, var_3.c.x, var_0.c.x, 1i)), !(!vec4<bool>(var_3.d.x, var_1.d.x, false, var_1.d.x))), var_1.d);
    var_3 = func_2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1000f, _wgslsmith_div_f32(var_3.a, _wgslsmith_f_op_f32(min(622f, var_3.a))), -382f, 1f), vec4<f32>(_wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(var_0.a.x + var_3.a), var_3.a, _wgslsmith_f_op_f32(829f + _wgslsmith_div_f32(-634f, var_0.b))), true)));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.b.xy, reverseBits(var_3.b.yx), 4294967295u << (~u_input.a.x % 32u), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(110f * 1446f)))), 289f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0.b)) * 969f), -1155f, all(var_1.d))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2142f))), ~var_1.c.zz);
}

