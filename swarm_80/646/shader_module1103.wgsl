struct Struct_1 {
    a: vec3<i32>,
    b: f32,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: u32) -> u32 {
    var var_0 = Struct_1(abs(vec3<i32>(~8291i, -8387i, ~(-63307i))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1392f * _wgslsmith_f_op_f32(ceil(-783f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-787f, 1287f) + _wgslsmith_f_op_f32(1445f * 1017f))), true)), vec2<i32>(-1i, _wgslsmith_add_i32(0i, _wgslsmith_dot_vec4_i32(abs(vec4<i32>(35011i, -1i, 1i, 0i)), _wgslsmith_div_vec4_i32(vec4<i32>(63884i, 30135i, -46687i, -4894i), vec4<i32>(65175i, 1i, -2147483647i, -59558i))))));
    var_0 = Struct_1(var_0.a, -165f, vec2<i32>(-1i, -countOneBits(_wgslsmith_div_i32(-26007i, var_0.c.x))));
    var_0 = Struct_1(vec3<i32>(2147483647i, var_0.a.x >> ((~6536u >> (u_input.b % 32u)) % 32u), var_0.c.x), _wgslsmith_f_op_f32(-1495f * 1575f), reverseBits(var_0.a.yy));
    let var_1 = select(var_0.a.yx, select(_wgslsmith_clamp_vec2_i32(var_0.a.yx, var_0.a.xz, vec2<i32>(0i, var_0.c.x)) << (vec2<u32>(arg_0, 28431u) % vec2<u32>(32u)), select(vec2<i32>(35901i, var_0.a.x), vec2<i32>(2147483647i, var_0.c.x), true), true), true) ^ vec2<i32>(_wgslsmith_sub_i32(-var_0.a.x, var_0.c.x >> (~1u % 32u)), countOneBits(_wgslsmith_div_i32(var_0.a.x, var_0.c.x)));
    var var_2 = Struct_1(var_0.a, var_0.b, (vec2<i32>(var_1.x, var_0.a.x) & abs(reverseBits(var_1))) & _wgslsmith_div_vec2_i32(vec2<i32>(var_1.x, var_1.x), -vec2<i32>(var_1.x, -1i)));
    return ~25976u;
}

fn func_4(arg_0: bool) -> vec2<i32> {
    var var_0 = _wgslsmith_sub_vec3_i32(vec3<i32>(firstLeadingBit(_wgslsmith_sub_i32(max(0i, 2147483647i), max(-2147483647i, 3752i))), 1i, 76991i), vec3<i32>(_wgslsmith_dot_vec3_i32(~(~vec3<i32>(-27323i, -45191i, 1i)), vec3<i32>(-2147483647i, reverseBits(-2147483647i), i32(-1i) * -23348i)), i32(-1i) * -1i, -reverseBits(~(-2147483647i))));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(960f)), _wgslsmith_div_f32(839f, -1338f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -123f)))) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(-638f))))))));
    let var_2 = func_3(u_input.a);
    let var_3 = Struct_1(_wgslsmith_clamp_vec3_i32(vec3<i32>(-1i) * -_wgslsmith_sub_vec3_i32(vec3<i32>(43408i, var_0.x, 0i), vec3<i32>(-1i, 4837i, 1i)), vec3<i32>(var_0.x, -(1219i ^ var_0.x), -23800i), -_wgslsmith_mult_vec3_i32(vec3<i32>(var_0.x, var_0.x, 6775i) >> (vec3<u32>(4294967295u, 72851u, 4294967295u) % vec3<u32>(32u)), ~vec3<i32>(-39420i, -1i, -36262i))), 1133f, firstTrailingBit(firstTrailingBit(_wgslsmith_sub_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(var_0.x, var_0.x), vec2<i32>(var_0.x, -72613i)), ~vec2<i32>(var_0.x, 1i)))));
    let var_4 = Struct_1(~(~(~vec3<i32>(var_0.x, -2147483647i, 0i))) | ~(~vec3<i32>(var_0.x, 26880i, var_0.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(var_1, _wgslsmith_f_op_f32(trunc(var_1))))), ~firstTrailingBit(_wgslsmith_clamp_vec2_i32(vec2<i32>(153i, 0i), _wgslsmith_sub_vec2_i32(var_3.a.yx, var_3.c), -var_0.zz)));
    return ~vec2<i32>(2147483647i, -(~1i));
}

fn func_2(arg_0: u32) -> Struct_1 {
    var var_0 = func_4(!(~func_3(arg_0) == (~4294967295u & u_input.b)));
    var var_1 = vec3<i32>(1i, var_0.x, var_0.x);
    var var_2 = -_wgslsmith_mult_vec4_i32(_wgslsmith_clamp_vec4_i32(countOneBits(vec4<i32>(var_0.x, -59846i, 52141i, var_1.x)), _wgslsmith_clamp_vec4_i32(reverseBits(vec4<i32>(var_1.x, var_0.x, 0i, 11661i)), reverseBits(vec4<i32>(var_1.x, 23607i, var_1.x, var_0.x)), max(vec4<i32>(var_1.x, var_1.x, 13434i, var_0.x), vec4<i32>(8212i, var_0.x, -2147483647i, -1i))), vec4<i32>(var_1.x, var_1.x, var_1.x, 9454i) | vec4<i32>(var_0.x, 0i, -50763i, -52546i)), ~(~firstTrailingBit(vec4<i32>(var_1.x, var_0.x, 15230i, -14721i))));
    var_2 = abs(_wgslsmith_clamp_vec4_i32(abs(vec4<i32>(-46590i, var_0.x, var_1.x, -62284i)), vec4<i32>(0i, var_1.x, -10259i, -1i), vec4<i32>(_wgslsmith_mod_i32(-34494i, 71882i), 42309i, abs(-17365i), _wgslsmith_sub_i32(-3879i, var_2.x))) | ((abs(vec4<i32>(var_1.x, -58548i, -55708i, 684i)) & _wgslsmith_mult_vec4_i32(vec4<i32>(1i, -34830i, 0i, var_2.x), vec4<i32>(var_1.x, var_1.x, 24816i, 0i))) | abs(vec4<i32>(var_0.x, var_1.x, var_2.x, 60406i))));
    let var_3 = Struct_1(vec3<i32>(countOneBits(var_0.x ^ 14870i) | abs(-1743i >> (u_input.a % 32u)), 0i << (~u_input.b % 32u), _wgslsmith_add_i32(-5525i | abs(var_2.x), 2147483647i)), -294f, _wgslsmith_mult_vec2_i32(vec2<i32>(-1i) * -countOneBits(vec2<i32>(2147483647i, var_2.x)), countOneBits(vec2<i32>(-65482i >> (arg_0 % 32u), ~28284i))));
    return var_3;
}

fn func_5(arg_0: vec2<f32>, arg_1: Struct_1) -> Struct_1 {
    let var_0 = Struct_1(vec3<i32>(select(i32(-1i) * -2147483647i, 1i, true), ~_wgslsmith_clamp_i32(2147483647i, 0i, arg_1.c.x), arg_1.c.x | ~(-26225i << (u_input.b % 32u))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1415f))), _wgslsmith_mod_vec2_i32(firstLeadingBit(_wgslsmith_mult_vec2_i32(func_2(4294967295u).a.yy, arg_1.c)), _wgslsmith_clamp_vec2_i32(abs(arg_1.a.yy >> (vec2<u32>(1u, 33053u) % vec2<u32>(32u))), arg_1.a.zx, vec2<i32>(arg_1.a.x >> (u_input.a % 32u), abs(arg_1.c.x)))));
    var var_1 = Struct_1(_wgslsmith_mult_vec3_i32(arg_1.a, -(~(~arg_1.a))), -603f, -(~max(-vec2<i32>(arg_1.a.x, 1i), arg_1.a.yy)));
    let var_2 = var_0;
    let var_3 = func_2(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(countOneBits(1582u), func_3(u_input.a), ~u_input.a, _wgslsmith_add_u32(u_input.a, 1u)), (vec4<u32>(4294967295u, 4294967295u, u_input.a, u_input.a) >> (vec4<u32>(4294967295u, u_input.a, u_input.b, u_input.a) % vec4<u32>(32u))) | min(vec4<u32>(u_input.b, u_input.a, 24372u, 6149u), vec4<u32>(0u, 2793u, 18287u, 4294967295u))), 93508u)).b;
    var_1 = func_2(firstLeadingBit(~select(u_input.a, 1u, true) >> (41796u % 32u)));
    return var_0;
}

fn func_1(arg_0: vec3<bool>, arg_1: Struct_1) -> Struct_1 {
    let var_0 = arg_1;
    var var_1 = var_0;
    var var_2 = func_5(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b, arg_1.b)))) + vec2<f32>(_wgslsmith_div_f32(337f, -1041f), -1124f)) + _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-278f, _wgslsmith_f_op_f32(-var_1.b)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(638f, arg_1.b))) * vec2<f32>(1f, 1f))))), func_2(~84783u));
    var_1 = func_2(_wgslsmith_sub_u32(24599u, 1u));
    var_2 = arg_1;
    return Struct_1(var_2.a, arg_1.b, vec2<i32>(var_0.a.x, _wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(var_2.a.x, 0i, var_0.c.x) | var_2.a), vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, -20905i, -3553i), var_0.a), 0i, ~1i))));
}

fn func_6(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec3<i32>) -> f32 {
    var var_0 = firstLeadingBit(-(~select(arg_1.a.xx, vec2<i32>(arg_3.x, arg_3.x), vec2<bool>(true, true))));
    let var_1 = arg_1;
    var_0 = abs(_wgslsmith_add_vec2_i32(countOneBits(arg_2.a.xz) << ((_wgslsmith_add_vec2_u32(vec2<u32>(u_input.b, 0u), vec2<u32>(4294967295u, 0u)) << (vec2<u32>(33026u, u_input.a) % vec2<u32>(32u))) % vec2<u32>(32u)), var_1.a.xz));
    var_0 = var_1.c;
    let var_2 = vec2<bool>(any(!vec3<bool>(all(vec2<bool>(true, false)), all(vec4<bool>(false, true, true, false)), true)), true);
    return arg_1.b;
}

fn func_7(arg_0: Struct_1, arg_1: Struct_1) -> f32 {
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.b)), arg_0.b));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(vec3<i32>(-6791i, _wgslsmith_div_i32(~(-18776i), ~1i), ~firstTrailingBit(1i)), _wgslsmith_f_op_f32(func_7(Struct_1(vec3<i32>(i32(-1i) * -31979i, -10834i, i32(-1i) * -26045i), -1947f, vec2<i32>(41897i, reverseBits(-2147483647i))), Struct_1(vec3<i32>(1i, 1i, 1i), _wgslsmith_f_op_f32(func_6(u_input.b, Struct_1(vec3<i32>(1i, 1i, -1i), 1000f, vec2<i32>(0i, 2147483647i)), func_1(vec3<bool>(false, true, true), Struct_1(vec3<i32>(1573i, -1i, -1i), -1000f, vec2<i32>(-6583i, -12142i))), -vec3<i32>(1i, 0i, 5137i))), vec2<i32>(~(-2147483647i), abs(1i))))), vec2<i32>(21402i, func_4(true).x));
    var var_1 = var_0.c.x;
    var_1 = ~1i;
    var var_2 = func_2(~(~_wgslsmith_mult_u32(u_input.b, u_input.a) >> (~u_input.a % 32u)));
    var_2 = var_0;
    var_2 = Struct_1(_wgslsmith_mod_vec3_i32(-(~var_0.a), ~(countOneBits(var_0.a) << ((vec3<u32>(4294967295u, 102757u, u_input.b) | vec3<u32>(u_input.b, u_input.a, u_input.a)) % vec3<u32>(32u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b)), (var_0.a.zy | vec2<i32>(~var_0.a.x, _wgslsmith_sub_i32(var_0.a.x, -1i))) | var_2.c);
    var var_3 = select(u_input.a, 81209u, !(!(!(-298f > var_2.b))));
    let var_4 = var_0.c.x;
    var var_5 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(var_5.c.x >> (~0u % 32u), u_input.a, vec4<i32>(-1i, -12708i, i32(-1i) * -42591i, ~(35955i | func_5(vec2<f32>(1409f, -741f), var_0).a.x)), ~reverseBits(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 29966u, 4294967295u, 12581u), vec4<u32>(u_input.a, u_input.b, 1u, u_input.b))));
}

