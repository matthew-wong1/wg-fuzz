struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: u32, arg_1: vec3<u32>, arg_2: Struct_2, arg_3: Struct_1) -> f32 {
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1000f * -1097f)))) - -1000f), 1020f));
}

fn func_2() -> i32 {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-146f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(511f + -953f) + 2404f) + _wgslsmith_div_f32(-651f, _wgslsmith_f_op_f32(-398f + 1743f)))), -639f);
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(var_0.x, 790f), vec2<f32>(-849f, -399f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, 1253f)), vec2<bool>(false, false))), vec2<f32>(var_0.x, 1665f)) * vec2<f32>(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.x))))) - vec2<f32>(_wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -817f))), _wgslsmith_f_op_f32(max(var_0.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1592f * var_0.x), _wgslsmith_f_op_f32(-var_0.x)))))));
    var_0 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -599f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(u_input.d ^ u_input.a.x, u_input.a | vec3<u32>(u_input.a.x, u_input.d, u_input.d), Struct_2(vec2<i32>(-2147483647i, u_input.c), Struct_1(vec4<bool>(true, false, true, true))), Struct_1(vec4<bool>(false, false, true, true)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-890f, var_0.x) * _wgslsmith_f_op_f32(trunc(178f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_0.x, 695f)))))))));
    var var_1 = Struct_1(select(vec4<bool>(all(vec2<bool>(true, true)), true, u_input.a.x <= 1u, true), vec4<bool>(u_input.d < 27441u, false, _wgslsmith_clamp_i32(30333i, u_input.c, u_input.b) <= -2147483647i, !any(vec3<bool>(false, false, true))), any(select(select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false), false), select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, false), false), true))));
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, 1635f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_0.x))))) + vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x * var_0.x) - _wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_3(u_input.d, u_input.a, Struct_2(vec2<i32>(u_input.b, 24248i), Struct_1(var_1.a)), Struct_1(var_1.a))), _wgslsmith_div_f32(var_0.x, 213f)))))));
    return 2147483647i;
}

fn func_1() -> vec4<f32> {
    var var_0 = vec2<f32>(-204f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(-1000f)), 1f)), 1529f)));
    var var_1 = ~_wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(~vec4<u32>(39514u, u_input.a.x, 1u, 4294967295u) ^ ~vec4<u32>(u_input.d, u_input.a.x, 1u, 16162u), min(_wgslsmith_add_vec4_u32(vec4<u32>(1u, 66414u, 91398u, u_input.d), vec4<u32>(u_input.a.x, u_input.a.x, u_input.d, 39573u)), countOneBits(vec4<u32>(u_input.a.x, 4294967295u, 56319u, u_input.d)))), firstTrailingBit(reverseBits(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, u_input.a.x, 45348u, 32499u), vec4<u32>(u_input.d, u_input.a.x, 4294967295u, u_input.a.x)))));
    var var_2 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-948f, _wgslsmith_div_f32(var_0.x, var_0.x)), vec2<f32>(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(select(412f, var_0.x, true)))))), select(!any(select(vec2<bool>(true, false), vec2<bool>(false, true), false)), !(1i != u_input.c), _wgslsmith_mult_i32(_wgslsmith_clamp_i32(-2147483647i, u_input.b, -28821i), _wgslsmith_sub_i32(u_input.c, 18373i)) < u_input.b)));
    let var_3 = !((max(reverseBits(46134i), u_input.c) & 5898i) >= func_2());
    var var_4 = _wgslsmith_mult_vec4_i32(-_wgslsmith_mod_vec4_i32(~_wgslsmith_div_vec4_i32(vec4<i32>(u_input.c, u_input.c, u_input.c, -27347i), vec4<i32>(-23181i, 1i, u_input.c, -1664i)), ~vec4<i32>(-15460i, -2147483647i, 0i, 2147483647i) & abs(vec4<i32>(-5375i, u_input.c, 2147483647i, 54539i))), -vec4<i32>(1i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, -34224i, 0i), ~vec3<i32>(u_input.b, 10897i, u_input.c)), u_input.c, -1i));
    return vec4<f32>(-591f, var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(select(select(u_input.a.x, 0u, false), 4294967295u, !var_3), vec3<u32>(firstLeadingBit(4294967295u), 0u, u_input.a.x), Struct_2(var_4.wx, Struct_1(vec4<bool>(false, false, true, var_3))), Struct_1(!vec4<bool>(true, true, var_3, var_3)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -839f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -248f) - _wgslsmith_f_op_f32(535f + 779f)))), -461f);
}

fn func_4(arg_0: u32, arg_1: vec4<bool>, arg_2: vec4<f32>, arg_3: f32) -> Struct_2 {
    let var_0 = Struct_2(abs(-(~vec2<i32>(-447i, 0i))), Struct_1(arg_1));
    var var_1 = arg_2;
    var var_2 = firstTrailingBit(arg_0 & arg_0);
    var var_3 = _wgslsmith_div_vec3_i32(~(-(~(vec3<i32>(u_input.c, u_input.b, 8606i) ^ vec3<i32>(var_0.a.x, 2854i, 12475i)))), -(vec3<i32>(var_0.a.x, ~u_input.c, ~u_input.b) >> (_wgslsmith_clamp_vec3_u32(u_input.a | vec3<u32>(u_input.d, u_input.a.x, 33701u), u_input.a, _wgslsmith_add_vec3_u32(vec3<u32>(arg_0, 41151u, 5262u), vec3<u32>(44789u, 1u, 1u))) % vec3<u32>(32u))));
    return Struct_2(var_0.a, Struct_1(vec4<bool>(!(var_0.a.x < var_3.x), select(true, all(var_0.b.a), arg_1.x), true, !var_0.b.a.x)));
}

fn func_5(arg_0: vec4<u32>, arg_1: i32, arg_2: Struct_2, arg_3: vec4<bool>) -> vec4<f32> {
    var var_0 = arg_2;
    let var_1 = func_4(reverseBits(~1u), vec4<bool>(false, var_0.b.a.x, arg_3.x, all(func_4(84257u, var_0.b.a, vec4<f32>(-2246f, -228f, 423f, 532f), -669f).b.a.zw) & arg_2.b.a.x), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(719f, -183f, -732f, 1685f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(646f, 2473f, _wgslsmith_f_op_f32(1298f + 1506f), _wgslsmith_f_op_f32(-1149f - 1443f)) - _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1678f, 836f, 409f, -2053f)))))), 1288f).b;
    var_0 = Struct_2(var_0.a, func_4(_wgslsmith_div_u32(arg_0.x, abs(_wgslsmith_sub_u32(arg_0.x, arg_0.x))), !func_4(1u, arg_3, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1489f, -1557f, -808f, -710f)), 188f).b.a, vec4<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(903f * 286f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -496f)), -2059f), _wgslsmith_f_op_f32(-1f)).b);
    let var_2 = _wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(~_wgslsmith_clamp_vec4_u32(arg_0, vec4<u32>(u_input.d, u_input.d, 22991u, 52489u), arg_0) | select(~arg_0, firstTrailingBit(arg_0), arg_2.b.a), ~arg_0), reverseBits(vec4<u32>(abs(u_input.a.x), ~5396u | _wgslsmith_div_u32(u_input.a.x, 4294967295u), 19572u, _wgslsmith_mult_u32(59542u >> (arg_0.x % 32u), arg_0.x))), ~vec4<u32>(~1u << (~arg_0.x % 32u), select(~32988u, 1u, true), _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(u_input.a.zx, u_input.a.xz), u_input.a.x ^ 0u), 1u & _wgslsmith_mult_u32(1u, u_input.a.x)));
    var var_3 = _wgslsmith_mod_vec3_i32(vec3<i32>(arg_2.a.x, 0i << (abs(var_2.x) % 32u), var_0.a.x), reverseBits(~(~(~vec3<i32>(arg_2.a.x, -26178i, -21189i)))));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(562f, 271f, 360f, -1462f), vec4<f32>(-1000f, 1166f, -468f, 1734f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-257f, 211f, 1186f, -1000f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(125f, -1000f, -2401f, 1166f))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-476f, 1000f, 557f, 703f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(772f, 1000f, 808f, 753f))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(524f, -645f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(min(-178f, -1889f)))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(765f, -1342f, 253f, 1497f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -682f, 256f, -1995f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_5(vec4<u32>(abs(u_input.d), u_input.a.x, 0u, 50592u), -12761i, func_4(u_input.a.x, vec4<bool>(false, any(vec2<bool>(false, true)), any(vec3<bool>(false, true, false)), false), _wgslsmith_f_op_vec4_f32(func_1()), _wgslsmith_f_op_f32(round(-726f))), vec4<bool>(true, !func_4(4294967295u, vec4<bool>(false, true, true, false), vec4<f32>(-343f, -490f, 221f, -779f), 156f).b.a.x, !(15941u < u_input.d), false))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 710f, -762f, 1234f) * vec4<f32>(988f, 569f, 237f, -1000f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-168f, -4049f, -134f, -781f)))))) + vec4<f32>(1f, 1f, 1f, 1f)));
    let var_1 = vec3<bool>(!any(!select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false))), _wgslsmith_clamp_u32(abs(_wgslsmith_sub_u32(u_input.a.x, u_input.d)), abs(u_input.a.x << (u_input.d % 32u)), _wgslsmith_mod_u32(_wgslsmith_clamp_u32(15032u, 4294967295u, u_input.d), 55564u << (u_input.a.x % 32u))) > 1u, (_wgslsmith_f_op_f32(-623f * var_0.x) >= _wgslsmith_f_op_f32(func_3(_wgslsmith_clamp_u32(u_input.d, 4294967295u, 1u), vec3<u32>(u_input.a.x, 1u, 15450u), Struct_2(vec2<i32>(-2492i, -2040i), Struct_1(vec4<bool>(true, true, true, false))), Struct_1(vec4<bool>(true, true, true, false))))) && (true || func_4(0u, vec4<bool>(true, true, true, true), vec4<f32>(var_0.x, -311f, -1318f, -1063f), var_0.x).b.a.x));
    let var_2 = Struct_2(~min(-_wgslsmith_mult_vec2_i32(vec2<i32>(1i, -1i), vec2<i32>(u_input.b, -2147483647i)), vec2<i32>(-1i) * -vec2<i32>(0i, 10810i)), Struct_1(!func_4(u_input.a.x, !vec4<bool>(var_1.x, var_1.x, false, var_1.x), _wgslsmith_f_op_vec4_f32(select(var_0, var_0, vec4<bool>(var_1.x, false, var_1.x, true))), var_0.x).b.a));
    let var_3 = var_2.a;
    var var_4 = vec2<bool>(!((-307f >= _wgslsmith_f_op_f32(-var_0.x)) == (var_2.b.a.x & var_2.b.a.x)), all(vec2<bool>(false, false)));
    var var_5 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - 206f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_0.x, var_0.x, false)) - -474f)) * _wgslsmith_f_op_vec4_f32(func_1()).zw) - _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(var_0.yx)), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(select(var_0.zx, vec2<f32>(var_0.x, var_0.x), var_4.x)), _wgslsmith_f_op_vec2_f32(var_0.wy - var_0.yx)))))));
    let var_6 = func_4(u_input.d, !vec4<bool>(var_4.x, ~1u < ~u_input.d, any(select(vec3<bool>(true, var_2.b.a.x, true), var_2.b.a.zww, vec3<bool>(true, true, true))), var_2.b.a.x), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-var_0)))))), var_5.x);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d, abs(u_input.a.zx) << (countOneBits(abs(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a.x, 30154u), u_input.a.xy))) % vec2<u32>(32u)));
}

