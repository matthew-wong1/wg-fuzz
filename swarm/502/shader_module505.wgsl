struct Struct_1 {
    a: vec3<i32>,
    b: vec4<f32>,
    c: vec3<bool>,
    d: vec2<i32>,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: u32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> vec4<f32> {
    let var_0 = _wgslsmith_add_i32(0i, ~1i);
    let var_1 = 36151u;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-104f - _wgslsmith_f_op_f32(round(891f)))))) == _wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -2351f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2175f)), !(42774u > u_input.a))), true));
    var var_3 = vec4<bool>(true, var_2, false, var_2);
    let var_4 = Struct_1(~_wgslsmith_add_vec3_i32(vec3<i32>(var_0, _wgslsmith_clamp_i32(var_0, 0i, -2147483647i), select(var_0, var_0, false)), ~abs(vec3<i32>(1i, -17722i, var_0))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -1105f, 692f, 621f) - vec4<f32>(468f, 1131f, 209f, -1324f)))))), vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(-268f, 1098f)))), _wgslsmith_f_op_f32(f32(-1f) * -305f), 1938f, _wgslsmith_f_op_f32(f32(-1f) * -351f)))), var_3.yzz, vec2<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_0, var_0, 34345i, var_0), vec4<i32>(2147483647i, 2147483647i, var_0, -67775i) | vec4<i32>(-42946i, -2147483647i, 0i, -24060i), min(vec4<i32>(-7601i, -26093i, -2147483647i, 22794i), vec4<i32>(-33979i, var_0, -10553i, var_0))), vec4<i32>(-2147483647i, -var_0, -2147483647i, _wgslsmith_mod_i32(14404i, var_0))), 0i), min(-(~(vec2<i32>(var_0, var_0) | vec2<i32>(var_0, -2147483647i))), vec2<i32>(_wgslsmith_add_i32(-803i, 56647i), var_0 & var_0) | _wgslsmith_mod_vec2_i32(~vec2<i32>(-42575i, -16541i), select(vec2<i32>(var_0, -1i), vec2<i32>(-5266i, -1i), vec2<bool>(true, var_2)))));
    return _wgslsmith_f_op_vec4_f32(max(var_4.b, _wgslsmith_f_op_vec4_f32(-var_4.b)));
}

fn func_2(arg_0: f32, arg_1: vec3<f32>) -> bool {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(func_3()), vec4<f32>(-272f, _wgslsmith_f_op_f32(1f * -324f), _wgslsmith_f_op_vec4_f32(func_3()).x, -680f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, arg_0, 992f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_0 + -158f), arg_0))) - _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(ceil(arg_1.x)), _wgslsmith_f_op_f32(arg_0 - arg_0), arg_0), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_0, arg_0, arg_0)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-530f, -685f, arg_0, -786f))))));
    var var_1 = ~vec3<u32>(~u_input.a, firstTrailingBit(abs(_wgslsmith_add_u32(4294967295u, u_input.a))), ~abs(u_input.a));
    var var_2 = Struct_1(~vec3<i32>(-(-12364i << (var_1.x % 32u)), firstTrailingBit(-1i) ^ _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -1i, -12190i), vec3<i32>(-2147483647i, 1i, -41304i)), -(~12732i)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(407f, 447f, 652f, arg_0)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-214f, -1556f, arg_0, arg_1.x)))), select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), true)), (arg_1.x < var_0.x) || true), select(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(false, any(vec3<bool>(true, false, true)), false), !select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), false)), !select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), false)), _wgslsmith_sub_vec2_i32(-vec2<i32>(~22872i, _wgslsmith_dot_vec2_i32(vec2<i32>(12696i, 0i), vec2<i32>(69910i, -2147483647i))), vec2<i32>(1i, 1i) << (~var_1.xx % vec2<u32>(32u))), firstTrailingBit(firstTrailingBit(~vec2<i32>(2147483647i, -1i))));
    return true;
}

fn func_4(arg_0: vec2<i32>, arg_1: f32, arg_2: Struct_1) -> Struct_1 {
    let var_0 = reverseBits(_wgslsmith_mult_i32(0i >> ((u_input.a | 3401u) % 32u), firstTrailingBit(arg_0.x)) >> (0u % 32u));
    var var_1 = vec4<i32>(-(0i ^ arg_0.x), _wgslsmith_dot_vec3_i32(-(~vec3<i32>(arg_0.x, arg_0.x, -40800i)), arg_2.a), firstTrailingBit(-2147483647i), 1i);
    var var_2 = vec2<bool>(!any(!select(vec4<bool>(arg_2.c.x, arg_2.c.x, arg_2.c.x, true), vec4<bool>(false, false, true, true), vec4<bool>(arg_2.c.x, arg_2.c.x, arg_2.c.x, arg_2.c.x))), true);
    var var_3 = Struct_1(select(vec3<i32>(min(max(-1i, 36246i), 17771i), abs(arg_2.e.x & arg_0.x), i32(-1i) * -2147483647i), arg_2.a, true), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(arg_2.b))) + vec4<f32>(_wgslsmith_f_op_vec4_f32(func_3()).x, _wgslsmith_f_op_f32(-1365f * arg_1), -379f, -1014f)), vec3<bool>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-620f * 111f))) > -1495f, all(vec2<bool>(true, true)), any(vec3<bool>(false, all(arg_2.c.xy), var_2.x))), arg_2.d, var_1.yy);
    let var_4 = arg_2;
    return arg_2;
}

fn func_1() -> Struct_1 {
    var var_0 = Struct_1(~(-firstTrailingBit(~vec3<i32>(0i, 1i, 0i))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1814f, 278f, -515f, -572f) - _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-236f, 709f, 614f, 1478f), vec4<f32>(344f, 896f, 1433f, 333f)))))), vec3<bool>(true, true, true), ~vec2<i32>(abs(-1i) >> ((u_input.a << (16468u % 32u)) % 32u), _wgslsmith_mod_i32(abs(13845i), ~1i)), vec2<i32>(~(~(-1i)), _wgslsmith_dot_vec2_i32(-(~vec2<i32>(36970i, 0i)), vec2<i32>(~(-1019i), 1i))));
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1359f), var_0.b.x, _wgslsmith_f_op_f32(select(-382f, _wgslsmith_f_op_f32(var_0.b.x - var_0.b.x), var_0.c.x | true))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1032f, var_0.b.x, -1508f)))))) + _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(round(var_0.b.wyx)))) - _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(var_0.b.zyz, vec3<f32>(var_0.b.x, var_0.b.x, var_0.b.x), false))))))));
    var_0 = func_4(var_0.a.yy, 102f, Struct_1(vec3<i32>(-1i, -1i, -countOneBits(var_0.a.x)), var_0.b, select(vec3<bool>(var_0.b.x <= -1000f, func_2(var_0.b.x, vec3<f32>(544f, var_1.x, var_1.x)), 72641u <= u_input.a), !var_0.c, !(!var_0.c)), var_0.a.xy, firstLeadingBit(vec2<i32>(-var_0.e.x, var_0.a.x))));
    var_0 = Struct_1(~(-countOneBits(func_4(var_0.a.zx, -449f, Struct_1(var_0.a, var_0.b, var_0.c, vec2<i32>(var_0.d.x, var_0.a.x), var_0.a.yz)).a)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_f32(f32(-1f) * -1444f), -1201f, 1000f) + vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(620f * -699f), _wgslsmith_f_op_f32(-492f - 1000f))), 644f, _wgslsmith_f_op_f32(max(-825f, _wgslsmith_f_op_f32(var_0.b.x * -1006f))), var_0.b.x)), !(!vec3<bool>(var_0.c.x, all(vec2<bool>(var_0.c.x, false)), !var_0.c.x)), func_4(_wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_add_i32(0i, -1i), 1i), ~(-var_0.a.yz)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -239f)), func_4(var_0.e, var_0.b.x, Struct_1(~vec3<i32>(var_0.a.x, var_0.e.x, 2147483647i), var_0.b, select(vec3<bool>(var_0.c.x, false, false), var_0.c, var_0.c), vec2<i32>(var_0.a.x, 0i), firstLeadingBit(vec2<i32>(var_0.d.x, -1376i))))).e, var_0.d);
    let var_2 = _wgslsmith_div_vec3_u32(_wgslsmith_clamp_vec3_u32(~(vec3<u32>(32776u, u_input.a, u_input.a) ^ vec3<u32>(6728u, 4294967295u, u_input.a)), vec3<u32>(u_input.a, ~u_input.a, 39468u & u_input.a), max(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, 4294967295u, 39844u), vec3<u32>(65564u, u_input.a, 4294967295u)), select(vec3<u32>(u_input.a, u_input.a, 66324u), vec3<u32>(0u, 35873u, 47420u), var_0.c))) | (countOneBits(vec3<u32>(1u, 1u, u_input.a)) ^ vec3<u32>(_wgslsmith_div_u32(u_input.a, 4294967295u), ~1u, _wgslsmith_add_u32(8764u, u_input.a))), firstLeadingBit(vec3<u32>(~(u_input.a >> (u_input.a % 32u)), ~1u, ~u_input.a)));
    return func_4(_wgslsmith_add_vec2_i32(~max(select(vec2<i32>(-1i, var_0.e.x), vec2<i32>(0i, 7471i), var_0.c.xy), abs(var_0.e)), vec2<i32>(var_0.a.x, var_0.e.x ^ reverseBits(var_0.a.x))), 1497f, Struct_1(vec3<i32>(32625i, var_0.a.x, var_0.a.x), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1771f, -1210f, var_1.x, 961f)))), var_0.c, _wgslsmith_mult_vec2_i32(-(var_0.a.yz >> (vec2<u32>(0u, 22452u) % vec2<u32>(32u))), firstLeadingBit(reverseBits(var_0.a.yz))), _wgslsmith_div_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(-1i, var_0.d.x), var_0.a.zy), var_0.e ^ var_0.a.yy) >> (vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(var_2.x, 0u), vec2<u32>(1u, var_2.x)), min(var_2.x, 37809u)) % vec2<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = func_4(var_0.e, func_4(vec2<i32>(2147483647i, func_1().d.x), -749f, func_4(vec2<i32>(var_0.d.x, 1i), var_0.b.x, func_1())).b.x, Struct_1(var_0.a, _wgslsmith_f_op_vec4_f32(-var_0.b), select(!var_0.c, vec3<bool>(false | var_0.c.x, true, all(var_0.c)), func_1().c), -vec2<i32>(0i, 1i), countOneBits(select(var_0.a.yy, min(vec2<i32>(-23513i, 23665i), vec2<i32>(39286i, var_0.a.x)), !var_0.c.x))));
    var var_2 = Struct_1(vec3<i32>(abs(_wgslsmith_dot_vec4_i32(abs(vec4<i32>(var_1.e.x, -2147483647i, 0i, var_0.e.x)), ~vec4<i32>(-17977i, var_1.d.x, 10056i, var_0.e.x))), countOneBits(_wgslsmith_div_i32(-79928i, -2578i)) << (countOneBits(21234u ^ u_input.a) % 32u), _wgslsmith_mult_i32(29133i, 1i)), var_1.b, var_0.c, ~_wgslsmith_div_vec2_i32(var_1.e, _wgslsmith_clamp_vec2_i32(-vec2<i32>(13393i, 1i), ~vec2<i32>(var_0.a.x, var_1.a.x), var_0.d)), _wgslsmith_sub_vec2_i32(-select(var_0.d, vec2<i32>(var_0.e.x, var_0.e.x), var_0.c.x), vec2<i32>(-var_1.a.x, var_1.e.x)) ^ ~firstTrailingBit(-var_1.e));
    var_2 = Struct_1(vec3<i32>(var_0.d.x, -(_wgslsmith_mod_i32(var_1.a.x, 29127i) >> (u_input.a % 32u)), _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(max(var_2.a, vec3<i32>(0i, -1i, var_0.d.x)), _wgslsmith_div_vec3_i32(var_1.a, var_0.a)), var_0.a)), var_2.b, !vec3<bool>(var_1.c.x, false, true), ~vec2<i32>(-_wgslsmith_dot_vec2_i32(var_0.a.yx, var_0.a.yy), ~(-2147483647i)), var_1.d & var_1.e);
    var var_3 = countOneBits(~1u) ^ (_wgslsmith_sub_u32(~(u_input.a & 1u), _wgslsmith_sub_u32(u_input.a, ~u_input.a)) & 1u);
    var var_4 = var_0.c.x;
    var var_5 = ~(select(-(vec4<i32>(var_1.d.x, var_2.e.x, -15187i, var_0.e.x) | vec4<i32>(var_2.d.x, var_2.a.x, var_1.a.x, var_1.a.x)), vec4<i32>(7937i, var_2.a.x, 1i, _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.d.x, var_2.a.x, var_0.a.x, -62718i), vec4<i32>(var_1.e.x, var_0.a.x, 47499i, -1i))), !vec4<bool>(false, false, var_1.c.x, var_0.c.x)) ^ -_wgslsmith_sub_vec4_i32(vec4<i32>(0i, -102343i, var_0.e.x, var_2.a.x), reverseBits(vec4<i32>(31719i, 7743i, 1i, var_2.a.x))));
    var var_6 = select(!(!select(!vec4<bool>(var_1.c.x, var_2.c.x, true, true), vec4<bool>(true, true, var_1.c.x, true), func_2(var_2.b.x, vec3<f32>(143f, var_0.b.x, var_0.b.x)))), !vec4<bool>(func_2(var_1.b.x, func_4(var_1.e, var_2.b.x, Struct_1(var_1.a, var_0.b, vec3<bool>(false, var_2.c.x, var_0.c.x), vec2<i32>(0i, -51178i), vec2<i32>(var_2.a.x, -1i))).b.zyz), !any(vec3<bool>(true, false, false)), var_1.c.x, false), true & var_0.c.x);
    var var_7 = Struct_1(~var_5.wxx, vec4<f32>(var_1.b.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2229f, _wgslsmith_f_op_f32(-var_2.b.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -964f) + -1220f), _wgslsmith_f_op_f32(-var_2.b.x)), select(select(!var_2.c, !var_1.c, all(vec4<bool>(var_6.x, true, var_0.c.x, var_6.x))), vec3<bool>(!var_2.c.x, var_2.c.x, any(select(vec4<bool>(true, true, false, var_2.c.x), vec4<bool>(var_0.c.x, false, false, var_6.x), vec4<bool>(var_1.c.x, var_1.c.x, var_0.c.x, true)))), var_1.c.x), -var_5.xx << (~(~vec2<u32>(26178u, 15424u) >> (~vec2<u32>(13496u, u_input.a) % vec2<u32>(32u))) % vec2<u32>(32u)), vec2<i32>(var_1.d.x, var_5.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-1952f - _wgslsmith_f_op_f32(f32(-1f) * -1000f)), ~((~u_input.a & u_input.a) >> (_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(3883u, u_input.a, 1u, 0u), vec4<u32>(72375u, 1559u, 23244u, 42106u)), u_input.a) % 32u)), 4294967295u, vec3<u32>(reverseBits(u_input.a), 0u, 3338u));
}

