struct Struct_1 {
    a: f32,
    b: vec2<f32>,
    c: vec4<i32>,
    d: vec2<u32>,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: vec4<i32>) -> f32 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(round(-489f)), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1136f), 113f), vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(179f + 1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1415f - -513f)))), ~(~arg_0), vec2<u32>(select(26556u, abs(4294967295u), true), 27122u), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(212f, 1f))));
    var_0 = Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.a))), _wgslsmith_f_op_vec2_f32(-var_0.b), var_0.c, var_0.d, var_0.b);
    var var_1 = Struct_1(-1046f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -1000f)))), arg_0, vec2<u32>(_wgslsmith_mod_u32(~_wgslsmith_clamp_u32(u_input.a, 22115u, 4564u), 0u), _wgslsmith_div_u32(_wgslsmith_mult_u32(u_input.d, 40333u), 1u)), _wgslsmith_f_op_vec2_f32(floor(var_0.b)));
    var_1 = Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1863f - 1230f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.e.x, -912f) * _wgslsmith_f_op_vec2_f32(-var_0.e)), ~(_wgslsmith_mult_vec4_i32(-var_0.c, arg_0) | (_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c, u_input.c, 2147483647i, -59920i), vec4<i32>(2147483647i, -1i, -2147483647i, -2147483647i)) ^ abs(arg_0))), var_0.d, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_0.b.x, _wgslsmith_f_op_f32(sign(-225f))), _wgslsmith_f_op_vec2_f32(var_1.b - vec2<f32>(var_0.a, 197f)))) + var_1.b));
    let var_2 = _wgslsmith_add_vec3_u32(select(_wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(var_1.d.x, 4863u, var_1.d.x), ~vec3<u32>(u_input.a, var_0.d.x, var_1.d.x)), ~(~vec3<u32>(var_1.d.x, u_input.d, 4294967295u))), vec3<u32>(var_0.d.x, 22984u, ~u_input.d), true), ~vec3<u32>(u_input.d, ~abs(0u), var_0.d.x ^ var_1.d.x));
    return _wgslsmith_f_op_f32(f32(-1f) * -1000f);
}

fn func_2(arg_0: vec4<bool>, arg_1: vec2<i32>, arg_2: vec2<u32>, arg_3: f32) -> bool {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_3(_wgslsmith_mod_vec4_i32(-vec4<i32>(arg_1.x, 47954i, 36317i, -1i), firstLeadingBit(vec4<i32>(2147483647i, -2147483647i, u_input.b, -14740i))))))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_3), _wgslsmith_f_op_f32(sign(-521f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_3 + -1000f))))), vec4<i32>(~1i, 8721i >> (~u_input.a % 32u), 0i, ~(-1i ^ arg_1.x)) >> (firstTrailingBit(vec4<u32>(6520u, abs(79981u), arg_2.x << (arg_2.x % 32u), arg_2.x)) % vec4<u32>(32u)), _wgslsmith_clamp_vec2_u32(reverseBits(arg_2), arg_2 >> (arg_2 % vec2<u32>(32u)), arg_2 & vec2<u32>(~1u, 0u)), vec2<f32>(1103f, arg_3));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3) + _wgslsmith_f_op_f32(-930f - _wgslsmith_f_op_f32(-1264f * var_0.b.x))) + var_0.e.x));
    var var_2 = u_input.d;
    let var_3 = Struct_1(var_0.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(var_0.e, vec2<f32>(arg_3, -643f), false)) + var_0.e)), var_0.c, var_0.d, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(var_0.b)), _wgslsmith_f_op_vec2_f32(trunc(var_0.b)), select(vec2<bool>(false, arg_0.x), arg_0.ww, arg_0.wy)))), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_0.a, 896f))))));
    let var_4 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-155f, var_0.b.x)), var_3.e, min(vec4<i32>(~(-29651i), min(0i >> (1u % 32u), abs(3086i)), -1i, ~(-u_input.b)), vec4<i32>(-2147483647i, _wgslsmith_add_i32(var_0.c.x, -u_input.b), _wgslsmith_div_i32(_wgslsmith_mod_i32(u_input.b, u_input.b), min(var_0.c.x, var_3.c.x)), ~(~arg_1.x))), vec2<u32>(4294967295u, 34112u), vec2<f32>(_wgslsmith_f_op_f32(136f - var_0.e.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(var_0.b.x, var_3.b.x, true)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(var_0.b.x)), -554f))));
    return any(!(!arg_0));
}

fn func_4(arg_0: vec2<bool>, arg_1: vec2<f32>) -> Struct_1 {
    let var_0 = 37459u;
    let var_1 = _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(min(vec3<i32>(u_input.b, 0i, u_input.c), vec3<i32>(~u_input.c, -63223i, _wgslsmith_mult_i32(u_input.b, 0i))), vec3<i32>(i32(-1i) * -3508i, u_input.b, u_input.c) | vec3<i32>(max(765i, 2147483647i), -2147483647i, -u_input.c)), abs(min(u_input.b, firstLeadingBit(~(-1i)))));
    var var_2 = true;
    let var_3 = _wgslsmith_f_op_f32(exp2(arg_1.x));
    var_2 = _wgslsmith_sub_u32(4664u, var_0) < _wgslsmith_add_u32(_wgslsmith_add_u32(var_0, 0u >> (var_0 % 32u)), ~_wgslsmith_dot_vec2_u32(vec2<u32>(20575u, 67221u), vec2<u32>(24850u, 4294967295u)) ^ ~(~var_0));
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-210f * arg_1.x) + arg_1.x), vec2<f32>(_wgslsmith_f_op_f32(trunc(arg_1.x)), 215f), ~_wgslsmith_mod_vec4_i32(~vec4<i32>(-1i, -1i, var_1, -2147483647i), abs(vec4<i32>(9227i, u_input.b, var_1, var_1))), vec2<u32>(var_0, _wgslsmith_mod_u32(~(~4294967295u), 4294967295u)), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_1 - vec2<f32>(1186f, arg_1.x)) * _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_3, var_3)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3, 981f))))), vec2<f32>(arg_1.x, -1000f))));
}

fn func_1() -> Struct_1 {
    let var_0 = func_4(vec2<bool>(true != !any(vec3<bool>(true, true, true)), func_2(vec4<bool>(true, true, all(vec4<bool>(true, true, false, true)), select(true, false, false)), vec2<i32>(-u_input.c, u_input.c), ~(~vec2<u32>(u_input.d, 27191u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(325f, 910f)) * 2315f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1325f, -106f))))))));
    var var_1 = ~(-16656i);
    var_1 = -2147483647i;
    let var_2 = u_input.d;
    var_1 = _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, -u_input.c), abs(_wgslsmith_mult_vec2_i32(-vec2<i32>(-1i, 1i), vec2<i32>(abs(u_input.b), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, u_input.c), vec2<i32>(var_0.c.x, 2147483647i))))));
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = !vec2<bool>(!func_2(vec4<bool>(true, false, false, true), _wgslsmith_mod_vec2_i32(vec2<i32>(25125i, -775i), var_0.c.wy), var_0.d >> (var_0.d % vec2<u32>(32u)), _wgslsmith_f_op_f32(var_0.e.x + 927f)), true);
    var var_2 = firstLeadingBit(var_0.c.zy);
    var var_3 = func_1();
    let var_4 = func_1();
    let var_5 = vec2<f32>(_wgslsmith_f_op_f32(-1f), var_4.e.x);
    var_3 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_5.x, _wgslsmith_div_f32(var_5.x, var_0.e.x))), var_4.b, vec4<i32>(_wgslsmith_mult_i32(1i, var_0.c.x) & (i32(-1i) * -1i), -6174i, abs(39453i), _wgslsmith_mod_i32(max(35894i, 2147483647i), ~u_input.c)) & (vec4<i32>(-1i) * -var_3.c), vec2<u32>(firstTrailingBit(~_wgslsmith_sub_u32(0u, var_3.d.x)), min(var_0.d.x, 4294967295u)), vec2<f32>(_wgslsmith_f_op_f32(select(var_0.e.x, var_5.x, false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_4.b.x) - var_3.a))));
    var_0 = func_4(vec2<bool>(!(_wgslsmith_f_op_f32(-468f - 1174f) <= _wgslsmith_f_op_f32(round(var_0.b.x))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.b.x))) <= _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_5.x * var_3.a), func_4(vec2<bool>(var_1.x, false), vec2<f32>(781f, var_5.x)).b.x))), var_4.e);
    var var_6 = func_4(select(vec2<bool>(var_1.x, var_1.x), select(vec2<bool>(var_3.b.x == 605f, var_1.x), select(select(vec2<bool>(false, true), vec2<bool>(false, true), var_1.x), !vec2<bool>(false, var_1.x), true), var_1.x), select(select(vec2<bool>(var_1.x, false), !vec2<bool>(false, var_1.x), any(vec2<bool>(var_1.x, false))), !(!vec2<bool>(var_1.x, var_1.x)), !select(vec2<bool>(true, true), vec2<bool>(false, var_1.x), var_1.x))), _wgslsmith_f_op_vec2_f32(-var_4.e));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_add_u32(~38655u, _wgslsmith_div_u32(4294967295u, var_4.d.x)), _wgslsmith_sub_vec2_u32(vec2<u32>(min(~23059u, _wgslsmith_add_u32(var_0.d.x, 0u)), 0u), var_4.d));
}

