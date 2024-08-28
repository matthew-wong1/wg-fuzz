struct Struct_1 {
    a: vec4<i32>,
    b: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<f32>,
    c: vec3<i32>,
    d: vec2<i32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec3<bool>, arg_2: Struct_2, arg_3: u32) -> f32 {
    let var_0 = Struct_2(Struct_1(global0.a.a, _wgslsmith_f_op_vec2_f32(arg_2.a.b * vec2<f32>(_wgslsmith_div_f32(global0.a.b.x, 936f), global0.a.b.x))));
    var var_1 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.a.b.x, global0.a.b.x)), _wgslsmith_f_op_f32(round(385f)), 1000f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(vec4<f32>(global0.a.b.x, -449f, -1117f, var_0.a.b.x), vec4<f32>(1389f, var_0.a.b.x, global0.a.b.x, var_0.a.b.x))))), !vec4<bool>(arg_1.x, arg_2.a.b.x <= 762f, arg_1.x, !arg_1.x)))));
    let var_2 = ~(-vec4<i32>(-reverseBits(0i), -abs(-1i), abs(var_0.a.a.x >> (arg_3 % 32u)), 1i));
    var var_3 = ~(_wgslsmith_mod_i32(abs(global0.a.a.x), reverseBits(~15608i)) & -2147483647i);
    global0 = Struct_2(Struct_1(select(abs(vec4<i32>(-1i, var_2.x, var_2.x, -37487i)), global0.a.a, true) << (_wgslsmith_sub_vec4_u32(vec4<u32>(1u, arg_3, 0u, 80962u) ^ vec4<u32>(arg_3, arg_3, 0u, 12634u), vec4<u32>(0u, 7144u, arg_3, arg_3) << (vec4<u32>(0u, 1u, 1u, arg_3) % vec4<u32>(32u))) % vec4<u32>(32u)), vec2<f32>(var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-410f * var_1.x)))));
    return var_0.a.b.x;
}

fn func_2(arg_0: Struct_1) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.b.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-301f, _wgslsmith_div_f32(global0.a.b.x, arg_0.b.x)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec3<i32>(arg_0.a.x, 33344i, global0.a.a.x), vec3<bool>(true, true, false), Struct_2(Struct_1(vec4<i32>(0i, -36775i, arg_0.a.x, -48702i), global0.a.b)), 20511u)) - _wgslsmith_div_f32(global0.a.b.x, arg_0.b.x))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_3(~global0.a.a.xxw, vec3<bool>(false, true, false), Struct_2(Struct_1(arg_0.a, arg_0.b)), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 0u, 20206u, 4294967295u), vec4<u32>(0u, 51193u, 56459u, 64356u))))))));
    var var_1 = Struct_3(reverseBits(select(firstTrailingBit(u_input.a), arg_0.a.x, all(vec3<bool>(false, true, false)))), Struct_1(~select(firstLeadingBit(arg_0.a), firstTrailingBit(global0.a.a), all(vec2<bool>(true, false))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-741f, global0.a.b.x))))), global0.a, Struct_1(-global0.a.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global0.a.b * global0.a.b) - _wgslsmith_f_op_vec2_f32(max(vec2<f32>(arg_0.b.x, -208f), global0.a.b))) + vec2<f32>(_wgslsmith_f_op_f32(-global0.a.b.x), _wgslsmith_f_op_f32(max(1000f, var_0.x))))));
    global0 = Struct_2(Struct_1(var_1.b.a, var_1.b.b));
    var var_2 = Struct_3(min(_wgslsmith_add_i32(~1i, firstLeadingBit(_wgslsmith_mod_i32(-2147483647i, global0.a.a.x))), var_1.b.a.x), global0.a, Struct_1(vec4<i32>(_wgslsmith_mult_i32(arg_0.a.x, -1i), -10034i & var_1.c.a.x, select(_wgslsmith_clamp_i32(var_1.c.a.x, 2147483647i, -2147483647i), _wgslsmith_mod_i32(-7070i, var_1.a), any(vec4<bool>(true, true, true, true))), -14214i), arg_0.b), Struct_1(~var_1.b.a, vec2<f32>(global0.a.b.x, global0.a.b.x)));
    let var_3 = Struct_3(abs(_wgslsmith_clamp_i32(~(-2147483647i), u_input.a, _wgslsmith_dot_vec4_i32(vec4<i32>(2793i, 20069i, -1i, -14666i), global0.a.a))) | ~(i32(-1i) * -1i), var_2.c, Struct_1(var_1.c.a, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-739f, var_0.x), arg_0.b) + _wgslsmith_f_op_vec2_f32(sign(arg_0.b)))))), Struct_1(vec4<i32>(var_1.c.a.x, -_wgslsmith_mult_i32(u_input.a, global0.a.a.x), -2147483647i, var_2.b.a.x), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(663f, 855f) * _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_2.d.b.x, var_2.c.b.x)))), vec2<f32>(_wgslsmith_div_f32(-444f, var_2.d.b.x), var_0.x), _wgslsmith_f_op_f32(var_2.d.b.x * -207f) != _wgslsmith_f_op_f32(abs(278f))))));
    return Struct_2(arg_0);
}

fn func_1() -> f32 {
    global0 = Struct_2(Struct_1(vec4<i32>(global0.a.a.x, select(0i, 1i, true) << (firstTrailingBit(4294967295u) % 32u), _wgslsmith_mod_i32(-36453i, ~u_input.b), global0.a.a.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1516f, _wgslsmith_f_op_f32(global0.a.b.x * global0.a.b.x)))));
    global0 = func_2(global0.a);
    let var_0 = vec2<i32>(-19280i, u_input.a);
    var var_1 = Struct_3(abs(-2147483647i), Struct_1(-global0.a.a, vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-1000f)), _wgslsmith_f_op_f32(global0.a.b.x * global0.a.b.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(global0.a.b.x, global0.a.b.x))))), func_2(Struct_1(vec4<i32>(-1i) * -global0.a.a, vec2<f32>(_wgslsmith_f_op_f32(-557f - global0.a.b.x), _wgslsmith_f_op_f32(exp2(global0.a.b.x))))).a, global0.a);
    let var_2 = func_2(func_2(global0.a).a).a;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(var_1.c.a.yww, vec3<bool>(true, 457f < _wgslsmith_f_op_f32(-var_2.b.x), all(vec2<bool>(true, true)) & select(true, true, false)), Struct_2(global0.a), 1u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1532f, _wgslsmith_f_op_f32(global0.a.b.x - _wgslsmith_f_op_f32(func_1())), 907f));
    var var_1 = Struct_2(func_2(Struct_1(~(-vec4<i32>(1i, -2147483647i, 26107i, global0.a.a.x)), vec2<f32>(-704f, _wgslsmith_f_op_f32(func_1())))).a);
    var var_2 = _wgslsmith_f_op_f32(-var_1.a.b.x);
    var var_3 = Struct_3(~var_1.a.a.x | _wgslsmith_add_i32(-8235i, var_1.a.a.x), global0.a, Struct_1(vec4<i32>(_wgslsmith_mult_i32(-22572i, global0.a.a.x) >> (~4294967295u % 32u), ~2147483647i, 0i, firstLeadingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(var_1.a.a.x, -2147483647i), global0.a.a.zy))), _wgslsmith_f_op_vec2_f32(var_1.a.b + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a.b.x, -948f)) - _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global0.a.b.x, var_0.x)))))), Struct_1(_wgslsmith_div_vec4_i32(global0.a.a, ~global0.a.a) ^ vec4<i32>(countOneBits(-40842i), firstTrailingBit(global0.a.a.x), ~(-2147483647i), u_input.b), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-128f, _wgslsmith_f_op_f32(-global0.a.b.x))))));
    var var_4 = true;
    global0 = Struct_2(func_2(var_1.a).a);
    var var_5 = vec2<i32>(var_3.a, u_input.a) & -max(~firstTrailingBit(global0.a.a.xw), global0.a.a.wz);
    let var_6 = Struct_3(-_wgslsmith_add_i32(u_input.a, var_1.a.a.x), Struct_1(-global0.a.a, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1582f, var_1.a.b.x) - var_1.a.b)), _wgslsmith_f_op_vec2_f32(floor(var_0.xx)), select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), false), true)))), var_3.d, func_2(func_2(Struct_1(select(global0.a.a, vec4<i32>(-31023i, u_input.b, -17304i, u_input.b), false), var_3.d.b)).a).a);
    var var_7 = ~(firstTrailingBit(max(select(vec3<u32>(27049u, 4294967295u, 1666u), vec3<u32>(20806u, 0u, 0u), vec3<bool>(true, true, true)), vec3<u32>(1u, 1u, 1u))) ^ vec3<u32>(~1u, 4294967295u, reverseBits(1u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1319f, -1470f, -448f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(751f, global0.a.b.x, global0.a.b.x) + vec3<f32>(-1000f, 166f, var_0.x)), u_input.a == 1i)), vec3<f32>(global0.a.b.x, _wgslsmith_f_op_f32(422f * 1369f), _wgslsmith_f_op_f32(step(213f, var_6.d.b.x))), vec3<bool>(true, true, true))) - vec3<f32>(434f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.a.b.x + var_6.d.b.x), _wgslsmith_f_op_f32(var_0.x + var_6.d.b.x)), 2829f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(692f, var_0.x)) - _wgslsmith_f_op_f32(-global0.a.b.x)), -410f, 1831f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_1.a.b.x))))), ~var_6.d.a.yxy, ~(~vec2<i32>(var_5.x, global0.a.a.x)), vec2<i32>(_wgslsmith_dot_vec4_i32(countOneBits(var_3.b.a) | max(vec4<i32>(0i, 35803i, var_6.a, 11836i), var_3.c.a), ~vec4<i32>(1i, 2147483647i, u_input.a, var_3.d.a.x)), 4646i));
}

