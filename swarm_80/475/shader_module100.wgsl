struct Struct_1 {
    a: vec3<u32>,
    b: vec3<i32>,
    c: f32,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec3<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: Struct_1) -> vec4<f32> {
    var var_0 = u_input.c >= arg_0.a.x;
    let var_1 = Struct_1(arg_0.a & firstTrailingBit(vec3<u32>(4294967295u, _wgslsmith_div_u32(0u, u_input.a), ~4294967295u)), arg_0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(934f - _wgslsmith_f_op_f32(-arg_0.c)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, arg_0.c, arg_0.d.x, arg_0.d.x) * arg_0.d)))));
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(exp2(var_1.c)), _wgslsmith_f_op_f32(arg_0.d.x - _wgslsmith_f_op_f32(f32(-1f) * -475f)), _wgslsmith_f_op_f32(-arg_0.c), -286f));
}

fn func_3(arg_0: i32, arg_1: Struct_1) -> Struct_1 {
    var var_0 = 0u;
    var_0 = u_input.a;
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1278f, arg_1.c) + arg_1.c) * _wgslsmith_f_op_vec4_f32(func_2(Struct_1(arg_1.a, vec3<i32>(arg_1.b.x, arg_1.b.x, -47031i), arg_1.c, vec4<f32>(-429f, 1606f, arg_1.d.x, 736f)))).x), arg_1.c));
    return arg_1;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    var var_0 = !vec4<bool>(all(vec3<bool>(false, false, false)) && true, true, false, true);
    var_0 = select(vec4<bool>(!(_wgslsmith_f_op_f32(-arg_0.d.x) == _wgslsmith_f_op_f32(ceil(2175f))), all(var_0.wx), !any(vec2<bool>(true, true)), (all(vec3<bool>(false, var_0.x, true)) & all(vec3<bool>(var_0.x, var_0.x, var_0.x))) && any(vec4<bool>(true, false, var_0.x, var_0.x))), !(!vec4<bool>(false, all(vec4<bool>(true, true, false, false)), false & var_0.x, all(vec2<bool>(var_0.x, false)))), vec4<bool>(var_0.x, false, var_0.x, true));
    var_0 = select(!vec4<bool>(!(false & var_0.x), all(vec3<bool>(true, var_0.x, true)) & true, -173f <= _wgslsmith_div_f32(arg_0.d.x, -177f), true), vec4<bool>(true, false, !var_0.x, false), !(!(!vec4<bool>(false, var_0.x, true, var_0.x))));
    var var_1 = arg_2.a.x;
    let var_2 = arg_0;
    return arg_0;
}

fn func_1(arg_0: bool) -> vec4<f32> {
    let var_0 = func_4(func_3(-_wgslsmith_div_i32(~u_input.b, 27328i), Struct_1(vec3<u32>(u_input.a, u_input.c, ~u_input.c), vec3<i32>(-1052i, u_input.b, ~u_input.b), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1214f + -467f), _wgslsmith_f_op_f32(-382f - -934f)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-532f, -901f, 170f, 822f))), _wgslsmith_f_op_vec4_f32(func_2(Struct_1(vec3<u32>(u_input.c, 31820u, u_input.c), vec3<i32>(-865i, 0i, 11294i), -619f, vec4<f32>(202f, -325f, -390f, -1250f))))))), Struct_1(u_input.d.zxz, vec3<i32>(0i, u_input.b & u_input.b, 39356i), _wgslsmith_f_op_f32(f32(-1f) * -146f), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1115f, 559f, 1000f, 828f) * vec4<f32>(-1027f, 810f, 906f, -1101f)), _wgslsmith_f_op_vec4_f32(func_2(Struct_1(vec3<u32>(u_input.d.x, 47184u, u_input.a), vec3<i32>(22059i, u_input.b, -1i), 969f, vec4<f32>(1049f, -600f, -668f, 2038f))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-224f, -432f, -1000f, -347f), vec4<f32>(539f, -2399f, -1330f, 943f))))), Struct_1(vec3<u32>(0u, select(u_input.a, ~29617u, !arg_0), 4294967295u), min(countOneBits(vec3<i32>(u_input.b, -2147483647i, -27967i)), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.b, u_input.b, -28926i), vec3<i32>(u_input.b, 0i, u_input.b)) << (abs(vec3<u32>(44799u, u_input.a, 76208u)) % vec3<u32>(32u))), -1000f, vec4<f32>(665f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1424f - -2271f) * -163f), -1000f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1466f), -827f)))));
    var var_1 = func_3(_wgslsmith_add_i32(-61725i, var_0.b.x), var_0);
    let var_2 = func_3(_wgslsmith_sub_i32(u_input.b, 0i), Struct_1(_wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(abs(u_input.d.zxy), u_input.d.yzw), vec3<u32>(var_0.a.x, 1u, ~65051u)), func_3(0i | (u_input.b | -39207i), Struct_1(vec3<u32>(var_1.a.x, 15048u, u_input.c), abs(vec3<i32>(u_input.b, var_1.b.x, var_0.b.x)), _wgslsmith_div_f32(var_0.d.x, var_0.d.x), var_1.d)).b, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(-716f, var_1.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_1.d.x, -113f, arg_0)) + -233f))), _wgslsmith_div_vec4_f32(vec4<f32>(-153f, _wgslsmith_f_op_f32(-var_1.c), _wgslsmith_f_op_f32(f32(-1f) * -1108f), _wgslsmith_f_op_f32(-var_1.d.x)), _wgslsmith_f_op_vec4_f32(var_1.d * vec4<f32>(-346f, var_0.c, 221f, var_0.d.x)))));
    var var_3 = reverseBits(_wgslsmith_sub_vec4_u32(~(vec4<u32>(1u, var_0.a.x, var_0.a.x, 37719u) | u_input.d), abs(~vec4<u32>(17420u, u_input.c, var_2.a.x, 4294967295u))) >> (u_input.d % vec4<u32>(32u)));
    let var_4 = vec3<i32>(var_2.b.x, -76245i, -29237i << (_wgslsmith_dot_vec2_u32(var_3.zy, var_2.a.xy) % 32u));
    return _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-var_0.d)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(~u_input.d.zxw, abs(-vec3<i32>(~(-49378i), 7221i, ~1i)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(1000f)))), _wgslsmith_f_op_f32(544f + _wgslsmith_f_op_f32(815f + 1574f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1(true)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-696f, 651f, 437f, 296f)))));
    var var_1 = func_3(var_0.b.x, func_4(Struct_1(~abs(vec3<u32>(0u, 41002u, 1u)), _wgslsmith_add_vec3_i32(var_0.b, var_0.b) | var_0.b, _wgslsmith_f_op_f32(-var_0.d.x), vec4<f32>(var_0.d.x, _wgslsmith_f_op_f32(-1754f - 1032f), _wgslsmith_f_op_f32(-var_0.d.x), _wgslsmith_f_op_f32(f32(-1f) * -358f))), Struct_1(min(max(var_0.a, vec3<u32>(4936u, 0u, 11412u)), abs(u_input.d.wxw)), func_3(~u_input.b, Struct_1(u_input.d.zxw, vec3<i32>(1632i, u_input.b, -2147483647i), var_0.c, var_0.d)).b, 549f, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.d.x, var_0.d.x, var_0.d.x, -907f) - var_0.d) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.d.x, 920f, 1860f, var_0.d.x)))), Struct_1(~vec3<u32>(var_0.a.x, u_input.d.x, 0u), var_0.b, 660f, _wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0.d.x, var_0.c, 1033f, var_0.c), _wgslsmith_f_op_vec4_f32(func_1(true)))))));
    var_0 = func_3(i32(-1i) * -37275i, func_3(abs(_wgslsmith_dot_vec3_i32(vec3<i32>(var_1.b.x, u_input.b, -1i), _wgslsmith_clamp_vec3_i32(vec3<i32>(var_1.b.x, var_1.b.x, var_0.b.x), var_0.b, var_0.b))), func_4(func_4(Struct_1(vec3<u32>(var_1.a.x, var_0.a.x, 50820u), var_1.b, -146f, var_0.d), func_4(Struct_1(u_input.d.yzx, var_0.b, -836f, vec4<f32>(1181f, var_0.d.x, -797f, 1481f)), Struct_1(var_1.a, var_1.b, var_1.d.x, var_0.d), Struct_1(vec3<u32>(u_input.c, 4294967295u, 4294967295u), vec3<i32>(var_0.b.x, 3642i, u_input.b), var_1.d.x, vec4<f32>(var_0.c, 987f, var_1.c, 1649f))), func_4(Struct_1(var_1.a, var_1.b, var_1.d.x, vec4<f32>(var_1.d.x, -712f, -1859f, var_1.c)), Struct_1(u_input.d.wwy, vec3<i32>(u_input.b, 1i, 1i), -233f, var_1.d), Struct_1(vec3<u32>(var_1.a.x, var_1.a.x, 44860u), vec3<i32>(var_1.b.x, var_0.b.x, var_0.b.x), var_1.d.x, vec4<f32>(1000f, 1187f, var_1.c, var_1.c)))), func_3(~(-2147483647i), Struct_1(var_1.a, var_1.b, 236f, vec4<f32>(var_0.d.x, 179f, -1000f, var_1.d.x))), Struct_1(_wgslsmith_mult_vec3_u32(vec3<u32>(134646u, u_input.a, var_0.a.x), vec3<u32>(var_0.a.x, var_0.a.x, 2677u)), var_1.b, 1397f, vec4<f32>(-149f, -417f, var_1.d.x, 2048f)))));
    var_1 = func_4(func_4(func_4(func_3(-39599i, func_4(Struct_1(vec3<u32>(1u, u_input.c, 1088u), var_1.b, -1000f, vec4<f32>(497f, -1225f, 1153f, -284f)), Struct_1(var_0.a, var_0.b, 142f, vec4<f32>(-220f, var_0.c, var_0.c, var_1.d.x)), Struct_1(vec3<u32>(35645u, var_0.a.x, var_1.a.x), var_0.b, var_0.d.x, vec4<f32>(var_0.c, var_0.d.x, -698f, -223f)))), Struct_1(~var_0.a, var_0.b, _wgslsmith_f_op_f32(-995f + 489f), var_1.d), Struct_1(select(vec3<u32>(0u, 104363u, var_0.a.x), vec3<u32>(u_input.a, u_input.c, 22829u), vec3<bool>(false, false, true)), firstLeadingBit(vec3<i32>(var_0.b.x, var_1.b.x, 2147483647i)), var_1.d.x, _wgslsmith_f_op_vec4_f32(round(var_1.d)))), Struct_1(var_1.a, _wgslsmith_sub_vec3_i32(firstTrailingBit(var_0.b), _wgslsmith_mod_vec3_i32(var_1.b, var_1.b)), var_1.c, _wgslsmith_f_op_vec4_f32(-var_1.d)), Struct_1(var_1.a, _wgslsmith_add_vec3_i32(vec3<i32>(var_0.b.x, 2147483647i, -5369i) & var_1.b, var_1.b), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.c), var_0.d.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.d.x, var_0.d.x, var_0.d.x, var_0.d.x)))), func_3(~reverseBits(64390i), func_3(_wgslsmith_dot_vec3_i32(var_0.b, -var_1.b), func_3(_wgslsmith_add_i32(58745i, 15775i), Struct_1(vec3<u32>(var_1.a.x, 1u, var_0.a.x), var_0.b, 370f, var_0.d)))), Struct_1(~(~firstLeadingBit(u_input.d.xyz)), _wgslsmith_clamp_vec3_i32(~(vec3<i32>(0i, 1i, 1i) << (var_1.a % vec3<u32>(32u))), var_1.b, var_0.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.d.x) * 254f)), var_1.d));
    let var_2 = func_4(Struct_1(var_1.a, max(var_0.b, abs(var_0.b)), _wgslsmith_f_op_f32(f32(-1f) * -711f), var_0.d), Struct_1(u_input.d.xyx, ~var_1.b, _wgslsmith_f_op_f32(-var_0.c), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_1.c), var_0.d.x, _wgslsmith_f_op_f32(step(300f, var_0.c)), _wgslsmith_f_op_f32(-var_0.c)))), func_3(-2147483647i, func_3(var_1.b.x, Struct_1(~vec3<u32>(27779u, u_input.a, 38112u), var_1.b, _wgslsmith_f_op_f32(1000f * -1140f), _wgslsmith_f_op_vec4_f32(-var_0.d)))));
    var_0 = func_4(Struct_1(u_input.d.xwx | var_1.a, var_1.b, var_0.c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0.c, var_2.c, -997f, var_1.c), vec4<f32>(var_2.c, var_0.c, var_1.c, var_0.c))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.d.x, -949f, var_2.d.x, var_2.d.x))))), func_3(var_1.b.x, func_3(21001i, Struct_1(abs(var_2.a), var_2.b, _wgslsmith_f_op_f32(f32(-1f) * -1186f), _wgslsmith_f_op_vec4_f32(-var_1.d)))), func_3(~(~(-9270i ^ var_2.b.x)), var_2));
    var var_3 = var_2;
    let var_4 = 1766u;
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.d, ~(-max(var_1.b, -var_1.b)), ~func_3(var_1.b.x, func_4(Struct_1(vec3<u32>(39148u, 4294967295u, 100789u), vec3<i32>(var_0.b.x, u_input.b, var_2.b.x), var_2.d.x, var_3.d), Struct_1(vec3<u32>(var_2.a.x, var_0.a.x, var_1.a.x), var_0.b, var_0.c, vec4<f32>(var_0.d.x, 354f, 691f, -137f)), func_3(-1i, var_2))).b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_2(var_2)).x)));
}

