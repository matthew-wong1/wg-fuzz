struct Struct_1 {
    a: vec2<bool>,
    b: i32,
    c: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec3<u32>,
    d: vec4<i32>,
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

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: u32, arg_1: vec4<i32>, arg_2: vec3<i32>, arg_3: bool) -> bool {
    var var_0 = false && arg_3;
    var_0 = true;
    let var_1 = arg_3;
    var_0 = arg_3;
    var var_2 = 1f;
    return !(!(!any(vec2<bool>(false, false))));
}

fn func_2(arg_0: f32, arg_1: Struct_2) -> bool {
    return func_3(arg_1.a.c.x, min(abs(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.b.x, arg_1.a.b, u_input.b.x, -1i), vec4<i32>(-19445i, -40353i, 44639i, 30827i) << (arg_1.a.c % vec4<u32>(32u)))), -abs(-u_input.d)), vec3<i32>(_wgslsmith_mult_i32(i32(-1i) * -17989i, arg_1.a.b | u_input.b.x) ^ _wgslsmith_dot_vec2_i32(vec2<i32>(9977i, arg_1.a.b), abs(vec2<i32>(-30766i, -39275i))), (~arg_1.a.b ^ ~u_input.d.x) | -2147483647i, arg_1.a.b), true);
}

fn func_4(arg_0: vec3<bool>, arg_1: vec2<f32>) -> Struct_1 {
    let var_0 = Struct_2(Struct_1(arg_0.yx, u_input.d.x, _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c.x, 17536u, 34276u, 37902u), countOneBits(vec4<u32>(31424u, u_input.a.x, 4294967295u, u_input.a.x))) | select(_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 6564u, u_input.c.x, u_input.a.x), vec4<u32>(u_input.a.x, 577u, 1u, 1u)), vec4<u32>(u_input.c.x, 1u, u_input.c.x, u_input.c.x), !vec4<bool>(false, false, arg_0.x, false))), arg_0.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(373f, -171f) - vec2<f32>(arg_1.x, arg_1.x))))));
    var var_1 = Struct_2(Struct_1(var_0.a.a, _wgslsmith_dot_vec4_i32(vec4<i32>(abs(var_0.a.b), _wgslsmith_dot_vec3_i32(vec3<i32>(-11683i, 0i, -39228i), u_input.d.zyw), var_0.a.b, ~u_input.d.x), vec4<i32>(9940i, var_0.a.b, -1i, u_input.b.x)), vec4<u32>(4294967295u, abs(38908u), 1u, ~5668u)), all(vec2<bool>(!(!var_0.b), any(arg_0))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.x, -694f)) - _wgslsmith_f_op_vec2_f32(ceil(arg_1)))));
    let var_2 = u_input.a.x | (~1u << (select(u_input.c.x, 0u, arg_0.x) % 32u));
    let var_3 = Struct_2(Struct_1(select(select(select(vec2<bool>(true, arg_0.x), vec2<bool>(false, var_0.b), false), !var_1.a.a, var_1.a.a), !var_1.a.a, true), _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-2357i, -1i, -2147483647i, 2147483647i), vec4<i32>(-2147483647i, var_1.a.b, 0i, -1i)), -var_0.a.b) & 0i, var_1.a.c & ~_wgslsmith_mult_vec4_u32(vec4<u32>(61483u, u_input.a.x, u_input.c.x, 7536u), vec4<u32>(1u, var_2, u_input.c.x, var_2))), arg_0.x, _wgslsmith_f_op_vec2_f32(-arg_1));
    var var_4 = var_0;
    return var_0.a;
}

fn func_1(arg_0: bool) -> Struct_1 {
    let var_0 = func_4(select(vec3<bool>(func_2(2282f, Struct_2(Struct_1(vec2<bool>(false, arg_0), u_input.b.x, vec4<u32>(u_input.a.x, 1u, 2823u, 30150u)), false, vec2<f32>(-506f, 1000f))) || false, false, false), vec3<bool>(_wgslsmith_mult_i32(u_input.b.x, -1i) >= min(-31110i, -40213i), arg_0, func_3(u_input.c.x, vec4<i32>(u_input.b.x, u_input.d.x, 1i, -3004i), u_input.b.xww, arg_0) || (true && arg_0)), select(vec3<bool>(arg_0, u_input.c.x <= u_input.a.x, true), vec3<bool>(true, func_3(81212u, vec4<i32>(u_input.b.x, -6133i, u_input.b.x, u_input.d.x), u_input.d.wzw, arg_0), false || arg_0), vec3<bool>(any(vec4<bool>(arg_0, arg_0, arg_0, false)), arg_0, false))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(1428f, 458f), 390f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -185f)))));
    var var_1 = var_0;
    var_1 = var_0;
    var var_2 = ~1u;
    let var_3 = _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(~1i, firstLeadingBit(var_1.b), _wgslsmith_mod_i32(0i, var_1.b), abs(var_1.b)), reverseBits(u_input.d)), u_input.b), -(~(-29312i << (u_input.a.x % 32u))) >> (97775u % 32u));
    return Struct_1(var_0.a, ~var_3, var_1.c);
}

fn func_5(arg_0: bool, arg_1: vec4<i32>, arg_2: Struct_1) -> Struct_1 {
    let var_0 = vec3<i32>(_wgslsmith_dot_vec2_i32(arg_1.ww, _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.d.x, arg_1.x), arg_1.zw, arg_1.wz)), arg_2.b, 1i) | ~vec3<i32>(_wgslsmith_clamp_i32(func_4(vec3<bool>(false, arg_0, false), vec2<f32>(1021f, 127f)).b, 1i, arg_1.x), -(u_input.b.x ^ u_input.d.x), ~(-u_input.d.x));
    let var_1 = _wgslsmith_div_f32(-1636f, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(-121f, -277f)))), -1330f))));
    var var_2 = _wgslsmith_mult_i32(0i, ~_wgslsmith_clamp_i32(2147483647i, i32(-1i) * -arg_1.x, arg_1.x & (i32(-1i) * -14506i)));
    var var_3 = any(arg_2.a);
    var_3 = !arg_2.a.x;
    return arg_2;
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: Struct_2) -> Struct_1 {
    var var_0 = !all(!(!select(vec3<bool>(arg_1.a.x, false, false), vec3<bool>(arg_0.a.x, false, true), vec3<bool>(arg_1.a.x, true, true))));
    var var_1 = ~(~func_5(arg_1.a.x, -u_input.b, Struct_1(arg_0.a, ~1i, ~arg_1.c)).c);
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(arg_3.c.x, arg_3.c.x, -507f, 3035f), vec4<f32>(493f, arg_3.c.x, 1914f, 898f)) + vec4<f32>(439f, arg_3.c.x, 1219f, arg_3.c.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(382f, arg_3.c.x, arg_3.c.x, arg_3.c.x)))))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.c.x, -239f, 490f, 782f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -128f, 597f, -353f))))), vec4<bool>(select(true, true, true), _wgslsmith_mult_i32(arg_3.a.b, 1i) == 20481i, true, arg_3.a.a.x))));
    let var_3 = select(vec4<bool>(arg_3.a.a.x, all(!vec3<bool>(false, true, arg_0.a.x)), true, all(vec4<bool>(arg_0.a.x, arg_3.a.a.x, true, arg_0.a.x))), !(!(!vec4<bool>(true, true, false, arg_0.a.x))), all(!(!(!vec2<bool>(arg_3.a.a.x, false)))));
    var var_4 = true;
    return arg_1;
}

fn func_7(arg_0: vec3<i32>, arg_1: Struct_2) -> Struct_1 {
    var var_0 = arg_1.a;
    var var_1 = 0u;
    let var_2 = arg_1;
    var_1 = 56105u;
    let var_3 = 360f;
    return var_2.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, -1046f, -702f) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-102f, 1006f, 1968f) - vec3<f32>(-540f, 679f, 258f))))));
    let var_1 = func_7(~_wgslsmith_sub_vec3_i32(-(~u_input.d.ywz), -vec3<i32>(u_input.d.x, u_input.b.x, u_input.b.x)), Struct_2(func_6(Struct_1(vec2<bool>(false, false), ~u_input.d.x, vec4<u32>(4294967295u, u_input.a.x, 1u, 4294967295u)), func_5(true, select(u_input.b, u_input.b, vec4<bool>(true, false, true, false)), func_1(true)), ~(~u_input.d), Struct_2(func_5(false, u_input.d, Struct_1(vec2<bool>(false, false), 0i, vec4<u32>(87518u, u_input.c.x, 20413u, u_input.a.x))), true, _wgslsmith_div_vec2_f32(var_0.zz, vec2<f32>(var_0.x, var_0.x)))), !any(vec2<bool>(false, true)), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(2027f, var_0.x) + vec2<f32>(164f, 509f)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_0.x, -746f))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, 1420f))))));
    let var_2 = Struct_2(func_1(func_3(~0u, vec4<i32>(-20878i, u_input.b.x, u_input.d.x, u_input.d.x) >> (vec4<u32>(var_1.c.x, u_input.c.x, var_1.c.x, 0u) % vec4<u32>(32u)), -u_input.b.wyy, func_5(false, u_input.d, Struct_1(var_1.a, u_input.b.x, vec4<u32>(4294967295u, var_1.c.x, var_1.c.x, var_1.c.x))).a.x) | ((var_1.b >> (u_input.c.x % 32u)) < (u_input.d.x | var_1.b))), true, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(853f + _wgslsmith_f_op_f32(f32(-1f) * -1061f)), var_0.x)));
    var var_3 = true;
    let var_4 = func_4(vec3<bool>(any(var_2.a.a), false, any(vec2<bool>(true, var_1.a.x))), var_2.c);
    var_3 = ~u_input.a.x == ~3101u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec3_u32(func_5(var_4.a.x, vec4<i32>(1i, u_input.d.x, -21792i, var_1.b), func_5(var_2.b, u_input.d, var_1)).c.wwz, vec3<u32>(~26570u, abs(var_1.c.x), 6602u)) ^ ~(~(vec3<u32>(var_4.c.x, 0u, var_4.c.x) & vec3<u32>(43320u, var_1.c.x, var_2.a.c.x))));
}

