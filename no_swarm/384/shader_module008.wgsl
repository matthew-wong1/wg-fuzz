struct Struct_1 {
    a: i32,
    b: vec2<bool>,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_2(arg_0: bool) -> Struct_2 {
    var var_0 = Struct_2(671i);
    var var_1 = -6505i;
    let var_2 = true;
    var_1 = -u_input.b;
    var_1 = _wgslsmith_mod_i32(firstLeadingBit(u_input.a), -2147483647i);
    return Struct_2((8969i << (u_input.e.x % 32u)) ^ firstTrailingBit(_wgslsmith_mod_i32(abs(var_0.a), 0i)));
}

fn func_3(arg_0: Struct_2, arg_1: u32, arg_2: Struct_2, arg_3: Struct_2) -> u32 {
    let var_0 = true;
    let var_1 = Struct_1(_wgslsmith_mult_i32(~arg_3.a, arg_2.a ^ -abs(arg_2.a)), vec2<bool>(all(select(select(vec3<bool>(true, var_0, true), vec3<bool>(var_0, true, var_0), vec3<bool>(var_0, true, false)), !vec3<bool>(var_0, false, true), false || var_0)), (!var_0 || true) | var_0));
    var var_2 = min(_wgslsmith_div_u32(17721u, ~1u), _wgslsmith_dot_vec2_u32(u_input.e.xy << (u_input.e.zy % vec2<u32>(32u)), min(abs(_wgslsmith_mod_vec2_u32(vec2<u32>(arg_1, arg_1), vec2<u32>(1u, arg_1))), ~(vec2<u32>(1u, 23703u) & u_input.e.xx))));
    var_2 = firstTrailingBit(u_input.e.x);
    let var_3 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_div_f32(105f, _wgslsmith_f_op_f32(round(1063f))), 932f))), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1f, 1f))));
    return 3651u | arg_1;
}

fn func_1() -> vec3<f32> {
    let var_0 = 604f;
    let var_1 = vec4<u32>(firstLeadingBit(func_3(func_2(true), 4294967295u, Struct_2(35900i), func_2(false))), min(70793u | u_input.e.x, u_input.d), u_input.d, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.e.x, select(27186u, u_input.d, true)), vec3<u32>(u_input.d, countOneBits(49680u), firstLeadingBit(9192u)))) << (reverseBits(min(_wgslsmith_div_vec4_u32(select(vec4<u32>(1u, 0u, u_input.e.x, u_input.e.x), vec4<u32>(49345u, 42739u, u_input.e.x, u_input.d), true), vec4<u32>(u_input.d, 0u, 4294967295u, u_input.e.x) << (vec4<u32>(u_input.d, 113473u, 4294967295u, 14919u) % vec4<u32>(32u))), vec4<u32>(~83641u, u_input.d, _wgslsmith_add_u32(u_input.d, 4294967295u), u_input.d | 8151u))) % vec4<u32>(32u));
    let var_2 = vec2<bool>(true, !all(vec4<bool>(false, true, any(vec2<bool>(false, false)), any(vec2<bool>(true, true)))));
    var var_3 = var_0;
    let var_4 = -1i;
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, -1000f, -155f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, -756f, -1159f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-2481f, 250f, var_0)))) * vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) - _wgslsmith_f_op_f32(var_0 + var_0)), _wgslsmith_f_op_f32(f32(-1f) * -122f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1266f))))) - _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(var_0)), _wgslsmith_f_op_f32(abs(1036f))), _wgslsmith_f_op_f32(var_0 + _wgslsmith_f_op_f32(var_0 + var_0)), _wgslsmith_f_op_f32(floor(-696f))))));
}

fn func_4(arg_0: i32, arg_1: vec3<f32>, arg_2: vec3<f32>, arg_3: Struct_2) -> vec2<bool> {
    let var_0 = 236f;
    var var_1 = max(~u_input.e.yx >> (~vec2<u32>(~u_input.d, u_input.d) % vec2<u32>(32u)), ~u_input.e.yy);
    var_1 = abs(~countOneBits(vec2<u32>(0u, var_1.x)) >> (u_input.e.zz % vec2<u32>(32u)));
    var_1 = u_input.e.xy;
    let var_2 = 8747u;
    return select(select(select(vec2<bool>(true, true), !select(vec2<bool>(false, true), vec2<bool>(false, false), false), all(vec4<bool>(false, true, true, true)) | false), !select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), true), false), vec2<bool>(true, true)), !(!(!select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true)))), any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, any(vec4<bool>(true, false, false, true)), all(vec4<bool>(true, false, true, false))), !any(vec2<bool>(true, true)))));
}

fn func_5(arg_0: f32, arg_1: vec4<i32>, arg_2: vec2<bool>) -> Struct_1 {
    var var_0 = func_2(!(u_input.c == arg_1.x));
    var_0 = Struct_2(~5153i);
    var var_1 = func_2(arg_2.x);
    let var_2 = func_2(!((true || all(arg_2)) | arg_2.x));
    var_1 = var_2;
    return Struct_1(reverseBits(_wgslsmith_dot_vec4_i32(vec4<i32>(10182i, var_0.a, -2147483647i, var_1.a), _wgslsmith_mult_vec4_i32(arg_1, arg_1))) >> (4294967295u % 32u), arg_2);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(150f, vec4<i32>(_wgslsmith_mod_i32(_wgslsmith_sub_i32(6368i, u_input.a << (u_input.d % 32u)), firstLeadingBit(-2147483647i)), -18246i, u_input.a, select(5842i, ~(-33691i), true)), func_4(u_input.b ^ 0i, _wgslsmith_f_op_vec3_f32(func_1()), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1f, 1f, 1f), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-390f, -595f, 132f), vec3<f32>(593f, -1135f, -232f), true)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-632f, -811f, -961f))), vec3<bool>(true, true, true))), Struct_2(u_input.b)));
    var_0 = func_5(_wgslsmith_f_op_f32(-1f), _wgslsmith_mult_vec4_i32(~_wgslsmith_mod_vec4_i32(firstTrailingBit(vec4<i32>(-10260i, 2051i, 2147483647i, var_0.a)), _wgslsmith_add_vec4_i32(vec4<i32>(-1i, u_input.b, u_input.c, u_input.b), vec4<i32>(59072i, u_input.b, -15219i, -22267i))), -(_wgslsmith_sub_vec4_i32(vec4<i32>(1i, u_input.c, -225i, u_input.a), vec4<i32>(-77181i, -1i, 1i, 0i)) ^ vec4<i32>(u_input.b, 2147483647i, 1i, 1i))), select(!select(select(vec2<bool>(true, var_0.b.x), vec2<bool>(false, var_0.b.x), true), var_0.b, true), select(func_4(var_0.a, vec3<f32>(-484f, -1000f, -975f), _wgslsmith_f_op_vec3_f32(vec3<f32>(-736f, -387f, -992f) - vec3<f32>(-705f, -890f, 255f)), func_2(var_0.b.x)), vec2<bool>(true, true), any(!var_0.b)), vec2<bool>(all(!var_0.b), var_0.b.x)));
    var_0 = func_5(-652f, select(-vec4<i32>(-53493i, -2147483647i, -8189i, -12328i) ^ select(vec4<i32>(var_0.a, var_0.a, -41515i, u_input.c), vec4<i32>(u_input.c, u_input.c, u_input.b, u_input.c), false), select(min(vec4<i32>(-26638i, u_input.b, -1i, var_0.a), vec4<i32>(2147483647i, u_input.b, -2147483647i, var_0.a)), min(vec4<i32>(4446i, var_0.a, -15315i, 12060i), vec4<i32>(var_0.a, u_input.b, 25930i, 70670i)), vec4<bool>(false, false, true, var_0.b.x)), vec4<bool>(true, u_input.e.x <= u_input.e.x, var_0.b.x, !var_0.b.x)) & vec4<i32>(-(~27474i), _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.a, u_input.b, 33473i), vec3<i32>(1i, var_0.a, -2147483647i)) << (u_input.e.x % 32u), _wgslsmith_clamp_i32(~var_0.a, 19583i, u_input.a), _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, var_0.a, -38793i, 0i), vec4<i32>(var_0.a, 2147483647i, u_input.a, -25053i))), !var_0.b);
    let var_1 = any(select(select(vec3<bool>(all(vec4<bool>(true, false, var_0.b.x, var_0.b.x)), func_5(-1976f, vec4<i32>(var_0.a, var_0.a, u_input.c, 7511i), var_0.b).b.x, true), select(select(vec3<bool>(var_0.b.x, var_0.b.x, var_0.b.x), vec3<bool>(true, false, var_0.b.x), vec3<bool>(var_0.b.x, var_0.b.x, var_0.b.x)), vec3<bool>(var_0.b.x, false, var_0.b.x), !var_0.b.x), !select(vec3<bool>(false, var_0.b.x, var_0.b.x), vec3<bool>(var_0.b.x, false, false), vec3<bool>(var_0.b.x, var_0.b.x, true))), select(!select(vec3<bool>(var_0.b.x, false, var_0.b.x), vec3<bool>(var_0.b.x, var_0.b.x, var_0.b.x), true), select(select(vec3<bool>(var_0.b.x, true, var_0.b.x), vec3<bool>(var_0.b.x, false, true), vec3<bool>(var_0.b.x, var_0.b.x, false)), !vec3<bool>(false, false, var_0.b.x), any(vec3<bool>(true, true, var_0.b.x))), all(!var_0.b)), !vec3<bool>(!var_0.b.x, any(var_0.b), true)));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(537f, -320f, 855f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(733f, -511f, 1000f)), !vec3<bool>(var_1, false, false))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-823f, 1169f, 172f), vec3<f32>(335f, 185f, -247f), vec3<bool>(true, true, var_0.b.x)))))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, var_2.zx);
}

