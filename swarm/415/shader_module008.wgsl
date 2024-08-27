struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: i32,
    b: vec3<f32>,
    c: Struct_1,
    d: Struct_1,
    e: f32,
}

struct Struct_3 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec3<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: i32,
    d: vec3<f32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_3) -> vec3<bool> {
    var var_0 = arg_1.a;
    var var_1 = ~(firstTrailingBit(vec4<u32>(_wgslsmith_dot_vec2_u32(u_input.c.xz, vec2<u32>(57008u, 11120u)), u_input.a.x, firstTrailingBit(u_input.c.x), abs(69209u))) & u_input.a);
    var var_2 = Struct_2(max(23925i, arg_0.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1000f, _wgslsmith_f_op_f32(-501f * var_0.x), _wgslsmith_f_op_f32(1286f - arg_1.a.x)), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-607f, -786f, 288f))))))), Struct_1(min(-13737i, -1849i)), Struct_1(_wgslsmith_sub_i32(u_input.b ^ arg_0.x, -1i)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(trunc(-1481f))))));
    var var_3 = global0.x;
    let var_4 = _wgslsmith_div_u32(~min(~4294967295u, _wgslsmith_mod_u32(u_input.a.x, u_input.d)) << (u_input.a.x % 32u), ~1u);
    return !vec3<bool>(!global0.x, global0.x, !any(vec2<bool>(global0.x, global0.x)));
}

fn func_2() -> bool {
    global0 = !(!select(select(vec3<bool>(global0.x, false, global0.x), func_3(vec3<i32>(u_input.e, -1442i, 33080i), Struct_3(vec2<f32>(1045f, 1068f))), select(vec3<bool>(true, global0.x, global0.x), vec3<bool>(global0.x, true, false), vec3<bool>(false, global0.x, global0.x))), select(vec3<bool>(global0.x, global0.x, global0.x), !vec3<bool>(global0.x, false, global0.x), vec3<bool>(global0.x, false, global0.x)), !global0.x));
    global0 = select(select(!func_3(vec3<i32>(u_input.b, u_input.b, -1i), Struct_3(vec2<f32>(-2318f, -1942f))), select(vec3<bool>(func_3(vec3<i32>(u_input.b, u_input.e, -1260i), Struct_3(vec2<f32>(1703f, 2572f))).x, any(global0.yx), global0.x), select(!vec3<bool>(global0.x, global0.x, global0.x), !vec3<bool>(true, global0.x, true), any(vec3<bool>(global0.x, true, true))), true), !(!select(vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(true, false, global0.x), vec3<bool>(false, false, global0.x)))), select(select(select(vec3<bool>(true, true, true), !vec3<bool>(true, true, global0.x), !global0.x), !(!vec3<bool>(true, global0.x, true)), select(select(vec3<bool>(false, false, global0.x), vec3<bool>(global0.x, global0.x, true), true), select(vec3<bool>(true, true, global0.x), vec3<bool>(global0.x, global0.x, true), vec3<bool>(global0.x, true, global0.x)), false || global0.x)), !vec3<bool>(true, global0.x, all(vec3<bool>(global0.x, global0.x, false))), select(true, !select(true, true, false), (0u <= u_input.c.x) || false)), select(vec3<bool>(global0.x, global0.x, global0.x), !(!(!vec3<bool>(global0.x, global0.x, true))), false));
    var var_0 = Struct_2(u_input.b, _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(176f, 418f, -368f), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-596f, 845f, -1255f), vec3<f32>(1635f, -322f, -362f), vec3<bool>(false, false, false))))))))), Struct_1(_wgslsmith_mod_i32(_wgslsmith_sub_i32(0i, -2465i), reverseBits(_wgslsmith_add_i32(u_input.e, u_input.e)))), Struct_1(-u_input.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1153f + _wgslsmith_f_op_f32(step(-985f, 1085f))) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-331f + 1188f), -155f)))));
    global0 = select(func_3(select(firstTrailingBit(~vec3<i32>(var_0.a, -2147483647i, 0i)), _wgslsmith_mult_vec3_i32(vec3<i32>(0i, u_input.e, -21759i), countOneBits(vec3<i32>(-15906i, u_input.b, 1i))), !vec3<bool>(false, global0.x, global0.x)), Struct_3(_wgslsmith_f_op_vec2_f32(var_0.b.yx * _wgslsmith_f_op_vec2_f32(vec2<f32>(751f, 1216f) + vec2<f32>(-234f, 499f))))), !vec3<bool>(select(all(vec4<bool>(true, false, false, global0.x)), !global0.x, true), !(global0.x || true), global0.x), 592f > _wgslsmith_f_op_f32(step(var_0.e, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -686f)))));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.x + var_0.e)) + var_0.e), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0.b.x)) + _wgslsmith_f_op_f32(floor(1900f))) - -890f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1227f) + _wgslsmith_f_op_f32(-var_0.b.x)) - _wgslsmith_f_op_f32(-2398f * _wgslsmith_div_f32(var_0.b.x, var_0.b.x))));
    return all(select(!vec4<bool>(true, any(vec4<bool>(true, global0.x, true, false)), global0.x, any(vec2<bool>(global0.x, true))), select(!vec4<bool>(global0.x, false, global0.x, global0.x), select(vec4<bool>(global0.x, global0.x, global0.x, global0.x), !vec4<bool>(global0.x, false, global0.x, global0.x), 514f == var_0.e), select(select(vec4<bool>(true, global0.x, global0.x, false), vec4<bool>(global0.x, false, global0.x, global0.x), vec4<bool>(false, false, false, global0.x)), select(vec4<bool>(global0.x, global0.x, false, true), vec4<bool>(global0.x, false, global0.x, false), global0.x), !vec4<bool>(false, global0.x, global0.x, true))), !(!select(true, false, false))));
}

fn func_1(arg_0: u32, arg_1: vec4<f32>) -> vec2<bool> {
    global0 = vec3<bool>(func_2(), u_input.e == u_input.b, func_3(vec3<i32>(-9328i, 1599i, -u_input.e), Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_1.yy) + arg_1.wx))).x);
    global0 = vec3<bool>(global0.x, all(vec4<bool>(!any(global0.yy), global0.x, true, true)), true);
    global0 = vec3<bool>(true && (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1825f - arg_1.x)) != -780f), func_2(), global0.x);
    global0 = select(vec3<bool>(global0.x, !global0.x, any(!vec2<bool>(global0.x, global0.x))), vec3<bool>(any(select(select(vec4<bool>(global0.x, false, false, global0.x), vec4<bool>(false, global0.x, global0.x, global0.x), vec4<bool>(global0.x, true, global0.x, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), true), vec4<bool>(global0.x, false, false, true))), false, !func_2()), !vec3<bool>(!global0.x, !(global0.x || global0.x), global0.x));
    global0 = select(select(!vec3<bool>(true, global0.x, true), !select(vec3<bool>(false, false, global0.x), func_3(vec3<i32>(1i, 34861i, u_input.e), Struct_3(vec2<f32>(1263f, arg_1.x))), vec3<bool>(true, global0.x, global0.x)), true), !select(vec3<bool>(any(vec3<bool>(global0.x, true, true)), !global0.x, false), select(vec3<bool>(false, global0.x, false), !vec3<bool>(false, global0.x, global0.x), func_3(vec3<i32>(u_input.e, 10867i, -1i), Struct_3(vec2<f32>(arg_1.x, 1418f)))), true), (((u_input.a.x > u_input.c.x) || !global0.x) & func_3(abs(vec3<i32>(u_input.e, u_input.e, u_input.e)), Struct_3(vec2<f32>(158f, -193f))).x) && any(vec2<bool>(any(vec2<bool>(true, false)), any(vec2<bool>(global0.x, global0.x)))));
    return global0.yy;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec3<bool>(global0.x, any(func_1(u_input.d, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1000f, -759f, -571f, -480f))) - vec4<f32>(1779f, 543f, -1000f, -822f)))), false);
    global0 = func_3(_wgslsmith_add_vec3_i32(max(vec3<i32>(-u_input.b, u_input.b, 12897i), vec3<i32>(abs(-16052i), _wgslsmith_add_i32(u_input.e, 52626i), 0i ^ u_input.b)), _wgslsmith_mult_vec3_i32(vec3<i32>(select(-1i, -50666i, true), u_input.e, select(u_input.e, u_input.b, global0.x)), vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(2663i, u_input.e, -8847i), vec3<i32>(-2147483647i, u_input.e, -30052i)), min(u_input.b, u_input.e), min(5347i, -2147483647i)))), Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1034f, -662f) * vec2<f32>(-246f, -207f)) + vec2<f32>(-349f, 363f)))));
    var var_0 = 1u;
    var_0 = 0u;
    let x = u_input.a;
    s_output = StorageBuffer(90507u, vec4<f32>(-294f, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(562f)), -371f), -902f), _wgslsmith_f_op_f32(-1227f + _wgslsmith_f_op_f32(f32(-1f) * -548f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-642f, -338f, global0.x))))), -18425i, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-982f, 239f, -1000f), vec3<f32>(1000f, -1436f, 1000f), false)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(3602f, 117f, 1059f), vec3<f32>(534f, 301f, 418f), global0.x)), global0.x)), vec3<f32>(_wgslsmith_f_op_f32(-1080f - 471f), 985f, _wgslsmith_f_op_f32(f32(-1f) * -275f))))), u_input.c.yz);
}

