struct Struct_1 {
    a: bool,
    b: vec3<f32>,
    c: vec2<f32>,
    d: vec2<bool>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec3<bool>,
    c: vec2<f32>,
    d: vec3<i32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec2<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: f32,
    d: vec3<u32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: Struct_1) -> vec2<f32> {
    let var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.c.x, 1131f)) - _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(698f, -313f)))))))), select(vec3<bool>(arg_0.a, !(arg_0.d.x && true), arg_0.d.x), vec3<bool>(any(vec3<bool>(true, true, true)), select(true, arg_0.b.x > 487f, arg_0.c.x != -616f), all(!vec3<bool>(false, arg_0.a, arg_0.d.x))), select(vec3<bool>(arg_0.a & arg_0.d.x, false, false), !select(vec3<bool>(arg_0.d.x, arg_0.d.x, arg_0.a), vec3<bool>(true, arg_0.a, false), vec3<bool>(arg_0.a, arg_0.d.x, arg_0.d.x)), select(vec3<bool>(arg_0.a, arg_0.a, arg_0.a), select(vec3<bool>(arg_0.a, arg_0.d.x, arg_0.a), vec3<bool>(true, arg_0.a, arg_0.d.x), vec3<bool>(false, false, false)), select(vec3<bool>(arg_0.a, arg_0.d.x, arg_0.a), vec3<bool>(arg_0.d.x, arg_0.d.x, arg_0.d.x), vec3<bool>(arg_0.d.x, true, arg_0.d.x))))), vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(-628f, -1098f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(arg_0.c.x)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.c.x) - _wgslsmith_f_op_f32(351f + arg_0.c.x)))), u_input.d, Struct_1(any(!(!vec4<bool>(false, true, arg_0.a, arg_0.d.x))), arg_0.b, vec2<f32>(arg_0.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -827f))), !select(select(vec2<bool>(arg_0.a, arg_0.d.x), arg_0.d, vec2<bool>(arg_0.a, false)), vec2<bool>(false, arg_0.a), arg_0.c.x < arg_0.b.x), u_input.a));
    var var_1 = Struct_1(false || !(!var_0.b.x), var_0.e.b, _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_0.a.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(var_0.a.x))))))), arg_0.d, ~((_wgslsmith_sub_vec2_u32(u_input.c, var_0.e.e) | ~u_input.a) << (u_input.c % vec2<u32>(32u))));
    let var_2 = abs(var_0.e.e) << (~vec2<u32>(93931u, ~1u) % vec2<u32>(32u));
    var var_3 = ~var_0.d;
    var_1 = var_0.e;
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(arg_0.c, var_0.e.b.yy)), vec2<f32>(arg_0.c.x, -163f))) * _wgslsmith_f_op_vec2_f32(-var_1.b.yx));
}

fn func_4(arg_0: Struct_2) -> u32 {
    var var_0 = arg_0;
    var_0 = arg_0;
    let var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(-var_0.e.c), !arg_0.b, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-arg_0.e.b.yz))), arg_0.d, arg_0.e);
    var_0 = var_1;
    var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_1.a, var_1.a))))), !vec3<bool>(!(true & var_0.e.a), true, false), var_0.e.b.yy, min(_wgslsmith_mod_vec3_i32(var_1.d ^ -vec3<i32>(-2147483647i, -1i, -2172i), _wgslsmith_div_vec3_i32(reverseBits(vec3<i32>(var_1.d.x, arg_0.d.x, var_1.d.x)), var_0.d)), firstTrailingBit(min(vec3<i32>(u_input.d.x, -1i, 2147483647i), vec3<i32>(1i, -2147483647i, arg_0.d.x)))), Struct_1(!(!(1u >= arg_0.e.e.x)), _wgslsmith_f_op_vec3_f32(-var_1.e.b), vec2<f32>(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1000f)) + _wgslsmith_f_op_f32(max(488f, var_0.c.x)))), !vec2<bool>(var_1.e.d.x, true), min(arg_0.e.e, vec2<u32>(_wgslsmith_div_u32(u_input.a.x, 96661u), 1u))));
    return _wgslsmith_sub_u32(24105u, 1u);
}

fn func_2(arg_0: bool, arg_1: f32, arg_2: Struct_2) -> f32 {
    var var_0 = abs(1u);
    var_0 = reverseBits(func_4(Struct_2(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.a.x, arg_1)), vec2<f32>(arg_1, -687f))), !(!arg_2.b), _wgslsmith_f_op_vec2_f32(func_3(arg_2.e)), u_input.d, Struct_1(any(vec2<bool>(false, false)), arg_2.e.b, _wgslsmith_f_op_vec2_f32(arg_2.e.c + arg_2.e.b.yx), select(arg_2.b.yy, arg_2.b.yy, false), _wgslsmith_mod_vec2_u32(arg_2.e.e, vec2<u32>(13937u, 70232u))))));
    let var_1 = _wgslsmith_div_vec2_f32(vec2<f32>(946f, arg_2.e.c.x), _wgslsmith_f_op_vec2_f32(-arg_2.c));
    var var_2 = arg_2;
    let var_3 = -(~(-vec2<i32>(-771i, -2147483647i)));
    return var_2.e.c.x;
}

fn func_5(arg_0: Struct_1) -> vec3<i32> {
    let var_0 = ~vec2<u32>(u_input.b, arg_0.e.x);
    var var_1 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_0.c.x * -875f))), 978f), vec3<bool>(select(true, false, arg_0.d.x) & any(select(vec3<bool>(true, arg_0.d.x, false), vec3<bool>(true, arg_0.a, true), true)), select(all(vec3<bool>(arg_0.a, true, arg_0.a)), false, !(u_input.d.x < u_input.d.x)), !arg_0.d.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(arg_0.c.x * _wgslsmith_f_op_f32(round(-1155f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c.x)))), vec3<i32>(_wgslsmith_add_i32(-abs(30645i), ~_wgslsmith_mod_i32(u_input.d.x, u_input.d.x)), u_input.d.x, ~(~2147483647i)), arg_0);
    var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(-253f - arg_0.c.x), -1027f)))), var_1.b, vec2<f32>(-693f, -777f), var_1.d, Struct_1(any(vec4<bool>(true, var_1.e.a, true, any(arg_0.d))), _wgslsmith_f_op_vec3_f32(step(arg_0.b, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(trunc(var_1.e.b)), vec3<f32>(arg_0.c.x, 651f, arg_0.b.x))))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -162f), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(713f, 379f)))), arg_0.d, ~countOneBits(vec2<u32>(u_input.b, 0u))));
    var var_2 = vec2<f32>(-753f, _wgslsmith_f_op_f32(var_1.a.x + _wgslsmith_f_op_f32(1092f - -1698f)));
    let var_3 = arg_0.d.x;
    return u_input.d;
}

fn func_1() -> Struct_1 {
    let var_0 = ~u_input.a.x;
    let var_1 = func_5(Struct_1(!(any(vec2<bool>(false, true)) && true), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1243f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_2(false, -627f, Struct_2(vec2<f32>(262f, -1715f), vec3<bool>(false, false, false), vec2<f32>(472f, -2164f), vec3<i32>(-44627i, u_input.d.x, 0i), Struct_1(true, vec3<f32>(1290f, -147f, 1488f), vec2<f32>(-485f, 559f), vec2<bool>(false, true), vec2<u32>(u_input.b, var_0))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1488f, -1000f)))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-600f, 541f))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-819f, 996f) * vec2<f32>(365f, -1180f))))), vec2<bool>(any(vec2<bool>(true, true)), false), _wgslsmith_add_vec2_u32(countOneBits(~vec2<u32>(var_0, 43820u)), u_input.c)));
    let var_2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1698f * -547f), 737f)))), any(vec2<bool>(true, any(vec4<bool>(true, true, true, true)))) && (true && !all(vec3<bool>(false, true, false)))));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2 + _wgslsmith_f_op_f32(-591f - _wgslsmith_div_f32(var_2, _wgslsmith_f_op_f32(var_2 - -2067f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -419f))));
    let var_4 = Struct_1(all(vec2<bool>(all(vec3<bool>(true, true, true)), true)) | select(all(select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true))), any(vec2<bool>(true, true)), _wgslsmith_f_op_f32(select(var_3, var_2, false)) > _wgslsmith_f_op_f32(-548f * var_3)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(808f, var_3, 1487f))))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1761f, var_3, var_3), vec3<f32>(var_2, var_2, 905f))))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-546f, var_3) * vec2<f32>(-1428f, -1199f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1072f, -146f)))))), vec2<bool>(true, true), vec2<u32>(4294967295u << (_wgslsmith_mult_u32(var_0, u_input.a.x) % 32u), firstLeadingBit(u_input.a.x)));
    return Struct_1(var_4.a, _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-467f - -1000f), _wgslsmith_f_op_f32(-var_4.c.x)), var_3, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4.c.x))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(func_2(var_4.d.x, -674f, Struct_2(var_4.c, vec3<bool>(var_4.d.x, var_4.d.x, var_4.d.x), vec2<f32>(var_2, var_2), u_input.d, Struct_1(var_4.d.x, vec3<f32>(1113f, var_3, var_4.b.x), var_4.c, vec2<bool>(false, var_4.a), u_input.a)))), var_4.c.x)), !(!var_4.d), ~(~vec2<u32>(u_input.b, var_4.e.x)) | abs(vec2<u32>(~22636u, ~var_4.e.x)));
}

fn func_6(arg_0: Struct_2, arg_1: vec3<u32>) -> Struct_2 {
    var var_0 = arg_0.e;
    let var_1 = arg_0.e;
    var var_2 = arg_0;
    let var_3 = abs(min(arg_1, arg_1));
    var_2 = arg_0;
    return Struct_2(arg_0.e.b.xy, arg_0.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.c.x, var_0.b.x))))), vec3<i32>(-55811i, u_input.d.x, arg_0.d.x), Struct_1(var_0.d.x, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(round(134f)), -1329f, _wgslsmith_f_op_f32(trunc(var_2.c.x))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(692f, -284f, var_2.a.x) + var_1.b) + var_2.e.b)), arg_0.e.c, !vec2<bool>(any(var_0.d), false), func_1().e));
}

fn func_7(arg_0: vec4<i32>, arg_1: Struct_2) -> Struct_2 {
    let var_0 = arg_1;
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.x, var_0.c.x)) * _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-461f, var_0.c.x))))));
    return arg_1;
}

fn func_8(arg_0: bool, arg_1: Struct_2, arg_2: vec4<bool>, arg_3: Struct_1) -> Struct_1 {
    var var_0 = arg_1;
    var_0 = arg_1;
    let var_1 = var_0.e;
    var_0 = func_6(func_6(arg_1, ~vec3<u32>(8112u, func_6(arg_1, vec3<u32>(var_1.e.x, var_1.e.x, 0u)).e.e.x, 1u)), _wgslsmith_div_vec3_u32(~abs(_wgslsmith_add_vec3_u32(vec3<u32>(arg_3.e.x, var_0.e.e.x, 1u), vec3<u32>(var_0.e.e.x, var_1.e.x, 4294967295u))), vec3<u32>(abs(~1u), var_1.e.x, 601u)));
    var_0 = arg_1;
    return Struct_1(true, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(var_1.b - _wgslsmith_f_op_vec3_f32(arg_3.b * var_0.e.b))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_1.c.x, arg_3.b.x))))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-107f, arg_1.e.b.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-2088f, 424f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, arg_1.a.x)))), vec2<bool>(!func_1().d.x, !any(func_6(Struct_2(arg_1.c, vec3<bool>(arg_1.b.x, arg_3.a, arg_1.e.d.x), var_1.c, u_input.d, Struct_1(var_0.b.x, var_1.b, arg_3.b.yz, vec2<bool>(arg_0, false), vec2<u32>(0u, 4294967295u))), vec3<u32>(51805u, 0u, var_1.e.x)).e.d)), ~arg_1.e.e);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(countOneBits(max(_wgslsmith_div_u32(u_input.a.x, u_input.b), 4294967295u)) ^ 0u);
    let var_1 = ~(-(~(~(vec2<i32>(u_input.d.x, 0i) ^ vec2<i32>(u_input.d.x, u_input.d.x)))));
    let var_2 = min(select(vec2<i32>(_wgslsmith_mod_i32(abs(-15555i), u_input.d.x), ~_wgslsmith_div_i32(2147483647i, -2147483647i)), u_input.d.xy, vec2<bool>(all(select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, false))), any(vec2<bool>(true, true)))), -vec2<i32>(-24412i, 16002i));
    let var_3 = func_8(true, func_7(firstTrailingBit(countOneBits(vec4<i32>(34564i, u_input.d.x, 0i, var_1.x))), func_6(Struct_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 605f) + vec2<f32>(-588f, -830f)), vec3<bool>(true, true, true), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1867f, -1000f)), u_input.d, func_1()), ~vec3<u32>(u_input.a.x, 1u, u_input.c.x))), !(!select(vec4<bool>(false, true, false, true), select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false)), vec4<bool>(false, true, false, true))), func_7(-_wgslsmith_div_vec4_i32(vec4<i32>(var_2.x, var_1.x, u_input.d.x, 2147483647i) ^ vec4<i32>(21250i, u_input.d.x, -83738i, 0i), select(vec4<i32>(var_1.x, 0i, 2147483647i, 2147483647i), vec4<i32>(var_1.x, var_2.x, var_1.x, var_2.x), true)), Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-487f, -778f)))), vec3<bool>(true, true, true), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-669f, 1000f)))), ~(~u_input.d), func_1())).e);
    let var_4 = ~(abs(-1i) >> (min(_wgslsmith_add_u32(func_6(Struct_2(var_3.b.xy, vec3<bool>(var_3.a, true, true), vec2<f32>(-796f, var_3.b.x), vec3<i32>(17680i, var_2.x, var_1.x), Struct_1(true, var_3.b, vec2<f32>(-1010f, 783f), var_3.d, var_3.e)), vec3<u32>(27242u, var_0, var_0)).e.e.x, 4294967295u << (u_input.b % 32u)), var_0) % 32u));
    var var_5 = Struct_2(var_3.c, vec3<bool>(var_3.d.x, (firstLeadingBit(14534u) | func_7(vec4<i32>(var_4, -2147483647i, -22521i, var_2.x), Struct_2(vec2<f32>(var_3.b.x, -2124f), vec3<bool>(true, var_3.a, var_3.d.x), var_3.b.zz, vec3<i32>(38638i, u_input.d.x, u_input.d.x), Struct_1(false, var_3.b, var_3.c, vec2<bool>(var_3.d.x, var_3.d.x), vec2<u32>(0u, u_input.c.x)))).e.e.x) > 9842u, select(any(var_3.d), var_3.c.x < 1229f, var_3.d.x)), _wgslsmith_f_op_vec2_f32(floor(func_1().c)), u_input.d, var_3);
    var var_6 = var_5.e;
    let x = u_input.a;
    s_output = StorageBuffer(var_6.c.x, var_5.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_5.c.x) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1416f)))), ~_wgslsmith_mod_vec3_u32(~(vec3<u32>(u_input.c.x, 33223u, u_input.a.x) | vec3<u32>(var_0, 0u, 1u)), vec3<u32>(func_7(vec4<i32>(2147483647i, -1i, 1i, 0i), Struct_2(vec2<f32>(553f, 1124f), var_5.b, vec2<f32>(var_6.b.x, var_6.c.x), vec3<i32>(var_5.d.x, -2147483647i, 40295i), Struct_1(false, vec3<f32>(1000f, -1131f, var_5.c.x), vec2<f32>(var_3.c.x, -1222f), vec2<bool>(true, false), vec2<u32>(var_0, var_6.e.x)))).e.e.x, func_6(Struct_2(vec2<f32>(var_3.b.x, var_3.b.x), var_5.b, var_6.c, var_5.d, var_5.e), vec3<u32>(var_3.e.x, 4294967295u, 77597u)).e.e.x, var_6.e.x)), func_6(func_6(Struct_2(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_6.c.x, 651f), var_6.b.yz)), var_5.b, var_6.c, u_input.d, func_8(true, Struct_2(vec2<f32>(var_5.c.x, 1000f), vec3<bool>(var_5.b.x, false, true), vec2<f32>(var_6.c.x, var_6.c.x), vec3<i32>(-2147483647i, var_4, -6031i), var_3), vec4<bool>(true, var_3.d.x, var_3.a, var_3.a), Struct_1(var_5.e.a, vec3<f32>(var_6.c.x, 1000f, 775f), var_6.b.yx, var_6.d, var_5.e.e))), vec3<u32>(var_0, 101453u, 1u)), min(vec3<u32>(_wgslsmith_sub_u32(var_6.e.x, var_0), ~var_0, var_5.e.e.x), ~(vec3<u32>(var_3.e.x, var_5.e.e.x, 20893u) >> (vec3<u32>(var_0, var_0, 5860u) % vec3<u32>(32u))))).d);
}

