struct Struct_1 {
    a: f32,
    b: f32,
}

struct Struct_2 {
    a: u32,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<u32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_2) -> u32 {
    let var_0 = true;
    let var_1 = reverseBits(arg_2.b.x);
    var var_2 = Struct_2(u_input.a, arg_0.b);
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-551f, -202f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-475f + -1377f)), -709f)) - _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-146f, -1435f, -966f, -1235f) - vec4<f32>(886f, -841f, -144f, -1216f)) + _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-251f, -582f, 617f, 553f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-411f, -1000f, -1103f, -305f)))))));
    var var_4 = Struct_1(var_3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_3.x)) + _wgslsmith_f_op_f32(var_3.x * _wgslsmith_div_f32(var_3.x, -554f)))));
    return 9646u;
}

fn func_2(arg_0: i32, arg_1: vec3<u32>) -> f32 {
    let var_0 = Struct_2(_wgslsmith_clamp_u32(max(5952u, func_3(Struct_2(26910u, vec2<i32>(-4320i, 6443i)), Struct_2(u_input.a, vec2<i32>(-46727i, arg_0)), Struct_2(u_input.a, vec2<i32>(arg_0, 2147483647i)))) ^ _wgslsmith_dot_vec3_u32(arg_1, select(arg_1, arg_1, vec3<bool>(false, true, false))), _wgslsmith_mult_u32(_wgslsmith_mod_u32(4294967295u, arg_1.x) & arg_1.x, arg_1.x), 23339u), _wgslsmith_mod_vec2_i32(vec2<i32>(~arg_0, _wgslsmith_clamp_i32(arg_0, _wgslsmith_add_i32(arg_0, 0i), -16293i)), vec2<i32>(-arg_0 | abs(arg_0), 0i)));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)));
    var var_2 = any(vec2<bool>(true, all(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), true), select(vec2<bool>(true, true), vec2<bool>(true, false), true)))));
    var_2 = all(select(vec2<bool>(true, true), vec2<bool>(false, true), select(vec2<bool>(true, true), vec2<bool>(false, false), true))) && all(select(vec4<bool>(select(true, true, true), true, true, any(vec4<bool>(true, true, false, false))), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, false)), true), _wgslsmith_f_op_f32(var_1.x + 1126f) == 677f));
    var_2 = false;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1396f)) * _wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_1.x, 523f)))))));
}

fn func_4(arg_0: vec2<bool>, arg_1: bool) -> vec4<i32> {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1716f)) + _wgslsmith_f_op_f32(f32(-1f) * -1000f)), -1434f)) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-941f, 544f)) - -637f)))), _wgslsmith_f_op_f32(-1460f - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(1358f, -1357f)))), -305f))));
    var var_1 = countOneBits(~vec2<u32>(2374u, ~u_input.a));
    var_1 = ~vec2<u32>(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(var_1.x, var_1.x, 13212u, var_1.x)), abs(vec4<u32>(0u, 59575u, 4294967295u, var_1.x)) >> (~vec4<u32>(u_input.a, u_input.a, 4294967295u, 16761u) % vec4<u32>(32u))), u_input.a);
    var_1 = _wgslsmith_mult_vec2_u32(vec2<u32>(var_1.x, abs(46471u)), vec2<u32>(var_1.x, 89223u));
    var_1 = ~(~(vec2<u32>(1u, ~0u) >> (~max(vec2<u32>(0u, var_1.x), vec2<u32>(98824u, 119914u)) % vec2<u32>(32u))));
    return -((_wgslsmith_div_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(2147483647i, -10659i, -2147483647i, 42287i) >> (vec4<u32>(var_1.x, u_input.a, var_1.x, var_1.x) % vec4<u32>(32u))) << (vec4<u32>(~1u, 75467u, var_1.x ^ 0u, var_1.x) % vec4<u32>(32u))) >> ((~reverseBits(vec4<u32>(u_input.a, var_1.x, 0u, 1u)) << (_wgslsmith_div_vec4_u32(~vec4<u32>(var_1.x, var_1.x, 63660u, 0u), vec4<u32>(4294967295u, 0u, 36052u, 1u)) % vec4<u32>(32u))) % vec4<u32>(32u)));
}

fn func_1(arg_0: vec3<u32>, arg_1: vec3<f32>) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) * arg_1.x)));
    var_0 = _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(arg_1.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + 2046f)));
    var var_1 = func_4(vec2<bool>(true, true), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_2(-5796i, vec3<u32>(48941u, 4294967295u, u_input.a))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_1.x)) + _wgslsmith_f_op_f32(floor(arg_1.x))))) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(arg_1.x)))) + _wgslsmith_f_op_f32(f32(-1f) * -322f)));
    var var_2 = Struct_2(_wgslsmith_add_u32(~u_input.a, u_input.a), vec2<i32>(var_1.x, i32(-1i) * -5439i));
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(897f * arg_1.x)), arg_1.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.x), arg_1.x), arg_1.x, _wgslsmith_f_op_f32(min(arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(1000f * 268f))))));
    return min(var_1.x, _wgslsmith_div_i32(var_2.b.x, abs(~var_1.x << (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 4294967295u, 22055u), vec3<u32>(u_input.a, var_2.a, u_input.a)) % 32u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(703f, _wgslsmith_f_op_f32(ceil(-894f)));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(2359f - -1061f))), _wgslsmith_f_op_f32(var_0.a + var_0.b), !any(vec2<bool>(true, false))))), var_0.a);
    var var_2 = 686u;
    var var_3 = ~(~vec2<u32>(_wgslsmith_mod_u32(62856u, u_input.a) ^ _wgslsmith_add_u32(38140u, u_input.a), 35085u));
    var var_4 = vec2<i32>(~func_1(vec3<u32>(_wgslsmith_mod_u32(u_input.a, u_input.a), abs(u_input.a), 13649u << (var_3.x % 32u)), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b, 1085f, var_1.b))))), i32(-1i) * -23664i);
    var_3 = vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(104750u, u_input.a, 22842u, _wgslsmith_dot_vec2_u32(vec2<u32>(9440u, var_3.x) | vec2<u32>(6508u, var_3.x), ~vec2<u32>(26727u, var_3.x))), ~min(~vec4<u32>(u_input.a, var_3.x, 4294967295u, u_input.a), ~vec4<u32>(46023u, var_3.x, u_input.a, u_input.a))), ~var_3.x);
    var var_5 = countOneBits(~(_wgslsmith_mod_u32(u_input.a, var_3.x) >> (1u % 32u)) | _wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(0u, var_3.x)), vec2<u32>(_wgslsmith_mult_u32(u_input.a, var_3.x), _wgslsmith_sub_u32(55473u, u_input.a))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(323f, var_1.b))) * vec2<f32>(var_1.a, var_1.a))) + vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_0.a - 276f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_1.a * var_1.b))))), vec2<u32>(u_input.a, u_input.a), firstLeadingBit(select(_wgslsmith_sub_vec2_u32(vec2<u32>(20568u, 28291u) & vec2<u32>(u_input.a, 1u), ~vec2<u32>(u_input.a, 15680u)), firstLeadingBit(~vec2<u32>(u_input.a, var_3.x)), true)));
}

