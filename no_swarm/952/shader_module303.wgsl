struct Struct_1 {
    a: vec3<u32>,
    b: vec4<f32>,
    c: bool,
    d: f32,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 2> = array<vec2<bool>, 2>(vec2<bool>(true, true), vec2<bool>(true, true));

var<private> global1: u32 = 69287u;

var<private> global2: vec4<f32>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec2<i32>) -> vec3<bool> {
    global2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-702f, global2.x, 1811f, global2.x)))) - _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(144f, global2.x, -428f, -1154f))))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, global2.x, global2.x, global2.x)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, global2.x, global2.x, 1680f)))) - _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(548f, global2.x, 300f, global2.x)))))), !select(vec4<bool>(false, true, true, any(global0[_wgslsmith_index_u32(u_input.b, 2u)])), vec4<bool>(true, true, true, true), true == all(vec2<bool>(false, false)))));
    let var_0 = ~countOneBits(u_input.c.x);
    global1 = ~_wgslsmith_clamp_u32(1u, ~4294967295u, countOneBits(57956u));
    let var_1 = vec4<i32>(-21003i, ~1i, -17399i, 1i);
    var var_2 = u_input.c.x;
    return vec3<bool>(true, true, all(vec2<bool>(any(vec3<bool>(true, true, true)), !any(vec3<bool>(false, false, true)))));
}

fn func_2() -> vec2<bool> {
    let var_0 = Struct_1(u_input.d, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(274f, 1625f, global2.x, global2.x), vec4<f32>(global2.x, global2.x, global2.x, global2.x)))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(844f, global2.x, 1165f, -2206f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global2.x, global2.x, global2.x, global2.x), vec4<f32>(-660f, -399f, 584f, -2015f))))))), true, global2.x, vec4<bool>(true, all(!func_3(vec2<i32>(1i, u_input.a))), any(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_div_u32(u_input.c.x, 80967u), u_input.e), 2u)]), false));
    var var_1 = max(1u, var_0.a.x);
    var var_2 = var_0;
    let var_3 = Struct_1(~(min(vec3<u32>(var_0.a.x, var_2.a.x, u_input.d.x), vec3<u32>(u_input.d.x, 17163u, 19416u)) ^ (var_0.a | vec3<u32>(var_0.a.x, var_0.a.x, 1u))) ^ _wgslsmith_div_vec3_u32(vec3<u32>(1u, var_2.a.x, var_0.a.x), var_0.a), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(var_2.b.x - _wgslsmith_f_op_f32(step(global2.x, -2555f))), -898f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(466f - -694f)), var_0.d), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(global2.x, -122f)), -115f, var_2.d, 358f) - vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1041f), global2.x, var_0.d, -1000f))), !((_wgslsmith_clamp_i32(u_input.a, 1i, 0i) != u_input.a) & select(!var_0.e.x, var_2.e.x, all(var_2.e.xxw))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.d))) + _wgslsmith_f_op_f32(var_2.b.x + global2.x)), !select(var_2.e, vec4<bool>(func_3(vec2<i32>(u_input.a, -12292i)).x, var_0.c, true, var_2.e.x), var_2.c));
    global0 = array<vec2<bool>, 2>();
    return func_3(abs(_wgslsmith_mod_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(u_input.a, u_input.a), -49816i), vec2<i32>(u_input.a, 1i) ^ firstLeadingBit(vec2<i32>(u_input.a, u_input.a))))).yx;
}

fn func_4(arg_0: vec2<bool>, arg_1: f32, arg_2: f32, arg_3: Struct_1) -> Struct_1 {
    let var_0 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2 - _wgslsmith_f_op_f32(trunc(arg_1)))), global2.x), -689f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(-1339f, -1276f))))), 1f)));
    var var_1 = u_input.b;
    var_1 = 45270u;
    var var_2 = arg_3.e.xwz;
    global2 = _wgslsmith_f_op_vec4_f32(arg_3.b + arg_3.b);
    return Struct_1(_wgslsmith_add_vec3_u32(vec3<u32>(arg_3.a.x & firstLeadingBit(1u), _wgslsmith_div_u32(u_input.e, 84094u) | arg_3.a.x, 11176u), ~u_input.c), arg_3.b, arg_3.e.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-183f))) - global2.x) + 133f), select(!arg_3.e, !(!vec4<bool>(arg_3.e.x, false, true, false)), false));
}

fn func_1(arg_0: u32, arg_1: u32) -> vec4<f32> {
    global1 = u_input.e;
    global1 = 1u;
    var var_0 = abs(arg_0);
    let var_1 = func_4(func_2(), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(4136f)), global2.x, true))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(global2.x, global2.x, false)))) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(global2.x, global2.x) * _wgslsmith_f_op_f32(f32(-1f) * -822f)))), 987f, Struct_1(vec3<u32>(u_input.b, _wgslsmith_clamp_u32(_wgslsmith_sub_u32(0u, u_input.b), _wgslsmith_add_u32(u_input.c.x, arg_0), u_input.c.x ^ arg_0), arg_1), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, global2.x, -233f, global2.x))), all(vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(f32(-1f) * -1172f), !select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), false)));
    global2 = var_1.b;
    return _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_1.b.x, var_1.d, global2.x, -2036f), vec4<f32>(global2.x, var_1.d, global2.x, -1010f))) * _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global2.x, -712f, 998f, var_1.d)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, ~reverseBits(u_input.a)), _wgslsmith_sub_vec2_i32(~_wgslsmith_mult_vec2_i32(vec2<i32>(0i, 2147483647i), vec2<i32>(u_input.a, 32551i)), ~(vec2<i32>(u_input.a, 39791i) | vec2<i32>(u_input.a, u_input.a)))), u_input.a);
    let var_1 = Struct_1(min(firstLeadingBit(~vec3<u32>(u_input.c.x, u_input.d.x, u_input.b)), firstLeadingBit(~u_input.d & max(u_input.d, vec3<u32>(11278u, 14083u, 10407u)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1(38468u, countOneBits(u_input.e))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(316f, -1459f, 1182f, _wgslsmith_f_op_f32(global2.x * global2.x)))), select(reverseBits(u_input.a << (1u % 32u)) < _wgslsmith_mult_i32(~u_input.a, _wgslsmith_sub_i32(-56809i, 1i)), u_input.a != (max(u_input.a, u_input.a) ^ -u_input.a), !(any(vec3<bool>(true, true, true)) | true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(113f, _wgslsmith_f_op_f32(-global2.x))) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) * 1898f)))), select(vec4<bool>(true, func_3(select(vec2<i32>(u_input.a, -857i), vec2<i32>(var_0, -6811i), true)).x, select(all(vec3<bool>(false, false, false)), false, true), all(vec3<bool>(true, true, true))), vec4<bool>(true, (u_input.e & u_input.c.x) <= min(u_input.b, u_input.e), all(vec3<bool>(true, false, false)) || false, all(vec4<bool>(false, true, false, false))), !(!(344f > global2.x))));
    let var_2 = var_1;
    var var_3 = !(!var_2.e.x);
    global2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.d, _wgslsmith_f_op_f32(706f * -2099f), -531f, 2733f));
    var var_4 = vec4<i32>(-8979i, _wgslsmith_div_i32(1i, var_0), -firstLeadingBit(u_input.a), countOneBits(abs((u_input.a ^ -85296i) | -6130i)));
    var var_5 = Struct_1(select(var_2.a, reverseBits(var_1.a), vec3<bool>(true, false, var_1.e.x || true)) | abs(~func_4(var_1.e.zz, 211f, -1000f, var_1).a), vec4<f32>(var_1.b.x, var_2.b.x, var_1.b.x, 1000f), true, 820f, var_2.e);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(u_input.a, -10197i), min((vec4<u32>(u_input.d.x, 4294967295u, var_2.a.x, var_1.a.x) | vec4<u32>(var_2.a.x, var_1.a.x, var_5.a.x, 0u)) & (~vec4<u32>(4294967295u, 52627u, 1u, u_input.d.x) >> (~vec4<u32>(45166u, 0u, 70600u, var_2.a.x) % vec4<u32>(32u))), vec4<u32>((1u & var_2.a.x) >> (0u % 32u), 1u, 4294967295u ^ _wgslsmith_clamp_u32(var_5.a.x, var_1.a.x, u_input.d.x), _wgslsmith_div_u32(1u, 61809u >> (var_2.a.x % 32u)))));
}

