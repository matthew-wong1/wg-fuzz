struct Struct_1 {
    a: i32,
    b: i32,
}

struct Struct_2 {
    a: bool,
    b: u32,
    c: i32,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
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

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: Struct_3) -> f32 {
    let var_0 = Struct_2(!(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 31244u, 0u, 37911u), vec4<u32>(1u, 1u, 1u, 1u)) > (36121u >> (0u % 32u))), 49076u, _wgslsmith_div_i32(u_input.a, _wgslsmith_sub_i32(countOneBits(u_input.a & arg_0.a.b), ~(-19195i))));
    let var_1 = _wgslsmith_mult_i32(1i, -30661i);
    var var_2 = select(!var_0.a || var_0.a, true, true) || all(vec3<bool>(var_0.a, all(vec3<bool>(true, var_0.a, var_0.a)), select(select(var_0.a, var_0.a, false), var_0.a && true, all(vec4<bool>(true, var_0.a, false, var_0.a)))));
    var_2 = all(vec4<bool>(var_0.a, true, select(false, all(select(vec3<bool>(var_0.a, var_0.a, var_0.a), vec3<bool>(var_0.a, var_0.a, var_0.a), vec3<bool>(false, var_0.a, false))), (true && var_0.a) && false), false));
    let var_3 = 4294967295u;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1333f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1699f)) - _wgslsmith_f_op_f32(select(-466f, _wgslsmith_div_f32(389f, -381f), true)))));
}

fn func_2() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f))));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1432f, -296f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_3(Struct_1(u_input.a, u_input.a)))) + _wgslsmith_f_op_f32(step(var_0.x, var_0.x))), true)) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.x)))))));
    let var_2 = Struct_2(true, ~(~4294967295u), u_input.a);
    let var_3 = firstTrailingBit(vec2<u32>(0u, 12344u)) & countOneBits(vec2<u32>(31835u, var_2.b));
    let var_4 = Struct_2(var_2.a == any(!(!vec4<bool>(false, true, var_2.a, false))), var_2.b, -firstLeadingBit(select(-30076i, 22470i, true)) >> (abs(_wgslsmith_dot_vec4_u32(min(vec4<u32>(20511u, 6658u, var_2.b, var_3.x), vec4<u32>(5856u, 0u, 9042u, var_3.x)), vec4<u32>(4294967295u, var_2.b, var_2.b, var_3.x) & vec4<u32>(32421u, var_2.b, 8853u, 19109u))) % 32u));
    return Struct_1((_wgslsmith_clamp_i32(var_2.c, var_4.c, -var_2.c) ^ 0i) << (firstLeadingBit(1u | _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 16959u, 4294967295u, 0u), vec4<u32>(40377u, var_4.b, 4294967295u, var_3.x))) % 32u), _wgslsmith_dot_vec4_i32(-vec4<i32>(1i, -1i, var_4.c, u_input.a), reverseBits(vec4<i32>(u_input.a, var_4.c, 1i, var_2.c))) ^ 2147483647i);
}

fn func_1(arg_0: i32, arg_1: vec4<bool>, arg_2: f32, arg_3: u32) -> f32 {
    let var_0 = Struct_1(1i, countOneBits(-2147483647i ^ arg_0));
    let var_1 = func_2();
    let var_2 = abs(abs(~vec4<i32>(1i, -49384i, var_0.b, var_0.b))) & countOneBits(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, 30215i, abs(var_0.b), -2147483647i), _wgslsmith_mod_vec4_i32(min(vec4<i32>(var_0.b, -24403i, u_input.a, 2147483647i), vec4<i32>(var_1.a, var_0.b, var_0.b, u_input.a)), vec4<i32>(-1i, 1i, arg_0, -1i))));
    let var_3 = _wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(~(arg_3 >> (0u % 32u)), ~_wgslsmith_mod_u32(0u, 4631u), ~arg_3), min(~4294967295u, ~arg_3), ~(~abs(0u)), arg_3), ~(_wgslsmith_div_vec4_u32(vec4<u32>(22313u, arg_3, 4294967295u, 1720u), firstLeadingBit(vec4<u32>(arg_3, arg_3, arg_3, arg_3))) >> (vec4<u32>(~arg_3, 61737u, arg_3, 64005u | arg_3) % vec4<u32>(32u))));
    let var_4 = Struct_3(var_1);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_3(func_2()))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_2, 832f)) * _wgslsmith_f_op_f32(-arg_2)), -1445f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) + -327f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(1037f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1599f + -1097f), _wgslsmith_f_op_f32(select(-142f, 442f, true)))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1674f, 225f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1360f, 209f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-578f, -1764f))))));
    var var_1 = 17819u;
    var_1 = 18386u;
    let var_2 = _wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-105f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(0i, vec4<bool>(true, true, true, true), var_0.x, 831u))))));
    var_1 = ~(~1u) >> (firstTrailingBit(abs(19324u)) % 32u);
    var_1 = 0u;
    var var_3 = ~min(1u, ~(~_wgslsmith_div_u32(4294967295u, 47870u)));
    var var_4 = Struct_3(Struct_1(-2147483647i ^ _wgslsmith_div_i32(-1i, _wgslsmith_sub_i32(-2147483647i, u_input.a)), countOneBits(u_input.a ^ -2147483647i)));
    var var_5 = Struct_3(Struct_1(var_4.a.b, 0i));
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec2<i32>(var_4.a.b, u_input.a)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_2), var_2, _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(trunc(-1000f)))) + _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-1103f, var_0.x, var_0.x, 1000f), vec4<f32>(var_0.x, -914f, -227f, var_0.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-925f, var_2, 120f, -842f) - vec4<f32>(var_0.x, var_2, var_2, var_2))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 420f, var_0.x, var_0.x)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-108f, -589f, var_0.x, var_0.x))), vec4<bool>(true, true, true, true))))));
}

