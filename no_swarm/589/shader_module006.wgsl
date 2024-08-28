struct Struct_1 {
    a: u32,
    b: vec2<u32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec4<bool>,
    c: u32,
    d: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: bool,
    c: Struct_2,
    d: bool,
    e: u32,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
    c: i32,
    d: Struct_2,
}

struct Struct_5 {
    a: bool,
    b: vec3<u32>,
    c: f32,
    d: i32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(-1i, 2147483647i, i32(-2147483648), -29505i);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: bool, arg_1: Struct_4) -> vec2<f32> {
    let var_0 = _wgslsmith_mod_u32(arg_1.a.d.a, _wgslsmith_mult_u32((~arg_1.a.c | ~u_input.b) ^ _wgslsmith_dot_vec4_u32(~vec4<u32>(17225u, u_input.b, 0u, arg_1.b.d.a), vec4<u32>(arg_1.a.d.a, u_input.b, u_input.b, arg_1.d.c)), _wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.d.c, 1u), select(arg_1.b.d.b, vec2<u32>(u_input.b, arg_1.d.c), vec2<bool>(false, arg_0)) ^ arg_1.d.d.b)));
    var var_1 = u_input.a.x;
    let var_2 = 60111u;
    global0 = ~vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(abs(-2147483647i), firstTrailingBit(arg_1.c), arg_1.c, abs(0i)), _wgslsmith_div_vec4_i32(vec4<i32>(global0.x, -18541i, arg_1.c, global0.x) | vec4<i32>(arg_1.c, -18449i, 15859i, u_input.a.x), vec4<i32>(37856i, 1i, global0.x, 19020i))), _wgslsmith_sub_i32(38998i, 2147483647i), abs(min(-18731i, reverseBits(20262i))), -1i);
    var var_3 = vec3<i32>(50658i, 1i, _wgslsmith_add_i32(abs(u_input.a.x), arg_1.c >> (~(~31255u) % 32u)));
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(618f, -110f) - vec2<f32>(-424f, -395f)))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-2081f, -239f), vec2<f32>(-374f, 333f)))))), vec2<f32>(_wgslsmith_f_op_f32(sign(285f)), _wgslsmith_f_op_f32(f32(-1f) * -1110f))));
}

fn func_4(arg_0: Struct_4, arg_1: i32, arg_2: vec2<f32>) -> vec4<bool> {
    global0 = abs(vec4<i32>(_wgslsmith_mult_i32(u_input.a.x, u_input.a.x) >> (u_input.b % 32u), u_input.a.x, ~(i32(-1i) * -24916i), arg_1)) >> (~(~_wgslsmith_mult_vec4_u32(vec4<u32>(26187u, 0u, 1u, u_input.b), vec4<u32>(4294967295u, 1u, 1u, arg_0.a.d.a) >> (vec4<u32>(80515u, arg_0.d.d.b.x, 0u, arg_0.a.c) % vec4<u32>(32u)))) % vec4<u32>(32u));
    let var_0 = !(!vec4<bool>(false, false, -32936i != firstTrailingBit(global0.x), !any(arg_0.d.b)));
    var var_1 = arg_0.d.a.wzx;
    var var_2 = arg_0;
    var_2 = Struct_4(Struct_2(var_2.b.a, select(vec4<bool>(true, all(var_0), any(var_0.xx), select(var_2.b.a.x, var_2.b.b.x, false)), vec4<bool>(any(vec2<bool>(false, var_0.x)), var_2.c == -1i, var_0.x, all(vec4<bool>(false, true, false, false))), select(var_2.d.b, select(var_0, vec4<bool>(var_0.x, false, false, var_2.b.b.x), vec4<bool>(var_1.x, true, false, var_2.b.a.x)), arg_0.d.a)), ~1u, Struct_1(46328u << (0u % 32u), arg_0.a.d.b)), var_2.d, -16856i, arg_0.a);
    return var_0;
}

fn func_2() -> i32 {
    global0 = -(firstLeadingBit(~_wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, 20207i, global0.x, u_input.a.x), vec4<i32>(-24646i, global0.x, 0i, u_input.a.x))) >> (vec4<u32>(~(~u_input.b), 55108u, 4294967295u, u_input.b) % vec4<u32>(32u)));
    var var_0 = Struct_4(Struct_2(func_4(Struct_4(Struct_2(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), 21571u, Struct_1(u_input.b, vec2<u32>(u_input.b, 8283u))), Struct_2(vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, true), u_input.b, Struct_1(1u, vec2<u32>(1u, u_input.b))), 68999i, Struct_2(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), u_input.b, Struct_1(88376u, vec2<u32>(0u, 0u)))), abs(~1i), _wgslsmith_f_op_vec2_f32(func_3(true, Struct_4(Struct_2(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false), u_input.b, Struct_1(1u, vec2<u32>(u_input.b, 4294967295u))), Struct_2(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), 25904u, Struct_1(u_input.b, vec2<u32>(u_input.b, 42339u))), 2147483647i, Struct_2(vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, false), 1u, Struct_1(u_input.b, vec2<u32>(4294967295u, 4294967295u))))))), !(!select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, false), true)), _wgslsmith_dot_vec3_u32(vec3<u32>(countOneBits(u_input.b), 4294967295u, min(4294967295u, u_input.b)), ~select(vec3<u32>(0u, u_input.b, 17446u), vec3<u32>(4294967295u, u_input.b, 2759u), true)), Struct_1(u_input.b, _wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, 6109u) >> (vec2<u32>(u_input.b, 1u) % vec2<u32>(32u)), vec2<u32>(7892u, 0u) ^ vec2<u32>(u_input.b, u_input.b)))), Struct_2(func_4(Struct_4(Struct_2(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false), 0u, Struct_1(4294967295u, vec2<u32>(u_input.b, u_input.b))), Struct_2(vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, false), u_input.b, Struct_1(1u, vec2<u32>(u_input.b, u_input.b))), 1i, Struct_2(vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false), u_input.b, Struct_1(u_input.b, vec2<u32>(36929u, 0u)))), global0.x, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-2130f, 983f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-424f, -849f) - vec2<f32>(362f, -336f))))), vec4<bool>(true, true, true, true), u_input.b, Struct_1(u_input.b, max(~vec2<u32>(15954u, 1u), vec2<u32>(1u, 1u)))), -46605i, Struct_2(!(!select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false), true)), vec4<bool>(true, true, 1111f <= _wgslsmith_f_op_f32(floor(-927f)), any(vec2<bool>(true, true))), countOneBits(~(52021u ^ u_input.b)), Struct_1(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.b, 1u) & vec3<u32>(4294967295u, u_input.b, u_input.b), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b, u_input.b, 4294967295u), vec3<u32>(u_input.b, 0u, 53529u))), max(vec2<u32>(7779u, 1u) << (vec2<u32>(u_input.b, 5840u) % vec2<u32>(32u)), _wgslsmith_sub_vec2_u32(vec2<u32>(4637u, u_input.b), vec2<u32>(64285u, 3393u))))));
    var var_1 = !((!any(vec4<bool>(var_0.d.b.x, var_0.d.a.x, var_0.a.a.x, var_0.a.a.x)) & (var_0.b.a.x | any(vec2<bool>(var_0.a.b.x, true)))) || (var_0.d.c != _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.a.d.b.x, u_input.b) | var_0.d.d.b, abs(vec2<u32>(38570u, 15694u)))));
    global0 = select(vec4<i32>(_wgslsmith_div_i32(var_0.c, u_input.a.x), -var_0.c, 1i, _wgslsmith_sub_i32(_wgslsmith_div_i32(select(var_0.c, -1079i, var_0.d.a.x), ~var_0.c), _wgslsmith_add_i32(1i, select(u_input.a.x, u_input.a.x, var_0.b.a.x)))), reverseBits(vec4<i32>(44505i, var_0.c << (5388u % 32u), ~(-1i), u_input.a.x) | countOneBits(vec4<i32>(global0.x, global0.x, var_0.c, global0.x))), var_0.d.b);
    var var_2 = var_0.b.a.x & all(vec2<bool>(all(vec4<bool>(var_0.d.a.x, var_0.a.a.x, var_0.a.a.x, var_0.b.a.x)), true));
    return var_0.c;
}

fn func_1(arg_0: f32) -> vec4<f32> {
    let var_0 = vec4<bool>(!all(vec2<bool>(true, true)), false, all(vec2<bool>((arg_0 == arg_0) && true, u_input.a.x >= _wgslsmith_mod_i32(-2147483647i, u_input.a.x))), select(false, false, false));
    let var_1 = _wgslsmith_f_op_f32(-arg_0);
    global0 = countOneBits(vec4<i32>(~u_input.a.x, -_wgslsmith_sub_i32(u_input.a.x, _wgslsmith_add_i32(u_input.a.x, -22006i)), -1i, func_2()));
    global0 = abs(select(vec4<i32>(u_input.a.x, u_input.a.x, i32(-1i) * -58418i, max(global0.x, u_input.a.x)) << (_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b, u_input.b, 1u, 1u), vec4<u32>(u_input.b, 4294967295u, 4294967295u, 4294967295u) & vec4<u32>(u_input.b, 1u, u_input.b, u_input.b)) % vec4<u32>(32u)), vec4<i32>(_wgslsmith_div_i32(~36087i, i32(-1i) * -66371i), -global0.x, global0.x, _wgslsmith_add_i32(-46932i, -u_input.a.x)), vec4<bool>(!var_0.x, !var_0.x, true, !all(var_0.xw))));
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -933f) + var_1)), _wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(select(var_1, var_1, var_0.x && !var_0.x))));
    return _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1115f, var_1, arg_0, 632f), vec4<f32>(arg_0, -556f, 304f, 537f)))))));
}

fn func_5(arg_0: bool, arg_1: i32, arg_2: vec4<f32>, arg_3: Struct_3) -> bool {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(-arg_2.x), false & !func_4(Struct_4(Struct_2(arg_3.c.b, vec4<bool>(false, false, true, arg_3.b), 0u, arg_3.c.d), arg_3.c, -2673i, arg_3.c), -1i, _wgslsmith_f_op_vec2_f32(abs(arg_2.yz))).x, Struct_2(vec4<bool>(false, arg_3.c.b.x, false, false), func_4(Struct_4(Struct_2(arg_3.c.b, vec4<bool>(arg_0, arg_0, true, arg_0), arg_3.c.d.b.x, Struct_1(1u, vec2<u32>(arg_3.c.d.b.x, 21415u))), Struct_2(arg_3.c.b, vec4<bool>(arg_3.b, true, arg_3.c.b.x, true), 4294967295u, Struct_1(u_input.b, vec2<u32>(683u, u_input.b))), -51548i, Struct_2(vec4<bool>(arg_3.c.b.x, arg_0, true, arg_0), arg_3.c.b, arg_3.c.c, arg_3.c.d)), global0.x, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(arg_2.yw - arg_2.zz)))), arg_3.e, arg_3.c.d), true, 8u);
    let var_1 = countOneBits(-2147483647i);
    let var_2 = ~(~(-24995i));
    var var_3 = 1437f;
    global0 = vec4<i32>(-69983i & _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(global0.yx, u_input.a), vec2<i32>(0i, 0i)), _wgslsmith_div_i32(~u_input.a.x, _wgslsmith_mod_i32(u_input.a.x, 1i))), (_wgslsmith_add_i32(~(-28524i), _wgslsmith_add_i32(var_1, u_input.a.x)) & -2147483647i) & (_wgslsmith_clamp_i32(i32(-1i) * -79616i, _wgslsmith_dot_vec4_i32(vec4<i32>(global0.x, 2147483647i, var_2, u_input.a.x), vec4<i32>(arg_1, arg_1, 14745i, -41758i)), 2147483647i) ^ -1i), _wgslsmith_div_i32(~1i >> (reverseBits(u_input.b) % 32u), firstLeadingBit(-var_1)) << (32977u % 32u), _wgslsmith_clamp_i32(arg_1, -2147483647i, firstTrailingBit(-2147483647i)));
    return all(!select(vec4<bool>(all(vec2<bool>(false, arg_0)), var_0.b, all(arg_3.c.a.zxw), any(arg_3.c.a)), !var_0.c.b, all(arg_3.c.a.wwx)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(all(vec3<bool>(true, !any(vec2<bool>(false, false)), true || any(vec2<bool>(false, false)))), 2147483647i, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-638f, -1236f, -472f, 201f)) - vec4<f32>(-674f, 1439f, 1668f, -446f)) * _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(func_1(-378f))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-516f, 236f, -536f, -1000f)) * _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(vec4<f32>(221f, -669f, 1800f, 999f), vec4<f32>(482f, 1353f, 284f, 1000f)))))), Struct_3(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_1(-1519f)).x)), any(vec2<bool>(all(vec3<bool>(true, false, false)), select(false, false, false))), Struct_2(!select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, false), true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true)), 4294967295u, Struct_1(~u_input.b, vec2<u32>(u_input.b, u_input.b))), (0u | u_input.b) <= u_input.b, 16033u));
    global0 = (max(vec4<i32>(u_input.a.x, firstTrailingBit(u_input.a.x), 8289i, -7311i), ~(~vec4<i32>(5692i, global0.x, u_input.a.x, 1i))) & select(vec4<i32>(global0.x, 1i, u_input.a.x | u_input.a.x, _wgslsmith_mod_i32(global0.x, global0.x)), vec4<i32>(u_input.a.x, abs(global0.x), -13596i, u_input.a.x << (u_input.b % 32u)), select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false)))) & vec4<i32>(select(u_input.a.x, -(global0.x & -18307i), false), 2147483647i, reverseBits(~1i), -45204i);
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(2010f * 876f), -812f, -1576f) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(388f, -468f, 514f)) + vec3<f32>(-1090f, 696f, -752f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)))) - _wgslsmith_f_op_vec3_f32(step(vec3<f32>(921f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1022f - 801f) * _wgslsmith_f_op_f32(-1084f - 818f)), 343f), vec3<f32>(-1116f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-745f + 686f), 1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1000f)))))));
    let var_2 = _wgslsmith_add_vec3_i32(global0.wwz, global0.xzx) >> (_wgslsmith_clamp_vec3_u32(firstTrailingBit(abs(vec3<u32>(31583u, u_input.b, 16970u)) ^ _wgslsmith_mod_vec3_u32(vec3<u32>(5305u, 6221u, 1u), vec3<u32>(u_input.b, u_input.b, u_input.b))), vec3<u32>(u_input.b | 0u, ~0u, u_input.b) & _wgslsmith_mult_vec3_u32(~vec3<u32>(u_input.b, 1u, u_input.b), vec3<u32>(61510u, u_input.b, u_input.b)), firstTrailingBit(vec3<u32>(abs(1u), u_input.b, u_input.b ^ u_input.b))) % vec3<u32>(32u));
    global0 = vec4<i32>(var_2.x, 7820i << (_wgslsmith_clamp_u32(0u, ~1u, 58103u) % 32u), abs(15267i), _wgslsmith_clamp_i32(var_2.x, select(_wgslsmith_sub_i32(var_2.x, -17374i), i32(-1i) * -45615i, true), u_input.a.x)) >> (vec4<u32>(select(u_input.b, _wgslsmith_add_u32(u_input.b, 26092u) ^ min(u_input.b, u_input.b), func_5(any(vec4<bool>(false, false, false, true)), 46853i | global0.x, _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_1.x, 1052f, 359f)), Struct_3(var_1.x, false, Struct_2(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), 33754u, Struct_1(u_input.b, vec2<u32>(u_input.b, u_input.b))), true, u_input.b))), _wgslsmith_div_u32(_wgslsmith_mult_u32(~u_input.b, abs(23763u)), ~_wgslsmith_div_u32(u_input.b, 65776u)), ~1u, _wgslsmith_div_u32(max(44572u, ~1u), u_input.b)) % vec4<u32>(32u));
    let var_3 = _wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.x, -112f) * 667f) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(889f, _wgslsmith_f_op_vec4_f32(func_1(var_1.x)).x))));
    let var_4 = Struct_5(64174u < _wgslsmith_add_u32(~(16786u & u_input.b), 19489u), select(countOneBits(max(select(vec3<u32>(192u, 59929u, u_input.b), vec3<u32>(0u, 4294967295u, u_input.b), false), vec3<u32>(1u, u_input.b, u_input.b) & vec3<u32>(u_input.b, 0u, u_input.b))), ~_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, u_input.b, 322u), vec3<u32>(4294967295u, 4294967295u, u_input.b)) & vec3<u32>(u_input.b, _wgslsmith_mult_u32(4294967295u, u_input.b), ~4294967295u), !func_4(Struct_4(Struct_2(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false), 1404u, Struct_1(u_input.b, vec2<u32>(u_input.b, u_input.b))), Struct_2(vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, true), 1u, Struct_1(13050u, vec2<u32>(0u, 0u))), global0.x, Struct_2(vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, false), 20465u, Struct_1(u_input.b, vec2<u32>(112963u, u_input.b)))), firstTrailingBit(2147483647i), _wgslsmith_f_op_vec2_f32(-var_1.yx)).zzw), _wgslsmith_f_op_f32(-566f * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_3 + var_3))), 683f))), func_2(), Struct_1(max(~(~64250u), u_input.b), ~(~(vec2<u32>(u_input.b, u_input.b) | vec2<u32>(1u, 77882u)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(global0.x, var_4.d, 0i, u_input.a.x), ~vec4<i32>(global0.x, var_2.x, var_4.d, -19567i)), ~vec4<i32>(select(0i, var_2.x, var_4.a), 17064i, -var_2.x, 43785i)), vec3<u32>(1u, reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 23574u), var_4.b)), max(~(~410u), 4294967295u)));
}

