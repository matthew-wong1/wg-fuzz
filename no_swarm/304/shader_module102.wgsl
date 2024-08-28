struct Struct_1 {
    a: vec4<f32>,
    b: u32,
    c: bool,
    d: f32,
    e: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<f32>(-530f, -595f, 1000f, 475f), 0u, true, -1000f, vec2<u32>(1u, 1u));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(global0.a, vec4<f32>(global0.d, global0.d, global0.a.x, global0.a.x))) - _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global0.a.x, global0.a.x, 1176f, 1000f))))), ~(~global0.e.x), false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.d)) - -2228f), firstTrailingBit(~global0.e) >> (global0.e % vec2<u32>(32u))), _wgslsmith_add_vec4_u32(vec4<u32>(~firstTrailingBit(global0.e.x), global0.b, global0.b, 4294967295u), vec4<u32>(global0.b, ~global0.e.x, ~(global0.e.x ^ global0.b), _wgslsmith_add_u32(global0.e.x, global0.e.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(global0.a.zz))));
    global0 = var_0.a;
    var var_1 = _wgslsmith_div_vec2_i32(vec2<i32>(-1i) * -_wgslsmith_mod_vec2_i32(-vec2<i32>(-2147483647i, u_input.a.x), ~u_input.a.yw), vec2<i32>(~u_input.a.x, u_input.b.x));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global0.a.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(285f)) + 515f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global0.a.x, _wgslsmith_f_op_f32(trunc(579f)), any(vec3<bool>(true, global0.c, global0.c))))))));
    var_1 = _wgslsmith_add_vec2_i32(_wgslsmith_add_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(var_1.x, u_input.b.x) | u_input.a.xw, -vec2<i32>(-2147483647i, u_input.a.x)), -vec2<i32>(var_1.x, 1i)), _wgslsmith_mod_vec2_i32(u_input.b.zy, -vec2<i32>(1i, -21007i))) << (vec2<u32>(firstTrailingBit(1u), (~var_0.a.e.x >> (_wgslsmith_dot_vec4_u32(var_0.b, vec4<u32>(var_0.b.x, var_0.a.e.x, 1u, var_0.b.x)) % 32u)) << (_wgslsmith_sub_u32(~var_0.a.e.x, 13637u) % 32u)) % vec2<u32>(32u));
    return Struct_2(Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(vec4<f32>(var_2, var_2, global0.a.x, var_2), var_0.a.a))), var_0.a.a), var_0.a.b, any(!select(vec2<bool>(true, var_0.a.c), vec2<bool>(false, var_0.a.c), vec2<bool>(var_0.a.c, global0.c))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2508f) - _wgslsmith_f_op_f32(ceil(-404f)))), var_0.b.xy), vec4<u32>(var_0.a.e.x, firstTrailingBit(~32516u), 6847u, _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(min(global0.e, vec2<u32>(21663u, global0.e.x)), _wgslsmith_sub_vec2_u32(global0.e, vec2<u32>(4294967295u, 4294967295u))), 31566u)), _wgslsmith_f_op_vec2_f32(step(global0.a.wy, global0.a.wx)));
}

fn func_3(arg_0: f32, arg_1: u32) -> f32 {
    var var_0 = select(!(!vec4<bool>(true, global0.c | false, !global0.c, global0.c)), vec4<bool>(true, all(select(vec3<bool>(false, false, true), vec3<bool>(global0.c, false, false), vec3<bool>(global0.c, false, global0.c))) && func_2().a.c, false, any(vec2<bool>(u_input.b.x < 1i, !global0.c))), any(vec2<bool>(all(!vec3<bool>(global0.c, true, true)), !any(vec3<bool>(true, global0.c, global0.c)))));
    var_0 = vec4<bool>(select(countOneBits(_wgslsmith_sub_i32(0i, u_input.a.x)), -u_input.a.x, false) <= _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(reverseBits(u_input.b.xz), -u_input.a.yy), u_input.a.zw), false, !(!global0.c), global0.c);
    let var_1 = ~_wgslsmith_sub_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(~global0.b, 0u), global0.b, 9988u), ~select(vec3<u32>(41541u, global0.e.x, 79660u), reverseBits(vec3<u32>(1u, arg_1, 20421u)), true));
    global0 = Struct_1(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-global0.a), vec4<f32>(_wgslsmith_f_op_f32(-599f + global0.d), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-338f, arg_0, global0.c)) * -1306f), global0.d, 572f))), 75510u, true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-837f)) * -423f) * global0.d), ~func_2().a.e);
    let var_2 = Struct_2(func_2().a, vec4<u32>(~(~4294967295u) >> (1u % 32u), _wgslsmith_add_u32(var_1.x, ~(~arg_1)), ~var_1.x, var_1.x), global0.a.yy);
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1000f)));
}

fn func_4(arg_0: Struct_2, arg_1: bool, arg_2: vec2<i32>) -> Struct_1 {
    var var_0 = ~arg_0.a.b;
    var var_1 = false;
    let var_2 = select(select(vec2<bool>(any(select(vec2<bool>(global0.c, true), vec2<bool>(false, arg_1), arg_1)), true), vec2<bool>(all(vec2<bool>(true, true)), !(!arg_1)), select(!select(vec2<bool>(global0.c, arg_0.a.c), vec2<bool>(false, global0.c), true), select(vec2<bool>(true, true), vec2<bool>(arg_1, true), !vec2<bool>(arg_1, true)), vec2<bool>(false, true))), !select(!(!vec2<bool>(arg_1, arg_1)), vec2<bool>(0u > global0.e.x, arg_0.a.c | false), !vec2<bool>(arg_0.a.c, arg_1)), !(!(!vec2<bool>(true, global0.c))));
    let var_3 = true && any(vec4<bool>(arg_0.a.c, all(select(vec4<bool>(true, true, false, arg_0.a.c), vec4<bool>(arg_1, true, arg_1, true), vec4<bool>(arg_1, arg_1, var_2.x, true))), func_2().a.c, func_2().a.c));
    let var_4 = ~vec3<u32>(global0.e.x ^ (_wgslsmith_dot_vec2_u32(arg_0.b.yy, vec2<u32>(global0.b, 4359u)) >> (global0.e.x % 32u)), 18314u, ~(~0u | arg_0.a.e.x));
    return Struct_1(arg_0.a.a, global0.e.x, !arg_0.a.c & ((var_2.x | false) && global0.c), 977f, vec2<u32>(~0u, func_2().b.x));
}

fn func_1(arg_0: f32, arg_1: vec2<bool>) -> Struct_1 {
    var var_0 = func_4(func_2(), global0.a.x > _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(f32(-1f) * -1000f), ~select(global0.b, 4294967295u, true))), u_input.a.xz << (global0.e % vec2<u32>(32u)));
    var_0 = func_2().a;
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(-668f, _wgslsmith_f_op_f32(global0.d - global0.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.x + -651f) * -748f), global0.d, arg_0) + _wgslsmith_f_op_vec4_f32(var_0.a - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.x, 1847f, 1000f, global0.a.x)))) - global0.a);
    let var_2 = _wgslsmith_dot_vec4_i32(abs(vec4<i32>(-min(u_input.a.x, 0i), -1i, 48768i, ~reverseBits(-53622i))), select(_wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(u_input.a, ~u_input.a), abs(-vec4<i32>(u_input.b.x, -277i, u_input.b.x, 15593i))), u_input.a, !vec4<bool>(arg_1.x, -1000f > global0.a.x, var_0.c, !var_0.c)));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(824f * _wgslsmith_f_op_f32(-218f - 1004f)), -979f)));
    return func_4(func_2(), true, ~vec2<i32>(u_input.a.x & _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, u_input.a.x, 1i), u_input.b), ~var_2 & var_2));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -895f))), !vec2<bool>(!(u_input.b.x == 1i), global0.c));
    var var_1 = func_2();
    let var_2 = _wgslsmith_sub_i32(~u_input.b.x, _wgslsmith_mult_i32(u_input.b.x, u_input.a.x) ^ _wgslsmith_dot_vec4_i32(u_input.a, -u_input.a));
    let var_3 = ~62651u;
    global0 = var_1.a;
    let x = u_input.a;
    s_output = StorageBuffer(func_2().b);
}

