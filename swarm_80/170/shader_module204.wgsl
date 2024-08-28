struct Struct_1 {
    a: bool,
    b: vec3<f32>,
    c: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: i32,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: vec3<bool>) -> vec4<bool> {
    let var_0 = firstTrailingBit(94875u);
    let var_1 = Struct_1(arg_0.x & all(select(!vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), select(vec4<bool>(arg_0.x, arg_0.x, true, arg_0.x), vec4<bool>(true, true, false, true), false), vec4<bool>(true, arg_0.x, true, arg_0.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-207f, 844f, -497f)))))) - _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-565f, 1359f, 1905f) - vec3<f32>(-339f, -524f, 1558f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(401f, 1856f, 212f)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(vec2<f32>(1957f, 300f) - vec2<f32>(433f, -3185f)))))));
    let var_2 = ~min(firstTrailingBit(firstLeadingBit(u_input.b >> (var_0 % 32u))), min(1u, max(38498u, 1u)) >> (var_0 % 32u));
    var var_3 = u_input.c;
    let var_4 = -79225i;
    return select(!select(select(select(vec4<bool>(true, var_1.a, var_1.a, arg_0.x), vec4<bool>(var_1.a, var_1.a, false, var_1.a), true), select(vec4<bool>(arg_0.x, false, true, arg_0.x), vec4<bool>(arg_0.x, false, var_1.a, true), vec4<bool>(false, false, false, arg_0.x)), arg_0.x), !select(vec4<bool>(true, arg_0.x, var_1.a, var_1.a), vec4<bool>(arg_0.x, arg_0.x, var_1.a, arg_0.x), var_1.a), all(select(arg_0.yx, arg_0.xx, var_1.a))), vec4<bool>(true, all(vec3<bool>(true, any(vec4<bool>(true, arg_0.x, arg_0.x, true)), arg_0.x)), !(var_1.b.x >= _wgslsmith_f_op_f32(-var_1.c.x)), all(!vec3<bool>(true, arg_0.x, var_1.a))), all(select(select(select(vec4<bool>(true, arg_0.x, false, false), vec4<bool>(false, arg_0.x, true, arg_0.x), arg_0.x), !vec4<bool>(var_1.a, var_1.a, false, true), arg_0.x | var_1.a), vec4<bool>(!arg_0.x, !arg_0.x, false, select(true, var_1.a, var_1.a)), vec4<bool>(arg_0.x | false, var_1.c.x != var_1.b.x, true, var_2 == var_2))));
}

fn func_2(arg_0: vec3<u32>, arg_1: f32) -> vec3<f32> {
    var var_0 = 1171f;
    let var_1 = Struct_1(!(_wgslsmith_mod_i32(~u_input.a, ~(-1i)) != _wgslsmith_div_i32(~1833i, _wgslsmith_sub_i32(u_input.a, u_input.a))), vec3<f32>(_wgslsmith_f_op_f32(arg_1 + _wgslsmith_f_op_f32(trunc(arg_1))), -1371f, arg_1), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, arg_1)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, arg_1) - vec2<f32>(arg_1, -1390f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-345f, 1000f)))));
    let var_2 = Struct_2(var_1);
    var var_3 = !(!select(func_3(vec3<bool>(true, var_2.a.a, var_1.a)), func_3(func_3(vec3<bool>(var_2.a.a, true, true)).zyz), vec4<bool>(true, true, false, true)));
    var var_4 = ~arg_0.zz;
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.c.x, -130f, -1134f)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(var_1.b)) * vec3<f32>(634f, arg_1, arg_1))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(var_2.a.b, vec3<f32>(-660f, 1000f, 284f)))), var_2.a.b, var_1.a))) + vec3<f32>(_wgslsmith_div_f32(-1745f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c.x))), -1247f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(400f)))), 482f))));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_1, arg_2: f32, arg_3: Struct_2) -> vec2<f32> {
    let var_0 = arg_0.a.c.x;
    var var_1 = Struct_1(true, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1405f, arg_3.a.b.x, arg_2), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_3.a.b.x, var_0, arg_3.a.c.x) - arg_3.a.b))))), _wgslsmith_f_op_vec2_f32(-arg_3.a.c));
    var var_2 = _wgslsmith_f_op_f32(-var_0);
    let var_3 = Struct_1(select(false, true, true), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_2(~vec3<u32>(u_input.b, u_input.b, 21110u), arg_2)) + _wgslsmith_f_op_vec3_f32(-arg_1.b)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(121f, _wgslsmith_div_f32(var_1.b.x, -1035f), _wgslsmith_f_op_f32(1368f + arg_2))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_vec3_f32(func_2(vec3<u32>(u_input.c, u_input.b, 24475u), _wgslsmith_f_op_f32(arg_3.a.c.x + 116f))).x, _wgslsmith_f_op_f32(sign(var_0)))));
    var var_4 = Struct_1(true, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(step(-1080f, 1099f)), 894f, _wgslsmith_f_op_f32(-arg_2))))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(arg_2, 361f))), vec2<f32>(_wgslsmith_f_op_f32(round(895f)), _wgslsmith_f_op_f32(-var_3.c.x))))));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(541f, 2011f) * 355f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 * var_0))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0, var_1.b.x), arg_3.a.b.yy, vec2<bool>(false, true))))) + var_1.c)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1639f), _wgslsmith_f_op_f32(f32(-1f) * -2655f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1366f, -503f, true)) - _wgslsmith_f_op_f32(ceil(1000f))), _wgslsmith_f_op_f32(ceil(261f)))), select(vec2<bool>(select(1u <= u_input.b, false, any(vec4<bool>(false, false, true, true))), true), !select(vec2<bool>(true, true), vec2<bool>(false, true), true), true)));
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(1497f, var_0.x), _wgslsmith_div_f32(var_0.x, var_0.x)) - _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(func_1(Struct_2(Struct_1(true, vec3<f32>(var_0.x, 775f, -1000f), vec2<f32>(723f, var_0.x))), Struct_1(false, vec3<f32>(var_0.x, -860f, var_0.x), vec2<f32>(2595f, 1038f)), 1729f, Struct_2(Struct_1(true, vec3<f32>(var_0.x, var_0.x, var_0.x), vec2<f32>(var_0.x, 229f)))))))) + _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(sign(-811f)), var_0.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, var_0.x))))));
    let var_1 = -2464f;
    let var_2 = Struct_1(-_wgslsmith_mult_i32(0i, _wgslsmith_sub_i32(14195i, -13844i)) <= ~(~_wgslsmith_clamp_i32(1i, 7036i, -34346i)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_div_f32(var_0.x, 1000f), -550f, 643f), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(vec3<f32>(var_0.x, var_0.x, 1000f), vec3<f32>(var_0.x, 883f, 556f)))))) * _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1631f, 974f, -537f) + vec3<f32>(var_0.x, var_1, -1254f)))))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1, var_0.x) + vec2<f32>(var_0.x, var_0.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-307f, 518f) * vec2<f32>(-1395f, var_0.x))))))));
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.c.x) * var_2.c.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1 + -385f)) - var_0.x), 1216f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(470f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_2.c.x))), 1743f)));
    var var_4 = Struct_2(Struct_1(true, _wgslsmith_f_op_vec3_f32(var_2.b - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(var_3.xwy, vec3<f32>(1249f, -1354f, var_2.b.x))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-586f, var_2.c.x))) + _wgslsmith_div_vec2_f32(vec2<f32>(2595f, var_0.x), var_2.c)))));
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(var_4.a.c.x, -126f)), _wgslsmith_f_op_f32(select(-481f, -473f, var_4.a.a)))), -1253f)));
    var var_5 = Struct_2(var_4.a);
    let x = u_input.a;
    s_output = StorageBuffer(1u, 369f, u_input.a, 1u, _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_clamp_i32(u_input.a, u_input.a, -497i) << (~57081u % 32u), 27024i, -reverseBits(2147483647i)), _wgslsmith_sub_vec3_i32(_wgslsmith_div_vec3_i32(~vec3<i32>(u_input.a, u_input.a, -1i), vec3<i32>(-52615i, -2147483647i, -3815i)), ~vec3<i32>(u_input.a, 6046i, 33872i))));
}

