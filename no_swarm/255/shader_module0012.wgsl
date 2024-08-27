struct Struct_1 {
    a: i32,
    b: vec2<bool>,
}

struct Struct_2 {
    a: bool,
    b: f32,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec2<i32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
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

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec4<bool>) -> f32 {
    let var_0 = Struct_1(-695i, arg_0.zx);
    let var_1 = var_0;
    var var_2 = Struct_2(any(!vec4<bool>(true, var_0.b.x, true, false)) || var_0.b.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1438f - _wgslsmith_f_op_f32(1000f * -1180f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(f32(-1f) * -891f)))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-348f, -616f) + -707f), _wgslsmith_f_op_f32(floor(-776f))));
    let var_3 = var_0.b.x;
    var_2 = Struct_2(var_1.b.x & !all(arg_0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b)) - -439f), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_2.c.x, var_2.b))), _wgslsmith_f_op_vec2_f32(-var_2.c))), var_2.c, any(select(vec2<bool>(false, false), var_0.b, true)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.b, 117f) + _wgslsmith_f_op_vec2_f32(exp2(var_2.c))))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_2.c.x))) - 2327f)) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(219f)), _wgslsmith_f_op_f32(min(-409f, -348f)), true)))))));
}

fn func_2(arg_0: f32) -> Struct_1 {
    let var_0 = Struct_2(true, arg_0, vec2<f32>(arg_0, arg_0));
    var var_1 = var_0;
    var_1 = Struct_2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(arg_0, _wgslsmith_div_f32(var_0.b, arg_0), true)), 718f, false)) <= var_0.c.x, _wgslsmith_f_op_f32(func_3(select(select(select(vec4<bool>(false, true, var_0.a, true), vec4<bool>(true, true, var_1.a, true), var_0.a), !vec4<bool>(var_1.a, true, var_1.a, true), true), vec4<bool>(var_1.a, var_0.a == var_0.a, true, any(vec3<bool>(true, false, true))), vec4<bool>(var_1.a, any(vec3<bool>(true, false, var_0.a)), any(vec4<bool>(false, false, var_0.a, false)), u_input.b.x < u_input.b.x)))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(1881f, arg_0), -445f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-764f, var_1.c.x)) - var_0.b)));
    let var_2 = u_input.d;
    var_1 = Struct_2(~u_input.b.x < 0u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-var_0.c.x))))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(arg_0)))) + _wgslsmith_f_op_f32(f32(-1f) * -1113f))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(2049f, var_0.b)) + -725f), arg_0));
    return Struct_1(u_input.d, !(!select(!vec2<bool>(true, var_1.a), !vec2<bool>(var_1.a, true), select(vec2<bool>(false, true), vec2<bool>(false, var_1.a), vec2<bool>(false, var_1.a)))));
}

fn func_1(arg_0: vec4<bool>, arg_1: f32) -> Struct_2 {
    var var_0 = arg_0.yxz;
    var var_1 = func_2(_wgslsmith_f_op_f32(f32(-1f) * -905f));
    let var_2 = u_input.a.x;
    var_0 = !arg_0.zxz;
    var_0 = arg_0.wyx;
    return Struct_2(false, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_1 - _wgslsmith_f_op_f32(func_3(arg_0))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_1)))) - vec2<f32>(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_1))))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: f32) -> i32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(-728f, _wgslsmith_f_op_f32(func_3(!vec4<bool>(true, arg_1.b.x, true, arg_1.b.x)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2, arg_0.b)))))));
    var var_1 = func_2(var_0.x);
    var_1 = func_2(arg_0.b);
    var var_2 = _wgslsmith_f_op_f32(select(-836f, arg_0.b, 1u == ~_wgslsmith_add_u32(~u_input.b.x, _wgslsmith_clamp_u32(u_input.e, 28883u, 64979u))));
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, arg_0.b, arg_2, -2208f))))));
    return _wgslsmith_mod_i32(2353i >> (_wgslsmith_dot_vec4_u32(reverseBits(_wgslsmith_div_vec4_u32(u_input.b, u_input.b)), u_input.b) % 32u), 1i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -firstLeadingBit(-_wgslsmith_mult_vec3_i32(firstLeadingBit(vec3<i32>(u_input.c.x, 6658i, -12018i)), abs(vec3<i32>(-36358i, u_input.c.x, u_input.a.x))));
    var var_1 = Struct_1(func_4(func_1(vec4<bool>(true, true, true, true), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -296f), -891f)), func_2(422f), func_1(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true), true), vec4<bool>(true, true, true, true)), 380f).b), select(select(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true)), !func_2(-1009f).b, vec2<bool>(any(vec2<bool>(true, false)), true)), func_2(-1984f).b, false));
    let var_2 = vec4<i32>(var_0.x | max(_wgslsmith_mod_i32(u_input.d, var_0.x), 0i), abs(i32(-1i) * -var_0.x), -(~(-2147483647i)), var_0.x) | vec4<i32>(reverseBits(_wgslsmith_dot_vec2_i32(var_0.xx, u_input.c) << (_wgslsmith_mult_u32(39186u, u_input.b.x) % 32u)), -2147483647i, abs(1i << (u_input.e % 32u)), -func_4(Struct_2(true, 990f, vec2<f32>(903f, -768f)), Struct_1(var_0.x, vec2<bool>(var_1.b.x, var_1.b.x)), -729f) ^ ~(-12717i));
    var var_3 = Struct_1(-u_input.a.x, !vec2<bool>(any(!vec3<bool>(var_1.b.x, true, false)), var_1.b.x));
    var_1 = func_2(_wgslsmith_f_op_f32(ceil(261f)));
    var_1 = Struct_1(_wgslsmith_sub_i32(countOneBits(u_input.c.x), 1i), !(!var_3.b));
    var var_4 = Struct_2(var_1.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1719f, _wgslsmith_f_op_f32(trunc(1000f)), var_3.b.x))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(785f, -1000f), _wgslsmith_f_op_vec2_f32(vec2<f32>(1127f, -490f) - vec2<f32>(-395f, -1494f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-2351f, 443f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(297f, 232f)))) * _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-500f, -1025f))), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1000f, -868f)))))), false)));
    let x = u_input.a;
    s_output = StorageBuffer(-firstTrailingBit(~_wgslsmith_sub_vec3_i32(vec3<i32>(var_1.a, var_3.a, -2147483647i), var_2.xwx)), vec3<i32>(var_2.x, -1i, _wgslsmith_div_i32(func_4(Struct_2(false, 1409f, vec2<f32>(var_4.b, 1342f)), Struct_1(var_0.x, var_3.b), var_4.c.x), _wgslsmith_dot_vec2_i32(var_0.zy, vec2<i32>(-45640i, u_input.d)))) >> (vec3<u32>(~_wgslsmith_div_u32(u_input.e, 20881u), 1u, 1u) % vec3<u32>(32u)), 1i >> (firstLeadingBit(u_input.e) % 32u));
}

