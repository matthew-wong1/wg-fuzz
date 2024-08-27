struct Struct_1 {
    a: f32,
    b: u32,
    c: vec4<u32>,
    d: vec4<bool>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> bool {
    var var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-1093f + 534f), _wgslsmith_f_op_f32(649f - 2777f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(-254f, 897f) + vec2<f32>(800f, -1078f))))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f))));
    var var_1 = Struct_1(-1691f, ~u_input.a, min(~(vec4<u32>(69507u, u_input.a, u_input.a, 1u) & vec4<u32>(101916u, u_input.a, u_input.a, u_input.a)), _wgslsmith_mult_vec4_u32(min(vec4<u32>(65591u, u_input.a, 21016u, u_input.a), vec4<u32>(108031u, 70084u, u_input.a, 1u)), countOneBits(~vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)))), !select(select(select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true), false), vec4<bool>(false, true, true, true), false), vec4<bool>(all(vec3<bool>(true, false, true)), true, true, true), all(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false)))));
    var var_2 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(2425f, -1000f, var_0.x)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_0.x, -2517f) * vec3<f32>(1477f, var_1.a, var_1.a))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-1368f, var_1.a, var_1.a))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, 443f, 1227f)), all(var_1.d.yy)))))));
    var_1 = Struct_1(var_0.x, var_1.c.x, vec4<u32>(_wgslsmith_add_u32(u_input.a, (36662u >> (1u % 32u)) >> (1u % 32u)), max(~_wgslsmith_sub_u32(0u, var_1.c.x), ~1u), firstTrailingBit(93732u), var_1.b), vec4<bool>(false, any(var_1.d), var_1.a > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x)), !var_1.d.x & true));
    var var_3 = var_1.d.x;
    return var_1.d.x;
}

fn func_2() -> bool {
    var var_0 = ~(-u_input.d.yz);
    var_0 = select(vec2<i32>(var_0.x, var_0.x), ~vec2<i32>(_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(u_input.d.zzx, vec3<i32>(68711i, 20564i, -1i)), var_0.x), 1i), select(select(vec2<bool>(true, true), !select(vec2<bool>(true, false), vec2<bool>(true, false), false), vec2<bool>(false, true)), vec2<bool>(any(vec4<bool>(true, true, true, true)), any(select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false)))), vec2<bool>(func_3(), any(vec3<bool>(true, true, false)))));
    return true;
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: Struct_2) -> Struct_1 {
    let var_0 = arg_2.b.d.x;
    let var_1 = arg_1.d.zxy;
    var var_2 = arg_2.c.x;
    var var_3 = -vec3<i32>(reverseBits(u_input.c), _wgslsmith_div_i32(countOneBits(min(-2147483647i, u_input.d.x)), -14026i), u_input.c);
    var var_4 = true;
    return Struct_1(-158f, ~(~_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(arg_2.b.b, 29599u), arg_2.b.c.wx), select(vec2<u32>(arg_2.b.b, u_input.a), arg_1.c.yz, arg_2.b.d.x))), ~vec4<u32>(1u, arg_1.b, 52178u >> (u_input.a % 32u), reverseBits(0u)), !vec4<bool>(abs(u_input.b.x) >= u_input.b.x, !(!arg_1.d.x), arg_0.x, true));
}

fn func_5(arg_0: f32, arg_1: Struct_1, arg_2: vec2<f32>) -> Struct_2 {
    var var_0 = Struct_1(176f, ~u_input.a, arg_1.c, !arg_1.d);
    var var_1 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -767f)), arg_1.a, _wgslsmith_div_f32(-1952f, _wgslsmith_f_op_f32(abs(-840f))), var_0.a)), vec4<f32>(_wgslsmith_f_op_f32(-917f * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(arg_1.a))))), -706f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_1.a))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_0 + arg_2.x))))));
    var_0 = arg_1;
    var var_2 = arg_1;
    let var_3 = func_4(!(!(!vec2<bool>(true, arg_1.d.x))), arg_1, Struct_2(var_2.b <= firstTrailingBit(_wgslsmith_dot_vec4_u32(var_2.c, var_0.c)), arg_1, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(var_1.wyx))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-100f, arg_2.x, 1231f))))))).c.yw;
    return Struct_2(true, Struct_1(_wgslsmith_f_op_f32(691f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0, -241f, false)))), ~abs(_wgslsmith_add_u32(var_0.b, 0u)), var_2.c, func_4(var_2.d.wy, func_4(vec2<bool>(var_2.d.x, true), arg_1, Struct_2(arg_1.d.x, arg_1, var_1.xwz)), Struct_2(all(vec2<bool>(var_2.d.x, var_2.d.x)), arg_1, _wgslsmith_f_op_vec3_f32(var_1.wxx * vec3<f32>(309f, var_1.x, arg_2.x)))).d), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, arg_2.x, arg_2.x))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(var_1.xzz)), vec3<f32>(583f, -1000f, -831f)))))));
}

fn func_1() -> f32 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-1346f - -581f))), _wgslsmith_mult_u32(1u, ~u_input.a), ~vec4<u32>(3801u ^ _wgslsmith_mod_u32(u_input.a, u_input.a), countOneBits(~u_input.a), _wgslsmith_sub_u32(4294967295u, 16318u), 4294967295u), vec4<bool>(true, u_input.a == 0u, true, !(!all(vec2<bool>(true, false)))));
    let var_1 = func_5(359f, func_4(!vec2<bool>(var_0.d.x, var_0.d.x && false), Struct_1(-1700f, 24949u, _wgslsmith_mult_vec4_u32(var_0.c, _wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, u_input.a, 0u, 4294967295u), vec4<u32>(u_input.a, u_input.a, var_0.c.x, u_input.a))), select(var_0.d, !var_0.d, true)), Struct_2(func_2(), var_0, _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-580f, 144f, -557f))))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a, var_0.a)))), vec2<f32>(-1270f, 1396f), select(!var_0.d.wz, vec2<bool>(var_0.d.x, false), var_0.d.wy))))));
    var var_2 = any(vec4<bool>(!(_wgslsmith_f_op_f32(f32(-1f) * -228f) <= var_0.a), all(var_0.d), var_1.a, true));
    var_2 = !var_1.a;
    let var_3 = var_0.a;
    return _wgslsmith_f_op_f32(-var_1.b.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~u_input.d;
    var var_1 = Struct_2(true, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_1()))) * -915f), u_input.a, vec4<u32>(min(u_input.a, u_input.a), _wgslsmith_dot_vec4_u32(vec4<u32>(76222u, u_input.a, 23042u, u_input.a), vec4<u32>(40820u, u_input.a, 0u, 4294967295u)), abs(45411u), 4294967295u) | vec4<u32>(1u, reverseBits(49051u), min(1u, u_input.a), 48916u), vec4<bool>(true, func_4(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true)), Struct_1(-1000f, u_input.a, vec4<u32>(u_input.a, 48732u, 0u, u_input.a), vec4<bool>(false, false, false, false)), func_5(-2147f, Struct_1(-1551f, 4294967295u, vec4<u32>(u_input.a, u_input.a, 4294967295u, 4294967295u), vec4<bool>(false, true, false, true)), vec2<f32>(908f, -816f))).d.x, true, (u_input.b.x & var_0.x) == -var_0.x)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_5(_wgslsmith_f_op_f32(-417f - 2003f), Struct_1(175f, 4294967295u, vec4<u32>(u_input.a, u_input.a, 66585u, u_input.a), vec4<bool>(true, true, false, false)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(126f, 126f)))).c + vec3<f32>(_wgslsmith_f_op_f32(max(381f, -178f)), -1000f, 891f)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(929f, -1086f, 2162f)), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1511f, -552f, 1775f))), true)), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -526f), -109f, -197f))));
    var var_2 = func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_1.c.x)) + _wgslsmith_f_op_f32(var_1.b.a * var_1.c.x)))), var_1.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(func_4(vec2<bool>(true, false), Struct_1(var_1.b.a, u_input.a, var_1.b.c, vec4<bool>(false, var_1.b.d.x, var_1.b.d.x, var_1.b.d.x)), Struct_2(var_1.a, var_1.b, var_1.c)).a, var_1.c.x))));
    let x = u_input.a;
    s_output = StorageBuffer(~(~u_input.a & ~_wgslsmith_clamp_u32(u_input.a, 0u, var_2.b.b)), var_1.b.c.x, ~u_input.b.x);
}

