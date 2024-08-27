struct Struct_1 {
    a: bool,
    b: vec3<bool>,
    c: u32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: i32,
    b: vec3<bool>,
    c: u32,
    d: vec4<f32>,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
    d: vec4<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
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

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3() -> vec3<f32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(916f, 712f, -480f, -1115f), vec4<f32>(-201f, -963f, 1351f, -1498f), false))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-431f, 1734f, -1109f, 350f)))) - _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(885f, 1366f, -384f, 199f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 1457f, -1473f, 984f)))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(931f * 280f), _wgslsmith_f_op_f32(floor(-861f)), -1519f, 663f)))));
    var var_1 = !select(select(vec4<bool>(true, u_input.b.x < u_input.d.x, select(true, false, false), true), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, true)), true), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), select(true, true, false)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false)), vec4<bool>(false, true, true, false)), true), select(all(select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true))), -u_input.e.x <= _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 0i, u_input.e.x), u_input.e), true));
    let var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(var_0.x, _wgslsmith_f_op_f32(min(var_0.x, -875f)), !var_1.x))));
    var_1 = vec4<bool>(all(vec4<bool>((false | var_1.x) & (0u != u_input.c), all(!var_1.yy), false, var_1.x)), any(select(vec2<bool>(u_input.b.x == u_input.c, any(vec4<bool>(false, var_1.x, var_1.x, var_1.x))), vec2<bool>(any(vec4<bool>(false, true, var_1.x, var_1.x)), var_1.x), var_1.zw)), !var_1.x, true);
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(var_0.zz - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-2420f, -1100f) - vec2<f32>(var_0.x, -418f)))))));
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2, var_0.x, var_2)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(vec3<f32>(var_2, var_0.x, -951f), var_0.wyz))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, 1877f, var_0.x)))) + _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(trunc(-559f)), var_3.x, 517f))))));
}

fn func_2() -> u32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3()) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3()))));
    let var_1 = 71286u;
    let var_2 = _wgslsmith_add_vec2_i32(abs(_wgslsmith_div_vec2_i32(_wgslsmith_sub_vec2_i32(u_input.e.zx, u_input.e.zx) ^ vec2<i32>(-2147483647i, 2147483647i), abs(vec2<i32>(u_input.a, 1i)))), vec2<i32>(u_input.e.x, -34340i));
    var var_3 = vec4<bool>(var_0.x != _wgslsmith_f_op_f32(var_0.x + -1106f), !(!(!(var_0.x >= var_0.x))), true, -u_input.a >= 0i);
    let var_4 = Struct_5(-1i, vec3<bool>(~4294967295u == u_input.d.x, var_3.x, !(!all(vec4<bool>(var_3.x, var_3.x, var_3.x, false)))), 56040u, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0.x), var_0.x)), var_0.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0.x + var_0.x))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0.x + var_0.x), _wgslsmith_f_op_vec3_f32(func_3()).x)))), vec3<bool>(any(select(var_3.zw, vec2<bool>(var_3.x, true), all(var_3.zzy))), true, true));
    return ~18736u;
}

fn func_4(arg_0: vec4<i32>, arg_1: u32) -> Struct_2 {
    return Struct_2(_wgslsmith_f_op_f32(-643f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -329f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_3()).x))), Struct_1(!(_wgslsmith_f_op_f32(1436f - -1710f) != _wgslsmith_f_op_f32(select(-1257f, 190f, false))), vec3<bool>(true || all(vec3<bool>(false, false, true)), _wgslsmith_f_op_f32(trunc(283f)) >= _wgslsmith_f_op_f32(1205f * 2929f), true), 24382u));
}

fn func_1(arg_0: Struct_5) -> vec2<u32> {
    var var_0 = func_4(-select(_wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-56881i, arg_0.a, arg_0.a, u_input.a), vec4<i32>(arg_0.a, 2147483647i, 36985i, arg_0.a)), abs(vec4<i32>(arg_0.a, -2147483647i, arg_0.a, arg_0.a))), ~_wgslsmith_mult_vec4_i32(vec4<i32>(arg_0.a, -12510i, -2147483647i, -4305i), vec4<i32>(-2147483647i, 0i, arg_0.a, arg_0.a)), vec4<bool>(!arg_0.e.x, arg_0.b.x, false, all(vec3<bool>(false, false, false)))), func_2());
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(-arg_0.d.x), _wgslsmith_div_f32(arg_0.d.x, 778f), _wgslsmith_f_op_f32(-arg_0.d.x)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-arg_0.d.xxz), vec3<f32>(-1374f, var_0.a, var_0.a), vec3<bool>(arg_0.e.x, false, true))), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a, var_0.a, var_0.a) - _wgslsmith_f_op_vec3_f32(-arg_0.d.yyz)), arg_0.e))));
    let var_2 = Struct_2(-1189f, Struct_1(!(countOneBits(2147483647i) > firstTrailingBit(1i)), vec3<bool>(true, false, arg_0.b.x), _wgslsmith_sub_u32(1u, 1u)));
    var var_3 = Struct_2(var_2.a, func_4(vec4<i32>((arg_0.a & 3349i) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(var_2.b.c, var_2.b.c, var_2.b.c), vec3<u32>(arg_0.c, u_input.c, arg_0.c)) % 32u), _wgslsmith_mod_i32(-2147483647i, u_input.e.x) ^ 1i, reverseBits(i32(-1i) * -21719i), 1i), _wgslsmith_sub_u32(~_wgslsmith_sub_u32(67929u, 0u), arg_0.c)).b);
    var var_4 = _wgslsmith_add_vec3_i32(vec3<i32>(-2147483647i, abs(abs(~18064i)), _wgslsmith_clamp_i32(firstTrailingBit(-16731i), arg_0.a, -(i32(-1i) * -1i))), _wgslsmith_clamp_vec3_i32(countOneBits(reverseBits(_wgslsmith_add_vec3_i32(u_input.e, u_input.e))), u_input.e >> (~max(vec3<u32>(20092u, 31659u, var_2.b.c), vec3<u32>(u_input.c, u_input.c, var_2.b.c)) % vec3<u32>(32u)), _wgslsmith_div_vec3_i32(_wgslsmith_sub_vec3_i32(abs(vec3<i32>(2147483647i, 2147483647i, arg_0.a)), _wgslsmith_mult_vec3_i32(u_input.e, u_input.e)), -u_input.e)));
    return u_input.b.xx;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !select(!select(vec2<bool>(true, true), vec2<bool>(false, false), u_input.a == u_input.a), select(select(select(vec2<bool>(true, false), vec2<bool>(false, true), false), vec2<bool>(true, true), true), vec2<bool>(true, true), false), all(vec2<bool>(any(vec4<bool>(false, false, false, true)), true)));
    var var_1 = u_input.b.xy;
    let var_2 = var_0.x;
    var var_3 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -447f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -887f))))));
    var var_4 = ~countOneBits(func_1(Struct_5(-24479i, vec3<bool>(var_0.x, false, var_0.x), 0u, vec4<f32>(533f, -1729f, 1301f, -764f), vec3<bool>(false, false, false))) ^ ~_wgslsmith_clamp_vec2_u32(vec2<u32>(0u, u_input.d.x), vec2<u32>(27022u, var_1.x), u_input.b.zy));
    let var_5 = func_4(_wgslsmith_sub_vec4_i32(~select(-vec4<i32>(1i, u_input.e.x, 26806i, 1i), max(vec4<i32>(13186i, -9915i, 1i, -20141i), vec4<i32>(-26486i, -2147483647i, u_input.a, -16539i)), vec4<bool>(var_0.x, true, var_0.x, var_0.x)), ~(vec4<i32>(-15413i, 13896i, -17106i, 0i) | vec4<i32>(u_input.e.x, -6996i, u_input.e.x, u_input.e.x))), var_1.x & 103820u);
    var var_6 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-241f, var_5.a, var_5.a, var_5.a), vec4<f32>(var_5.a, 2762f, var_5.a, -429f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1004f, var_5.a, var_5.a, var_5.a)), vec4<bool>(var_0.x, true, true, var_5.b.b.x))))) + vec4<f32>(var_5.a, var_5.a, _wgslsmith_div_f32(var_5.a, -787f), -1131f)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_5.a, var_5.a, -362f, var_5.a), vec4<f32>(var_5.a, var_5.a, -1332f, -2750f)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_5.a, -1453f, var_5.a, 1000f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(793f, -120f, 664f, var_5.a), vec4<f32>(var_5.a, -1077f, var_5.a, -1574f))))));
    var_4 = ~u_input.d.ww;
    let x = u_input.a;
    s_output = StorageBuffer(min(vec2<u32>(func_1(Struct_5(2147483647i, var_5.b.b, 4294967295u, vec4<f32>(var_6.x, -743f, -1161f, -1521f), var_5.b.b)).x, ~countOneBits(u_input.b.x)), u_input.b.zz), 1186u);
}

