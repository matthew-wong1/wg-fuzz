struct Struct_1 {
    a: bool,
    b: bool,
    c: vec3<bool>,
    d: vec4<bool>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec4<u32>,
    c: Struct_1,
    d: vec4<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<bool>,
    c: f32,
    d: Struct_1,
    e: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: vec3<i32>) -> vec3<bool> {
    var var_0 = Struct_3(Struct_1(any(!select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false))), true, !vec3<bool>(true, all(vec4<bool>(false, false, true, true)), all(vec3<bool>(false, true, true))), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), false))), vec4<bool>(all(select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false))), true, false, false & any(vec4<bool>(false, false, false, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1000f)) * _wgslsmith_div_f32(511f, -323f)), Struct_1(true && all(vec4<bool>(true, true, true, true)), true, vec3<bool>(true, true, true), !vec4<bool>(true, true, true, select(false, false, false))), ~2147483647i);
    var_0 = Struct_3(Struct_1(var_0.d.c.x, true, !vec3<bool>(all(vec4<bool>(true, false, false, var_0.d.d.x)), true, select(true, var_0.d.d.x, true)), !var_0.a.d), var_0.d.d, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(-840f))))))), Struct_1(true, true && (true == !var_0.b.x), select(!(!vec3<bool>(true, false, var_0.d.c.x)), select(select(var_0.d.d.wyx, var_0.a.c, var_0.a.c), select(var_0.d.d.ywx, vec3<bool>(var_0.b.x, var_0.b.x, var_0.b.x), vec3<bool>(var_0.a.a, var_0.d.c.x, false)), all(vec3<bool>(var_0.d.c.x, false, false))), 1u >= _wgslsmith_dot_vec2_u32(vec2<u32>(27214u, 4294967295u), vec2<u32>(4294967295u, 4294967295u))), vec4<bool>(var_0.b.x, true, var_0.a.d.x, var_0.d.a | var_0.a.c.x)), select(arg_0.x, _wgslsmith_mult_i32(2750i, -abs(var_0.e)), all(vec4<bool>(var_0.b.x, false, var_0.d.a, true))));
    var_0 = Struct_3(Struct_1(any(!var_0.b.xw), !(!(arg_0.x > var_0.e)), vec3<bool>(false, true, !any(vec4<bool>(false, true, var_0.b.x, var_0.d.d.x))), var_0.b), vec4<bool>(var_0.a.d.x, any(vec4<bool>(true, true, true, true)), var_0.a.d.x, !var_0.d.b & false), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0.c), _wgslsmith_f_op_f32(round(var_0.c)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_0.c)) * _wgslsmith_f_op_f32(f32(-1f) * -1912f))), Struct_1(!any(!vec2<bool>(true, var_0.d.d.x)), !(abs(1i) <= reverseBits(u_input.a)), select(select(var_0.a.c, select(vec3<bool>(true, false, false), vec3<bool>(false, var_0.d.b, var_0.d.d.x), false), false), vec3<bool>(false && var_0.a.b, var_0.c > -1627f, any(vec3<bool>(false, var_0.a.d.x, false))), true), !select(vec4<bool>(var_0.d.b, var_0.b.x, true, var_0.b.x), var_0.b, select(vec4<bool>(var_0.d.a, var_0.d.b, var_0.d.a, var_0.b.x), var_0.a.d, vec4<bool>(var_0.d.a, var_0.b.x, true, false)))), 31450i);
    var var_1 = 1u;
    let var_2 = Struct_3(Struct_1(var_0.a.a, !(_wgslsmith_f_op_f32(exp2(var_0.c)) <= _wgslsmith_f_op_f32(max(-1023f, var_0.c))), vec3<bool>(any(select(var_0.b, var_0.b, vec4<bool>(var_0.b.x, false, true, true))), !var_0.d.a, var_0.d.b), !select(vec4<bool>(var_0.a.b, var_0.d.c.x, false, var_0.a.c.x), var_0.d.d, any(var_0.d.d))), var_0.b, _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0.c)) + _wgslsmith_f_op_f32(852f + var_0.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.c - var_0.c) + 420f)))), var_0.d, ~arg_0.x);
    return select(!var_2.a.c, !select(var_0.a.c, var_0.d.d.ywz, vec3<bool>(var_0.d.b, true, true)), vec3<bool>(false, var_2.a.b, true | var_2.a.d.x));
}

fn func_2() -> Struct_1 {
    let var_0 = reverseBits(~abs(vec4<i32>(~u_input.a, u_input.a >> (1u % 32u), 2987i, 0i)));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1000f)));
    var var_2 = Struct_1(true, true, select(select(select(vec3<bool>(true, true, true), func_3(vec3<i32>(26407i, 1i, u_input.a)), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), true)), vec3<bool>(true, true, true), true), select(select(select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(true, false, false)), vec3<bool>(true, false, false), true), !select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), true), !any(vec2<bool>(false, false))), any(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false))) | (var_1 < var_1)), select(vec4<bool>((i32(-1i) * -32076i) >= -var_0.x, false, false, true), select(vec4<bool>(true, true, true, true), vec4<bool>(all(vec3<bool>(false, true, true)), select(true, false, true), true, false), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, !all(vec3<bool>(true, true, true)), func_3(vec3<i32>(u_input.a, u_input.a, -10584i)).x)));
    var var_3 = vec3<f32>(805f, _wgslsmith_f_op_f32(abs(-2651f)), var_1);
    var_2 = Struct_1(var_2.c.x, var_2.d.x, !select(var_2.c, func_3(var_0.yyx), true), select(!select(select(vec4<bool>(var_2.d.x, var_2.b, var_2.c.x, true), var_2.d, true), var_2.d, var_2.d), !select(!vec4<bool>(var_2.b, false, var_2.b, true), select(vec4<bool>(var_2.a, true, false, var_2.b), var_2.d, false), !var_2.c.x), var_2.c.x));
    return Struct_1(var_2.d.x, var_2.d.x, var_2.d.zww, vec4<bool>((var_2.b || true) || true, !(!var_2.c.x) && func_3(~vec3<i32>(1i, 1311i, 67092i)).x, var_2.d.x, true));
}

fn func_1() -> bool {
    var var_0 = func_2();
    var var_1 = Struct_2(~select(-vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), ~vec4<i32>(28900i, 8844i, u_input.a, 27108i), vec4<bool>(false, var_0.d.x, var_0.a, var_0.d.x)) ^ _wgslsmith_div_vec4_i32(vec4<i32>(abs(2147483647i), firstLeadingBit(u_input.a), u_input.a, min(u_input.a, 1485i)), vec4<i32>(min(52913i, u_input.a), _wgslsmith_sub_i32(46005i, 4709i), u_input.a, u_input.a >> (1u % 32u))), _wgslsmith_mod_vec4_u32(abs(~(~vec4<u32>(18176u, 1u, 75209u, 6482u))), ~(select(vec4<u32>(51927u, 1u, 4294967295u, 4294967295u), vec4<u32>(3181u, 1u, 4294967295u, 33235u), var_0.d) & _wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 7795u, 4294967295u), vec4<u32>(4294967295u, 1u, 54913u, 9729u)))), func_2(), var_0.d);
    let var_2 = abs(_wgslsmith_mod_vec2_u32(vec2<u32>(abs(var_1.b.x), var_1.b.x | 4294967295u), var_1.b.wx) | (reverseBits(countOneBits(vec2<u32>(4294967295u, var_1.b.x))) | vec2<u32>(~1u, _wgslsmith_add_u32(var_1.b.x, 11475u))));
    let var_3 = ~vec2<u32>(~_wgslsmith_add_u32(1u, var_2.x), 1u);
    let var_4 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(462f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-935f, -373f)) - _wgslsmith_f_op_f32(3302f * 341f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(706f)) - -956f)), false))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_4), _wgslsmith_div_f32(var_4, var_4), true)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(436f + -894f))) + -2900f) > var_4;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<bool>(!any(vec4<bool>(true, func_1(), true, true)), true, func_3(~_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, 31323i, 29656i), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, -2147483647i, -2147483647i), vec3<i32>(u_input.a, 0i, u_input.a)))).x);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1679f + -2355f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -250f))))));
    let var_2 = func_2();
    var var_3 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1570f, -1049f, -1621f, -795f), vec4<f32>(907f, 165f, 276f, 1176f))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-451f, -966f, 526f, 573f))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1110f, -340f, -2056f, -1000f) - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-632f, 182f, 1341f, -1311f))))))));
    let var_4 = Struct_3(var_2, vec4<bool>(true, var_0.x, false, var_0.x), var_3.x, var_2, u_input.a);
    var var_5 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(countOneBits(vec2<u32>(1u, _wgslsmith_clamp_u32(0u, 4294967295u, 4294967295u)))), _wgslsmith_clamp_u32(~1u, 1u, 0u), _wgslsmith_sub_i32(u_input.a, var_4.e) & u_input.a, vec4<f32>(_wgslsmith_f_op_f32(var_4.c * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_4.c)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-318f)), _wgslsmith_f_op_f32(var_3.x + 138f))), _wgslsmith_f_op_f32(step(var_3.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -767f) * var_4.c))), _wgslsmith_f_op_f32(var_4.c * 1000f)));
}

