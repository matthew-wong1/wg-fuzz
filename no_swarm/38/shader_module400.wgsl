struct Struct_1 {
    a: vec4<bool>,
    b: vec2<u32>,
    c: i32,
    d: u32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: u32,
    d: Struct_1,
    e: vec4<i32>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec2<bool>,
    c: vec2<bool>,
    d: u32,
    e: bool,
}

struct Struct_4 {
    a: vec3<f32>,
    b: bool,
    c: vec3<bool>,
    d: u32,
    e: i32,
}

struct Struct_5 {
    a: vec2<u32>,
    b: Struct_1,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5;

var<private> global1: Struct_5;

var<private> global2: vec4<u32> = vec4<u32>(0u, 1u, 4294967295u, 4294967295u);

var<private> global3: Struct_4;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> u32 {
    let var_0 = Struct_2(any(select(global1.b.a.zy, global1.b.a.xw, all(vec2<bool>(global1.b.a.x, false)))), global0.b, 18999u, global0.b, ~max(reverseBits(vec4<i32>(global0.b.c, global0.b.c, global1.b.c, global1.b.c)), ~(~vec4<i32>(global1.b.c, 0i, 2147483647i, global3.e))));
    var var_1 = _wgslsmith_mult_u32(firstLeadingBit(firstTrailingBit(~1u)), var_0.c);
    var var_2 = Struct_1(select(global1.b.a, vec4<bool>(!any(vec4<bool>(global0.b.a.x, false, false, global0.b.a.x)), global1.b.a.x, !all(global1.b.a.wyz), true != (0u > global2.x)), !var_0.d.a), _wgslsmith_add_vec2_u32(countOneBits(vec2<u32>(~global0.a.x, global3.d)), var_0.b.b), var_0.e.x, global2.x);
    let var_3 = _wgslsmith_mult_u32(_wgslsmith_clamp_u32(var_0.b.d, 77716u, 1u), global1.b.b.x);
    global1 = Struct_5(vec2<u32>(25462u, firstLeadingBit(firstLeadingBit(~4294967295u))), Struct_1(select(!global1.b.a, vec4<bool>(!global1.b.a.x, global1.b.a.x, false, !var_2.a.x), global0.b.a.x), firstLeadingBit(~global0.a), 2147483647i, ~global0.b.d), global0.c);
    return 25270u;
}

fn func_2(arg_0: Struct_1, arg_1: f32) -> vec2<u32> {
    var var_0 = !(global3.c.x | (((11896u >> (arg_0.d % 32u)) | arg_0.d) >= countOneBits(~u_input.b)));
    let var_1 = ~_wgslsmith_dot_vec2_u32(vec2<u32>(global3.d, _wgslsmith_sub_u32(global1.b.b.x, 23614u)), _wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, ~40769u), global1.a));
    global2 = vec4<u32>(global1.a.x & (51683u | global1.a.x), firstLeadingBit(_wgslsmith_mod_u32(_wgslsmith_div_u32(~0u, 50140u), 4294967295u)), _wgslsmith_mult_u32(func_3(), global2.x), ~u_input.b);
    var var_2 = !vec3<bool>(global0.b.a.x, true, true);
    let var_3 = Struct_3(vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, -2147483647i, abs(global3.e)), vec3<i32>(-1i) * -vec3<i32>(0i, -2147483647i, 25538i)), abs(global1.b.c), firstTrailingBit(_wgslsmith_div_i32(14162i | u_input.a, 35501i))), select(var_2.xx, select(vec2<bool>(global0.b.c == arg_0.c, var_2.x), vec2<bool>(var_2.x | false, var_2.x), select(!var_2.xz, select(vec2<bool>(global1.b.a.x, global3.c.x), vec2<bool>(true, global3.c.x), vec2<bool>(false, true)), vec2<bool>(true, false))), !var_2.xz), !global0.b.a.yw, ~(~global1.a.x), true);
    return _wgslsmith_div_vec2_u32(~vec2<u32>(global0.a.x, 4294967295u), ~global0.b.b);
}

fn func_1(arg_0: vec2<bool>, arg_1: vec3<bool>, arg_2: f32) -> i32 {
    let var_0 = ~abs(func_2(global0.b, global0.c.x));
    var var_1 = Struct_3(vec3<i32>(-2147483647i, global0.b.c, ~global1.b.c | (-53361i & global0.b.c)), global1.b.a.yw, vec2<bool>(select(!arg_0.x, any(select(vec2<bool>(global1.b.a.x, false), vec2<bool>(arg_1.x, false), global3.b)), !(!arg_1.x)), 1u < _wgslsmith_add_u32(global2.x, ~u_input.b)), 4294967295u, !(firstLeadingBit(_wgslsmith_dot_vec2_u32(var_0, vec2<u32>(6070u, global0.a.x))) != global2.x));
    global1 = Struct_5(vec2<u32>(~firstLeadingBit(global2.x ^ u_input.b), 4389u), global0.b, global0.c);
    return ~(-(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, global0.b.c, 2881i), firstTrailingBit(vec3<i32>(35106i, 1i, -2147483647i))) | ~(~global3.e)));
}

fn func_4(arg_0: i32, arg_1: i32) -> Struct_5 {
    global2 = vec4<u32>(u_input.b, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, _wgslsmith_add_u32(10345u, 1u) << ((u_input.b << (global1.b.d % 32u)) % 32u), min(global2.x, 49657u | global3.d), _wgslsmith_mod_u32(58860u, global2.x)), reverseBits(_wgslsmith_add_vec4_u32(vec4<u32>(36864u, u_input.b, global0.a.x, 26159u), vec4<u32>(1u, 0u, 14948u, global2.x)) << (vec4<u32>(global0.a.x, 4294967295u, global0.a.x, 4294967295u) % vec4<u32>(32u)))), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, global0.a.x >> (4294967295u % 32u), select(4294967295u, global2.x, global0.b.a.x), 7342u), _wgslsmith_div_vec4_u32(abs(vec4<u32>(global1.b.b.x, global0.b.b.x, 11716u, global1.b.b.x)), _wgslsmith_clamp_vec4_u32(vec4<u32>(88330u, 72568u, 4294967295u, global1.b.b.x), vec4<u32>(47348u, global3.d, global0.b.d, 48290u), vec4<u32>(40728u, global3.d, global0.a.x, 87147u)))) >> (7475u % 32u), global0.b.d);
    let var_0 = vec2<f32>(1622f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1272f) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.c.x), global3.a.x))));
    let var_1 = Struct_2(any(!global3.c.xx), global0.b, 0u, global1.b, ~vec4<i32>(i32(-1i) * -1i, -43903i, _wgslsmith_mod_i32(global1.b.c, arg_1), ~(-17634i)) >> ((((vec4<u32>(global0.b.d, global2.x, global3.d, global0.b.d) | vec4<u32>(49164u, 3274u, global0.b.d, u_input.b)) & ~vec4<u32>(4294967295u, 29252u, global2.x, global2.x)) & vec4<u32>(global3.d >> (41772u % 32u), reverseBits(0u), ~global3.d, 0u)) % vec4<u32>(32u)));
    let var_2 = Struct_5(min(select(var_1.b.b | vec2<u32>(41437u, global2.x), ~vec2<u32>(var_1.c, u_input.b), !select(vec2<bool>(var_1.a, global1.b.a.x), global1.b.a.xx, vec2<bool>(false, global0.b.a.x))), vec2<u32>(~countOneBits(1u), ~func_2(Struct_1(vec4<bool>(global0.b.a.x, true, var_1.d.a.x, global3.b), vec2<u32>(29241u, 62067u), -1i, u_input.b), -465f).x)), Struct_1(!(!global1.b.a), ~firstTrailingBit(vec2<u32>(global1.a.x, 0u)) >> (global2.wz % vec2<u32>(32u)), arg_1, _wgslsmith_dot_vec2_u32(var_1.d.b, ~var_1.d.b)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global1.c))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(global0.c, vec3<f32>(global0.c.x, global0.c.x, -755f)))));
    var var_3 = var_1;
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_4(_wgslsmith_mod_i32(~_wgslsmith_add_i32(-1i, func_1(global1.b.a.yx, vec3<bool>(global3.b, global1.b.a.x, false), global1.c.x)), ~(-_wgslsmith_clamp_i32(global1.b.c, 0i, global1.b.c))), global0.b.c);
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, global3.e), ~vec2<i32>(u_input.a, u_input.a)), global1.b.c, firstLeadingBit(u_input.a)), 1u);
}

