struct Struct_1 {
    a: i32,
    b: bool,
    c: i32,
    d: vec2<f32>,
    e: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: array<vec2<u32>, 16> = array<vec2<u32>, 16>(vec2<u32>(35423u, 1u), vec2<u32>(0u, 0u), vec2<u32>(1314u, 98312u), vec2<u32>(55827u, 77808u), vec2<u32>(0u, 38658u), vec2<u32>(22733u, 10150u), vec2<u32>(65847u, 1u), vec2<u32>(4294967295u, 5377u), vec2<u32>(33840u, 24998u), vec2<u32>(1u, 41827u), vec2<u32>(1u, 15301u), vec2<u32>(1u, 9288u), vec2<u32>(4294967295u, 5575u), vec2<u32>(9518u, 0u), vec2<u32>(29611u, 48902u), vec2<u32>(1u, 31821u));

var<private> global2: Struct_1 = Struct_1(-49162i, true, 19136i, vec2<f32>(-628f, 853f), vec3<bool>(false, true, true));

var<private> global3: array<vec3<bool>, 8>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_1(arg_0: u32) -> f32 {
    global1 = array<vec2<u32>, 16>();
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1f, global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.d.x - -1097f)), _wgslsmith_div_f32(-320f, 282f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-336f, global0.x, 1000f, global2.d.x)) * vec4<f32>(-423f, -454f, -402f, 1556f)))));
    global3 = array<vec3<bool>, 8>();
    var var_0 = vec4<f32>(-1214f, -1241f, 109f, -439f);
    global1 = array<vec2<u32>, 16>();
    return _wgslsmith_f_op_f32(-global2.d.x);
}

fn func_3(arg_0: i32, arg_1: Struct_1) -> vec4<f32> {
    let var_0 = arg_1.d.x;
    var var_1 = Struct_1(min(firstTrailingBit(-2147483647i), -(arg_1.c | (arg_1.c | -76684i))), true, -2147483647i, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(294f, 1000f)))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(min(global0.wy, global0.xx)))), true)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global0.x, global2.d.x))))))), vec3<bool>(global2.b, select(arg_1.b, arg_1.e.x, !(true & arg_1.b)), _wgslsmith_f_op_f32(min(2316f, arg_1.d.x)) < _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-569f, 824f)))));
    var var_2 = _wgslsmith_f_op_f32(1044f - 1236f);
    var var_3 = _wgslsmith_dot_vec2_u32(~global1[_wgslsmith_index_u32(~u_input.c.x, 16u)] | _wgslsmith_mult_vec2_u32(_wgslsmith_clamp_vec2_u32(~vec2<u32>(u_input.c.x, u_input.c.x), reverseBits(u_input.c), vec2<u32>(u_input.c.x, 50807u)), select(max(global1[_wgslsmith_index_u32(1u, 16u)], vec2<u32>(51759u, u_input.c.x)), select(vec2<u32>(0u, u_input.c.x), u_input.c, vec2<bool>(global2.e.x, false)), select(vec2<bool>(true, false), vec2<bool>(var_1.e.x, arg_1.e.x), false))), reverseBits(~(u_input.c & u_input.c) ^ global1[_wgslsmith_index_u32(u_input.c.x, 16u)]));
    global3 = array<vec3<bool>, 8>();
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, var_0, global2.d.x, arg_1.d.x))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_1.d.x, var_1.d.x, -2180f, arg_1.d.x))))))));
}

fn func_2(arg_0: bool) -> Struct_2 {
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(u_input.b.x, Struct_1(-1i, true, global2.c, global0.xx, vec3<bool>(false, global2.e.x, true)))) - vec4<f32>(363f, global2.d.x, -751f, global2.d.x))))) + vec4<f32>(_wgslsmith_f_op_f32(362f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-564f, global0.x)))), global2.d.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.x * global2.d.x), global2.d.x)), _wgslsmith_f_op_f32(-880f * global2.d.x)));
    let var_0 = Struct_2(Struct_1(global2.a, arg_0 || global2.b, 1i, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, 1000f)))))), vec3<bool>(global2.e.x && (arg_0 || global2.e.x), true, !global2.b)), Struct_1(-1i, true, u_input.a, _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(global2.d.x * -1022f), 1000f))), !global2.e), Struct_1(_wgslsmith_dot_vec4_i32(u_input.b, firstLeadingBit(u_input.b) << (vec4<u32>(u_input.c.x, 4294967295u, 0u, 1u) % vec4<u32>(32u))), true, _wgslsmith_sub_i32(u_input.d >> (u_input.c.x % 32u), global2.c) | (~u_input.b.x | u_input.b.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(round(global0.zz))))), !global2.e));
    let var_1 = true;
    return var_0;
}

fn func_4(arg_0: bool, arg_1: Struct_2, arg_2: vec3<bool>, arg_3: f32) -> f32 {
    var var_0 = arg_1;
    let var_1 = ~(((~vec4<u32>(u_input.c.x, 10507u, u_input.c.x, u_input.c.x) & ~vec4<u32>(0u, u_input.c.x, u_input.c.x, u_input.c.x)) ^ select(vec4<u32>(0u, u_input.c.x, u_input.c.x, 1u), countOneBits(vec4<u32>(39119u, 58832u, 7011u, 41169u)), select(vec4<bool>(true, true, var_0.b.e.x, arg_0), vec4<bool>(false, false, arg_1.b.b, true), false))) | _wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, abs(u_input.c.x), 4294967295u, ~1u), select(firstTrailingBit(vec4<u32>(0u, u_input.c.x, u_input.c.x, u_input.c.x)), ~vec4<u32>(u_input.c.x, u_input.c.x, 4294967295u, u_input.c.x), func_2(false).a.e.x)));
    let var_2 = Struct_1(_wgslsmith_mult_i32(func_2(!(global2.e.x & global2.e.x)).c.a, -u_input.b.x), var_0.c.b, _wgslsmith_add_i32(~countOneBits(u_input.b.x), min(countOneBits(var_0.b.c & -16390i), min(1i, select(global2.c, -5780i, global2.e.x)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(min(-648f, _wgslsmith_f_op_f32(trunc(1820f)))), _wgslsmith_div_f32(-532f, _wgslsmith_f_op_f32(-var_0.b.d.x)))), vec3<bool>(true, !var_0.b.e.x, !((139426u != u_input.c.x) && (519f != arg_1.b.d.x))));
    let var_3 = func_2(!all(select(select(vec4<bool>(false, false, var_0.b.e.x, global2.e.x), vec4<bool>(var_2.b, true, true, arg_1.a.e.x), vec4<bool>(false, false, false, var_2.b)), select(vec4<bool>(true, true, global2.b, true), vec4<bool>(true, arg_1.b.b, arg_2.x, true), true), !vec4<bool>(true, var_2.e.x, true, false)))).b;
    var var_4 = 23121u;
    return -1164f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-825f, _wgslsmith_f_op_f32(f32(-1f) * -657f)), vec2<f32>(global2.d.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x * global0.x))))), global2.b));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(func_1(u_input.c.x & 0u)), global0.x, -132f, _wgslsmith_f_op_f32(func_4(true, func_2(false), vec3<bool>(false, true, global2.b), _wgslsmith_f_op_f32(trunc(316f))))), vec4<f32>(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(214f + 852f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(812f)) * _wgslsmith_f_op_f32(f32(-1f) * -666f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global0.x, var_0.x, var_0.x, 267f), vec4<f32>(-739f, var_0.x, global2.d.x, -692f))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(2234f, -723f, global0.x, global0.x), vec4<f32>(-1182f, -414f, 126f, 262f))), !(!vec4<bool>(global2.e.x, true, global2.e.x, global2.e.x)))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1473f, global2.d.x, var_0.x, global2.d.x))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(2263f, var_0.x, global0.x, global0.x) * vec4<f32>(var_0.x, 232f, global2.d.x, global0.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(230f, -794f, 2125f, 880f))), global2.b))));
    global2 = func_2(false).c;
    let var_2 = Struct_1(0i, any(select(select(select(vec4<bool>(global2.e.x, false, global2.e.x, true), vec4<bool>(global2.b, false, true, global2.e.x), true), !vec4<bool>(true, global2.b, global2.b, false), !vec4<bool>(false, global2.b, global2.b, true)), vec4<bool>(global2.e.x || false, true, any(vec4<bool>(global2.b, global2.b, global2.b, false)), global2.b), select(select(vec4<bool>(true, global2.e.x, true, global2.e.x), vec4<bool>(global2.b, true, global2.b, true), false), vec4<bool>(true, false, global2.e.x, global2.b), global2.b || true))), global2.c, vec2<f32>(global0.x, -343f), !global2.e);
    var var_3 = _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(u_input.c, ~_wgslsmith_add_vec2_u32(~u_input.c, countOneBits(global1[_wgslsmith_index_u32(u_input.c.x, 16u)]))), u_input.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_f32(var_0, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, global0.x) - vec2<f32>(2251f, 369f))))), vec4<u32>(_wgslsmith_add_u32(reverseBits(~u_input.c.x), ~u_input.c.x), _wgslsmith_clamp_u32(_wgslsmith_mod_u32(~u_input.c.x, 4294967295u), 1u, ~u_input.c.x | u_input.c.x), ~51295u, _wgslsmith_sub_u32(u_input.c.x, u_input.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(~(~29390u)))));
}

