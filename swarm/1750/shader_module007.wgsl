struct Struct_1 {
    a: vec4<bool>,
    b: vec4<bool>,
    c: vec3<f32>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: i32,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: bool) -> bool {
    var var_0 = arg_1.a;
    let var_1 = 43066u & u_input.b.x;
    var var_2 = select(!arg_1.a.a.xyz, !vec3<bool>(true, !arg_2, false), var_0.a.x);
    var_2 = vec3<bool>(any(var_0.b), !all(var_0.b), true);
    let var_3 = Struct_1(vec4<bool>(var_0.a.x, all(!vec3<bool>(var_0.a.x, false, arg_2)), min(-var_0.d.x, _wgslsmith_mod_i32(u_input.c, var_0.d.x)) >= (38049i >> (_wgslsmith_add_u32(0u, u_input.b.x) % 32u)), !arg_2), select(!(!arg_1.a.b), var_0.a, !vec4<bool>(var_0.b.x, false, var_2.x, any(var_0.a))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1605f * arg_1.a.c.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a.c.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x))), _wgslsmith_f_op_f32(-var_0.c.x)), _wgslsmith_clamp_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(1i, _wgslsmith_mult_i32(55873i, var_0.d.x)), arg_1.a.d.x, _wgslsmith_div_i32(-21720i, var_0.d.x)), select(vec3<i32>(-18518i, u_input.c, -2147483647i), vec3<i32>(25956i, abs(arg_1.a.d.x), var_0.d.x << (58375u % 32u)), vec3<bool>(true, all(vec3<bool>(false, var_0.a.x, false)), !arg_2)), firstLeadingBit(_wgslsmith_sub_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.e, 1i, -19817i), vec3<i32>(u_input.d.x, 21841i, var_0.d.x)), vec3<i32>(var_0.d.x, -943i, -1i)))));
    return false;
}

fn func_2(arg_0: f32) -> Struct_1 {
    var var_0 = Struct_1(!vec4<bool>(all(vec2<bool>(false, false)), func_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(1316f, arg_0, -1612f, arg_0) - vec4<f32>(arg_0, arg_0, arg_0, 919f)), Struct_2(Struct_1(vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true), vec3<f32>(arg_0, 373f, 607f), vec3<i32>(-2147483647i, u_input.e, u_input.e))), true), !all(vec2<bool>(false, false)), true), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, u_input.d.x > u_input.a.x)), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(arg_0, 1928f, -1166f), vec3<f32>(arg_0, arg_0, 1236f)) * vec3<f32>(1587f, arg_0, arg_0)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, -1174f, arg_0) - vec3<f32>(arg_0, arg_0, 1000f)) - _wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_0, arg_0, -1415f), vec3<f32>(arg_0, -417f, arg_0))))))), u_input.d.xzz);
    let var_1 = Struct_1(!vec4<bool>(var_0.b.x, false, !(!var_0.b.x), any(!vec4<bool>(true, var_0.b.x, false, true))), !select(vec4<bool>(false, var_0.b.x, var_0.b.x, any(var_0.a)), var_0.b, false), var_0.c, select(_wgslsmith_mult_vec3_i32(vec3<i32>(5763i ^ var_0.d.x, _wgslsmith_sub_i32(-51032i, -2147483647i), var_0.d.x), -vec3<i32>(var_0.d.x, -24079i, u_input.e)), _wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_mod_i32(var_0.d.x, u_input.e), min(var_0.d.x, u_input.e), u_input.e), _wgslsmith_sub_vec3_i32(abs(u_input.a), var_0.d)), var_0.b.wwz));
    let var_2 = var_1;
    let var_3 = var_0.d.x;
    let var_4 = var_2.a.x;
    return Struct_1(!select(var_1.a, !select(vec4<bool>(var_1.b.x, true, var_2.a.x, false), vec4<bool>(var_0.a.x, false, true, var_1.a.x), var_0.b.x), var_1.b), !(!(!var_0.a)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.c.x, var_2.c.x, -2035f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_2.c * vec3<f32>(1315f, arg_0, arg_0)))), var_2.c), vec3<i32>(-1i, _wgslsmith_sub_i32(~1i, 1i), _wgslsmith_sub_i32(-1i, i32(-1i) * -1i)) << (~firstLeadingBit(vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x) ^ vec3<u32>(1u, u_input.b.x, u_input.b.x)) % vec3<u32>(32u)));
}

fn func_1(arg_0: Struct_1, arg_1: u32, arg_2: Struct_2) -> Struct_1 {
    let var_0 = firstLeadingBit(_wgslsmith_add_vec2_i32(arg_2.a.d.yx, vec2<i32>(arg_0.d.x << (abs(1u) % 32u), countOneBits(arg_0.d.x) & firstLeadingBit(u_input.c))));
    let var_1 = func_2(arg_2.a.c.x);
    var var_2 = arg_2;
    var var_3 = arg_0.a;
    var_3 = !select(vec4<bool>(false, true, all(func_2(1000f).b.yz), !any(var_2.a.b.xyz)), vec4<bool>(var_3.x, all(vec4<bool>(arg_0.a.x, arg_2.a.b.x, false, false)) & arg_0.b.x, (arg_0.c.x != 903f) || (var_2.a.b.x | true), _wgslsmith_f_op_f32(779f + 1225f) > _wgslsmith_f_op_f32(max(arg_2.a.c.x, var_1.c.x))), any(vec2<bool>(arg_2.a.b.x, false)));
    return Struct_1(vec4<bool>(any(arg_2.a.a.xy), any(select(vec3<bool>(false, false, false), vec3<bool>(arg_0.a.x, var_2.a.b.x, false), var_1.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.c.x * -754f) - _wgslsmith_f_op_f32(step(-505f, -1390f))) >= _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(1479f)))), !var_2.a.b.x), select(select(!vec4<bool>(var_2.a.b.x, true, true, var_3.x), !vec4<bool>(arg_0.b.x, true, false, true), select(var_1.b, func_2(838f).a, select(var_1.a, vec4<bool>(false, var_2.a.b.x, false, false), false))), select(vec4<bool>(true, arg_2.a.d.x != arg_2.a.d.x, var_1.b.x, all(vec4<bool>(arg_2.a.b.x, var_3.x, var_3.x, var_1.a.x))), !var_2.a.b, arg_0.a), true), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1425f))), arg_2.a.c.x), arg_0.d);
}

fn func_4(arg_0: Struct_1) -> vec3<f32> {
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-func_2(412f).c), arg_0.c) + arg_0.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.d;
    var var_1 = _wgslsmith_f_op_vec3_f32(func_4(func_1(Struct_1(select(select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, false)), vec4<bool>(true, true, true, true), true), select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false), false)), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(841f, -137f, -324f))), select(_wgslsmith_div_vec3_i32(vec3<i32>(-40155i, 50847i, 0i), u_input.a), vec3<i32>(1i, u_input.e, var_0.x), true)), ~u_input.b.x, Struct_2(Struct_1(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), false), vec4<bool>(true, true, true, true), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1227f, -1000f, -127f))), select(var_0.ywy, u_input.a, vec3<bool>(true, false, true)))))));
    let var_2 = u_input.e;
    var var_3 = _wgslsmith_div_u32(u_input.b.x, ~1u) >> (u_input.b.x % 32u);
    var_3 = _wgslsmith_mod_u32(29420u, 1u);
    var var_4 = u_input.b.x;
    var var_5 = abs(_wgslsmith_mult_vec2_u32(u_input.b, firstTrailingBit(_wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(u_input.b, u_input.b), _wgslsmith_clamp_vec2_u32(u_input.b, vec2<u32>(u_input.b.x, u_input.b.x), u_input.b)))));
    var_1 = vec3<f32>(1282f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_1.x, var_1.x)) - -1418f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec4_u32(~(~select(vec4<u32>(5930u, 1u, 0u, 71749u), vec4<u32>(30470u, 26700u, 0u, 4294967295u), true)), ~min(~vec4<u32>(0u, u_input.b.x, u_input.b.x, 70785u), vec4<u32>(306u, var_5.x, u_input.b.x, u_input.b.x) >> (vec4<u32>(u_input.b.x, u_input.b.x, var_5.x, 6667u) % vec4<u32>(32u)))));
}

