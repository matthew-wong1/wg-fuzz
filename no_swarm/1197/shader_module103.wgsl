struct Struct_1 {
    a: bool,
    b: bool,
    c: f32,
    d: i32,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec4<f32>,
    c: f32,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec3<i32>, arg_1: u32, arg_2: vec3<u32>) -> u32 {
    var var_0 = Struct_2(Struct_1(true, (_wgslsmith_dot_vec4_i32(vec4<i32>(4229i, u_input.b, arg_0.x, 28291i), vec4<i32>(-2147483647i, u_input.b, u_input.c.x, 10153i)) >= -1i) & true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(1901f, -1691f)))) + 1439f), reverseBits((i32(-1i) * -17253i) & arg_0.x), 60688u));
    var var_1 = _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-249f, _wgslsmith_f_op_f32(-var_0.a.c)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(1000f, -636f)))))), _wgslsmith_f_op_f32(-var_0.a.c), _wgslsmith_f_op_f32(var_0.a.c + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(var_0.a.c, 1073f)))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-351f, var_0.a.c, -1313f, var_0.a.c), vec4<f32>(var_0.a.c, -842f, 706f, -698f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(222f, var_0.a.c, 756f, 518f)))))));
    let var_2 = Struct_3(vec2<u32>(var_0.a.e, _wgslsmith_mod_u32(4294967295u, ~countOneBits(58745u))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(-256f, -1615f, -316f, var_0.a.c) - _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-982f, 776f, var_1.x, -165f), vec4<f32>(var_1.x, var_0.a.c, 707f, var_1.x)))))))), _wgslsmith_f_op_f32(-1009f + var_1.x), Struct_1(true, _wgslsmith_add_i32(var_0.a.d, -9653i) > -var_0.a.d, var_1.x, var_0.a.d, 4294967295u));
    var var_3 = !vec2<bool>(!var_2.d.a, select(var_2.d.b, select(var_0.a.b, var_2.d.b, false) & all(vec2<bool>(true, var_0.a.b)), var_0.a.b));
    var_3 = !(!select(vec2<bool>(true, true), vec2<bool>(true, var_2.d.a), true));
    return select(~_wgslsmith_dot_vec2_u32(vec2<u32>(~arg_2.x, u_input.d), abs(var_2.a) & ~arg_2.yy), arg_2.x, !(12509u == u_input.a));
}

fn func_2() -> Struct_1 {
    let var_0 = !select(select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false)), select(select(vec2<bool>(false, false), vec2<bool>(false, false), false), select(vec2<bool>(false, false), vec2<bool>(false, true), false), false), !select(vec2<bool>(false, false), vec2<bool>(false, true), false)), select(vec2<bool>(all(vec4<bool>(false, true, true, true)), any(vec2<bool>(true, true))), vec2<bool>(true, true), vec2<bool>(true, true)), !(!select(vec2<bool>(false, false), vec2<bool>(true, true), false)));
    var var_1 = u_input.a;
    let var_2 = firstTrailingBit(select(~_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, u_input.a, 4294967295u, u_input.a), reverseBits(vec4<u32>(u_input.d, u_input.a, u_input.a, u_input.a)), _wgslsmith_sub_vec4_u32(vec4<u32>(77200u, u_input.a, 37032u, u_input.a), vec4<u32>(4294967295u, 3666u, 1u, u_input.d))), vec4<u32>(u_input.a, func_3(_wgslsmith_sub_vec3_i32(vec3<i32>(-1i, 10302i, u_input.e), u_input.c), u_input.a, vec3<u32>(1u, 4294967295u, u_input.d)), ~74650u, 0u), vec4<bool>(true, any(var_0), true, false)));
    let var_3 = _wgslsmith_dot_vec2_i32(~abs(vec2<i32>(u_input.e, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, u_input.b, 2147483647i, u_input.e), vec4<i32>(-1i, u_input.e, u_input.b, u_input.b)))), select(countOneBits(~reverseBits(u_input.c.xy)), firstTrailingBit(vec2<i32>(3551i >> (var_2.x % 32u), _wgslsmith_dot_vec3_i32(vec3<i32>(1i, u_input.e, 1i), u_input.c))), !vec2<bool>(false, var_0.x)));
    var_1 = var_2.x;
    return Struct_1(var_0.x, false != !var_0.x, 479f, firstTrailingBit(firstTrailingBit(countOneBits(1i))), _wgslsmith_dot_vec2_u32(vec2<u32>(max(_wgslsmith_add_u32(1u, var_2.x), ~1u), ~(5116u << (u_input.d % 32u))), var_2.ww));
}

fn func_1(arg_0: bool, arg_1: vec4<bool>) -> Struct_1 {
    return func_2();
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: Struct_2) -> Struct_2 {
    return Struct_2(func_1(false, select(select(!vec4<bool>(arg_1.b, true, arg_1.a, arg_2.a.b), !vec4<bool>(arg_2.a.b, arg_1.b, false, arg_1.a), arg_2.a.b), vec4<bool>(all(vec4<bool>(arg_2.a.b, true, arg_2.a.b, arg_1.b)), false, arg_1.c < 501f, true), !select(vec4<bool>(false, arg_2.a.b, arg_1.b, arg_1.b), vec4<bool>(false, arg_1.a, false, arg_1.b), vec4<bool>(arg_1.a, arg_2.a.b, false, arg_1.b)))));
}

fn func_5(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: Struct_1) -> Struct_1 {
    var var_0 = Struct_2(func_1(arg_2.b || arg_0.a.a, select(vec4<bool>(arg_0.a.a, arg_0.a.b || false, true, 49760u >= arg_1.x), vec4<bool>(arg_2.b, true, true, true), max(arg_0.a.e, arg_1.x) <= 54392u)));
    var_0 = func_4(arg_1.yxw | vec3<u32>(_wgslsmith_div_u32(arg_2.e, func_2().e), _wgslsmith_div_u32(firstTrailingBit(0u), 45740u), 35911u), arg_0.a, arg_0);
    var var_1 = _wgslsmith_f_op_f32(step(450f, _wgslsmith_f_op_f32(arg_0.a.c + _wgslsmith_f_op_f32(-arg_0.a.c))));
    var_0 = Struct_2(arg_0.a);
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.c));
    return var_0.a;
}

fn func_6(arg_0: Struct_1, arg_1: bool) -> StorageBuffer {
    let var_0 = select(!select(vec4<bool>(arg_0.b, arg_0.c < arg_0.c, arg_1, arg_1), !select(vec4<bool>(true, true, true, arg_0.a), vec4<bool>(arg_0.b, true, arg_1, false), arg_1), true && !arg_1), !vec4<bool>(func_5(Struct_2(Struct_1(arg_0.b, true, arg_0.c, u_input.e, 0u)), vec4<u32>(u_input.d, 0u, 50803u, 9238u), arg_0).a | func_5(Struct_2(arg_0), vec4<u32>(arg_0.e, arg_0.e, u_input.a, 1u), arg_0).b, any(!vec4<bool>(arg_0.b, true, arg_1, arg_0.b)), true, false || !arg_0.a), max(firstTrailingBit(~arg_0.e), arg_0.e) <= u_input.d);
    let var_1 = true;
    let var_2 = any(select(vec4<bool>(all(select(var_0.yz, vec2<bool>(true, false), var_0.zw)), any(var_0.zy), all(vec2<bool>(var_0.x, var_0.x)), arg_1), var_0, var_0));
    var var_3 = func_1(any(select(vec3<bool>(true, u_input.e < u_input.e, func_1(arg_1, vec4<bool>(var_1, arg_0.a, var_0.x, var_2)).a), var_0.yww, any(vec3<bool>(true, var_2, false)))), var_0).c;
    var_3 = _wgslsmith_f_op_f32(floor(arg_0.c));
    return StorageBuffer(~countOneBits(~_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, arg_0.e), vec2<u32>(62795u, 0u))), vec4<i32>(arg_0.d, 31350i, u_input.c.x, -1i), _wgslsmith_add_u32(~1u, 1u));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_6(func_5(func_4(_wgslsmith_sub_vec3_u32(~vec3<u32>(30083u, u_input.a, u_input.d), vec3<u32>(0u, 60134u, 11006u)), func_1(u_input.c.x > 3734i, vec4<bool>(true, true, true, true)), Struct_2(Struct_1(false, true, -1082f, u_input.c.x, 1u))), abs(select(~vec4<u32>(u_input.a, 40165u, 6733u, u_input.d), vec4<u32>(2651u, 13556u, u_input.a, u_input.a) & vec4<u32>(u_input.a, 1u, 1u, 1u), vec4<bool>(false, false, false, false))), Struct_1(any(vec2<bool>(true, true)), all(vec2<bool>(false, false)) && func_4(vec3<u32>(u_input.d, u_input.d, u_input.a), Struct_1(false, false, 1767f, 64661i, u_input.a), Struct_2(Struct_1(false, false, -1697f, 0i, u_input.a))).a.a, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-400f - 389f))), -2147483647i, ~0u)), true & ((u_input.d < 24707u) || false));
}

