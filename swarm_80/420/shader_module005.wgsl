struct Struct_1 {
    a: vec4<i32>,
    b: u32,
    c: bool,
    d: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: vec4<i32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec2<i32>,
    d: vec4<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec4<u32>,
    d: vec4<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: i32, arg_3: vec4<i32>) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(-420f - arg_0.b);
    let var_1 = arg_0.a.d.yz;
    var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_0.b - _wgslsmith_f_op_f32(max(arg_0.b, _wgslsmith_f_op_f32(f32(-1f) * -275f))))));
    var_0 = arg_0.b;
    var_0 = _wgslsmith_f_op_f32(min(436f, _wgslsmith_f_op_f32(sign(-345f))));
    return arg_3.x;
}

fn func_2(arg_0: Struct_1) -> vec4<u32> {
    var var_0 = !select(select(vec3<bool>(select(false, arg_0.c, arg_0.c), arg_0.c, true), !select(vec3<bool>(arg_0.c, arg_0.c, false), vec3<bool>(false, false, arg_0.c), vec3<bool>(true, arg_0.c, arg_0.c)), !vec3<bool>(arg_0.c, true, true)), !vec3<bool>(false, -1i < arg_0.a.x, true), vec3<bool>(true, false, arg_0.c));
    let var_1 = reverseBits(reverseBits(func_3(Struct_2(arg_0, -765f), !var_0.zz, firstLeadingBit(-u_input.b.x), ~arg_0.a)));
    var var_2 = i32(-1i) * -5969i;
    var_0 = select(select(!select(vec3<bool>(true, false, arg_0.c), !vec3<bool>(arg_0.c, true, false), u_input.b.x >= arg_0.a.x), !vec3<bool>(arg_0.c, !arg_0.c, true), vec3<bool>(!(0i > arg_0.d.x), all(select(vec3<bool>(true, true, var_0.x), vec3<bool>(arg_0.c, var_0.x, arg_0.c), var_0.x)), select(true, false || var_0.x, !var_0.x))), select(vec3<bool>(var_1 < -21552i, true, true), vec3<bool>(true, abs(arg_0.b) >= (27030u << (1u % 32u)), any(vec3<bool>(arg_0.c, arg_0.c, arg_0.c)) & all(vec3<bool>(arg_0.c, true, true))), arg_0.c), any(var_0.yy));
    var var_3 = Struct_2(arg_0, -753f);
    return _wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(~arg_0.b, var_3.a.b, 9451u, ~1u), abs(vec4<u32>(162u, 11932u | var_3.a.b, abs(var_3.a.b), ~22585u))), ~_wgslsmith_div_vec4_u32(~vec4<u32>(var_3.a.b, var_3.a.b, 0u, var_3.a.b), abs(vec4<u32>(4294967295u, arg_0.b, 1u, 4294967295u)) ^ _wgslsmith_mod_vec4_u32(vec4<u32>(arg_0.b, u_input.e.x, u_input.e.x, var_3.a.b), vec4<u32>(14568u, 16517u, var_3.a.b, arg_0.b))), reverseBits(firstTrailingBit(~vec4<u32>(u_input.e.x, arg_0.b, 0u, 0u) >> (~vec4<u32>(11702u, 0u, 4294967295u, 1u) % vec4<u32>(32u)))));
}

fn func_4(arg_0: f32, arg_1: vec4<u32>, arg_2: Struct_2, arg_3: vec3<i32>) -> Struct_1 {
    var var_0 = true;
    let var_1 = Struct_2(Struct_1(~u_input.d, 28965u, any(vec2<bool>(arg_3.x <= -2147483647i, arg_2.a.c & false)), reverseBits(_wgslsmith_clamp_vec4_i32(arg_2.a.a, ~vec4<i32>(-101472i, arg_3.x, 0i, arg_3.x), vec4<i32>(arg_3.x, arg_3.x, arg_2.a.a.x, arg_2.a.d.x) & vec4<i32>(arg_2.a.a.x, -55546i, 1i, 9350i)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_2.b, _wgslsmith_f_op_f32(abs(arg_2.b)), false)) * arg_0))));
    var_0 = false;
    let var_2 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.b, arg_0, arg_0)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -571f, var_1.b) + vec3<f32>(-731f, -1000f, 1047f))), vec3<f32>(_wgslsmith_div_f32(-280f, arg_0), _wgslsmith_f_op_f32(-1423f - arg_0), _wgslsmith_f_op_f32(round(arg_0))), !select(vec3<bool>(false, var_1.a.c, false), vec3<bool>(false, true, arg_2.a.c), arg_2.a.c))))));
    var var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_2) * vec3<f32>(-1000f, _wgslsmith_f_op_f32(trunc(var_2.x)), -211f)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_2 * _wgslsmith_f_op_vec3_f32(floor(var_2))) - vec3<f32>(_wgslsmith_f_op_f32(floor(518f)), _wgslsmith_f_op_f32(-arg_2.b), _wgslsmith_f_op_f32(f32(-1f) * -453f)))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(var_2.x)))), _wgslsmith_f_op_f32(arg_2.b * _wgslsmith_f_op_f32(step(-810f, var_2.x))), -401f)));
    return Struct_1(vec4<i32>(~u_input.d.x, arg_3.x, _wgslsmith_div_i32(1i, 31436i), -22587i), 29470u, !(!(arg_2.a.c || true)), vec4<i32>(_wgslsmith_div_i32(u_input.c.x, _wgslsmith_div_i32(-arg_2.a.d.x, ~var_1.a.d.x)), i32(-1i) * -_wgslsmith_clamp_i32(-2246i, var_1.a.a.x, arg_3.x), 1819i, _wgslsmith_dot_vec2_i32(max(arg_3.zx, firstLeadingBit(vec2<i32>(15426i, -1i))), _wgslsmith_div_vec2_i32(vec2<i32>(arg_2.a.a.x, -7447i), -arg_2.a.d.zx))));
}

fn func_1(arg_0: Struct_2, arg_1: i32) -> Struct_1 {
    return func_4(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.b, 518f) + _wgslsmith_f_op_f32(f32(-1f) * -572f))))), _wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32((vec4<u32>(4294967295u, u_input.e.x, arg_0.a.b, u_input.e.x) >> (vec4<u32>(arg_0.a.b, u_input.e.x, arg_0.a.b, arg_0.a.b) % vec4<u32>(32u))) | _wgslsmith_sub_vec4_u32(vec4<u32>(arg_0.a.b, arg_0.a.b, 0u, 38702u), vec4<u32>(19258u, arg_0.a.b, 32289u, 69447u)), ~reverseBits(vec4<u32>(16762u, arg_0.a.b, 4294967295u, arg_0.a.b)), ~_wgslsmith_mod_vec4_u32(vec4<u32>(arg_0.a.b, u_input.e.x, 333u, u_input.e.x), vec4<u32>(u_input.e.x, 22929u, arg_0.a.b, arg_0.a.b))), min((vec4<u32>(4294967295u, arg_0.a.b, 35809u, 73325u) & vec4<u32>(15048u, arg_0.a.b, arg_0.a.b, 1u)) >> (~vec4<u32>(78839u, u_input.e.x, 1u, arg_0.a.b) % vec4<u32>(32u)), _wgslsmith_div_vec4_u32(func_2(arg_0.a), vec4<u32>(arg_0.a.b, u_input.e.x, 24932u, 70569u) & vec4<u32>(0u, 1u, 4294967295u, 10043u)))), Struct_2(arg_0.a, arg_0.b), reverseBits(_wgslsmith_mod_vec3_i32(u_input.b.wzy, _wgslsmith_mod_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(arg_0.a.d.x, -2147483647i, -24310i), u_input.d.xzz), ~vec3<i32>(-2759i, 0i, arg_1)))));
}

fn func_5(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: u32, arg_3: u32) -> Struct_1 {
    let var_0 = arg_0;
    var var_1 = vec2<bool>(func_4(-871f, abs(~_wgslsmith_mult_vec4_u32(vec4<u32>(59643u, arg_0.a.b, 4294967295u, 1u), vec4<u32>(60231u, arg_0.a.b, 50328u, 1u))), Struct_2(Struct_1(~u_input.d, 27766u, var_0.a.c, vec4<i32>(2147483647i, var_0.a.d.x, -1i, -14184i)), _wgslsmith_f_op_f32(arg_0.b + _wgslsmith_f_op_f32(f32(-1f) * -655f))), var_0.a.a.yyz).c, !var_0.a.c);
    var var_2 = firstLeadingBit(_wgslsmith_mult_vec2_i32(func_1(Struct_2(var_0.a, 2024f), -1i).d.wy, vec2<i32>(var_0.a.a.x, -2147483647i)));
    var_2 = select(_wgslsmith_add_vec2_i32(arg_0.a.d.xy, select(func_4(-1844f, vec4<u32>(1u, 3793u, 1u, arg_2), arg_0, arg_0.a.d.zxy).a.wx, _wgslsmith_sub_vec2_i32(vec2<i32>(-11354i, u_input.b.x), vec2<i32>(-1i, -20466i)), !vec2<bool>(true, var_1.x))) << (_wgslsmith_mod_vec2_u32(u_input.e.yy, _wgslsmith_add_vec2_u32(u_input.e.zz, u_input.e.yy) << (select(u_input.e.yx, vec2<u32>(arg_3, arg_3), true) % vec2<u32>(32u))) % vec2<u32>(32u)), -(~arg_0.a.a.zx) << (u_input.e.xy % vec2<u32>(32u)), !var_0.a.c);
    let var_3 = Struct_3(arg_0.a.b, arg_0.a, vec4<i32>(8994i, _wgslsmith_mult_i32(u_input.c.x, reverseBits(~(-23456i))), -23920i, 2147483647i), Struct_2(arg_0.a, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-1484f, _wgslsmith_f_op_f32(round(-203f))), _wgslsmith_f_op_f32(var_0.b + -2038f)))));
    return func_1(var_3.d, arg_0.a.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(Struct_2(func_1(Struct_2(Struct_1(vec4<i32>(u_input.b.x, u_input.b.x, 2147483647i, 2147483647i), u_input.e.x, true, u_input.d), 1000f), _wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.b.x, u_input.b.x), countOneBits(vec2<i32>(u_input.c.x, -54488i)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), -489f))), func_1(Struct_2(Struct_1(vec4<i32>(-19030i, u_input.b.x, u_input.d.x, 0i), u_input.e.x | 4294967295u, true, ~vec4<i32>(u_input.c.x, u_input.a, -600i, 40940i)), -1423f), u_input.a).d.wx, _wgslsmith_mod_u32(firstLeadingBit(u_input.e.x), ~32409u), u_input.e.x);
    var var_1 = func_4(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(1237f)))), func_2(func_5(Struct_2(var_0, -660f), _wgslsmith_clamp_vec2_i32(vec2<i32>(-27071i, u_input.c.x), vec2<i32>(-36108i, -20159i), vec2<i32>(-1i, -2147483647i)), 4294967295u, u_input.e.x)) << (((max(vec4<u32>(1u, var_0.b, u_input.e.x, u_input.e.x), vec4<u32>(u_input.e.x, u_input.e.x, 9366u, u_input.e.x)) ^ ~vec4<u32>(u_input.e.x, u_input.e.x, var_0.b, var_0.b)) & firstLeadingBit(~vec4<u32>(u_input.e.x, 6965u, u_input.e.x, var_0.b))) % vec4<u32>(32u)), Struct_2(var_0, _wgslsmith_f_op_f32(158f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(1016f, -1776f)), _wgslsmith_f_op_f32(1029f - -1478f)))), -func_5(Struct_2(var_0, _wgslsmith_f_op_f32(f32(-1f) * -665f)), -vec2<i32>(19792i, u_input.c.x), min(1u, u_input.e.x), reverseBits(~0u)).a.xwy);
    var_1 = func_4(515f, vec4<u32>(countOneBits(abs(1u)), abs(var_1.b), 40315u, 170u), Struct_2(Struct_1(u_input.d, ~46102u, true, vec4<i32>(var_0.d.x & var_0.a.x, ~var_0.d.x, -2147483647i, -1i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -2529f))))), func_1(Struct_2(func_4(_wgslsmith_f_op_f32(select(-1024f, -1062f, true)), select(vec4<u32>(var_1.b, 0u, u_input.e.x, 1u), vec4<u32>(var_0.b, var_0.b, 30478u, 4294967295u), var_0.c), Struct_2(var_0, -375f), func_1(Struct_2(var_0, -916f), var_1.d.x).a.wxy), -223f), func_3(Struct_2(func_4(213f, vec4<u32>(0u, var_1.b, var_1.b, var_1.b), Struct_2(Struct_1(vec4<i32>(-1i, 2147483647i, -1203i, var_1.a.x), 17755u, false, u_input.d), -816f), var_0.a.xyz), _wgslsmith_div_f32(281f, 1918f)), !select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, var_0.c)), (var_1.a.x & var_1.a.x) & max(-9819i, -71746i), _wgslsmith_mod_vec4_i32(vec4<i32>(-8763i, var_0.a.x, var_1.a.x, -1i), var_0.a ^ var_1.d))).d.zyw);
    var var_2 = ~(~vec3<u32>(63070u, ~var_1.b ^ 7856u, 1u));
    var_1 = func_4(_wgslsmith_f_op_f32(442f + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1000f, 975f))), 1000f))), ~max(_wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(var_0.b, u_input.e.x, 109423u, u_input.e.x), vec4<u32>(var_1.b, var_0.b, var_0.b, 1u)), vec4<u32>(1u, 23578u, var_2.x, 4294967295u), vec4<u32>(0u, 58766u, 24945u, 4294967295u)), _wgslsmith_div_vec4_u32(~vec4<u32>(51673u, var_0.b, 54481u, var_1.b), countOneBits(vec4<u32>(u_input.e.x, u_input.e.x, u_input.e.x, 1u)))), Struct_2(Struct_1(-vec4<i32>(u_input.d.x, u_input.d.x, -1i, 24789i), ~(~var_1.b), var_1.c, min(firstTrailingBit(vec4<i32>(var_1.d.x, -2147483647i, -2147483647i, 19761i)), select(vec4<i32>(var_1.a.x, var_1.a.x, -17570i, -1i), vec4<i32>(2147483647i, -31655i, var_1.a.x, 2147483647i), vec4<bool>(var_1.c, var_1.c, false, var_1.c)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1887f, -180f))))), ~vec3<i32>(reverseBits(-1i), -1i, 2147483647i));
    let var_3 = u_input.e;
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-860f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1937f * -289f)))));
    let var_5 = Struct_3(func_1(Struct_2(var_0, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -565f)))), _wgslsmith_clamp_i32(firstTrailingBit(0i), -2147483647i, _wgslsmith_mod_i32(-2147483647i, var_0.a.x)) << ((_wgslsmith_add_u32(0u, u_input.e.x) | _wgslsmith_mod_u32(var_3.x, var_0.b)) % 32u)).b, var_0, reverseBits(-var_0.d), Struct_2(func_1(Struct_2(func_4(333f, vec4<u32>(0u, var_3.x, 27926u, 4294967295u), Struct_2(Struct_1(vec4<i32>(0i, var_1.d.x, 37785i, var_1.a.x), var_2.x, true, vec4<i32>(var_0.a.x, u_input.a, 2147483647i, var_0.d.x)), -546f), vec3<i32>(u_input.c.x, 62671i, var_1.d.x)), _wgslsmith_f_op_f32(948f * 1772f)), firstLeadingBit(~30743i)), _wgslsmith_f_op_f32(f32(-1f) * -1552f)));
    let x = u_input.a;
    s_output = StorageBuffer(min(44975i, 2147483647i) << (firstLeadingBit(var_0.b) % 32u), var_5.d.b, _wgslsmith_sub_vec4_u32((_wgslsmith_mod_vec4_u32(vec4<u32>(var_0.b, var_1.b, var_1.b, 1u), vec4<u32>(var_1.b, var_3.x, 107907u, var_5.b.b)) << (abs(vec4<u32>(var_2.x, 4294967295u, var_1.b, 4294967295u)) % vec4<u32>(32u))) & vec4<u32>(~1u, _wgslsmith_mod_u32(var_5.a, 1u), _wgslsmith_add_u32(u_input.e.x, 1u), abs(0u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(var_5.d.a.b, 0u, var_1.b >> (var_2.x % 32u), 1u), vec4<u32>(77196u, min(var_5.b.b, var_5.b.b), ~4294967295u, ~var_5.d.a.b), abs(_wgslsmith_mod_vec4_u32(vec4<u32>(43558u, 0u, var_3.x, var_0.b), vec4<u32>(var_2.x, 70439u, var_5.b.b, 44221u))))), ~reverseBits(~abs(vec4<u32>(var_2.x, 22595u, 20681u, var_5.b.b))), ~func_1(var_5.d, 1i & _wgslsmith_div_i32(var_5.c.x, 0i)).b);
}

