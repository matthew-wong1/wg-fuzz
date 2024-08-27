struct Struct_1 {
    a: vec3<bool>,
    b: bool,
    c: f32,
    d: u32,
    e: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec2<u32>,
    d: vec2<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_1(arg_0: u32, arg_1: Struct_1) -> f32 {
    let var_0 = -159f;
    let var_1 = _wgslsmith_mult_vec3_u32(u_input.e.zxz, _wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_div_u32(u_input.b.x, 32931u), 4294967295u, u_input.a.x | arg_1.d), ~(vec3<u32>(86178u, 4294967295u, arg_1.d) >> (vec3<u32>(11419u, 1u, 0u) % vec3<u32>(32u)))), reverseBits(u_input.e.zww)));
    let var_2 = Struct_1(select(!(!arg_1.a), vec3<bool>(any(vec3<bool>(false, false, arg_1.a.x)), any(select(arg_1.a.xy, vec2<bool>(arg_1.b, false), arg_1.a.yx)), true), !((u_input.e.x | arg_0) < firstTrailingBit(u_input.b.x))), true, _wgslsmith_f_op_f32(1968f * arg_1.c), abs(~reverseBits(~27209u)), u_input.d.x ^ -1i);
    return 759f;
}

fn func_3(arg_0: vec2<f32>) -> f32 {
    var var_0 = !(!(!select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), false), true)));
    var_0 = !select(select(vec3<bool>(u_input.d.x >= -40339i, true, false), select(select(vec3<bool>(true, var_0.x, var_0.x), vec3<bool>(var_0.x, var_0.x, true), var_0.x), select(vec3<bool>(false, true, var_0.x), vec3<bool>(true, var_0.x, true), true), any(var_0.yy)), vec3<bool>(var_0.x, var_0.x & true, true)), select(vec3<bool>(!var_0.x, var_0.x, true), !select(vec3<bool>(true, var_0.x, true), vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(var_0.x, var_0.x, var_0.x)), !select(vec3<bool>(var_0.x, false, true), vec3<bool>(true, false, var_0.x), vec3<bool>(false, var_0.x, var_0.x))), vec3<bool>(var_0.x, var_0.x, true));
    var_0 = vec3<bool>(true, any(vec4<bool>(true, all(!vec2<bool>(false, var_0.x)), true, true)), true);
    var var_1 = ~select(_wgslsmith_sub_vec3_u32(~vec3<u32>(9740u, 71074u, u_input.b.x), _wgslsmith_sub_vec3_u32(u_input.a, u_input.e.ywz)) >> (u_input.b % vec3<u32>(32u)), u_input.e.zwy, vec3<bool>(_wgslsmith_mod_i32(u_input.d.x, -5488i) <= u_input.d.x, true, var_0.x));
    let var_2 = Struct_1(select(vec3<bool>(all(var_0.zx), u_input.d.x > 0i, var_0.x), select(!select(vec3<bool>(false, var_0.x, false), vec3<bool>(var_0.x, var_0.x, false), vec3<bool>(true, var_0.x, var_0.x)), select(!vec3<bool>(var_0.x, false, true), vec3<bool>(var_0.x, false, var_0.x), select(vec3<bool>(var_0.x, true, var_0.x), vec3<bool>(true, true, true), var_0.x)), select(!vec3<bool>(false, var_0.x, true), !vec3<bool>(false, false, var_0.x), !vec3<bool>(var_0.x, var_0.x, false))), _wgslsmith_f_op_f32(round(-1250f)) <= _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(-763f, -739f)), 1484f, false))), true, -1408f, _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(35890u, 4294967295u) | ~vec2<u32>(u_input.a.x, var_1.x), ~select(vec2<u32>(1u, u_input.a.x), u_input.c, var_0.zz)), _wgslsmith_dot_vec4_u32(select(vec4<u32>(u_input.e.x, 34865u, 4294967295u, 4294967295u), vec4<u32>(var_1.x, 23840u, var_1.x, 41264u), !var_0.x), ~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.e.x, var_1.x, var_1.x, u_input.a.x), u_input.e))), _wgslsmith_dot_vec2_i32(u_input.d, u_input.d));
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_2.c)));
}

fn func_2(arg_0: vec4<bool>, arg_1: Struct_1) -> i32 {
    let var_0 = arg_1;
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(1267f * 857f), var_0.c, _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-615f, var_0.c))))));
    let var_2 = var_0;
    let var_3 = u_input.d;
    var var_4 = Struct_1(vec3<bool>(!any(arg_0), 0i >= -_wgslsmith_dot_vec2_i32(u_input.d, vec2<i32>(0i, -2147483647i)), _wgslsmith_f_op_f32(-var_2.c) == _wgslsmith_f_op_f32(floor(-1000f))), !arg_1.b, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.x, -373f)), _wgslsmith_f_op_f32(f32(-1f) * -838f))), ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(var_2.d, var_0.d, 4294967295u), vec3<u32>(var_0.d, 39004u, arg_1.d))), var_3.x);
    return var_0.e;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(!select(vec3<bool>(true, any(vec3<bool>(false, false, false)), 42132u != u_input.a.x), select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true)), vec3<bool>(true, false, true)), !((u_input.d.x >= 49435i) & true), _wgslsmith_f_op_f32(func_1(15644u, Struct_1(vec3<bool>(true, true, true), true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(143f)) * _wgslsmith_f_op_f32(f32(-1f) * -640f)), 0u, _wgslsmith_dot_vec3_i32(-vec3<i32>(2147483647i, 35493i, -2504i), vec3<i32>(-1i, -1i, u_input.d.x))))), countOneBits(u_input.b.x), _wgslsmith_sub_i32(-_wgslsmith_div_i32(u_input.d.x, ~(-1i)), u_input.d.x));
    var var_1 = _wgslsmith_mult_i32(~func_2(select(vec4<bool>(var_0.b, var_0.a.x, var_0.b, false), vec4<bool>(true, false, true, var_0.b), vec4<bool>(var_0.a.x, var_0.b, true, true)), var_0), _wgslsmith_dot_vec2_i32(-(~vec2<i32>(2147483647i, u_input.d.x)), firstLeadingBit(vec2<i32>(_wgslsmith_mod_i32(-16816i, -32619i), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d.x, u_input.d.x, 1i, 0i), vec4<i32>(-9001i, 6782i, var_0.e, -27631i))))));
    let var_2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0.c, var_0.c, var_0.c, var_0.c), vec4<f32>(var_0.c, 443f, var_0.c, var_0.c))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-122f, var_0.c, var_0.c, var_0.c))) - _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_0.c, var_0.c, -363f, -434f)))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-809f, var_0.c, 807f, var_0.c))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(958f, var_0.c, -690f, var_0.c)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(219f, 1862f, -660f, -307f) - vec4<f32>(var_0.c, var_0.c, 1920f, var_0.c))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(var_0.c - -439f), var_0.c, _wgslsmith_f_op_f32(floor(-1000f)), _wgslsmith_f_op_f32(func_3(vec2<f32>(-315f, -1488f)))) + vec4<f32>(_wgslsmith_f_op_f32(select(1465f, var_0.c, false)), 149f, var_0.c, -2609f)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c, var_0.c, 305f, var_0.c)))), true)), var_0.a.x));
    var var_3 = vec4<i32>(3570i, ~u_input.d.x, 1i, -u_input.d.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(13110u, ~u_input.b.x, 0u), _wgslsmith_div_vec3_u32(~u_input.e.yzz, vec3<u32>(var_0.d, 1u, u_input.e.x))), vec3<u32>(countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.d, u_input.b.x, 29741u, u_input.c.x), u_input.e)), firstLeadingBit(var_0.d | 512u), reverseBits(firstLeadingBit(var_0.d)))), ~select(max(u_input.e, countOneBits(vec4<u32>(u_input.a.x, 1u, 0u, var_0.d))), _wgslsmith_sub_vec4_u32(vec4<u32>(var_0.d, var_0.d, var_0.d, 0u), u_input.e), vec4<bool>(!var_0.a.x, false, true, var_0.a.x)), vec2<u32>(44094u, ~((var_0.d >> (u_input.e.x % 32u)) & u_input.c.x)));
}

