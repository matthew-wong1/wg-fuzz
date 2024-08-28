struct Struct_1 {
    a: f32,
    b: u32,
}

struct Struct_2 {
    a: bool,
    b: i32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: f32,
    c: i32,
    d: Struct_2,
    e: vec4<i32>,
}

struct Struct_4 {
    a: Struct_3,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
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

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_2() -> f32 {
    let var_0 = vec2<u32>(u_input.a, _wgslsmith_mult_u32(abs(0u), u_input.b));
    let var_1 = !all(select(select(select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false), false), select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true), true), any(vec3<bool>(true, true, true))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, false), false)), select(vec4<bool>(true, false, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false)), any(vec2<bool>(true, true)))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(1754f * 361f)), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(619f, 950f), -1000f))))));
}

fn func_3() -> f32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-457f, 562f, -1763f), vec3<f32>(-406f, -485f, 911f), false))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-814f, -553f, 464f))))), any(!vec2<bool>(all(vec4<bool>(false, false, true, false)), true))));
    var var_1 = Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -1093f), -339f, ~min(_wgslsmith_dot_vec3_i32(-vec3<i32>(-21278i, -1i, 30614i), vec3<i32>(1i, 1i, 1i)), 1i), Struct_2(true, -firstTrailingBit(firstTrailingBit(-1i)), Struct_1(_wgslsmith_div_f32(-714f, 1598f), reverseBits(~4294967295u)), Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.x))), ~(0u ^ u_input.c.x))), countOneBits(vec4<i32>(31754i >> (u_input.b % 32u), _wgslsmith_div_i32(1i, 2147483647i), _wgslsmith_mult_i32(-1i, -1i), _wgslsmith_dot_vec3_i32(vec3<i32>(0i, 0i, 1i), vec3<i32>(26959i, 2147483647i, -1163i))) & abs(min(vec4<i32>(-22884i, 2147483647i, 14104i, -23137i), vec4<i32>(10458i, 2147483647i, -3432i, 0i)))));
    let var_2 = var_1.d;
    let var_3 = var_1.b;
    var_1 = Struct_3(var_0.x, _wgslsmith_f_op_f32(-490f + _wgslsmith_f_op_f32(func_2())), i32(-1i) * -9483i, var_1.d, _wgslsmith_mult_vec4_i32(min(~var_1.e, abs(select(vec4<i32>(var_2.b, var_2.b, 0i, var_2.b), var_1.e, true))), -firstLeadingBit(vec4<i32>(0i, var_2.b, var_2.b, var_2.b)) << ((vec4<u32>(1326u, u_input.b, 4294967295u, 63909u) << (vec4<u32>(0u, var_2.c.b, 4294967295u, var_1.d.d.b) % vec4<u32>(32u))) % vec4<u32>(32u))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -916f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(3027f))))))));
}

fn func_1() -> Struct_4 {
    let var_0 = true;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -675f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-595f))))) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_2())))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-474f)))));
    let var_2 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1190f - _wgslsmith_f_op_f32(func_2())), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1292f * 1947f))) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1f + -522f)))), 847f, -(i32(-1i) * -21101i), Struct_2(true, abs(-1i), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())), _wgslsmith_mod_u32(0u, firstLeadingBit(u_input.c.x))), Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(-2254f, 659f)), _wgslsmith_f_op_f32(f32(-1f) * -1778f))), ~(u_input.c.x ^ u_input.c.x))), max(-vec4<i32>(0i, 1i, ~1i, ~1i), select(~vec4<i32>(2147483647i, 2607i, -27900i, 2147483647i) ^ firstTrailingBit(vec4<i32>(-6399i, -11196i, 68562i, 22665i)), select(~vec4<i32>(-35844i, 2147483647i, 2147483647i, -2147483647i), -vec4<i32>(54367i, -86277i, 1i, 2147483647i), 0u > u_input.b), true)));
    var var_3 = Struct_1(-2400f, _wgslsmith_mod_u32(48303u, _wgslsmith_dot_vec4_u32(abs(vec4<u32>(u_input.a, 9623u, var_2.d.c.b, var_2.d.c.b)), vec4<u32>(0u, u_input.b, u_input.a, 66228u))) ^ ~max(_wgslsmith_dot_vec2_u32(u_input.c.yx, vec2<u32>(var_2.d.c.b, 0u)), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, var_2.d.d.b, 17779u), u_input.c)));
    var var_4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-906f, var_3.a))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_3.a, var_2.b), vec2<f32>(var_3.a, 198f))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.a, 539f) * vec2<f32>(var_3.a, -194f)))))) * vec2<f32>(604f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3()))));
    return Struct_4(var_2, -807f);
}

fn func_4(arg_0: Struct_4, arg_1: Struct_1, arg_2: i32, arg_3: vec2<bool>) -> Struct_2 {
    var var_0 = vec2<i32>(abs(~(-70930i)), firstLeadingBit(arg_2));
    var var_1 = Struct_2(false, ~arg_2, Struct_1(_wgslsmith_f_op_f32(-797f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1000f)) * _wgslsmith_div_f32(arg_1.a, arg_0.b))), func_1().a.d.c.b), arg_1);
    let var_2 = ~(~1i);
    var var_3 = Struct_4(Struct_3(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(arg_1.a, arg_0.a.d.d.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(var_1.d.a))))), abs(~(i32(-1i) * -82489i)), arg_0.a.d, vec4<i32>(~(~31115i), _wgslsmith_clamp_i32(-1i, 1i, _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.b, 1i, var_0.x, var_1.b), arg_0.a.e)), -1i, arg_0.a.c)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_2())))))));
    var_1 = Struct_2(true, -abs(~min(arg_0.a.e.x, var_1.b)), arg_0.a.d.d, Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_3.a.d.c.a + 307f))), ~752u));
    return var_3.a.d;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.c;
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -831f);
    var var_2 = func_4(func_1(), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) * -183f), ~(~_wgslsmith_div_u32(var_0.x, 36344u))), -max(23425i, reverseBits(2147483647i)), select(vec2<bool>(any(vec3<bool>(true, true, true)), func_1().a.d.a | any(vec4<bool>(false, false, false, true))), vec2<bool>(all(vec2<bool>(false, true)), true), vec2<bool>(true, true)));
    var_1 = -610f;
    var_1 = var_2.d.a;
    var var_3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(func_4(func_1(), func_1().a.d.d, var_2.b, select(select(vec2<bool>(true, false), vec2<bool>(true, var_2.a), vec2<bool>(var_2.a, false)), !vec2<bool>(var_2.a, var_2.a), vec2<bool>(var_2.a, false))).d.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_2.d.a))), _wgslsmith_f_op_f32(select(var_2.d.a, _wgslsmith_f_op_f32(abs(-499f)), false)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2()), -976f)) + _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-255f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.c.a - var_2.c.a)), -1687f, var_2.c.a))));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(vec3<u32>(1u, func_4(Struct_4(Struct_3(var_2.c.a, var_3.x, -25635i, Struct_2(var_2.a, 2147483647i, Struct_1(1730f, var_2.d.b), var_2.c), vec4<i32>(var_2.b, -2147483647i, var_2.b, var_2.b)), var_3.x), func_1().a.d.c, -2245i, vec2<bool>(true, var_2.a)).c.b, ~(~4294967295u))));
}

