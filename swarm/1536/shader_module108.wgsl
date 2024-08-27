struct Struct_1 {
    a: u32,
    b: vec2<bool>,
    c: vec2<i32>,
    d: bool,
    e: u32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec3<bool>,
    c: vec2<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: u32,
    d: vec4<f32>,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec2<bool> {
    let var_0 = vec3<u32>(~max(_wgslsmith_mod_u32(u_input.c.x, 0u), _wgslsmith_dot_vec3_u32(select(vec3<u32>(26383u, u_input.a, 1u), vec3<u32>(41077u, u_input.c.x, 93308u), vec3<bool>(true, false, false)), ~vec3<u32>(u_input.c.x, u_input.a, u_input.a))), 1u, u_input.c.x);
    let var_1 = Struct_2(!select(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(true, true), any(vec4<bool>(false, false, true, true))), vec3<bool>(true, true, _wgslsmith_div_u32(82846u, _wgslsmith_sub_u32(4294967295u, var_0.x)) >= (select(u_input.c.x, 47178u, false) << (_wgslsmith_sub_u32(u_input.a, 1u) % 32u))), countOneBits(_wgslsmith_sub_vec2_u32(countOneBits(u_input.c), vec2<u32>(~var_0.x, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, var_0.x, u_input.c.x), var_0)))), Struct_1(~u_input.c.x, vec2<bool>(true, all(select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true)))), vec2<i32>(u_input.b, (i32(-1i) * -18169i) ^ ~u_input.b), all(select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true))), var_0.x));
    let var_2 = _wgslsmith_div_f32(384f, -1000f);
    let var_3 = var_1.d;
    var var_4 = var_0;
    return vec2<bool>(_wgslsmith_sub_u32(3089u, var_4.x) >= select(~u_input.c.x, firstTrailingBit(30637u) ^ _wgslsmith_add_u32(var_1.d.e, var_0.x), var_3.b.x), !(!var_1.d.d));
}

fn func_2(arg_0: vec3<u32>) -> u32 {
    let var_0 = Struct_4(Struct_1(~1u, vec2<bool>(!any(vec3<bool>(true, true, false)), true), abs(vec2<i32>(_wgslsmith_sub_i32(u_input.b, u_input.b), -16492i)), true, 9331u), Struct_3(Struct_2(func_3(), select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), true), vec2<u32>(~arg_0.x, u_input.c.x), Struct_1(arg_0.x, vec2<bool>(true, true), _wgslsmith_mult_vec2_i32(vec2<i32>(-24734i, u_input.b), vec2<i32>(u_input.b, u_input.b)), any(vec2<bool>(false, false)), 46612u)), -118f, 0u & arg_0.x, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(1408f, -1672f, 370f, 1169f) + vec4<f32>(-379f, -537f, 607f, 391f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(603f, -1000f, -454f, 1000f) - vec4<f32>(-1000f, 1002f, -587f, 106f)))), Struct_1(abs(~4294967295u), select(vec2<bool>(true, true), vec2<bool>(false, true), all(vec2<bool>(false, false))), select(countOneBits(vec2<i32>(-6474i, u_input.b)), vec2<i32>(u_input.b, 8570i), vec2<bool>(true, false)), true, u_input.c.x ^ _wgslsmith_mult_u32(4294967295u, arg_0.x))));
    var var_1 = vec4<bool>(any(!vec3<bool>(true, false, var_0.a.c.x == 35678i)), var_0.a.d, all(select(var_0.b.a.b, select(vec3<bool>(var_0.a.b.x, var_0.a.b.x, var_0.b.e.d), var_0.b.a.b, select(vec3<bool>(false, true, true), var_0.b.a.b, var_0.b.a.b)), true | var_0.b.a.b.x)), false);
    var var_2 = -41992i >= (_wgslsmith_mult_i32(~max(u_input.b, 1i), ~u_input.b >> ((arg_0.x & u_input.a) % 32u)) | -2147483647i);
    var var_3 = Struct_3(Struct_2(var_1.zy, vec3<bool>(var_0.b.a.d.d, func_3().x, !(false && var_0.b.e.d)), u_input.c, var_0.a), -2036f, max(4294967295u, arg_0.x & 29124u), vec4<f32>(_wgslsmith_f_op_f32(round(var_0.b.d.x)), var_0.b.d.x, -343f, var_0.b.d.x), var_0.a);
    var_1 = vec4<bool>(var_3.a.d.b.x, true, all(vec3<bool>(false, true, var_1.x)), any(select(var_3.e.b, select(vec2<bool>(false, false), vec2<bool>(var_3.e.d, var_0.a.d), var_0.a.b), any(var_0.b.e.b))));
    return ~arg_0.x;
}

fn func_4(arg_0: u32, arg_1: vec3<bool>) -> Struct_2 {
    let var_0 = Struct_4(Struct_1(~0u, select(!arg_1.yz, arg_1.zx, !arg_1.xy), _wgslsmith_mult_vec2_i32(~vec2<i32>(1i, 1i), _wgslsmith_mod_vec2_i32(vec2<i32>(-2147483647i, -15149i), vec2<i32>(u_input.b, 7024i)) << (abs(vec2<u32>(u_input.c.x, 1u)) % vec2<u32>(32u))), any(arg_1.zz), arg_0), Struct_3(Struct_2(select(vec2<bool>(arg_1.x, false), select(vec2<bool>(true, arg_1.x), arg_1.yz, arg_1.x), arg_1.yx), arg_1, u_input.c, Struct_1(~1u, arg_1.zx, ~vec2<i32>(37225i, u_input.b), true, 1u)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -553f)), _wgslsmith_f_op_f32(round(-1385f))), min(u_input.a, u_input.c.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(313f, 1394f, 1000f, 197f))), Struct_1(firstTrailingBit(_wgslsmith_sub_u32(85029u, u_input.a)), func_3(), ~vec2<i32>(u_input.b, 23268i), arg_1.x, arg_0)));
    let var_1 = var_0.b.d;
    var var_2 = !vec2<bool>(var_0.b.e.b.x, !(_wgslsmith_f_op_f32(trunc(var_0.b.d.x)) >= _wgslsmith_f_op_f32(-var_1.x)));
    return var_0.b.a;
}

fn func_5(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: vec3<f32>) -> Struct_4 {
    let var_0 = func_4(1u ^ _wgslsmith_div_u32(45668u, u_input.a), select(arg_0.b, vec3<bool>(true, arg_0.d.b.x, false), !vec3<bool>(!arg_0.a.x, 515f >= arg_2.x, arg_1.x))).d;
    var var_1 = func_4(0u, !arg_0.b);
    let var_2 = ~reverseBits(~arg_0.c);
    var var_3 = vec2<i32>(-1i) * -vec2<i32>(_wgslsmith_add_i32(arg_0.d.c.x, -1i), u_input.b);
    var_3 = _wgslsmith_mult_vec2_i32(_wgslsmith_mult_vec2_i32(arg_0.d.c, vec2<i32>(-var_0.c.x, -u_input.b) ^ ~reverseBits(var_0.c)), abs(select(-abs(arg_0.d.c), select(abs(vec2<i32>(1931i, -11591i)), _wgslsmith_add_vec2_i32(arg_0.d.c, arg_0.d.c), vec2<bool>(false, true)), all(var_1.d.b))));
    return Struct_4(arg_0.d, Struct_3(arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_2.x)) * _wgslsmith_f_op_f32(f32(-1f) * -189f)), ~(var_0.a & (var_1.c.x & 1u)), vec4<f32>(_wgslsmith_f_op_f32(floor(arg_2.x)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2.x, arg_2.x) - _wgslsmith_f_op_f32(arg_2.x * 434f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(arg_2.x)))), arg_2.x), var_1.d));
}

fn func_6(arg_0: Struct_4, arg_1: i32, arg_2: i32, arg_3: Struct_4) -> vec3<bool> {
    var var_0 = arg_3.b.a.b;
    var_0 = func_4(1u & func_2(vec3<u32>(~arg_0.a.a, arg_3.b.e.a, 37474u << (u_input.a % 32u))), func_5(Struct_2(vec2<bool>(arg_3.a.d, false), vec3<bool>(arg_3.b.a.d.b.x | arg_0.b.a.b.x, any(vec3<bool>(arg_3.b.a.a.x, arg_0.a.d, false)), all(vec2<bool>(false, false))), vec2<u32>(1u >> (arg_0.b.e.a % 32u), ~u_input.c.x), func_4(_wgslsmith_mult_u32(arg_0.a.a, 8877u), vec3<bool>(arg_3.b.e.b.x, true, true)).d), arg_3.b.a.a, _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(arg_0.b.d.xxx, vec3<f32>(-2298f, arg_0.b.d.x, arg_3.b.b), arg_3.b.a.b)))))).b.a.b).b;
    var_0 = select(func_4(4172u, !vec3<bool>(684f != arg_0.b.d.x, false, false)).b, vec3<bool>(true, var_0.x, !all(arg_3.b.e.b)), arg_0.b.a.b);
    let var_1 = ~1u;
    let var_2 = countOneBits(~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 0u, var_1, arg_3.a.a), vec4<u32>(0u, 4294967295u, arg_0.b.c, arg_3.a.e))) << ((_wgslsmith_mult_u32(arg_3.b.c, func_5(func_5(arg_3.b.a, var_0.zz, arg_0.b.d.zzy).b.a, !arg_0.a.b, vec3<f32>(115f, -227f, -225f)).b.a.d.e) << (var_1 % 32u)) % 32u);
    return vec3<bool>(!any(var_0.zz) || true, arg_0.b.a.a.x && (_wgslsmith_f_op_f32(ceil(arg_0.b.b)) != -936f), false);
}

fn func_1(arg_0: i32, arg_1: bool) -> vec4<f32> {
    var var_0 = func_6(func_5(func_4(func_2(vec3<u32>(u_input.c.x, 1u, u_input.c.x)), !select(vec3<bool>(arg_1, true, arg_1), vec3<bool>(true, arg_1, arg_1), vec3<bool>(arg_1, arg_1, false))), vec2<bool>(any(vec4<bool>(arg_1, true, arg_1, arg_1)), arg_1), vec3<f32>(_wgslsmith_f_op_f32(-1460f + _wgslsmith_f_op_f32(548f * 777f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-331f - -978f)), _wgslsmith_f_op_f32(-510f - _wgslsmith_f_op_f32(max(-304f, -1000f))))), -1i, u_input.b | _wgslsmith_mod_i32(u_input.b, -u_input.b), func_5(Struct_2(func_5(Struct_2(vec2<bool>(true, arg_1), vec3<bool>(true, true, false), vec2<u32>(u_input.a, u_input.a), Struct_1(1u, vec2<bool>(true, arg_1), vec2<i32>(15810i, -3080i), false, u_input.a)), !vec2<bool>(arg_1, arg_1), vec3<f32>(-1710f, 316f, 1898f)).a.b, func_5(func_5(Struct_2(vec2<bool>(false, arg_1), vec3<bool>(arg_1, arg_1, arg_1), vec2<u32>(1u, u_input.a), Struct_1(u_input.a, vec2<bool>(false, arg_1), vec2<i32>(-5181i, u_input.b), arg_1, 12326u)), vec2<bool>(true, false), vec3<f32>(1656f, 988f, -531f)).b.a, vec2<bool>(true, true), vec3<f32>(917f, 1114f, -103f)).b.a.b, select(vec2<u32>(32570u, u_input.a), ~vec2<u32>(64203u, 4294967295u), func_5(Struct_2(vec2<bool>(false, arg_1), vec3<bool>(arg_1, arg_1, arg_1), vec2<u32>(64328u, 65394u), Struct_1(0u, vec2<bool>(arg_1, true), vec2<i32>(0i, -2147483647i), false, 1u)), vec2<bool>(arg_1, false), vec3<f32>(185f, -1189f, -733f)).a.b), func_5(func_5(Struct_2(vec2<bool>(true, true), vec3<bool>(true, true, false), u_input.c, Struct_1(u_input.c.x, vec2<bool>(arg_1, arg_1), vec2<i32>(0i, u_input.b), true, 47830u)), vec2<bool>(false, arg_1), vec3<f32>(-1000f, -952f, -316f)).b.a, func_3(), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1037f, -1000f, 2109f))).a), func_4(39499u, !vec3<bool>(arg_1, true, arg_1)).a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 324f, 1695f)))));
    var_0 = select(func_6(Struct_4(Struct_1(_wgslsmith_div_u32(0u, u_input.a), !vec2<bool>(false, arg_1), ~vec2<i32>(-25780i, 11633i), false, _wgslsmith_add_u32(u_input.a, 0u)), Struct_3(Struct_2(var_0.zx, vec3<bool>(arg_1, arg_1, arg_1), u_input.c, Struct_1(35072u, var_0.zz, vec2<i32>(-2147483647i, arg_0), false, u_input.c.x)), 968f, ~13686u, _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-698f, -873f, -2268f, -1577f))), func_5(Struct_2(var_0.yx, vec3<bool>(false, var_0.x, false), u_input.c, Struct_1(u_input.c.x, vec2<bool>(true, arg_1), vec2<i32>(3323i, 1i), var_0.x, 12228u)), vec2<bool>(true, false), vec3<f32>(2308f, 897f, 482f)).a)), firstTrailingBit(_wgslsmith_div_i32(u_input.b, 2147483647i)), 1214i, Struct_4(func_5(func_5(Struct_2(var_0.zx, vec3<bool>(var_0.x, true, true), u_input.c, Struct_1(u_input.c.x, var_0.zz, vec2<i32>(arg_0, -2147483647i), arg_1, 29472u)), vec2<bool>(true, true), vec3<f32>(-537f, -1082f, -775f)).b.a, vec2<bool>(true, true), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1000f, -271f, 420f)))).a, func_5(func_5(Struct_2(vec2<bool>(arg_1, arg_1), vec3<bool>(var_0.x, true, false), u_input.c, Struct_1(2804u, var_0.xx, vec2<i32>(u_input.b, arg_0), var_0.x, u_input.c.x)), var_0.yz, vec3<f32>(2076f, -689f, 1118f)).b.a, var_0.zy, _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-506f, 438f, -616f)))).b)), !func_4(_wgslsmith_dot_vec4_u32(select(vec4<u32>(380u, u_input.a, 4294967295u, u_input.c.x), vec4<u32>(2990u, 0u, u_input.c.x, u_input.a), true), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c.x, 15995u, u_input.c.x, 68851u), vec4<u32>(u_input.c.x, u_input.a, u_input.c.x, u_input.c.x))), vec3<bool>(arg_1, var_0.x, false)).b, !func_4(_wgslsmith_mod_u32(select(4294967295u, u_input.c.x, var_0.x), 4294967295u), vec3<bool>(var_0.x & var_0.x, arg_1, true)).b);
    let var_1 = func_5(Struct_2(func_5(func_4(25328u, func_6(Struct_4(Struct_1(1u, vec2<bool>(arg_1, var_0.x), vec2<i32>(-3844i, 12274i), var_0.x, 27859u), Struct_3(Struct_2(vec2<bool>(true, false), vec3<bool>(arg_1, true, arg_1), vec2<u32>(u_input.c.x, 18281u), Struct_1(u_input.a, var_0.yy, vec2<i32>(-27418i, 67237i), true, 70644u)), 1531f, u_input.a, vec4<f32>(-1692f, -701f, 797f, 1000f), Struct_1(u_input.a, var_0.zx, vec2<i32>(u_input.b, arg_0), false, u_input.a))), arg_0, u_input.b, Struct_4(Struct_1(0u, var_0.yz, vec2<i32>(u_input.b, u_input.b), arg_1, u_input.c.x), Struct_3(Struct_2(vec2<bool>(true, arg_1), vec3<bool>(arg_1, true, var_0.x), u_input.c, Struct_1(u_input.a, var_0.yz, vec2<i32>(-29236i, -47918i), true, u_input.a)), 302f, 1u, vec4<f32>(-1864f, -416f, -556f, -1104f), Struct_1(0u, vec2<bool>(false, var_0.x), vec2<i32>(-29120i, 2147483647i), var_0.x, 1u))))), !func_3(), _wgslsmith_f_op_vec3_f32(-vec3<f32>(798f, -1916f, -1607f))).a.b, vec3<bool>(all(!var_0.yx), false, arg_1), vec2<u32>(~10469u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, u_input.a, 74616u), vec3<u32>(u_input.a, 24027u, 4294967295u))) << (u_input.c % vec2<u32>(32u)), func_4(1u, !(!vec3<bool>(false, true, arg_1))).d), !var_0.yz, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -1668f, 1141f)))))).b;
    var var_2 = var_1.d.xz;
    var var_3 = -3574i << (~(1u >> (_wgslsmith_sub_u32(select(5794u, 4294967295u, true), 1u ^ u_input.c.x) % 32u)) % 32u);
    return _wgslsmith_f_op_vec4_f32(var_1.d + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1125f, var_2.x, var_1.d.x, var_2.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(var_1.d))), select(vec4<bool>(true, var_1.a.d.b.x, arg_1, true), !vec4<bool>(arg_1, var_0.x, true, arg_1), false))) - _wgslsmith_f_op_vec4_f32(sign(var_1.d))));
}

fn func_7(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: i32) -> Struct_2 {
    var var_0 = vec4<f32>(1250f, arg_0.x, -432f, 1f);
    let var_1 = Struct_1(~1u, func_5(func_5(func_5(func_4(u_input.a, vec3<bool>(arg_1.d, arg_1.d, false)), func_4(73494u, vec3<bool>(arg_1.d, true, arg_1.d)).b.yz, var_0.yxw).b.a, arg_1.b, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(var_0.zxz, vec3<f32>(-711f, -688f, arg_0.x))))).b.a, !(!arg_1.b), var_0.zyy).b.a.d.b, _wgslsmith_mod_vec2_i32(arg_1.c, _wgslsmith_clamp_vec2_i32(min(arg_1.c, arg_1.c), ~func_5(Struct_2(vec2<bool>(arg_1.b.x, true), vec3<bool>(arg_1.b.x, arg_1.b.x, true), u_input.c, arg_1), vec2<bool>(arg_1.d, false), var_0.zww).a.c, vec2<i32>(-u_input.b, u_input.b))), !func_4(~u_input.c.x, vec3<bool>(arg_1.d, u_input.b <= arg_2, func_4(arg_1.e, vec3<bool>(true, arg_1.d, false)).a.x)).d.b.x, 4294967295u);
    var var_2 = func_5(func_4(4294967295u, func_5(Struct_2(!vec2<bool>(true, arg_1.b.x), vec3<bool>(true, true, arg_1.d), ~vec2<u32>(u_input.c.x, 4294967295u), func_4(arg_1.e, vec3<bool>(arg_1.d, false, var_1.b.x)).d), vec2<bool>(var_0.x < -2010f, true), _wgslsmith_f_op_vec3_f32(vec3<f32>(-2280f, arg_0.x, 796f) + _wgslsmith_f_op_vec3_f32(-arg_0.xyw))).b.a.b), func_4(~(~9976u), vec3<bool>(arg_1.b.x, true, all(func_5(Struct_2(vec2<bool>(false, var_1.b.x), vec3<bool>(true, false, var_1.b.x), u_input.c, arg_1), arg_1.b, vec3<f32>(arg_0.x, 889f, -1518f)).b.e.b))).a, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(368f, arg_0.x, -1063f), _wgslsmith_f_op_vec3_f32(max(var_0.wyy, vec3<f32>(-1213f, var_0.x, 381f)))))))).b.a;
    var_0 = arg_0;
    let var_3 = vec4<u32>(4294967295u >> (var_2.d.e % 32u), 1u, u_input.a, var_2.c.x) ^ _wgslsmith_mod_vec4_u32(~(~(~vec4<u32>(var_1.e, var_1.e, var_2.d.a, 0u))), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(35631u, u_input.c.x, 53320u, arg_1.a) ^ vec4<u32>(0u, 40353u, var_1.a, arg_1.a), abs(vec4<u32>(52311u, 4294967295u, var_1.e, 0u))), _wgslsmith_sub_u32(~u_input.a, var_2.d.a), _wgslsmith_clamp_u32(abs(var_1.e), u_input.c.x, _wgslsmith_mult_u32(4294967295u, var_1.e)), var_2.c.x));
    return func_5(Struct_2(var_1.b, var_2.b, countOneBits(u_input.c), func_4(var_2.d.a, vec3<bool>(var_2.b.x != arg_1.b.x, arg_1.b.x, var_1.b.x)).d), arg_1.b, _wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_0.x, arg_0.x, 1000f)))).b.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_7(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_1(select(u_input.b, 1i, true), all(vec3<bool>(true, true, false)))))), func_5(func_5(func_4(30180u, func_6(Struct_4(Struct_1(u_input.a, vec2<bool>(true, true), vec2<i32>(u_input.b, 1i), false, 1u), Struct_3(Struct_2(vec2<bool>(false, false), vec3<bool>(true, false, false), u_input.c, Struct_1(u_input.c.x, vec2<bool>(false, true), vec2<i32>(-1i, u_input.b), true, 4294967295u)), -383f, u_input.c.x, vec4<f32>(-846f, 383f, -943f, -332f), Struct_1(27662u, vec2<bool>(false, false), vec2<i32>(1i, 18743i), false, u_input.a))), -4370i, u_input.b, Struct_4(Struct_1(u_input.c.x, vec2<bool>(true, false), vec2<i32>(15004i, 0i), true, u_input.a), Struct_3(Struct_2(vec2<bool>(false, true), vec3<bool>(false, true, false), u_input.c, Struct_1(28954u, vec2<bool>(false, false), vec2<i32>(u_input.b, -22576i), true, u_input.a)), -966f, 4294967295u, vec4<f32>(484f, 1226f, -401f, 689f), Struct_1(u_input.c.x, vec2<bool>(true, false), vec2<i32>(-38705i, 0i), true, u_input.a))))), vec2<bool>(true, true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1998f, -599f, -211f))))).b.a, !(!select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true))), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1349f, -1000f, -2165f)))).a, u_input.b);
    let var_1 = vec2<i32>(-1i, 1i);
    let var_2 = func_5(Struct_2(!(!(!var_0.a)), select(!select(var_0.b, vec3<bool>(var_0.a.x, var_0.b.x, var_0.b.x), vec3<bool>(var_0.b.x, true, var_0.d.d)), var_0.b, !var_0.b.x), ~abs(var_0.c & vec2<u32>(var_0.d.e, var_0.c.x)), func_5(func_5(Struct_2(var_0.d.b, var_0.b, var_0.c, var_0.d), select(var_0.b.xy, var_0.b.xz, false), _wgslsmith_div_vec3_f32(vec3<f32>(1590f, 618f, -784f), vec3<f32>(563f, -1309f, 1000f))).b.a, vec2<bool>(true, !var_0.d.b.x), vec3<f32>(-783f, -2614f, _wgslsmith_f_op_f32(trunc(1000f)))).b.a.d), var_0.a, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2383f - -652f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-324f)) - 279f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(763f + -977f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1569f, 334f, -826f) + vec3<f32>(1000f, 586f, 448f)) * vec3<f32>(-265f, -462f, 622f))))).b.a;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1000f - -116f))));
    var var_4 = func_5(func_5(Struct_2(var_2.d.b, func_7(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1873f, 2556f, -1015f, -585f) * vec4<f32>(-664f, 648f, -226f, 1544f)), func_5(Struct_2(vec2<bool>(false, var_0.b.x), vec3<bool>(false, false, false), var_2.c, Struct_1(var_2.d.a, var_2.b.yy, var_1, true, u_input.a)), vec2<bool>(true, var_0.b.x), vec3<f32>(-1315f, -3151f, -1013f)).b.a.d, _wgslsmith_sub_i32(59845i, -1099i)).b, firstTrailingBit(countOneBits(vec2<u32>(1u, 4294967295u))), Struct_1(u_input.c.x << (1u % 32u), !var_0.d.b, var_2.d.c, true, 0u)), !(!vec2<bool>(false, var_0.d.b.x)), _wgslsmith_f_op_vec4_f32(func_1(_wgslsmith_dot_vec4_i32(-vec4<i32>(var_1.x, 25719i, -1i, var_0.d.c.x), vec4<i32>(-1i, var_0.d.c.x, 46300i, var_1.x)), (var_2.d.c.x > u_input.b) || true)).yxz).b.a, var_0.a, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec4_f32(func_1(var_0.d.c.x, var_0.b.x)).yww) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(238f, 1000f, 728f))))))));
    let var_5 = vec3<f32>(_wgslsmith_f_op_f32(-769f - func_5(var_2, select(func_4(var_4.a.e, vec3<bool>(var_4.a.d, var_4.b.e.b.x, var_0.a.x)).a, vec2<bool>(false, false), select(vec2<bool>(false, var_0.a.x), vec2<bool>(false, false), true)), var_4.b.d.yxz).b.d.x), -923f, _wgslsmith_div_f32(var_4.b.b, _wgslsmith_f_op_f32(f32(-1f) * -196f)));
    let var_6 = func_5(Struct_2(select(select(!vec2<bool>(false, var_2.d.d), func_5(var_4.b.a, var_4.b.a.a, var_5).a.b, vec2<bool>(var_0.a.x, true)), vec2<bool>(all(vec3<bool>(var_0.d.b.x, false, var_2.d.b.x)), var_4.b.a.a.x), var_2.d.b), vec3<bool>(true, select(any(vec2<bool>(true, true)), func_4(29267u, vec3<bool>(var_0.d.b.x, var_2.b.x, var_0.a.x)).a.x, true), true), ~vec2<u32>(8012u ^ var_4.b.e.e, var_4.a.e), var_2.d), func_5(func_5(var_4.b.a, var_2.d.b, vec3<f32>(_wgslsmith_f_op_f32(floor(var_5.x)), _wgslsmith_f_op_f32(step(-509f, -446f)), _wgslsmith_f_op_vec4_f32(func_1(72529i, false)).x)).b.a, func_5(var_4.b.a, !var_0.a, var_4.b.d.zyy).b.e.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-913f, var_4.b.b, 1068f))))).b.e.b, _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(1552f - var_4.b.d.x), _wgslsmith_f_op_f32(-var_4.b.b), _wgslsmith_f_op_f32(735f + 333f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_4.b.b, 1368f, -888f)))) - var_4.b.d.xyx));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(select(firstLeadingBit(vec4<i32>(-15504i, var_4.b.a.d.c.x, var_6.a.c.x, var_1.x)), vec4<i32>(var_6.b.e.c.x, 40785i, 30318i, u_input.b), vec4<bool>(var_0.b.x, true, false, true)), -_wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, var_6.a.c.x, -33209i, var_0.d.c.x), vec4<i32>(2147483647i, var_1.x, u_input.b, -48559i))), firstLeadingBit(-vec4<i32>(-5448i, u_input.b, -2147483647i, -2147483647i))));
}

