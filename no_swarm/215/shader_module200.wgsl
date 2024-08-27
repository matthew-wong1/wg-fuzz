struct Struct_1 {
    a: u32,
    b: vec3<i32>,
    c: u32,
    d: u32,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_2,
    c: Struct_2,
}

struct Struct_4 {
    a: vec2<bool>,
    b: bool,
    c: i32,
    d: vec4<u32>,
}

struct Struct_5 {
    a: Struct_3,
    b: vec4<bool>,
    c: vec3<u32>,
    d: bool,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec4<u32>, arg_1: i32, arg_2: vec2<i32>, arg_3: bool) -> u32 {
    var var_0 = -797f;
    let var_1 = Struct_4(vec2<bool>(arg_3, any(!select(vec2<bool>(true, arg_3), vec2<bool>(false, false), vec2<bool>(arg_3, arg_3)))), 1u >= (u_input.a.x >> (4064u % 32u)), 44161i, firstLeadingBit(select(abs(countOneBits(vec4<u32>(arg_0.x, arg_0.x, 4294967295u, 4294967295u))), vec4<u32>(_wgslsmith_mult_u32(u_input.a.x, u_input.a.x), 0u, 3310u, arg_0.x), arg_3)));
    var var_2 = var_1;
    let var_3 = max(1u, ~4294967295u);
    let var_4 = Struct_5(Struct_3(max(countOneBits(firstTrailingBit(arg_2)), vec2<i32>(-arg_1, -2147483647i)), Struct_2(Struct_1(~var_2.d.x, _wgslsmith_mult_vec3_i32(vec3<i32>(arg_1, 685i, arg_1), vec3<i32>(-49998i, var_2.c, 0i)), arg_0.x, _wgslsmith_div_u32(11264u, u_input.a.x), _wgslsmith_f_op_f32(490f - -310f)), Struct_1(max(var_1.d.x, 16818u), vec3<i32>(13196i, 2147483647i, u_input.c), 1u, firstTrailingBit(28203u), _wgslsmith_f_op_f32(-679f - -604f)), Struct_1(abs(arg_0.x), vec3<i32>(arg_2.x, u_input.c, -1i), 1u, _wgslsmith_clamp_u32(u_input.a.x, 0u, var_2.d.x), _wgslsmith_f_op_f32(f32(-1f) * -1322f))), Struct_2(Struct_1(~u_input.b.x, -vec3<i32>(-2147483647i, -15670i, 2147483647i), 27287u << (var_2.d.x % 32u), var_3, -1164f), Struct_1(1u, select(vec3<i32>(arg_2.x, -2147483647i, arg_2.x), vec3<i32>(1i, -2147483647i, -62197i), var_1.b), ~4294967295u, var_3, _wgslsmith_f_op_f32(f32(-1f) * -257f)), Struct_1(firstTrailingBit(0u), vec3<i32>(0i, -2147483647i, var_2.c), ~1u, 59823u, _wgslsmith_f_op_f32(-3394f * 1073f)))), vec4<bool>(true, var_2.a.x, min(_wgslsmith_mod_i32(u_input.c, 11010i), 25012i) <= _wgslsmith_div_i32(var_1.c, -arg_1), any(!vec4<bool>(true, false, var_1.b, true)) && (_wgslsmith_f_op_f32(round(-852f)) <= _wgslsmith_f_op_f32(-492f * -1259f))), _wgslsmith_mod_vec3_u32(~select(var_1.d.zwz, ~u_input.a.wyz, select(vec3<bool>(var_1.b, false, false), vec3<bool>(false, true, true), vec3<bool>(arg_3, false, arg_3))), abs(abs(var_2.d.zxx))), false & !(!(u_input.b.x > 1u)), vec3<i32>(_wgslsmith_sub_i32((arg_2.x | -1i) << (_wgslsmith_dot_vec2_u32(arg_0.zw, u_input.b) % 32u), ~(-arg_1)), u_input.d, 2147483647i));
    return var_2.d.x;
}

fn func_2(arg_0: f32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(1097f - _wgslsmith_f_op_f32(abs(1594f)));
    var var_1 = vec2<u32>(firstTrailingBit(~4294967295u) >> ((4294967295u ^ firstTrailingBit(~57983u)) % 32u), select(0u, abs(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a.x, u_input.b.x, 28122u, 41858u), u_input.a)), true));
    let var_2 = func_3(u_input.a, u_input.c, abs(vec2<i32>(-(~u_input.c), 33523i | u_input.d)), false);
    var_1 = vec2<u32>(~_wgslsmith_sub_u32(var_1.x, 0u), 21938u) ^ _wgslsmith_mult_vec2_u32(_wgslsmith_mult_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(var_1.x, var_2), u_input.a.wx & vec2<u32>(0u, u_input.a.x)), abs(select(u_input.a.zw, u_input.a.yz, vec2<bool>(false, false)))), _wgslsmith_mult_vec2_u32(u_input.a.yz, vec2<u32>(firstLeadingBit(var_1.x), _wgslsmith_add_u32(1u, 0u))));
    var_1 = u_input.b;
    return Struct_1(66204u, _wgslsmith_div_vec3_i32(min(_wgslsmith_clamp_vec3_i32(-vec3<i32>(u_input.c, u_input.c, 2147483647i), ~vec3<i32>(u_input.c, u_input.c, 22415i), vec3<i32>(u_input.c, u_input.d, 30635i) >> (u_input.a.yyz % vec3<u32>(32u))), ~(-vec3<i32>(u_input.d, 1276i, u_input.c))), firstLeadingBit(vec3<i32>(u_input.d, select(u_input.c, u_input.c, false), u_input.c))), 0u, select(~(~_wgslsmith_sub_u32(41746u, var_1.x)), firstLeadingBit((var_2 >> (22842u % 32u)) ^ 19166u), false), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_0)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-699f)) + _wgslsmith_f_op_f32(f32(-1f) * -128f))) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -467f))))));
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: vec2<i32>) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(ceil(-838f));
    var var_1 = abs(vec4<u32>(firstLeadingBit(u_input.a.x), firstLeadingBit(u_input.a.x), firstLeadingBit(_wgslsmith_clamp_u32(select(1u, u_input.a.x, false), ~arg_1.c, _wgslsmith_sub_u32(1u, u_input.b.x))), 83007u));
    var var_2 = select(vec2<u32>(~func_3(~vec4<u32>(arg_0, 24459u, arg_1.c, 9379u), func_2(arg_1.e).b.x, vec2<i32>(1i, u_input.c), true), 99u), ~var_1.yw, select(vec2<bool>(true, true), vec2<bool>(all(vec4<bool>(true, true, false, false)), any(select(vec2<bool>(true, false), vec2<bool>(true, false), false))), vec2<bool>(true, true)));
    let var_3 = Struct_1(~_wgslsmith_mult_u32(_wgslsmith_div_u32(1u, 55437u), 2849u), reverseBits(~vec3<i32>(-11285i, -26613i, arg_1.b.x) | _wgslsmith_mod_vec3_i32(firstTrailingBit(arg_1.b), _wgslsmith_div_vec3_i32(vec3<i32>(2969i, 1i, u_input.d), vec3<i32>(1i, arg_2.x, u_input.d)))), _wgslsmith_div_u32(20135u, ~min(arg_1.c, abs(6164u))), select(var_2.x, 1u, true), 1536f);
    let var_4 = Struct_5(Struct_3(select(-var_3.b.xz, ~abs(vec2<i32>(15296i, arg_1.b.x)), vec2<bool>(var_3.e > -1196f, true)), Struct_2(Struct_1(u_input.b.x >> (var_3.a % 32u), countOneBits(arg_1.b), ~var_2.x, 1641u, var_3.e), var_3, func_2(_wgslsmith_f_op_f32(max(var_3.e, -957f)))), Struct_2(func_2(var_3.e), func_2(_wgslsmith_f_op_f32(var_3.e * -697f)), Struct_1(4294967295u ^ arg_1.d, min(arg_1.b, vec3<i32>(0i, -2147483647i, var_3.b.x)), 5562u, arg_1.a, _wgslsmith_f_op_f32(arg_1.e + 848f)))), vec4<bool>(any(select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), true))), true, true, !select(any(vec4<bool>(true, false, true, true)), true, true)), vec3<u32>(var_1.x, _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 1u) << (var_1.wx % vec2<u32>(32u)), vec2<u32>(var_3.c, 55359u)), abs(func_2(397f).a)), ~45307u), false, var_3.b);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -2014f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-227f, -1644f)) * arg_1.e)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_4.a.c.c.e) + _wgslsmith_f_op_f32(ceil(-199f))));
}

fn func_5(arg_0: vec3<u32>, arg_1: f32, arg_2: Struct_3, arg_3: Struct_4) -> Struct_1 {
    let var_0 = Struct_5(Struct_3(arg_2.b.a.b.zy, Struct_2(Struct_1(~u_input.b.x, ~arg_2.c.a.b, arg_3.d.x, 1284u, _wgslsmith_f_op_f32(arg_1 * arg_2.c.b.e)), arg_2.b.b, Struct_1(~arg_0.x, vec3<i32>(arg_3.c, arg_3.c, arg_3.c), ~arg_0.x, 55315u, 869f)), arg_2.b), vec4<bool>(true, true, !(countOneBits(arg_2.a.x) == u_input.c), arg_3.b), ~(vec3<u32>(_wgslsmith_div_u32(arg_2.c.a.a, 8033u), 0u, 13680u) >> (vec3<u32>(~arg_0.x, ~26900u, arg_0.x) % vec3<u32>(32u))), arg_2.c.b.e < _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(arg_2.c.a.e, _wgslsmith_f_op_f32(f32(-1f) * -321f), false)))), arg_2.b.a.b);
    var var_1 = arg_2;
    var_1 = var_0.a;
    var var_2 = reverseBits(u_input.a.x);
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(trunc(arg_2.b.a.e)))));
    return arg_2.c.a;
}

fn func_1(arg_0: vec4<i32>) -> vec3<bool> {
    let var_0 = func_5(vec3<u32>(u_input.a.x, ~0u, 4294967295u >> (u_input.b.x % 32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1178f) * _wgslsmith_f_op_f32(min(2273f, 1124f))))) * _wgslsmith_f_op_f32(func_4(min(~u_input.b.x, _wgslsmith_sub_u32(u_input.b.x, u_input.b.x)), func_2(-193f), vec2<i32>(arg_0.x << (0u % 32u), u_input.c)))), Struct_3(arg_0.xy, Struct_2(Struct_1(0u, arg_0.yzz, 1u, 30994u, -350f), Struct_1(1u, arg_0.xwy, func_2(-551f).c, _wgslsmith_clamp_u32(49877u, 11024u, u_input.a.x), _wgslsmith_f_op_f32(f32(-1f) * -386f)), func_2(_wgslsmith_f_op_f32(-572f * 1223f))), Struct_2(Struct_1(~4294967295u, arg_0.yyw >> (u_input.a.zww % vec3<u32>(32u)), 0u, 27166u, -1134f), func_2(_wgslsmith_f_op_f32(min(-932f, 1508f))), func_2(_wgslsmith_f_op_f32(1782f * -398f)))), Struct_4(vec2<bool>(true, true), any(select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true))) | true, abs(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, -27538i) | arg_0.yw, arg_0.yx)), _wgslsmith_sub_vec4_u32(vec4<u32>(abs(4294967295u), abs(u_input.a.x), 0u, u_input.a.x), _wgslsmith_div_vec4_u32(vec4<u32>(1u, 0u, u_input.a.x, 51140u), firstTrailingBit(u_input.a)))));
    let var_1 = _wgslsmith_mult_vec4_i32(vec4<i32>(arg_0.x >> (~1u % 32u), u_input.c, var_0.b.x, arg_0.x), vec4<i32>(-var_0.b.x, var_0.b.x, var_0.b.x, arg_0.x));
    let var_2 = vec3<i32>(-1i) * -var_1.yyy;
    var var_3 = Struct_2(func_5(vec3<u32>(_wgslsmith_mult_u32(var_0.c, var_0.d), func_3(vec4<u32>(17146u, 4294967295u, 40378u, var_0.c), arg_0.x, vec2<i32>(u_input.d, u_input.c), false) | 11417u, 36260u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.e, 1853f) - 364f)), Struct_3(-(~vec2<i32>(arg_0.x, 31733i)), Struct_2(var_0, Struct_1(var_0.a, vec3<i32>(26953i, var_2.x, var_0.b.x), u_input.a.x, 1u, -968f), Struct_1(0u, vec3<i32>(2147483647i, var_0.b.x, var_1.x), u_input.a.x, var_0.a, var_0.e)), Struct_2(var_0, var_0, var_0)), Struct_4(vec2<bool>(true, true), true, abs(-24560i), vec4<u32>(_wgslsmith_mod_u32(var_0.a, 38962u), var_0.a ^ var_0.c, 4294967295u, var_0.d))), func_2(var_0.e), var_0);
    var var_4 = 60400u;
    return select(select(vec3<bool>(all(vec3<bool>(false, false, false)), true, true), vec3<bool>(true, true, true), !all(vec2<bool>(false, true))), vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), select(select(select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false)), select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), true), all(vec3<bool>(false, true, true))), vec3<bool>(false, true, true), vec3<bool>(true, true, true))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1i;
    var var_1 = select(select(vec3<bool>(true, all(vec2<bool>(true, true)), true), vec3<bool>(true, true, true), vec3<bool>(true, false, true)), vec3<bool>(true, true, false), select(func_1(-(vec4<i32>(u_input.d, 13087i, u_input.c, u_input.c) >> (vec4<u32>(u_input.b.x, 65800u, u_input.a.x, u_input.a.x) % vec4<u32>(32u)))), vec3<bool>(true, true, true), true));
    let var_2 = _wgslsmith_f_op_f32(floor(-595f));
    var_1 = select(!vec3<bool>(!(795f > var_2), var_1.x, false), !vec3<bool>(false, false, var_1.x), vec3<bool>(var_1.x, true, false));
    let var_3 = _wgslsmith_f_op_f32(-445f + _wgslsmith_f_op_f32(var_2 + func_5(vec3<u32>(1u, ~u_input.a.x, firstTrailingBit(u_input.a.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(400f)), var_2)), Struct_3(select(vec2<i32>(24227i, u_input.c), vec2<i32>(1i, u_input.c), vec2<bool>(var_1.x, false)), Struct_2(Struct_1(672u, vec3<i32>(u_input.d, 12793i, 2147483647i), u_input.b.x, u_input.a.x, var_2), Struct_1(u_input.a.x, vec3<i32>(22836i, u_input.c, u_input.c), 27860u, u_input.a.x, 154f), Struct_1(60834u, vec3<i32>(u_input.c, 0i, 52216i), u_input.a.x, u_input.a.x, var_2)), Struct_2(Struct_1(u_input.a.x, vec3<i32>(-1i, u_input.c, u_input.c), 1u, 1724u, -801f), Struct_1(23192u, vec3<i32>(1i, u_input.c, u_input.d), 1u, 4294967295u, 110f), Struct_1(1u, vec3<i32>(u_input.c, 0i, u_input.c), u_input.b.x, u_input.b.x, 1248f))), Struct_4(var_1.yy, var_1.x, _wgslsmith_sub_i32(-2147483647i, u_input.c), u_input.a)).e));
    let x = u_input.a;
    s_output = StorageBuffer(min(97222u, _wgslsmith_mod_u32(u_input.b.x, 69799u)), _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(~vec3<u32>(1u, 0u, u_input.a.x), u_input.a.xwx), _wgslsmith_add_vec3_u32(select(u_input.a.zwz, u_input.a.yww, vec3<bool>(false, false, var_1.x)), u_input.a.yzx)), u_input.b.x << (u_input.b.x % 32u)), firstTrailingBit(vec4<i32>(max(_wgslsmith_add_i32(-33456i, u_input.d), u_input.d), u_input.d ^ ~(-2147483647i), 1i, func_2(184f).b.x & u_input.d)), _wgslsmith_add_u32(u_input.b.x, 60022u));
}

