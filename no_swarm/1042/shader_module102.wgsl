struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: vec2<i32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_2,
    c: Struct_2,
    d: Struct_2,
    e: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: f32,
    c: vec4<i32>,
}

struct Struct_5 {
    a: vec4<i32>,
    b: bool,
    c: bool,
    d: vec2<bool>,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: f32,
    d: u32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2(arg_0: Struct_4, arg_1: vec4<i32>) -> f32 {
    return _wgslsmith_f_op_f32(-888f + _wgslsmith_f_op_f32(arg_0.b - arg_0.b));
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: f32, arg_3: Struct_1) -> vec3<i32> {
    let var_0 = Struct_4(2147483647i, _wgslsmith_f_op_f32(-arg_2), -vec4<i32>(1i, 1i, 1i, 1i));
    var var_1 = Struct_4(_wgslsmith_mult_i32(~var_0.a, -2147483647i), _wgslsmith_f_op_f32(1000f * 516f), vec4<i32>(abs(~(-2147483647i)), -(2147483647i >> (u_input.a.x % 32u)), ~_wgslsmith_mod_i32(_wgslsmith_mod_i32(var_0.c.x, 1i), abs(var_0.c.x)), -1i));
    let var_2 = Struct_5(var_0.c, true, false, vec2<bool>(false | (any(vec2<bool>(true, true)) || true), all(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), false), all(vec2<bool>(false, false))))), !vec3<bool>(31982u < arg_3.a, all(vec4<bool>(false, true, true, false)), any(vec2<bool>(true, true))));
    let var_3 = vec4<bool>(!var_2.b, all(vec3<bool>(var_2.c, _wgslsmith_f_op_f32(f32(-1f) * -857f) < _wgslsmith_f_op_f32(ceil(-1014f)), var_2.e.x)), var_2.c, !(var_0.a <= var_0.a));
    var var_4 = Struct_3(var_0.c.zxw, Struct_2(arg_1, arg_1, all(select(select(vec2<bool>(true, true), var_2.d, vec2<bool>(false, var_3.x)), var_3.wz, !var_3.x)), _wgslsmith_sub_vec2_i32(var_1.c.zz, vec2<i32>(_wgslsmith_add_i32(-1i, var_1.a), _wgslsmith_add_i32(18893i, -1i))), arg_3), Struct_2(arg_3, arg_3, select(!var_2.e.x || var_3.x, all(var_3.xz), 38763u != _wgslsmith_sub_u32(arg_0.x, 0u)), vec2<i32>(var_2.a.x, var_2.a.x), arg_3), Struct_2(arg_1, arg_1, arg_2 > -208f, _wgslsmith_div_vec2_i32(var_1.c.zw, reverseBits(~var_2.a.zz)), Struct_1(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(arg_1.a, 0u, arg_3.a), arg_0.x))), Struct_2(arg_3, arg_1, 20536u < arg_0.x, _wgslsmith_add_vec2_i32(_wgslsmith_mult_vec2_i32(countOneBits(vec2<i32>(-37424i, var_2.a.x)), _wgslsmith_mult_vec2_i32(vec2<i32>(var_2.a.x, var_2.a.x), var_2.a.wy)), var_0.c.xw), Struct_1(u_input.b.x)));
    return vec3<i32>(_wgslsmith_clamp_i32(abs(var_1.a), var_1.c.x, 2147483647i), ~firstTrailingBit(var_0.c.x) & -4494i, var_0.a) ^ -abs(var_2.a.xwy);
}

fn func_1(arg_0: u32, arg_1: u32, arg_2: bool, arg_3: u32) -> Struct_3 {
    let var_0 = Struct_4(-64264i, _wgslsmith_f_op_f32(max(614f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_2(Struct_4(1i, -1554f, vec4<i32>(13774i, 36831i, 1i, 1i)), vec4<i32>(0i, -10615i, 2147483647i, 0i)))))))), vec4<i32>(-1i) * -(~vec4<i32>(1i, 30613i, -12206i, 5600i)));
    var var_1 = -770f;
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-377f - _wgslsmith_f_op_f32(ceil(523f))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_2(var_0, reverseBits(var_0.c) << (_wgslsmith_add_vec4_u32(vec4<u32>(0u, 1u, arg_1, arg_3), vec4<u32>(arg_3, u_input.b.x, arg_3, 0u)) % vec4<u32>(32u)))), -227f, true)));
    let var_3 = 30798i;
    return Struct_3(-func_3(~vec4<u32>(u_input.a.x, arg_3, 47241u, arg_0), Struct_1(arg_3), _wgslsmith_f_op_f32(-var_0.b), Struct_1(u_input.a.x)) ^ vec3<i32>(var_0.a, ~11925i, -20528i & var_3), Struct_2(Struct_1(1u), Struct_1(~(arg_3 ^ arg_1)), any(vec2<bool>(true, any(vec4<bool>(arg_2, arg_2, true, arg_2)))), var_0.c.zz, Struct_1(abs(abs(arg_0)))), Struct_2(Struct_1(~7157u), Struct_1(~arg_0 ^ _wgslsmith_add_u32(22501u, 102196u)), !(!all(vec4<bool>(arg_2, arg_2, arg_2, false))), ~_wgslsmith_div_vec2_i32(vec2<i32>(8466i, 2147483647i), var_0.c.zy), Struct_1(u_input.a.x)), Struct_2(Struct_1(_wgslsmith_div_u32(~arg_3, arg_3)), Struct_1(u_input.b.x), arg_2, vec2<i32>(_wgslsmith_div_i32(-1i, var_0.a >> (60693u % 32u)), ~abs(var_0.a)), Struct_1(u_input.a.x)), Struct_2(Struct_1(~_wgslsmith_div_u32(arg_3, 4294967295u)), Struct_1(arg_0), _wgslsmith_mod_i32(~0i, _wgslsmith_mult_i32(var_3, var_0.a)) != _wgslsmith_clamp_i32(select(var_3, 0i, false), ~var_0.a, reverseBits(var_0.c.x)), vec2<i32>(_wgslsmith_sub_i32(~var_0.c.x, i32(-1i) * -20923i), -61519i), Struct_1(arg_0)));
}

fn func_4(arg_0: Struct_3, arg_1: vec4<bool>, arg_2: vec4<f32>, arg_3: vec2<i32>) -> Struct_4 {
    var var_0 = 2147483647i;
    var_0 = _wgslsmith_clamp_i32(-2436i, ~(-arg_0.d.d.x), min(arg_0.a.x >> (u_input.b.x % 32u), -2147483647i) << (9855u % 32u));
    var_0 = -5621i;
    return Struct_4(-(~(-31838i)), 387f, vec4<i32>(_wgslsmith_dot_vec2_i32(arg_3, ~vec2<i32>(arg_0.d.d.x, arg_3.x)), -19110i, func_3(u_input.b, arg_0.b.e, arg_2.x, func_1(arg_0.c.a.a, 1u, true, u_input.b.x).b.e).x, firstTrailingBit(arg_0.b.d.x)) ^ vec4<i32>(67800i, ~func_3(vec4<u32>(4294967295u, arg_0.e.a.a, arg_0.b.b.a, u_input.a.x), Struct_1(arg_0.b.a.a), arg_2.x, arg_0.d.e).x, -8401i, reverseBits(-7872i)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(func_1(~(~4294967295u >> ((u_input.a.x | u_input.b.x) % 32u)), 1u, true, u_input.b.x), !select(vec4<bool>(true, false, func_1(u_input.b.x, u_input.a.x, false, 0u).e.c, true), vec4<bool>(true, true, true, func_1(0u, 4294967295u, false, 40823u).d.c), vec4<bool>(true, true, true, true)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -994f), -635f, 475f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(1577f, -239f)), _wgslsmith_f_op_f32(sign(-2021f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(-353f, 1488f, -1083f, -856f) - vec4<f32>(900f, 643f, -359f, 996f))))), select(!select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true)), !select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false)), true))), vec2<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(0i, 0i, 3188i), abs(vec3<i32>(2110i, -1i, -26267i))), ~vec3<i32>(-85573i, -795i, -2147483647i)), -2147483647i));
    var var_1 = Struct_5(~_wgslsmith_div_vec4_i32(~var_0.c ^ var_0.c, vec4<i32>(0i, var_0.c.x, var_0.c.x, 8747i) | abs(var_0.c)), all(vec4<bool>(all(vec2<bool>(true, true)), true, false, any(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), true)))), true, vec2<bool>(all(!select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true))), all(vec2<bool>(true, true))), !select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), true), true));
    var var_2 = _wgslsmith_dot_vec4_i32(~max(var_0.c, var_0.c), -_wgslsmith_add_vec4_i32(countOneBits(var_0.c), ~(~var_0.c)));
    let var_3 = all(!select(var_1.e, !var_1.e, var_1.c));
    var var_4 = Struct_3(_wgslsmith_mod_vec3_i32(-vec3<i32>(var_1.a.x, i32(-1i) * -88749i, var_0.c.x & -2147483647i), ~var_1.a.wyz), func_1(u_input.a.x, ~max(39309u, u_input.b.x), true, _wgslsmith_mod_u32(~u_input.b.x, ~u_input.a.x)).c, Struct_2(Struct_1(~60684u), func_1(19226u, ~func_1(50470u, u_input.a.x, var_1.e.x, u_input.b.x).d.a.a, true, countOneBits(~0u)).d.a, any(select(select(var_1.e, vec3<bool>(var_1.d.x, var_1.c, var_1.b), vec3<bool>(var_1.d.x, var_3, var_1.c)), vec3<bool>(var_1.c, false, false), select(var_1.e, var_1.e, true))), _wgslsmith_div_vec2_i32(max(_wgslsmith_mod_vec2_i32(var_1.a.zw, var_0.c.yx), var_1.a.yx), min(vec2<i32>(25786i, 14517i), -vec2<i32>(var_0.a, 0i))), Struct_1(1u)), func_1(~1u, _wgslsmith_add_u32(~u_input.b.x, ~abs(28556u)), any(select(vec4<bool>(var_1.c, false, false, false), select(vec4<bool>(var_3, false, var_3, var_3), vec4<bool>(true, true, false, var_3), true), !vec4<bool>(true, var_1.d.x, var_3, true))), _wgslsmith_mod_u32(min(4294967295u, ~u_input.a.x), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, u_input.a.x, 0u, u_input.b.x), _wgslsmith_div_vec4_u32(u_input.b, u_input.b)))).c, func_1(firstTrailingBit(u_input.b.x), firstLeadingBit(39029u), !any(select(vec3<bool>(var_3, var_3, true), var_1.e, var_1.e)), u_input.b.x).c);
    var var_5 = all(vec4<bool>(var_0.b <= _wgslsmith_f_op_f32(func_2(Struct_4(19175i, 175f, vec4<i32>(-19417i, var_0.a, 0i, 0i)), var_0.c)), true, var_4.d.c, var_3));
    var_2 = func_3(u_input.b, Struct_1(reverseBits(var_4.e.e.a) ^ 35167u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0.b + 124f), _wgslsmith_f_op_f32(-var_0.b)))))), Struct_1(u_input.a.x)).x;
    var_2 = ~_wgslsmith_mod_i32(max(-9401i, var_0.a), abs(var_1.a.x));
    var_2 = var_1.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec4_i32(var_1.a, select(select(var_0.c & vec4<i32>(32667i, 2147483647i, 1i, 1618i), ~var_0.c, !vec4<bool>(true, var_1.c, false, var_4.d.c)), ~vec4<i32>(2999i, 1i, var_1.a.x, var_0.c.x), var_3 || any(var_1.e)), ~var_1.a), countOneBits(vec3<i32>(_wgslsmith_add_i32(var_0.c.x, var_0.a), var_4.d.d.x, var_1.a.x)), _wgslsmith_f_op_f32(var_0.b - _wgslsmith_f_op_f32(round(-389f))), var_4.e.e.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(var_0.b - var_0.b), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))) - vec2<f32>(-291f, -1093f)));
}

