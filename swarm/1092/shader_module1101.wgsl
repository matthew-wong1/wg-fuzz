struct Struct_1 {
    a: u32,
    b: i32,
    c: f32,
    d: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: Struct_1,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: f32, arg_1: f32, arg_2: vec3<i32>, arg_3: vec3<bool>) -> u32 {
    let var_0 = u_input.c;
    let var_1 = Struct_1(max(~u_input.c.x, 47105u), abs(-(-1259i & ~arg_2.x)), arg_1, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1836f, 237f, 399f))))))) * vec3<f32>(_wgslsmith_f_op_f32(arg_1 - -907f), _wgslsmith_f_op_f32(-arg_1), 504f)));
    let var_2 = arg_0;
    let var_3 = -1000f;
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0))) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2) * var_2)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1035f + _wgslsmith_f_op_f32(ceil(717f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3))))));
    return 1u;
}

fn func_2(arg_0: bool) -> Struct_2 {
    var var_0 = _wgslsmith_clamp_vec3_u32(vec3<u32>(52808u, func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(572f - 1761f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(-483f, -1115f, true)))), firstLeadingBit(-u_input.a), vec3<bool>(arg_0, arg_0, true)), u_input.b << (_wgslsmith_clamp_u32(~122288u, _wgslsmith_dot_vec2_u32(u_input.c.xw, vec2<u32>(u_input.b, u_input.b)), 1u) % 32u)), vec3<u32>(0u, ~(~reverseBits(u_input.b)), ~(~20907u)), firstLeadingBit(~vec3<u32>(_wgslsmith_div_u32(35639u, 8825u), 4185u, 1u)));
    let var_1 = Struct_2(Struct_1(~_wgslsmith_clamp_u32(~35205u, 1u | var_0.x, ~var_0.x), ~(~0i), 1000f, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1000f, 1413f, -1000f)))) + _wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(vec3<f32>(779f, -857f, 141f), vec3<f32>(569f, 1000f, -244f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-344f, -1000f, 610f)))))), select(abs(-(~vec4<i32>(u_input.a.x, -2147483647i, -34224i, 81967i))), -_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x) & vec4<i32>(-2147483647i, 31557i, u_input.a.x, u_input.a.x), firstTrailingBit(vec4<i32>(u_input.a.x, u_input.a.x, -2147483647i, 1i))), !select(select(vec4<bool>(arg_0, false, arg_0, true), vec4<bool>(true, arg_0, arg_0, false), vec4<bool>(true, true, false, arg_0)), vec4<bool>(true, arg_0, arg_0, arg_0), !vec4<bool>(true, arg_0, arg_0, arg_0))), Struct_1(var_0.x, u_input.a.x | max(44796i, u_input.a.x), _wgslsmith_f_op_f32(f32(-1f) * -189f), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1152f, _wgslsmith_f_op_f32(min(-2301f, 345f)), _wgslsmith_div_f32(488f, -786f))))), vec3<u32>(max(max(1u, u_input.c.x) & var_0.x, 18060u), ~abs(4294967295u | u_input.c.x), ~(~abs(6156u))));
    var var_2 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_1.c.c, _wgslsmith_f_op_f32(-var_1.c.d.x))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(step(var_1.c.d.zy, vec2<f32>(-2934f, var_1.a.d.x))), _wgslsmith_f_op_vec2_f32(-var_1.a.d.zx), any(vec4<bool>(true, true, true, true)))))) * var_1.c.d.yz)));
    var_0 = u_input.c.wzw;
    var var_3 = ~u_input.c;
    return var_1;
}

fn func_4(arg_0: Struct_2) -> Struct_2 {
    var var_0 = ~_wgslsmith_mult_vec2_u32(_wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(~arg_0.d.zx, countOneBits(u_input.c.xy)), ~(~arg_0.d.xy)), abs(_wgslsmith_add_vec2_u32(~u_input.c.yz, vec2<u32>(14642u, arg_0.a.a))));
    let var_1 = 4294967295u;
    let var_2 = vec4<bool>(arg_0.a.d.x != -878f, !(true || any(select(vec2<bool>(true, true), vec2<bool>(true, false), true))), false, _wgslsmith_mult_u32(firstLeadingBit(arg_0.c.a & arg_0.c.a), 16504u) >= var_0.x);
    let var_3 = arg_0;
    var var_4 = -250f;
    return Struct_2(func_2(any(select(!var_2.xz, select(var_2.zw, vec2<bool>(var_2.x, var_2.x), vec2<bool>(false, var_2.x)), false))).c, _wgslsmith_clamp_vec4_i32(-(~_wgslsmith_add_vec4_i32(var_3.b, arg_0.b)), vec4<i32>(_wgslsmith_dot_vec3_i32(-arg_0.b.xzx, _wgslsmith_add_vec3_i32(vec3<i32>(-720i, 1i, 1i), vec3<i32>(var_3.b.x, arg_0.b.x, arg_0.a.b))), 1i, _wgslsmith_div_i32(abs(0i), -var_3.c.b), 1i), abs(_wgslsmith_mod_vec4_i32(countOneBits(vec4<i32>(u_input.a.x, u_input.a.x, arg_0.c.b, 413i)), var_3.b))), Struct_1(var_3.c.a << ((firstTrailingBit(60103u) & ~var_3.c.a) % 32u), 2147483647i, arg_0.a.d.x, arg_0.c.d), var_3.d);
}

fn func_1() -> f32 {
    var var_0 = ~vec2<u32>(~u_input.b, ~(~u_input.b) & 46691u);
    var var_1 = -1518f;
    var_0 = u_input.c.zx;
    var var_2 = func_4(func_2(!any(vec2<bool>(false, false))));
    let var_3 = select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true)), vec4<bool>(true, true, true, true), all(vec2<bool>(true, true)))), vec4<bool>(all(vec2<bool>(true, true)), true, !all(vec4<bool>(false, true, false, false)), true), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false))), !vec4<bool>(_wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(var_2.b.x, var_2.a.b, var_2.c.b)) >= func_4(Struct_2(var_2.a, vec4<i32>(6350i, -1i, var_2.b.x, u_input.a.x), Struct_1(u_input.b, 18364i, -603f, vec3<f32>(var_2.a.c, -435f, -1338f)), u_input.c.xxz)).c.b, true, select(-1451f <= var_2.c.d.x, true, true), true), !select(true, any(select(vec2<bool>(true, false), vec2<bool>(false, false), false)), all(vec2<bool>(true, false))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1000f)) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(var_2.c.d.x, -875f))))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(-548f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(521f)))))), 831f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-594f + 1f)) + _wgslsmith_f_op_f32(func_1())), _wgslsmith_f_op_f32(max(1000f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1026f + 881f))))));
    var var_1 = func_2(false).c;
    var_0 = vec4<f32>(func_2(any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)))).c.c, -327f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_1.c), var_0.x)), var_0.x);
    let var_2 = _wgslsmith_mod_vec2_u32(~vec2<u32>(~(~1u), _wgslsmith_mod_u32(~40565u, _wgslsmith_dot_vec2_u32(vec2<u32>(74852u, 51202u), vec2<u32>(0u, 41534u)))), select(u_input.c.zx, abs(vec2<u32>(22080u, 2019u)) >> (~u_input.c.zz % vec2<u32>(32u)), ~(-1i) != _wgslsmith_sub_i32(abs(u_input.a.x), abs(u_input.a.x))));
    let var_3 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.zyw)), vec3<u32>(reverseBits(var_2.x), ~(~(~77266u)), 0u));
}

