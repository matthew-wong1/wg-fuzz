struct Struct_1 {
    a: f32,
    b: f32,
    c: i32,
    d: i32,
    e: f32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_2, arg_1: u32, arg_2: vec2<i32>, arg_3: u32) -> vec2<f32> {
    let var_0 = ~select(_wgslsmith_sub_vec3_u32(min(vec3<u32>(1u, 1u, 1u), vec3<u32>(4294967295u, arg_0.a, arg_3)), vec3<u32>(arg_1, arg_3, arg_1) ^ vec3<u32>(arg_1, arg_1, arg_0.a)), vec3<u32>(4294967295u, 160122u, 4294967295u), vec3<bool>(false, any(vec2<bool>(true, false)), select(arg_0.a <= 4294967295u, true, true)));
    let var_1 = arg_0.b;
    var var_2 = Struct_1(arg_0.b.e, 2343f, min(_wgslsmith_mult_i32(firstLeadingBit(select(var_1.d, u_input.b.x, true)), 12773i), ~(-29086i ^ var_1.c) >> (select(arg_0.a, 18558u, all(vec3<bool>(false, false, false))) % 32u)), -(~(firstLeadingBit(u_input.c) & ~0i)), _wgslsmith_f_op_f32(f32(-1f) * -218f));
    let var_3 = !(!vec4<bool>(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 0i, 0i, arg_0.b.c), vec4<i32>(21257i, u_input.c, arg_0.b.c, 53714i)) < 33848i, true, true, any(select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true)))));
    let var_4 = arg_0;
    return vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_4.b.b * 2038f) - 103f), _wgslsmith_f_op_f32(floor(-1584f)));
}

fn func_4(arg_0: Struct_2, arg_1: u32, arg_2: i32, arg_3: vec2<f32>) -> i32 {
    let var_0 = _wgslsmith_sub_i32(-18446i, arg_2);
    var var_1 = arg_0;
    var var_2 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_0.b.b * arg_0.b.e))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -234f))), _wgslsmith_div_f32(-876f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1521f - _wgslsmith_f_op_f32(step(-373f, arg_3.x)))), 260f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b.e, _wgslsmith_f_op_f32(abs(-1000f)), _wgslsmith_f_op_f32(-var_1.b.b), _wgslsmith_div_f32(var_1.b.e, 1586f))) * vec4<f32>(var_1.b.b, _wgslsmith_div_f32(652f, _wgslsmith_f_op_f32(arg_3.x * arg_0.b.b)), _wgslsmith_f_op_f32(trunc(arg_3.x)), _wgslsmith_f_op_f32(exp2(arg_0.b.a)))), all(!select(select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true)), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false))))));
    let var_3 = arg_0;
    var var_4 = Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b.e)), _wgslsmith_f_op_f32(max(arg_0.b.e, _wgslsmith_f_op_f32(-var_1.b.b)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_1.b.a)) - _wgslsmith_f_op_f32(-var_1.b.b))), -reverseBits(_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(arg_0.b.d, 1i), vec2<i32>(2147483647i, var_0)), u_input.b.yx)), 14765i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-463f * var_3.b.e)) * -879f));
    return arg_0.b.c;
}

fn func_2(arg_0: vec2<bool>) -> u32 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1545f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -597f), _wgslsmith_f_op_f32(f32(-1f) * -803f)))))), 2147483647i, ~abs(0i) << (select(6091u, 10006u, arg_0.x) % 32u), _wgslsmith_f_op_f32(ceil(-1641f)));
    var_0 = Struct_1(_wgslsmith_f_op_f32(var_0.e - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.b, var_0.e) + _wgslsmith_f_op_f32(846f * -1630f)) - 1368f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(1899f, 470f)), _wgslsmith_f_op_f32(f32(-1f) * -1577f))), func_4(Struct_2(1u, Struct_1(_wgslsmith_f_op_f32(-var_0.e), _wgslsmith_f_op_f32(floor(-1421f)), u_input.c & var_0.d, 1i, -738f)), 13877u, firstLeadingBit(u_input.c) >> (countOneBits(18419u) % 32u), _wgslsmith_f_op_vec2_f32(func_3(Struct_2(26065u, Struct_1(-327f, var_0.e, -2147483647i, 303i, var_0.a)), ~max(4294967295u, 4294967295u), -countOneBits(vec2<i32>(u_input.b.x, -54641i)), _wgslsmith_mult_u32(0u, ~1u)))), abs(min(~2147483647i, min(~u_input.a, ~6503i))), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-1503f, _wgslsmith_div_f32(952f, var_0.a)), _wgslsmith_f_op_f32(512f * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(1000f, -492f)), _wgslsmith_f_op_f32(var_0.b + -198f), all(vec4<bool>(false, arg_0.x, false, arg_0.x))))))));
    let var_1 = select(!select(select(vec2<bool>(arg_0.x, false), arg_0, arg_0), select(select(arg_0, vec2<bool>(arg_0.x, true), arg_0.x), !vec2<bool>(arg_0.x, arg_0.x), arg_0), true), arg_0, all(select(!vec3<bool>(arg_0.x, true, true), select(select(vec3<bool>(true, false, arg_0.x), vec3<bool>(true, arg_0.x, arg_0.x), vec3<bool>(arg_0.x, arg_0.x, arg_0.x)), select(vec3<bool>(arg_0.x, arg_0.x, true), vec3<bool>(true, true, true), vec3<bool>(false, true, arg_0.x)), !arg_0.x), vec3<bool>(true, true, arg_0.x && true))));
    var var_2 = var_0.c;
    let var_3 = -reverseBits(u_input.b.xx);
    return 42645u;
}

fn func_5(arg_0: u32, arg_1: Struct_1, arg_2: f32, arg_3: f32) -> vec2<f32> {
    var var_0 = Struct_1(1180f, arg_1.a, -14184i, 2147483647i, arg_2);
    let var_1 = arg_1.a;
    let var_2 = Struct_2(arg_0, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-856f, _wgslsmith_f_op_f32(-236f * var_0.b))), arg_3, ~(-(~arg_1.d)), _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 0i, arg_1.d, arg_1.d) << (vec4<u32>(arg_0, 5904u, arg_0, 0u) % vec4<u32>(32u)), vec4<i32>(arg_1.d, -516i, -2147483647i, 28385i) >> (vec4<u32>(arg_0, 1u, 0u, 4294967295u) % vec4<u32>(32u))) | abs(reverseBits(-21965i)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -259f))))));
    let var_3 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b.e))))), -1000f, !all(vec4<bool>(any(vec4<bool>(true, false, false, false)), true, all(vec3<bool>(true, false, true)), all(vec3<bool>(false, false, false))))));
    var_0 = Struct_1(arg_3, arg_1.e, var_2.b.c, -_wgslsmith_add_i32(-1i, _wgslsmith_div_i32(-22435i, u_input.c)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_3)) * arg_1.a))));
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_0.a), -759f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1063f, 481f))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-2024f, arg_1.a) * _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2, var_2.b.b) + vec2<f32>(var_1, -1428f))))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(-1000f, var_3)), _wgslsmith_f_op_f32(floor(2467f)), all(vec4<bool>(false, true, false, true)))), -260f)));
}

fn func_1(arg_0: u32, arg_1: vec4<i32>, arg_2: vec3<i32>, arg_3: Struct_1) -> vec4<bool> {
    var var_0 = Struct_1(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-749f + _wgslsmith_f_op_f32(-arg_3.b)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-402f + 399f), 1f)), -394f), arg_3.e, u_input.c, _wgslsmith_mod_i32(13359i, ~2147483647i), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(176f)), 157f)));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_5(~func_2(vec2<bool>(true, true)) << (abs(54265u) % 32u), arg_3, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(-1806f)), -1000f))), -817f)));
    let var_2 = true || (_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b)))) < _wgslsmith_f_op_f32(var_0.a - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1600f)))));
    var var_3 = reverseBits(vec2<u32>(88667u, ~arg_0));
    var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(trunc(-583f)), 1000f) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1351f, -555f), vec2<f32>(-1696f, 1072f), vec2<bool>(false, true))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.e, var_0.e)))))));
    return !(!select(!vec4<bool>(false, true, var_2, var_2), select(select(vec4<bool>(true, false, var_2, var_2), vec4<bool>(true, var_2, false, false), vec4<bool>(var_2, false, true, true)), select(vec4<bool>(true, var_2, true, var_2), vec4<bool>(true, var_2, false, var_2), var_2), vec4<bool>(true, true, true, true)), !vec4<bool>(var_2, var_2, var_2, var_2)));
}

fn func_6(arg_0: vec4<bool>, arg_1: f32) -> vec4<bool> {
    let var_0 = -firstTrailingBit(-7252i);
    let var_1 = Struct_2(1u, Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(f32(-1f) * -208f))), arg_1, ~(countOneBits(u_input.c) & u_input.a), -1i, _wgslsmith_div_f32(arg_1, 213f)));
    var var_2 = countOneBits(_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(~firstLeadingBit(vec2<i32>(var_0, 47184i)), vec2<i32>(2147483647i, -68832i)), ~max(var_0, _wgslsmith_div_i32(u_input.a, -2147483647i))));
    var_2 = var_1.b.d;
    var_2 = u_input.a;
    return vec4<bool>(arg_0.x, false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(818f * _wgslsmith_div_f32(arg_1, arg_1))) >= var_1.b.e, !arg_0.x || arg_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<i32>(firstTrailingBit(~u_input.b.x), ~_wgslsmith_mult_i32(u_input.b.x, ~5665i), min(u_input.b.x, i32(-1i) * -u_input.a), u_input.b.x);
    var var_1 = select(vec4<bool>(false, any(func_6(func_1(43754u, vec4<i32>(-2147483647i, u_input.c, u_input.a, u_input.b.x), vec3<i32>(u_input.b.x, u_input.c, 0i), Struct_1(366f, 1749f, 1i, -1i, -1760f)), _wgslsmith_f_op_f32(max(1435f, 346f)))), any(func_6(func_6(vec4<bool>(true, true, true, true), -983f), -1863f)), false), !select(vec4<bool>(any(vec4<bool>(true, true, true, true)), true, false, true), !func_1(20898u, vec4<i32>(1i, -32168i, u_input.b.x, -1i), vec3<i32>(u_input.b.x, -17771i, 8248i), Struct_1(-279f, 693f, -52563i, 9520i, -130f)), func_6(vec4<bool>(true, true, true, true), -619f)), true);
    var var_2 = var_0.x;
    var var_3 = select(func_1(4294967295u, ~(~vec4<i32>(var_0.x, var_0.x, u_input.b.x, u_input.a)), var_0.ywz, Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-335f, -1786f)), -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1000f))), -countOneBits(-33925i), ~u_input.c, -735f)).x, any(vec4<bool>(true, all(var_1.xxw), !var_1.x != any(vec3<bool>(false, false, false)), var_1.x)), !(!(!(true & var_1.x))));
    let var_4 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -727f)), _wgslsmith_f_op_vec2_f32(func_3(Struct_2(~13693u, Struct_1(1f, -405f, abs(-2147483647i), 0i, -1321f)), 48453u, _wgslsmith_mult_vec2_i32(max(abs(vec2<i32>(u_input.c, var_0.x)), ~vec2<i32>(9251i, u_input.a)), -vec2<i32>(-2147483647i, u_input.b.x)), _wgslsmith_mult_u32(~abs(0u), func_2(var_1.xy)))).x, var_0.x, u_input.b.x, 804f);
    var_1 = select(!vec4<bool>(true, var_1.x, var_1.x, any(select(vec2<bool>(false, var_1.x), vec2<bool>(var_1.x, var_1.x), true))), !func_6(func_1(1u, max(var_0, var_0), var_0.yxw, Struct_1(-711f, var_4.b, u_input.b.x, 0i, var_4.e)), var_4.b), vec4<bool>(false, var_1.x, (u_input.c | var_0.x) != 6627i, var_1.x));
    var_3 = !var_1.x;
    var_2 = ~6798i;
    let x = u_input.a;
    s_output = StorageBuffer(19106u, ~select(abs(~vec4<i32>(1i, var_4.c, var_4.d, -9612i)), vec4<i32>(var_4.d, 44800i, var_4.c, 1i) & (vec4<i32>(-1i, var_4.c, -5845i, var_4.d) ^ var_0), select(!vec4<bool>(var_1.x, true, var_1.x, true), vec4<bool>(false, var_1.x, var_1.x, true), var_1.x)));
}

