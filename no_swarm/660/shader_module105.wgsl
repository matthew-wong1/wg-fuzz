struct Struct_1 {
    a: u32,
    b: vec4<bool>,
    c: bool,
    d: i32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: i32,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<f32>,
    c: u32,
    d: f32,
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

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: f32, arg_1: Struct_2) -> u32 {
    var var_0 = vec3<u32>(u_input.b, u_input.b, _wgslsmith_mod_u32(~(~arg_1.c.a), arg_1.c.a));
    var_0 = ~vec3<u32>(abs(var_0.x), u_input.b, max(6210u, _wgslsmith_dot_vec3_u32(vec3<u32>(85182u, var_0.x, arg_1.c.a), vec3<u32>(4294967295u, 21773u, 1u)))) & ~min(min(vec3<u32>(8019u, var_0.x, 0u), vec3<u32>(4294967295u, u_input.b, 95738u)), ~(~vec3<u32>(4294967295u, var_0.x, 4294967295u)));
    var_0 = (~(~(vec3<u32>(u_input.b, 0u, var_0.x) >> (vec3<u32>(u_input.b, 0u, u_input.b) % vec3<u32>(32u)))) ^ ~((vec3<u32>(u_input.b, 31861u, 0u) >> (vec3<u32>(arg_1.c.a, 30582u, 29074u) % vec3<u32>(32u))) >> (max(vec3<u32>(u_input.b, 4294967295u, 68105u), vec3<u32>(var_0.x, 1u, var_0.x)) % vec3<u32>(32u)))) << (_wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_clamp_u32(_wgslsmith_add_u32(arg_1.c.a, arg_1.c.a), var_0.x, u_input.b >> (u_input.b % 32u)), arg_1.c.a, abs(~30006u)), select(max(vec3<u32>(var_0.x, 36264u, arg_1.c.a), max(vec3<u32>(arg_1.c.a, u_input.b, arg_1.c.a), vec3<u32>(18907u, var_0.x, 4294967295u))), vec3<u32>(1u, ~0u, arg_1.c.a), select(arg_1.c.b.wxz, !vec3<bool>(false, arg_1.c.c, arg_1.c.c), !arg_1.c.b.ywx))) % vec3<u32>(32u));
    let var_1 = _wgslsmith_mult_vec2_u32(~(~_wgslsmith_div_vec2_u32(var_0.zy, vec2<u32>(var_0.x, 4294967295u) & vec2<u32>(arg_1.c.a, 32798u))), min(~(~var_0.xx) >> (~(~var_0.yx) % vec2<u32>(32u)), vec2<u32>(1u, select(20124u, arg_1.c.a, true)) >> (var_0.yz % vec2<u32>(32u))));
    var_0 = _wgslsmith_div_vec3_u32(max(~vec3<u32>(var_1.x, 1u, 25096u), _wgslsmith_add_vec3_u32(vec3<u32>(1u, 1u, 1u) & (vec3<u32>(u_input.b, arg_1.c.a, var_0.x) | vec3<u32>(12444u, 4294967295u, arg_1.c.a)), abs(reverseBits(vec3<u32>(35629u, 3316u, var_0.x))))), abs(~(vec3<u32>(127u, 1u, arg_1.c.a) ^ vec3<u32>(4294967295u, var_0.x, arg_1.c.a)) ^ vec3<u32>(arg_1.c.a, ~u_input.b, var_1.x)));
    return _wgslsmith_mult_u32(40843u, min(28872u >> (1u % 32u), ~0u));
}

fn func_2(arg_0: vec3<bool>, arg_1: i32, arg_2: u32) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1604f))))), 1000f)) * _wgslsmith_f_op_f32(-1184f * _wgslsmith_f_op_f32(trunc(1f))));
    var var_1 = Struct_1(select(func_3(_wgslsmith_f_op_f32(trunc(var_0)), Struct_2(_wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, -14900i, 7698i, u_input.a), vec4<i32>(2147483647i, -8522i, 60516i, -1i)), select(1i, u_input.c.x, false), Struct_1(u_input.b, vec4<bool>(true, arg_0.x, arg_0.x, true), arg_0.x, arg_1))), ~1u, true), vec4<bool>(false, any(vec2<bool>(arg_0.x, u_input.b == arg_2)), 0u != _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, arg_2, arg_2) | vec3<u32>(u_input.b, 1099u, 1u), vec3<u32>(17956u, 9137u, u_input.b)), arg_0.x), arg_0.x, ~(-2147483647i));
    var var_2 = var_1.b.yy;
    var_2 = vec2<bool>(var_2.x, false != !(!var_2.x));
    var var_3 = vec4<bool>(var_2.x, any(select(arg_0.xy, !vec2<bool>(var_1.b.x, true), arg_0.zx)), var_1.c, !any(vec3<bool>(true, var_2.x, var_0 < var_0)));
    return _wgslsmith_div_i32(var_1.d, firstTrailingBit(_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(32281i, -42864i, 1i, 50640i), vec4<i32>(u_input.a, 0i, 41982i, var_1.d)), ~abs(vec4<i32>(u_input.c.x, var_1.d, -1273i, -2147483647i)))));
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: Struct_2) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(min(arg_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.x + _wgslsmith_f_op_f32(exp2(arg_2.x))))));
    let var_1 = Struct_1(4294967295u, vec4<bool>(arg_3.c.c, all(vec4<bool>(!arg_1.b.x, var_0 < var_0, arg_3.c.c, !arg_1.c)), true, select(_wgslsmith_clamp_i32(arg_0, -55523i, u_input.c.x), _wgslsmith_add_i32(0i, -1i), true) <= -1i), false, _wgslsmith_div_i32(_wgslsmith_mult_i32(-1i, max(-46074i ^ arg_3.b, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_3.b, arg_0), arg_3.a.zy))), abs(-_wgslsmith_mod_i32(arg_3.c.d, arg_1.d))));
    let var_2 = select(max(vec4<i32>(-15094i, arg_3.c.d, _wgslsmith_div_i32(-5514i, arg_1.d), arg_3.c.d), vec4<i32>(0i, -arg_3.a.x, arg_0, arg_1.d)), vec4<i32>(-(~u_input.c.x), -arg_1.d, firstTrailingBit(47663i) | _wgslsmith_mod_i32(-62330i, var_1.d), arg_1.d), true) << (~select(_wgslsmith_div_vec4_u32(abs(vec4<u32>(29202u, 22432u, 1u, var_1.a)), ~vec4<u32>(1u, 44229u, 4294967295u, 4294967295u)), ~(~vec4<u32>(var_1.a, 16996u, 43028u, arg_1.a)), arg_3.c.c) % vec4<u32>(32u));
    let var_3 = _wgslsmith_f_op_f32(max(-1799f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.x + _wgslsmith_f_op_f32(floor(961f))) - _wgslsmith_f_op_f32(sign(-2004f))) - _wgslsmith_f_op_f32(-var_0))));
    var var_4 = !any(!var_1.b.wy);
    return var_2.x;
}

fn func_5(arg_0: vec4<i32>, arg_1: f32, arg_2: vec3<f32>) -> Struct_2 {
    let var_0 = 1i;
    var var_1 = !(!vec2<bool>(true, !all(vec4<bool>(true, false, true, false))));
    var var_2 = ~47182u;
    var var_3 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-arg_2), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-426f, 1699f, arg_2.x), vec3<f32>(-401f, 1324f, arg_1))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(arg_2)) - vec3<f32>(arg_2.x, arg_1, -449f)))), arg_2, !vec3<bool>(var_1.x, true, select(true, var_1.x, false))));
    var_2 = u_input.b | u_input.b;
    return Struct_2(vec4<i32>(-arg_0.x, _wgslsmith_mod_i32(~arg_0.x, arg_0.x), reverseBits(~2147483647i), u_input.c.x) ^ vec4<i32>(_wgslsmith_div_i32(-26080i, min(u_input.c.x, u_input.a)), var_0, _wgslsmith_clamp_i32(var_0, max(-6369i, 20603i), -2147483647i & arg_0.x), var_0 & u_input.a), -_wgslsmith_clamp_i32(-2147483647i, -_wgslsmith_div_i32(u_input.c.x, u_input.a), var_0), Struct_1(~u_input.b, select(select(select(vec4<bool>(var_1.x, var_1.x, false, var_1.x), vec4<bool>(var_1.x, true, var_1.x, var_1.x), vec4<bool>(var_1.x, true, var_1.x, true)), select(vec4<bool>(false, false, var_1.x, true), vec4<bool>(false, var_1.x, true, var_1.x), vec4<bool>(var_1.x, var_1.x, true, var_1.x)), !var_1.x), select(vec4<bool>(var_1.x, var_1.x, true, var_1.x), select(vec4<bool>(false, var_1.x, false, false), vec4<bool>(true, var_1.x, var_1.x, var_1.x), vec4<bool>(true, true, var_1.x, var_1.x)), vec4<bool>(false, var_1.x, false, var_1.x)), true), any(vec4<bool>(var_1.x, var_1.x, var_1.x, true || var_1.x)), 3819i));
}

fn func_1(arg_0: u32) -> bool {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-856f - _wgslsmith_f_op_f32(f32(-1f) * -967f)))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(1752f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -899f) + _wgslsmith_f_op_f32(sign(-166f)))), _wgslsmith_f_op_f32(f32(-1f) * -1329f)));
    var var_1 = func_5(vec4<i32>(min(-(~2147483647i), _wgslsmith_dot_vec3_i32(u_input.c, u_input.c)), func_4(-52355i, Struct_1(firstTrailingBit(arg_0), vec4<bool>(true, true, true, true), 89532u == arg_0, func_2(vec3<bool>(false, true, true), 2147483647i, 21819u)), vec3<f32>(var_0, -1228f, _wgslsmith_f_op_f32(-var_0)), Struct_2(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.c.x, u_input.a), vec4<i32>(u_input.c.x, u_input.a, -2147483647i, 35344i)), u_input.c.x, Struct_1(36943u, vec4<bool>(false, false, true, false), false, 62974i))), _wgslsmith_dot_vec3_i32(-u_input.c, vec3<i32>(u_input.a, u_input.c.x, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, 45916i, -14373i, 2147483647i), vec4<i32>(1i, 1091i, 1i, 6004i)))), 0i), 110f, vec3<f32>(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(var_0 * _wgslsmith_f_op_f32(max(var_0, _wgslsmith_f_op_f32(abs(var_0))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(var_0, -390f), -318f))));
    let var_2 = select(1i, _wgslsmith_add_i32(-(~_wgslsmith_div_i32(var_1.b, u_input.a)), reverseBits(_wgslsmith_sub_i32(u_input.c.x & 0i, _wgslsmith_clamp_i32(-20025i, -18075i, u_input.c.x)))), var_1.c.b.x);
    let var_3 = vec3<u32>(1u, 4294967295u, countOneBits(29677u));
    let var_4 = _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(1000f - var_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) + _wgslsmith_f_op_f32(select(-1156f, -917f, true)))))));
    return true;
}

fn func_6(arg_0: vec3<bool>, arg_1: f32, arg_2: Struct_1, arg_3: vec2<f32>) -> Struct_2 {
    let var_0 = ~max(~(~(-1i)), abs(-21309i));
    let var_1 = vec2<u32>(func_3(_wgslsmith_f_op_f32(-arg_1), Struct_2(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a, arg_2.d, arg_2.d, var_0), vec4<i32>(46148i, -2147483647i, 1i, -14200i), vec4<i32>(arg_2.d, var_0, u_input.a, 2147483647i)), -38125i, arg_2)), arg_2.a) & _wgslsmith_clamp_vec2_u32(vec2<u32>(firstTrailingBit(arg_2.a), ~(~20496u)), ~_wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(arg_2.a, 4294967295u), vec2<u32>(17971u, u_input.b)), vec2<u32>(arg_2.a, u_input.b)), vec2<u32>(22222u, u_input.b));
    var var_2 = arg_2;
    var var_3 = !arg_2.b;
    var var_4 = Struct_2(~select(vec4<i32>(var_2.d, 1i, -36666i, arg_2.d), vec4<i32>(u_input.a, var_0, -38206i, var_0), true) & vec4<i32>(~(i32(-1i) * -3463i), -_wgslsmith_mod_i32(-22712i, arg_2.d), var_0, min(1i, ~var_0)), abs(~abs(-1i)), Struct_1(countOneBits(70547u), vec4<bool>(func_5(select(vec4<i32>(u_input.c.x, arg_2.d, var_0, var_2.d), vec4<i32>(37854i, var_0, arg_2.d, 0i), vec4<bool>(var_3.x, false, true, var_2.c)), _wgslsmith_f_op_f32(-arg_3.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, arg_3.x, arg_3.x))).c.c, !func_1(var_1.x), true, func_5(abs(vec4<i32>(-2147483647i, var_2.d, 19673i, u_input.c.x)), 313f, _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3.x, arg_1, arg_3.x))).c.c), true, var_0));
    return Struct_2(~vec4<i32>(0i, u_input.a, var_4.a.x, u_input.a) ^ (var_4.a << (_wgslsmith_mult_vec4_u32(vec4<u32>(var_4.c.a, var_1.x, 33727u, 4294967295u), vec4<u32>(1u, 4294967295u, 58140u, var_1.x) | vec4<u32>(36639u, u_input.b, 1u, 4294967295u)) % vec4<u32>(32u))), min(-(u_input.c.x << (var_2.a % 32u)), 2147483647i) << (1u % 32u), arg_2);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_sub_vec3_i32(u_input.c, ~(u_input.c & max(vec3<i32>(2147483647i, u_input.c.x, u_input.a), u_input.c)) >> ((_wgslsmith_clamp_vec3_u32(~vec3<u32>(u_input.b, u_input.b, u_input.b), ~vec3<u32>(u_input.b, 1u, 4294967295u), ~vec3<u32>(80827u, u_input.b, u_input.b)) << (_wgslsmith_mod_vec3_u32(~vec3<u32>(36780u, u_input.b, u_input.b), select(vec3<u32>(u_input.b, 0u, 1u), vec3<u32>(u_input.b, u_input.b, 1u), vec3<bool>(true, false, true))) % vec3<u32>(32u))) % vec3<u32>(32u)));
    var_0 = ~vec3<i32>(_wgslsmith_mult_i32(-_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, 22402i, u_input.c.x), vec3<i32>(1i, 12266i, var_0.x)), _wgslsmith_add_i32(_wgslsmith_add_i32(-1i, var_0.x), 1i)), -11383i, _wgslsmith_mod_i32(var_0.x, -var_0.x) ^ _wgslsmith_div_i32(-var_0.x, i32(-1i) * -5919i));
    var var_1 = -156f;
    let var_2 = func_6(vec3<bool>(true, false, func_1(countOneBits(1u))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-631f)) * _wgslsmith_f_op_f32(738f + 238f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1052f)))), Struct_1(1u, !(!func_5(vec4<i32>(21342i, var_0.x, 1i, 2147483647i), 622f, vec3<f32>(-1124f, -255f, 294f)).c.b), true, _wgslsmith_dot_vec3_i32(u_input.c, countOneBits(vec3<i32>(1i, var_0.x, var_0.x)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -451f)), vec2<f32>(-925f, -1000f)))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(trunc(104f)), _wgslsmith_f_op_f32(max(-1751f, -1259f))))));
    var_0 = -reverseBits(-abs(vec3<i32>(var_0.x, var_0.x, var_2.b)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(1f, 1f, 1f), vec3<f32>(_wgslsmith_f_op_f32(round(-486f)), -2172f, _wgslsmith_f_op_f32(step(-547f, 1061f)))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(385f, 371f, -1280f)) + vec3<f32>(-1081f, 1545f, 866f)))), var_2.c.c)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -373f)) - _wgslsmith_div_f32(-1091f, _wgslsmith_f_op_f32(f32(-1f) * -1076f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1729f)))), u_input.b, _wgslsmith_f_op_f32(abs(-670f)));
}

