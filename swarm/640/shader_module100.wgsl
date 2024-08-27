struct Struct_1 {
    a: i32,
    b: u32,
    c: bool,
    d: u32,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: bool,
}

struct Struct_4 {
    a: vec2<u32>,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
    d: vec4<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec3<i32>, arg_1: i32, arg_2: i32, arg_3: u32) -> vec4<bool> {
    var var_0 = _wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(firstLeadingBit(~u_input.a), arg_3 >> (~59546u % 32u)), vec2<u32>(firstLeadingBit(u_input.a | 10088u), arg_3)), vec2<u32>(arg_3, arg_3));
    var_0 = ~abs(~(~vec2<u32>(var_0.x, var_0.x)));
    var var_1 = select(!select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, true), false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false)), select(select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false), true), vec4<bool>(true, true, true, true), all(vec4<bool>(true, true, false, true)))), vec4<bool>(any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)), true, (true != all(vec2<bool>(false, true))) != !all(vec3<bool>(true, false, false)), false), vec4<bool>(!(abs(u_input.a) >= (u_input.a << (4294967295u % 32u))), true, true, false));
    var_0 = vec2<u32>(1u, select(var_0.x, _wgslsmith_mod_u32(~u_input.e, abs(u_input.e)), !((-1i > arg_1) | true)));
    var_0 = select(min(firstLeadingBit(vec2<u32>(u_input.d, 1u)), vec2<u32>(arg_3, 30921u)) << (select(vec2<u32>(arg_3, 0u), vec2<u32>(1u, u_input.e), !vec2<bool>(var_1.x, true)) % vec2<u32>(32u)), abs(vec2<u32>(var_0.x, 52151u)), vec2<bool>(all(vec3<bool>(var_1.x, var_1.x, false)), true)) ^ ~_wgslsmith_add_vec2_u32(~countOneBits(vec2<u32>(var_0.x, arg_3)), vec2<u32>(~31644u, 6919u));
    return !(!(!(!vec4<bool>(false, var_1.x, false, true))));
}

fn func_4(arg_0: bool, arg_1: Struct_4) -> vec2<f32> {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(-1796f, 421f)))))) - _wgslsmith_f_op_f32(select(1009f, _wgslsmith_f_op_f32(-1088f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(891f, -1501f)))), firstTrailingBit(-u_input.b) > countOneBits(_wgslsmith_mod_i32(u_input.b, u_input.b)))));
    var_0 = _wgslsmith_f_op_f32(f32(-1f) * -267f);
    var var_1 = ~(~abs(vec3<i32>(_wgslsmith_sub_i32(u_input.c, u_input.b), u_input.b, 1i)));
    let var_2 = ~_wgslsmith_div_vec2_u32(arg_1.a, reverseBits(reverseBits(arg_1.a & vec2<u32>(74315u, arg_1.a.x))));
    var_1 = ~(~abs(~vec3<i32>(var_1.x, 4583i, 0i)) << (_wgslsmith_add_vec3_u32(_wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(arg_1.a.x, u_input.a, arg_1.a.x), vec3<u32>(4294967295u, u_input.e, arg_1.a.x)), vec3<u32>(86272u, 30744u, arg_1.a.x)), firstLeadingBit(firstTrailingBit(vec3<u32>(22804u, var_2.x, 4294967295u)))) % vec3<u32>(32u)));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, _wgslsmith_f_op_f32(1428f - -1000f)))));
}

fn func_2(arg_0: u32, arg_1: vec2<i32>, arg_2: f32) -> vec4<u32> {
    var var_0 = 44084i;
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_4(all(func_3(vec3<i32>(arg_1.x, 25583i, 17177i), -2147483647i, 1i, 17122u)), Struct_4(~vec2<u32>(u_input.d, arg_0), true)))));
    var_0 = ~(-2029i);
    var var_2 = !(!vec3<bool>(any(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true))), !all(vec4<bool>(false, true, true, false)), !func_3(vec3<i32>(u_input.c, 7091i, 9377i), -2147483647i, 0i, arg_0).x));
    return ~select(~vec4<u32>(584u, 72020u, abs(19040u), ~0u), min(~vec4<u32>(arg_0, u_input.a, 17088u, 6960u) | ~vec4<u32>(arg_0, arg_0, 9402u, u_input.e), vec4<u32>(abs(u_input.a), 8594u, 16791u, _wgslsmith_clamp_u32(1u, 6105u, 4294967295u))), all(!select(vec2<bool>(var_2.x, true), vec2<bool>(var_2.x, false), var_2.zy)));
}

fn func_1(arg_0: u32) -> vec2<u32> {
    let var_0 = (func_2(arg_0, vec2<i32>(~u_input.c, u_input.b), -706f) | max(firstTrailingBit(vec4<u32>(1699u, 42630u, 1u, 4294967295u)), ~vec4<u32>(arg_0, 0u, 62392u, u_input.d))) | vec4<u32>(_wgslsmith_dot_vec3_u32(~reverseBits(vec3<u32>(4294967295u, arg_0, arg_0)), ~(~vec3<u32>(u_input.e, u_input.d, arg_0))), 6276u, 482u, select(~select(arg_0, 44767u, true), _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.e, arg_0, arg_0, 0u), vec4<u32>(1u, u_input.a, 40075u, arg_0) >> (vec4<u32>(4294967295u, u_input.d, 22485u, arg_0) % vec4<u32>(32u))), all(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true)))));
    var var_1 = Struct_4(countOneBits(_wgslsmith_add_vec2_u32(vec2<u32>(min(u_input.a, arg_0), func_2(0u, vec2<i32>(u_input.b, u_input.c), 825f).x), ~(~var_0.xw))), any(vec2<bool>(select(u_input.b, 1i, true) > countOneBits(28207i), true)));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_4(false, Struct_4(_wgslsmith_mult_vec2_u32(vec2<u32>(arg_0, 766u), vec2<u32>(13448u, u_input.d)), false & var_1.b))).x));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-996f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-348f)) - _wgslsmith_f_op_f32(ceil(976f)))))));
    var_3 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(round(-1000f)))));
    return _wgslsmith_mult_vec2_u32(vec2<u32>(abs(arg_0), arg_0), ~(~_wgslsmith_mult_vec2_u32(func_2(7462u, vec2<i32>(-21677i, 25896i), 1000f).yy, abs(var_1.a))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var var_1 = ~func_1(u_input.e);
    var var_2 = -632f;
    var var_3 = (-vec3<i32>(2147483647i, ~u_input.c, select(-30060i, u_input.b, false)) & select(vec3<i32>(0i, _wgslsmith_div_i32(u_input.c, u_input.b), u_input.b), select(min(vec3<i32>(u_input.c, 60464i, u_input.b), vec3<i32>(-36493i, -21941i, -7981i)), vec3<i32>(u_input.b, 2147483647i, 2147483647i), select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(true, false, true))), var_1.x <= (var_1.x << (var_1.x % 32u)))) >> (vec3<u32>(~var_1.x, ~reverseBits(u_input.e), ~(~var_1.x)) % vec3<u32>(32u));
    var_3 = reverseBits(countOneBits(reverseBits(vec3<i32>(-2147483647i, var_3.x, _wgslsmith_add_i32(var_3.x, 55873i)))));
    let x = u_input.a;
    s_output = StorageBuffer(~(_wgslsmith_add_i32(~1i, _wgslsmith_sub_i32(u_input.b, var_3.x)) << (countOneBits(countOneBits(79222u)) % 32u)), firstTrailingBit(vec4<i32>(_wgslsmith_mult_i32(-3192i, -15967i) >> (_wgslsmith_mult_u32(u_input.d, var_1.x) % 32u), firstTrailingBit(min(7720i, 0i)), u_input.c, var_3.x)), countOneBits(~(~(~(-14018i)))), vec4<i32>(reverseBits(_wgslsmith_mult_i32(-var_3.x, 1i)), u_input.b, 58918i, i32(-1i) * -u_input.b), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-486f, _wgslsmith_f_op_f32(floor(-861f))))))));
}

