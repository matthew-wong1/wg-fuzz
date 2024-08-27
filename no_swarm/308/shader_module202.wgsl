struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: Struct_4,
    b: bool,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
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

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec3<i32>, arg_1: u32, arg_2: Struct_4, arg_3: f32) -> bool {
    let var_0 = arg_2;
    var var_1 = reverseBits(_wgslsmith_div_i32(_wgslsmith_div_i32(_wgslsmith_div_i32(_wgslsmith_mult_i32(var_0.a.a, -2147483647i), ~arg_2.a.a), u_input.a.x), (max(-10852i, -34539i) >> (1u % 32u)) << (~_wgslsmith_div_u32(4294967295u, arg_1) % 32u)));
    let var_2 = Struct_2(_wgslsmith_add_i32(_wgslsmith_mult_i32(arg_2.a.a >> (arg_1 % 32u), max(-26727i, -2147483647i)) << (85595u % 32u), arg_0.x));
    var var_3 = Struct_1(!(!(!select(vec2<bool>(true, false), vec2<bool>(false, true), true))));
    var_1 = _wgslsmith_add_i32(u_input.b, -arg_2.a.a);
    return var_3.a.x;
}

fn func_2() -> vec2<f32> {
    let var_0 = select(vec4<bool>(true, true, 481f < _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(select(-219f, -172f, false))), all(vec4<bool>(true, true, true, true))), select(select(select(select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, true)), vec4<bool>(true, true, true, true), true), vec4<bool>(true, true, true, true), true), !vec4<bool>(true, func_3(vec3<i32>(u_input.b, 1i, -2147483647i), u_input.c, Struct_4(Struct_3(u_input.a.x)), -595f), func_3(vec3<i32>(1i, -26227i, u_input.d), 4294967295u, Struct_4(Struct_3(-10967i)), 272f), true), !select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), true)), func_3(abs(vec3<i32>(u_input.d, _wgslsmith_mult_i32(u_input.a.x, u_input.d), select(25457i, u_input.b, true))), ~0u, Struct_4(Struct_3(u_input.a.x)), _wgslsmith_f_op_f32(-245f + -1338f)));
    let var_1 = Struct_2(_wgslsmith_dot_vec2_i32(vec2<i32>(abs(-2147483647i), firstLeadingBit(_wgslsmith_mod_i32(u_input.a.x, u_input.b))), vec2<i32>(-2147483647i, _wgslsmith_sub_i32(1i, 1i)) << (vec2<u32>(u_input.c & 52745u, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 14167u), vec2<u32>(64418u, u_input.c))) % vec2<u32>(32u))));
    let var_2 = Struct_3(_wgslsmith_dot_vec2_i32(u_input.a, select(~min(u_input.a, u_input.a), u_input.a, any(!vec2<bool>(true, var_0.x)))));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-189f * 1815f)) - 576f);
    var var_4 = var_0.yzz;
    return _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(240f, -981f), vec2<f32>(-955f, 775f), vec2<bool>(true, var_4.x))), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1943f, 472f)))))))));
}

fn func_1(arg_0: Struct_3, arg_1: vec3<bool>, arg_2: f32) -> Struct_5 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_2())));
    let var_1 = !select(select(vec4<bool>(arg_1.x && arg_1.x, -617f < var_0.x, arg_1.x, arg_1.x), vec4<bool>(!arg_1.x, any(vec4<bool>(true, arg_1.x, arg_1.x, true)), any(vec4<bool>(true, false, false, false)), true), ~37793u >= u_input.c), select(select(select(vec4<bool>(arg_1.x, arg_1.x, false, true), vec4<bool>(true, false, arg_1.x, false), vec4<bool>(arg_1.x, false, false, arg_1.x)), select(vec4<bool>(arg_1.x, arg_1.x, arg_1.x, true), vec4<bool>(false, arg_1.x, false, false), vec4<bool>(false, true, arg_1.x, arg_1.x)), true), !vec4<bool>(false, arg_1.x, false, false), select(!vec4<bool>(false, arg_1.x, true, true), !vec4<bool>(arg_1.x, arg_1.x, arg_1.x, arg_1.x), select(vec4<bool>(arg_1.x, arg_1.x, arg_1.x, arg_1.x), vec4<bool>(arg_1.x, true, arg_1.x, arg_1.x), arg_1.x))), vec4<bool>(arg_1.x, select(arg_1.x, u_input.b >= arg_0.a, select(false, arg_1.x, false)), !any(vec4<bool>(arg_1.x, false, false, true)), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, u_input.c, 1u), vec3<u32>(u_input.c, 0u, u_input.c)) == u_input.c));
    var var_2 = 698f;
    let var_3 = Struct_1(vec2<bool>(all(!select(vec3<bool>(arg_1.x, var_1.x, true), vec3<bool>(false, var_1.x, false), true)), max(_wgslsmith_sub_u32(41645u, 1u), ~u_input.c) > u_input.c));
    var_2 = arg_2;
    return Struct_5(Struct_4(Struct_3(i32(-1i) * -u_input.a.x)), false, vec4<i32>(firstLeadingBit(arg_0.a), countOneBits(-2147483647i), 10864i, reverseBits(0i)));
}

fn func_4(arg_0: i32, arg_1: Struct_5) -> Struct_1 {
    let var_0 = _wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(-firstLeadingBit(arg_0), _wgslsmith_dot_vec4_i32(arg_1.c, vec4<i32>(2147483647i, u_input.b, -49162i, 21383i))), -_wgslsmith_sub_i32(select(-1i, 17775i, arg_1.b), -5081i), arg_0, -34776i), _wgslsmith_sub_vec4_i32(vec4<i32>(~arg_1.c.x, 0i, _wgslsmith_mod_i32(arg_1.a.a.a, arg_1.a.a.a), abs(u_input.b)) >> (_wgslsmith_div_vec4_u32(vec4<u32>(45852u, u_input.c, u_input.c, u_input.c), vec4<u32>(u_input.c, 0u, 4294967295u, 46510u)) % vec4<u32>(32u)), arg_1.c ^ vec4<i32>(1i, ~1i, arg_0, min(31012i, arg_0))));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -264f))) - _wgslsmith_f_op_f32(f32(-1f) * -137f)), -1000f, -932f);
    var var_2 = select(!(!select(!vec3<bool>(arg_1.b, arg_1.b, true), select(vec3<bool>(arg_1.b, true, true), vec3<bool>(arg_1.b, false, arg_1.b), arg_1.b), !vec3<bool>(true, arg_1.b, true))), select(select(!select(vec3<bool>(false, true, true), vec3<bool>(true, false, arg_1.b), arg_1.b), vec3<bool>(var_1.x < 1150f, true, any(vec2<bool>(arg_1.b, true))), select(vec3<bool>(arg_1.b, arg_1.b, false), !vec3<bool>(true, arg_1.b, false), vec3<bool>(false, arg_1.b, false))), select(!select(vec3<bool>(arg_1.b, arg_1.b, false), vec3<bool>(arg_1.b, arg_1.b, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), select(!vec3<bool>(true, arg_1.b, false), select(vec3<bool>(arg_1.b, arg_1.b, arg_1.b), vec3<bool>(arg_1.b, arg_1.b, true), vec3<bool>(arg_1.b, true, arg_1.b)), arg_1.b)), true), vec3<bool>(arg_1.b & true, arg_1.b, true));
    var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-955f, var_1.x, 171f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, 993f, var_1.x))) + vec3<f32>(-383f, _wgslsmith_f_op_f32(floor(211f)), _wgslsmith_div_f32(var_1.x, var_1.x))))));
    var var_3 = Struct_5(Struct_4(arg_1.a.a), true, abs(arg_1.c));
    return Struct_1(vec2<bool>(!(!(!var_3.b)), !var_2.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(~_wgslsmith_mod_i32(u_input.d, _wgslsmith_clamp_i32(u_input.d, u_input.d << (u_input.c % 32u), -1i)), func_1(Struct_3(u_input.a.x), vec3<bool>(true, true, all(vec2<bool>(true, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(2976f)) + _wgslsmith_f_op_f32(step(1345f, -670f))) + -1546f)));
    var_0 = func_4(u_input.d, Struct_5(Struct_4(func_1(Struct_3(2147483647i), select(vec3<bool>(var_0.a.x, true, var_0.a.x), vec3<bool>(var_0.a.x, false, var_0.a.x), var_0.a.x), _wgslsmith_f_op_f32(max(-1170f, 477f))).a.a), !var_0.a.x && (u_input.d >= -1236i), (abs(vec4<i32>(0i, 59658i, -25819i, 0i)) & _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a.x, -2147483647i, u_input.a.x, 2147483647i), vec4<i32>(-6798i, -19209i, u_input.d, u_input.a.x))) ^ max(~vec4<i32>(u_input.a.x, u_input.b, u_input.b, u_input.b), ~vec4<i32>(u_input.d, u_input.d, u_input.b, u_input.d))));
    var_0 = Struct_1(vec2<bool>(true, false));
    var_0 = Struct_1(var_0.a);
    let var_1 = Struct_2(1i);
    let var_2 = select(!vec3<bool>(any(func_4(u_input.d, Struct_5(Struct_4(Struct_3(u_input.d)), var_0.a.x, vec4<i32>(2147483647i, 1i, var_1.a, -2107i))).a), true, !(!var_0.a.x)), select(vec3<bool>(any(vec3<bool>(var_0.a.x, false, var_0.a.x)) || true, func_3(vec3<i32>(-9938i, var_1.a, 2147483647i) | vec3<i32>(u_input.b, u_input.d, var_1.a), ~u_input.c, func_1(Struct_3(-2101i), vec3<bool>(var_0.a.x, false, false), 597f).a, _wgslsmith_f_op_f32(-1013f + 598f)), !var_0.a.x && true), vec3<bool>(true, all(select(vec4<bool>(var_0.a.x, var_0.a.x, var_0.a.x, var_0.a.x), vec4<bool>(var_0.a.x, false, var_0.a.x, false), vec4<bool>(true, false, var_0.a.x, var_0.a.x))), var_0.a.x & true), all(!select(vec3<bool>(false, false, true), vec3<bool>(var_0.a.x, var_0.a.x, var_0.a.x), vec3<bool>(var_0.a.x, false, true)))), all(vec2<bool>(var_0.a.x & var_0.a.x, var_0.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a);
}

