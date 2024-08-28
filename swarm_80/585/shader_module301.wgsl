struct Struct_1 {
    a: f32,
    b: vec3<u32>,
    c: bool,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: vec2<i32>,
    d: vec2<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3() -> bool {
    let var_0 = 10391i;
    let var_1 = select(~(~vec3<i32>(i32(-1i) * -2147483647i, var_0, _wgslsmith_dot_vec2_i32(vec2<i32>(8888i, u_input.c), vec2<i32>(12649i, 11693i)))), ~vec3<i32>(0i, -(u_input.c << (4294967295u % 32u)), -25741i), select(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), 0i <= var_0), vec3<bool>(true, true, true), vec3<bool>(true, true, true)));
    let var_2 = Struct_2(-var_0 <= var_1.x);
    let var_3 = ~var_1;
    let var_4 = var_2;
    return var_3.x == _wgslsmith_add_i32(countOneBits(_wgslsmith_clamp_i32(max(0i, var_3.x), -41899i, var_0)), var_3.x);
}

fn func_4(arg_0: bool, arg_1: vec2<f32>) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1519f);
    let var_1 = vec4<f32>(var_0, 394f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-arg_1.x))) + var_0)), _wgslsmith_f_op_f32(arg_1.x * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(round(var_0)))));
    let var_2 = arg_0;
    var var_3 = u_input.a.zx;
    var_3 = ~(~max(u_input.a.zw, vec2<u32>(9987u, 13285u) << (u_input.a.zy % vec2<u32>(32u))) & vec2<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(1u, u_input.d, 9896u), u_input.a.zwy), var_3.x));
    return -447f;
}

fn func_2(arg_0: u32, arg_1: vec4<u32>, arg_2: f32) -> f32 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(func_3(), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2, arg_2) + vec2<f32>(arg_2, 1000f)))))), ~(~u_input.a.zxz) | arg_1.wxw, select(!(1362f >= arg_2), all(vec2<bool>(false, true)), !all(select(vec2<bool>(true, false), vec2<bool>(true, true), true))));
    let var_1 = vec4<i32>(_wgslsmith_mod_i32(u_input.c, -1i), u_input.b, countOneBits(firstLeadingBit(u_input.c)), _wgslsmith_mult_i32(select(min(u_input.c ^ u_input.b, countOneBits(u_input.c)), _wgslsmith_dot_vec2_i32(reverseBits(vec2<i32>(-27776i, 1i)), ~vec2<i32>(u_input.b, -2147483647i)), false), u_input.b));
    var_0 = Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_2)) + -213f), 514f))), firstLeadingBit(_wgslsmith_mult_vec3_u32(~firstTrailingBit(var_0.b), _wgslsmith_mod_vec3_u32(~u_input.a.xyy, vec3<u32>(arg_1.x, arg_1.x, 8337u) ^ arg_1.wxx))), !(!var_0.c) || func_3());
    var var_2 = Struct_2(!func_3());
    var_0 = Struct_1(-1363f, vec3<u32>(u_input.a.x, 0u, _wgslsmith_mod_u32(~(~var_0.b.x), select(var_0.b.x, u_input.a.x, var_2.a))), !var_2.a);
    return _wgslsmith_f_op_f32(abs(var_0.a));
}

fn func_5(arg_0: f32, arg_1: Struct_1, arg_2: Struct_2) -> f32 {
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(-500f))));
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-588f, -474f, true)) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(486f, -104f)), _wgslsmith_f_op_f32(ceil(-525f))))) * -118f) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(49084u, u_input.a, -780f))), Struct_1(818f, u_input.a.wxy, all(vec2<bool>(true, true))), Struct_2(false))));
    var_0 = false;
    var var_1 = Struct_2(true && all(vec2<bool>(true, true)));
    var_0 = var_1.a;
    var var_2 = select(~vec4<i32>(-firstLeadingBit(7036i), ~(~u_input.b), 0i, -2147483647i), -reverseBits(~firstLeadingBit(vec4<i32>(36703i, u_input.c, u_input.c, u_input.c))), !vec4<bool>(true, false, var_1.a, var_1.a));
    return Struct_1(-2232f, u_input.a.zyy, 12213i >= abs(-firstTrailingBit(var_2.x)));
}

fn func_6(arg_0: Struct_1, arg_1: f32, arg_2: u32) -> Struct_2 {
    let var_0 = Struct_2(all(select(vec2<bool>(true, func_3()), vec2<bool>(arg_0.c, !arg_0.c), all(vec3<bool>(false, arg_0.c, arg_0.c)))));
    return Struct_2(arg_0.c & arg_0.c);
}

fn func_7(arg_0: Struct_3, arg_1: u32, arg_2: vec4<i32>, arg_3: u32) -> bool {
    var var_0 = func_1();
    var_0 = func_1();
    var_0 = Struct_1(_wgslsmith_f_op_f32(900f - -1656f), firstLeadingBit(vec3<u32>(select(firstLeadingBit(u_input.d), 72931u, any(vec2<bool>(true, false))), arg_3, _wgslsmith_clamp_u32(arg_3, ~0u, _wgslsmith_clamp_u32(4895u, 1u, 75825u)))), true);
    var var_1 = select(select(vec3<bool>(true, true, var_0.c), !select(!vec3<bool>(true, var_0.c, true), select(vec3<bool>(true, false, var_0.c), vec3<bool>(var_0.c, true, var_0.c), arg_0.b.a), vec3<bool>(true, true, true)), false), vec3<bool>(false, all(vec2<bool>(true, true)) | func_1().c, true), !(!(!vec3<bool>(var_0.c, arg_0.b.a, false))));
    var_1 = select(!select(select(vec3<bool>(var_0.c, var_1.x, var_0.c), !vec3<bool>(var_0.c, true, false), select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, true, var_1.x))), !select(vec3<bool>(false, arg_0.b.a, false), vec3<bool>(var_1.x, var_1.x, false), false), arg_2.x <= 13666i), select(!select(!vec3<bool>(false, arg_0.b.a, true), select(vec3<bool>(var_0.c, true, arg_0.b.a), vec3<bool>(false, var_0.c, arg_0.b.a), false), true), select(vec3<bool>(var_0.b.x != arg_1, true, arg_0.b.a), select(vec3<bool>(true, true, false), select(vec3<bool>(var_0.c, arg_0.b.a, true), vec3<bool>(false, arg_0.b.a, true), true), !var_1.x), var_0.c), func_3()), func_1().c);
    return arg_1 != _wgslsmith_add_u32(~(~u_input.d << (arg_1 % 32u)), 4294967295u);
}

fn func_8(arg_0: bool, arg_1: vec4<u32>) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(sign(283f)), 102f, -289f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-558f, -1275f, 1252f), vec3<f32>(-1690f, -703f, -514f), arg_0)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(594f, 1374f, -812f) * vec3<f32>(-1217f, 745f, 1089f))))));
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(492f * var_0.x), _wgslsmith_f_op_f32(f32(-1f) * -1941f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(387f)), _wgslsmith_f_op_f32(1405f + -1102f))) * _wgslsmith_div_f32(var_0.x, 149f))));
    let var_1 = ~(~vec4<u32>(_wgslsmith_add_u32(~u_input.d, arg_1.x), arg_1.x, max(18176u << (u_input.a.x % 32u), reverseBits(arg_1.x)), _wgslsmith_mod_u32(u_input.a.x, 1u)));
    var var_2 = Struct_2(arg_0);
    let var_3 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1228f))), arg_1.wyz, true);
    return func_6(var_3, _wgslsmith_div_f32(-536f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(937f)))), 0u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -46058i;
    var_0 = u_input.b;
    var_0 = u_input.b ^ ~(-25012i);
    var_0 = _wgslsmith_add_i32(i32(-1i) * -38151i, u_input.c);
    var var_1 = func_8(func_7(Struct_3(u_input.b, func_6(func_1(), -1849f, 1u), select(vec3<i32>(-1i, 1i, 2147483647i) & vec3<i32>(u_input.b, -1i, 1i), firstLeadingBit(vec3<i32>(16589i, u_input.b, 9782i)), select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), true))), _wgslsmith_sub_u32(~func_1().b.x, 19509u), vec4<i32>(u_input.b, _wgslsmith_dot_vec3_i32(vec3<i32>(9260i, -1i, -40273i), select(vec3<i32>(64740i, u_input.c, u_input.b), vec3<i32>(u_input.b, u_input.b, u_input.c), true)), ~u_input.b, u_input.b), ~4294967295u), u_input.a);
    var_0 = -u_input.b;
    var_0 = -_wgslsmith_clamp_i32(_wgslsmith_mod_i32(0i, countOneBits(u_input.c)), u_input.b, ~u_input.b);
    var var_2 = vec3<bool>(true, true, true);
    var var_3 = Struct_2(~(-5597i) == u_input.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-vec3<f32>(383f, _wgslsmith_f_op_f32(func_4(!var_2.x, _wgslsmith_f_op_vec2_f32(-vec2<f32>(514f, -396f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1057f)) * 447f))), ~_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(1i, -20487i, 2147483647i, -65378i), vec4<i32>(-2147483647i, u_input.b, u_input.b, 1i)), vec4<i32>(29i, u_input.b, 0i, u_input.c) >> (vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 36805u) % vec4<u32>(32u))), vec4<i32>(_wgslsmith_div_i32(u_input.c, u_input.b), u_input.c, u_input.b, _wgslsmith_div_i32(3918i, u_input.c))), ~(~reverseBits(_wgslsmith_clamp_vec2_i32(vec2<i32>(-21558i, u_input.c), vec2<i32>(u_input.b, -25242i), vec2<i32>(u_input.c, u_input.c)))), vec2<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1225f + 247f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(2092f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(727f + -880f) - -390f) - _wgslsmith_f_op_f32(select(894f, -1791f, !var_2.x))) * _wgslsmith_f_op_f32(step(1320f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_2(67866u, vec4<u32>(u_input.d, u_input.a.x, u_input.a.x, u_input.d), -615f))))))));
}

