struct Struct_1 {
    a: f32,
    b: vec3<bool>,
    c: bool,
    d: f32,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2(arg_0: Struct_1) -> f32 {
    var var_0 = !select(vec3<bool>(true, !(!arg_0.e), true), select(arg_0.b, arg_0.b, arg_0.b), true);
    var_0 = arg_0.b;
    var var_1 = vec4<bool>(!all(vec4<bool>(true, false, true, all(arg_0.b))), any(vec2<bool>(!arg_0.b.x, true)), any(select(select(vec4<bool>(true, false, true, var_0.x), vec4<bool>(true, var_0.x, arg_0.c, arg_0.b.x), all(vec3<bool>(arg_0.e, var_0.x, false))), !vec4<bool>(var_0.x, arg_0.e, var_0.x, arg_0.e), select(select(vec4<bool>(arg_0.e, true, true, arg_0.c), vec4<bool>(var_0.x, var_0.x, false, arg_0.b.x), vec4<bool>(arg_0.c, arg_0.b.x, true, true)), !vec4<bool>(true, arg_0.c, false, false), true))), false);
    let var_2 = u_input.b;
    let var_3 = _wgslsmith_f_op_f32(787f * -856f);
    return 614f;
}

fn func_3(arg_0: bool, arg_1: bool, arg_2: Struct_2) -> f32 {
    var var_0 = ~30849u;
    let var_1 = Struct_2(arg_2.a, vec4<i32>(1i, -firstTrailingBit(_wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(12098i, 1i, arg_2.b.x))), ~(~(~2147483647i)), -_wgslsmith_div_i32(_wgslsmith_mult_i32(u_input.a.x, 0i), 1i)), Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2.a.d), arg_2.c.d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.a.d * arg_2.a.d)))), vec3<bool>(false, true, true), true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-208f, arg_2.c.a)) - -1000f) * -663f), arg_2.c.e));
    var_0 = 27675u;
    var_0 = ~(select(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(1u, 1u)), 1u, arg_0) & 1u);
    let var_2 = !select(!select(!vec3<bool>(arg_1, var_1.c.c, var_1.a.e), !arg_2.c.b, vec3<bool>(var_1.a.b.x, true, var_1.a.e)), vec3<bool>(arg_2.a.b.x, var_1.c.e, true), !(arg_2.c.e && true));
    return _wgslsmith_f_op_f32(select(1140f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(var_1.a.d, -106f), _wgslsmith_f_op_f32(abs(-1000f))))), arg_0));
}

fn func_1(arg_0: vec4<u32>) -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(128f)), 1067f, true)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(Struct_1(148f, vec3<bool>(false, false, true), true, 200f, true))) * -938f))));
    var var_1 = u_input.a.xx;
    let var_2 = Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_f32(func_3(true, true, Struct_2(Struct_1(var_0, vec3<bool>(false, false, true), true, -1102f, false), vec4<i32>(var_1.x, 1i, -2147483647i, 2147483647i), Struct_1(123f, vec3<bool>(false, false, true), false, var_0, true)))), vec3<bool>(true, any(vec2<bool>(false, true)), any(vec3<bool>(false, true, false))), true, _wgslsmith_f_op_f32(-433f + var_0), true), -select(~vec4<i32>(u_input.b, var_1.x, u_input.b, 1i), firstLeadingBit(vec4<i32>(u_input.a.x, 53507i, 0i, u_input.a.x)), vec4<bool>(true, false, true, false)), Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(var_0)))), select(select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), false), vec3<bool>(true, true, true), vec3<bool>(false, false, false)), all(vec4<bool>(true, true, true, true)), var_0, all(vec3<bool>(true, false, true)) & (var_0 == 1000f))), Struct_1(-481f, vec3<bool>(-962f >= _wgslsmith_f_op_f32(sign(var_0)), all(select(vec2<bool>(true, false), vec2<bool>(true, false), true)), any(vec4<bool>(true, true, false, false))), true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(1854f)), var_0, true)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0))), var_0 >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-516f)))), -_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, -2147483647i, u_input.d.x), reverseBits(u_input.a)), -28990i | u_input.d.x));
    var var_3 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1081f, 1048f) - vec2<f32>(-932f, var_2.a.c.a)) - _wgslsmith_div_vec2_f32(vec2<f32>(412f, 1097f), vec2<f32>(404f, var_0))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-566f, -1058f)))), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(642f * -206f)), _wgslsmith_f_op_f32(-var_0))))));
    var var_4 = _wgslsmith_mod_u32(_wgslsmith_clamp_u32(~(~_wgslsmith_sub_u32(arg_0.x, 4252u)), 107499u, _wgslsmith_sub_u32(arg_0.x, _wgslsmith_mod_u32(~arg_0.x, _wgslsmith_add_u32(arg_0.x, 16691u)))), 1u);
    return !select(select(select(select(var_2.a.a.b.zz, vec2<bool>(true, var_2.b.b.x), true), vec2<bool>(var_2.b.c, false), var_2.c > -1i), vec2<bool>(all(vec3<bool>(var_2.b.c, true, var_2.a.c.b.x)), var_2.a.a.c & false), true), !(!select(var_2.b.b.yy, var_2.a.c.b.yy, var_2.a.a.b.x)), false);
}

fn func_4(arg_0: vec2<bool>, arg_1: vec2<bool>, arg_2: vec2<u32>, arg_3: vec2<f32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(func_2(Struct_1(_wgslsmith_f_op_f32(-364f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.x + arg_3.x))), vec3<bool>(true, false, arg_2.x < arg_2.x), any(select(select(vec4<bool>(true, true, arg_1.x, true), vec4<bool>(arg_1.x, arg_1.x, true, true), vec4<bool>(arg_1.x, false, false, arg_0.x)), select(vec4<bool>(true, arg_0.x, arg_0.x, true), vec4<bool>(false, false, true, false), vec4<bool>(true, arg_0.x, arg_1.x, arg_0.x)), select(vec4<bool>(arg_1.x, arg_1.x, false, arg_1.x), vec4<bool>(false, false, true, arg_0.x), vec4<bool>(true, arg_1.x, arg_1.x, arg_0.x)))), arg_3.x, false)));
    var_0 = _wgslsmith_f_op_f32(func_3(!arg_0.x, arg_0.x, Struct_2(Struct_1(_wgslsmith_f_op_f32(-arg_3.x), !select(vec3<bool>(true, true, arg_0.x), vec3<bool>(arg_0.x, true, arg_0.x), vec3<bool>(false, true, arg_1.x)), _wgslsmith_f_op_f32(f32(-1f) * -597f) >= _wgslsmith_f_op_f32(-624f - arg_3.x), _wgslsmith_f_op_f32(1228f - 1468f), true), -vec4<i32>(0i, countOneBits(u_input.c), u_input.c, 27642i), Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_3.x * arg_3.x))), select(!vec3<bool>(arg_1.x, true, arg_1.x), !vec3<bool>(arg_1.x, false, false), vec3<bool>(arg_0.x, arg_1.x, false)), arg_0.x, -620f, arg_1.x))));
    let var_1 = _wgslsmith_add_vec2_u32(countOneBits(vec2<u32>(arg_2.x, abs(arg_2.x)) ^ (vec2<u32>(arg_2.x, arg_2.x) ^ vec2<u32>(arg_2.x, 65838u))), vec2<u32>(_wgslsmith_sub_u32(_wgslsmith_clamp_u32(arg_2.x, ~arg_2.x, 111534u << (arg_2.x % 32u)), ~_wgslsmith_div_u32(arg_2.x, arg_2.x)), arg_2.x));
    let var_2 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-288f + _wgslsmith_f_op_f32(arg_3.x - _wgslsmith_div_f32(arg_3.x, 197f))), vec3<bool>(true, any(vec4<bool>(false, arg_0.x, arg_1.x, arg_1.x)) & false, true), !(!(!arg_1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.x) * -2099f) - arg_3.x), !arg_0.x && (-326f > _wgslsmith_f_op_f32(ceil(arg_3.x)))), -(~(~_wgslsmith_mod_vec4_i32(vec4<i32>(-12021i, 0i, -8705i, u_input.a.x), vec4<i32>(u_input.d.x, -46655i, 1i, u_input.b)))), Struct_1(_wgslsmith_f_op_f32(-arg_3.x), vec3<bool>(arg_0.x, arg_1.x, false), arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_3.x, _wgslsmith_f_op_f32(f32(-1f) * -1672f))), true && (arg_3.x < 1290f)));
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1168f, -923f) + vec2<f32>(212f, -1775f)))))));
    return var_2.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(vec3<u32>(abs(4294967295u), _wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, 4294967295u), ~select(vec2<u32>(34304u, 72824u), vec2<u32>(1u, 29459u), vec2<bool>(true, true))), ~_wgslsmith_mod_u32(4294967295u, 1u)));
    let var_1 = ~_wgslsmith_mod_vec3_u32(max(vec3<u32>(1u, _wgslsmith_add_u32(0u, 28275u), ~var_0.x), _wgslsmith_sub_vec3_u32(vec3<u32>(var_0.x, 1u, 91827u), vec3<u32>(4294967295u, var_0.x, var_0.x)) | select(vec3<u32>(1u, var_0.x, var_0.x), vec3<u32>(var_0.x, var_0.x, 796u), true)), _wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(27563u, 1u, var_0.x), ~vec3<u32>(var_0.x, 34733u, var_0.x)), var_0 << ((var_0 >> (var_0 % vec3<u32>(32u))) % vec3<u32>(32u))));
    let var_2 = -218f;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1223f));
    var_3 = -1532f;
    let var_4 = func_4(!func_1(countOneBits(abs(vec4<u32>(var_0.x, 19230u, 4294967295u, var_1.x)))), vec2<bool>(false, true), vec2<u32>(~1u, var_0.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2, var_2)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(426f, -243f) * vec2<f32>(var_2, var_2))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(var_2, var_2), vec2<f32>(-299f, var_2)) * _wgslsmith_div_vec2_f32(vec2<f32>(var_2, -217f), vec2<f32>(1049f, -662f))))));
    var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(any(select(vec4<bool>(false, var_4.c, var_4.b.x, var_4.e), vec4<bool>(true, true, true, true), var_4.c)) == var_4.e, !all(select(vec4<bool>(false, var_4.e, var_4.b.x, var_4.b.x), vec4<bool>(false, true, var_4.b.x, var_4.c), vec4<bool>(var_4.c, true, var_4.e, var_4.b.x))), Struct_2(Struct_1(_wgslsmith_f_op_f32(-var_2), vec3<bool>(var_4.e, var_4.e, true), var_4.c, _wgslsmith_f_op_f32(var_2 + var_4.d), var_4.e), abs(~vec4<i32>(u_input.c, u_input.b, u_input.d.x, -35334i)), Struct_1(_wgslsmith_div_f32(-1122f, var_2), vec3<bool>(true, true, var_4.b.x), true, 1877f, u_input.b == 26456i)))));
    var_3 = var_4.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(0u, var_1.x, var_0.x, 1u), vec4<u32>(var_1.x, var_0.x, var_0.x, var_0.x)) | vec4<u32>(var_0.x, 1u, var_0.x, var_1.x), _wgslsmith_div_vec4_u32(~vec4<u32>(var_0.x, 0u, 43458u, var_1.x), max(vec4<u32>(4294967295u, var_0.x, var_1.x, 26397u), vec4<u32>(91185u, var_1.x, var_1.x, var_0.x)))) | (vec4<u32>(countOneBits(4294967295u), min(var_1.x, 36654u), 23313u, max(var_0.x, 1u)) << (firstLeadingBit(abs(vec4<u32>(0u, 65360u, 0u, 15774u))) % vec4<u32>(32u))), 1428f, var_2);
}

