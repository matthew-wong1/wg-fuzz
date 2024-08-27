struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec2<u32>,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_1, arg_3: Struct_1) -> bool {
    var var_0 = _wgslsmith_div_f32(arg_3.a.x, arg_1.a.a.x);
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.a.x))) * 538f);
    var var_1 = firstTrailingBit(u_input.c | u_input.c);
    let var_2 = _wgslsmith_mod_vec4_i32(select(_wgslsmith_mod_vec4_i32(vec4<i32>(-43320i, u_input.e, 12748i, var_1.x) >> (vec4<u32>(4294967295u, u_input.a, u_input.a, u_input.a) % vec4<u32>(32u)), reverseBits(vec4<i32>(var_1.x, u_input.e, var_1.x, 13828i))), abs(reverseBits(vec4<i32>(var_1.x, 1i, -1i, 27417i))), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false), true), vec4<bool>(true, true, true, true))), abs(-vec4<i32>(1i, u_input.b, -1i, u_input.b)) ^ countOneBits(-vec4<i32>(u_input.e, -2147483647i, var_1.x, 1i))) << (vec4<u32>(firstLeadingBit(u_input.a) << (firstLeadingBit(~657u) % 32u), abs(_wgslsmith_mult_u32(firstTrailingBit(u_input.a), u_input.a)), _wgslsmith_add_u32(1u, 9496u), u_input.a) % vec4<u32>(32u));
    var var_3 = arg_0;
    return (-select(-var_2.x, u_input.b | var_2.x, any(vec4<bool>(true, false, false, false))) | var_1.x) <= max((_wgslsmith_mod_i32(0i, var_1.x) >> (1u % 32u)) | _wgslsmith_div_i32(_wgslsmith_add_i32(u_input.d.x, var_2.x), var_2.x), 0i);
}

fn func_2(arg_0: vec4<f32>, arg_1: vec4<bool>, arg_2: Struct_2) -> vec2<i32> {
    var var_0 = _wgslsmith_f_op_f32(step(arg_2.a.a.x, -1496f));
    var var_1 = arg_2;
    let var_2 = !vec3<bool>(true, !(reverseBits(u_input.a) == u_input.a), func_3(Struct_2(arg_2.a), Struct_2(Struct_1(vec2<f32>(arg_2.a.a.x, arg_2.a.a.x))), Struct_1(arg_0.zx), Struct_1(arg_0.yx)));
    let var_3 = !(!select(!select(arg_1, vec4<bool>(false, var_2.x, false, true), vec4<bool>(arg_1.x, var_2.x, arg_1.x, false)), arg_1, select(select(arg_1, arg_1, arg_1), vec4<bool>(true, true, arg_1.x, false), !arg_1)));
    let var_4 = Struct_3(_wgslsmith_mod_i32(1i, -u_input.b), vec2<u32>(_wgslsmith_sub_u32(13066u, ~u_input.a), _wgslsmith_clamp_u32(59521u, ~35485u, select(~u_input.a, ~u_input.a, var_2.x))), u_input.d.x);
    return vec2<i32>(u_input.d.x, u_input.b);
}

fn func_1(arg_0: Struct_2, arg_1: u32, arg_2: i32) -> Struct_3 {
    let var_0 = vec4<i32>(_wgslsmith_dot_vec2_i32(u_input.c.yy, func_2(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1000f, arg_0.a.a.x, -1618f, arg_0.a.a.x))))), !select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true)), arg_0)), u_input.e, min(func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a.a.x, -501f, -524f, -1201f)), vec4<bool>(false, false, false, true), arg_0).x, 11017i) >> (~(~min(1u, u_input.a)) % 32u), ~select(min(max(3620i, -63368i), _wgslsmith_mult_i32(u_input.d.x, u_input.c.x)), abs(-1i), select(true, all(vec2<bool>(false, false)), arg_1 <= u_input.a)));
    let var_1 = arg_0.a;
    var var_2 = ~(~(vec2<u32>(~0u, countOneBits(u_input.a)) << (vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(37165u, u_input.a, u_input.a, 4294967295u), vec4<u32>(1u, 0u, u_input.a, arg_1)), 4294967295u) % vec2<u32>(32u))));
    let var_3 = _wgslsmith_mult_vec4_u32(countOneBits(~(~abs(vec4<u32>(var_2.x, u_input.a, arg_1, 1u)))), vec4<u32>(firstLeadingBit(abs(arg_1)), ~1u, ~u_input.a, 72426u));
    var var_4 = _wgslsmith_add_vec2_i32(var_0.zy, _wgslsmith_clamp_vec2_i32(var_0.zw | vec2<i32>(-1i, var_0.x), _wgslsmith_sub_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(-33406i, u_input.b), vec2<i32>(arg_2, -65274i)), abs(var_0.zy)), abs(reverseBits(vec2<i32>(arg_2, 2147483647i))))) << (var_3.zx % vec2<u32>(32u));
    return Struct_3(var_0.x, vec2<u32>(~_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(var_3.yzz, vec3<u32>(var_3.x, 1u, u_input.a)), _wgslsmith_dot_vec2_u32(var_3.yz, vec2<u32>(arg_1, u_input.a))), 24152u), 0i << (_wgslsmith_dot_vec2_u32(select(var_3.zx, vec2<u32>(61247u, u_input.a), vec2<bool>(false, false)), vec2<u32>(~28966u, 80561u)) % 32u));
}

fn func_4(arg_0: Struct_3, arg_1: vec2<u32>) -> vec4<f32> {
    var var_0 = !select(select(vec3<bool>(false, any(vec2<bool>(false, false)), true), !select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true)), func_3(Struct_2(Struct_1(vec2<f32>(431f, 1000f))), Struct_2(Struct_1(vec2<f32>(1111f, -1782f))), Struct_1(vec2<f32>(275f, 952f)), Struct_1(vec2<f32>(-226f, -764f)))), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, false)), select(vec3<bool>(true, all(vec4<bool>(true, false, false, true)), true), vec3<bool>(true, true, true), true));
    var var_1 = !var_0.yy;
    var var_2 = 1263f;
    var_2 = 725f;
    var_2 = _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(222f - 297f), _wgslsmith_f_op_f32(select(-489f, -1248f, true)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1000f - -1595f))), false)), 1000f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(218f - -519f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(727f))) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(-790f, -237f)), _wgslsmith_f_op_f32(-1625f + 1188f)))))));
    return _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1071f, _wgslsmith_f_op_f32(1473f * _wgslsmith_f_op_f32(min(487f, -1023f))), _wgslsmith_f_op_f32(ceil(321f)), _wgslsmith_f_op_f32(f32(-1f) * -1268f)))));
}

fn func_5(arg_0: vec4<f32>, arg_1: vec2<i32>) -> vec2<i32> {
    let var_0 = _wgslsmith_sub_u32(~(~select(u_input.a, 6598u, true)), ~(~12482u)) ^ _wgslsmith_mult_u32(4294967295u, u_input.a);
    var var_1 = ~(~vec2<u32>(0u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 4294967295u, var_0, var_0), vec4<u32>(1u, var_0, var_0, var_0)))) ^ ~(~min(vec2<u32>(var_0, 22722u), vec2<u32>(u_input.a, 0u)) | ~countOneBits(vec2<u32>(1251u, 0u)));
    var_1 = min(_wgslsmith_add_vec2_u32(firstLeadingBit(~vec2<u32>(u_input.a, var_1.x)), func_1(Struct_2(Struct_1(arg_0.wz)), _wgslsmith_add_u32(33710u, u_input.a), 27757i).b), vec2<u32>(u_input.a, ~u_input.a) | abs(~vec2<u32>(1u, 18987u))) >> (vec2<u32>(var_1.x, _wgslsmith_sub_u32(~59878u | _wgslsmith_div_u32(var_1.x, 17483u), var_0)) % vec2<u32>(32u));
    var_1 = ~func_1(Struct_2(Struct_1(vec2<f32>(2171f, -595f))), _wgslsmith_sub_u32(26512u, min(min(u_input.a, u_input.a), ~14207u)), 27242i).b;
    let var_2 = Struct_3(-1i, select(~firstLeadingBit(vec2<u32>(17380u, 1u)), ~(~vec2<u32>(var_1.x, u_input.a)), !all(vec4<bool>(false, true, false, true))) << ((~select(vec2<u32>(u_input.a, 1u), vec2<u32>(var_1.x, 34359u), true) & vec2<u32>(4294967295u >> (var_1.x % 32u), var_1.x ^ var_1.x)) % vec2<u32>(32u)), arg_1.x);
    return ~vec2<i32>(u_input.d.x, _wgslsmith_mult_i32(~1i, 1i));
}

fn func_6(arg_0: vec2<i32>) -> Struct_3 {
    let var_0 = vec2<u32>(_wgslsmith_mult_u32(u_input.a, ~_wgslsmith_mult_u32(u_input.a, ~u_input.a)), abs(1u));
    let var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(149f, 150f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 804f)) - vec2<f32>(-520f, -335f))))));
    var var_2 = Struct_3(2147483647i, ~(~_wgslsmith_mod_vec2_u32(func_1(Struct_2(Struct_1(var_1.a.a)), 2167u, 9662i).b, var_0)), 0i);
    var_2 = Struct_3(max(_wgslsmith_clamp_i32(i32(-1i) * -u_input.d.x, arg_0.x, -2147483647i), var_2.c), ~(var_2.b | ~_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, 55001u), var_2.b)), 1i);
    var var_3 = _wgslsmith_div_u32(u_input.a, ~0u);
    return Struct_3(_wgslsmith_mult_i32(var_2.c | _wgslsmith_mult_i32(u_input.b ^ -39671i, var_2.c), -2147483647i), vec2<u32>(60895u, reverseBits(var_0.x) | ~(~var_0.x)), var_2.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(func_5(_wgslsmith_f_op_vec4_f32(func_4(func_1(Struct_2(Struct_1(vec2<f32>(-1740f, 1054f))), ~u_input.a, select(0i, u_input.b, false)), ~min(vec2<u32>(u_input.a, 0u), vec2<u32>(u_input.a, 0u)))), max(vec2<i32>(u_input.b ^ 1i, _wgslsmith_mod_i32(u_input.e, u_input.e)), vec2<i32>(u_input.b, 1i))));
    let var_1 = Struct_2(Struct_1(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(831f * -1554f), -474f), _wgslsmith_f_op_f32(-361f * -1710f))));
    let var_2 = 53168i;
    let var_3 = var_1;
    let var_4 = func_6(-u_input.c.yz);
    let var_5 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, var_1.a.a.x, 1000f)), vec3<f32>(2412f, var_3.a.a.x, var_3.a.a.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(380f, var_1.a.a.x, -927f))) + _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_1.a.a.x, -1119f, -2590f))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_1.a.a.x))), _wgslsmith_f_op_f32(-var_1.a.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1062f - -1627f))), vec3<bool>(all(select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false), false)), true, _wgslsmith_f_op_f32(f32(-1f) * -132f) > var_3.a.a.x)))));
    var var_6 = var_1;
    let var_7 = _wgslsmith_f_op_f32(-2001f - _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_div_f32(1745f, var_5.x), var_6.a.a.x))));
    var_6 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(856f * _wgslsmith_f_op_f32(round(-325f))), var_3.a.a.x, abs(0u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(1000f, var_1.a.a.x)), _wgslsmith_f_op_f32(-var_3.a.a.x), false)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1544f))))));
}

