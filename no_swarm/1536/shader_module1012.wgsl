struct Struct_1 {
    a: vec4<f32>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: f32,
    b: vec2<bool>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
    d: vec3<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec2<i32>) -> f32 {
    let var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1005f, -626f, 1642f))))));
    let var_1 = Struct_3(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1000f)) - _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(var_0.a.x, -1089f)))), arg_0.x, arg_0.x));
    let var_2 = Struct_3(var_1.a);
    var var_3 = countOneBits(select(~vec2<i32>(35702i, arg_1.x), select(vec2<i32>(arg_1.x, arg_1.x), select(vec2<i32>(arg_1.x, 0i), vec2<i32>(arg_1.x, arg_1.x), false), any(vec4<bool>(false, true, true, true))), !select(vec2<bool>(true, true), vec2<bool>(true, false), true)) | select(vec2<i32>(arg_1.x ^ -2147483647i, 1i), abs(~vec2<i32>(0i, 38897i)), true));
    let var_4 = vec2<i32>(_wgslsmith_mult_i32(1i, ~arg_1.x), var_3.x);
    return 1296f;
}

fn func_2(arg_0: f32, arg_1: Struct_3, arg_2: Struct_1) -> Struct_2 {
    let var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(step(arg_2.b.zww, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(vec3<f32>(arg_0, -3327f, 290f), vec3<f32>(arg_2.a.x, -425f, 1200f)), vec3<f32>(-1293f, arg_1.a.x, 1851f))))))));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(arg_2.b)));
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_1.ywx) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(var_0.a))));
    var_2 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_1.a.x, -563f)) - -644f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec2<f32>(-473f, var_1.x), vec2<i32>(-57729i, -1i)))), _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.a.x, 759f) * vec2<f32>(arg_0, -236f)), vec2<i32>(-16740i, -3638i)))) - vec3<f32>(770f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.b.x * -796f)), var_1.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-1400f + 250f), var_1.x, _wgslsmith_f_op_f32(select(var_0.a.x, arg_2.b.x, false)))))));
    var var_3 = _wgslsmith_f_op_vec4_f32(var_1 + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_1.a.x, -674f, arg_0, arg_1.a.x)))))));
    return Struct_2(1555f, !select(!select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false)), vec2<bool>(all(vec2<bool>(false, false)), true), all(vec4<bool>(true, false, false, false))), arg_2, Struct_1(vec4<f32>(arg_1.a.x, 319f, arg_2.b.x, -657f), var_1));
}

fn func_4(arg_0: f32, arg_1: Struct_2, arg_2: i32, arg_3: vec3<f32>) -> vec4<f32> {
    let var_0 = -vec4<i32>(arg_2, arg_2 ^ -abs(-21319i), ~(-20420i), firstTrailingBit(firstTrailingBit(25416i)));
    var var_1 = vec3<u32>(u_input.a, u_input.a, u_input.a);
    var var_2 = _wgslsmith_f_op_vec4_f32(-arg_1.c.a);
    var var_3 = _wgslsmith_mult_i32(i32(-1i) * -var_0.x, abs(_wgslsmith_dot_vec2_i32(select(firstLeadingBit(vec2<i32>(7608i, 59397i)), ~vec2<i32>(var_0.x, arg_2), arg_1.b.x), vec2<i32>(var_0.x, ~arg_2))));
    var_3 = _wgslsmith_mod_i32(firstLeadingBit(-abs(select(arg_2, arg_2, arg_1.b.x))), i32(-1i) * -var_0.x);
    return _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(arg_1.d.a, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-arg_1.d.a), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3.x, 596f, arg_3.x, 150f) + vec4<f32>(arg_3.x, 705f, arg_0, -1573f)), !vec4<bool>(arg_1.b.x, arg_1.b.x, true, false)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_2.x, arg_1.c.a.x, arg_0, arg_0))) - _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-528f, var_2.x, 702f, var_2.x))))))));
}

fn func_5(arg_0: Struct_1, arg_1: bool, arg_2: u32, arg_3: i32) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(524f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_0.a.x + _wgslsmith_f_op_f32(1000f * 1529f)))), arg_0.b.x, arg_0.b.x));
    let var_1 = _wgslsmith_f_op_vec3_f32(-arg_0.a.xzz);
    var var_2 = -arg_3;
    let var_3 = vec4<u32>(~u_input.a, _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(arg_2, 4294967295u, arg_2), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, 1u, 0u), vec3<u32>(4294967295u, u_input.a, u_input.a))), _wgslsmith_mod_vec3_u32(countOneBits(vec3<u32>(u_input.a, 4294967295u, u_input.a)), reverseBits(vec3<u32>(63649u, 90092u, arg_2)))), ~countOneBits(~arg_2)), u_input.a, 18850u);
    let var_4 = 549f;
    return func_2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f + -1000f), 616f)), 1343f)), Struct_3(var_1), arg_0);
}

fn func_6(arg_0: f32, arg_1: Struct_2, arg_2: vec3<i32>, arg_3: Struct_2) -> Struct_3 {
    let var_0 = vec3<i32>(51506i, firstLeadingBit(-8212i), reverseBits(-select(-2147483647i, 47733i, false))) ^ arg_2;
    var var_1 = vec3<u32>(1u, ~u_input.a, _wgslsmith_sub_u32(reverseBits(min(~u_input.a, ~u_input.a)), u_input.a));
    let var_2 = abs(~arg_2);
    var var_3 = Struct_2(arg_1.d.a.x, arg_3.b, func_5(Struct_1(vec4<f32>(_wgslsmith_div_f32(1379f, arg_1.a), _wgslsmith_div_f32(arg_3.a, arg_1.d.b.x), 1780f, _wgslsmith_f_op_f32(352f + 251f)), func_2(292f, Struct_3(arg_3.d.b.wwy), func_2(-257f, Struct_3(arg_3.c.b.wxx), Struct_1(vec4<f32>(arg_1.c.a.x, arg_1.c.a.x, arg_3.a, -690f), arg_3.c.a)).d).d.b), reverseBits(u_input.a << (4294967295u % 32u)) != ~u_input.a, 1u << (u_input.a % 32u), 2147483647i).d, arg_3.d);
    var_3 = arg_1;
    return Struct_3(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(300f, -1605f, arg_1.d.b.x), arg_3.d.b.xzz))))))));
}

fn func_1(arg_0: vec2<f32>) -> Struct_1 {
    var var_0 = func_6(arg_0.x, func_5(Struct_1(_wgslsmith_f_op_vec4_f32(func_4(_wgslsmith_f_op_f32(floor(411f)), func_2(arg_0.x, Struct_3(vec3<f32>(arg_0.x, arg_0.x, arg_0.x)), Struct_1(vec4<f32>(-497f, arg_0.x, arg_0.x, -1043f), vec4<f32>(324f, arg_0.x, 773f, -1221f))), -2147483647i, _wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_0.x, 1000f, arg_0.x), vec3<f32>(-896f, 1090f, arg_0.x))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, 1186f, arg_0.x, arg_0.x) - _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, 1000f, -726f, arg_0.x) - vec4<f32>(-1222f, -982f, 1360f, 1027f)))), false, abs(abs(u_input.a)), _wgslsmith_mod_i32(countOneBits(~3008i), _wgslsmith_dot_vec3_i32(-vec3<i32>(-1i, -28553i, 37101i), vec3<i32>(1i, 1i, 1i)))), ~select(vec3<i32>(-2147483647i, 2147483647i, -56890i) << (_wgslsmith_add_vec3_u32(vec3<u32>(0u, u_input.a, u_input.a), vec3<u32>(4294967295u, 0u, 0u)) % vec3<u32>(32u)), vec3<i32>(1i, 1i, 1i), vec3<bool>(true, true, all(vec3<bool>(false, false, false)))), Struct_2(-1966f, select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(true, all(vec2<bool>(true, false)))), func_5(func_2(727f, Struct_3(vec3<f32>(arg_0.x, -257f, 190f)), func_2(-233f, Struct_3(vec3<f32>(353f, 1000f, -1255f)), Struct_1(vec4<f32>(-749f, arg_0.x, arg_0.x, arg_0.x), vec4<f32>(-1849f, arg_0.x, 2622f, arg_0.x))).d).c, false, ~u_input.a, 0i >> (u_input.a % 32u)).d, Struct_1(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1000f, 137f, arg_0.x, -191f))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_0.x, arg_0.x, 608f, 1707f))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_0.x, 195f, -615f, -1263f), vec4<f32>(arg_0.x, -1232f, arg_0.x, arg_0.x))), 2374f <= arg_0.x)))));
    var_0 = func_6(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1358f, arg_0.x, !any(vec3<bool>(false, true, true)))) - 716f), Struct_2(var_0.a.x, vec2<bool>(func_5(Struct_1(vec4<f32>(var_0.a.x, -1010f, arg_0.x, var_0.a.x), vec4<f32>(arg_0.x, -1771f, 356f, var_0.a.x)), all(vec3<bool>(false, false, true)), 62086u, -1i).b.x, all(vec3<bool>(false, true, false)) | all(vec4<bool>(false, false, false, true))), Struct_1(vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(-var_0.a.x), -1000f, _wgslsmith_f_op_f32(ceil(var_0.a.x))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(272f, 207f, -643f, 1000f), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0.a.x, var_0.a.x, -1638f, 1076f), vec4<f32>(-287f, 671f, 533f, 130f)))))), func_5(Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(899f, var_0.a.x, var_0.a.x, var_0.a.x)), vec4<f32>(868f, var_0.a.x, var_0.a.x, 1369f)), false, u_input.a, _wgslsmith_mod_i32(2147483647i, ~0i)).c), _wgslsmith_clamp_vec3_i32(vec3<i32>(0i << (_wgslsmith_div_u32(23851u, 67470u) % 32u), _wgslsmith_clamp_i32(-23882i, max(58127i, -32421i), 39227i), select(-1i, -17687i, true)), ~vec3<i32>(-21246i, 0i >> (1u % 32u), -1i), select(vec3<i32>(1i, 1i, 1i), select(vec3<i32>(-2147483647i, -42165i, 22868i), vec3<i32>(2147483647i, -1i, -2336i), false) << ((vec3<u32>(0u, 17557u, u_input.a) & vec3<u32>(u_input.a, u_input.a, u_input.a)) % vec3<u32>(32u)), true)), Struct_2(func_6(1f, func_2(-722f, Struct_3(var_0.a), func_2(-1002f, Struct_3(var_0.a), Struct_1(vec4<f32>(arg_0.x, arg_0.x, 1292f, var_0.a.x), vec4<f32>(var_0.a.x, var_0.a.x, var_0.a.x, arg_0.x))).d), firstTrailingBit(~vec3<i32>(18543i, 28315i, -35014i)), Struct_2(_wgslsmith_f_op_f32(-arg_0.x), vec2<bool>(true, true), Struct_1(vec4<f32>(-296f, -599f, -323f, var_0.a.x), vec4<f32>(-712f, -294f, -901f, var_0.a.x)), Struct_1(vec4<f32>(126f, var_0.a.x, arg_0.x, 365f), vec4<f32>(var_0.a.x, arg_0.x, -113f, 2467f)))).a.x, !select(vec2<bool>(true, true), func_5(Struct_1(vec4<f32>(1157f, 559f, arg_0.x, arg_0.x), vec4<f32>(1059f, arg_0.x, arg_0.x, -570f)), false, 4294967295u, -2147483647i).b, false), func_5(func_5(func_2(779f, Struct_3(vec3<f32>(1000f, 412f, -1600f)), Struct_1(vec4<f32>(921f, 1582f, var_0.a.x, var_0.a.x), vec4<f32>(arg_0.x, var_0.a.x, arg_0.x, arg_0.x))).d, true, 81380u, _wgslsmith_div_i32(-1i, -2147483647i)).d, true && all(vec4<bool>(false, true, true, false)), _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, 4294967295u, u_input.a), vec3<u32>(6962u, 4294967295u, 53592u)), vec3<u32>(u_input.a, u_input.a, 13901u)), _wgslsmith_clamp_i32(_wgslsmith_mult_i32(2147483647i, 0i), 19156i << (u_input.a % 32u), 1i)).c, func_2(1229f, Struct_3(var_0.a), Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.x, var_0.a.x, arg_0.x, 744f) - vec4<f32>(arg_0.x, 1339f, -1157f, arg_0.x)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-263f, var_0.a.x, var_0.a.x, -1339f))))).c));
    var var_1 = any(vec3<bool>(true, true, any(select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), true)) != false));
    var var_2 = !select(vec2<bool>(any(select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), true)), func_2(var_0.a.x, func_6(var_0.a.x, Struct_2(-2008f, vec2<bool>(true, true), Struct_1(vec4<f32>(1614f, var_0.a.x, -113f, 1875f), vec4<f32>(arg_0.x, arg_0.x, var_0.a.x, var_0.a.x)), Struct_1(vec4<f32>(var_0.a.x, -1000f, 2022f, 711f), vec4<f32>(var_0.a.x, arg_0.x, arg_0.x, var_0.a.x))), vec3<i32>(-76134i, -1i, 37827i), Struct_2(1081f, vec2<bool>(true, true), Struct_1(vec4<f32>(arg_0.x, -522f, 563f, -1000f), vec4<f32>(arg_0.x, -605f, -1042f, var_0.a.x)), Struct_1(vec4<f32>(-1789f, -304f, -661f, var_0.a.x), vec4<f32>(1168f, var_0.a.x, 1529f, -1000f)))), Struct_1(vec4<f32>(arg_0.x, arg_0.x, var_0.a.x, 1753f), vec4<f32>(-608f, -868f, var_0.a.x, arg_0.x))).b.x), func_5(func_2(var_0.a.x, func_6(416f, Struct_2(-486f, vec2<bool>(false, false), Struct_1(vec4<f32>(297f, var_0.a.x, -1930f, arg_0.x), vec4<f32>(var_0.a.x, 2232f, var_0.a.x, -235f)), Struct_1(vec4<f32>(-2804f, -350f, var_0.a.x, var_0.a.x), vec4<f32>(var_0.a.x, arg_0.x, var_0.a.x, var_0.a.x))), vec3<i32>(-44184i, 2147483647i, -46509i), Struct_2(547f, vec2<bool>(false, false), Struct_1(vec4<f32>(-1533f, 260f, -1313f, 761f), vec4<f32>(775f, 760f, var_0.a.x, var_0.a.x)), Struct_1(vec4<f32>(1000f, -662f, var_0.a.x, 1236f), vec4<f32>(var_0.a.x, 358f, -239f, arg_0.x)))), Struct_1(vec4<f32>(var_0.a.x, 137f, 1286f, -888f), vec4<f32>(1686f, var_0.a.x, -1403f, arg_0.x))).d, false, u_input.a, 1i).b, select(vec2<bool>(true, true), vec2<bool>(true, true), true));
    var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec4_f32(func_4(_wgslsmith_f_op_f32(step(2044f, var_0.a.x)), func_5(Struct_1(vec4<f32>(422f, 973f, var_0.a.x, arg_0.x), vec4<f32>(arg_0.x, arg_0.x, var_0.a.x, arg_0.x)), var_2.x, u_input.a, 2147483647i), abs(-2147483647i), vec3<f32>(var_0.a.x, var_0.a.x, arg_0.x))).xzw * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.a - vec3<f32>(866f, arg_0.x, arg_0.x))))));
    return func_5(Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1620f, -1091f, 1043f, 694f), vec4<f32>(arg_0.x, var_0.a.x, var_0.a.x, 653f), vec4<bool>(var_2.x, true, false, var_2.x)))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_0.x, 1029f, arg_0.x, arg_0.x), _wgslsmith_div_vec4_f32(vec4<f32>(arg_0.x, arg_0.x, 746f, var_0.a.x), vec4<f32>(var_0.a.x, 1019f, arg_0.x, arg_0.x))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, var_0.a.x, 1546f, arg_0.x)), _wgslsmith_div_vec4_f32(vec4<f32>(arg_0.x, arg_0.x, -2134f, arg_0.x), vec4<f32>(1573f, var_0.a.x, arg_0.x, arg_0.x)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(831f, arg_0.x, -692f, var_0.a.x))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(803f, -1297f, var_0.a.x, 1605f))))), _wgslsmith_mult_i32(_wgslsmith_div_i32(57171i >> (u_input.a % 32u), _wgslsmith_mult_i32(19652i, 10973i)), 38426i) > ~(-2147483647i), u_input.a, -21731i).c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 71229i;
    var_0 = _wgslsmith_sub_i32(~((1i << (u_input.a % 32u)) & -28755i) << (~u_input.a % 32u), ~4997i);
    let var_1 = func_1(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -623f), -328f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-609f, -264f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, -336f) - vec2<f32>(-699f, 510f)))))));
    var_0 = -(2147483647i | ~_wgslsmith_dot_vec4_i32(-vec4<i32>(41577i, -5090i, 1i, 2147483647i), countOneBits(vec4<i32>(-21435i, 8585i, 0i, 38689i))));
    let var_2 = Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1342f), var_1.a.x, _wgslsmith_f_op_vec4_f32(func_4(129f, Struct_2(var_1.b.x, vec2<bool>(true, false), var_1, var_1), -30702i, vec3<f32>(260f, -577f, -650f))).x), func_1(vec2<f32>(var_1.b.x, 1000f)).b.zxy)));
    let var_3 = ~45447u >> (1u % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_u32(_wgslsmith_mod_u32(~_wgslsmith_mod_u32(var_3, u_input.a), 4294967295u), 51519u), 72071u, vec3<i32>(-1i, firstLeadingBit(min(2147483647i, -20938i)) & _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(-6583i, 14451i, 1i), vec3<i32>(-35373i, -1i, 1i)), ~vec3<i32>(36749i, 0i, -2147483647i)), i32(-1i) * -1i), reverseBits(~vec3<u32>(~1u, _wgslsmith_mod_u32(u_input.a, 68425u), 35373u)), _wgslsmith_dot_vec2_i32(countOneBits(-_wgslsmith_mod_vec2_i32(vec2<i32>(2147483647i, -49586i), vec2<i32>(-20774i, 18636i))), -(~firstTrailingBit(vec2<i32>(26554i, -15855i)))));
}

