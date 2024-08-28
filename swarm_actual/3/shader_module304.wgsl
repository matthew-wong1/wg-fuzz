struct Struct_1 {
    a: f32,
    b: vec4<u32>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: vec2<i32>,
    d: f32,
    e: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: f32,
    d: u32,
    e: vec2<i32>,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec4<u32>,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32) -> f32 {
    var var_0 = !(!(!select(!vec3<bool>(false, arg_0.c.x, true), select(vec3<bool>(arg_1.c.x, arg_0.c.x, true), vec3<bool>(false, false, false), false), arg_1.c.x)));
    var var_1 = arg_0.a;
    var_1 = arg_1.a;
    var_0 = vec3<bool>(true, true, false);
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a * arg_1.a)), arg_0.a)));
    return arg_0.a;
}

fn func_4(arg_0: vec2<bool>, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: f32) -> vec4<u32> {
    var var_0 = _wgslsmith_f_op_f32(-arg_3);
    var_0 = arg_3;
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3 + _wgslsmith_f_op_f32(max(arg_3, _wgslsmith_f_op_f32(arg_2.a - arg_2.a)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(arg_2.a)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3 * arg_3) * _wgslsmith_f_op_f32(-arg_2.a)))));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_3, arg_3, arg_3) * vec3<f32>(arg_2.a, arg_3, 528f)) - _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_2.a, arg_3, -634f)))))));
    return vec4<u32>(4294967295u, _wgslsmith_add_u32(firstTrailingBit(42652u), min(31605u, arg_2.b.x) << (firstLeadingBit(0u) % 32u)), max(~(~u_input.c.x), abs(arg_1.x << (arg_2.b.x % 32u))), _wgslsmith_sub_u32(select(arg_2.b.x, 0u, arg_2.c.x), 25187u) << (abs(arg_1.x) % 32u)) << (min(arg_2.b, arg_1) % vec4<u32>(32u));
}

fn func_2(arg_0: vec3<i32>) -> vec2<f32> {
    var var_0 = ~u_input.c.xz;
    let var_1 = ~u_input.c.xzw;
    var var_2 = 2147483647i;
    var var_3 = Struct_4(Struct_1(605f, abs(firstLeadingBit(u_input.c)) ^ func_4(vec2<bool>(false, true), u_input.c, Struct_1(1000f, vec4<u32>(0u, var_0.x, var_1.x, var_1.x), vec2<bool>(true, false)), _wgslsmith_f_op_f32(func_3(Struct_1(170f, u_input.c, vec2<bool>(true, false)), Struct_1(-400f, u_input.c, vec2<bool>(false, true)), u_input.a.x))), select(vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, false), true), true), select(vec2<bool>(true, true), vec2<bool>(true, true), false))));
    let var_4 = Struct_3(Struct_2(1u, u_input.e, vec2<i32>(2147483647i, arg_0.x << (countOneBits(u_input.c.x) % 32u)), 1566f, false), ~var_3.a.b.x, var_3.a.a, ~_wgslsmith_dot_vec2_u32(var_1.yy, abs(vec2<u32>(1u, var_0.x) >> (vec2<u32>(22945u, 28979u) % vec2<u32>(32u)))), abs(-firstTrailingBit(select(arg_0.xz, arg_0.zx, vec2<bool>(var_3.a.c.x, var_3.a.c.x)))));
    return _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-728f, var_4.c)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1150f, var_4.c))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_3.a.a, var_3.a.a) - vec2<f32>(-237f, var_3.a.a)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_3.a.a, -962f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_4.c, var_3.a.a))))))));
}

fn func_5(arg_0: vec2<f32>) -> Struct_3 {
    let var_0 = _wgslsmith_div_u32(u_input.b & ~4294967295u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(countOneBits(1u), min(1u, 19115u), u_input.c.x, u_input.b), ~(~vec4<u32>(u_input.e, 1u, u_input.c.x, u_input.c.x))));
    var var_1 = Struct_2(_wgslsmith_sub_u32(var_0 >> (var_0 % 32u), 41398u), u_input.c.x, ~vec2<i32>(-40489i, u_input.a.x << (~19566u % 32u)), _wgslsmith_f_op_f32(exp2(arg_0.x)), true && all(select(vec4<bool>(true, true, false, true), select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true)), true)));
    let var_2 = vec2<f32>(var_1.d, _wgslsmith_f_op_f32(abs(-370f)));
    var var_3 = Struct_2(164949u, var_0, ~(var_1.c & vec2<i32>(_wgslsmith_mult_i32(u_input.a.x, u_input.a.x), -20468i | u_input.a.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(var_2.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -601f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(1247f, var_1.d, true)))))))), var_1.d >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_0.x))));
    var_1 = Struct_2(0u, 15368u, min(_wgslsmith_add_vec2_i32(vec2<i32>(-2147483647i, var_1.c.x), -var_3.c), abs(min(~var_1.c, var_1.c ^ u_input.a))), _wgslsmith_f_op_f32(-var_3.d), any(vec4<bool>(true, (false | var_3.e) & false, all(!vec2<bool>(var_3.e, true)), var_3.e)));
    return Struct_3(Struct_2(~select(1u, var_1.b, var_3.e) & countOneBits(~var_1.b), 4294967295u, _wgslsmith_div_vec2_i32(max(vec2<i32>(54064i, u_input.a.x), vec2<i32>(58033i, var_3.c.x)), countOneBits(vec2<i32>(var_3.c.x, 0i))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -908f), _wgslsmith_f_op_f32(abs(var_2.x))), true), firstTrailingBit(_wgslsmith_clamp_u32(u_input.b, var_1.a, select(var_3.a, 4294967295u, any(vec2<bool>(true, true))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(var_3.d)), 1000f)), _wgslsmith_clamp_u32(var_0, var_0, _wgslsmith_div_u32(50426u, ~11232u)), reverseBits(vec2<i32>(22219i, 50590i)));
}

fn func_6(arg_0: u32, arg_1: Struct_3) -> Struct_1 {
    let var_0 = ~u_input.e;
    var var_1 = Struct_2(u_input.c.x, _wgslsmith_sub_u32(65642u, 14664u), u_input.a, _wgslsmith_f_op_f32(func_3(Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(arg_1.a.d)))), abs(vec4<u32>(arg_0, u_input.e, 4294967295u, u_input.d.x)), select(vec2<bool>(arg_1.a.e, arg_1.a.e), vec2<bool>(arg_1.a.e, arg_1.a.e), any(vec3<bool>(true, arg_1.a.e, arg_1.a.e)))), Struct_1(_wgslsmith_f_op_f32(arg_1.a.d - arg_1.a.d), u_input.c, !(!vec2<bool>(arg_1.a.e, arg_1.a.e))), -27138i)), !(true || ((arg_1.a.e || arg_1.a.e) & select(false, false, arg_1.a.e))));
    var var_2 = Struct_1(var_1.d, firstTrailingBit(min(u_input.d, u_input.c)), vec2<bool>(!any(vec2<bool>(false, arg_1.a.e)) | (arg_1.a.e && (arg_1.a.e | true)), ~u_input.e > ~(~5637u)));
    let var_3 = 4294967295u;
    var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1263f)) - 1000f), ~_wgslsmith_mult_vec4_u32(u_input.c, vec4<u32>(select(51478u, 4294967295u, true), _wgslsmith_sub_u32(23855u, var_1.a), 4294967295u ^ var_1.a, ~var_0)), var_2.c);
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_3(Struct_1(var_2.a, vec4<u32>(56451u, arg_1.b, arg_0, 65100u), vec2<bool>(true, false)), Struct_1(-123f, vec4<u32>(var_1.b, u_input.b, 1u, 0u), var_2.c), -arg_1.a.c.x)), -232f))), ~(~(~(u_input.d >> (u_input.c % vec4<u32>(32u))))), !vec2<bool>(!all(vec4<bool>(var_1.e, true, true, true)), !any(vec2<bool>(arg_1.a.e, false))));
}

fn func_1(arg_0: vec2<i32>, arg_1: u32, arg_2: i32, arg_3: Struct_2) -> u32 {
    var var_0 = func_6(0u, func_5(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_2(select(vec3<i32>(arg_3.c.x, arg_0.x, u_input.a.x), vec3<i32>(0i, arg_0.x, arg_2), true))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3.d, -129f)))));
    var_0 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -851f), u_input.d & var_0.b, var_0.c);
    var_0 = func_6(u_input.e, func_5(vec2<f32>(_wgslsmith_f_op_f32(max(1161f, 225f)), _wgslsmith_f_op_f32(f32(-1f) * -2079f))));
    var var_1 = Struct_4(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_3.d, arg_3.d))), var_0.b, var_0.c));
    var var_2 = Struct_2(func_5(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(961f, -373f) * vec2<f32>(229f, arg_3.d)))))).b, ~0u, arg_3.c, arg_3.d, var_0.c.x);
    return max(10827u, ~var_0.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!all(vec4<bool>(true, true, true, true)));
    var_0 = !(!(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(0u, 1u, 76295u), 1u) >= _wgslsmith_add_u32(firstTrailingBit(1u), u_input.e)));
    var_0 = (func_1(u_input.a, 1u, ~min(u_input.a.x, 8159i), Struct_2(_wgslsmith_div_u32(u_input.d.x, u_input.e), 4294967295u ^ u_input.e, ~vec2<i32>(u_input.a.x, -6068i), 1000f, true)) > ~(~0u)) || !((~u_input.c.x & _wgslsmith_add_u32(0u, u_input.e)) < _wgslsmith_add_u32(~51847u, u_input.e));
    var_0 = any(!func_6(~(~4294967295u), func_5(vec2<f32>(1f, 1f))).c);
    var_0 = false;
    var_0 = true;
    var_0 = all(vec3<bool>(true, true, true));
    let var_1 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1272f, 1298f)) + _wgslsmith_f_op_vec2_f32(func_2(vec3<i32>(u_input.a.x, 0i, -1i)))))))));
    var_0 = false;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(83328u, 8777u, u_input.d.x, _wgslsmith_mod_u32(u_input.d.x, 2183u) >> (u_input.b % 32u)) | u_input.c, var_1.x);
}

