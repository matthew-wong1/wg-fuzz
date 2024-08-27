struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: bool,
    d: vec4<f32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec2<bool>,
    c: vec4<f32>,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
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

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> vec2<bool> {
    var var_0 = !vec4<bool>(any(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false))) && false, !(!all(vec4<bool>(false, false, false, false))), any(vec3<bool>(true, true, true)), any(vec3<bool>(true, true, false)));
    let var_1 = Struct_2(reverseBits(-vec4<i32>(u_input.a, 49994i, 6765i, -1i)) >> (vec4<u32>(~_wgslsmith_add_u32(u_input.b, 4294967295u), min(_wgslsmith_mult_u32(37461u, u_input.b), 43303u), ~reverseBits(0u), min(abs(u_input.b), u_input.b)) % vec4<u32>(32u)), var_0.zz, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1157f, -430f, 1446f, 136f)))))));
    var_0 = vec4<bool>(all(vec3<bool>(var_0.x, ~(-76903i) <= _wgslsmith_div_i32(-2753i, u_input.a), all(vec4<bool>(var_0.x, var_0.x, var_1.b.x, var_1.b.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.c.x - var_1.c.x) + -886f)) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(var_1.c.x, var_1.c.x)))), !(!(_wgslsmith_sub_u32(42121u, u_input.b) > 4294967295u)), true);
    var_0 = select(!vec4<bool>(!select(var_0.x, false, var_1.b.x), all(vec2<bool>(var_1.b.x, var_1.b.x)), any(vec3<bool>(var_1.b.x, var_0.x, false)), 2147483647i >= abs(var_1.a.x)), !(!select(select(vec4<bool>(false, var_0.x, var_0.x, true), vec4<bool>(var_0.x, var_0.x, false, true), vec4<bool>(var_0.x, false, true, false)), vec4<bool>(true, var_0.x, false, var_0.x), !vec4<bool>(var_0.x, var_1.b.x, var_0.x, true))), select(vec4<bool>(true, true, var_1.b.x & (var_1.b.x == true), false), select(!vec4<bool>(false, true, true, var_0.x), vec4<bool>(true, true, var_1.b.x, var_0.x), !var_1.b.x || any(vec4<bool>(var_1.b.x, true, var_1.b.x, true))), select(select(vec4<bool>(false, false, var_0.x, false), !vec4<bool>(true, var_1.b.x, false, var_0.x), vec4<bool>(true, false, true, false)), select(select(vec4<bool>(var_0.x, var_1.b.x, false, var_1.b.x), vec4<bool>(true, false, var_0.x, false), vec4<bool>(true, true, var_1.b.x, false)), select(vec4<bool>(var_1.b.x, false, var_0.x, var_1.b.x), vec4<bool>(var_1.b.x, var_1.b.x, var_1.b.x, true), vec4<bool>(var_0.x, true, var_1.b.x, var_1.b.x)), any(vec2<bool>(var_0.x, false))), vec4<bool>(var_1.b.x, -235f <= var_1.c.x, var_1.c.x < 1333f, all(vec4<bool>(var_1.b.x, var_1.b.x, false, false))))));
    let var_2 = var_1;
    return var_1.b;
}

fn func_4(arg_0: vec2<bool>) -> vec4<i32> {
    let var_0 = Struct_2(min(-vec4<i32>(u_input.a, 42432i, -1i, 2147483647i) << (firstLeadingBit(vec4<u32>(u_input.b, 0u, u_input.b, 1u)) % vec4<u32>(32u)), select(~vec4<i32>(u_input.a, 1i, u_input.a, u_input.a), firstTrailingBit(vec4<i32>(1i, 1i, -1i, u_input.a)), vec4<bool>(false, false, arg_0.x, arg_0.x))) | vec4<i32>(-1i, u_input.a, ~firstLeadingBit(u_input.a), _wgslsmith_mod_i32(max(8791i, u_input.a), -2147483647i)), vec2<bool>(arg_0.x, true || (_wgslsmith_f_op_f32(ceil(1000f)) == _wgslsmith_f_op_f32(f32(-1f) * -1252f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-256f)) - -1604f), -480f, -1000f, _wgslsmith_f_op_f32(-150f * _wgslsmith_div_f32(-1123f, 2172f)))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.x)));
    var var_2 = !(!(!(!(!var_0.b.x))));
    var var_3 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1066f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.x)), 372f))), vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(-1358f)))), _wgslsmith_f_op_f32(-var_0.c.x), -142f));
    let var_4 = 389f;
    return ~var_0.a & vec4<i32>(var_0.a.x, 0i, -1i, ~(-2147483647i ^ u_input.a));
}

fn func_2() -> i32 {
    let var_0 = true;
    let var_1 = Struct_2(_wgslsmith_mod_vec4_i32(~(vec4<i32>(-1i) * -vec4<i32>(-11661i, u_input.a, -46426i, u_input.a)), func_4(func_3())), vec2<bool>(true, var_0), vec4<f32>(_wgslsmith_f_op_f32(249f * -539f), _wgslsmith_f_op_f32(-213f - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(-1074f))))), -539f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(224f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(-1000f, -490f, var_0)), _wgslsmith_f_op_f32(f32(-1f) * -2757f))), any(!vec3<bool>(var_0, var_0, true))))));
    return ~0i;
}

fn func_1(arg_0: Struct_3) -> f32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) + _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(1678f, -713f) - vec2<f32>(931f, -662f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(919f, 1896f)))))));
    var var_1 = max(-func_2(), reverseBits(-u_input.a));
    var var_2 = vec2<i32>(-u_input.a, -1i);
    let var_3 = _wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(arg_0.a.zyz, countOneBits(vec3<u32>(12096u, ~u_input.b, 64957u))), ~vec3<u32>(~u_input.b, _wgslsmith_sub_u32(~u_input.b, abs(0u)), ~arg_0.a.x));
    var_1 = _wgslsmith_mod_i32(0i, 8637i);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.x))) - var_0.x))));
}

fn func_5(arg_0: f32) -> i32 {
    var var_0 = Struct_3(vec4<u32>(~(~u_input.b), 8222u, 5683u, 0u));
    return ~_wgslsmith_add_i32(-11261i, 22558i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 0i;
    var_0 = -2147483647i;
    var_0 = func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_3(_wgslsmith_mult_vec4_u32(vec4<u32>(64391u, u_input.b, 72550u, 4294967295u), vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b)))))));
    let var_1 = Struct_3(_wgslsmith_mod_vec4_u32(~vec4<u32>(~u_input.b, _wgslsmith_sub_u32(u_input.b, u_input.b), 4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 8899u, u_input.b, u_input.b), vec4<u32>(u_input.b, 4294967295u, u_input.b, 0u))), vec4<u32>(33111u, u_input.b, u_input.b >> (u_input.b % 32u), 28454u) & vec4<u32>(~1u, _wgslsmith_div_u32(u_input.b, u_input.b), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 0u, 17268u), vec3<u32>(u_input.b, u_input.b, u_input.b)), abs(u_input.b))));
    var_0 = max(u_input.a, -_wgslsmith_div_i32(3021i, u_input.a) << (firstLeadingBit(~1u) % 32u));
    var_0 = -1i;
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(var_1.a.x | var_1.a.x), min(~8653i, -(2147483647i << (~var_1.a.x % 32u))));
}

