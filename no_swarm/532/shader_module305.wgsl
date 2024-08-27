struct Struct_1 {
    a: f32,
    b: bool,
    c: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec3<u32>,
    d: vec3<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
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

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: u32) -> i32 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(104f - _wgslsmith_f_op_f32(f32(-1f) * -979f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(3143f, -1289f, true)), _wgslsmith_f_op_f32(f32(-1f) * -107f), any(vec2<bool>(true, true)))) - -461f))), u_input.a.x > -14389i, 1f);
    var var_1 = any(select(vec2<bool>(var_0.b, true), vec2<bool>(any(select(vec4<bool>(false, false, var_0.b, true), vec4<bool>(true, false, var_0.b, var_0.b), vec4<bool>(var_0.b, var_0.b, var_0.b, var_0.b))), true && all(vec2<bool>(var_0.b, var_0.b))), select(vec2<bool>(true, true), select(!vec2<bool>(var_0.b, var_0.b), vec2<bool>(false, var_0.b), select(vec2<bool>(var_0.b, var_0.b), vec2<bool>(false, false), var_0.b)), select(!var_0.b, var_0.b, var_0.b))));
    var_1 = var_0.b;
    var_1 = any(select(select(select(vec4<bool>(var_0.b, var_0.b, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, var_0.b, false, var_0.b)), vec4<bool>(true, true, true, true), vec4<bool>(var_0.b, true, var_0.b, true)), vec4<bool>(true, false, !var_0.b, true), false)) & var_0.b;
    var var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(var_0.c, 880f, var_0.b)), 1511f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-345f + -1133f))) * _wgslsmith_f_op_f32(select(var_0.a, _wgslsmith_f_op_f32(f32(-1f) * -1000f), !all(vec3<bool>(false, false, var_0.b))))), !var_0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1565f))));
    return ~firstLeadingBit(~_wgslsmith_mod_i32(u_input.b, u_input.b)) | u_input.a.x;
}

fn func_2(arg_0: vec4<f32>) -> f32 {
    var var_0 = -1333f;
    var_0 = _wgslsmith_f_op_f32(abs(-1400f));
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-899f, -612f, _wgslsmith_f_op_f32(ceil(-690f)))) * vec3<f32>(arg_0.x, arg_0.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.x, 408f) - arg_0.x))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(arg_0.yzy, _wgslsmith_f_op_vec3_f32(-arg_0.wwy))) * _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-arg_0.yxy)))));
    let var_2 = Struct_1(var_1.x, 2147483647i >= (-func_3(13594u) >> (u_input.d.x % 32u)), _wgslsmith_f_op_f32(-var_1.x));
    let var_3 = arg_0.zxz;
    return _wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(select(var_2.a, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -774f))), !(true || (true || var_2.b)))));
}

fn func_1() -> Struct_1 {
    var var_0 = ~71142u;
    var_0 = u_input.d.x;
    var_0 = 4294967295u & abs(~_wgslsmith_clamp_u32(u_input.c.x, _wgslsmith_add_u32(u_input.e.x, u_input.c.x), select(47404u, 27044u, false)));
    var_0 = 4294967295u & u_input.c.x;
    let var_1 = vec3<bool>(true, true, _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-2308f, -1938f, 1068f, -1381f), vec4<f32>(-1470f, -555f, 154f, 541f))))) >= 1f);
    return Struct_1(_wgslsmith_f_op_f32(abs(-1380f)), all(select(vec4<bool>(var_1.x, false, u_input.b > 0i, var_1.x == var_1.x), select(select(vec4<bool>(var_1.x, false, true, false), vec4<bool>(var_1.x, true, false, var_1.x), vec4<bool>(false, false, false, true)), select(vec4<bool>(var_1.x, var_1.x, true, var_1.x), vec4<bool>(var_1.x, true, var_1.x, var_1.x), vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x)), !vec4<bool>(var_1.x, true, true, var_1.x)), select(vec4<bool>(true, var_1.x, var_1.x, false), !vec4<bool>(var_1.x, var_1.x, var_1.x, true), !vec4<bool>(false, var_1.x, true, false)))), _wgslsmith_f_op_f32(f32(-1f) * -1018f));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<bool>) -> Struct_1 {
    let var_0 = vec3<i32>(-46561i, 0i, _wgslsmith_sub_i32(-abs(0i), _wgslsmith_sub_i32(firstTrailingBit(u_input.a.x << (4294967295u % 32u)), u_input.a.x)));
    let var_1 = arg_0;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.c - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-162f + var_1.c))))));
    let var_3 = func_1();
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-587f, var_1.a)) + arg_0.c)));
    return func_1();
}

fn func_5(arg_0: Struct_1, arg_1: f32) -> Struct_1 {
    let var_0 = func_4(Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_0.a))), arg_0.b, arg_0.c), vec4<bool>(arg_0.b, true, false, !arg_0.b));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(floor(arg_0.a)), _wgslsmith_f_op_f32(160f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-446f * 1000f)) - func_1().c)), _wgslsmith_f_op_f32(sign(614f)));
    var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.c, 1810f, _wgslsmith_f_op_f32(var_0.a * -1772f)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -1378f, var_1.x))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_1, -2133f, var_0.c))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1000f, var_0.a, var_0.a), vec3<f32>(arg_0.c, -1040f, arg_0.a), false)))))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_1))));
    var_1 = _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_div_f32(arg_0.c, -1082f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x * 1190f)), _wgslsmith_div_f32(-513f, _wgslsmith_div_f32(var_2, _wgslsmith_f_op_f32(max(550f, 698f)))))));
    return Struct_1(var_0.a, !any(select(vec2<bool>(arg_0.b, var_0.b), select(vec2<bool>(false, arg_0.b), vec2<bool>(var_0.b, false), var_0.b), true)), _wgslsmith_f_op_f32(step(var_2, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(761f * arg_0.c) * _wgslsmith_f_op_f32(-703f - var_2))))));
}

fn func_6(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1) -> vec3<bool> {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(arg_1.c, 2466f), 1142f))), _wgslsmith_f_op_f32(-1605f - -432f))), _wgslsmith_f_op_f32(f32(-1f) * -187f), _wgslsmith_f_op_f32(trunc(-500f)), 329f);
    var var_1 = arg_2;
    let var_2 = Struct_1(arg_2.a, !(false || (arg_1.b & var_1.b)) != func_1().b, var_0.x);
    let var_3 = var_2;
    var_1 = Struct_1(_wgslsmith_div_f32(func_5(func_1(), -1000f).c, _wgslsmith_f_op_f32(-arg_2.c)), false | ((~u_input.c.x ^ ~u_input.d.x) <= 35728u), var_2.c);
    return !select(vec3<bool>(false, true, any(select(vec3<bool>(var_1.b, arg_2.b, arg_2.b), vec3<bool>(true, true, var_2.b), vec3<bool>(true, var_1.b, false)))), vec3<bool>(false, !arg_1.b, all(!vec3<bool>(false, arg_1.b, true))), arg_2.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a.xz;
    let var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-484f, 618f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(552f + 1320f)))))));
    var var_2 = select(func_6(u_input.a.x, func_5(func_4(func_1(), select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, false))), -308f), func_4(func_4(Struct_1(var_1.x, false, var_1.x), vec4<bool>(false, true, false, true)), vec4<bool>(true, true, true, true))), select(select(func_6(_wgslsmith_mult_i32(var_0.x, u_input.a.x), Struct_1(111f, false, var_1.x), Struct_1(var_1.x, true, var_1.x)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), func_6(u_input.a.x, Struct_1(1746f, true, -2884f), Struct_1(var_1.x, false, 609f))), any(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false)))), vec3<bool>(true, true, _wgslsmith_clamp_i32(var_0.x, var_0.x, var_0.x) < _wgslsmith_sub_i32(u_input.b, 1i)), vec3<bool>(true, true, true)), true);
    var_2 = !func_6(u_input.a.x, func_4(func_1(), !(!vec4<bool>(var_2.x, var_2.x, true, var_2.x))), func_1());
    let var_3 = vec3<f32>(var_1.x, var_1.x, 515f);
    var var_4 = true;
    let x = u_input.a;
    s_output = StorageBuffer(16170u, u_input.d);
}

