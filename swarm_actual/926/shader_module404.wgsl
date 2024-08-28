struct Struct_1 {
    a: u32,
    b: vec3<i32>,
    c: u32,
    d: vec4<i32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: bool,
    e: vec4<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<i32>,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec4<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(0i, Struct_1(1u, vec3<i32>(4691i, i32(-2147483648), -1i), 1u, vec4<i32>(-15271i, -27214i, 33289i, -24137i)), Struct_1(6478u, vec3<i32>(0i, -40256i, -1i), 31058u, vec4<i32>(18776i, 1836i, 1i, -24476i)), true, vec4<f32>(-1000f, 959f, -1307f, -1227f));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(global0.b.c, global0.c.d.yxz, 14016u, -abs(global0.b.d));
    var var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-933f, global0.e.x))), global0.e.x)), 190f)));
    let var_2 = var_0.b.zx;
    var var_3 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global0.e.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global0.e.x))) * _wgslsmith_f_op_f32(global0.e.x + _wgslsmith_f_op_f32(-global0.e.x))))));
    let var_4 = select(u_input.c, vec4<u32>(~_wgslsmith_dot_vec4_u32(u_input.c, u_input.c) & var_0.a, ~_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global0.c.a, 14001u), u_input.b), u_input.a), global0.b.a, 1u), vec4<bool>((_wgslsmith_f_op_f32(-global0.e.x) >= -615f) & (global0.d & any(vec3<bool>(global0.d, true, global0.d))), global0.e.x < _wgslsmith_f_op_f32(-738f * global0.e.x), global0.d, true));
    return Struct_1(856u, vec3<i32>(-_wgslsmith_dot_vec4_i32(-var_0.d, vec4<i32>(var_0.d.x, -1i, 24830i, var_0.b.x)), 31479i, _wgslsmith_sub_i32(~13410i, 4393i) ^ var_2.x), min(~4294967295u << (global0.c.c % 32u), var_0.c), vec4<i32>(_wgslsmith_mult_i32(var_0.b.x ^ ~1i, var_2.x), var_0.d.x >> ((40474u | ~var_4.x) % 32u), _wgslsmith_dot_vec2_i32(-vec2<i32>(global0.b.d.x, -2147483647i), firstTrailingBit(var_2)), -8710i));
}

fn func_1() -> Struct_1 {
    global0 = Struct_2(10850i, global0.b, func_2(), !(!global0.d), global0.e);
    var var_0 = global0.b.a | 1u;
    var var_1 = select(vec4<bool>(false, global0.d, false, global0.d), vec4<bool>(global0.d, 20539u >= (~global0.b.c ^ ~global0.c.a), (_wgslsmith_div_u32(4294967295u, 32530u) | func_2().a) > _wgslsmith_dot_vec2_u32(u_input.b, _wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, 1u), vec2<u32>(81580u, 23465u))), false), true);
    var_1 = !select(vec4<bool>(var_1.x, any(vec2<bool>(true, var_1.x)), false, true || var_1.x), select(vec4<bool>(false, !global0.d, !var_1.x, global0.d), select(!vec4<bool>(false, var_1.x, var_1.x, global0.d), vec4<bool>(true, true, global0.d, global0.d), true), true), !((global0.d & var_1.x) | all(vec2<bool>(false, var_1.x))));
    var_0 = ~4294967295u;
    return func_2();
}

fn func_3(arg_0: Struct_3) -> u32 {
    var var_0 = _wgslsmith_mod_i32(firstTrailingBit(global0.c.b.x) | _wgslsmith_dot_vec4_i32(global0.b.d, global0.c.d), _wgslsmith_mult_i32(1i, _wgslsmith_add_i32(20805i, 1i)));
    var var_1 = global0.e.yx;
    let var_2 = vec2<u32>(55264u, u_input.c.x);
    var var_3 = reverseBits(73154i);
    var var_4 = func_1().b.x;
    return min(_wgslsmith_sub_u32(78264u, var_2.x) << (73364u % 32u), reverseBits(func_1().c));
}

fn func_4(arg_0: vec2<f32>, arg_1: vec2<bool>, arg_2: Struct_1, arg_3: u32) -> Struct_2 {
    let var_0 = arg_1;
    var var_1 = ~max(~max(u_input.b, vec2<u32>(arg_3, 4294967295u)), firstTrailingBit(select(~vec2<u32>(1u, global0.b.c), vec2<u32>(arg_2.a, 4294967295u), var_0)));
    var var_2 = arg_1.x;
    global0 = Struct_2(reverseBits(-(global0.c.b.x >> (u_input.d % 32u)) >> ((14330u & (16712u << (arg_3 % 32u))) % 32u)), global0.b, Struct_1(arg_2.c, reverseBits(-arg_2.d.zxy) >> (max(_wgslsmith_sub_vec3_u32(u_input.c.wyz, vec3<u32>(3558u, 12290u, 1u)), min(vec3<u32>(0u, u_input.d, 13761u), u_input.c.wwx)) % vec3<u32>(32u)), arg_2.c, (~vec4<i32>(arg_2.b.x, 5642i, arg_2.d.x, global0.a) ^ vec4<i32>(arg_2.d.x, global0.b.b.x, global0.c.b.x, -20829i)) >> (max(firstTrailingBit(vec4<u32>(15914u, 0u, global0.b.a, arg_2.a)), vec4<u32>(global0.b.c, arg_2.a, global0.b.a, global0.b.c)) % vec4<u32>(32u))), true, global0.e);
    let var_3 = arg_0.x;
    return Struct_2(arg_2.d.x, global0.b, func_1(), -286f > _wgslsmith_f_op_f32(round(var_3)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(arg_0.x + global0.e.x), -1704f, _wgslsmith_f_op_f32(min(1409f, var_3)), _wgslsmith_f_op_f32(step(167f, arg_0.x))) + _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3, 377f, arg_0.x, global0.e.x) * global0.e), vec4<f32>(-315f, var_3, -440f, var_3))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_4(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(global0.e.wz))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.e.x) + _wgslsmith_f_op_f32(-global0.e.x)), global0.e.x)), !select(!select(vec2<bool>(global0.d, global0.d), vec2<bool>(false, global0.d), global0.d), !vec2<bool>(global0.d, false), select(vec2<bool>(false, false), select(vec2<bool>(global0.d, false), vec2<bool>(global0.d, global0.d), global0.d), select(vec2<bool>(false, global0.d), vec2<bool>(global0.d, true), global0.d))), func_1(), _wgslsmith_dot_vec4_u32(~_wgslsmith_add_vec4_u32(u_input.c, vec4<u32>(u_input.a, 4294967295u, u_input.d, 0u)) & vec4<u32>(global0.b.a, max(global0.b.c, u_input.a), global0.b.c, func_3(Struct_3(Struct_2(31695i, Struct_1(30125u, vec3<i32>(global0.a, -39680i, -1i), 29608u, vec4<i32>(-2147483647i, global0.a, 1i, global0.a)), global0.c, true, global0.e), global0.c.d, global0.b.a))), _wgslsmith_clamp_vec4_u32(u_input.c, _wgslsmith_mult_vec4_u32(~u_input.c, firstTrailingBit(u_input.c)), select(_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 25642u, 1u, 39405u), u_input.c), u_input.c, !vec4<bool>(true, global0.d, true, true)))));
    var var_0 = !select(!select(select(vec4<bool>(global0.d, false, true, true), vec4<bool>(global0.d, false, true, true), vec4<bool>(false, false, global0.d, false)), select(vec4<bool>(true, global0.d, false, true), vec4<bool>(global0.d, global0.d, global0.d, global0.d), vec4<bool>(global0.d, false, false, true)), select(vec4<bool>(global0.d, global0.d, global0.d, global0.d), vec4<bool>(true, global0.d, global0.d, true), vec4<bool>(false, true, false, global0.d))), !(!vec4<bool>(true, global0.d, true, global0.d)), global0.d);
    let var_1 = any(vec3<bool>(global0.d, func_4(vec2<f32>(global0.e.x, -1799f), select(vec2<bool>(global0.d, var_0.x), vec2<bool>(false, global0.d), vec2<bool>(var_0.x, global0.d)), Struct_1(u_input.b.x, global0.c.b, u_input.b.x, vec4<i32>(-19907i, -2147483647i, 6303i, global0.a)), u_input.d).a <= ~(global0.b.d.x >> (48998u % 32u)), var_0.x));
    var_0 = vec4<bool>(var_0.x, (_wgslsmith_sub_u32(~28486u, 0u) & u_input.a) < _wgslsmith_dot_vec4_u32(~(~u_input.c), vec4<u32>(81336u, global0.b.c, countOneBits(u_input.d), 4294967295u)), !all(!vec4<bool>(var_0.x, true, false, true)), any(select(select(vec3<bool>(global0.d, var_0.x, false), select(var_0.yyw, var_0.yxw, var_0.xyw), var_1 != var_1), select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), true), global0.a <= 1i)));
    var var_2 = countOneBits(_wgslsmith_mult_u32(countOneBits(u_input.c.x), u_input.c.x));
    var var_3 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(abs(_wgslsmith_mult_i32(firstTrailingBit(var_3.b.x), -24994i))), 256f, vec4<u32>(var_3.c, _wgslsmith_mult_u32(~var_3.a, 1u), u_input.b.x, ~firstTrailingBit(4294967295u)), ~(~var_3.b.x));
}

