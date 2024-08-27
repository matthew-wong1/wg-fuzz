struct Struct_1 {
    a: vec3<f32>,
    b: vec4<bool>,
    c: i32,
    d: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec3<f32>,
    d: vec2<f32>,
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

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: vec3<bool>, arg_1: vec2<bool>, arg_2: bool, arg_3: Struct_1) -> f32 {
    var var_0 = all(select(select(vec4<bool>(!arg_1.x, all(vec4<bool>(true, arg_2, true, false)), true, true), !(!vec4<bool>(arg_0.x, arg_0.x, false, true)), true), vec4<bool>(arg_3.a.x <= 756f, countOneBits(arg_3.c) <= 10100i, true, false), false));
    var_0 = any(arg_3.b.yx);
    var var_1 = select(arg_1, select(vec2<bool>(true, true), vec2<bool>(!(arg_3.a.x > 1425f), true), true), !select(select(vec2<bool>(true, true), arg_0.zz, arg_2), vec2<bool>(arg_0.x, !arg_3.d), arg_1.x && arg_0.x));
    var_0 = arg_1.x || true;
    let var_2 = vec2<i32>(arg_3.c, u_input.c) >> ((~(vec2<u32>(60656u, u_input.b) | vec2<u32>(u_input.b, u_input.b)) & ~(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(u_input.b, 58156u)) << (select(vec2<u32>(4294967295u, u_input.b), vec2<u32>(9699u, u_input.b), var_1.x) % vec2<u32>(32u)))) % vec2<u32>(32u));
    return -1000f;
}

fn func_3() -> f32 {
    var var_0 = !(!(!(!any(vec2<bool>(true, true)))));
    var_0 = !((countOneBits(u_input.b) > u_input.b) & true);
    var_0 = true;
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(438f, 1749f, 606f), vec3<f32>(-728f, -1905f, -377f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(761f, -1000f, 1000f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1019f, 202f, 1000f), vec3<f32>(1031f, 1878f, 258f), false)))), select(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), select(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), false), vec3<bool>(false, true, true), vec3<bool>(false, true, true)), vec3<bool>(true, false, select(true, true, false))))), !(!vec4<bool>(false, false, true, select(true, false, false))), _wgslsmith_clamp_i32(u_input.d.x, _wgslsmith_sub_i32(-(~u_input.d.x), 16729i), -u_input.c), true);
    var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a.x, 621f, 685f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-309f, var_1.a.x, var_1.a.x))), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a.x, 100f, var_1.a.x) * _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_1.a.x, var_1.a.x, 765f)))))), !select(!select(vec4<bool>(var_1.d, var_1.b.x, var_1.d, var_1.d), vec4<bool>(var_1.b.x, false, var_1.b.x, var_1.d), false), var_1.b, select(vec4<bool>(var_1.b.x, var_1.b.x, false, false), select(vec4<bool>(var_1.d, var_1.b.x, false, var_1.b.x), var_1.b, false), vec4<bool>(var_1.d, var_1.d, false, var_1.b.x))), firstLeadingBit(var_1.c), var_1.d);
    return -214f;
}

fn func_1() -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(vec3<bool>(true, true, true), vec2<bool>(true, false), true, Struct_1(vec3<f32>(-702f, -1000f, 823f), vec4<bool>(true, false, true, true), u_input.a.x, true))) * _wgslsmith_f_op_f32(func_2(vec3<bool>(true, true, true), vec2<bool>(true, true), true, Struct_1(vec3<f32>(-1364f, 1000f, 1074f), vec4<bool>(true, false, true, false), u_input.d.x, false)))))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1097f) * _wgslsmith_f_op_f32(f32(-1f) * -1507f)))) * _wgslsmith_f_op_f32(func_3()));
    let var_2 = select(vec2<bool>(any(vec3<bool>(any(vec3<bool>(false, false, true)), false, select(true, false, false))), true), !(!vec2<bool>(true, u_input.b > u_input.b)), all(select(select(select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false)), vec4<bool>(true, false, false, false), any(vec3<bool>(true, false, true))), !select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false)), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), true))));
    var var_3 = var_2.x;
    var var_4 = u_input.a.xx;
    return !select(select(vec4<bool>(false, var_2.x, true, !var_2.x), select(!vec4<bool>(false, var_2.x, var_2.x, false), !vec4<bool>(var_2.x, true, false, var_2.x), false), true), select(!select(vec4<bool>(false, false, var_2.x, true), vec4<bool>(var_2.x, false, false, true), var_2.x), !(!vec4<bool>(var_2.x, var_2.x, true, var_2.x)), vec4<bool>(any(var_2), !var_2.x, true, all(var_2))), false);
}

fn func_4(arg_0: bool, arg_1: Struct_1) -> vec4<i32> {
    var var_0 = vec2<u32>(0u >> (countOneBits(u_input.b) % 32u), ~1u);
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-arg_1.a.x), _wgslsmith_f_op_f32(abs(1186f)), _wgslsmith_f_op_f32(f32(-1f) * -646f))))), vec4<bool>(true, any(vec4<bool>(!arg_1.b.x, arg_0, arg_1.a.x > arg_1.a.x, true)), arg_0, arg_0), 37275i, true && arg_0);
    var var_2 = all(!vec3<bool>(any(!arg_1.b), u_input.b < ~u_input.b, any(!vec2<bool>(true, var_1.b.x))));
    var_2 = any(vec2<bool>(arg_0, false));
    var var_3 = arg_1;
    return vec4<i32>(arg_1.c, -firstTrailingBit(~_wgslsmith_add_i32(u_input.c, var_1.c)), 2147483647i, 1i);
}

fn func_5(arg_0: vec4<i32>, arg_1: bool) -> vec2<i32> {
    var var_0 = 60323u;
    var var_1 = arg_1;
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -1291f, -2860f) + vec3<f32>(-829f, -167f, -1419f)))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-392f, -1192f, -124f))), func_1(), 3793i, !select(select(u_input.c < -1i, arg_1, arg_1), arg_1, true));
    let var_3 = !(!vec3<bool>(!(var_2.b.x && var_2.b.x), true, !arg_1));
    var_1 = var_2.b.x;
    return vec2<i32>((i32(-1i) * -1i) & var_2.c, ~(u_input.c ^ ~(arg_0.x & var_2.c)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 516f;
    var var_1 = func_5(func_4(!(any(vec3<bool>(false, false, false)) != (u_input.d.x < u_input.d.x)), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(150f, 1583f, -443f))), func_1(), 1i, all(vec4<bool>(true, false, true, false)))), true);
    var var_2 = _wgslsmith_clamp_vec4_i32(firstTrailingBit(-vec4<i32>(u_input.d.x, 6814i, ~u_input.a.x, u_input.d.x)), u_input.a, u_input.a);
    var_2 = abs(_wgslsmith_add_vec4_i32(u_input.a, ~u_input.a));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(-688f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -500f) * _wgslsmith_f_op_f32(sign(-155f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1555f * -1542f)));
    let var_3 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(ceil(1130f)), 1i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 953f, 1325f))))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-733f, _wgslsmith_f_op_f32(1075f + -1109f))))));
}

