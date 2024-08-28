struct Struct_1 {
    a: vec2<f32>,
    b: u32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: i32,
    d: Struct_2,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: vec3<f32>) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-544f)) - arg_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0.x, arg_0.x, false))), -1500f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-198f + -1000f))))));
    var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(arg_0.x * arg_0.x), _wgslsmith_f_op_f32(arg_0.x * arg_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))), -1759f) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(688f, arg_0.x, 1000f, var_0.x)))) + _wgslsmith_f_op_vec4_f32(max(vec4<f32>(908f, var_0.x, arg_0.x, var_0.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(-773f, var_0.x, arg_0.x, var_0.x) - vec4<f32>(-473f, var_0.x, -947f, 1068f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-693f, var_0.x, -462f, arg_0.x)))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), true))));
    var var_1 = Struct_2(vec4<bool>(true, true, true, true), Struct_1(vec2<f32>(385f, -1000f), ~(1u << (1u % 32u))));
    var var_2 = countOneBits(-vec4<i32>(-90045i, firstLeadingBit(10935i), ~(-2147483647i), -u_input.a));
    var_2 = ~_wgslsmith_mod_vec4_i32(vec4<i32>(-(~0i), -var_2.x, u_input.a, countOneBits(-4046i >> (1u % 32u))), countOneBits(_wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, var_2.x, u_input.a, 2147483647i), vec4<i32>(u_input.a, 25043i, -67759i, 2147483647i)) & _wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, -1i, -2147483647i, var_2.x), vec4<i32>(u_input.a, u_input.a, 2147483647i, -33645i))));
    return Struct_2(vec4<bool>(true, true, true, true), var_1.b);
}

fn func_3(arg_0: u32) -> vec3<bool> {
    var var_0 = true;
    var var_1 = ~u_input.b.x;
    let var_2 = 22055u;
    var_0 = select(true, (firstTrailingBit(max(-21476i, -6655i)) >= abs(u_input.a)) | select(true, !all(vec2<bool>(false, true)), all(vec2<bool>(true, false))), !(_wgslsmith_div_f32(468f, _wgslsmith_f_op_f32(f32(-1f) * -1358f)) >= _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(142f - -650f), _wgslsmith_f_op_f32(trunc(-1297f))))));
    let var_3 = 401f;
    return !func_2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(311f, var_3, -1000f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1154f, var_3, var_3), vec3<f32>(-2632f, 125f, 1026f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3, var_3, -1634f))))).a.xzx;
}

fn func_1(arg_0: vec3<i32>, arg_1: vec2<f32>) -> f32 {
    let var_0 = Struct_3(func_2(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.x, -1531f, arg_1.x)))))), func_2(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1000f, -255f, arg_1.x), vec3<f32>(arg_1.x, arg_1.x, -821f))), _wgslsmith_div_vec3_f32(vec3<f32>(-564f, arg_1.x, arg_1.x), vec3<f32>(-969f, 806f, arg_1.x)))))).b, select(~u_input.a, -(i32(-1i) * -u_input.a), any(select(func_3(u_input.b.x), vec3<bool>(false, true, true), true))), func_2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(453f, arg_1.x, arg_1.x))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.x, -300f, 139f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -636f, 370f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(1937f, arg_1.x, arg_1.x) + vec3<f32>(arg_1.x, arg_1.x, arg_1.x))), false))), vec4<i32>(~1i, -42039i, 34283i, _wgslsmith_mod_i32(_wgslsmith_sub_i32(arg_0.x, -2147483647i) << (func_2(vec3<f32>(413f, arg_1.x, 1742f)).b.b % 32u), arg_0.x)));
    let var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(627f, -286f)), -219f)), _wgslsmith_f_op_f32(1064f - _wgslsmith_f_op_f32(arg_1.x * arg_1.x)), _wgslsmith_f_op_f32(trunc(-1785f)), 733f) * vec4<f32>(arg_1.x, var_0.b.a.x, -1047f, 421f)), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(-1060f)), arg_1.x)), _wgslsmith_f_op_f32(step(-1113f, _wgslsmith_f_op_f32(max(var_0.d.b.a.x, arg_1.x)))), var_0.a.b.a.x, _wgslsmith_f_op_f32(exp2(arg_1.x))))));
    let var_2 = 30898i;
    var var_3 = func_3(1u).x;
    var_3 = !(2147483647i == (var_0.c << (~select(4294967295u, 4294967295u, var_0.d.a.x) % 32u)));
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(arg_1.x))));
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: vec4<f32>) -> Struct_1 {
    var var_0 = Struct_3(Struct_2(vec4<bool>(arg_1, false, true, false), arg_0), arg_0, i32(-1i) * -u_input.a, func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0.a.x, 608f, -1216f), _wgslsmith_f_op_vec3_f32(-arg_2.wyx), !vec3<bool>(arg_1, false, arg_1))))), ~(_wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, 0i, 0i, 11965i), -vec4<i32>(1i, u_input.a, u_input.a, u_input.a)) & -min(vec4<i32>(u_input.a, u_input.a, 2147483647i, 0i), vec4<i32>(2147483647i, -1i, u_input.a, u_input.a))));
    var var_1 = Struct_2(vec4<bool>(true, true, true, all(func_3(1u))), arg_0);
    var_0 = Struct_3(func_2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_0.b.a.x, var_1.b.a.x, 551f), vec3<f32>(arg_2.x, -381f, 948f))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(arg_2.xyx - vec3<f32>(arg_2.x, -514f, -1305f)))))), Struct_1(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.b.a.x, 344f)), vec2<f32>(_wgslsmith_f_op_f32(-var_0.d.b.a.x), _wgslsmith_f_op_f32(-arg_2.x)))), var_1.b.b), 1i, Struct_2(!var_0.a.a, func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-2728f, arg_2.x, var_1.b.a.x), arg_2.xxz, var_0.d.a.x)))).b), min((vec4<i32>(2147483647i, u_input.a, u_input.a, u_input.a) << (vec4<u32>(var_0.d.b.b, arg_0.b, 29036u, var_1.b.b) % vec4<u32>(32u))) >> (vec4<u32>(var_1.b.b, 4294967295u, 2763u, 49013u) % vec4<u32>(32u)), vec4<i32>(~0i, -u_input.a, var_0.e.x, var_0.e.x)) & vec4<i32>(abs(-u_input.a), max(var_0.e.x, _wgslsmith_mod_i32(4811i, -2147483647i)), ~select(-2147483647i, u_input.a, var_0.a.a.x), ~(-1i)));
    let var_2 = Struct_3(var_0.d, func_2(arg_2.zwz).b, -u_input.a, func_2(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1000f, -297f, _wgslsmith_f_op_f32(func_1(vec3<i32>(1i, u_input.a, 1i), var_0.b.a))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.a.x, var_0.d.b.a.x, 903f))), var_1.a.zwy))), vec4<i32>(_wgslsmith_mod_i32(u_input.a, -(~var_0.c)), _wgslsmith_mult_i32(-27773i, ~(-2147483647i) & reverseBits(u_input.a)), -(select(-8183i, -2147483647i, var_0.a.a.x) >> (~arg_0.b % 32u)), ~25439i));
    var var_3 = Struct_2(vec4<bool>((-var_2.e.x | max(43343i, u_input.a)) < _wgslsmith_sub_i32(1i, var_0.c), true, !(1i != u_input.a), !select(func_3(0u).x, select(arg_1, false, var_1.a.x), false)), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1124f + arg_0.a.x), _wgslsmith_f_op_f32(-arg_2.x), !var_0.a.a.x)), var_2.a.b.a.x), firstLeadingBit(~_wgslsmith_div_u32(61257u, 11952u))));
    return var_3.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-780f, -335f), vec2<f32>(436f, 1777f)) + vec2<f32>(_wgslsmith_f_op_f32(873f * -641f), _wgslsmith_f_op_f32(-1577f - -440f))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1802f, -1892f))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(287f, 459f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-387f, 1563f))))), ~0u);
    var_0 = func_4(Struct_1(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(411f, 657f))), ~0u), true, _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.x, _wgslsmith_f_op_f32(func_1(reverseBits(vec3<i32>(2147483647i, 1i, u_input.a)), _wgslsmith_f_op_vec2_f32(var_0.a + var_0.a))), var_0.a.x, var_0.a.x)));
    var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(var_0.a - vec2<f32>(-895f, _wgslsmith_f_op_f32(var_0.a.x - -366f))), 81995u);
    var_0 = Struct_1(vec2<f32>(-1733f, var_0.a.x), var_0.b);
    let var_1 = vec4<f32>(var_0.a.x, _wgslsmith_f_op_f32(func_1(-countOneBits(firstLeadingBit(vec3<i32>(2147483647i, u_input.a, u_input.a))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(var_0.a)) - _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-152f, var_0.a.x), vec2<f32>(var_0.a.x, -2111f))))))), _wgslsmith_f_op_f32(func_1(~(~(~vec3<i32>(u_input.a, u_input.a, -33270i))), _wgslsmith_div_vec2_f32(vec2<f32>(-1575f, _wgslsmith_f_op_f32(var_0.a.x - var_0.a.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(493f, 697f)))))), -1007f);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-3921f - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1213f - -2239f), -211f, true))), var_0.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec4_i32(max(-_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a, 0i, u_input.a, 50416i), vec4<i32>(u_input.a, 10405i, 1i, u_input.a), vec4<i32>(1i, u_input.a, u_input.a, 55495i)), max(_wgslsmith_sub_vec4_i32(vec4<i32>(-1i, 26602i, u_input.a, -23771i), vec4<i32>(-1362i, u_input.a, u_input.a, 0i)), select(vec4<i32>(1i, u_input.a, u_input.a, u_input.a), vec4<i32>(-1i, u_input.a, u_input.a, u_input.a), false))), _wgslsmith_sub_vec4_i32(~vec4<i32>(u_input.a, u_input.a, 6783i, u_input.a) ^ _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a, -14800i, -1i, 0i), vec4<i32>(u_input.a, u_input.a, u_input.a, -2147483647i), vec4<i32>(u_input.a, 1i, -101272i, -1i)), vec4<i32>(_wgslsmith_div_i32(u_input.a, u_input.a), ~19840i, u_input.a, ~u_input.a))));
}

