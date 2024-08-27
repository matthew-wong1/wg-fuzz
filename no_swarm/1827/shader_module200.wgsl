struct Struct_1 {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec2<i32>) -> vec3<bool> {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1000f)) * _wgslsmith_f_op_f32(floor(-193f))), _wgslsmith_f_op_f32(f32(-1f) * -334f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1324f, -870f)))) * _wgslsmith_f_op_f32(1f * 1536f)));
    let var_1 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-648f, 775f, -1000f, -644f)))))));
    var var_2 = ~(u_input.a >> (_wgslsmith_add_u32(u_input.a | ~u_input.a, _wgslsmith_sub_u32(~u_input.a, u_input.a)) % 32u));
    var_2 = 4294967295u;
    var_0 = 443f;
    return !select(vec3<bool>(true, true, true), vec3<bool>(true, any(vec3<bool>(true, false, false)) == all(vec3<bool>(true, true, true)), !any(vec4<bool>(true, true, true, false))), false);
}

fn func_2() -> Struct_1 {
    var var_0 = max(1u, 1u);
    let var_1 = select(!select(vec3<bool>(true, any(vec2<bool>(true, true)), false), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), true), select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), false)), !func_3(vec3<i32>(71545i, -1i, -1i), vec2<i32>(-9162i, 23748i))), vec3<bool>(any(vec3<bool>(true, all(vec2<bool>(true, true)), false)), true, any(vec3<bool>(true, false, true)) | (true & any(vec4<bool>(false, true, false, false)))), all(vec2<bool>(true, true)));
    var var_2 = Struct_1(vec3<i32>(i32(-1i) * -3966i, -1i, _wgslsmith_dot_vec4_i32(-vec4<i32>(1i, 1i, 1i, 1i), -(~vec4<i32>(-2147483647i, 7440i, -2147483647i, -2147483647i)))), ~(~(~vec4<i32>(-7235i, 2147483647i, 0i, 0i))), vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(2481f, -616f)))), -107f));
    var_2 = Struct_1(_wgslsmith_mult_vec3_i32(_wgslsmith_clamp_vec3_i32((var_2.a | vec3<i32>(var_2.a.x, 4238i, 10153i)) | var_2.a, vec3<i32>(32302i, -22121i, -2147483647i | var_2.a.x), var_2.b.wwy), countOneBits(reverseBits(-vec3<i32>(var_2.b.x, 2147483647i, 60456i)))), _wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(firstLeadingBit(var_2.b), var_2.b), vec4<i32>(-var_2.a.x, 5205i, _wgslsmith_add_i32(var_2.a.x, 2147483647i), select(_wgslsmith_dot_vec2_i32(vec2<i32>(var_2.b.x, var_2.b.x), var_2.b.wx), countOneBits(26812i), any(var_1.xz)))), vec2<f32>(-578f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.c.x - _wgslsmith_f_op_f32(-212f - var_2.c.x)))));
    let var_3 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_2.c.x, 1094f, -1408f, 1059f), vec4<f32>(var_2.c.x, 1599f, var_2.c.x, 290f), vec4<bool>(var_1.x, var_1.x, var_1.x, true)))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(853f, var_2.c.x, var_2.c.x, var_2.c.x), vec4<f32>(190f, -171f, var_2.c.x, var_2.c.x), false))))))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.c.x) - _wgslsmith_f_op_f32(var_2.c.x * 943f)), var_2.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_2.c.x))), -334f))), any(vec4<bool>(_wgslsmith_f_op_f32(floor(-1150f)) <= _wgslsmith_f_op_f32(trunc(-589f)), var_1.x, !select(var_1.x, var_1.x, var_1.x), true))));
    return Struct_1(firstLeadingBit(~firstTrailingBit(var_2.a)), vec4<i32>(countOneBits(2147483647i), -_wgslsmith_dot_vec2_i32(countOneBits(var_2.b.yy), vec2<i32>(var_2.b.x, var_2.a.x)), ~(-1i & var_2.a.x), abs(var_2.b.x | _wgslsmith_dot_vec4_i32(vec4<i32>(var_2.a.x, -18695i, -20120i, -22628i), var_2.b))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(-426f, var_2.c.x), vec2<f32>(var_3.x, var_2.c.x)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_2.c.x, var_3.x), var_2.c, vec2<bool>(true, var_1.x))), vec2<bool>(true, var_1.x))))))));
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    var var_0 = Struct_1(abs(countOneBits(~arg_0.b.xxz)) | ~vec3<i32>(min(arg_0.a.x, arg_0.b.x), _wgslsmith_clamp_i32(arg_0.b.x, 21822i, arg_0.b.x), arg_0.a.x), -abs(countOneBits(vec4<i32>(arg_0.a.x, 16753i, -2147483647i, 0i))), _wgslsmith_f_op_vec2_f32(-arg_0.c));
    var var_1 = vec3<i32>(firstLeadingBit(_wgslsmith_div_i32(arg_0.a.x, ~var_0.a.x)), abs(15194i), var_0.b.x);
    var var_2 = arg_0;
    var var_3 = func_2();
    var var_4 = func_2();
    return Struct_1(select(-(~vec3<i32>(var_0.a.x, var_0.b.x, 1i)), ~(-vec3<i32>(var_2.a.x, var_4.a.x, 17694i)), any(vec3<bool>(true, true, select(true, true, true)))), -(vec4<i32>(-1i) * -_wgslsmith_mod_vec4_i32(var_3.b, var_2.b)), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_2.c))))));
}

fn func_5(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: Struct_1, arg_3: bool) -> Struct_1 {
    var var_0 = arg_2;
    var var_1 = all(!vec3<bool>(arg_3, true, false));
    var var_2 = Struct_1(var_0.a, min(arg_0.b, arg_2.b << (~(~vec4<u32>(u_input.a, 4294967295u, u_input.a, u_input.a)) % vec4<u32>(32u))), _wgslsmith_f_op_vec2_f32(-arg_2.c));
    var var_3 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-1640f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.c.x - var_0.c.x))), _wgslsmith_f_op_f32(266f - _wgslsmith_f_op_f32(f32(-1f) * -312f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.c.x, _wgslsmith_f_op_f32(var_0.c.x * arg_0.c.x))) - vec2<f32>(func_4(arg_2).c.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1052f * arg_0.c.x))))));
    var_3 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(abs(arg_2.c)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.c), _wgslsmith_f_op_vec2_f32(arg_2.c - vec2<f32>(-100f, var_0.c.x)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.x, func_2().c.x)))));
    return Struct_1(-vec3<i32>(0i, arg_2.a.x, 36633i), -var_2.b, _wgslsmith_f_op_vec2_f32(arg_2.c - vec2<f32>(_wgslsmith_f_op_f32(sign(arg_2.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_3.x, var_0.c.x)))));
}

fn func_1() -> Struct_1 {
    let var_0 = func_5(func_4(func_2()), ~vec3<i32>(0i, abs(1i), reverseBits(2147483647i)), Struct_1(vec3<i32>(func_2().a.x, 37020i, abs(0i)), func_4(Struct_1(vec3<i32>(1i, 1i, 1i), vec4<i32>(1i, 1i, 1i, 1i), _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 1645f) * vec2<f32>(-906f, -414f)))).b, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-504f, -1022f))), true);
    var var_1 = ~vec2<u32>(15846u, _wgslsmith_mult_u32(u_input.a, ~(~u_input.a)));
    var var_2 = vec3<bool>((_wgslsmith_add_u32(max(8862u, 4294967295u), ~u_input.a) > _wgslsmith_div_u32(1u, var_1.x)) == false, true, true);
    let var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.c.x, _wgslsmith_f_op_f32(abs(169f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c.x * var_0.c.x))), var_0.c.x, -729f));
    let var_4 = Struct_1(-_wgslsmith_sub_vec3_i32(_wgslsmith_div_vec3_i32(var_0.a ^ vec3<i32>(48177i, var_0.a.x, var_0.b.x), vec3<i32>(2147483647i, -23151i, 2147483647i)), var_0.a), _wgslsmith_sub_vec4_i32(~func_2().b, min(var_0.b ^ var_0.b, _wgslsmith_mod_vec4_i32(vec4<i32>(var_0.b.x, -47025i, var_0.b.x, -30821i), var_0.b))) & min(vec4<i32>(_wgslsmith_mult_i32(var_0.b.x, var_0.b.x), 0i, var_0.a.x, _wgslsmith_clamp_i32(-12048i, 1i, 17567i)), vec4<i32>(var_0.b.x, -12373i, _wgslsmith_mod_i32(2147483647i, -21368i), 57722i)), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(abs(var_0.c)), var_3.yz)));
    return func_4(var_4);
}

fn func_6(arg_0: vec2<bool>, arg_1: vec2<i32>, arg_2: bool, arg_3: Struct_1) -> vec2<f32> {
    var var_0 = func_5(Struct_1(~(-vec3<i32>(2147483647i, arg_3.a.x, arg_1.x)), func_4(arg_3).b, _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3.c.x, arg_3.c.x))), vec3<i32>(1i, -32990i, arg_3.b.x), arg_3, arg_0.x);
    let var_1 = vec3<bool>(false, arg_2, any(!vec4<bool>(arg_0.x, arg_0.x, u_input.a > 28276u, false)));
    let var_2 = func_5(arg_3, arg_3.a, func_4(Struct_1(func_4(Struct_1(vec3<i32>(2147483647i, arg_1.x, arg_3.b.x), vec4<i32>(-16879i, 10136i, 0i, -2147483647i), var_0.c)).a, -arg_3.b ^ (vec4<i32>(arg_1.x, -26851i, var_0.b.x, var_0.b.x) | arg_3.b), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_3.c * arg_3.c) - _wgslsmith_f_op_vec2_f32(round(var_0.c))))), select(false != any(vec4<bool>(true, var_1.x, true, false)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(1931f, var_0.c.x, false)))) <= arg_3.c.x, !(arg_3.b.x < -arg_3.b.x)));
    let var_3 = var_2.a.x;
    var var_4 = !(!(!(!select(var_1, vec3<bool>(true, arg_0.x, true), arg_2))));
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(var_0.c)) - vec2<f32>(arg_3.c.x, -171f))) * _wgslsmith_f_op_vec2_f32(step(var_2.c, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_2.c.x, -1000f)))) + _wgslsmith_f_op_vec2_f32(-var_2.c)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 0i;
    let var_1 = Struct_1(vec3<i32>(var_0, var_0, var_0) | _wgslsmith_mod_vec3_i32(vec3<i32>(var_0, -2147483647i, _wgslsmith_sub_i32(-1i, var_0)), vec3<i32>(_wgslsmith_clamp_i32(var_0, var_0, -9300i), -var_0, var_0)), _wgslsmith_div_vec4_i32(~(-vec4<i32>(var_0, var_0, var_0, 53137i) ^ (vec4<i32>(-1i, 0i, var_0, 0i) & vec4<i32>(-36160i, var_0, var_0, 2167i))), vec4<i32>(var_0, 1i, -10798i, -2147483647i) >> (((vec4<u32>(u_input.a, u_input.a, 0u, 4294967295u) >> (vec4<u32>(0u, 1u, 0u, 4294967295u) % vec4<u32>(32u))) >> (~vec4<u32>(0u, 21072u, 0u, 1u) % vec4<u32>(32u))) % vec4<u32>(32u))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_6(vec2<bool>(true, true), -select(vec2<i32>(1i, 44228i), vec2<i32>(-1i, 2147483647i), vec2<bool>(true, true)), any(select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, true), false)), func_1()))));
    var var_2 = u_input.a;
    let var_3 = func_5(Struct_1(var_1.b.yxw, var_1.b, _wgslsmith_f_op_vec2_f32(func_4(func_4(Struct_1(var_1.a, var_1.b, var_1.c))).c * vec2<f32>(func_5(var_1, var_1.b.zyz, Struct_1(var_1.a, var_1.b, var_1.c), false).c.x, var_1.c.x))), (vec3<i32>(-1i) * -_wgslsmith_clamp_vec3_i32(var_1.a, var_1.a, var_1.a)) >> (max(min(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, 4294967295u, 1u), vec3<u32>(4294967295u, 32876u, 25823u)), vec3<u32>(54217u, u_input.a, u_input.a) << (vec3<u32>(u_input.a, u_input.a, u_input.a) % vec3<u32>(32u))), ~(vec3<u32>(1u, u_input.a, 4294967295u) & vec3<u32>(8948u, u_input.a, 89400u))) % vec3<u32>(32u)), Struct_1(min(select(-var_1.b.ywz, var_1.b.zwx, any(vec2<bool>(true, true))), var_1.b.wwx), _wgslsmith_clamp_vec4_i32(vec4<i32>(min(2147483647i, 73043i), abs(var_0), 14913i, ~var_1.b.x), -var_1.b << (vec4<u32>(1u, 31107u, u_input.a, 22454u) % vec4<u32>(32u)), var_1.b), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(1000f, -359f)))), false);
    var var_4 = func_5(Struct_1(-reverseBits(vec3<i32>(40333i, var_3.b.x, var_3.a.x)), vec4<i32>(-2147483647i, var_0, var_3.a.x, var_0), var_3.c), ~(~abs(var_1.a) & ~vec3<i32>(-1i, var_1.b.x, -8015i)), func_1(), true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(475f, _wgslsmith_f_op_f32(-1000f * -521f), false)) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_3.c.x, 169f)))))), _wgslsmith_mod_vec4_u32(~max(~vec4<u32>(u_input.a, u_input.a, 4294967295u, 0u), select(vec4<u32>(0u, 0u, 48887u, u_input.a), vec4<u32>(u_input.a, 63969u, u_input.a, u_input.a), vec4<bool>(true, true, true, true))), ~vec4<u32>(min(u_input.a, u_input.a), u_input.a, _wgslsmith_mod_u32(u_input.a, u_input.a), 4294967295u >> (u_input.a % 32u))));
}

