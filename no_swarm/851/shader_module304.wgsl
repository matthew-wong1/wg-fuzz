struct Struct_1 {
    a: bool,
    b: i32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: bool,
    c: Struct_1,
    d: Struct_1,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec2<i32>,
    d: u32,
    e: vec4<i32>,
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

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: i32, arg_1: Struct_2) -> f32 {
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -643f) + arg_1.e) * 852f));
}

fn func_2(arg_0: vec4<f32>, arg_1: vec3<f32>, arg_2: i32, arg_3: Struct_2) -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(-1i, Struct_2(select(!vec3<bool>(arg_3.d.a, arg_3.a.x, arg_3.a.x), arg_3.a, arg_3.a), !arg_3.b, arg_3.c, Struct_1(all(vec4<bool>(false, arg_3.c.a, arg_3.b, false)), abs(3928i)), arg_3.e))));
    let var_1 = 51815u != abs(u_input.b << (_wgslsmith_clamp_u32(u_input.c.x, u_input.c.x, 61912u) % 32u));
    let var_2 = _wgslsmith_div_vec3_i32(vec3<i32>(arg_3.d.b << (~1u % 32u), abs(firstTrailingBit(59964i)), _wgslsmith_sub_i32(~arg_2, arg_2)), select(vec3<i32>(abs(30998i), -(~arg_3.d.b), _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(arg_2, arg_3.c.b, arg_2, 0i), vec4<i32>(arg_2, 75875i, arg_2, arg_3.c.b)), -vec4<i32>(arg_2, -29289i, 5834i, -9444i))), select(_wgslsmith_mult_vec3_i32(vec3<i32>(-2147483647i, arg_3.d.b, arg_2), vec3<i32>(arg_3.c.b, arg_2, arg_3.d.b)) >> (vec3<u32>(u_input.a, u_input.a, u_input.a) % vec3<u32>(32u)), ~vec3<i32>(-2147483647i, arg_2, -1i) & vec3<i32>(-1i, arg_3.d.b, arg_2), true), !vec3<bool>(true, true, all(vec2<bool>(true, true)))));
    var var_3 = arg_3.c;
    var var_4 = Struct_2(arg_3.a, !any(arg_3.a), arg_3.d, Struct_1(true, 0i), -559f);
    return !arg_3.a;
}

fn func_1(arg_0: vec4<f32>) -> Struct_2 {
    var var_0 = !select(func_2(vec4<f32>(1000f, _wgslsmith_f_op_f32(arg_0.x * arg_0.x), _wgslsmith_f_op_f32(f32(-1f) * -2122f), _wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, -1000f, arg_0.x)), ~0i, Struct_2(vec3<bool>(false, false, false), true, Struct_1(true, 13053i), Struct_1(true, -28706i), arg_0.x)), !func_2(arg_0, _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(488f, arg_0.x, arg_0.x))), ~(-16065i), Struct_2(vec3<bool>(false, true, true), true, Struct_1(true, -4131i), Struct_1(false, 0i), 879f)), vec3<bool>(true, true, true && all(vec4<bool>(true, false, true, true))));
    var_0 = func_2(arg_0, arg_0.zzx, -15526i, Struct_2(select(!vec3<bool>(false, var_0.x, true), vec3<bool>(!var_0.x, func_2(arg_0, arg_0.xzw, 13781i, Struct_2(vec3<bool>(var_0.x, true, false), false, Struct_1(var_0.x, 59165i), Struct_1(var_0.x, 6750i), -1000f)).x, true), false), true, Struct_1(func_2(_wgslsmith_f_op_vec4_f32(arg_0 * arg_0), vec3<f32>(arg_0.x, arg_0.x, 1009f), 0i, Struct_2(vec3<bool>(var_0.x, false, var_0.x), var_0.x, Struct_1(false, -2147483647i), Struct_1(true, -36361i), 1000f)).x, ~_wgslsmith_div_i32(0i, 44481i)), Struct_1(any(select(vec4<bool>(var_0.x, true, var_0.x, true), vec4<bool>(var_0.x, var_0.x, true, var_0.x), false)), _wgslsmith_dot_vec4_i32(abs(vec4<i32>(-2147483647i, -2147483647i, -14087i, -2147483647i)), -vec4<i32>(23104i, 1i, 10344i, -1i))), arg_0.x));
    var_0 = select(vec3<bool>(any(!(!vec4<bool>(false, false, var_0.x, false))), !all(!vec3<bool>(true, var_0.x, true)), var_0.x), !vec3<bool>(any(vec4<bool>(var_0.x, false, false, true)) == true, any(select(vec3<bool>(false, var_0.x, false), vec3<bool>(true, var_0.x, var_0.x), vec3<bool>(true, true, true))), true), _wgslsmith_f_op_f32(trunc(-2298f)) <= _wgslsmith_f_op_f32(floor(1462f)));
    var var_1 = vec2<bool>(true, all(func_2(_wgslsmith_f_op_vec4_f32(arg_0 - arg_0), arg_0.xyy, ~(-7554i), Struct_2(vec3<bool>(true, false, var_0.x), true, Struct_1(true, 2147483647i), Struct_1(true, -2147483647i), _wgslsmith_div_f32(-629f, -1000f)))));
    let var_2 = _wgslsmith_sub_vec3_u32(~vec3<u32>(1u, reverseBits(firstLeadingBit(u_input.c.x)), _wgslsmith_sub_u32(u_input.c.x << (50831u % 32u), reverseBits(u_input.c.x))), _wgslsmith_sub_vec3_u32(_wgslsmith_clamp_vec3_u32(min(~vec3<u32>(1u, 15177u, u_input.b), ~vec3<u32>(u_input.b, 4294967295u, 0u)), select(firstLeadingBit(vec3<u32>(1u, 86867u, 25116u)), vec3<u32>(u_input.a, 28135u, 35593u) ^ vec3<u32>(30650u, 1u, u_input.a), vec3<bool>(var_0.x, true, false)), _wgslsmith_add_vec3_u32(select(vec3<u32>(79220u, 108556u, u_input.c.x), vec3<u32>(50290u, 15247u, 529u), true), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.c.x, u_input.c.x, 51548u), vec3<u32>(0u, 51361u, u_input.c.x)))), reverseBits((vec3<u32>(35527u, u_input.b, u_input.c.x) << (vec3<u32>(44684u, 4294967295u, u_input.b) % vec3<u32>(32u))) | vec3<u32>(u_input.c.x, u_input.c.x, u_input.a))));
    return Struct_2(!select(select(vec3<bool>(var_0.x, true, true), !vec3<bool>(true, false, var_0.x), select(vec3<bool>(false, true, false), vec3<bool>(true, true, var_0.x), vec3<bool>(false, false, var_1.x))), func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, arg_0.x, -563f, arg_0.x)), vec3<f32>(arg_0.x, -244f, 512f), -2147483647i << (var_2.x % 32u), Struct_2(vec3<bool>(var_0.x, true, false), true, Struct_1(var_1.x, -16629i), Struct_1(var_0.x, 0i), arg_0.x)), !func_2(arg_0, vec3<f32>(546f, arg_0.x, arg_0.x), -37044i, Struct_2(vec3<bool>(false, false, false), true, Struct_1(true, 20899i), Struct_1(false, 41648i), arg_0.x))), false, Struct_1(true, -firstTrailingBit(_wgslsmith_clamp_i32(24072i, -10338i, -27769i))), Struct_1(any(select(!var_0.zy, select(vec2<bool>(true, true), vec2<bool>(false, true), var_1.x), var_0.yy)), _wgslsmith_sub_i32(1i, select(-1i, 2147483647i, var_0.x) >> (firstLeadingBit(u_input.b) % 32u))), 908f);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2) -> Struct_2 {
    return arg_1;
}

fn func_5(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: vec2<u32>, arg_3: f32) -> Struct_2 {
    let var_0 = func_4(func_1(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_3, arg_0.e) * _wgslsmith_f_op_f32(trunc(329f))), arg_3, _wgslsmith_f_op_f32(-896f - _wgslsmith_f_op_f32(ceil(294f))), arg_0.e)), Struct_2(!arg_0.a, (!arg_0.b & arg_0.a.x) | func_4(func_4(arg_0, arg_0), arg_0).b, arg_0.d, func_1(vec4<f32>(arg_3, _wgslsmith_f_op_f32(step(arg_0.e, arg_0.e)), arg_0.e, _wgslsmith_div_f32(-535f, arg_0.e))).c, -1997f));
    var var_1 = vec2<f32>(-314f, _wgslsmith_f_op_f32(sign(arg_3)));
    var var_2 = ~(~vec2<i32>(_wgslsmith_mod_i32(-var_0.d.b, ~8913i), var_0.c.b));
    var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.e, arg_3))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_3, var_1.x) + vec2<f32>(arg_3, arg_3))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_3, -872f) + _wgslsmith_div_vec2_f32(vec2<f32>(-588f, arg_0.e), vec2<f32>(956f, -304f))))));
    var var_3 = arg_0.c.b;
    return func_1(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_div_f32(293f, var_1.x), -305f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_3))), func_4(arg_0, arg_0).e), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3, -821f, arg_0.e, var_1.x) - vec4<f32>(var_1.x, -196f, arg_0.e, 1973f))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1608f, var_0.e, -643f, -760f), vec4<f32>(1280f, -415f, -493f, 391f), vec4<bool>(false, true, false, var_0.d.a))), vec4<f32>(1453f, var_1.x, -1000f, arg_0.e), vec4<bool>(false, var_0.b, true, false)))))));
}

fn func_6(arg_0: Struct_2, arg_1: Struct_2) -> Struct_1 {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.e * arg_1.e) + -1338f) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -566f))))), _wgslsmith_f_op_f32(arg_0.e - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1000f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -422f) * _wgslsmith_f_op_f32(-620f - _wgslsmith_f_op_f32(select(127f, arg_0.e, false)))) - _wgslsmith_f_op_f32(-1000f * arg_0.e)));
    var var_1 = func_4(arg_1, func_1(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(arg_1.e, arg_0.e, 654f, arg_0.e), vec4<f32>(arg_1.e, var_0.x, var_0.x, -1310f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.e, -2063f, -864f, 295f)))))));
    var_1 = func_4(Struct_2(var_1.a, -333f != _wgslsmith_f_op_f32(select(arg_1.e, _wgslsmith_f_op_f32(var_1.e * var_0.x), any(vec4<bool>(var_1.d.a, arg_1.d.a, arg_1.d.a, false)))), arg_0.d, var_1.c, 795f), arg_0);
    var var_2 = ~_wgslsmith_clamp_vec2_i32(~(vec2<i32>(-1i) * -vec2<i32>(arg_1.d.b, 11350i)), vec2<i32>(select(43363i, var_1.d.b, true), 30151i), -_wgslsmith_sub_vec2_i32(vec2<i32>(2147483647i, 1i) >> (u_input.c % vec2<u32>(32u)), vec2<i32>(var_1.d.b, var_1.d.b)));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.e - _wgslsmith_f_op_f32(func_5(arg_1, vec4<u32>(1u, 18880u, 4294967295u, u_input.b), vec2<u32>(68306u, 1u), 154f).e * arg_0.e))) + 213f);
    return arg_1.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(vec3<bool>(select(true, any(vec3<bool>(false, false, true)) && any(vec3<bool>(false, true, false)), _wgslsmith_f_op_f32(step(-1628f, -699f)) <= 1000f), true, all(vec3<bool>(true, true, true))), ~firstLeadingBit(0u >> (u_input.b % 32u)) < u_input.a, func_6(func_5(func_4(func_1(vec4<f32>(1171f, 104f, 1337f, 1037f)), Struct_2(vec3<bool>(true, true, true), false, Struct_1(true, -34114i), Struct_1(false, 2147483647i), 247f)), countOneBits(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c.x, 19253u, u_input.c.x, u_input.b), vec4<u32>(4294967295u, u_input.b, 21409u, u_input.a))), ~u_input.c, _wgslsmith_f_op_f32(-998f * _wgslsmith_f_op_f32(-278f + -784f))), Struct_2(func_4(func_4(Struct_2(vec3<bool>(true, true, false), true, Struct_1(false, 32176i), Struct_1(true, -43667i), -395f), Struct_2(vec3<bool>(false, true, false), true, Struct_1(false, 38678i), Struct_1(false, 1i), -1976f)), Struct_2(vec3<bool>(false, false, false), true, Struct_1(false, 22532i), Struct_1(false, 2147483647i), -887f)).a, !func_1(vec4<f32>(-579f, -989f, -331f, -881f)).a.x, func_4(func_4(Struct_2(vec3<bool>(true, true, false), true, Struct_1(false, -3646i), Struct_1(false, 1898i), -603f), Struct_2(vec3<bool>(true, false, true), false, Struct_1(true, -8776i), Struct_1(true, -49762i), -728f)), func_4(Struct_2(vec3<bool>(true, false, true), true, Struct_1(true, -14757i), Struct_1(true, -22827i), -119f), Struct_2(vec3<bool>(true, true, true), true, Struct_1(false, -17667i), Struct_1(false, -34220i), 1000f))).c, Struct_1(true, 1i), 1005f)), Struct_1(any(func_4(func_1(vec4<f32>(1595f, -768f, -325f, -451f)), func_5(Struct_2(vec3<bool>(false, false, true), true, Struct_1(false, -16859i), Struct_1(true, -1i), -886f), vec4<u32>(u_input.c.x, u_input.c.x, u_input.b, u_input.c.x), vec2<u32>(0u, u_input.a), -1097f)).a.xy), firstTrailingBit(abs(-1i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -724f) * 1073f));
    let var_1 = var_0.c;
    let var_2 = _wgslsmith_f_op_f32(1540f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(3047f - _wgslsmith_f_op_f32(select(152f, var_0.e, false))))));
    var var_3 = ~((var_1.b & _wgslsmith_sub_i32(var_1.b ^ -42135i, var_0.c.b)) | _wgslsmith_dot_vec2_i32(firstLeadingBit(vec2<i32>(var_1.b, 1i) | vec2<i32>(-1i, 2147483647i)), countOneBits(vec2<i32>(10903i, var_1.b) >> (vec2<u32>(u_input.b, u_input.a) % vec2<u32>(32u)))));
    var_3 = func_6(Struct_2(func_5(var_0, vec4<u32>(u_input.a, abs(4294967295u), ~0u, 16567u), vec2<u32>(4294967295u, min(u_input.c.x, u_input.b)), _wgslsmith_f_op_f32(f32(-1f) * -1068f)).a, countOneBits(abs(22630u)) < u_input.a, var_0.d, var_0.d, var_0.e), Struct_2(!func_1(vec4<f32>(var_2, var_0.e, var_0.e, 825f)).a, true, Struct_1(var_0.b, 9865i), Struct_1(var_0.c.a || true, var_0.d.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2) + _wgslsmith_f_op_f32(-var_0.e))))).b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(func_3(1i, var_0)), 1u, vec2<i32>(var_0.d.b, ~var_0.d.b), _wgslsmith_add_u32(1u, _wgslsmith_sub_u32(u_input.a, countOneBits(~u_input.b))), vec4<i32>(var_0.c.b, ~(-55568i), i32(-1i) * -1046i, 2147483647i));
}

