struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
}

struct Struct_4 {
    a: u32,
    b: Struct_1,
    c: Struct_3,
    d: vec4<i32>,
    e: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: i32, arg_1: f32, arg_2: f32, arg_3: vec3<f32>) -> vec3<bool> {
    var var_0 = Struct_4(select(u_input.a.x, firstTrailingBit(~u_input.a.x), any(select(vec4<bool>(true, true, true, false), select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, true), true), all(vec4<bool>(true, true, true, false))))), Struct_1(select(select(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, false)), vec3<bool>(false, true, true), true), vec3<bool>(true, true, true), true)), Struct_3(Struct_2(Struct_1(vec3<bool>(false, false, false)), true, Struct_1(select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true))), select(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), true), select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), true), vec3<bool>(false, false, true))), -37412i), countOneBits(_wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_add_i32(arg_0, arg_0), arg_0 | -52196i, 29468i, abs(-6583i)), vec4<i32>(-1i) * -vec4<i32>(16611i, arg_0, -2147483647i, arg_0))), !(!any(vec3<bool>(true, true, false))));
    let var_1 = var_0.d.yzx;
    let var_2 = var_0.b.a.yx;
    let var_3 = !var_0.c.a.a.a.x;
    var_0 = Struct_4(var_0.a, Struct_1(var_0.c.a.a.a), var_0.c, countOneBits(~var_0.d), true);
    return !vec3<bool>(false, all(select(select(var_0.b.a.zx, vec2<bool>(true, false), var_3), select(vec2<bool>(false, true), vec2<bool>(true, var_0.b.a.x), true), true)), var_3);
}

fn func_4(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: f32, arg_3: vec3<f32>) -> i32 {
    let var_0 = -14041i;
    let var_1 = vec4<bool>(any(!arg_0.c.a), all(vec4<bool>(any(vec2<bool>(true, true)), arg_0.b, true, false)), !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2)) >= _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_2 * arg_2)))), arg_0.c.a.x);
    var var_2 = Struct_1(vec3<bool>(var_1.x, !var_1.x, any(var_1)));
    var_2 = arg_0.c;
    var_2 = Struct_1(!var_1.yzx);
    return var_0;
}

fn func_2(arg_0: f32, arg_1: vec3<f32>) -> vec2<f32> {
    var var_0 = Struct_4(u_input.a.x, Struct_1(select(vec3<bool>(true, true, arg_0 > arg_0), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), Struct_3(Struct_2(Struct_1(vec3<bool>(true, true, true)), !any(vec4<bool>(true, true, false, false)), Struct_1(vec3<bool>(false, true, false)), vec3<bool>(true, true, true)), func_4(Struct_2(Struct_1(vec3<bool>(true, true, true)), true, Struct_1(vec3<bool>(true, true, false)), func_3(1i, arg_1.x, arg_1.x, arg_1)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_1.x, arg_0, arg_1.x, arg_1.x)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_0 - 846f), -673f)), _wgslsmith_f_op_vec3_f32(floor(arg_1)))), vec4<i32>(reverseBits(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, 15533i), vec2<i32>(1i, 6955i))), -10540i, -1i, -10819i), !(_wgslsmith_f_op_f32(-arg_0) < _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(arg_0))))));
    var_0 = Struct_4(u_input.a.x, Struct_1(select(vec3<bool>(var_0.c.a.d.x, var_0.b.a.x, !var_0.b.a.x), var_0.b.a, func_3(-35615i, _wgslsmith_f_op_f32(arg_0 - -1519f), _wgslsmith_f_op_f32(-420f + -569f), vec3<f32>(arg_1.x, arg_0, arg_1.x)))), var_0.c, countOneBits(vec4<i32>(-(i32(-1i) * -26151i), var_0.d.x ^ _wgslsmith_mod_i32(var_0.d.x, var_0.c.b), var_0.c.b, _wgslsmith_dot_vec4_i32(var_0.d, var_0.d))), !all(!vec3<bool>(var_0.e, var_0.c.a.c.a.x, var_0.c.a.c.a.x)));
    let var_1 = Struct_4(u_input.a.x, var_0.c.a.a, Struct_3(Struct_2(Struct_1(!var_0.b.a), !any(vec4<bool>(var_0.b.a.x, var_0.c.a.a.a.x, var_0.e, var_0.c.a.d.x)), Struct_1(func_3(-2147483647i, arg_1.x, 1728f, arg_1)), vec3<bool>(true, true, true)), var_0.d.x), vec4<i32>(-4590i, 2147483647i, -19919i, countOneBits(-var_0.c.b)) >> (~u_input.a % vec4<u32>(32u)), !(!(!(!var_0.e))));
    let var_2 = Struct_3(Struct_2(Struct_1(select(var_1.b.a, func_3(var_1.d.x, -161f, 707f, arg_1), all(vec2<bool>(var_0.c.a.c.a.x, var_1.b.a.x)))), true, var_0.b, vec3<bool>(true, var_1.c.a.c.a.x, true)), firstTrailingBit(11279i));
    let var_3 = !(_wgslsmith_f_op_f32(select(arg_0, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(arg_0 + arg_0)), var_0.e)) <= arg_1.x);
    return _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(280f, -659f) * arg_1.zz), _wgslsmith_f_op_vec2_f32(-arg_1.xx), u_input.a.x <= 1436u)), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-arg_1.yz), arg_1.xz)), !any(var_0.c.a.d)))))));
}

fn func_5(arg_0: vec2<f32>, arg_1: i32) -> Struct_2 {
    let var_0 = u_input.a.x;
    let var_1 = -714f;
    let var_2 = 1i;
    let var_3 = Struct_4(u_input.a.x, Struct_1(!func_3(-2147483647i, _wgslsmith_f_op_f32(step(-278f, arg_0.x)), _wgslsmith_f_op_f32(var_1 - var_1), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, arg_0.x, arg_0.x)))), Struct_3(Struct_2(Struct_1(func_3(-1i, 285f, 259f, vec3<f32>(245f, arg_0.x, -438f))), !func_3(arg_1, var_1, -116f, vec3<f32>(1000f, -292f, arg_0.x)).x, Struct_1(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false))), select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), true)), _wgslsmith_add_i32(i32(-1i) * -arg_1, arg_1)), vec4<i32>(~1i | (_wgslsmith_clamp_i32(var_2, -11075i, arg_1) ^ var_2), 2147483647i, countOneBits(-(~arg_1)), abs(var_2)), true);
    let var_4 = !var_3.e;
    return Struct_2(Struct_1(var_3.b.a), var_4, var_3.b, select(select(var_3.c.a.d, var_3.c.a.d, false), select(var_3.b.a, !(!vec3<bool>(false, var_4, var_3.c.a.d.x)), vec3<bool>(var_4, !var_3.e, !var_3.c.a.a.a.x)), !vec3<bool>(var_3.b.a.x, true, var_4)));
}

fn func_1(arg_0: vec3<bool>) -> f32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1021f, _wgslsmith_div_f32(_wgslsmith_div_f32(441f, _wgslsmith_f_op_f32(select(557f, 127f, true))), 1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -439f) - -954f) + 827f), 275f));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(974f, var_0.x, 2400f)))) + var_0.ywy), _wgslsmith_f_op_vec3_f32(abs(var_0.xwx))));
    var var_2 = 240f;
    let var_3 = func_5(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_2(var_1.x, var_0.xxy)) * var_0.yw), vec2<f32>(_wgslsmith_f_op_f32(exp2(var_1.x)), var_1.x))))), -_wgslsmith_mod_i32(~(0i << (u_input.a.x % 32u)), ~1i));
    var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_vec2_f32(func_2(var_0.x, _wgslsmith_f_op_vec3_f32(floor(var_1)))).x, -746f));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1378f - 993f) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(-1000f)), -670f)))) * 599f);
    var_0 = _wgslsmith_f_op_f32(func_1(!select(vec3<bool>(true, any(vec2<bool>(false, false)), false), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(false, true, false)), true), false)));
    let var_1 = abs(_wgslsmith_mult_vec2_i32(vec2<i32>(-16382i, 1i), vec2<i32>(1i, 1i) & select(vec2<i32>(-1i, 23254i), vec2<i32>(1i, 2147483647i), vec2<bool>(true, false))) ^ _wgslsmith_mod_vec2_i32(firstTrailingBit(vec2<i32>(-2147483647i, -65034i) << (u_input.a.wx % vec2<u32>(32u))), vec2<i32>(0i, _wgslsmith_dot_vec4_i32(vec4<i32>(-18620i, 1i, -2372i, 1i), vec4<i32>(48899i, 1i, -3084i, -29964i)))));
    let var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(-881f, 334f) + vec2<f32>(_wgslsmith_f_op_f32(func_1(vec3<bool>(true, all(vec3<bool>(true, true, true)), -2147483647i != var_1.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-170f + _wgslsmith_f_op_f32(func_1(vec3<bool>(true, false, true)))) - -1906f)));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_2.x))) + _wgslsmith_f_op_f32(var_2.x * var_2.x)));
    var_0 = _wgslsmith_f_op_vec2_f32(func_2(var_2.x, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.x, -238f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x + -1458f) - _wgslsmith_f_op_f32(f32(-1f) * -598f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -637f)))), _wgslsmith_f_op_vec2_f32(func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) - 1376f), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 776f, var_2.x))).x))).x;
    var var_3 = vec2<f32>(var_2.x, -1240f);
    var var_4 = reverseBits(~(-_wgslsmith_clamp_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(var_1.x, var_1.x, -9809i), vec3<i32>(var_1.x, -16636i, 2147483647i)), firstTrailingBit(vec3<i32>(-10782i, -2147483647i, -20462i)), -vec3<i32>(var_1.x, 1i, var_1.x))));
    var var_5 = Struct_4(~u_input.a.x, Struct_1(vec3<bool>(~u_input.a.x >= 1u, false, false)), Struct_3(func_5(_wgslsmith_f_op_vec2_f32(step(var_2, _wgslsmith_div_vec2_f32(var_2, var_2))), _wgslsmith_add_i32(-50046i, var_4.x)), ~(~(-var_1.x))), vec4<i32>(-var_4.x, -(_wgslsmith_add_i32(35556i, var_4.x) << (7911u % 32u)), reverseBits(var_4.x), 2147483647i), true);
    let x = u_input.a;
    s_output = StorageBuffer(min(_wgslsmith_div_u32(~var_5.a, ~1u), _wgslsmith_dot_vec3_u32(max(firstTrailingBit(vec3<u32>(var_5.a, 4294967295u, 1u)), u_input.a.xwx), ~u_input.a.zww ^ ~u_input.a.ywz)), _wgslsmith_f_op_f32(-633f + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_3.x)))));
}

