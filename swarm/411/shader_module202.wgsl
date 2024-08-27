struct Struct_1 {
    a: f32,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(true, false, true, true);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_2) -> vec4<bool> {
    global0 = !select(vec4<bool>(all(vec3<bool>(false, global0.x, global0.x)), false, true, false), vec4<bool>(true, !(1u <= arg_2.a.b), !all(global0.xzx), select(arg_2.b.a != -550f, global0.x, !global0.x)), !select(vec4<bool>(true, global0.x, true, global0.x), !vec4<bool>(false, true, true, global0.x), false));
    return select(!(!vec4<bool>(u_input.d.x < 1i, false, true, any(vec4<bool>(global0.x, true, global0.x, global0.x)))), vec4<bool>(global0.x, select(true, !(!global0.x), any(!vec4<bool>(false, global0.x, true, global0.x))), global0.x, true), !global0.x);
}

fn func_2(arg_0: i32, arg_1: Struct_2) -> Struct_1 {
    var var_0 = arg_1.b;
    global0 = vec4<bool>(global0.x, true, false, false);
    let var_1 = -28284i;
    global0 = select(!(!select(vec4<bool>(global0.x, false, global0.x, true), !vec4<bool>(true, false, global0.x, global0.x), var_0.a > 983f)), select(func_3(arg_1.b, arg_1.c, Struct_2(Struct_1(var_0.a, 1u), Struct_1(arg_1.c.a, 0u), Struct_1(-881f, u_input.b))), !(!func_3(arg_1.c, Struct_1(var_0.a, u_input.c.x), arg_1)), global0.x), select(select(select(vec4<bool>(false, true, true, true), !vec4<bool>(true, true, global0.x, global0.x), all(vec3<bool>(false, global0.x, global0.x))), vec4<bool>(global0.x, 0i > u_input.d.x, true, true), (1u ^ u_input.b) <= _wgslsmith_mod_u32(109301u, arg_1.a.b)), vec4<bool>(global0.x, global0.x && all(vec3<bool>(false, global0.x, global0.x)), global0.x & global0.x, global0.x), true));
    var_0 = arg_1.c;
    return Struct_1(arg_1.c.a, 4294967295u);
}

fn func_4(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: vec3<bool>, arg_3: u32) -> f32 {
    var var_0 = vec3<bool>(true, all(global0.zy), 4294967295u < _wgslsmith_sub_u32(arg_1.x, _wgslsmith_mod_u32(~25666u, 4294967295u)));
    global0 = !select(select(!select(vec4<bool>(global0.x, var_0.x, false, true), vec4<bool>(false, false, true, false), vec4<bool>(arg_2.x, global0.x, arg_2.x, true)), !select(vec4<bool>(true, arg_2.x, true, false), vec4<bool>(false, var_0.x, global0.x, true), vec4<bool>(false, arg_2.x, false, true)), vec4<bool>(global0.x, !global0.x, true, !global0.x)), vec4<bool>(false, (272f >= arg_0.b.a) && !global0.x, !(1596f > arg_0.c.a), var_0.x), any(!(!vec3<bool>(arg_2.x, arg_2.x, true))));
    var var_1 = var_0.x;
    global0 = select(!vec4<bool>(all(arg_2), func_3(Struct_1(arg_0.c.a, 7452u), arg_0.c, arg_0).x, true, any(select(vec4<bool>(arg_2.x, arg_2.x, arg_2.x, false), vec4<bool>(var_0.x, var_0.x, false, true), vec4<bool>(global0.x, false, true, var_0.x)))), func_3(arg_0.c, arg_0.a, arg_0), !vec4<bool>(arg_2.x, func_3(Struct_1(121f, 4294967295u), arg_0.b, arg_0).x, global0.x, var_0.x));
    var_1 = !(_wgslsmith_f_op_f32(-arg_0.b.a) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-234f, _wgslsmith_f_op_f32(f32(-1f) * -518f)))));
    return arg_0.c.a;
}

fn func_1() -> vec2<f32> {
    var var_0 = vec3<bool>(!all(!select(vec4<bool>(global0.x, global0.x, global0.x, global0.x), vec4<bool>(false, global0.x, false, false), global0.x)), -1990f >= _wgslsmith_f_op_f32(func_4(Struct_2(Struct_1(-216f, u_input.c.x), func_2(u_input.d.x, Struct_2(Struct_1(1318f, 35888u), Struct_1(180f, u_input.c.x), Struct_1(152f, 23262u))), func_2(8979i, Struct_2(Struct_1(316f, 37099u), Struct_1(676f, 81225u), Struct_1(907f, u_input.b)))), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b, u_input.b, u_input.c.x), select(u_input.c.wzy, vec3<u32>(4294967295u, u_input.b, u_input.c.x), true), firstLeadingBit(u_input.c.xzz)), !vec3<bool>(true, global0.x, false), countOneBits(countOneBits(u_input.b)))), global0.x);
    let var_1 = firstLeadingBit(_wgslsmith_mult_vec2_i32(~_wgslsmith_add_vec2_i32(vec2<i32>(1860i, -12177i), vec2<i32>(u_input.d.x, u_input.a)), u_input.d)) & vec2<i32>(select(u_input.a, countOneBits(1i), true), -5436i);
    let var_2 = true;
    let var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-759f - 171f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(424f, -1126f)), -1091f));
    global0 = select(vec4<bool>(true, var_0.x, 53680i == var_1.x, true), !(!vec4<bool>(var_2, !var_0.x, true & var_2, true)), var_0.x);
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_3, -1468f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3, 2651f))) * _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-628f, -758f), vec2<f32>(-198f, 869f)), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1000f, 992f))))) + vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_3, var_3)) * _wgslsmith_f_op_f32(min(605f, 209f))), _wgslsmith_f_op_f32(max(1702f, _wgslsmith_f_op_f32(var_3 * var_3))))));
}

fn func_5(arg_0: vec2<f32>, arg_1: f32, arg_2: vec3<f32>) -> vec4<bool> {
    global0 = vec4<bool>(!global0.x, !global0.x, !global0.x, !(!select(true, !global0.x, global0.x)));
    let var_0 = func_2(_wgslsmith_clamp_i32(-1i << (_wgslsmith_add_u32(1u, u_input.b) % 32u), _wgslsmith_clamp_i32(~(-1i), ~u_input.d.x, -1i), -reverseBits(-1i << (u_input.b % 32u))), Struct_2(func_2(0i, Struct_2(func_2(u_input.d.x, Struct_2(Struct_1(-571f, u_input.c.x), Struct_1(arg_0.x, 0u), Struct_1(1651f, 1u))), Struct_1(arg_0.x, 0u), Struct_1(arg_1, u_input.c.x))), Struct_1(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_dot_vec2_u32(~u_input.c.zy, u_input.c.yz)), func_2(u_input.d.x, Struct_2(func_2(-2147483647i, Struct_2(Struct_1(arg_0.x, u_input.b), Struct_1(arg_2.x, 62952u), Struct_1(1158f, 41687u))), Struct_1(arg_2.x, 18424u), func_2(u_input.a, Struct_2(Struct_1(arg_1, 85278u), Struct_1(1000f, 0u), Struct_1(arg_1, u_input.c.x)))))));
    global0 = !(!vec4<bool>(!global0.x, all(!global0.www), true, !(512f < arg_1)));
    var var_1 = all(!select(!(!vec3<bool>(global0.x, true, global0.x)), !(!global0.xww), global0.x & func_3(var_0, var_0, Struct_2(Struct_1(-2143f, var_0.b), Struct_1(arg_1, 60705u), Struct_1(arg_2.x, u_input.c.x))).x));
    global0 = select(!vec4<bool>(-1i <= (u_input.d.x << (1u % 32u)), true | (false & global0.x), false, false), select(select(!vec4<bool>(true, global0.x, global0.x, global0.x), func_3(Struct_1(arg_1, 26674u), var_0, Struct_2(var_0, Struct_1(-1742f, 4294967295u), Struct_1(-1385f, var_0.b))), global0.x), !vec4<bool>(true, true, true, all(vec2<bool>(global0.x, global0.x))), vec4<bool>(true, true, var_0.a > _wgslsmith_f_op_f32(-1523f - arg_0.x), all(global0.zz))), (global0.x | global0.x) && false);
    return select(vec4<bool>(false, !(~var_0.b <= ~u_input.b), true, any(select(vec2<bool>(global0.x, false), global0.zz, global0.x)) != any(func_3(Struct_1(arg_0.x, u_input.c.x), Struct_1(1411f, var_0.b), Struct_2(var_0, Struct_1(var_0.a, u_input.b), Struct_1(var_0.a, 4294967295u))))), func_3(var_0, Struct_1(_wgslsmith_f_op_f32(-func_2(19470i, Struct_2(var_0, var_0, Struct_1(var_0.a, 0u))).a), ~_wgslsmith_sub_u32(var_0.b, u_input.b)), Struct_2(func_2(152i, Struct_2(var_0, Struct_1(arg_1, var_0.b), var_0)), Struct_1(_wgslsmith_div_f32(-125f, arg_0.x), _wgslsmith_clamp_u32(0u, 6160u, 53279u)), Struct_1(_wgslsmith_f_op_f32(-arg_2.x), var_0.b))), !(!any(global0.zx)) && global0.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = !(!select(func_5(_wgslsmith_f_op_vec2_f32(func_1()), func_2(2147483647i, Struct_2(Struct_1(1145f, 4294967295u), Struct_1(-222f, 0u), Struct_1(2516f, u_input.c.x))).a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-410f, -674f, 854f))), func_5(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1887f, 409f))), -551f, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-441f, 299f, -220f))), select(true, false, global0.x && global0.x)));
    let var_0 = u_input.c.zx;
    var var_1 = u_input.b;
    let var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(-233f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_4(Struct_2(func_2(1i, Struct_2(Struct_1(529f, 4294967295u), Struct_1(-225f, u_input.c.x), Struct_1(1115f, u_input.b))), Struct_1(-642f, 1u), func_2(-12092i, Struct_2(Struct_1(364f, var_0.x), Struct_1(901f, 0u), Struct_1(-525f, 47619u)))), u_input.c.wxy | select(u_input.c.yzw, u_input.c.yzx, false), vec3<bool>(global0.x, all(vec4<bool>(false, false, global0.x, false)), u_input.d.x != 12659i), ~30233u)), 1f)));
    global0 = !(!select(vec4<bool>(true, 51650u != u_input.b, true, true), func_3(func_2(u_input.a, Struct_2(Struct_1(var_2, 23810u), Struct_1(var_2, var_0.x), Struct_1(-323f, u_input.b))), func_2(7169i, Struct_2(Struct_1(1545f, 22023u), Struct_1(var_2, var_0.x), Struct_1(1000f, var_0.x))), Struct_2(Struct_1(-1735f, 0u), Struct_1(-695f, var_0.x), Struct_1(var_2, u_input.c.x))), vec4<bool>(63063u >= u_input.c.x, !global0.x, false, any(global0.xy))));
    var_1 = var_0.x;
    let var_3 = select(~(~(~vec4<u32>(u_input.b, u_input.c.x, var_0.x, 4294967295u))), u_input.c, !select(vec4<bool>(true, true, func_5(vec2<f32>(268f, var_2), var_2, vec3<f32>(-1378f, var_2, -362f)).x, any(vec3<bool>(true, global0.x, false))), func_3(Struct_1(var_2, 1u), Struct_1(150f, 63002u), Struct_2(Struct_1(var_2, 1932u), Struct_1(1883f, 23565u), Struct_1(var_2, 0u))), global0.x));
    let var_4 = Struct_1(_wgslsmith_f_op_f32(-1309f * var_2), var_0.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-421f, -614f)) + var_2))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1372f - var_4.a)), _wgslsmith_f_op_f32(-var_4.a))))));
}

