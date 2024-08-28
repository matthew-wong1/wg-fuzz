struct Struct_1 {
    a: vec3<bool>,
    b: vec2<f32>,
    c: i32,
    d: bool,
    e: i32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: i32,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<f32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: f32) -> u32 {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 * 674f)) - -416f)), Struct_1(!(!select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), false)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(721f, arg_0), vec2<f32>(1000f, -1000f)) + _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(arg_0, arg_0)))) * vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1213f), -620f)), ~0i, true, _wgslsmith_mod_i32(-reverseBits(u_input.a), -13699i)), countOneBits(u_input.a), !vec4<bool>(true, true, u_input.a <= -u_input.a, (u_input.a | u_input.a) < ~u_input.a));
    var var_1 = u_input.b;
    var var_2 = ~firstLeadingBit(reverseBits(0u));
    var_1 = ~_wgslsmith_sub_u32(_wgslsmith_div_u32(u_input.b, _wgslsmith_mult_u32(60679u, u_input.b) | 1u), 4294967295u);
    var_0 = Struct_2(_wgslsmith_f_op_f32(var_0.b.b.x * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_0.b.b.x - _wgslsmith_f_op_f32(var_0.b.b.x - arg_0))))), var_0.b, _wgslsmith_sub_i32(max(_wgslsmith_add_i32(-var_0.c, -var_0.c), _wgslsmith_div_i32(u_input.a, u_input.a)), firstLeadingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, -2147483647i, u_input.a), select(vec3<i32>(var_0.b.e, -1i, u_input.a), vec3<i32>(0i, -2147483647i, 2147483647i), var_0.d.wxw)))), vec4<bool>(all(!select(var_0.b.a, var_0.b.a, var_0.b.a)), select(arg_0 > _wgslsmith_f_op_f32(arg_0 + arg_0), var_0.d.x, !var_0.b.d), true, _wgslsmith_mod_i32(var_0.c, -2147483647i) != 21769i));
    return ~17507u;
}

fn func_2(arg_0: vec2<bool>) -> Struct_1 {
    let var_0 = ~func_3(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(270f + -212f), -591f, arg_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2720f - -1000f)), any(!vec3<bool>(true, arg_0.x, arg_0.x)))));
    var var_1 = -2147483647i;
    var_1 = ~(i32(-1i) * -10411i);
    let var_2 = !(!vec4<bool>(true, arg_0.x, !select(true, arg_0.x, false), !arg_0.x));
    let var_3 = arg_0.x;
    return Struct_1(var_2.xwz, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-382f, -940f)), vec2<f32>(100f, -711f))) - vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2259f), _wgslsmith_f_op_f32(f32(-1f) * -1480f))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(589f, 529f), vec2<f32>(1911f, 976f))))))), -1i, var_2.x, ~1i);
}

fn func_1() -> Struct_1 {
    var var_0 = func_2(!vec2<bool>(true, !any(vec4<bool>(false, false, true, false))));
    let var_1 = any(vec2<bool>(false, _wgslsmith_f_op_f32(-var_0.b.x) > -2235f));
    var var_2 = Struct_2(1478f, func_2(!vec2<bool>(true, var_1 != false)), firstLeadingBit(_wgslsmith_mult_i32(u_input.a, ~1i | var_0.e)), vec4<bool>(!(~var_0.e < _wgslsmith_mod_i32(u_input.a, u_input.a)), !(_wgslsmith_f_op_f32(-var_0.b.x) == _wgslsmith_f_op_f32(-1022f + 820f)), false, abs(u_input.a) == _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, var_0.e, 26731i, 0i), vec4<i32>(var_0.c, 0i, var_0.c, 2147483647i)), abs(2147483647i))));
    var var_3 = _wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(~(~0u), abs(u_input.b) & abs(61593u)), 1u, 0u, ~(~82331u)), ~select(vec4<u32>(~u_input.b, 1u, u_input.b, _wgslsmith_sub_u32(29814u, 17722u)), ~(~vec4<u32>(u_input.b, u_input.b, 4294967295u, 4294967295u)), !select(var_2.d, vec4<bool>(var_0.a.x, true, true, false), vec4<bool>(false, var_1, false, var_2.b.d))), select(firstLeadingBit(vec4<u32>(u_input.b, 38459u, u_input.b, 33043u)) << (countOneBits(vec4<u32>(0u, u_input.b, 4294967295u, 29938u)) % vec4<u32>(32u)), (vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b) >> (vec4<u32>(25448u, u_input.b, 24579u, 10850u) % vec4<u32>(32u))) | vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b), vec4<bool>(true, var_1, var_2.d.x | var_0.a.x, false)) >> (vec4<u32>(u_input.b, _wgslsmith_mult_u32(4294967295u, u_input.b) >> (13850u % 32u), _wgslsmith_add_u32(_wgslsmith_clamp_u32(u_input.b, u_input.b, 16506u), u_input.b), max(_wgslsmith_clamp_u32(u_input.b, 9636u, u_input.b), 0u)) % vec4<u32>(32u)));
    let var_4 = -firstTrailingBit(~(vec3<i32>(-2147483647i, u_input.a, -2147483647i) >> (vec3<u32>(u_input.b, 4294967295u, 0u) % vec3<u32>(32u)))) | vec3<i32>(var_2.c, u_input.a, 2147483647i);
    return Struct_1(var_0.a, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_div_f32(var_2.b.b.x, var_2.b.b.x), -849f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(var_0.b, vec2<f32>(var_0.b.x, -898f))) + var_0.b)))), u_input.a, !any(var_0.a), ~(-10043i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = Struct_2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -466f))))), Struct_1(!vec3<bool>(0u > u_input.b, all(vec4<bool>(false, var_0.d, false, var_0.a.x)), true), vec2<f32>(var_0.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.x - var_0.b.x))), -92i, var_0.a.x, 75179i), ~_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.e, -var_0.e, _wgslsmith_sub_i32(-7149i, var_0.c)), vec3<i32>(u_input.a, firstTrailingBit(20793i), var_0.c)), select(select(select(select(vec4<bool>(true, true, var_0.d, true), vec4<bool>(true, false, true, var_0.d), true), !vec4<bool>(true, var_0.a.x, false, true), vec4<bool>(var_0.d, true, false, false)), vec4<bool>(var_0.a.x || var_0.a.x, false, -608f > var_0.b.x, false), var_0.d), !(!vec4<bool>(var_0.d, var_0.a.x, false, true)), _wgslsmith_div_f32(-679f, _wgslsmith_div_f32(-2862f, -340f)) < _wgslsmith_f_op_f32(-1303f - _wgslsmith_f_op_f32(ceil(var_0.b.x)))));
    var_1 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_0.b.x, func_2(vec2<bool>(var_1.d.x, true)).b.x, true & var_1.d.x)) + func_2(vec2<bool>(true, true)).b.x), func_1(), var_1.b.e ^ (u_input.a ^ 24972i), var_1.d);
    let var_2 = ~_wgslsmith_dot_vec4_u32(countOneBits(select(vec4<u32>(u_input.b, 4294967295u, u_input.b, u_input.b), vec4<u32>(54218u, u_input.b, 78178u, 1u), var_1.d)), ~(~vec4<u32>(u_input.b, 63556u, 3708u, u_input.b))) >> (11023u % 32u);
    let var_3 = var_1.b.c;
    var_1 = Struct_2(_wgslsmith_f_op_f32(select(var_0.b.x, func_2(vec2<bool>(!var_0.a.x, var_0.d)).b.x, true)), Struct_1(select(vec3<bool>(any(var_1.d.xww), func_1().d, var_1.b.a.x != var_0.d), func_2(var_1.d.wy).a, var_1.b.a), vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_1.a - var_0.b.x), var_1.a, true)), _wgslsmith_f_op_f32(var_0.b.x + _wgslsmith_f_op_f32(-var_0.b.x))), var_0.c, all(!func_1().a.xx), var_1.b.c), var_1.b.e, vec4<bool>(true, var_0.d, -277f <= var_0.b.x, all(vec3<bool>(var_1.d.x, var_1.b.d, true)) & true));
    var var_4 = Struct_2(var_1.b.b.x, var_0, var_1.c, vec4<bool>(var_0.a.x, -393f <= _wgslsmith_f_op_f32(sign(-2388f)), var_0.a.x, !all(var_1.d)));
    var_1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1299f)), var_4.b, _wgslsmith_mult_i32(-463i, max(var_4.b.e, reverseBits(var_0.c))), var_1.d);
    let var_5 = Struct_1(!func_1().a, _wgslsmith_div_vec2_f32(var_1.b.b, _wgslsmith_f_op_vec2_f32(-var_1.b.b)), u_input.a, var_4.b.a.x, _wgslsmith_dot_vec4_i32(~(~firstLeadingBit(vec4<i32>(31425i, -1i, var_4.c, -14629i))), _wgslsmith_mult_vec4_i32(~vec4<i32>(-1136i, var_1.c, -1i, 1i) | abs(vec4<i32>(-1i, var_0.e, var_1.c, var_1.b.c)), vec4<i32>(_wgslsmith_div_i32(u_input.a, u_input.a), u_input.a, var_1.b.c, -73566i))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec2_u32(min(vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_2, 0u, 39479u, var_2), vec4<u32>(0u, 71588u, u_input.b, u_input.b)), reverseBits(12068u)), ~vec2<u32>(u_input.b, u_input.b) >> (_wgslsmith_mod_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(u_input.b, 0u)) % vec2<u32>(32u))), vec2<u32>(select(38586u, _wgslsmith_mod_u32(41985u, u_input.b), var_4.d.x), _wgslsmith_mod_u32(148u, var_2 << (13267u % 32u)))), var_5.b, _wgslsmith_add_vec3_i32(abs(vec3<i32>(-8045i, u_input.a, -1i)) << (~(~vec3<u32>(var_2, u_input.b, 74625u)) % vec3<u32>(32u)), countOneBits(~vec3<i32>(var_1.c, 0i, var_1.b.e))));
}

