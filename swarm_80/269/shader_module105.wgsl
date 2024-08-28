struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: i32,
    b: f32,
    c: f32,
}

struct Struct_3 {
    a: f32,
    b: vec4<u32>,
    c: vec2<f32>,
}

struct Struct_4 {
    a: vec2<i32>,
    b: i32,
    c: Struct_1,
    d: Struct_2,
}

struct Struct_5 {
    a: i32,
    b: Struct_4,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<i32>,
    d: vec3<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: vec4<i32>,
    d: vec4<u32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec2<u32>, arg_1: u32, arg_2: vec2<bool>) -> i32 {
    var var_0 = vec3<bool>(arg_2.x & any(vec3<bool>(true, any(vec4<bool>(arg_2.x, arg_2.x, true, false)), all(vec2<bool>(false, arg_2.x)))), select(false, true || !arg_2.x, arg_2.x), true);
    var_0 = !select(!select(!vec3<bool>(arg_2.x, false, var_0.x), select(vec3<bool>(arg_2.x, arg_2.x, true), vec3<bool>(arg_2.x, true, false), vec3<bool>(false, var_0.x, false)), select(vec3<bool>(false, var_0.x, arg_2.x), vec3<bool>(var_0.x, true, false), vec3<bool>(false, true, false))), select(vec3<bool>(true, all(vec3<bool>(var_0.x, true, false)), false), !vec3<bool>(true, false, var_0.x), select(select(vec3<bool>(var_0.x, var_0.x, false), vec3<bool>(var_0.x, arg_2.x, true), vec3<bool>(arg_2.x, arg_2.x, true)), select(vec3<bool>(arg_2.x, var_0.x, arg_2.x), vec3<bool>(arg_2.x, var_0.x, var_0.x), var_0.x), vec3<bool>(false, arg_2.x, arg_2.x))), vec3<bool>(true, true, true));
    var var_1 = vec2<f32>(1761f, 1862f);
    let var_2 = Struct_4(countOneBits(u_input.c), ~_wgslsmith_div_i32(abs(u_input.c.x), 12253i), Struct_1(vec2<i32>(abs(13006i) ^ _wgslsmith_mod_i32(u_input.d.x, -1i), firstTrailingBit(-u_input.e.x))), Struct_2(~_wgslsmith_mod_i32(-23884i, -2147483647i), -1250f, -1000f));
    var var_3 = vec2<bool>(arg_2.x, any(select(select(!vec4<bool>(true, false, arg_2.x, false), select(vec4<bool>(true, arg_2.x, true, false), vec4<bool>(arg_2.x, arg_2.x, true, false), false), !vec4<bool>(arg_2.x, true, false, true)), vec4<bool>(any(vec4<bool>(var_0.x, var_0.x, var_0.x, false)), any(arg_2), true, !var_0.x), select(select(vec4<bool>(var_0.x, true, true, true), vec4<bool>(var_0.x, arg_2.x, var_0.x, true), vec4<bool>(true, true, false, var_0.x)), !vec4<bool>(arg_2.x, var_0.x, var_0.x, false), any(vec3<bool>(var_0.x, arg_2.x, var_0.x))))));
    return -31192i;
}

fn func_2(arg_0: vec3<u32>) -> vec4<bool> {
    var var_0 = _wgslsmith_sub_vec4_i32(((~vec4<i32>(u_input.e.x, -3059i, 0i, -1i) >> (vec4<u32>(arg_0.x, arg_0.x, arg_0.x, u_input.b) % vec4<u32>(32u))) & max(min(vec4<i32>(-7851i, u_input.d.x, u_input.c.x, u_input.d.x), vec4<i32>(-2642i, 1i, u_input.d.x, -50785i)), vec4<i32>(u_input.c.x, u_input.d.x, 2147483647i, 0i) & vec4<i32>(0i, 14581i, -1i, -23187i))) ^ vec4<i32>(8833i, -7339i | u_input.c.x, u_input.e.x, i32(-1i) * -2147483647i), vec4<i32>(-u_input.d.x, -u_input.c.x, -reverseBits(17435i), ~(~(~u_input.c.x))));
    let var_1 = Struct_4(min(vec2<i32>(~(i32(-1i) * -2147483647i), _wgslsmith_mod_i32(u_input.c.x, func_3(vec2<u32>(u_input.b, arg_0.x), 4294967295u, vec2<bool>(false, false)))), -u_input.c), _wgslsmith_mod_i32(func_3(_wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(arg_0.x, u_input.b), vec2<u32>(2756u, u_input.b)), ~arg_0.xx), ~_wgslsmith_clamp_u32(u_input.b, arg_0.x, u_input.b), select(vec2<bool>(true, true), vec2<bool>(true, true), true)), _wgslsmith_div_i32(max(-44133i, var_0.x) & (i32(-1i) * -1i), 2147483647i)), Struct_1(vec2<i32>(-76857i, _wgslsmith_sub_i32(-u_input.e.x, u_input.e.x))), Struct_2(_wgslsmith_clamp_i32(abs(~var_0.x), abs(i32(-1i) * -9819i), 56579i), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(967f * -172f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1796f + _wgslsmith_div_f32(1781f, 1066f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1816f + 923f)))));
    var var_2 = vec4<bool>(!all(vec4<bool>(all(vec3<bool>(false, false, false)), true, true, false)), all(vec4<bool>(all(vec4<bool>(true, true, false, false)) & true, false, !any(vec4<bool>(true, false, true, true)), all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, false))))), any(select(vec4<bool>(172f <= var_1.d.b, true, all(vec3<bool>(false, true, false)), false), vec4<bool>(true, true, true, true), ~arg_0.x != u_input.b)), true && (any(select(vec2<bool>(true, false), vec2<bool>(false, true), false)) & true));
    var_0 = vec4<i32>(-reverseBits(_wgslsmith_div_i32(u_input.a.x, min(0i, -1i))), select(5291i, 1i, true), ~(i32(-1i) * -var_0.x), abs(select(abs(var_1.a.x), countOneBits(_wgslsmith_clamp_i32(-50233i, 39405i, 69838i)), true)));
    var var_3 = !var_2.x;
    return select(vec4<bool>(_wgslsmith_f_op_f32(step(1097f, _wgslsmith_f_op_f32(-216f + var_1.d.c))) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(sign(1000f))), all(vec4<bool>(any(vec4<bool>(false, var_2.x, false, false)), var_2.x, true || var_2.x, var_1.d.b != 540f)), !(var_2.x | true), var_2.x), select(!vec4<bool>(var_2.x, !var_2.x, var_2.x | true, any(var_2.yz)), select(vec4<bool>(any(vec3<bool>(false, var_2.x, false)), u_input.b < u_input.b, var_1.a.x < -5894i, !var_2.x), !select(vec4<bool>(var_2.x, true, var_2.x, true), vec4<bool>(var_2.x, var_2.x, true, var_2.x), vec4<bool>(var_2.x, var_2.x, var_2.x, false)), !(!var_2.x)), var_2.x), var_2.x);
}

fn func_4(arg_0: bool, arg_1: vec3<f32>, arg_2: i32) -> Struct_2 {
    let var_0 = Struct_4(u_input.d.xz, arg_2, Struct_1(u_input.e.zy), Struct_2(-_wgslsmith_clamp_i32(reverseBits(u_input.a.x), 2147483647i & arg_2, max(0i, u_input.c.x)), _wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(-arg_1.x)));
    var var_1 = Struct_3(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.d.b), var_0.d.b)), vec4<u32>(u_input.b, firstLeadingBit(u_input.b ^ 43689u) & _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.b, 0u, u_input.b, 1092u), select(vec4<u32>(9710u, 127745u, 429u, 4294967295u), vec4<u32>(u_input.b, 10368u, 40247u, 69681u), arg_0)), u_input.b, ~_wgslsmith_div_u32(3200u, u_input.b) >> (~firstTrailingBit(24454u) % 32u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(arg_1.xz))));
    var var_2 = Struct_4(-(~var_0.c.a), arg_2, Struct_1(-_wgslsmith_clamp_vec2_i32(-vec2<i32>(u_input.d.x, arg_2), var_0.c.a >> (vec2<u32>(1u, u_input.b) % vec2<u32>(32u)), -vec2<i32>(-9238i, arg_2))), Struct_2(~(-40622i) << (var_1.b.x % 32u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1839f)) + _wgslsmith_f_op_f32(-arg_1.x)), _wgslsmith_f_op_f32(-1236f + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(-435f, -1208f)))))));
    var var_3 = arg_1.x;
    var_1 = Struct_3(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_0.d.b - var_2.d.c))))))), vec4<u32>(~(~u_input.b), abs(_wgslsmith_mult_u32(~var_1.b.x, countOneBits(var_1.b.x))), var_1.b.x, (abs(var_1.b.x) & var_1.b.x) >> (16298u % 32u)), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1385f + _wgslsmith_f_op_f32(min(var_1.a, -3266f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(var_0.d.c)), 751f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1165f * arg_1.x))))));
    return var_0.d;
}

fn func_1(arg_0: vec2<f32>, arg_1: Struct_3, arg_2: i32) -> u32 {
    var var_0 = Struct_4(_wgslsmith_mult_vec2_i32(u_input.a, vec2<i32>(9645i, 2147483647i)) & -vec2<i32>(-1i, arg_2 << (u_input.b % 32u)), 15478i, Struct_1(vec2<i32>(0i, ~(~31718i))), func_4(any(select(vec4<bool>(false, false, true, true), func_2(arg_1.b.wxy), vec4<bool>(true, true, true, true))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -271f), _wgslsmith_f_op_f32(-703f * arg_1.a), _wgslsmith_f_op_f32(trunc(arg_1.a))), func_3(~(vec2<u32>(u_input.b, 110020u) & vec2<u32>(arg_1.b.x, u_input.b)), ~u_input.b, vec2<bool>(true, true))));
    let var_1 = _wgslsmith_mod_vec2_u32(~(countOneBits(arg_1.b.yy) >> (_wgslsmith_mod_vec2_u32(vec2<u32>(arg_1.b.x, 4294967295u), arg_1.b.xz) % vec2<u32>(32u))), vec2<u32>(~arg_1.b.x, _wgslsmith_clamp_u32(4294967295u, u_input.b, arg_1.b.x)) >> (vec2<u32>(~1u, arg_1.b.x) % vec2<u32>(32u))) & vec2<u32>(~firstTrailingBit(~1u), 41460u);
    var_0 = Struct_4(u_input.d.yx, -firstTrailingBit(1i), Struct_1(abs(min(vec2<i32>(-58413i, u_input.e.x), vec2<i32>(1560i, u_input.e.x) >> (var_1 % vec2<u32>(32u))))), func_4(all(vec2<bool>(true, true)), vec3<f32>(arg_1.c.x, _wgslsmith_f_op_f32(min(arg_0.x, var_0.d.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.c.x))), _wgslsmith_add_i32(1i, i32(-1i) * -10305i)));
    var var_2 = -36600i;
    var_0 = Struct_4(_wgslsmith_clamp_vec2_i32(_wgslsmith_add_vec2_i32(max(vec2<i32>(2147483647i, -29219i), u_input.c) >> (vec2<u32>(2354u, 0u) % vec2<u32>(32u)), firstTrailingBit(vec2<i32>(13853i, -2147483647i) << (var_1 % vec2<u32>(32u)))), var_0.c.a, ~select(max(vec2<i32>(1i, arg_2), vec2<i32>(u_input.a.x, u_input.c.x)), firstLeadingBit(u_input.c), vec2<bool>(true, true))), -func_4(select(true, true, true) | true, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-130f, arg_0.x, -534f))) + vec3<f32>(var_0.d.b, -671f, arg_1.c.x)), -34639i).a, Struct_1(~_wgslsmith_mult_vec2_i32(vec2<i32>(arg_2, var_0.a.x), u_input.d.zz) << (firstLeadingBit(_wgslsmith_add_vec2_u32(arg_1.b.zz, var_1)) % vec2<u32>(32u))), Struct_2(firstTrailingBit(_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(u_input.d.xy, var_0.c.a), -50355i)), _wgslsmith_f_op_f32(-arg_1.a), -2038f));
    return arg_1.b.x;
}

fn func_5(arg_0: vec2<i32>, arg_1: u32) -> Struct_3 {
    let var_0 = Struct_4(abs(-(~max(vec2<i32>(arg_0.x, arg_0.x), vec2<i32>(arg_0.x, 1i)))), arg_0.x, Struct_1(min(select(vec2<i32>(47700i, 16030i) ^ arg_0, u_input.c, select(vec2<bool>(true, false), vec2<bool>(true, true), true)), arg_0)), Struct_2(~u_input.e.x, -391f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, -244f))));
    return Struct_3(-758f, vec4<u32>(~((u_input.b & u_input.b) << (~0u % 32u)), arg_1, ~1u, select(u_input.b, _wgslsmith_mult_u32(u_input.b, arg_1) | arg_1, false)), vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(-393f, -129f)), _wgslsmith_f_op_f32(var_0.d.b * -841f))))), var_0.d.b));
}

fn func_6(arg_0: i32, arg_1: vec3<bool>, arg_2: Struct_3) -> vec2<u32> {
    var var_0 = Struct_5(-1i, Struct_4(vec2<i32>(~(~arg_0), _wgslsmith_clamp_i32(2147483647i, u_input.a.x, _wgslsmith_div_i32(u_input.e.x, u_input.d.x))), arg_0, Struct_1(~(-u_input.d.xx)), Struct_2(firstTrailingBit(~(-1i)), _wgslsmith_div_f32(697f, _wgslsmith_f_op_f32(arg_2.c.x + arg_2.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_2.a))))));
    let var_1 = Struct_5(_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(firstTrailingBit(u_input.a.x), var_0.b.a.x), -var_0.a, -_wgslsmith_div_i32(var_0.b.a.x, var_0.a), min(1i, arg_0)), reverseBits(vec4<i32>(40431i, 2147483647i, 39890i, 19937i)) ^ countOneBits(firstLeadingBit(vec4<i32>(-2147483647i, -1i, arg_0, arg_0)))), Struct_4(-vec2<i32>(-2147483647i ^ arg_0, _wgslsmith_sub_i32(arg_0, -34021i)), arg_0 & 0i, Struct_1(~var_0.b.a | var_0.b.c.a), var_0.b.d));
    let var_2 = arg_2;
    var_0 = var_1;
    var_0 = Struct_5(_wgslsmith_mult_i32(select(_wgslsmith_sub_i32(abs(19521i), 25196i), arg_0, false), -5618i), var_1.b);
    return var_2.b.yz;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a;
    var_0 = ~vec2<i32>(~1i, u_input.a.x);
    let var_1 = func_6(-2147483647i, vec3<bool>(true, any(!select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), false)), all(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true)), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false))))), func_5(vec2<i32>(-1i) * -_wgslsmith_mult_vec2_i32(u_input.c, vec2<i32>(u_input.d.x, 29542i)), _wgslsmith_clamp_u32(_wgslsmith_div_u32(~42637u, 4294967295u), _wgslsmith_mod_u32(u_input.b, u_input.b) | func_1(vec2<f32>(1744f, 493f), Struct_3(-1313f, vec4<u32>(u_input.b, u_input.b, u_input.b, 4294967295u), vec2<f32>(-1342f, -1103f)), 2147483647i), ~u_input.b)));
    let var_2 = u_input.e.x;
    let var_3 = 0u;
    var_0 = ~vec2<i32>(~(~(i32(-1i) * -2147483647i)), _wgslsmith_sub_i32(reverseBits(-1i), i32(-1i) * -u_input.e.x));
    var_0 = _wgslsmith_sub_vec2_i32(u_input.a, vec2<i32>(2147483647i, _wgslsmith_div_i32(var_0.x, ~u_input.e.x)));
    var var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(1783f * -357f), func_4(true, vec3<f32>(501f, 1025f, -1000f), var_0.x).b))));
    let var_5 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_4.x)))), reverseBits(~(~(vec3<u32>(4294967295u, var_1.x, 1u) >> (vec3<u32>(var_1.x, 1u, 12377u) % vec3<u32>(32u))))), select(select(firstLeadingBit(vec4<i32>(u_input.c.x, var_0.x, u_input.c.x, 0i)), vec4<i32>(u_input.a.x, 0i, 0i, 1i), var_5 | true) >> (vec4<u32>(func_5(u_input.a, 1u).b.x, ~u_input.b, u_input.b, 23307u) % vec4<u32>(32u)), _wgslsmith_add_vec4_i32(abs(vec4<i32>(9483i, 46690i, -43691i, var_2)) | vec4<i32>(0i, 2147483647i, u_input.d.x, var_2), ~vec4<i32>(43736i, -2147483647i, -20190i, 2147483647i) & (vec4<i32>(22564i, var_2, var_0.x, -17077i) | vec4<i32>(u_input.a.x, u_input.a.x, -2147483647i, var_0.x))), var_5 && true), reverseBits(~_wgslsmith_mult_vec4_u32(vec4<u32>(1u, var_1.x, var_1.x, var_3), vec4<u32>(9243u, 0u, 0u, var_3)) ^ _wgslsmith_mult_vec4_u32(vec4<u32>(0u, 0u, 27848u, u_input.b) >> (vec4<u32>(1u, 4294967295u, var_1.x, 0u) % vec4<u32>(32u)), _wgslsmith_mult_vec4_u32(vec4<u32>(54648u, var_1.x, 17665u, u_input.b), vec4<u32>(var_3, u_input.b, 0u, var_3)))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(953f, var_4.x)), _wgslsmith_f_op_f32(min(181f, 147f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1581f - var_4.x) + var_4.x)), _wgslsmith_f_op_f32(floor(var_4.x)), var_4.x, var_4.x));
}

