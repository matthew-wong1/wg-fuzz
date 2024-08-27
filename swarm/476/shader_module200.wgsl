struct Struct_1 {
    a: bool,
    b: vec2<bool>,
}

struct Struct_2 {
    a: f32,
    b: vec2<f32>,
    c: vec2<bool>,
    d: vec2<i32>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<f32>,
    c: bool,
    d: f32,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 1> = array<f32, 1>(-2065f);

var<private> global1: i32;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_3, arg_2: f32, arg_3: Struct_4) -> u32 {
    global1 = u_input.c.x;
    var var_0 = arg_3;
    var_0 = arg_3;
    let var_1 = firstTrailingBit(~vec2<u32>(4294967295u, ~firstTrailingBit(4294967295u)));
    let var_2 = !select(select(!arg_1.a.b, vec2<bool>(var_0.a.a, true), vec2<bool>(all(vec4<bool>(var_0.a.b.x, arg_1.a.b.x, true, arg_3.c)), true)), !(!select(arg_3.a.b, vec2<bool>(arg_3.a.b.x, arg_1.a.a), vec2<bool>(arg_3.c, arg_3.a.b.x))), select(vec2<bool>(false, true), !(!vec2<bool>(var_0.a.a, arg_3.a.a)), vec2<bool>(!arg_3.c, true)));
    return ~min(6182u, var_1.x) | 69890u;
}

fn func_2(arg_0: vec2<u32>, arg_1: i32) -> Struct_1 {
    global0 = array<f32, 1>();
    var var_0 = select(_wgslsmith_add_vec3_u32(vec3<u32>(~func_3(vec3<u32>(u_input.a, 1u, 32877u), Struct_3(Struct_1(true, vec2<bool>(true, false))), 1000f, Struct_4(Struct_1(true, vec2<bool>(false, false)), vec2<f32>(1116f, global0[_wgslsmith_index_u32(56115u, 1u)]), false, global0[_wgslsmith_index_u32(4294967295u, 1u)], global0[_wgslsmith_index_u32(4294967295u, 1u)])), arg_0.x >> (~u_input.a % 32u), _wgslsmith_mod_u32(~0u, ~u_input.a)), vec3<u32>(arg_0.x, ~(arg_0.x << (68255u % 32u)), ~147428u)), ~vec3<u32>(_wgslsmith_clamp_u32(33427u, arg_0.x, arg_0.x), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(1u, 1u)), ~44469u) & ~(~vec3<u32>(u_input.a, 1u, 4877u)), vec3<bool>(all(vec3<bool>(true, any(vec4<bool>(false, true, false, true)), any(vec3<bool>(false, true, false)))), true, true));
    var_0 = _wgslsmith_div_vec3_u32(vec3<u32>(~1u, _wgslsmith_dot_vec4_u32(~abs(vec4<u32>(arg_0.x, arg_0.x, 4294967295u, arg_0.x)), max(vec4<u32>(38576u, 33710u, 7274u, var_0.x) >> (vec4<u32>(4294967295u, arg_0.x, 44555u, 60329u) % vec4<u32>(32u)), ~vec4<u32>(var_0.x, var_0.x, 4294967295u, 0u))), _wgslsmith_dot_vec2_u32(~var_0.xy, firstTrailingBit(_wgslsmith_clamp_vec2_u32(arg_0, arg_0, var_0.zy)))), ~vec3<u32>(4294967295u, _wgslsmith_add_u32(1u, ~arg_0.x), 7155u));
    let var_1 = Struct_4(Struct_1(true, !select(vec2<bool>(true, true), vec2<bool>(false, false), select(vec2<bool>(false, true), vec2<bool>(true, true), true))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(24831u, 1u)]), global0[_wgslsmith_index_u32(reverseBits(var_0.x), 1u)]) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(1113f, 2032f))))), true, 429f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(103655u, 1u)]) - _wgslsmith_f_op_f32(f32(-1f) * -148f)));
    let var_2 = _wgslsmith_add_i32(arg_1, -44759i);
    return Struct_1(any(vec4<bool>(false, !any(var_1.a.b), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(2876u, 1u)]) <= -1230f, var_1.c)), var_1.a.b);
}

fn func_1(arg_0: bool) -> vec2<u32> {
    var var_0 = ~vec2<i32>(abs(-_wgslsmith_div_i32(u_input.d.x, 10572i)), u_input.c.x);
    global0 = array<f32, 1>();
    global0 = array<f32, 1>();
    let var_1 = func_2(select(~vec2<u32>(u_input.a, 1u) ^ ((vec2<u32>(4294967295u, 7219u) >> (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u))) | (vec2<u32>(u_input.a, u_input.a) << (vec2<u32>(4294967295u, u_input.a) % vec2<u32>(32u)))), ~(~(~vec2<u32>(u_input.a, 75329u))), select(select(vec2<bool>(arg_0, true), !vec2<bool>(arg_0, true), vec2<bool>(true, true)), vec2<bool>(any(vec2<bool>(false, false)), 1596f != global0[_wgslsmith_index_u32(46961u, 1u)]), !arg_0)), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.e, -2147483647i, u_input.c.x << (u_input.a % 32u)), u_input.d.zxx) ^ u_input.c.x);
    var var_2 = !(abs(firstLeadingBit(1u)) >= max(u_input.a, 0u));
    return abs(~(~min(vec2<u32>(36186u, u_input.a), ~vec2<u32>(u_input.a, u_input.a))));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: vec4<f32>, arg_3: vec3<i32>) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_2.yx))));
    global0 = array<f32, 1>();
    let var_1 = Struct_1(true, !arg_0.b);
    global1 = -u_input.d.x;
    let var_2 = Struct_1(false, select(vec2<bool>(true, var_1.a), arg_0.b, var_1.b.x));
    return Struct_3(var_1);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 1>();
    var var_0 = func_4(Struct_1(true, select(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false)), vec2<bool>(true, u_input.e > 81379i), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a, 1u)]) >= -1421f)), firstLeadingBit(~u_input.c.yz) >> (func_1(false) % vec2<u32>(32u)), _wgslsmith_div_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(u_input.a, 1u)], _wgslsmith_f_op_f32(select(592f, global0[_wgslsmith_index_u32(~u_input.a, 1u)], true)), global0[_wgslsmith_index_u32(~1u, 1u)], 603f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -216f), _wgslsmith_f_op_f32(-408f + global0[_wgslsmith_index_u32(10534u, 1u)]), 471f, _wgslsmith_f_op_f32(f32(-1f) * -588f)))), min(vec3<i32>(1i, select(8062i, u_input.d.x, false), _wgslsmith_div_i32(u_input.c.x, u_input.e)), u_input.c.yyy) & ~vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-42306i, 1i, u_input.e, -1i), u_input.d), ~4711i, u_input.b));
    var var_1 = vec2<bool>(true, var_0.a.a);
    var var_2 = _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a, 1u)]);
    global0 = array<f32, 1>();
    var_0 = Struct_3(Struct_1(false, !func_4(Struct_1(true, var_0.a.b), vec2<i32>(-1i, 14227i), vec4<f32>(global0[_wgslsmith_index_u32(1u, 1u)], -926f, global0[_wgslsmith_index_u32(u_input.a, 1u)], global0[_wgslsmith_index_u32(7984u, 1u)]), vec3<i32>(u_input.c.x, u_input.e, -2147483647i)).a.b));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d.x, ~(~(~(-84536i))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(abs(~109095u), 1u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(28097u, 1u)])), -445f)));
}

