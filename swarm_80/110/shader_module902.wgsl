struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: i32,
    d: u32,
    e: bool,
}

struct Struct_2 {
    a: u32,
    b: vec3<i32>,
    c: i32,
    d: f32,
    e: u32,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_1,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: Struct_1,
    b: vec2<i32>,
    c: vec2<f32>,
    d: Struct_1,
    e: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: Struct_4, arg_3: Struct_5) -> u32 {
    var var_0 = arg_3;
    var_0 = Struct_5(Struct_1(-36627i, firstTrailingBit(_wgslsmith_div_vec4_i32(arg_0.b << (vec4<u32>(var_0.a.d, arg_3.a.d, 77778u, 0u) % vec4<u32>(32u)), vec4<i32>(var_0.d.c, 79969i, var_0.b.x, var_0.d.c))), 1i, _wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 1u, arg_0.d, arg_3.a.d), vec4<u32>(~0u, 0u, 66920u, ~arg_0.d)), arg_1), vec2<i32>(906i, ~_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-42497i, 2147483647i, arg_3.a.a, 4568i), arg_3.a.b), vec4<i32>(arg_3.b.x, -2147483647i, 31798i, -2147483647i) & var_0.a.b)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_0.c.x, arg_3.c.x)) - _wgslsmith_div_f32(arg_3.c.x, -572f)), _wgslsmith_f_op_f32(f32(-1f) * -322f)))), Struct_1(_wgslsmith_mult_i32(var_0.a.c, arg_0.a), arg_3.d.b, 77212i, abs(firstTrailingBit(arg_0.d << (var_0.a.d % 32u))), all(select(vec2<bool>(true, false), select(vec2<bool>(true, var_0.d.e), vec2<bool>(arg_0.e, true), arg_1), false))), var_0.d.e);
    var_0 = arg_3;
    var_0 = arg_3;
    let var_1 = Struct_2(firstLeadingBit(_wgslsmith_mod_u32(7479u, 282u)), _wgslsmith_sub_vec3_i32(vec3<i32>(arg_0.b.x, -22597i, _wgslsmith_add_i32(-arg_0.b.x, arg_3.d.a)), arg_0.b.wzy), _wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(~var_0.b.x, arg_0.c, _wgslsmith_dot_vec3_i32(arg_3.a.b.wzx, var_0.d.b.xzz), -var_0.a.b.x), max(arg_3.a.b, countOneBits(arg_0.b))), -_wgslsmith_div_i32(max(0i, var_0.b.x), 16214i), _wgslsmith_sub_i32(1455i, ~(-16395i))), var_0.c.x, _wgslsmith_sub_u32(abs(arg_3.a.d), countOneBits(~max(u_input.a, arg_0.d))));
    return _wgslsmith_clamp_u32(var_1.e, 41314u, ~0u) | firstLeadingBit(var_1.e);
}

fn func_2() -> vec4<i32> {
    var var_0 = Struct_4(_wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(u_input.a, 0u)) << (vec2<u32>(1u, 1u) % vec2<u32>(32u)), ~select(vec2<u32>(4294967295u, 8591u), vec2<u32>(1u, 4294967295u), false) << (_wgslsmith_sub_vec2_u32(max(vec2<u32>(4294967295u, 7469u), vec2<u32>(u_input.a, 1u)), vec2<u32>(64023u, 4294967295u) & vec2<u32>(4294967295u, u_input.a)) % vec2<u32>(32u))));
    var_0 = Struct_4(u_input.a & 0u);
    let var_1 = Struct_5(Struct_1(_wgslsmith_dot_vec2_i32(~vec2<i32>(1i, 2147483647i), vec2<i32>(-21781i, -39204i)) & select(~(-11936i), select(2147483647i, -38667i, true), select(false, true, true)), ~abs(vec4<i32>(30387i, 10884i, 0i, -10501i)), -_wgslsmith_div_i32(firstLeadingBit(2147483647i), firstTrailingBit(2147483647i)), ~func_3(Struct_1(-9270i, vec4<i32>(-1i, -24882i, 2147483647i, -10395i), -24581i, u_input.a, false), all(vec2<bool>(false, true)), Struct_4(var_0.a), Struct_5(Struct_1(3311i, vec4<i32>(0i, 2147483647i, -5316i, 2147483647i), -30956i, 37553u, true), vec2<i32>(-16716i, -39271i), vec2<f32>(715f, 543f), Struct_1(-74736i, vec4<i32>(0i, 22423i, 2147483647i, 12095i), -47449i, 16617u, false), false)), true), -vec2<i32>(abs(1i), 1i), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(768f + -270f) * 1142f), _wgslsmith_f_op_f32(-1070f * 749f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(224f, -1000f), vec2<f32>(1026f, 270f))))), Struct_1(countOneBits(11805i), -(~(~vec4<i32>(-48432i, 78320i, -5616i, -1i))), _wgslsmith_mod_i32(_wgslsmith_mult_i32(i32(-1i) * -41386i, _wgslsmith_dot_vec3_i32(vec3<i32>(0i, 0i, -1i), vec3<i32>(25501i, 2196i, -1i))), 1i), 115810u, false), true);
    return var_1.a.b;
}

fn func_1(arg_0: bool) -> Struct_5 {
    var var_0 = ~2147483647i;
    let var_1 = func_2();
    var_0 = -((_wgslsmith_mod_i32(min(18243i, var_1.x), -var_1.x) | ~var_1.x) | -1i);
    let var_2 = !select(select(vec3<bool>(arg_0, -15132i <= var_1.x, select(false, arg_0, false)), !vec3<bool>(arg_0, arg_0, arg_0), true), vec3<bool>(arg_0, u_input.a >= ~u_input.a, !arg_0), arg_0);
    return Struct_5(Struct_1(-var_1.x, var_1, var_1.x, ~(~abs(u_input.a)), false), vec2<i32>(_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(var_1.zw, vec2<i32>(var_1.x, 0i)), var_1.zw), 84054i), select(-2864i, abs(var_1.x), arg_0)), vec2<f32>(_wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(-1f))), 2383f), Struct_1(78372i, ~(vec4<i32>(-1i) * -var_1), 0i, abs(~u_input.a) | ~(~u_input.a), var_1.x <= ~(i32(-1i) * -8299i)), all(vec4<bool>(all(var_2.yz), all(vec4<bool>(false, true, false, true)), true, ~u_input.a == (34858u << (1u % 32u)))));
}

fn func_4(arg_0: Struct_5, arg_1: vec2<u32>, arg_2: vec3<u32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.c.x) - arg_0.c.x), _wgslsmith_f_op_f32(abs(-988f))))));
    let var_1 = Struct_4(1u);
    let var_2 = ~(~reverseBits(min(vec4<u32>(1u, u_input.a, 53923u, var_1.a) ^ vec4<u32>(87833u, arg_2.x, 8624u, 4294967295u), ~vec4<u32>(arg_2.x, 0u, 18940u, arg_1.x))));
    let var_3 = _wgslsmith_add_vec4_i32(vec4<i32>(-61556i << (func_3(arg_0.a, arg_0.e, Struct_4(23154u), arg_0) % 32u), 36648i | -_wgslsmith_dot_vec4_i32(arg_0.a.b, vec4<i32>(1i, arg_0.a.c, -1i, arg_0.b.x)), ~(~(~arg_0.b.x)), _wgslsmith_mult_i32(arg_0.b.x, _wgslsmith_dot_vec3_i32(-vec3<i32>(1i, 1i, arg_0.a.b.x), vec3<i32>(38722i, 0i, 0i)))), func_1(any(select(select(vec3<bool>(arg_0.d.e, arg_0.a.e, arg_0.e), vec3<bool>(arg_0.a.e, arg_0.a.e, false), false), vec3<bool>(true, true, true), 4294967295u == var_1.a))).d.b);
    var_0 = -780f;
    return func_1(select(any(vec2<bool>(true, arg_0.d.e)), arg_0.a.e, arg_0.a.e)).a;
}

fn func_5(arg_0: Struct_5, arg_1: i32) -> vec2<bool> {
    var var_0 = Struct_1(arg_1, ~(-vec4<i32>(arg_1, 32950i, arg_0.d.b.x, 38788i)) & (vec4<i32>(~31118i, ~(-29234i), arg_0.d.a, 2147483647i) & ~(vec4<i32>(1i, arg_1, arg_0.b.x, -41380i) ^ arg_0.d.b)), func_1(!arg_0.e & all(select(vec3<bool>(arg_0.d.e, arg_0.d.e, true), vec3<bool>(arg_0.a.e, arg_0.d.e, arg_0.a.e), arg_0.a.e))).d.b.x, func_1(arg_0.e).a.d, arg_0.d.e);
    var_0 = arg_0.a;
    var_0 = Struct_1(arg_0.b.x, -func_1(0u > arg_0.d.d).a.b, 0i, ~var_0.d, true);
    var var_1 = arg_0.d;
    let var_2 = Struct_2(func_4(arg_0, vec2<u32>(arg_0.a.d, var_1.d), firstLeadingBit(min(_wgslsmith_clamp_vec3_u32(vec3<u32>(8315u, 23173u, var_1.d), vec3<u32>(u_input.a, 74563u, 15777u), vec3<u32>(arg_0.d.d, arg_0.a.d, var_1.d)), select(vec3<u32>(arg_0.d.d, var_1.d, 103505u), vec3<u32>(var_0.d, 1u, arg_0.a.d), true)))).d, var_0.b.yxy, 2147483647i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -456f))), ~(~abs(func_3(Struct_1(-2147483647i, var_1.b, 0i, u_input.a, arg_0.d.e), var_1.e, Struct_4(63463u), Struct_5(Struct_1(10597i, vec4<i32>(var_0.b.x, 38083i, -42338i, var_0.c), 0i, 0u, false), arg_0.d.b.wy, arg_0.c, Struct_1(arg_1, var_1.b, 6035i, var_0.d, false), var_0.e)))));
    return !select(!vec2<bool>(!var_0.e, arg_0.d.e), !select(select(vec2<bool>(false, var_0.e), vec2<bool>(false, var_1.e), vec2<bool>(var_0.e, arg_0.e)), !vec2<bool>(true, var_0.e), any(vec2<bool>(arg_0.a.e, true))), vec2<bool>(true, var_1.e));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = all(func_5(Struct_5(Struct_1(_wgslsmith_dot_vec3_i32(vec3<i32>(-17691i, -2147483647i, -1i), vec3<i32>(-96307i, -2147483647i, -2147483647i)), firstLeadingBit(vec4<i32>(0i, -33858i, 1i, 10559i)), 1i, u_input.a, false), -vec2<i32>(-1i, 38952i), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-896f, -631f))), func_4(func_1(false), vec2<u32>(64021u, 4421u) >> (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u)), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, u_input.a, 91564u), vec3<u32>(4294967295u, u_input.a, u_input.a))), false), 11490i));
    var var_1 = Struct_3(vec3<f32>(_wgslsmith_div_f32(-274f, -1206f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1374f))))), -1000f), Struct_1(_wgslsmith_clamp_i32(func_1(var_0).a.a, select(-11865i, ~(-38854i), var_0), -2147483647i), func_1(true | any(vec4<bool>(var_0, var_0, var_0, var_0))).d.b, 1i << (u_input.a % 32u), firstLeadingBit(u_input.a), all(vec3<bool>(true, false, func_1(var_0).d.e))));
    var var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.a.x, var_1.a.x) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_1.a.x, var_1.a.x), vec2<f32>(var_1.a.x, var_1.a.x), vec2<bool>(var_1.b.e, false))) + _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1535f, -343f), var_1.a.yx))) * vec2<f32>(var_1.a.x, -355f)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a.x, var_1.a.x)) - _wgslsmith_f_op_vec2_f32(trunc(var_1.a.xy)))));
    var var_3 = var_1.a.x;
    let var_4 = countOneBits(firstLeadingBit(_wgslsmith_mult_vec4_i32(reverseBits(var_1.b.b), max(vec4<i32>(12898i, var_1.b.b.x, var_1.b.a, var_1.b.a), var_1.b.b) | select(var_1.b.b, vec4<i32>(18820i, -30701i, var_1.b.c, var_1.b.a), vec4<bool>(var_0, true, false, false)))));
    var var_5 = Struct_4(~_wgslsmith_mod_u32(_wgslsmith_clamp_u32(0u, var_1.b.d, 0u) | _wgslsmith_div_u32(19708u, 18707u), _wgslsmith_mod_u32(_wgslsmith_div_u32(u_input.a, 0u), u_input.a & 4294967295u)));
    let var_6 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a.x + var_1.a.x) * _wgslsmith_f_op_f32(-var_2.x)), _wgslsmith_f_op_f32(abs(var_1.a.x)), _wgslsmith_div_f32(404f, _wgslsmith_f_op_f32(round(var_2.x))), _wgslsmith_f_op_f32(-var_2.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(~15223u, func_1(var_1.b.e).a.b.x);
}

