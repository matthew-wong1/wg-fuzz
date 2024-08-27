struct Struct_1 {
    a: vec4<bool>,
    b: vec2<bool>,
    c: vec2<bool>,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<f32>,
    c: Struct_2,
    d: vec3<f32>,
}

struct Struct_4 {
    a: f32,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(-1711f, -1030f, -1425f, -627f);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3() -> f32 {
    var var_0 = vec3<i32>(max(1i, u_input.a), -50190i, 5361i);
    global0 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, _wgslsmith_div_f32(global0.x, 1494f), -225f, _wgslsmith_f_op_f32(sign(global0.x))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1424f, -688f, global0.x, 818f) * vec4<f32>(global0.x, global0.x, global0.x, -1000f)), vec4<f32>(-410f, -505f, 1000f, -605f))) - _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(143f, 1797f, global0.x, global0.x))), vec4<f32>(-831f, -261f, global0.x, 1296f))))))));
    let var_1 = (firstLeadingBit(_wgslsmith_mod_i32(i32(-1i) * -41784i, _wgslsmith_add_i32(var_0.x, u_input.a))) << (u_input.d.x % 32u)) == u_input.b;
    var var_2 = u_input.b;
    let var_3 = vec2<u32>(~countOneBits(u_input.c.x), ~(~_wgslsmith_mod_u32(27362u, 19321u) << (u_input.c.x % 32u)));
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.x, global0.x) + 336f))), _wgslsmith_f_op_f32(-882f * _wgslsmith_f_op_f32(global0.x - global0.x))));
}

fn func_2() -> Struct_2 {
    global0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1079f, -1227f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global0.x, global0.x))))), _wgslsmith_f_op_f32(1014f + 1000f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global0.x, global0.x, false)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(696f)) + _wgslsmith_f_op_f32(exp2(global0.x))), global0.x))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-797f + global0.x), 1734f))), _wgslsmith_f_op_f32(f32(-1f) * -578f))));
    global0 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, global0.x, global0.x, global0.x) - vec4<f32>(global0.x, global0.x, 718f, global0.x))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(714f, 306f, global0.x, global0.x), vec4<f32>(global0.x, 510f, global0.x, global0.x), false)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, 498f, -763f, global0.x) + vec4<f32>(global0.x, -147f, global0.x, -147f))))), vec4<f32>(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(global0.x)))), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-992f, -569f), global0.x))), global0.x)));
    global0 = vec4<f32>(_wgslsmith_f_op_f32(func_3()), global0.x, _wgslsmith_f_op_f32(round(global0.x)), global0.x);
    let var_0 = i32(-1i) * -(~reverseBits(u_input.b));
    let var_1 = vec3<bool>(true, true, true);
    return Struct_2(Struct_1(vec4<bool>(true, false, false, !var_1.x), !vec2<bool>(false, var_1.x), var_1.yx, any(select(!vec3<bool>(var_1.x, false, true), !vec3<bool>(var_1.x, false, var_1.x), vec3<bool>(var_1.x, var_1.x, false)))), Struct_1(select(select(!vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), vec4<bool>(var_1.x, var_1.x, true, true), !var_1.x), select(!vec4<bool>(true, var_1.x, var_1.x, var_1.x), select(vec4<bool>(var_1.x, var_1.x, var_1.x, true), vec4<bool>(true, var_1.x, var_1.x, false), vec4<bool>(false, true, false, false)), vec4<bool>(false, true, var_1.x, var_1.x)), select(!vec4<bool>(var_1.x, false, true, var_1.x), !vec4<bool>(var_1.x, var_1.x, false, false), all(vec4<bool>(false, false, var_1.x, var_1.x)))), var_1.xx, var_1.zz, true), Struct_1(vec4<bool>(var_1.x, !var_1.x, !all(var_1), var_1.x), select(!vec2<bool>(true, var_1.x), select(vec2<bool>(var_1.x, true), select(vec2<bool>(false, var_1.x), var_1.zz, vec2<bool>(var_1.x, true)), select(vec2<bool>(false, true), var_1.xy, vec2<bool>(true, var_1.x))), select(select(var_1.zy, vec2<bool>(var_1.x, var_1.x), false), vec2<bool>(true, true), var_1.x)), !vec2<bool>(select(true, false, true), var_1.x & var_1.x), all(vec4<bool>(!var_1.x, true, var_1.x, true))));
}

fn func_4(arg_0: Struct_2, arg_1: i32, arg_2: vec3<bool>) -> Struct_2 {
    let var_0 = firstLeadingBit(u_input.d & countOneBits(abs(firstTrailingBit(u_input.d))));
    var var_1 = ~(vec2<u32>(var_0.x, 94782u) >> (_wgslsmith_clamp_vec2_u32(vec2<u32>(firstTrailingBit(var_0.x), u_input.c.x), ~(~u_input.c), var_0.yx << (u_input.d.zz % vec2<u32>(32u))) % vec2<u32>(32u)));
    global0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(270f, _wgslsmith_f_op_f32(f32(-1f) * -155f)), -1028f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x * _wgslsmith_div_f32(global0.x, -1750f)) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(-161f))))), global0.x) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) * _wgslsmith_f_op_f32(-global0.x))), _wgslsmith_f_op_f32(f32(-1f) * -931f), _wgslsmith_div_f32(1516f, -595f), _wgslsmith_f_op_f32(f32(-1f) * -1147f)));
    var var_2 = func_2();
    let var_3 = !(_wgslsmith_mod_u32(0u, firstLeadingBit(var_1.x) >> (var_1.x % 32u)) >= ~(~firstLeadingBit(var_0.x)));
    return Struct_2(Struct_1(arg_0.a.a, vec2<bool>(arg_2.x & all(vec2<bool>(true, var_2.b.d)), (global0.x >= 1414f) == true), arg_0.a.b, any(arg_2.xz) || all(!vec2<bool>(var_2.c.b.x, true))), func_2().a, func_2().a);
}

fn func_5(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: Struct_1) -> vec4<f32> {
    let var_0 = Struct_3(Struct_2(func_2().c, func_2().b, Struct_1(select(arg_2.a, vec4<bool>(true, true, arg_2.d, true), true), vec2<bool>(arg_2.d == false, !arg_0.c.c.x), vec2<bool>(arg_0.b.b.x | arg_2.d, any(vec3<bool>(arg_0.a.c.x, false, arg_2.c.x))), true)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, global0.x) + vec2<f32>(global0.x, global0.x)) * vec2<f32>(134f, -595f)), global0.wy))), Struct_2(Struct_1(!(!arg_0.a.a), func_4(func_2(), -2147483647i, !vec3<bool>(arg_2.a.x, false, true)).b.a.xy, vec2<bool>(arg_2.a.x, global0.x != global0.x), any(arg_2.a)), Struct_1(func_4(arg_0, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, 2147483647i, 1i, arg_1.x), arg_1), !arg_0.c.a.xyy).a.a, arg_0.a.a.zx, vec2<bool>(arg_2.b.x, all(vec4<bool>(arg_0.b.d, true, true, arg_2.d))), !arg_0.a.a.x), func_4(arg_0, -arg_1.x, vec3<bool>(arg_2.c.x, !arg_0.c.b.x, 15481i <= arg_1.x)).c), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(109f, 1000f, -1042f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, global0.x, -273f) - vec3<f32>(global0.x, 123f, 1100f)))))));
    let var_1 = Struct_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.b.x), -555f))), _wgslsmith_f_op_f32(max(global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0.d.x)) - var_0.b.x)))), -arg_1.zyz);
    return _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1750f, -1042f, -678f, global0.x))))) * vec4<f32>(_wgslsmith_div_f32(var_1.a, var_1.a), _wgslsmith_f_op_f32(-900f * var_1.a), _wgslsmith_f_op_f32(floor(-304f)), -781f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a, _wgslsmith_f_op_f32(floor(global0.x)), _wgslsmith_f_op_f32(-var_0.d.x), _wgslsmith_div_f32(var_1.a, var_0.b.x))))));
}

fn func_1(arg_0: vec4<bool>) -> Struct_2 {
    global0 = _wgslsmith_f_op_vec4_f32(func_5(func_4(func_2(), countOneBits(~select(u_input.a, -18136i, true)), vec3<bool>(false, true, true)), -select(vec4<i32>(-1i, 5134i << (u_input.c.x % 32u), i32(-1i) * -34918i, 1i), _wgslsmith_add_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(-1i, u_input.b, u_input.b, u_input.b), vec4<i32>(u_input.a, 1i, 20181i, 0i)), _wgslsmith_mult_vec4_i32(vec4<i32>(1i, u_input.a, 1i, -43177i), vec4<i32>(-2147483647i, u_input.b, u_input.b, 0i))), arg_0.x), func_4(Struct_2(Struct_1(func_2().c.a, func_2().c.c, vec2<bool>(arg_0.x, true), arg_0.x), Struct_1(!arg_0, vec2<bool>(arg_0.x, false), !vec2<bool>(false, arg_0.x), select(arg_0.x, false, arg_0.x)), func_2().b), ~1i, select(vec3<bool>(true, arg_0.x, select(true, arg_0.x, true)), vec3<bool>(all(vec4<bool>(arg_0.x, false, arg_0.x, false)), all(arg_0.zy), !arg_0.x), func_4(Struct_2(Struct_1(vec4<bool>(arg_0.x, arg_0.x, false, arg_0.x), vec2<bool>(arg_0.x, false), arg_0.wz, false), Struct_1(arg_0, vec2<bool>(false, arg_0.x), arg_0.xw, false), Struct_1(arg_0, arg_0.wy, arg_0.yy, arg_0.x)), u_input.b, arg_0.xyy).a.b.x)).c));
    global0 = _wgslsmith_f_op_vec4_f32(func_5(Struct_2(Struct_1(vec4<bool>(all(arg_0), func_4(Struct_2(Struct_1(vec4<bool>(arg_0.x, arg_0.x, false, arg_0.x), vec2<bool>(false, arg_0.x), arg_0.xy, false), Struct_1(vec4<bool>(arg_0.x, arg_0.x, false, arg_0.x), arg_0.xx, vec2<bool>(arg_0.x, arg_0.x), true), Struct_1(vec4<bool>(true, arg_0.x, true, arg_0.x), arg_0.xw, vec2<bool>(true, arg_0.x), false)), u_input.b, vec3<bool>(false, true, arg_0.x)).b.d, arg_0.x || arg_0.x, false), arg_0.wy, select(arg_0.zx, select(arg_0.xw, arg_0.xx, vec2<bool>(false, true)), arg_0.zz), any(vec3<bool>(false, arg_0.x, false))), Struct_1(vec4<bool>(true, -296f > global0.x, true, select(false, arg_0.x, true)), select(arg_0.zx, !arg_0.xw, vec2<bool>(arg_0.x, arg_0.x)), !(!arg_0.yy), ~u_input.c.x == 4294967295u), func_2().c), firstLeadingBit(-vec4<i32>(~1i, _wgslsmith_clamp_i32(3275i, 0i, -2147483647i), max(-1i, 25351i), ~u_input.b)), func_2().c));
    let var_0 = select(vec4<u32>(~_wgslsmith_add_u32(u_input.c.x, 1u), ~1u, ~_wgslsmith_dot_vec2_u32(~u_input.d.xx, vec2<u32>(u_input.d.x, 1u)), 0u), ~countOneBits(vec4<u32>(~u_input.d.x, u_input.c.x, u_input.c.x >> (0u % 32u), 4294967295u | u_input.c.x)), select(!(!vec4<bool>(false, false, false, arg_0.x)), func_2().a.a, !arg_0));
    global0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.x + -804f), _wgslsmith_div_f32(-1030f, _wgslsmith_f_op_f32(step(global0.x, -1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x * 1890f) + 1248f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global0.x)) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.x, 170f))), global0.x));
    global0 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -390f)), 1079f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -217f)), global0.x) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1626f, 820f, 873f, global0.x) + vec4<f32>(790f, global0.x, 1860f, -1183f)) + vec4<f32>(467f, 1042f, 328f, 1742f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-353f, global0.x, 838f, global0.x) - vec4<f32>(global0.x, -1151f, global0.x, 1120f)))))));
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(func_1(!select(select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec4_f32(func_5(Struct_2(Struct_1(vec4<bool>(false, true, false, false), vec2<bool>(true, true), vec2<bool>(true, false), false), Struct_1(vec4<bool>(true, false, true, true), vec2<bool>(false, true), vec2<bool>(false, true), true), Struct_1(vec4<bool>(true, true, false, true), vec2<bool>(true, true), vec2<bool>(true, false), true)), vec4<i32>(1i, u_input.a, u_input.a, -2147483647i), Struct_1(vec4<bool>(false, false, true, false), vec2<bool>(false, true), vec2<bool>(false, false), true))).xx, _wgslsmith_f_op_vec2_f32(-global0.yy))))), func_1(vec4<bool>(true, true, true, true)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(global0.yxx, global0.yxx, vec3<bool>(false, true, false))))) * vec3<f32>(_wgslsmith_f_op_f32(step(-411f, -1808f)), _wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(f32(-1f) * -671f)), 350f)));
    let var_1 = var_0;
    global0 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_1.b.x), _wgslsmith_f_op_f32(global0.x - global0.x), 124f, _wgslsmith_f_op_f32(sign(var_1.d.x))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.d.x, global0.x, 1000f, -1078f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, var_0.d.x, var_1.b.x, global0.x)))) + vec4<f32>(_wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(f32(-1f) * -2088f)), _wgslsmith_f_op_f32(var_1.b.x * 668f), global0.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(var_0.b.x, var_0.b.x)))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global0.x, _wgslsmith_f_op_f32(-var_1.d.x), -407f, _wgslsmith_f_op_f32(f32(-1f) * -255f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-577f, var_1.d.x, global0.x, _wgslsmith_f_op_f32(min(-350f, global0.x))) * _wgslsmith_f_op_vec4_f32(func_5(func_4(var_1.c, u_input.a, vec3<bool>(var_0.a.b.b.x, var_1.a.b.c.x, var_0.a.b.a.x)), vec4<i32>(0i, u_input.b, u_input.a, u_input.a), var_1.c.b))))));
    let var_2 = Struct_1(var_1.a.a.a, select(!var_1.c.b.a.xy, select(vec2<bool>(true, 6039u == u_input.d.x), var_0.a.b.a.yz, var_1.c.b.c.x), true), !func_1(func_1(func_1(vec4<bool>(var_1.c.b.d, var_1.a.b.c.x, var_0.a.b.c.x, true)).c.a).c.a).a.a.xy, select(!var_0.c.a.a.x, true, var_1.c.a.b.x));
    var var_3 = var_2;
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.x + global0.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.d.x + global0.x)), countOneBits(vec3<i32>(_wgslsmith_dot_vec3_i32(-vec3<i32>(-2147483647i, u_input.b, u_input.b), vec3<i32>(1i, u_input.b, u_input.a)), abs(-21222i), u_input.b)), 3264f, abs(-_wgslsmith_sub_i32(u_input.b, 2147483647i)) << (2717u % 32u));
}

