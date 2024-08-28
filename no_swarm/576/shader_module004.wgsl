struct Struct_1 {
    a: f32,
    b: vec3<i32>,
    c: f32,
    d: vec3<f32>,
}

struct Struct_2 {
    a: bool,
    b: i32,
    c: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: u32,
    d: vec4<f32>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
    c: vec4<bool>,
}

struct Struct_5 {
    a: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec4<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<vec3<bool>, 21>;

var<private> global2: array<vec3<i32>, 8> = array<vec3<i32>, 8>(vec3<i32>(-1i, 1i, -1i), vec3<i32>(-1i, 2147483647i, i32(-2147483648)), vec3<i32>(-1i, 11562i, -1i), vec3<i32>(54627i, -25848i, 75789i), vec3<i32>(1i, 1i, 46586i), vec3<i32>(-1i, -3483i, 2147483647i), vec3<i32>(2147483647i, 2147483647i, 2147483647i), vec3<i32>(-21720i, -36627i, 88928i));

var<private> global3: Struct_2;

var<private> global4: Struct_3 = Struct_3(Struct_1(535f, vec3<i32>(-5147i, 173i, 5685i), -1476f, vec3<f32>(2602f, -764f, 1000f)), 0u, 4294967295u, vec4<f32>(561f, -846f, 1454f, 1127f));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<f32>, arg_1: u32) -> vec3<u32> {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global4.a.d.x, global4.a.d.x)), global4.d.x)) > _wgslsmith_f_op_f32(round(1959f)), -_wgslsmith_dot_vec4_i32(u_input.c, ~u_input.c), abs(~global3.c));
    global2 = array<vec3<i32>, 8>();
    var var_1 = _wgslsmith_f_op_vec4_f32(global4.d * vec4<f32>(342f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1f))), -680f, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global4.d.x * 1892f), -1526f), global4.d.x, true))));
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -174f);
    let var_3 = !vec4<bool>(false, 4294967295u > var_0.c, false, any(vec2<bool>(true, true)));
    return ~(~u_input.a >> ((vec3<u32>(4294967295u, var_0.c, 40289u) ^ vec3<u32>(global4.b, global4.c, global3.c)) % vec3<u32>(32u))) << (((vec3<u32>(arg_1, reverseBits(0u), global4.b) ^ vec3<u32>(_wgslsmith_sub_u32(global4.c, u_input.b), firstLeadingBit(global3.c), _wgslsmith_mod_u32(1u, 33180u))) ^ select(u_input.a, ~(~u_input.a), all(var_3.yz))) % vec3<u32>(32u));
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_5) -> Struct_1 {
    var var_0 = min(_wgslsmith_div_vec3_u32(~(~vec3<u32>(global4.c, u_input.a.x, global4.b) ^ ~vec3<u32>(u_input.b, 0u, global4.b)), vec3<u32>(~13421u, 0u, u_input.a.x) ^ func_3(vec2<f32>(global4.a.d.x, 297f), 22750u)), _wgslsmith_sub_vec3_u32(u_input.a, u_input.a));
    var var_1 = firstLeadingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_add_u32(27102u, 1u), countOneBits(126411u), global4.c, firstTrailingBit(global3.c)) ^ vec4<u32>(~4294967295u, 4294967295u, ~u_input.b, 16677u), ~countOneBits(vec4<u32>(var_0.x, var_0.x, 1u, 4294967295u)) | abs(~vec4<u32>(var_0.x, 33471u, 4294967295u, 4294967295u))));
    var var_2 = min(_wgslsmith_div_i32(-u_input.d.x, 28452i), 1i);
    let var_3 = vec3<bool>(true, false, all(vec3<bool>(false, global3.a, arg_1.a)));
    var_1 = vec4<u32>(25694u, _wgslsmith_clamp_u32(u_input.a.x, _wgslsmith_div_u32(u_input.b >> (global4.c % 32u), _wgslsmith_dot_vec3_u32(~vec3<u32>(49859u, arg_0.x, 0u), var_1.yxx)), countOneBits(_wgslsmith_add_u32(var_1.x, 0u) ^ var_0.x)), ~1u << ((_wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.b), ~var_1.ww) & ~abs(46330u)) % 32u), _wgslsmith_add_u32(55361u, global3.c));
    return Struct_1(global4.a.a, u_input.c.wxy, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global4.d.x, -929f)) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global4.d.x, global4.a.d.x)) * global4.a.c), -237f))), _wgslsmith_f_op_vec3_f32(-global4.a.d));
}

fn func_1(arg_0: vec3<f32>, arg_1: vec4<u32>) -> Struct_4 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-global4.a.d.zx);
    var var_1 = func_2(countOneBits(vec4<u32>(global4.c, 0u, max(global3.c, u_input.a.x), ~global3.c)) ^ ~(~vec4<u32>(arg_1.x, arg_1.x, 124953u, global4.c)), Struct_5(global3.a));
    let var_2 = min(-vec4<i32>(-(~21814i), ~global4.a.b.x, _wgslsmith_sub_i32(var_1.b.x, u_input.c.x | u_input.d.x), select(func_2(arg_1, Struct_5(true)).b.x, ~2147483647i, true)), vec4<i32>(0i, min(-6976i << (u_input.b % 32u), 32501i), var_1.b.x, reverseBits(global3.b)) & u_input.d);
    let var_3 = Struct_4(Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.a.d.x)) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -562f) + _wgslsmith_f_op_f32(-var_0.x)), var_1.b.x, firstTrailingBit(0u)), Struct_1(1297f, firstTrailingBit(global2[_wgslsmith_index_u32(global3.c, 8u)]), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4.d.x) * _wgslsmith_f_op_f32(-arg_0.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.d.x, arg_0.x, -582f)))), !vec4<bool>(global3.a, !global3.a, !(global3.a || false), true & all(vec4<bool>(false, true, global3.a, global3.a))));
    var var_4 = ~select(arg_1.x, _wgslsmith_add_u32(_wgslsmith_mult_u32(8908u, global3.c), reverseBits(~var_3.a.c)), !(!var_3.c.x));
    return Struct_4(var_3.a, var_3.b, !vec4<bool>(true, !(!global3.a), any(!vec3<bool>(var_3.a.a, true, global3.a)), any(vec2<bool>(true, var_3.c.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global4.a.d.x;
    var var_1 = func_1(global4.d.wxz, vec4<u32>(~global3.c, select(0u, 37691u, global3.a), 68021u, _wgslsmith_mult_u32(_wgslsmith_add_u32(5025u, 33811u), ~global3.c << ((global3.c ^ global4.b) % 32u))));
    let var_2 = !((max(global4.a.b.x, _wgslsmith_mult_i32(-2147483647i, 0i)) < -(~41926i)) && global3.a);
    global3 = func_1(var_1.b.d, _wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(~firstTrailingBit(vec4<u32>(global4.c, global4.b, u_input.b, 23291u)), ~(~vec4<u32>(20118u, 4294967295u, 26554u, 14467u))), firstTrailingBit(min(vec4<u32>(0u, global3.c, var_1.a.c, 25568u) ^ vec4<u32>(u_input.a.x, var_1.a.c, 92361u, 10857u), ~vec4<u32>(50022u, 15927u, 2039u, 4294967295u))))).a;
    global1 = array<vec3<bool>, 21>();
    var var_3 = Struct_4(Struct_2(false, global3.b, _wgslsmith_clamp_u32(reverseBits(var_1.a.c), var_1.a.c & firstTrailingBit(u_input.b), u_input.a.x)), func_1(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global4.d.x, var_1.b.d.x, var_1.b.c)))))), ~(~abs(vec4<u32>(31896u, global4.c, u_input.a.x, 290u)))).b, !(!var_1.c));
    let var_4 = Struct_4(Struct_2(var_1.a.a, 2176i, 82965u), var_1.b, vec4<bool>(false, var_3.a.a, var_2, true));
    global0 = var_2;
    global4 = Struct_3(Struct_1(var_1.b.d.x, var_1.b.b, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_4.b.d.x - _wgslsmith_div_f32(var_1.b.a, -149f)), _wgslsmith_div_f32(global4.d.x, var_3.b.a))), var_1.b.d), global3.c, 44013u, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(global4.d, global4.d)) + _wgslsmith_f_op_vec4_f32(-global4.d)))), global4.d)));
    let x = u_input.a;
    s_output = StorageBuffer(-(vec3<i32>(-1i) * -vec3<i32>(global3.b, -2147483647i, -1i)), _wgslsmith_f_op_f32(-global4.d.x));
}

