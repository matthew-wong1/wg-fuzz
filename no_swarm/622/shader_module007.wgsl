struct Struct_1 {
    a: vec2<f32>,
    b: f32,
    c: vec3<bool>,
    d: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: vec2<i32>,
    d: u32,
    e: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: f32,
    c: vec3<bool>,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 12> = array<i32, 12>(2147483647i, 2147483647i, 8740i, 2147483647i, 0i, -44075i, 23274i, -6647i, i32(-2147483648), 0i, -1677i, -1i);

var<private> global1: u32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
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

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3() -> u32 {
    let var_0 = select(select(vec2<bool>(false, any(vec2<bool>(true, true))), vec2<bool>(select(true, any(vec2<bool>(true, false)), select(false, false, false)), all(select(vec2<bool>(true, false), vec2<bool>(false, false), true))), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true))), vec2<bool>(all(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), true), select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, false)), vec4<bool>(true, true, true, true))), true), vec2<bool>(true && select(true, any(vec2<bool>(true, true)), false), true));
    let var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-574f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-248f - -1705f) * _wgslsmith_f_op_f32(977f - _wgslsmith_f_op_f32(2350f + 1088f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1158f, -783f)))));
    var var_2 = Struct_4(4294967295u, _wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(f32(-1f) * -440f)), !vec3<bool>(all(select(var_0, var_0, var_0)), any(var_0), true), var_0);
    var var_3 = select(select(!select(select(vec4<bool>(false, true, var_2.c.x, true), vec4<bool>(var_0.x, var_0.x, var_0.x, var_2.c.x), true), vec4<bool>(var_0.x, var_2.c.x, var_2.d.x, true), all(vec4<bool>(var_2.d.x, false, var_2.c.x, true))), vec4<bool>(true, false, any(var_2.c.zx), false), true), vec4<bool>((firstLeadingBit(global0[_wgslsmith_index_u32(1u, 12u)]) >> (max(4294967295u, var_2.a) % 32u)) >= -17645i, any(var_2.c), var_2.c.x, (true != var_2.c.x) || any(select(vec4<bool>(var_0.x, var_0.x, var_0.x, var_2.d.x), vec4<bool>(var_0.x, true, false, var_2.c.x), var_2.d.x))), select(vec4<bool>(var_2.c.x | var_0.x, all(select(vec2<bool>(var_2.d.x, true), var_2.c.yx, var_2.c.yz)), var_0.x, true), select(vec4<bool>(var_2.a > 12180u, var_2.c.x, false, any(vec4<bool>(var_2.c.x, false, var_2.c.x, var_0.x))), vec4<bool>(true, var_0.x, var_2.c.x, true), any(vec4<bool>(true, true, var_2.d.x, true)) == (var_0.x & var_0.x)), any(vec4<bool>(var_2.d.x, var_2.a < 1u, any(var_2.c.xy), 68857u < var_2.a))));
    var var_4 = _wgslsmith_div_u32(firstTrailingBit(_wgslsmith_dot_vec2_u32(abs(~vec2<u32>(0u, var_2.a)), abs(firstTrailingBit(vec2<u32>(48833u, 51606u))))), ~abs(abs(~var_2.a)));
    return 0u;
}

fn func_2(arg_0: i32) -> i32 {
    global0 = array<i32, 12>();
    global1 = ~(~abs(67579u));
    let var_0 = 0u;
    var var_1 = vec2<u32>(~max(~31946u, func_3()), var_0);
    let var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2059f, 543f)), vec2<f32>(450f, -1846f), vec2<bool>(true, true))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-828f, 313f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1056f)))), !vec3<bool>(!(var_0 < 1u), false, all(vec3<bool>(true, false, false))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-872f, _wgslsmith_f_op_f32(-191f * -1000f)))), _wgslsmith_div_f32(-406f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(-1646f)), _wgslsmith_f_op_f32(-1000f + -749f), all(vec3<bool>(true, true, false)))))));
    return (i32(-1i) * -1i) << (_wgslsmith_div_u32(8724u, var_1.x) % 32u);
}

fn func_4(arg_0: vec3<i32>) -> Struct_3 {
    var var_0 = true;
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(ceil(-1000f)), _wgslsmith_f_op_f32(f32(-1f) * -1003f)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(2271f, -655f)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(759f, 919f)))) + vec2<f32>(440f, -156f))), 1f, !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1075f, 588f))), -171f));
    let var_2 = min(~(~vec4<u32>(1u, 1u, 1u, 1u)), min(vec4<u32>(select(min(18721u, 7843u), 1u, var_1.c.x & false), _wgslsmith_mod_u32(1u, ~1u), ~51683u, 111017u), ~vec4<u32>(1u, 1u, 1u, 1u)));
    let var_3 = Struct_3(Struct_2(Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.d), var_1.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b + var_1.a.x)), var_1.c, _wgslsmith_div_vec2_f32(var_1.d, var_1.d)), select(select(select(vec4<bool>(true, var_1.c.x, var_1.c.x, var_1.c.x), vec4<bool>(false, false, var_1.c.x, true), true), vec4<bool>(true, var_1.c.x, var_1.c.x, var_1.c.x), true), !(!vec4<bool>(var_1.c.x, true, var_1.c.x, true)), vec4<bool>(false, all(vec2<bool>(true, var_1.c.x)), any(var_1.c), var_1.c.x)), countOneBits(arg_0.zy), _wgslsmith_dot_vec2_u32(~var_2.yx, ~var_2.zx), u_input.a), 7813u == var_2.x, var_1);
    global1 = min(68465u, _wgslsmith_mod_u32(var_3.a.d, ~_wgslsmith_sub_u32(~81414u, 1u)));
    return var_3;
}

fn func_1(arg_0: vec2<f32>, arg_1: vec4<i32>) -> f32 {
    var var_0 = func_4(_wgslsmith_add_vec3_i32(abs(~arg_1.xyw), vec3<i32>(-1i, func_2(firstLeadingBit(u_input.a)), _wgslsmith_clamp_i32(-u_input.a, _wgslsmith_clamp_i32(global0[_wgslsmith_index_u32(0u, 12u)], 2147483647i, 0i), -2121i))));
    global0 = array<i32, 12>();
    var_0 = Struct_3(Struct_2(func_4(firstLeadingBit(arg_1.zyw)).c, var_0.a.b, arg_1.wy, _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(~vec4<u32>(var_0.a.d, var_0.a.d, var_0.a.d, 25474u), vec4<u32>(var_0.a.d, 65557u, 61571u, var_0.a.d)), ~vec4<u32>(59768u, 1u, var_0.a.d, var_0.a.d)), -2147483647i), all(!(!func_4(arg_1.wzz).a.b)), func_4(reverseBits(arg_1.xyz)).c);
    let var_1 = _wgslsmith_f_op_f32(-var_0.c.d.x);
    global1 = var_0.a.d >> (_wgslsmith_dot_vec3_u32(vec3<u32>(0u, ~4294967295u, 3098u ^ var_0.a.d) >> (~abs(vec3<u32>(var_0.a.d, var_0.a.d, var_0.a.d)) % vec3<u32>(32u)), ~vec3<u32>(max(var_0.a.d, var_0.a.d), 0u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 4294967295u, var_0.a.d, var_0.a.d), vec4<u32>(var_0.a.d, var_0.a.d, var_0.a.d, 0u)))) % 32u);
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(234f, _wgslsmith_f_op_f32(var_1 - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(-var_0.c.b))))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<bool>(true, false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2546f, 978f)), -vec4<i32>(13872i, global0[_wgslsmith_index_u32(80075u, 12u)], u_input.a, u_input.a))) - 271f) < 492f);
    var var_1 = !vec3<bool>(var_0.x, true, all(func_4(-vec3<i32>(global0[_wgslsmith_index_u32(4294967295u, 12u)], global0[_wgslsmith_index_u32(0u, 12u)], 2147483647i)).c.c.zy));
    var var_2 = Struct_4(_wgslsmith_sub_u32(_wgslsmith_add_u32(1u, _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, 1u), vec2<u32>(0u, 0u)), vec2<u32>(1u, 1u))), 9352u), -855f, func_4(countOneBits(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, global0[_wgslsmith_index_u32(1u, 12u)], global0[_wgslsmith_index_u32(0u, 12u)]), vec3<i32>(global0[_wgslsmith_index_u32(0u, 12u)], 0i, global0[_wgslsmith_index_u32(4294967295u, 12u)])) & vec3<i32>(2364i, -1i, u_input.a))).a.a.c, vec2<bool>(false, !(~global0[_wgslsmith_index_u32(11933u, 12u)] >= -global0[_wgslsmith_index_u32(1977u, 12u)])));
    var var_3 = func_4(min(~(-_wgslsmith_add_vec3_i32(vec3<i32>(30653i, 12094i, global0[_wgslsmith_index_u32(111238u, 12u)]), vec3<i32>(-80903i, 1i, 48963i))), vec3<i32>(~0i, 26193i, global0[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_mod_u32(0u, 54918u)), 12u)]))).c;
    var_0 = !var_3.c;
    global0 = array<i32, 12>();
    var var_4 = Struct_4(_wgslsmith_dot_vec4_u32(select(~select(vec4<u32>(var_2.a, 77035u, var_2.a, var_2.a), vec4<u32>(0u, var_2.a, 0u, var_2.a), var_0.x), vec4<u32>(4294967295u, var_2.a, 1u, _wgslsmith_sub_u32(var_2.a, 1u)), var_0.x), vec4<u32>(~reverseBits(var_2.a), 55725u, ~reverseBits(41920u), var_2.a)), 1581f, vec3<bool>(select(true, true, var_2.b < 1264f) && any(vec4<bool>(var_0.x, var_3.c.x, var_0.x, false)), false, global0[_wgslsmith_index_u32(~24493u, 12u)] < ~(-2147483647i)), vec2<bool>(true, false != var_0.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-954f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_3.b, var_3.b)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.b))), _wgslsmith_mult_i32(u_input.a, select(i32(-1i) * -1i, abs(~2294i), (var_4.c.x & var_1.x) == true)));
}

