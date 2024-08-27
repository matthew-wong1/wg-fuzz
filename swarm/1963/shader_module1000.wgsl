struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: f32,
    b: vec4<f32>,
    c: vec4<bool>,
    d: vec4<i32>,
    e: bool,
}

struct Struct_3 {
    a: vec2<u32>,
    b: bool,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: bool,
    c: vec4<bool>,
    d: Struct_2,
}

struct Struct_5 {
    a: vec3<i32>,
    b: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec2<bool>) -> bool {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-140f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-111f * -1035f) + _wgslsmith_f_op_f32(722f * 497f)))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(653f)), 1094f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + -1979f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-496f - 197f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-679f - 1697f)))))), !select(vec4<bool>(all(vec4<bool>(arg_0.x, arg_0.x, false, true)), arg_0.x, arg_0.x, select(false, true, true)), select(select(vec4<bool>(arg_0.x, true, false, arg_0.x), vec4<bool>(arg_0.x, true, arg_0.x, arg_0.x), arg_0.x), vec4<bool>(false, false, false, arg_0.x), select(vec4<bool>(true, false, false, arg_0.x), vec4<bool>(true, true, arg_0.x, arg_0.x), vec4<bool>(false, true, true, true))), !select(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), vec4<bool>(arg_0.x, arg_0.x, false, false), arg_0.x)), _wgslsmith_clamp_vec4_i32(-(~vec4<i32>(u_input.b.x, 1i, u_input.b.x, u_input.b.x) ^ min(vec4<i32>(2147483647i, u_input.b.x, 34919i, u_input.b.x), vec4<i32>(-2848i, u_input.b.x, 2147483647i, u_input.b.x))), -(~(-vec4<i32>(0i, u_input.b.x, u_input.b.x, u_input.b.x))), _wgslsmith_mod_vec4_i32(~vec4<i32>(u_input.b.x, 16217i, u_input.b.x, -1i), -vec4<i32>(2147483647i, u_input.b.x, -1i, u_input.b.x)) << (reverseBits(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 26319u)) % vec4<u32>(32u))), false);
    let var_1 = Struct_4(Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(var_0.a, -189f))))), all(var_0.c), !select(vec4<bool>(var_0.e, false, u_input.a.x <= u_input.a.x, !arg_0.x), select(vec4<bool>(var_0.c.x, true, false, false), vec4<bool>(true, var_0.e, false, true), var_0.c), all(vec3<bool>(true, true, true))), Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.b.x))), _wgslsmith_f_op_f32(f32(-1f) * -345f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-249f, 616f, -879f, 1104f)) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(2101f, -1249f, var_0.b.x, -1344f)))), vec4<bool>(arg_0.x && any(var_0.c.wxx), arg_0.x, any(!vec2<bool>(arg_0.x, false)), !var_0.c.x), abs(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b.x, 1i, var_0.d.x, var_0.d.x), ~var_0.d)), true));
    var_0 = var_1.d;
    var_0 = var_1.d;
    var var_2 = Struct_4(Struct_1(var_1.d.a), true, !vec4<bool>(all(select(var_0.c.xz, arg_0, true)), any(var_1.c.xxy), false, !all(var_1.c)), var_1.d);
    return false;
}

fn func_2(arg_0: vec3<u32>) -> vec3<i32> {
    let var_0 = func_3(vec2<bool>(all(vec4<bool>(true, 1u >= arg_0.x, true, select(false, false, false))), select(true, true || (32928u <= u_input.a.x), !all(vec2<bool>(true, false)))));
    let var_1 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(640f)), _wgslsmith_f_op_f32(f32(-1f) * -306f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(-1544f, 1521f)), _wgslsmith_div_f32(-1398f, 1215f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(1304f)), _wgslsmith_f_op_f32(max(1f, -627f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1027f, -109f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1139f - _wgslsmith_f_op_f32(f32(-1f) * -122f)))), 798f);
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(525f - var_1.x), 607f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-593f - 1332f) + -523f)))) * var_1.x);
    let var_3 = _wgslsmith_mult_i32(-43670i, ~(0i >> (~(~u_input.a.x) % 32u)));
    var var_4 = Struct_3(vec2<u32>(1u, ~(~0u)) | select(u_input.a.xz, ~_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a.x, 1u), vec2<u32>(arg_0.x, u_input.a.x), arg_0.xz), !select(var_0, var_0, var_0)), true, Struct_1(589f));
    return (_wgslsmith_div_vec3_i32(vec3<i32>(u_input.b.x, _wgslsmith_div_i32(-1i, 2147483647i), min(u_input.b.x, -47571i)), select(vec3<i32>(1i, -20158i, u_input.b.x) & vec3<i32>(-17177i, var_3, u_input.b.x), u_input.b, select(vec3<bool>(var_0, var_0, false), vec3<bool>(true, var_4.b, false), var_4.b))) << (vec3<u32>(min(4294967295u, 56635u) & _wgslsmith_add_u32(var_4.a.x, 0u), ~42532u, 2103u) % vec3<u32>(32u))) ^ _wgslsmith_mult_vec3_i32(firstTrailingBit(_wgslsmith_div_vec3_i32(-vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x), abs(vec3<i32>(u_input.b.x, 27115i, 0i)))), vec3<i32>(var_3, i32(-1i) * -u_input.b.x, 1i));
}

fn func_4(arg_0: vec3<i32>) -> f32 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(3614f, _wgslsmith_f_op_f32(ceil(-970f)))));
    let var_1 = -48329i;
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -820f);
    var var_3 = Struct_1(-346f);
    var_3 = Struct_1(-644f);
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.a, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-280f, var_3.a) * -1286f)) + _wgslsmith_f_op_f32(max(-1479f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-665f)) - _wgslsmith_f_op_f32(max(var_0.a, -929f)))))));
}

fn func_1(arg_0: vec4<i32>) -> Struct_3 {
    let var_0 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -847f)))), 1f, 484f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-692f, 2734f)))) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1044f - 567f))), _wgslsmith_f_op_f32(func_4(func_2(vec3<u32>(u_input.a.x, 0u, 0u))))))));
    var var_1 = vec2<i32>(arg_0.x, 29124i);
    var var_2 = Struct_2(-1931f, var_0, vec4<bool>(false, any(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true))), true, select(true, _wgslsmith_f_op_f32(step(var_0.x, var_0.x)) < var_0.x, false)), _wgslsmith_mult_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(-arg_0.x, 10480i, var_1.x, func_2(u_input.a).x), min(select(vec4<i32>(var_1.x, var_1.x, 1i, 0i), arg_0, true), arg_0)), abs(arg_0)), false);
    var var_3 = false;
    var var_4 = u_input.b.zz;
    return Struct_3(~(select(vec2<u32>(u_input.a.x, 47023u), ~vec2<u32>(u_input.a.x, 9090u), false) & (~u_input.a.xx ^ abs(vec2<u32>(4294967295u, 4294967295u)))), var_2.c.x, Struct_1(_wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(-var_0.x))));
}

fn func_5(arg_0: Struct_3, arg_1: f32) -> Struct_5 {
    var var_0 = !(!vec4<bool>(false, any(select(vec4<bool>(arg_0.b, false, false, true), vec4<bool>(false, arg_0.b, true, false), arg_0.b)), true | arg_0.b, arg_0.b));
    let var_1 = _wgslsmith_mod_u32(countOneBits(9619u), ~(4294967295u ^ ~u_input.a.x)) & _wgslsmith_div_u32(arg_0.a.x, 1u << (0u % 32u));
    var_0 = vec4<bool>(func_1(-(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b.x, -1i, -24608i, 0i), vec4<i32>(u_input.b.x, 2147483647i, u_input.b.x, u_input.b.x)) & (vec4<i32>(u_input.b.x, 1i, -2147483647i, u_input.b.x) ^ vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x)))).b, any(vec4<bool>(arg_0.b, var_0.x, arg_0.b, any(!vec4<bool>(arg_0.b, arg_0.b, var_0.x, var_0.x)))), true, -5547i <= _wgslsmith_div_i32(_wgslsmith_clamp_i32(0i, func_2(u_input.a).x, ~1i), func_2(vec3<u32>(0u, 1u, 1u) | u_input.a).x));
    var_0 = select(vec4<bool>(arg_0.b, true, arg_0.b, all(vec3<bool>(-617f > arg_0.c.a, all(var_0.yx), true))), select(select(vec4<bool>(!var_0.x, var_0.x, true, func_3(vec2<bool>(arg_0.b, true))), select(vec4<bool>(true, var_0.x, false, true), select(vec4<bool>(arg_0.b, var_0.x, false, arg_0.b), vec4<bool>(false, true, arg_0.b, arg_0.b), true), all(var_0.zx)), vec4<bool>(arg_0.b, arg_0.b, true, var_0.x)), !select(select(vec4<bool>(var_0.x, false, true, arg_0.b), vec4<bool>(var_0.x, arg_0.b, true, arg_0.b), vec4<bool>(var_0.x, false, var_0.x, true)), vec4<bool>(arg_0.b, arg_0.b, var_0.x, var_0.x), false), vec4<bool>(var_0.x, arg_0.b, all(select(vec2<bool>(false, false), vec2<bool>(var_0.x, arg_0.b), false)), all(select(var_0.wz, var_0.yy, vec2<bool>(false, true))))), !(!(!vec4<bool>(false, var_0.x, false, false))));
    let var_2 = abs(vec4<u32>(firstTrailingBit(abs(reverseBits(90815u))), 1u, _wgslsmith_div_u32(1u, arg_0.a.x), _wgslsmith_add_u32(u_input.a.x, ~var_1)));
    return Struct_5(select(u_input.b, ~u_input.b, var_0.yzx), var_0.x);
}

fn func_6(arg_0: Struct_5) -> vec4<f32> {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1000f, -3121f, true))) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1675f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1000f - 669f), -863f))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -330f))));
    var var_1 = Struct_5(func_5(Struct_3(u_input.a.zz, ~arg_0.a.x > (i32(-1i) * -61772i), func_1(-vec4<i32>(u_input.b.x, u_input.b.x, 28229i, -17822i)).c), var_0.x).a, !(!any(select(vec4<bool>(false, false, arg_0.b, arg_0.b), vec4<bool>(false, false, false, arg_0.b), vec4<bool>(arg_0.b, true, arg_0.b, arg_0.b)))));
    let var_2 = ~max(4294967295u, abs(21789u | u_input.a.x));
    let var_3 = Struct_2(1353f, _wgslsmith_f_op_vec4_f32(-vec4<f32>(func_1(vec4<i32>(-2147483647i, -39614i, u_input.b.x, 1i)).c.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(803f * var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1190f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1787f, 649f) + -857f))), select(!(!vec4<bool>(arg_0.b, false, true, true)), select(vec4<bool>(true, arg_0.b, any(vec3<bool>(var_1.b, false, true)), all(vec2<bool>(var_1.b, false))), select(vec4<bool>(true, false, false, true), !vec4<bool>(true, var_1.b, false, arg_0.b), arg_0.b), _wgslsmith_dot_vec2_u32(u_input.a.xz, u_input.a.zy) < _wgslsmith_mult_u32(0u, 4294967295u)), !vec4<bool>(!arg_0.b, !var_1.b, 220i != var_1.a.x, var_1.b || var_1.b)), vec4<i32>(u_input.b.x, firstTrailingBit(-1i), _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.a.x, -2147483647i, var_1.a.x, -3088i) << (vec4<u32>(u_input.a.x, 4173u, u_input.a.x, 54755u) % vec4<u32>(32u)), ~vec4<i32>(-5459i, var_1.a.x, u_input.b.x, var_1.a.x)), -1i) & (vec4<i32>(var_1.a.x, func_2(u_input.a).x, firstLeadingBit(u_input.b.x), -arg_0.a.x) >> (~vec4<u32>(u_input.a.x, var_2, 0u, var_2) % vec4<u32>(32u))), !var_1.b);
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.b.x) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-func_1(var_3.d << (vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 21542u) % vec4<u32>(32u))).c.a))));
    return _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_3.a, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-639f - 252f))), _wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1041f + var_0.x) - -1095f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_0.x - var_0.x))), _wgslsmith_f_op_f32(f32(-1f) * -727f)))), vec4<f32>(-387f, var_3.b.x, _wgslsmith_div_f32(1000f, var_3.b.x), -1181f), var_1.b));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_vec4_f32(vec4<f32>(-1916f, -1038f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-925f * 468f))), 1366f), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -331f), -1000f, _wgslsmith_f_op_f32(sign(682f)), _wgslsmith_f_op_f32(f32(-1f) * -1082f)))), _wgslsmith_f_op_vec4_f32(func_6(func_5(func_1(vec4<i32>(0i, 10418i, u_input.b.x, -2147483647i)), _wgslsmith_f_op_f32(min(-1773f, 1736f))))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1430f), _wgslsmith_div_f32(102f, var_0.x), 259f, _wgslsmith_f_op_f32(step(func_1(vec4<i32>(1i, 0i, u_input.b.x, 2147483647i)).c.a, _wgslsmith_f_op_f32(var_0.x * -204f)))) - vec4<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(func_4(vec3<i32>(u_input.b.x, u_input.b.x, 14281i) & u_input.b)), var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -1000f))), ~(~u_input.a.zz));
}

