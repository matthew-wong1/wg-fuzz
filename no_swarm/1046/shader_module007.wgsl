struct Struct_1 {
    a: vec3<bool>,
    b: vec3<i32>,
    c: vec2<u32>,
    d: vec2<bool>,
    e: f32,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec4<u32>,
    d: vec3<f32>,
}

struct Struct_4 {
    a: vec3<u32>,
    b: Struct_3,
    c: Struct_2,
    d: bool,
    e: f32,
}

struct Struct_5 {
    a: i32,
    b: i32,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
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

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_3) -> f32 {
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_1.d.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(331f, -564f) + _wgslsmith_div_f32(arg_1.d.x, -1479f)) * arg_1.d.x))));
}

fn func_4(arg_0: Struct_3, arg_1: f32) -> vec4<bool> {
    let var_0 = Struct_1(vec3<bool>(all(vec2<bool>(true, all(vec3<bool>(false, true, true)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(430f, arg_1) * 134f) != arg_1, false), _wgslsmith_sub_vec3_i32(arg_0.b.a & abs(select(arg_0.a.a, arg_0.a.a, vec3<bool>(true, false, false))), -arg_0.b.a), ~(abs(vec2<u32>(4294967295u, arg_0.c.x)) << (vec2<u32>(58458u, 1u) % vec2<u32>(32u))) & ((vec2<u32>(arg_0.c.x, 0u) >> ((vec2<u32>(arg_0.c.x, 14332u) ^ vec2<u32>(u_input.a, 12376u)) % vec2<u32>(32u))) | firstLeadingBit(~arg_0.c.yy)), select(vec2<bool>(all(select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false), false)), all(vec2<bool>(true, true))), select(!select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<bool>(true, true), vec2<bool>(true, true)), !any(vec3<bool>(true, true, true))), _wgslsmith_f_op_f32(1267f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-394f, arg_0.d.x)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1 - 694f), -599f))));
    let var_1 = Struct_5(-38845i, _wgslsmith_div_i32(-_wgslsmith_dot_vec3_i32(vec3<i32>(0i, arg_0.b.a.x, var_0.b.x) | var_0.b, ~vec3<i32>(-1i, arg_0.b.a.x, 26411i)), 2147483647i ^ (abs(u_input.b) << ((u_input.a ^ arg_0.c.x) % 32u))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_0.e + -242f))) <= 1000f);
    var var_2 = ~(vec4<i32>(~(i32(-1i) * -1i), var_0.b.x, ~(-17615i), -min(-8228i, arg_0.b.a.x)) << (vec4<u32>(arg_0.c.x, ~var_0.c.x ^ 1u, _wgslsmith_mult_u32(arg_0.c.x | u_input.a, 0u), ~_wgslsmith_dot_vec4_u32(arg_0.c, vec4<u32>(0u, arg_0.c.x, u_input.a, arg_0.c.x))) % vec4<u32>(32u)));
    var var_3 = -1i;
    var_2 = vec4<i32>(~(-_wgslsmith_mod_i32(i32(-1i) * -2147483647i, countOneBits(u_input.b))), _wgslsmith_dot_vec2_i32(select(abs(vec2<i32>(1i, 20073i)), abs(var_2.zx), false), ~vec2<i32>(var_2.x, var_1.a)), max(arg_0.b.a.x, 42439i) >> (21541u % 32u), 10781i);
    return !vec4<bool>(!(!(!var_0.a.x)), var_0.d.x, _wgslsmith_add_i32(-2147483647i, ~u_input.b) == arg_0.b.a.x, all(var_0.d));
}

fn func_2() -> f32 {
    let var_0 = all(func_4(Struct_3(Struct_2(firstTrailingBit(vec3<i32>(1i, 1272i, u_input.b))), Struct_2(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.b, u_input.b, u_input.b), vec3<i32>(u_input.b, 44567i, -13205i))), ~select(vec4<u32>(4294967295u, u_input.a, u_input.a, 4294967295u), vec4<u32>(u_input.a, 4294967295u, 0u, u_input.a), vec4<bool>(false, false, false, true)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-236f, 1054f, -1797f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_3(vec4<bool>(false, true, true, false), Struct_3(Struct_2(vec3<i32>(-12911i, 2147483647i, 1i)), Struct_2(vec3<i32>(-63381i, u_input.b, 40179i)), vec4<u32>(34649u, u_input.a, u_input.a, 0u), vec3<f32>(537f, 766f, -621f)))), -211f)) * _wgslsmith_f_op_f32(func_3(vec4<bool>(true, true, true, true), Struct_3(Struct_2(vec3<i32>(783i, u_input.b, 1376i)), Struct_2(vec3<i32>(u_input.b, u_input.b, 0i)), vec4<u32>(2321u, 14579u, u_input.a, u_input.a), vec3<f32>(-822f, -591f, 487f)))))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1497f));
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(vec2<f32>(-1475f, 754f), vec2<f32>(var_1, var_1))))) * vec2<f32>(var_1, -1102f));
    var_2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -195f)), _wgslsmith_f_op_f32(-var_1));
    var var_3 = -(~_wgslsmith_sub_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(2147483647i, -34487i, -1i), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.b, u_input.b, u_input.b), vec3<i32>(-1i, 2147483647i, u_input.b)), vec3<i32>(-2147483647i, 2147483647i, -45444i)), _wgslsmith_mod_vec3_i32(vec3<i32>(-2147483647i, u_input.b, u_input.b) << (vec3<u32>(0u, u_input.a, u_input.a) % vec3<u32>(32u)), vec3<i32>(u_input.b, -1i, u_input.b))));
    return var_1;
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_2) -> i32 {
    var var_0 = vec2<f32>(1f, 1f);
    var var_1 = true;
    var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - _wgslsmith_f_op_f32(func_2())) - -122f), _wgslsmith_f_op_f32(max(1000f, var_0.x))));
    var var_2 = Struct_3(Struct_2(vec3<i32>(~u_input.b, ~arg_1.a.x, min(1i, 1i >> (u_input.a % 32u)))), Struct_2(~min(arg_1.a, vec3<i32>(-45228i, u_input.b, arg_1.a.x))), abs(vec4<u32>(~abs(u_input.a), 63919u, abs(abs(u_input.a)), u_input.a)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_0.x, 2201f, 1445f), vec3<f32>(-114f, -291f, var_0.x))), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_0.x, var_0.x) * vec3<f32>(138f, -407f, var_0.x)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, 1123f)))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1685f, var_0.x, _wgslsmith_f_op_f32(-301f - var_0.x)))));
    var var_3 = _wgslsmith_sub_u32(abs(abs(max(~u_input.a, 1u))), var_2.c.x);
    return u_input.b;
}

fn func_5(arg_0: u32, arg_1: i32, arg_2: f32) -> Struct_2 {
    var var_0 = vec4<i32>(~0i, -1i, u_input.b, _wgslsmith_mult_i32(-arg_1, u_input.b)) & ~vec4<i32>(arg_1, (u_input.b << (4294967295u % 32u)) >> (~u_input.a % 32u), ~(-1i), u_input.b);
    let var_1 = Struct_2(vec3<i32>(_wgslsmith_sub_i32(select(2979i, ~arg_1, all(vec2<bool>(true, true))), arg_1), ~(-2147483647i), abs(abs(countOneBits(u_input.b)))));
    var_0 = select(vec4<i32>(u_input.b, u_input.b, firstLeadingBit(-_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 7631i, 0i, -58612i), vec4<i32>(var_0.x, -2147483647i, u_input.b, -25089i))), var_0.x), countOneBits(vec4<i32>(0i, -(~(-2147483647i)), arg_1, ~(-44267i))), !all(!func_4(Struct_3(var_1, var_1, vec4<u32>(u_input.a, u_input.a, u_input.a, 1u), vec3<f32>(1000f, arg_2, arg_2)), 1000f).wwz));
    var var_2 = select(func_4(Struct_3(var_1, var_1, ~vec4<u32>(arg_0, 0u, 61189u, 5994u) << (min(vec4<u32>(u_input.a, 1u, arg_0, 38434u), vec4<u32>(u_input.a, 4294967295u, arg_0, 0u)) % vec4<u32>(32u)), vec3<f32>(arg_2, arg_2, _wgslsmith_div_f32(-1407f, 310f))), -312f).zwz, !func_4(Struct_3(Struct_2(vec3<i32>(57757i, var_0.x, var_1.a.x)), var_1, _wgslsmith_add_vec4_u32(vec4<u32>(17729u, u_input.a, 1u, 0u), vec4<u32>(u_input.a, 0u, arg_0, u_input.a)), vec3<f32>(-1000f, -831f, 843f)), arg_2).ywy, true);
    var var_3 = arg_2;
    return Struct_2(vec3<i32>(-2147483647i, abs(firstTrailingBit(var_1.a.x) | -21156i), arg_1));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<i32>(~u_input.b, ~u_input.b) << (firstLeadingBit(firstTrailingBit(~(~vec2<u32>(1u, u_input.a)))) % vec2<u32>(32u));
    var var_1 = func_5(max(~countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(73333u, 1986u), vec2<u32>(4294967295u, 7341u))), _wgslsmith_add_u32(u_input.a, ~(~0u))), _wgslsmith_dot_vec3_i32(vec3<i32>(0i, max(var_0.x, 0i), ~var_0.x) & vec3<i32>(i32(-1i) * -2147483647i, func_1(vec4<bool>(true, true, false, true), Struct_2(vec3<i32>(u_input.b, 14926i, u_input.b))), firstLeadingBit(-18199i)), ~(-vec3<i32>(0i, u_input.b, u_input.b) << (vec3<u32>(u_input.a, 4294967295u, 1u) % vec3<u32>(32u)))), _wgslsmith_f_op_f32(sign(-332f)));
    var var_2 = reverseBits(vec3<i32>(u_input.b, -1i, ~(-2147483647i)));
    var var_3 = 963f;
    let var_4 = _wgslsmith_dot_vec4_i32(-select(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.x, u_input.b, 29584i, u_input.b), vec4<i32>(8620i, u_input.b, 2147483647i, 2147483647i), vec4<i32>(-48748i, 2147483647i, 1i, var_0.x)), vec4<i32>(var_2.x, 1i, -2147483647i, var_2.x) >> (vec4<u32>(u_input.a, 3502u, 31083u, u_input.a) % vec4<u32>(32u)), vec4<bool>(false, true, false, false)) ^ firstTrailingBit(countOneBits(-vec4<i32>(-33705i, 2708i, 0i, 1i))), max(vec4<i32>(1i, abs(-2147483647i), ~(~(-5066i)), 2147483647i), ~(-_wgslsmith_clamp_vec4_i32(vec4<i32>(0i, 39491i, var_1.a.x, var_1.a.x), vec4<i32>(-46831i, u_input.b, var_0.x, var_2.x), vec4<i32>(var_1.a.x, var_0.x, 0i, var_0.x)))));
    var var_5 = Struct_5(var_4, -var_4, _wgslsmith_add_u32(64737u, _wgslsmith_mod_u32(0u >> (1u % 32u), 12672u)) >= firstLeadingBit(~(~u_input.a)));
    var var_6 = var_5.c;
    let var_7 = Struct_1(func_4(Struct_3(func_5(abs(8724u), var_5.a, _wgslsmith_f_op_f32(abs(-771f))), func_5(countOneBits(u_input.a), 0i, -201f), _wgslsmith_mod_vec4_u32(select(vec4<u32>(20060u, u_input.a, u_input.a, 42834u), vec4<u32>(0u, u_input.a, 4294967295u, u_input.a), true), ~vec4<u32>(21385u, u_input.a, u_input.a, u_input.a)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(537f, -1438f, -355f) * vec3<f32>(-177f, -596f, 220f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 408f, 363f)), select(vec3<bool>(false, false, var_5.c), vec3<bool>(var_5.c, false, true), vec3<bool>(var_5.c, true, true))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-254f - -675f)))).zxx, var_1.a, firstTrailingBit(reverseBits(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, 4294967295u) ^ vec2<u32>(4294967295u, u_input.a), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, u_input.a))))), !(!vec2<bool>(any(vec4<bool>(true, true, var_5.c, false)), var_5.c)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(417f, _wgslsmith_f_op_f32(func_3(vec4<bool>(true, var_5.c, var_5.c, var_5.c), Struct_3(Struct_2(var_1.a), Struct_2(vec3<i32>(var_1.a.x, var_1.a.x, 23787i)), vec4<u32>(u_input.a, 4294967295u, u_input.a, u_input.a), vec3<f32>(-307f, 1382f, -1631f))))), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(1135f, 985f), _wgslsmith_f_op_f32(abs(-503f)))))))));
    let x = u_input.a;
    s_output = StorageBuffer(16979u, vec3<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(852f - _wgslsmith_f_op_f32(-var_7.e))), _wgslsmith_f_op_f32(-var_7.e)));
}

