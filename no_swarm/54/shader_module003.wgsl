struct Struct_1 {
    a: vec3<bool>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
    d: vec4<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: f32,
}

struct Struct_4 {
    a: u32,
    b: bool,
    c: vec3<bool>,
    d: Struct_2,
    e: f32,
}

struct Struct_5 {
    a: Struct_2,
    b: vec4<u32>,
    c: Struct_1,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: Struct_5;

var<private> global2: Struct_2;

var<private> global3: array<vec2<bool>, 9>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: vec4<f32>, arg_3: vec4<bool>) -> vec4<bool> {
    let var_0 = abs(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(arg_1.c.b.yy, ~(~vec2<u32>(1u, global2.d.x))), ~(~1u)));
    let var_1 = _wgslsmith_div_f32(global1.d.a, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(-2068f))))))));
    global3 = array<vec2<bool>, 9>();
    let var_2 = global1.d;
    return arg_3;
}

fn func_4(arg_0: Struct_4, arg_1: vec4<bool>, arg_2: Struct_3, arg_3: vec3<f32>) -> vec2<bool> {
    var var_0 = -423f;
    var_0 = 441f;
    var_0 = _wgslsmith_f_op_f32(-arg_0.e);
    let var_1 = Struct_4(21579u, global1.a.c.a.x, global1.a.a.a, Struct_2(Struct_1(func_3(abs(vec3<i32>(global1.a.b, 2481i, 2147483647i)), Struct_2(Struct_1(vec3<bool>(global2.e.a.x, arg_0.d.e.a.x, false), vec4<u32>(u_input.a.x, 4294967295u, 0u, global2.a.b.x)), u_input.c, global2.a, global1.c.b, Struct_1(vec3<bool>(global0.x, true, arg_1.x), vec4<u32>(4294967295u, arg_0.a, global1.c.b.x, global2.e.b.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(186f, 251f, 221f, global1.d.a) - vec4<f32>(global1.d.a, -157f, arg_3.x, global1.d.b)), vec4<bool>(true, false, true, false)).wxy, vec4<u32>(1u, firstTrailingBit(u_input.a.x), 0u, 1u)), u_input.c, arg_0.d.a, countOneBits(global1.b & vec4<u32>(arg_0.a, 4294967295u, 0u, arg_0.a)) << (firstLeadingBit(~vec4<u32>(31285u, 28341u, 4294967295u, 0u)) % vec4<u32>(32u)), Struct_1(vec3<bool>(true, true, true), _wgslsmith_mult_vec4_u32(~vec4<u32>(0u, 1u, global2.c.b.x, 44596u), ~vec4<u32>(arg_0.d.a.b.x, global2.c.b.x, 27328u, global1.c.b.x)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_3.x * arg_0.e), arg_2.a, global2.c.a.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.e), 584f))));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.e * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -528f)))));
    return vec2<bool>(!global2.a.a.x, var_1.d.c.b.x >= max(~15214u, ~firstLeadingBit(4294967295u)));
}

fn func_2(arg_0: f32) -> Struct_2 {
    let var_0 = Struct_5(global1.a, abs(global1.a.d), global2.a, global1.d);
    let var_1 = 20269i;
    global2 = global1.a;
    global0 = !func_4(Struct_4(_wgslsmith_sub_u32(global1.c.b.x & var_0.a.d.x, abs(16981u)), select(any(global2.c.a), global2.a.a.x, true), global2.c.a, global1.a, -1170f), select(select(vec4<bool>(true, true, global0.x, var_0.a.e.a.x), select(vec4<bool>(false, global2.e.a.x, false, global1.a.e.a.x), vec4<bool>(global1.c.a.x, false, global1.c.a.x, true), vec4<bool>(var_0.a.a.a.x, false, var_0.c.a.x, false)), !global0.x), select(vec4<bool>(true, global2.a.a.x, true, true), select(vec4<bool>(true, false, true, global0.x), vec4<bool>(false, false, global1.c.a.x, false), vec4<bool>(global2.e.a.x, global1.a.e.a.x, false, false)), func_3(vec3<i32>(u_input.c, u_input.c, 0i), var_0.a, vec4<f32>(984f, var_0.d.b, global1.d.b, var_0.d.a), vec4<bool>(true, global1.c.a.x, false, false))), func_3(vec3<i32>(var_1, 2147483647i, 6483i), Struct_2(global1.a.c, -1i, var_0.c, global2.d, var_0.c), _wgslsmith_f_op_vec4_f32(vec4<f32>(-2853f, -272f, arg_0, arg_0) * vec4<f32>(-2230f, arg_0, arg_0, 2330f)), vec4<bool>(false, global0.x, global2.a.a.x, false))), var_0.d, vec3<f32>(1161f, 119f, 768f));
    global0 = vec2<bool>(var_0.c.a.x, !(~(var_0.b.x | u_input.b) < 29272u));
    return global1.a;
}

fn func_1(arg_0: Struct_5, arg_1: Struct_5, arg_2: vec2<f32>, arg_3: Struct_3) -> Struct_2 {
    return func_2(arg_3.b);
}

fn func_5(arg_0: Struct_4) -> Struct_4 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.e, arg_0.e));
    let var_1 = global1.a.a.a.x;
    let var_2 = arg_0;
    global0 = vec2<bool>(all(!func_3(_wgslsmith_sub_vec3_i32(vec3<i32>(11366i, global2.b, 0i), vec3<i32>(global1.a.b, global1.a.b, u_input.c)), arg_0.d, vec4<f32>(arg_0.e, arg_0.e, arg_0.e, arg_0.e), !vec4<bool>(true, arg_0.b, true, false))), all(select(vec2<bool>(global0.x, false), !vec2<bool>(global2.c.a.x, true), var_2.c.x)) && ((false | func_2(-1593f).e.a.x) || true));
    global2 = func_1(Struct_5(arg_0.d, _wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(global2.a.b ^ vec4<u32>(26360u, 11215u, global1.c.b.x, 10085u), ~vec4<u32>(var_2.d.c.b.x, arg_0.d.a.b.x, 4294967295u, var_2.a)), func_2(_wgslsmith_f_op_f32(var_0.x * var_2.e)).a.b), func_2(var_2.e).a, global1.d), Struct_5(Struct_2(func_1(Struct_5(Struct_2(Struct_1(global1.a.a.a, vec4<u32>(1u, 0u, 4294967295u, 9228u)), var_2.d.b, Struct_1(vec3<bool>(global0.x, var_2.c.x, true), global2.a.b), global1.c.b, Struct_1(vec3<bool>(global2.c.a.x, var_2.d.c.a.x, global2.c.a.x), var_2.d.c.b)), arg_0.d.d, global1.c, Struct_3(1439f, -203f)), Struct_5(Struct_2(var_2.d.a, global2.b, global2.e, vec4<u32>(1u, global1.a.e.b.x, 48235u, global1.b.x), Struct_1(arg_0.c, vec4<u32>(0u, global1.a.e.b.x, u_input.b, global2.a.b.x))), global1.c.b, Struct_1(vec3<bool>(false, true, true), vec4<u32>(39289u, global1.b.x, var_2.a, 4294967295u)), Struct_3(arg_0.e, var_2.e)), _wgslsmith_f_op_vec2_f32(min(var_0, vec2<f32>(703f, -1091f))), Struct_3(-878f, arg_0.e)).c, global1.a.b, global2.a, _wgslsmith_sub_vec4_u32(~vec4<u32>(49603u, u_input.b, 18287u, var_2.a), ~vec4<u32>(var_2.d.c.b.x, 50940u, 61817u, global1.b.x)), Struct_1(global2.e.a, ~global1.b)), vec4<u32>(countOneBits(max(arg_0.d.d.x, 58472u)), _wgslsmith_clamp_u32(_wgslsmith_add_u32(u_input.b, 4294967295u), 3677u, max(u_input.b, 47061u)), 1u, 63573u), func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(785f + arg_0.e) + 800f)).e, Struct_3(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(arg_0.e, arg_0.e, true)), -912f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0)), Struct_3(arg_0.e, -547f));
    return Struct_4(68490u, !(global2.e.a.x | false), vec3<bool>(select(var_2.c.x, global0.x, true), true, !(-2147483647i <= global1.a.b)), global1.a, _wgslsmith_f_op_f32(step(arg_0.e, _wgslsmith_f_op_f32(_wgslsmith_div_f32(2211f, -1324f) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global1.d.b * 270f), -1496f, 0u != var_2.d.a.b.x))))));
}

fn func_6(arg_0: u32, arg_1: Struct_4, arg_2: f32) -> Struct_2 {
    var var_0 = vec2<f32>(_wgslsmith_div_f32(176f, -602f), func_5(Struct_4(1u, all(vec4<bool>(false, global1.a.e.a.x, global2.c.a.x, true)), arg_1.d.a.a, arg_1.d, 942f)).e);
    var var_1 = vec2<bool>(true, !select(arg_1.d.e.a.x, _wgslsmith_clamp_u32(global1.c.b.x, u_input.a.x, 43815u) < _wgslsmith_clamp_u32(3223u, 0u, arg_1.d.d.x), _wgslsmith_f_op_f32(-1254f * arg_1.e) >= arg_1.e));
    global3 = array<vec2<bool>, 9>();
    let var_2 = vec2<i32>(arg_1.d.b, _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(_wgslsmith_add_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.c, 1i), vec2<i32>(global1.a.b, global1.a.b)), countOneBits(vec2<i32>(arg_1.d.b, -9149i))), reverseBits(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.c, global2.b), vec2<i32>(global2.b, -29551i), vec2<i32>(u_input.c, 1i)))), _wgslsmith_mult_vec2_i32(-vec2<i32>(0i, -2147483647i), _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.c, 0i), vec2<i32>(global1.a.b, 1i))) ^ abs(-vec2<i32>(39688i, 0i))));
    let var_3 = vec4<u32>(~_wgslsmith_dot_vec2_u32(~(vec2<u32>(global1.a.d.x, 0u) & global2.e.b.zx), ~(~arg_1.d.d.yz)), _wgslsmith_dot_vec3_u32(global1.a.c.b.yzy | arg_1.d.d.ywx, vec3<u32>(~min(global1.c.b.x, global2.a.b.x), reverseBits(46091u), global2.a.b.x)), _wgslsmith_dot_vec3_u32(~u_input.a, ~func_1(Struct_5(Struct_2(Struct_1(global1.c.a, vec4<u32>(arg_1.a, 23466u, arg_0, arg_0)), -1i, Struct_1(global1.a.a.a, arg_1.d.c.b), global2.e.b, arg_1.d.c), vec4<u32>(arg_1.d.a.b.x, 17174u, arg_1.a, 4294967295u), Struct_1(vec3<bool>(global2.e.a.x, false, global2.a.a.x), global1.b), global1.d), Struct_5(Struct_2(global1.a.c, u_input.c, global1.a.c, global1.b, Struct_1(arg_1.c, vec4<u32>(global1.c.b.x, 1u, 0u, 4294967295u))), arg_1.d.c.b, Struct_1(vec3<bool>(var_1.x, true, false), vec4<u32>(global1.a.d.x, arg_0, u_input.a.x, 34087u)), Struct_3(arg_2, -1596f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(447f, 200f) * vec2<f32>(-146f, global1.d.a)), global1.d).d.xzw), u_input.a.x);
    return Struct_2(Struct_1(vec3<bool>(global0.x, !(var_2.x > arg_1.d.b), true), func_1(Struct_5(Struct_2(Struct_1(arg_1.c, vec4<u32>(49500u, arg_1.d.c.b.x, 0u, 48006u)), 38053i, Struct_1(arg_1.c, vec4<u32>(arg_0, global1.b.x, var_3.x, u_input.a.x)), vec4<u32>(79273u, 4294967295u, arg_1.d.d.x, global2.a.b.x), Struct_1(global2.e.a, global1.a.c.b)), var_3, arg_1.d.a, global1.d), Struct_5(func_1(Struct_5(Struct_2(global2.a, -23686i, arg_1.d.e, vec4<u32>(arg_1.a, u_input.a.x, u_input.a.x, var_3.x), arg_1.d.c), var_3, arg_1.d.c, global1.d), Struct_5(global1.a, vec4<u32>(4294967295u, 0u, arg_0, 1u), global2.c, global1.d), vec2<f32>(-399f, 417f), Struct_3(-903f, -478f)), ~vec4<u32>(46523u, 0u, arg_1.a, 37027u), Struct_1(global2.c.a, var_3), Struct_3(global1.d.a, arg_1.e)), vec2<f32>(-550f, _wgslsmith_f_op_f32(min(var_0.x, var_0.x))), Struct_3(-277f, _wgslsmith_f_op_f32(-arg_1.e))).e.b), arg_1.d.b, arg_1.d.e, var_3, arg_1.d.e);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !vec3<bool>(!any(vec2<bool>(true, true)) || any(select(global1.c.a, vec3<bool>(true, global2.c.a.x, true), true)), !global1.a.a.a.x, true);
    let var_1 = true;
    global0 = global2.a.a.yx;
    let var_2 = func_6(_wgslsmith_add_u32(~_wgslsmith_dot_vec3_u32(abs(u_input.a), u_input.a >> (global2.e.b.wwz % vec3<u32>(32u))), u_input.a.x), func_5(Struct_4(~1u, ~u_input.b < global1.a.c.b.x, vec3<bool>(any(global3[_wgslsmith_index_u32(u_input.b, 9u)]), !global2.a.a.x, any(vec4<bool>(var_1, var_0.x, false, false))), func_1(Struct_5(Struct_2(global2.c, 2147483647i, global2.a, vec4<u32>(global1.a.a.b.x, global1.a.d.x, 125173u, 13586u), global1.c), global2.a.b, Struct_1(var_0, global1.c.b), Struct_3(global1.d.b, global1.d.b)), Struct_5(Struct_2(global1.a.e, global2.b, global2.c, global1.c.b, global1.a.c), global2.e.b, Struct_1(global2.e.a, global1.b), Struct_3(-309f, -1138f)), vec2<f32>(global1.d.a, 990f), global1.d), 981f)), global1.d.a);
    var var_3 = global2.c.a;
    var var_4 = var_3.yx;
    let var_5 = global1.a.e.b;
    var var_6 = Struct_3(_wgslsmith_f_op_f32(642f * 1000f), _wgslsmith_f_op_f32(-global1.d.b));
    let x = u_input.a;
    s_output = StorageBuffer(global2.c.b.x, ~(~_wgslsmith_sub_u32(~var_5.x, global2.e.b.x)), _wgslsmith_f_op_f32(410f * _wgslsmith_f_op_f32(var_6.a - -1356f)));
}

