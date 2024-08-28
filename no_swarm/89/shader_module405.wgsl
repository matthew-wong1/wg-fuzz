struct Struct_1 {
    a: bool,
    b: f32,
    c: u32,
    d: f32,
    e: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec3<i32>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_2,
    c: Struct_1,
    d: vec2<f32>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<i32>,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec3<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 26>;

var<private> global1: array<Struct_2, 9>;

var<private> global2: vec2<i32>;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec2<u32>) -> f32 {
    let var_0 = vec2<u32>(_wgslsmith_dot_vec4_u32(global0[_wgslsmith_index_u32(arg_0.x, 26u)] ^ abs(global0[_wgslsmith_index_u32(21816u, 26u)] >> (global0[_wgslsmith_index_u32(u_input.c.x, 26u)] % vec4<u32>(32u))), ~_wgslsmith_sub_vec4_u32(firstTrailingBit(vec4<u32>(4294967295u, 95248u, u_input.c.x, 28786u)), vec4<u32>(31362u, 4294967295u, 55558u, arg_0.x))), _wgslsmith_clamp_u32(~(~arg_0.x), arg_0.x, 1u));
    var var_1 = ~min(_wgslsmith_dot_vec4_u32(~_wgslsmith_mult_vec4_u32(global0[_wgslsmith_index_u32(2421u, 26u)], vec4<u32>(41580u, u_input.c.x, 0u, u_input.c.x)), max(vec4<u32>(67619u, u_input.c.x, u_input.c.x, arg_0.x), vec4<u32>(9064u, var_0.x, arg_0.x, 53561u) ^ vec4<u32>(13269u, arg_0.x, var_0.x, 4294967295u))), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.x, u_input.c.x, 3379u, 4294967295u) ^ select(vec4<u32>(u_input.c.x, u_input.c.x, 2597u, 12133u), vec4<u32>(0u, arg_0.x, 5789u, u_input.c.x), true), vec4<u32>(min(var_0.x, 30328u), u_input.c.x, 4294967295u, u_input.c.x)));
    global1 = array<Struct_2, 9>();
    global0 = array<vec4<u32>, 26>();
    global1 = array<Struct_2, 9>();
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(445f))) + 1010f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -956f)))));
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: f32) -> bool {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-arg_2), arg_2, arg_0) - _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(611f * arg_1.b), -762f, arg_0), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1628f, -139f, arg_0), vec3<f32>(arg_0, arg_2, arg_1.d), arg_1.a))))) + _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_2, arg_0, 713f), vec3<f32>(arg_1.d, -510f, arg_0)))), vec3<f32>(800f, arg_1.d, _wgslsmith_f_op_f32(arg_2 - arg_0))))));
    var var_1 = reverseBits((firstTrailingBit(0i) | 0i) << (u_input.c.x % 32u));
    global0 = array<vec4<u32>, 26>();
    var var_2 = Struct_2(arg_1, 63364u, arg_1.e.xxz);
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1035f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.a.d) + -185f));
    return all(!select(vec3<bool>(any(vec3<bool>(false, var_2.a.a, var_2.a.a)), var_2.a.a, false), select(select(vec3<bool>(true, true, var_2.a.a), vec3<bool>(false, false, true), vec3<bool>(true, var_2.a.a, var_2.a.a)), !vec3<bool>(false, arg_1.a, true), select(vec3<bool>(var_2.a.a, false, var_2.a.a), vec3<bool>(false, var_2.a.a, true), arg_1.a)), select(select(vec3<bool>(false, arg_1.a, arg_1.a), vec3<bool>(var_2.a.a, true, arg_1.a), var_2.a.a), vec3<bool>(true, true, var_2.a.a), true)));
}

fn func_2() -> vec3<u32> {
    var var_0 = vec3<bool>(select(any(vec2<bool>(true, true)), _wgslsmith_clamp_i32(0i, _wgslsmith_clamp_i32(global2.x, u_input.a, 2147483647i), global2.x) == (22761i & u_input.d.x), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -268f), _wgslsmith_f_op_f32(floor(-1019f)))) >= 1f), any(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), false))) && func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec2<u32>(8009u, u_input.c.x))) + _wgslsmith_f_op_f32(f32(-1f) * -162f)), Struct_1(false, 1397f, reverseBits(u_input.c.x), -107f, vec4<i32>(u_input.b.x, global2.x, 1i, u_input.d.x) ^ vec4<i32>(global2.x, global2.x, -2147483647i, u_input.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1386f, -696f)) * 1000f)), !(!all(select(vec2<bool>(false, false), vec2<bool>(true, false), true))));
    let var_1 = global1[_wgslsmith_index_u32(~4294967295u, 9u)];
    let var_2 = _wgslsmith_clamp_i32(abs(global2.x), 1i, u_input.d.x) | u_input.a;
    global1 = array<Struct_2, 9>();
    var var_3 = countOneBits(~vec4<u32>(1u << (abs(u_input.c.x) % 32u), var_1.a.c, ~select(1u, 1u, var_0.x), 0u));
    return abs(select(countOneBits(max(_wgslsmith_sub_vec3_u32(vec3<u32>(var_1.a.c, var_3.x, 0u), vec3<u32>(4294967295u, 24965u, 1u)), u_input.c)), firstLeadingBit(_wgslsmith_clamp_vec3_u32(_wgslsmith_mult_vec3_u32(var_3.yzx, u_input.c), var_3.xwx, ~var_3.zxz)), vec3<bool>(true, var_1.a.a, true)));
}

fn func_1() -> vec2<u32> {
    global0 = array<vec4<u32>, 26>();
    var var_0 = _wgslsmith_mult_vec2_u32(vec2<u32>(firstTrailingBit(_wgslsmith_sub_u32(u_input.c.x, 1u)), u_input.c.x), ~u_input.c.xx);
    let var_1 = _wgslsmith_mult_vec3_u32(u_input.c, func_2());
    var var_2 = _wgslsmith_mult_vec3_u32(~u_input.c | vec3<u32>(max(var_0.x, firstTrailingBit(var_1.x)), _wgslsmith_mod_u32(63819u, 1u), abs(50763u)), _wgslsmith_sub_vec3_u32(~_wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(var_1, vec3<u32>(0u, 13677u, 4294967295u)), _wgslsmith_add_vec3_u32(var_1, var_1)), ~(_wgslsmith_div_vec3_u32(var_1, var_1) << (vec3<u32>(0u, var_1.x, 0u) % vec3<u32>(32u)))));
    global1 = array<Struct_2, 9>();
    return _wgslsmith_mod_vec2_u32(vec2<u32>(_wgslsmith_div_u32(~var_2.x | (var_0.x << (var_0.x % 32u)), 30067u), ~firstLeadingBit(u_input.c.x) & var_1.x), vec2<u32>(var_0.x, firstLeadingBit(0u)));
}

fn func_5(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: bool) -> u32 {
    global1 = array<Struct_2, 9>();
    global2 = arg_1.e.yz;
    global1 = array<Struct_2, 9>();
    var var_0 = Struct_2(Struct_1(arg_2, _wgslsmith_f_op_f32(arg_1.d - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_1.b)))), arg_0.x, _wgslsmith_f_op_f32(exp2(arg_1.b)), u_input.b), arg_1.c, vec3<i32>(_wgslsmith_dot_vec3_i32(arg_1.e.wyy, u_input.b.wzy), _wgslsmith_mult_i32(-1i, _wgslsmith_div_i32(arg_1.e.x, u_input.b.x)) << (arg_0.x % 32u), -(~(~(-1i)))));
    var var_1 = select(-vec4<i32>(_wgslsmith_mod_i32(u_input.d.x, _wgslsmith_clamp_i32(var_0.c.x, global2.x, arg_1.e.x)), select(reverseBits(global2.x), _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -2147483647i), u_input.d.yz), arg_2), _wgslsmith_sub_i32(24195i, -18941i), countOneBits(-global2.x)), vec4<i32>(var_0.c.x, 1i, arg_1.e.x, _wgslsmith_dot_vec2_i32(abs(vec2<i32>(-1i, -9558i)), u_input.b.xy)), !(!(true & (var_0.a.a | arg_1.a))));
    return _wgslsmith_dot_vec2_u32(abs(select(~firstLeadingBit(arg_0), abs(min(vec2<u32>(u_input.c.x, arg_0.x), vec2<u32>(u_input.c.x, 32608u))), !vec2<bool>(arg_1.a, false))), ~vec2<u32>((arg_0.x & arg_1.c) | _wgslsmith_dot_vec2_u32(arg_0, u_input.c.zx), arg_1.c << (~17867u % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_2, 9>();
    global1 = array<Struct_2, 9>();
    global1 = array<Struct_2, 9>();
    let var_0 = u_input.d.x;
    var var_1 = select(select(vec4<bool>(true, true, true, true), select(!select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true)), vec4<bool>(true, true, true, true), any(vec3<bool>(true, true, true))), !vec4<bool>(true, false, all(vec3<bool>(false, false, false)), false)), vec4<bool>(_wgslsmith_add_i32(-2147483647i, var_0) == _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(u_input.d.xwy, vec3<i32>(-2147483647i, u_input.d.x, -24214i)), _wgslsmith_sub_i32(0i, global2.x)), u_input.c.x > func_5(func_1(), Struct_1(false, 1801f, 90208u, -1005f, vec4<i32>(var_0, u_input.b.x, -36750i, 5621i)), true), any(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), any(select(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<bool>(false, true), true))), !select(vec4<bool>(true, 6170u < u_input.c.x, true, true), vec4<bool>(any(vec4<bool>(false, true, false, false)), true, true, select(false, true, false)), false));
    global2 = vec2<i32>(u_input.d.x, u_input.b.x);
    var var_2 = Struct_3(_wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(-1i, 1i), 13100i, -18416i) >> (u_input.c % vec3<u32>(32u)), -vec3<i32>(u_input.a, _wgslsmith_sub_i32(37316i, 17629i), global2.x)), global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(select(firstLeadingBit(vec4<u32>(0u, u_input.c.x, 1u, u_input.c.x)), countOneBits(global0[_wgslsmith_index_u32(20382u, 26u)]), func_4(-855f, Struct_1(true, 263f, 6598u, -1849f, vec4<i32>(30175i, u_input.d.x, u_input.d.x, var_0)), -1000f)), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 12117u), ~global0[_wgslsmith_index_u32(0u, 26u)])), 9u)], Struct_1(_wgslsmith_mod_u32(~u_input.c.x, _wgslsmith_sub_u32(1u, u_input.c.x)) == _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), firstLeadingBit(u_input.c.zx)), 388f, firstTrailingBit(u_input.c.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(856f, 1268f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-806f)))), ~firstTrailingBit(vec4<i32>(u_input.a, u_input.d.x, -1i, var_0) ^ vec4<i32>(-1i, var_0, var_0, global2.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(1667f * -1694f), 1f), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(vec2<f32>(-1579f, -1000f), vec2<f32>(-1305f, 914f)))))) - vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-273f + -1406f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-710f)), _wgslsmith_f_op_f32(563f - 1000f)))));
    let var_3 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_i32(var_0, -76681i), var_2.c.e, ~func_5(func_1() | vec2<u32>(48565u, 4294967295u), var_2.b.a, true), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(1000f, -106f), var_2.c.d)) - var_2.d.x), _wgslsmith_div_f32(var_2.b.a.b, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_2.d.x))))));
}

