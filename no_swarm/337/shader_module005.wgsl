struct Struct_1 {
    a: i32,
    b: vec2<u32>,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> f32 {
    var var_0 = Struct_1(_wgslsmith_mult_i32(u_input.b.x, u_input.b.x), ~(~vec2<u32>(~48383u, countOneBits(66102u))));
    var var_1 = vec3<i32>(~_wgslsmith_add_i32(1i, 0i), abs(-var_0.a), u_input.a);
    var var_2 = var_1.xy;
    var var_3 = ~var_0.b;
    var_1 = firstTrailingBit(vec3<i32>(var_1.x, -1i, ~0i));
    return _wgslsmith_f_op_f32(f32(-1f) * -687f);
}

fn func_4(arg_0: vec2<f32>, arg_1: f32, arg_2: Struct_1, arg_3: vec2<f32>) -> f32 {
    var var_0 = true;
    var_0 = false;
    global0 = any(!vec3<bool>(true, true, !(arg_1 >= 1013f)));
    var var_1 = firstLeadingBit(vec2<u32>(countOneBits(arg_2.b.x) >> (arg_2.b.x % 32u), _wgslsmith_sub_u32(~(~arg_2.b.x), 25682u)));
    var_1 = max(vec2<u32>(_wgslsmith_mod_u32(1u, _wgslsmith_add_u32(var_1.x, var_1.x)), _wgslsmith_clamp_u32(_wgslsmith_add_u32(var_1.x, 35263u), arg_2.b.x, _wgslsmith_div_u32(7764u, var_1.x))) ^ vec2<u32>(var_1.x, abs(~53031u)), vec2<u32>(~_wgslsmith_add_u32(var_1.x, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, var_1.x, var_1.x, 7961u), vec4<u32>(1u, arg_2.b.x, var_1.x, arg_2.b.x))), min(0u, _wgslsmith_add_u32(var_1.x, 4294967295u))));
    return _wgslsmith_f_op_f32(-2816f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_1))), -612f)) - arg_1));
}

fn func_2(arg_0: Struct_2) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-arg_0.a), arg_0.a, vec3<bool>(true, true, true))) + arg_0.a) - vec3<f32>(_wgslsmith_f_op_f32(-arg_0.a.x), arg_0.a.x, arg_0.a.x));
    var var_1 = firstLeadingBit(~_wgslsmith_clamp_u32(~_wgslsmith_mult_u32(4294967295u, 1u), _wgslsmith_mult_u32(~46531u, _wgslsmith_dot_vec2_u32(vec2<u32>(45359u, 11944u), vec2<u32>(4124u, 4294967295u))), ~(~48721u)));
    var var_2 = var_0.x;
    let var_3 = _wgslsmith_f_op_f32(1000f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-632f, -541f))), var_0.x)) < _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_4(_wgslsmith_div_vec2_f32(vec2<f32>(var_0.x, 818f), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-654f, -605f), vec2<f32>(-459f, -351f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())), Struct_1(20720i, ~vec2<u32>(4294967295u, 51623u)), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(var_0.zy + var_0.xy), _wgslsmith_f_op_vec2_f32(vec2<f32>(-315f, 1081f) + var_0.zz))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1083f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0.x, -2436f)) * _wgslsmith_f_op_f32(trunc(var_0.x))))));
    let var_4 = var_3;
    return Struct_2(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(var_0, arg_0.a)))))));
}

fn func_5(arg_0: Struct_2, arg_1: bool) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(floor(arg_0.a.xz))));
    var var_1 = Struct_1(-1i, ~vec2<u32>(50611u, 1u));
    global0 = !(select(var_1.a, -9618i, true | arg_1) >= _wgslsmith_mult_i32(40500i & u_input.b.x, _wgslsmith_dot_vec2_i32(u_input.b, vec2<i32>(u_input.b.x, var_1.a)))) | true;
    let var_2 = select(select(!vec4<bool>(arg_1, var_1.a != var_1.a, !arg_1, true), select(select(select(vec4<bool>(arg_1, false, arg_1, arg_1), vec4<bool>(false, arg_1, arg_1, false), arg_1), !vec4<bool>(arg_1, true, false, arg_1), 13655i != u_input.a), select(!vec4<bool>(arg_1, false, arg_1, arg_1), select(vec4<bool>(arg_1, true, false, arg_1), vec4<bool>(true, arg_1, arg_1, arg_1), vec4<bool>(arg_1, arg_1, false, arg_1)), select(vec4<bool>(arg_1, false, true, arg_1), vec4<bool>(true, arg_1, true, arg_1), vec4<bool>(false, true, true, true))), arg_1), arg_1), vec4<bool>(min(var_1.b.x, 1u >> (var_1.b.x % 32u)) >= _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.b.x, var_1.b.x, 22706u, 29687u) & vec4<u32>(var_1.b.x, var_1.b.x, var_1.b.x, var_1.b.x), vec4<u32>(var_1.b.x, 43381u, var_1.b.x, var_1.b.x) | vec4<u32>(var_1.b.x, var_1.b.x, 19464u, var_1.b.x)), true, false, !(true && arg_1)), !arg_1 && all(vec4<bool>(arg_1, false, false, true)));
    var_1 = Struct_1(_wgslsmith_mod_i32(-1i, u_input.b.x), select(var_1.b, var_1.b, var_2.zz));
    return Struct_2(vec3<f32>(-791f, -295f, _wgslsmith_f_op_f32(646f * arg_0.a.x)));
}

fn func_6(arg_0: Struct_2) -> vec4<f32> {
    var var_0 = _wgslsmith_mult_i32(_wgslsmith_mod_i32(_wgslsmith_add_i32(-2147483647i, u_input.a) << (~0u % 32u), abs(u_input.a)), u_input.b.x);
    let var_1 = _wgslsmith_dot_vec2_u32(~firstTrailingBit(~vec2<u32>(1u, 0u)), vec2<u32>(~firstTrailingBit(~1u), _wgslsmith_div_u32(_wgslsmith_div_u32(~64723u, 1u), 16051u)));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_0.a.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.a.x + -220f), _wgslsmith_f_op_f32(178f * -1518f)), _wgslsmith_f_op_f32(ceil(-1147f)), arg_0.a.x) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1000f, 616f, arg_0.a.x, arg_0.a.x)))))));
}

fn func_1(arg_0: bool, arg_1: i32, arg_2: Struct_2) -> Struct_2 {
    let var_0 = abs(~(~vec3<u32>(1u, 1u, 1u) >> (select(_wgslsmith_add_vec3_u32(vec3<u32>(41246u, 34144u, 0u), vec3<u32>(70298u, 1u, 4294967295u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, 43842u, 7770u), vec3<u32>(1u, 0u, 1u), vec3<u32>(15653u, 4294967295u, 4294967295u)), vec3<bool>(true, true, true)) % vec3<u32>(32u))));
    global0 = all(vec4<bool>(true, true, !(true | arg_0), false));
    var var_1 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(func_6(func_5(func_2(Struct_2(arg_2.a)), arg_0 | true)))));
    var var_2 = Struct_1(66641i, var_0.xy);
    var var_3 = abs(~min(-13329i, ~7478i));
    return Struct_2(arg_2.a);
}

fn func_7(arg_0: vec3<bool>, arg_1: Struct_2) -> vec3<f32> {
    let var_0 = vec4<u32>(~1u, 2138u, _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 1u)), ~select(141912u, 22598u, arg_0.x)) | 1u, 5746u);
    let var_1 = var_0.x ^ 3867u;
    global0 = arg_0.x;
    let var_2 = u_input.b.x;
    var var_3 = var_2;
    return _wgslsmith_f_op_vec3_f32(arg_1.a - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_1.a * func_5(arg_1, arg_0.x).a)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = any(select(!vec3<bool>(all(vec3<bool>(false, false, false)), true, all(vec2<bool>(false, true))), select(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), all(vec4<bool>(true, true, true, true))), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true)));
    let var_0 = true;
    let var_1 = ~min(_wgslsmith_clamp_u32(~47228u, ~5916u, max(_wgslsmith_dot_vec4_u32(vec4<u32>(3945u, 1u, 18655u, 0u), vec4<u32>(4294967295u, 11963u, 46905u, 30855u)), _wgslsmith_clamp_u32(122494u, 1u, 16339u))), _wgslsmith_div_u32(~31841u, 42587u));
    let var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_7(vec3<bool>(true, false, var_0), func_1(var_0, 1i, Struct_2(vec3<f32>(761f, -1601f, -932f))))))));
    var var_3 = false;
    let var_4 = vec4<i32>(u_input.a, (-u_input.a & abs(-u_input.a)) >> (_wgslsmith_sub_u32(107004u, 14736u) % 32u), 2147483647i, u_input.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(var_1);
}

