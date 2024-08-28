struct Struct_1 {
    a: f32,
    b: u32,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec4<i32>) -> i32 {
    let var_0 = Struct_1(_wgslsmith_div_f32(-969f, -675f), 4294967295u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1f), 1000f, true)) + 485f));
    var var_1 = select(vec4<bool>(-67293i >= (~u_input.e ^ firstTrailingBit(arg_0.x)), all(!select(vec2<bool>(true, false), vec2<bool>(true, true), true)), !(!all(vec3<bool>(true, false, false))), all(select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, false))) && any(vec3<bool>(false, true, false))), select(vec4<bool>(true, true, all(vec3<bool>(false, true, false)) || true, false), select(select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), false), !select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true), true), vec4<bool>(true, true, true, true)), true), false);
    let var_2 = var_0;
    var var_3 = ~(_wgslsmith_mod_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(79639u, var_2.b), vec2<u32>(4294967295u, u_input.c)), vec2<u32>(51944u, var_0.b)) & abs(_wgslsmith_sub_vec2_u32(vec2<u32>(0u, var_2.b), vec2<u32>(u_input.b, var_2.b)))) ^ ~_wgslsmith_mult_vec2_u32(~(vec2<u32>(58252u, u_input.c) << (vec2<u32>(1007u, 50946u) % vec2<u32>(32u))), vec2<u32>(var_2.b, 1u));
    var var_4 = var_2;
    return _wgslsmith_clamp_i32(0i, arg_0.x, countOneBits(_wgslsmith_add_i32(-u_input.a, 27019i)));
}

fn func_2(arg_0: vec4<f32>) -> Struct_1 {
    let var_0 = 453f;
    let var_1 = _wgslsmith_mult_i32(i32(-1i) * -u_input.a, _wgslsmith_dot_vec2_i32(-(~vec2<i32>(u_input.e, -2147483647i)), -((vec2<i32>(u_input.a, 1i) << (vec2<u32>(23067u, 4294967295u) % vec2<u32>(32u))) << (_wgslsmith_mult_vec2_u32(vec2<u32>(15991u, 22754u), vec2<u32>(u_input.d, 74846u)) % vec2<u32>(32u)))));
    let var_2 = _wgslsmith_add_i32(_wgslsmith_mod_i32(-_wgslsmith_add_i32(_wgslsmith_sub_i32(1i, -47520i), ~0i), countOneBits(~var_1)), u_input.e);
    let var_3 = -16245i;
    let var_4 = max(_wgslsmith_mult_vec4_i32(vec4<i32>(var_2, 0i, 596i, var_3) >> (vec4<u32>(u_input.c, 1u, u_input.d, u_input.d) % vec4<u32>(32u)), vec4<i32>(-30149i, var_2, 0i, ~u_input.a)), vec4<i32>(-var_1, ~_wgslsmith_mod_i32(var_3, 0i), reverseBits(~1i), 1i)) ^ vec4<i32>(abs(func_3(_wgslsmith_add_vec4_i32(vec4<i32>(-83401i, var_3, var_3, var_3), vec4<i32>(2147483647i, -1i, 984i, var_1)))), -882i, 1513i, _wgslsmith_div_i32(_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, 15442i), vec2<i32>(var_3, 1i)), 1i), _wgslsmith_mult_i32(_wgslsmith_div_i32(var_3, u_input.a), ~var_3)));
    return Struct_1(1000f, 35698u, 1686f);
}

fn func_1(arg_0: f32, arg_1: vec2<bool>) -> f32 {
    let var_0 = _wgslsmith_mod_u32(50742u, u_input.c);
    let var_1 = func_2(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 - 548f) + _wgslsmith_f_op_f32(arg_0 - -390f)))), arg_0, arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_0), arg_0)) - arg_0)));
    let var_2 = Struct_1(1402f, ~(~u_input.d), _wgslsmith_f_op_f32(select(var_1.c, 1031f, !(var_0 == 0u))));
    var var_3 = arg_0;
    let var_4 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(296f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1421f - arg_0)))), 0u, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-1285f, var_1.a), -542f)))));
    return arg_0;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32) -> Struct_1 {
    return func_2(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_1.a, arg_1.c, arg_0.a, -117f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a, -311f, arg_1.c, arg_0.c))))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(758f + -1281f), -748f)), ~(~u_input.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(-711f, 1182f, false)), _wgslsmith_f_op_f32(func_1(266f, vec2<bool>(true, true))), u_input.e != 0i)) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(497f)))))), func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-413f + 1118f), _wgslsmith_f_op_f32(f32(-1f) * -1155f), -2711f, _wgslsmith_f_op_f32(f32(-1f) * -2239f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-411f, -2214f, 2122f, -618f) - vec4<f32>(1937f, 1000f, 1369f, -1261f)))), _wgslsmith_mod_u32(~u_input.d, 0u));
    let var_1 = vec3<bool>(true, true, true);
    var var_2 = !vec4<bool>(!all(!vec3<bool>(var_1.x, false, var_1.x)), var_1.x, true, true);
    let var_3 = !var_1;
    let var_4 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.c, -852f, 1518f), vec3<f32>(var_0.a, -793f, -932f), vec3<bool>(var_1.x, var_1.x, var_2.x)))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(278f, var_0.a, -307f) - vec3<f32>(-1406f, -1649f, 766f)))))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(ceil(304f)), _wgslsmith_f_op_f32(trunc(var_0.a)), _wgslsmith_f_op_f32(-var_0.c)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1442f, var_0.a, -1055f) * vec3<f32>(-567f, var_0.c, var_0.c)) + _wgslsmith_div_vec3_f32(vec3<f32>(var_0.a, 705f, var_0.c), vec3<f32>(var_0.a, -2053f, -510f)))), vec3<f32>(_wgslsmith_f_op_f32(round(func_2(vec4<f32>(864f, var_0.c, -886f, var_0.a)).c)), _wgslsmith_f_op_f32(183f * var_0.c), func_2(vec4<f32>(-1000f, var_0.c, var_0.a, var_0.a)).a), !(!select(vec3<bool>(var_3.x, var_2.x, false), var_1, false)))), select(var_3, select(!select(vec3<bool>(false, var_3.x, true), var_1, true), vec3<bool>(!var_1.x, u_input.e >= 1i, true), var_2.x), var_1)));
    var_0 = func_4(func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(158f, 789f, -1472f, var_0.c), vec4<f32>(-332f, var_4.x, var_0.a, -654f)))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c, -125f, 867f, var_0.a) - vec4<f32>(-179f, var_4.x, var_4.x, 1000f)))), Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(316f)), var_4.x), countOneBits(countOneBits(~u_input.d)), _wgslsmith_f_op_f32(-1296f - 1f)), 72822u);
    var_2 = !select(vec4<bool>(true, true, true, true), vec4<bool>(select(!var_3.x, true, var_1.x), true | var_3.x, var_3.x, all(select(vec4<bool>(var_3.x, true, true, true), vec4<bool>(false, false, false, false), true))), 350f >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1000f))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u & _wgslsmith_sub_u32(var_0.b, u_input.c), 0u), _wgslsmith_sub_vec2_u32(vec2<u32>(var_0.b & 1u, u_input.d), ~_wgslsmith_sub_vec2_u32(vec2<u32>(33895u, var_0.b), vec2<u32>(22774u, var_0.b)))));
}

