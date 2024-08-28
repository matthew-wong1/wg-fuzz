struct Struct_1 {
    a: vec2<f32>,
    b: bool,
    c: vec4<bool>,
    d: vec2<f32>,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: bool,
    d: bool,
    e: Struct_1,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec2<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
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

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: i32) -> bool {
    var var_0 = arg_0.b;
    let var_1 = _wgslsmith_div_f32(arg_0.e, _wgslsmith_f_op_f32(-1f));
    var_0 = arg_0.c.x;
    var_0 = any(!arg_0.c.zzy);
    var var_2 = ~_wgslsmith_dot_vec2_u32(~abs(abs(vec2<u32>(u_input.b, 1u))), ~(~vec2<u32>(u_input.b, u_input.b) ^ firstLeadingBit(vec2<u32>(4294967295u, 1u))));
    return select(all(vec3<bool>(arg_0.b, !(arg_0.b || arg_0.b), any(vec3<bool>(arg_0.c.x, arg_0.c.x, arg_0.b)) | (false || arg_0.b))), !(!(var_1 >= _wgslsmith_f_op_f32(-arg_0.d.x))), all(arg_0.c.yzw));
}

fn func_2() -> u32 {
    var var_0 = u_input.b;
    let var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-673f, 1665f))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1314f, 876f))) + vec2<f32>(-1867f, -290f))), !func_3(Struct_1(vec2<f32>(-1000f, -281f), true, vec4<bool>(true, true, true, true), vec2<f32>(379f, -823f), -201f), ~vec3<i32>(0i, u_input.c, u_input.a.x), -1i), !vec4<bool>(all(vec3<bool>(true, false, true)), true, true, true), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-686f, 823f) - vec2<f32>(1104f, 990f))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1032f + _wgslsmith_f_op_f32(-1080f * -247f)), -1000f))), vec3<bool>(!select(2618u > u_input.b, true, true), all(vec3<bool>(true, true, true)), true), u_input.c != reverseBits(~abs(u_input.c)), any(!vec2<bool>(all(vec4<bool>(false, false, false, true)), true)), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(921f - _wgslsmith_f_op_f32(f32(-1f) * -743f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(888f, -1327f)))), all(vec3<bool>(true, true, true)), select(vec4<bool>(select(false, false, false), true, true, 1i > u_input.a.x), vec4<bool>(true, true, true, any(vec4<bool>(false, true, false, true))), !all(vec3<bool>(false, true, true))), vec2<f32>(1000f, _wgslsmith_f_op_f32(-1201f + 2362f)), -1359f));
    var_0 = u_input.b;
    var_0 = select(17357u, ~_wgslsmith_dot_vec2_u32(select(~vec2<u32>(u_input.b, 9210u), vec2<u32>(0u, u_input.b), -1397i <= u_input.c), countOneBits(vec2<u32>(4294967295u, u_input.b)) | vec2<u32>(49560u, u_input.b)), var_1.e.b);
    let var_2 = select(!var_1.a.c.xw, vec2<bool>(any(select(vec4<bool>(false, false, var_1.d, true), select(vec4<bool>(var_1.c, var_1.b.x, var_1.a.b, var_1.b.x), var_1.a.c, vec4<bool>(false, var_1.e.c.x, var_1.a.c.x, var_1.c)), var_1.a.c)), var_1.b.x), !(((true & var_1.c) | !var_1.d) & !any(vec4<bool>(false, false, var_1.d, var_1.b.x))));
    return ~2184u;
}

fn func_1() -> vec3<bool> {
    var var_0 = _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(-(~vec3<i32>(0i, 27752i, -40225i)), -_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.c, u_input.c, u_input.c), vec3<i32>(u_input.a.x, u_input.c, u_input.c))) >> (countOneBits(_wgslsmith_clamp_u32(1u >> (u_input.b % 32u), ~u_input.b, func_2())) % 32u), u_input.c);
    var_0 = ~(-1i);
    var var_1 = _wgslsmith_sub_i32(0i, -21815i);
    var_1 = -2147483647i;
    var_0 = max(~u_input.c, -2147483647i);
    return select(select(vec3<bool>(false, true, true), vec3<bool>(select(true, false, all(vec2<bool>(false, true))), func_3(Struct_1(vec2<f32>(-1005f, 1608f), true, vec4<bool>(false, false, false, true), vec2<f32>(-1910f, 339f), 515f), vec3<i32>(u_input.c, u_input.a.x, 2147483647i), u_input.a.x) && false, func_3(Struct_1(vec2<f32>(723f, -170f), true, vec4<bool>(false, true, false, true), vec2<f32>(-1147f, -541f), -409f), select(vec3<i32>(1i, u_input.a.x, u_input.a.x), vec3<i32>(19458i, 17405i, u_input.a.x), false), _wgslsmith_div_i32(u_input.c, u_input.c))), false), !(!vec3<bool>(true, any(vec4<bool>(false, true, false, true)), any(vec3<bool>(true, true, true)))), select(select(select(select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), true), vec3<bool>(true, true, true), vec3<bool>(false, false, false)), vec3<bool>(all(vec2<bool>(true, true)), select(true, false, false), true), true), vec3<bool>(17198i < abs(u_input.c), -462f <= _wgslsmith_f_op_f32(ceil(1109f)), false), select(vec3<bool>(any(vec2<bool>(true, true)), true, true), !select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true)), vec3<bool>(90231u == u_input.b, true, true))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b;
    let var_1 = select(func_1(), !vec3<bool>(false, u_input.b <= ~var_0, !(u_input.a.x < u_input.c)), true);
    var var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-474f, -1085f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-712f, -1393f) * vec2<f32>(274f, 657f)) - vec2<f32>(-176f, -115f)), all(var_1)))), var_1.x, vec4<bool>(_wgslsmith_f_op_f32(f32(-1f) * -948f) == _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -812f))), select(false, !all(vec4<bool>(var_1.x, var_1.x, var_1.x, true)), all(vec3<bool>(var_1.x, var_1.x, var_1.x))), true, ~(-u_input.c) != 57171i), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(132f, 497f), vec2<f32>(-3911f, 227f), false)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, -789f) - vec2<f32>(190f, 346f)), var_1.x || false)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-215f, 726f), vec2<f32>(-683f, 1000f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-740f, 739f)), func_1().x)))) + _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-973f, 605f))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-485f, 130f) * _wgslsmith_f_op_f32(f32(-1f) * -807f)), 383f))));
    var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_2.a - vec2<f32>(var_2.a.x, var_2.d.x))), var_2.d)), all(select(select(select(var_2.c, var_2.c, vec4<bool>(true, false, var_1.x, var_1.x)), vec4<bool>(false, var_2.b, var_2.c.x, var_1.x), var_2.c), select(vec4<bool>(true, false, true, var_2.c.x), vec4<bool>(true, true, var_1.x, false), var_2.c), !(u_input.b != u_input.b))), vec4<bool>(func_3(Struct_1(vec2<f32>(var_2.e, -1000f), false, select(vec4<bool>(false, var_2.c.x, var_1.x, true), vec4<bool>(false, var_2.c.x, true, var_1.x), var_2.c.x), _wgslsmith_f_op_vec2_f32(select(var_2.d, var_2.d, var_1.x)), var_2.a.x), u_input.a, u_input.a.x), var_2.b, func_3(Struct_1(vec2<f32>(-2023f, var_2.d.x), select(false, true, var_1.x), var_2.c, _wgslsmith_f_op_vec2_f32(var_2.a - var_2.a), var_2.d.x), u_input.a, ~9412i), var_2.a.x != 271f), var_2.d, 2233f);
    var var_3 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(-var_2.d), ~_wgslsmith_dot_vec2_u32(vec2<u32>(43211u, u_input.b), vec2<u32>(var_0, u_input.b)) != _wgslsmith_mult_u32(var_0, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.b), vec2<u32>(24884u, 13249u))), select(!(!var_2.c), select(vec4<bool>(false, var_2.c.x, true, var_1.x), !vec4<bool>(var_2.b, var_2.b, true, var_2.c.x), true), true), vec2<f32>(_wgslsmith_f_op_f32(step(var_2.a.x, -890f)), -304f), _wgslsmith_f_op_f32(trunc(1471f))), vec3<bool>(any(var_2.c), var_1.x, true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f - var_2.e) - var_2.e) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(783f, -562f)) + -1026f)), true, Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_2.d))), !var_2.c.x, !(!(!var_2.c)), vec2<f32>(-171f, _wgslsmith_f_op_f32(618f - var_2.e)), 297f));
    let var_4 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-801f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -723f), _wgslsmith_f_op_f32(var_3.a.d.x * _wgslsmith_f_op_f32(662f - 108f)))), var_3.a.e, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-720f + var_2.e))));
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i, _wgslsmith_mod_vec2_i32(u_input.a.yy, u_input.a.zz), select(~vec2<u32>(18298u >> (u_input.b % 32u), 4294967295u ^ u_input.b), vec2<u32>(~u_input.b, var_0) >> (reverseBits(vec2<u32>(9074u, 6745u)) % vec2<u32>(32u)), var_2.c.xw), 1026i);
}

