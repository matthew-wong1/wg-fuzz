struct Struct_1 {
    a: vec4<f32>,
    b: bool,
    c: i32,
    d: i32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: bool,
    d: vec2<bool>,
    e: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: vec4<u32>,
}

struct Struct_4 {
    a: u32,
    b: vec2<bool>,
    c: vec2<u32>,
    d: u32,
    e: vec4<bool>,
}

struct Struct_5 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2) -> i32 {
    var var_0 = Struct_2(u_input.a.zy, Struct_1(vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_1.b.a.x * -1064f))), arg_1.b.a.x, -422f, arg_0.a.x), false, firstTrailingBit(u_input.c), u_input.c), true, !(!(!select(arg_1.d, arg_1.d, arg_1.d))), u_input.c);
    let var_1 = var_0.b;
    var_0 = arg_1;
    var_0 = Struct_2(var_0.a, arg_1.b, false, vec2<bool>(!all(select(vec4<bool>(true, var_0.b.b, true, var_0.d.x), vec4<bool>(var_0.b.b, true, arg_0.b, var_1.b), false)), !(!(!var_1.b))), -(~1i));
    let var_2 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(select(-2148f, arg_1.b.a.x, true)), 114f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(-1759f, _wgslsmith_f_op_f32(sign(1229f)))), _wgslsmith_f_op_f32(-673f - 1351f), !(var_0.b.b && false))), 873f), !(!(var_0.c && false)) || false, i32(-1i) * -abs(1i), ~select(-15694i, -22805i & _wgslsmith_dot_vec3_i32(vec3<i32>(0i, 0i, -1i), vec3<i32>(32031i, -5181i, -43686i)), true));
    return arg_0.d;
}

fn func_4(arg_0: i32, arg_1: f32, arg_2: vec4<u32>, arg_3: vec2<i32>) -> f32 {
    let var_0 = _wgslsmith_clamp_vec4_u32(arg_2, arg_2, firstLeadingBit(abs(reverseBits(_wgslsmith_sub_vec4_u32(arg_2, arg_2)))));
    var var_1 = ~_wgslsmith_sub_i32(u_input.c, 22869i);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1000f))));
}

fn func_2(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: vec2<f32>) -> f32 {
    let var_0 = _wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.e, u_input.c), -(vec2<i32>(countOneBits(-10260i), firstLeadingBit(-1i)) ^ vec2<i32>(-2147483647i, arg_0.b.c >> (14886u % 32u))));
    var var_1 = arg_0.b.a;
    let var_2 = 0i;
    var var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(699f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(649f, 1447f))), 1374f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -899f) * _wgslsmith_f_op_f32(-arg_2.x))))));
    let var_4 = -min(-(~firstTrailingBit(var_0)), firstTrailingBit(_wgslsmith_mod_i32(_wgslsmith_add_i32(var_0, -2147483647i), 11581i)));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_4(firstTrailingBit(-2147483647i), _wgslsmith_f_op_f32(f32(-1f) * -2159f), ~firstLeadingBit(~vec4<u32>(arg_0.a.x, u_input.b.x, arg_0.a.x, u_input.b.x)), vec2<i32>(firstLeadingBit(var_2) >> (33867u % 32u), _wgslsmith_add_i32(var_2, func_3(arg_0.b, Struct_2(arg_0.a, Struct_1(vec4<f32>(arg_0.b.a.x, arg_1.x, arg_0.b.a.x, arg_2.x), false, 35744i, u_input.c), true, vec2<bool>(false, arg_0.b.b), -38449i)))))), arg_1.x);
}

fn func_1(arg_0: vec2<u32>, arg_1: bool, arg_2: vec4<i32>, arg_3: vec4<i32>) -> vec2<bool> {
    let var_0 = _wgslsmith_clamp_i32(14426i, -9156i, -41796i);
    var var_1 = !vec4<bool>(30440u >= arg_0.x, arg_1, false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-194f)) + _wgslsmith_f_op_f32(-1000f - 1737f)) == _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(933f)), _wgslsmith_div_f32(868f, -132f)));
    var var_2 = Struct_5(Struct_2(vec2<u32>(abs(arg_0.x), min(arg_0.x, u_input.b.x)), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -736f), _wgslsmith_f_op_f32(func_2(Struct_2(vec2<u32>(u_input.b.x, 0u), Struct_1(vec4<f32>(1593f, 962f, 1834f, 174f), arg_1, var_0, 13521i), false, var_1.yw, 2087i), vec4<f32>(-355f, -779f, -586f, 219f), vec2<f32>(814f, -170f))), 1975f, -1056f), false, arg_2.x, u_input.c), firstTrailingBit(~39559i) >= var_0, vec2<bool>(arg_1, true), _wgslsmith_div_i32(arg_2.x >> (73074u % 32u), _wgslsmith_mult_i32(16309i | arg_2.x, i32(-1i) * -9449i))));
    let var_3 = vec3<i32>(-1i) * -_wgslsmith_mult_vec3_i32(vec3<i32>(arg_2.x, countOneBits(arg_2.x), countOneBits(var_0)), ~_wgslsmith_div_vec3_i32(vec3<i32>(arg_3.x, 34405i, u_input.c), arg_2.wxy));
    var var_4 = Struct_4(~45328u, var_1.yy, _wgslsmith_clamp_vec2_u32(~(vec2<u32>(87848u, var_2.a.a.x) ^ arg_0), firstLeadingBit(vec2<u32>(var_2.a.a.x, 11322u) ^ ~vec2<u32>(4294967295u, arg_0.x)), ~(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a.x, u_input.b.x), vec2<u32>(30800u, u_input.b.x)) & _wgslsmith_mod_vec2_u32(vec2<u32>(arg_0.x, var_2.a.a.x), var_2.a.a))), ~72762u, select(!(!vec4<bool>(false, true, false, arg_1)), vec4<bool>(all(var_2.a.d) & (var_2.a.a.x > 1u), (38353u >> (1u % 32u)) > u_input.a.x, true, select(var_2.a.b.b, !var_1.x, true || arg_1)), any(vec4<bool>(true, true, true, true))));
    return var_1.xz;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<bool>(all(select(vec2<bool>(true, true), vec2<bool>(all(vec3<bool>(true, false, false)), true), func_1(vec2<u32>(1u, 124317u), true, vec4<i32>(u_input.c, u_input.c, u_input.c, u_input.c), ~vec4<i32>(-1i, 29195i, u_input.c, 41922i)))), true, true);
    let var_1 = vec4<u32>(abs(~1u), u_input.b.x, ~u_input.b.x, 1u) ^ _wgslsmith_sub_vec4_u32(select(vec4<u32>(min(u_input.a.x, u_input.b.x), ~0u, ~u_input.b.x, _wgslsmith_mult_u32(53840u, 1u)), ~vec4<u32>(u_input.b.x, u_input.b.x, 7561u, u_input.b.x), select(select(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(false, true, var_0.x, false), true), !vec4<bool>(true, var_0.x, false, var_0.x), any(var_0))), vec4<u32>((u_input.a.x | 9759u) << (0u % 32u), u_input.b.x >> (~u_input.a.x % 32u), 10985u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 0u), u_input.b.xz) | u_input.b.x));
    let var_2 = _wgslsmith_sub_i32(_wgslsmith_sub_i32(~_wgslsmith_dot_vec2_i32(vec2<i32>(0i, -1i), vec2<i32>(u_input.c, u_input.c)), ~(~(-27323i))), u_input.c) ^ -21172i;
    let var_3 = var_2;
    var var_4 = !all(!select(var_0.zz, !var_0.yy, vec2<bool>(true, var_0.x)));
    var var_5 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -166f))))), _wgslsmith_f_op_f32(func_2(Struct_2(vec2<u32>(27312u, u_input.b.x) ^ u_input.b.xy, Struct_1(vec4<f32>(830f, -327f, -1729f, -1869f), var_0.x, var_3, -1i), false, vec2<bool>(true, true), 1i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(750f, -160f, 559f, -1107f)))), vec2<f32>(_wgslsmith_f_op_f32(sign(370f)), _wgslsmith_f_op_f32(1335f - 206f))))), -1207f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1000f, var_5.x))), _wgslsmith_f_op_f32(-var_5.x)), vec2<u32>(~_wgslsmith_add_u32(1u, ~8528u), 1u));
}

