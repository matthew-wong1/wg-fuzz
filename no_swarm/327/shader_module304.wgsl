struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec2<f32>,
    c: vec2<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_1,
    c: Struct_1,
    d: u32,
}

struct Struct_4 {
    a: bool,
    b: f32,
    c: vec4<bool>,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec4<f32>(550f, 310f, 388f, -1512f), Struct_1(1683f), Struct_1(433f), 90884u);

var<private> global1: array<u32, 4> = array<u32, 4>(62890u, 41458u, 24133u, 1u);

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_4, arg_2: Struct_3, arg_3: vec2<i32>) -> i32 {
    global0 = arg_2;
    global1 = array<u32, 4>();
    let var_0 = arg_1.d.xy;
    global1 = array<u32, 4>();
    var var_1 = global0.b;
    return 1i;
}

fn func_2(arg_0: f32, arg_1: bool) -> Struct_2 {
    var var_0 = Struct_4(~_wgslsmith_add_i32(u_input.a.x & -80500i, -1i) != -2147483647i, -255f, vec4<bool>(false, arg_1, (global0.a.x < -1426f) | true, true), select(select(select(select(vec3<bool>(false, true, arg_1), vec3<bool>(arg_1, arg_1, arg_1), vec3<bool>(true, false, arg_1)), !vec3<bool>(false, arg_1, false), !vec3<bool>(true, true, arg_1)), vec3<bool>(true, true, true), vec3<bool>(arg_1, arg_1 != arg_1, arg_1)), !vec3<bool>(true, arg_1, u_input.a.x <= -2147483647i), 0u == ~(~u_input.b)));
    var_0 = Struct_4(_wgslsmith_div_f32(806f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b - global0.a.x) + var_0.b)) != global0.c.a, _wgslsmith_f_op_f32(-arg_0), !select(!(!var_0.c), !select(var_0.c, var_0.c, var_0.c), select(var_0.c, !vec4<bool>(true, false, var_0.c.x, arg_1), true)), !vec3<bool>(var_0.a, arg_1, true));
    let var_1 = vec2<i32>(-1i) * -u_input.a.xy;
    var var_2 = max(vec4<i32>(1i, u_input.a.x, _wgslsmith_mult_i32(func_3(global0.c, Struct_4(var_0.c.x, global0.c.a, vec4<bool>(arg_1, arg_1, var_0.a, var_0.a), var_0.c.www), Struct_3(vec4<f32>(var_0.b, var_0.b, arg_0, arg_0), Struct_1(-664f), global0.b, 7457u), var_1) | min(-54694i, var_1.x), _wgslsmith_clamp_i32(~1i, countOneBits(var_1.x), min(-2147483647i, u_input.a.x))), u_input.a.x), ~u_input.a);
    let var_3 = Struct_3(vec4<f32>(_wgslsmith_f_op_f32(sign(var_0.b)), global0.a.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1203f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b))), Struct_1(arg_0), global0.b, firstLeadingBit(0u));
    return Struct_2(vec3<bool>(true, all(vec3<bool>(true, all(var_0.c.wyw), any(var_0.c))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.c.a - var_3.b.a), arg_0) < _wgslsmith_f_op_f32(1601f - _wgslsmith_f_op_f32(-var_3.a.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(abs(arg_0)), _wgslsmith_f_op_f32(609f + 388f)))) * _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(var_3.a.yz - _wgslsmith_f_op_vec2_f32(step(global0.a.yw, global0.a.zy)))))), ~(~firstTrailingBit(vec2<u32>(global0.d, 11221u) >> (vec2<u32>(u_input.c.x, 12122u) % vec2<u32>(32u)))), Struct_1(var_0.b));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_2) -> vec3<bool> {
    var var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(272f))), _wgslsmith_f_op_f32(select(-382f, _wgslsmith_f_op_f32(844f + 840f), true)), arg_0.b))), Struct_1(_wgslsmith_f_op_f32(step(arg_0.b, _wgslsmith_f_op_f32(-arg_1.d.a)))), global0.b, func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(-1748f)))) * _wgslsmith_f_op_f32(ceil(1261f))), false).c.x);
    var var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(1359f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global0.a.x))))) * _wgslsmith_f_op_f32(-arg_1.d.a)));
    var var_2 = Struct_2(vec3<bool>((0u | _wgslsmith_dot_vec2_u32(vec2<u32>(38357u, 0u), u_input.c.xz)) <= global0.d, false, false | ((arg_0.c.x | true) | all(vec2<bool>(false, arg_0.d.x)))), vec2<f32>(_wgslsmith_f_op_f32(-arg_0.b), arg_1.d.a), vec2<u32>(var_0.d, func_2(_wgslsmith_f_op_f32(arg_1.b.x - global0.a.x), true).c.x >> (max(20245u, global1[_wgslsmith_index_u32(countOneBits(global1[_wgslsmith_index_u32(var_0.d, 4u)]), 4u)]) % 32u)), arg_1.d);
    let var_3 = select(20757u, ~(~arg_1.c.x), any(arg_0.c));
    global1 = array<u32, 4>();
    return select(!vec3<bool>(arg_1.a.x, var_2.a.x, !(arg_0.a || var_2.a.x)), func_2(var_2.d.a, all(func_2(-345f, false).a.yz) | (u_input.a.x < u_input.a.x)).a, false);
}

fn func_5(arg_0: bool, arg_1: Struct_4, arg_2: u32, arg_3: Struct_3) -> Struct_2 {
    var var_0 = ~u_input.c.yzy;
    var var_1 = -u_input.a.x;
    global0 = Struct_3(vec4<f32>(arg_3.b.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.b)), 145f, -2227f), arg_3.c, func_2(global0.b.a, all(func_4(arg_1, Struct_2(vec3<bool>(false, arg_0, arg_1.a), global0.a.xx, var_0.yx, global0.c)).xx) & !all(arg_1.c)).d, _wgslsmith_add_u32(_wgslsmith_sub_u32(_wgslsmith_mod_u32(~arg_3.d, 0u), global1[_wgslsmith_index_u32(~4294967295u, 4u)]), select(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(34408u, arg_3.d, 46560u, var_0.x), vec4<u32>(4294967295u, 0u, 2969u, 4294967295u), vec4<u32>(global1[_wgslsmith_index_u32(u_input.b, 4u)], 7538u, arg_2, arg_3.d)), u_input.c), _wgslsmith_div_u32(~global0.d, 93411u), all(func_4(Struct_4(true, 1030f, arg_1.c, arg_1.d), Struct_2(arg_1.d, vec2<f32>(arg_1.b, 342f), vec2<u32>(u_input.c.x, 56301u), arg_3.c)).yz))));
    var_1 = min(u_input.a.x, ~(-1i ^ u_input.a.x));
    var var_2 = _wgslsmith_add_vec4_i32(-u_input.a, vec4<i32>(firstLeadingBit(u_input.a.x), u_input.a.x, ~50644i | u_input.a.x, ~(~u_input.a.x)));
    return Struct_2(vec3<bool>(select(arg_1.d.x, false, true), arg_0 | true, arg_1.a), _wgslsmith_f_op_vec2_f32(global0.a.xx * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.a.xz) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(1023f, arg_1.b))) * arg_3.a.wy)), _wgslsmith_mult_vec2_u32(~func_2(arg_1.b, false || arg_1.a).c, u_input.c.xx), func_2(arg_1.b, true).d);
}

fn func_1() -> Struct_3 {
    var var_0 = func_5(all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), any(vec3<bool>(true, false, true)))) || !(_wgslsmith_mult_i32(u_input.a.x, -1i) <= 1i), Struct_4(177f != _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global0.a.x), _wgslsmith_f_op_f32(min(global0.c.a, 141f)))), -730f, !(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), false)), select(func_4(Struct_4(false, global0.b.a, vec4<bool>(false, true, true, true), vec3<bool>(true, true, false)), func_2(1131f, true)), !func_4(Struct_4(true, 475f, vec4<bool>(true, true, true, true), vec3<bool>(true, true, false)), Struct_2(vec3<bool>(true, true, false), global0.a.yz, u_input.c.yz, global0.b)), vec3<bool>(any(vec2<bool>(true, false)), true, true))), 0u, Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-global0.a), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(782f, -1498f, -462f, global0.c.a))))), Struct_1(1249f), Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(826f - -463f), 1919f)), 4294967295u));
    let var_1 = 66700u;
    var var_2 = any(select(!vec3<bool>(all(vec4<bool>(true, true, true, var_0.a.x)), u_input.a.x <= 3170i, any(vec4<bool>(true, var_0.a.x, true, var_0.a.x))), !var_0.a, any(vec4<bool>(func_5(true, Struct_4(true, global0.a.x, vec4<bool>(true, var_0.a.x, var_0.a.x, var_0.a.x), vec3<bool>(true, true, true)), u_input.c.x, Struct_3(vec4<f32>(-1431f, -361f, 1375f, var_0.d.a), global0.b, global0.b, var_0.c.x)).a.x, !var_0.a.x, any(vec4<bool>(true, true, true, false)), true))));
    global0 = Struct_3(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1038f, var_0.d.a, 744f, var_0.b.x)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-global0.a))) - vec4<f32>(_wgslsmith_f_op_f32(step(global0.c.a, -911f)), _wgslsmith_f_op_f32(round(global0.b.a)), _wgslsmith_f_op_f32(global0.a.x * -1495f), _wgslsmith_f_op_f32(round(var_0.b.x))))), Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.d.a))), _wgslsmith_f_op_f32(sign(1f))))), func_5(~(~u_input.a.x) < _wgslsmith_clamp_i32(func_3(Struct_1(global0.a.x), Struct_4(false, 1287f, vec4<bool>(true, var_0.a.x, var_0.a.x, var_0.a.x), vec3<bool>(var_0.a.x, false, var_0.a.x)), Struct_3(vec4<f32>(var_0.d.a, 800f, var_0.b.x, var_0.d.a), global0.c, Struct_1(var_0.d.a), 1u), vec2<i32>(u_input.a.x, -2147483647i)), ~u_input.a.x, u_input.a.x << (45449u % 32u)), Struct_4(true, 1508f, !select(vec4<bool>(var_0.a.x, var_0.a.x, false, var_0.a.x), vec4<bool>(var_0.a.x, var_0.a.x, true, true), var_0.a.x), var_0.a), ~var_0.c.x, Struct_3(global0.a, Struct_1(1f), func_5(true, Struct_4(var_0.a.x, global0.a.x, vec4<bool>(var_0.a.x, false, var_0.a.x, var_0.a.x), vec3<bool>(false, true, true)), var_0.c.x, Struct_3(global0.a, Struct_1(1000f), var_0.d, global0.d)).d, _wgslsmith_dot_vec3_u32(~vec3<u32>(global0.d, 5435u, 0u), ~u_input.c.www))).d, 4961u);
    let var_3 = u_input.a;
    return Struct_3(global0.a, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c.a))), var_0.d, 1u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1();
    global1 = array<u32, 4>();
    let var_0 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.c.a + _wgslsmith_div_f32(_wgslsmith_div_f32(global0.a.x, global0.a.x), global0.c.a)), _wgslsmith_f_op_f32(exp2(func_1().c.a))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(floor(global0.a.wy)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global0.a) + _wgslsmith_div_vec4_f32(vec4<f32>(-213f, var_0.a, -645f, -372f), vec4<f32>(183f, 680f, var_0.a, var_0.a)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(855f, var_0.a, -295f, global0.a.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a, var_0.a, -192f, 422f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global0.a - global0.a)))));
}

