struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: bool,
    d: Struct_1,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: vec3<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec3<u32> {
    var var_0 = vec4<u32>(~firstLeadingBit(63723u), 1u, 23366u, u_input.c.x);
    var var_1 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(558f, -559f, -702f, 1794f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-2303f, -753f, 525f, 851f) - vec4<f32>(609f, 887f, -1000f, -1000f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1000f, 485f, -1012f, 731f), vec4<f32>(1167f, -142f, 981f, 1244f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -1177f, 250f, -1003f)))) + vec4<f32>(1f, _wgslsmith_div_f32(-1000f, 391f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(148f + -480f))), _wgslsmith_f_op_f32(round(-303f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(700f, 1585f, 408f, 673f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-716f, 1654f, -580f, -306f)))))));
    var_1 = vec4<f32>(var_1.x, 1067f, var_1.x, -1374f);
    let var_2 = select(vec4<bool>(false, true, true, (firstLeadingBit(u_input.d.x) | -2147483647i) <= u_input.a), select(vec4<bool>(true && (var_1.x != 1640f), countOneBits(u_input.e.x) >= 4294967295u, false, true), select(vec4<bool>(true, any(vec2<bool>(true, true)), true, all(vec2<bool>(true, true))), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, false), true), true)), vec4<bool>(any(select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, false))), true, any(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false))), all(vec4<bool>(true, true, true, true)))), any(!select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true)), any(vec3<bool>(true, true, false)))));
    var var_3 = Struct_2(Struct_1(var_1.x), vec3<i32>(-_wgslsmith_div_i32(u_input.d.x, -1i), -1i, -31010i), var_2.x | all(var_2.xxy), Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-272f + -490f), _wgslsmith_f_op_f32(-var_1.x))))), _wgslsmith_mod_vec4_i32(vec4<i32>(1i, u_input.b, ~(~u_input.b), -21608i), ~vec4<i32>(u_input.b, u_input.b >> (u_input.e.x % 32u), ~u_input.d.x, reverseBits(-18167i))));
    return ~(~firstLeadingBit(var_0.yxx));
}

fn func_2() -> u32 {
    let var_0 = abs((func_3() & vec3<u32>(~u_input.e.x, u_input.e.x << (4294967295u % 32u), 0u)) | vec3<u32>(72711u, ~abs(u_input.c.x), u_input.e.x));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(185f, -2177f)), 839f) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(715f, -1216f)))))));
    var var_2 = vec4<bool>(true, true, true, select(!(_wgslsmith_f_op_f32(var_1.a + -551f) < var_1.a), true, -3857i > u_input.b));
    let var_3 = firstLeadingBit(u_input.d);
    var var_4 = Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(var_1.a))))), 1000f)));
    return 0u;
}

fn func_1(arg_0: i32, arg_1: vec2<i32>) -> Struct_1 {
    var var_0 = _wgslsmith_mult_vec2_u32(vec2<u32>(~(~4294967295u), _wgslsmith_mult_u32(func_2(), u_input.e.x)), vec2<u32>(u_input.c.x, 4294967295u));
    let var_1 = Struct_2(Struct_1(-2073f), ~vec3<i32>((arg_1.x << (var_0.x % 32u)) | -arg_1.x, ~u_input.d.x, reverseBits(60893i)), !all(vec3<bool>(true, true, true)), Struct_1(_wgslsmith_f_op_f32(390f + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1103f + 1000f))))), firstTrailingBit(_wgslsmith_add_vec4_i32(_wgslsmith_sub_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(0i, u_input.b, u_input.a, -13964i), vec4<i32>(u_input.a, 100324i, 0i, -2657i), vec4<i32>(u_input.a, arg_0, arg_0, -7134i)), vec4<i32>(-10040i, -67910i, 26068i, u_input.b)), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a, 0i, -29359i, 2147483647i), vec4<i32>(11093i, 1i, 2147483647i, -1i), vec4<i32>(-2147483647i, -1i, -2147483647i, arg_1.x)) & vec4<i32>(-25911i, 2147483647i, u_input.a, -1i))));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_1.a.a)) - -1000f)))));
    let var_3 = -169f;
    let var_4 = Struct_2(Struct_1(_wgslsmith_div_f32(-1760f, var_2.a)), vec3<i32>(1i, _wgslsmith_clamp_i32(select(_wgslsmith_dot_vec2_i32(vec2<i32>(12624i, -2147483647i), vec2<i32>(55444i, u_input.d.x)), 1i, var_1.c), u_input.d.x << (_wgslsmith_div_u32(14317u, 8563u) % 32u), 48299i), -(~arg_0)), var_0.x > 1u, var_1.a, ~vec4<i32>(-1i, u_input.b, _wgslsmith_sub_i32(18311i ^ arg_0, 1i), abs(-arg_1.x)));
    return var_1.d;
}

fn func_4(arg_0: f32, arg_1: Struct_2) -> Struct_2 {
    let var_0 = 1194f;
    var var_1 = _wgslsmith_dot_vec4_u32(vec4<u32>(71971u, ~reverseBits(~u_input.e.x), 1u, 1u), ~(~(~vec4<u32>(60356u, 1u, 2752u, u_input.c.x))));
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(exp2(var_0)))), _wgslsmith_f_op_f32(arg_0 - var_0), _wgslsmith_div_f32(_wgslsmith_div_f32(-429f, arg_1.a.a), _wgslsmith_f_op_f32(trunc(628f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(533f * arg_0))), 1659f));
    var_1 = 4294967295u << (~_wgslsmith_div_u32(~(~u_input.e.x), ~(~u_input.e.x)) % 32u);
    var var_3 = ~((_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.c.x, u_input.e.x), _wgslsmith_mult_vec2_u32(u_input.e.yz, vec2<u32>(9536u, u_input.c.x))) << (abs(u_input.c.xx) % vec2<u32>(32u))) ^ ((select(vec2<u32>(u_input.e.x, u_input.c.x), vec2<u32>(1u, 0u), arg_1.c) << (min(vec2<u32>(u_input.e.x, u_input.c.x), u_input.e.yy) % vec2<u32>(32u))) | _wgslsmith_mod_vec2_u32(min(u_input.c.yy, vec2<u32>(u_input.e.x, u_input.c.x)), ~vec2<u32>(0u, 39786u))));
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -1i > _wgslsmith_mult_i32(_wgslsmith_mod_i32(_wgslsmith_mod_i32(u_input.a, u_input.b) | ~(-2147483647i), ~_wgslsmith_dot_vec2_i32(vec2<i32>(-15550i, -2147483647i), u_input.d.xx)), ~(~u_input.b >> (~22013u % 32u)));
    var var_1 = -u_input.d;
    let var_2 = func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-737f, -223f))))), Struct_2(func_1(-var_1.x, u_input.d.zx), u_input.d, all(vec3<bool>(var_0, true, true)), func_1(1i, u_input.d.zz), vec4<i32>(41598i, max(var_1.x, -2147483647i) >> ((u_input.e.x >> (u_input.c.x % 32u)) % 32u), -abs(-17487i), var_1.x)));
    var var_3 = true;
    let var_4 = var_2.a;
    let var_5 = firstLeadingBit(u_input.c.yy);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(select(~4355u, ~var_5.x, var_2.c), countOneBits(_wgslsmith_mult_u32(u_input.c.x, 0u)), var_5.x, 29020u) & vec4<u32>(1u, ~37337u >> (0u % 32u), 0u, ~var_5.x), vec2<i32>(reverseBits(select(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, 2147483647i), var_2.b.yz), _wgslsmith_clamp_i32(-2147483647i, 2147483647i, -24832i), all(vec4<bool>(var_2.c, var_2.c, true, false)))), var_1.x));
}

