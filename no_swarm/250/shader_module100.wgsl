struct Struct_1 {
    a: vec3<bool>,
    b: vec3<bool>,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: i32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_2,
    c: Struct_1,
}

struct Struct_4 {
    a: vec2<f32>,
    b: vec3<i32>,
    c: Struct_3,
    d: vec2<u32>,
    e: Struct_3,
}

struct Struct_5 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> bool {
    var var_0 = Struct_4(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(1685f - 1000f), -1377f) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1481f, 1116f)))), vec3<i32>((-25026i | u_input.b.x) >> (~_wgslsmith_mult_u32(0u, u_input.a) % 32u), u_input.b.x, u_input.b.x), Struct_3(vec3<bool>(false, true & any(vec4<bool>(true, true, false, true)), all(select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true)))), Struct_2(Struct_1(select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, false, false)), vec3<bool>(true, true, true), false), vec4<u32>(43524u, 1u | u_input.a, u_input.a & u_input.a, u_input.a), 21499i), Struct_1(select(select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), true), vec3<bool>(false, false, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), true)), vec2<u32>(_wgslsmith_add_u32(~0u >> (1u % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, 0u, u_input.a), vec4<u32>(u_input.a, 0u, u_input.a, u_input.a))), firstLeadingBit(4294967295u) | (u_input.a << (max(0u, 4294967295u) % 32u))), Struct_3(select(vec3<bool>(true, any(vec3<bool>(true, true, false)), true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), abs(u_input.a) == ~u_input.a), Struct_2(Struct_1(vec3<bool>(true, true, true), vec3<bool>(true, false, false), true), vec4<u32>(reverseBits(u_input.a), 1u, abs(u_input.a), firstTrailingBit(u_input.a)), u_input.b.x), Struct_1(select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false)), vec3<bool>(false, false, false), true), vec3<bool>(true, select(true, true, false), false), true)));
    let var_1 = all(select(!(!vec4<bool>(false, var_0.c.b.a.a.x, true, var_0.e.b.a.c)), vec4<bool>(true, true, true, true), var_0.b.x > _wgslsmith_sub_i32(-1i, u_input.b.x))) == true;
    return any(var_0.c.c.b.zx);
}

fn func_2() -> vec3<i32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(-637f, 953f)), -1351f, _wgslsmith_f_op_f32(f32(-1f) * -1326f), 823f) + _wgslsmith_div_vec4_f32(vec4<f32>(-1000f, -1295f, 513f, -1225f), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1000f, 562f, -910f, -209f)))))));
    let var_1 = Struct_1(vec3<bool>(any(vec3<bool>(true, func_3(), true)), true, select(true || (u_input.b.x > u_input.b.x), true, any(vec3<bool>(true, true, true)))), !select(select(vec3<bool>(false, false, false), select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false)), any(vec4<bool>(false, true, true, false))), vec3<bool>(true, true, true), vec3<bool>(select(false, false, true), all(vec3<bool>(false, true, false)), true)), all(!vec2<bool>(all(vec3<bool>(true, true, false)), true)));
    let var_2 = Struct_2(var_1, vec4<u32>(~abs(~u_input.a), 29088u, ~(~max(3079u, 29418u)), 8222u), 1i);
    var var_3 = min(-u_input.b, vec3<i32>(24922i, -_wgslsmith_dot_vec3_i32(u_input.b, u_input.b), u_input.b.x));
    var var_4 = Struct_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-986f, -716f)) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1609f))), var_0.x))));
    return vec3<i32>(-24812i, u_input.b.x, ~2147483647i ^ -max(_wgslsmith_dot_vec2_i32(var_3.zy, var_3.yx), var_3.x & 45719i));
}

fn func_4(arg_0: vec3<i32>) -> f32 {
    let var_0 = Struct_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(645f, -816f)) + _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-176f, -1021f), vec2<f32>(-1603f, 832f))))) * _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1000f, 1775f)))), vec2<f32>(_wgslsmith_f_op_f32(-1000f + 835f), _wgslsmith_div_f32(823f, -112f))))), abs(_wgslsmith_mod_vec3_i32(vec3<i32>(-59840i, u_input.b.x, _wgslsmith_mod_i32(arg_0.x, -2147483647i)), u_input.b)), Struct_3(vec3<bool>(true, false, any(vec3<bool>(false, true, true))), Struct_2(Struct_1(select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), true), vec3<bool>(true, true, true), true), vec4<u32>(0u ^ u_input.a, u_input.a, ~29943u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 74193u), vec2<u32>(u_input.a, 4294967295u))), -abs(0i)), Struct_1(vec3<bool>(true, true, true), !select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), false), func_3())), vec2<u32>(max(19454u, ~u_input.a), 4294967295u), Struct_3(vec3<bool>(any(vec4<bool>(true, true, false, true)) || true, true, true), Struct_2(Struct_1(vec3<bool>(true, true, false), vec3<bool>(false, true, false), all(vec3<bool>(true, false, false))), vec4<u32>(~u_input.a, ~94612u, 4294967295u, u_input.a), _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, 3184i, arg_0.x), vec4<i32>(arg_0.x, arg_0.x, arg_0.x, -2147483647i)), 25908i)), Struct_1(select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true))), vec3<bool>(true, false, false), any(select(vec2<bool>(true, true), vec2<bool>(false, false), true)))));
    var var_1 = !var_0.e.c.b.x;
    var var_2 = var_0.c.b;
    var_2 = Struct_2(Struct_1(!(!select(vec3<bool>(true, true, var_0.c.a.x), var_2.a.a, vec3<bool>(var_2.a.b.x, var_0.c.c.a.x, var_0.e.c.b.x))), !select(select(vec3<bool>(true, true, false), var_0.e.a, vec3<bool>(var_2.a.a.x, true, var_0.e.a.x)), var_2.a.a, !var_2.a.a), true), ~vec4<u32>(reverseBits(1u ^ var_0.d.x), ~(~u_input.a), ~_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.d.x, 4294967295u), vec2<u32>(1u, u_input.a)), _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, var_2.b.x), var_2.b.zy), var_2.b.x | var_0.c.b.b.x)), _wgslsmith_clamp_i32(u_input.b.x, -43267i, var_2.c >> (~var_0.e.b.b.x % 32u)));
    var_2 = Struct_2(var_0.e.c, vec4<u32>(9276u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 122324u, 4294967295u, u_input.a), var_0.c.b.b ^ vec4<u32>(1u, 0u, var_2.b.x, u_input.a)), ~var_0.c.b.b.x, _wgslsmith_add_u32(var_0.d.x, 4294967295u)) << (~(~var_2.b) % vec4<u32>(32u)), 0i);
    return 607f;
}

fn func_1(arg_0: vec4<u32>, arg_1: u32, arg_2: u32) -> Struct_4 {
    let var_0 = _wgslsmith_f_op_f32(func_4(func_2()));
    var var_1 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1049f, _wgslsmith_f_op_f32(min(var_0, var_0)), _wgslsmith_f_op_f32(min(var_0, -1356f))) - vec3<f32>(_wgslsmith_f_op_f32(913f - -2446f), var_0, -436f)))));
    var var_2 = firstLeadingBit(0i) << (u_input.a % 32u);
    var var_3 = Struct_1(select(!vec3<bool>(true, 21712u > u_input.a, true), vec3<bool>(var_0 != -485f, !(-454f == var_0), false), vec3<bool>(any(vec3<bool>(true, false, true)), _wgslsmith_f_op_f32(sign(-1031f)) != _wgslsmith_f_op_f32(min(var_0, 1155f)), false)), vec3<bool>(all(select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), true)), all(vec4<bool>(any(vec2<bool>(false, true)), any(vec2<bool>(true, true)), true, true)), true), false);
    var var_4 = Struct_2(Struct_1(select(select(var_3.b, var_3.a, vec3<bool>(var_3.b.x, var_3.a.x, true)), var_3.b, any(!var_3.b)), var_3.b, any(var_3.b.yz)), ~abs(~(~arg_0)), u_input.b.x);
    return Struct_4(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0, 522f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(536f)))), u_input.b, Struct_3(select(var_3.b, vec3<bool>(!var_4.a.a.x, u_input.a < 1u, var_4.a.a.x || var_4.a.c), var_4.a.b.x), Struct_2(var_4.a, _wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(arg_0.x, var_4.b.x, 1u, 4294967295u), arg_0), ~vec4<u32>(75420u, 7272u, arg_0.x, u_input.a)), ~u_input.b.x), Struct_1(var_3.a, var_4.a.b, _wgslsmith_mod_u32(arg_2, 5568u) > (var_4.b.x ^ 64324u))), _wgslsmith_mult_vec2_u32(~(~(arg_0.zw ^ arg_0.zx)), ~select(~var_4.b.zy, vec2<u32>(47795u, 0u) >> (arg_0.xy % vec2<u32>(32u)), false)), Struct_3(!select(select(var_3.a, vec3<bool>(var_4.a.c, true, true), true), vec3<bool>(var_3.a.x, var_4.a.c, true), select(vec3<bool>(true, true, var_3.c), vec3<bool>(false, var_4.a.c, var_4.a.a.x), false)), Struct_2(var_4.a, vec4<u32>(12845u, max(1u, 40250u), min(0u, arg_0.x), 15698u), var_4.c), Struct_1(select(var_4.a.a, var_3.b, var_3.b.x & var_4.a.c), select(var_3.b, var_4.a.a, any(vec3<bool>(false, true, var_3.c))), var_3.a.x & all(vec4<bool>(var_3.b.x, true, true, true)))));
}

fn func_5(arg_0: bool, arg_1: Struct_4, arg_2: bool) -> Struct_5 {
    let var_0 = arg_1.b.x;
    var var_1 = arg_1.c.a.x;
    let var_2 = _wgslsmith_f_op_f32(func_4(abs(arg_1.b ^ -vec3<i32>(u_input.b.x, var_0, 1i))));
    var var_3 = arg_1.e.b.b;
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_2, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -129f)))));
    return Struct_5(var_2);
}

fn func_6(arg_0: vec4<f32>, arg_1: vec4<u32>, arg_2: Struct_5, arg_3: bool) -> Struct_5 {
    let var_0 = u_input.b.x;
    var var_1 = _wgslsmith_f_op_f32(abs(360f));
    let var_2 = 1i;
    var_1 = func_1(_wgslsmith_add_vec4_u32(~firstTrailingBit(~vec4<u32>(4294967295u, arg_1.x, u_input.a, u_input.a)), vec4<u32>(arg_1.x, _wgslsmith_mod_u32(~4294967295u, arg_1.x), arg_1.x, min(arg_1.x, arg_1.x) << (~1u % 32u))), 27838u, _wgslsmith_div_u32(arg_1.x ^ 1u, u_input.a)).a.x;
    var_1 = _wgslsmith_f_op_f32(arg_0.x + arg_2.a);
    return func_5(true, func_1(_wgslsmith_div_vec4_u32(vec4<u32>(arg_1.x, arg_1.x, 4294967295u, arg_1.x), arg_1) ^ vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 35630u), vec2<u32>(26243u, 0u)), _wgslsmith_mult_u32(arg_1.x, 95357u), u_input.a | arg_1.x, ~1u), u_input.a, ~_wgslsmith_sub_u32(u_input.a, 1u)), arg_3);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(Struct_1(vec3<bool>(false, false || all(vec3<bool>(true, true, false)), ~u_input.b.x >= -21571i), select(vec3<bool>(true, true, true), !select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, false)), vec3<bool>(true, true, true)), select(true, select(false, false, false), true) & true), select(vec4<u32>(~(~4294967295u), u_input.a, ~u_input.a, abs(u_input.a) << (4294967295u % 32u)), vec4<u32>(0u, _wgslsmith_mod_u32(~u_input.a, 98490u), u_input.a, _wgslsmith_clamp_u32(u_input.a & 85434u, ~u_input.a, u_input.a)), vec4<bool>(true, !all(vec4<bool>(false, false, true, false)), true, false)), 5611i);
    var var_1 = u_input.b.xy;
    var var_2 = (u_input.a <= abs(u_input.a)) & all(var_0.a.b);
    var_1 = u_input.b.xx;
    var var_3 = Struct_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-1432f)), _wgslsmith_f_op_f32(907f * -419f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-257f * 1000f)))));
    let var_4 = -1000f;
    var var_5 = func_6(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.a, 1579f, -835f, -746f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_4, 1242f, var_4, 1394f), vec4<f32>(-329f, var_4, var_4, -969f)))))), var_0.b, func_5(false, func_1(~vec4<u32>(12543u, 2477u, 1u, 1u), 0u, 15633u), any(var_0.a.b.xx)), min(7949u, 1u) != u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-697f + 1138f), _wgslsmith_f_op_f32(-var_3.a)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(570f, var_3.a)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_4, -336f))), vec2<bool>(!var_0.a.a.x, var_0.a.a.x))))));
}

