struct Struct_1 {
    a: bool,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: i32,
    c: vec4<f32>,
    d: vec3<bool>,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<f32>,
    c: Struct_1,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3() -> i32 {
    let var_0 = -(~min(u_input.c, -u_input.c));
    var var_1 = select(select(select(vec2<bool>(true, false), select(select(vec2<bool>(true, false), vec2<bool>(false, false), true), vec2<bool>(true, true), all(vec4<bool>(true, false, false, true))), vec2<bool>(true, true)), vec2<bool>(true, any(vec3<bool>(false, false, true))), !select(vec2<bool>(true, false), select(vec2<bool>(true, false), vec2<bool>(false, false), false), vec2<bool>(false, true))), vec2<bool>(false, all(vec3<bool>(true, true, true)) && any(vec4<bool>(false, false, false, false))), true);
    global0 = !(!all(!select(vec3<bool>(var_1.x, var_1.x, var_1.x), vec3<bool>(var_1.x, var_1.x, false), vec3<bool>(false, var_1.x, var_1.x))));
    let var_2 = 20606i;
    global0 = var_1.x;
    return abs(-1i);
}

fn func_2(arg_0: Struct_3, arg_1: Struct_4, arg_2: Struct_2) -> f32 {
    global0 = -2147483647i <= func_3();
    var var_0 = max(u_input.a, firstLeadingBit(firstTrailingBit(min(u_input.d, 4294967295u)) >> (~1u % 32u)));
    var var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_0.c.x))) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.b.x) - _wgslsmith_f_op_f32(arg_0.c.x * arg_1.b.x))) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(arg_0.c.x)), -944f)));
    var var_2 = vec2<bool>(all(vec4<bool>(arg_1.a.b, true, ~arg_0.b >= u_input.c.x, false)), (false & arg_0.d.x) && false);
    var var_3 = arg_1;
    return _wgslsmith_div_f32(arg_1.b.x, _wgslsmith_f_op_f32(-arg_0.c.x));
}

fn func_1(arg_0: vec3<u32>, arg_1: i32, arg_2: bool, arg_3: vec2<i32>) -> vec4<bool> {
    var var_0 = vec2<bool>(true, arg_2);
    var_0 = select(!vec2<bool>(!var_0.x && !var_0.x, !all(vec3<bool>(arg_2, var_0.x, false))), vec2<bool>(arg_2, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(Struct_3(false, arg_1, vec4<f32>(264f, 529f, -948f, -255f), vec3<bool>(true, false, var_0.x), Struct_1(false, false)), Struct_4(Struct_1(false, false), vec2<f32>(-404f, 823f), Struct_1(arg_2, var_0.x), vec3<bool>(true, arg_2, var_0.x)), Struct_2(Struct_1(var_0.x, arg_2)))) - _wgslsmith_f_op_f32(min(-2072f, 752f))) >= _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-313f)), _wgslsmith_f_op_f32(f32(-1f) * -612f))), arg_1 > arg_1);
    var var_1 = firstLeadingBit(countOneBits(_wgslsmith_mod_vec4_u32(~vec4<u32>(arg_0.x, arg_0.x, arg_0.x, 2316u), vec4<u32>(arg_0.x, u_input.b, 42548u, 70762u) << (vec4<u32>(1063u, arg_0.x, 0u, 1u) % vec4<u32>(32u))) >> (_wgslsmith_sub_vec4_u32(~vec4<u32>(0u, u_input.d, arg_0.x, 1u), vec4<u32>(arg_0.x, 26427u, arg_0.x, u_input.a)) % vec4<u32>(32u))));
    let var_2 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(142f, -756f, -781f), vec3<f32>(426f, -202f, -934f)))) + vec3<f32>(_wgslsmith_f_op_f32(688f * -1189f), _wgslsmith_f_op_f32(ceil(368f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, var_2.x, var_2.x, var_2.x) * _wgslsmith_div_vec4_f32(vec4<f32>(var_2.x, var_2.x, var_2.x, 1060f), vec4<f32>(-390f, var_2.x, var_2.x, var_2.x))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_2.x, var_2.x, 371f, 1000f)))))))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(var_2.x)), var_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(583f, -1609f, var_0.x)) + _wgslsmith_f_op_f32(var_2.x * 1000f)), var_2.x) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1276f, -749f, -1000f, 555f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_2.x, 1025f, 404f, var_2.x), vec4<f32>(947f, 955f, 1590f, 1000f), var_0.x))))));
    return vec4<bool>(arg_2, any(!select(select(vec4<bool>(arg_2, var_0.x, arg_2, var_0.x), vec4<bool>(true, var_0.x, var_0.x, arg_2), vec4<bool>(var_0.x, var_0.x, var_0.x, true)), vec4<bool>(true, true, true, true), vec4<bool>(false, arg_2, var_0.x, true))), all(vec4<bool>(var_0.x, true, true && arg_2, true)) || (_wgslsmith_mod_u32(abs(68206u), ~arg_0.x) >= _wgslsmith_mult_u32(min(4294967295u, 29991u), _wgslsmith_mult_u32(u_input.b, u_input.d))), !((_wgslsmith_dot_vec3_i32(u_input.c.xyz, u_input.c.zyx) & _wgslsmith_add_i32(arg_1, 2147483647i)) >= min(i32(-1i) * -12204i, ~(-34580i))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !vec4<bool>(false, select(false, true, true) | true, false, false);
    var_0 = !vec4<bool>(!all(var_0.xy), var_0.x, !(true | var_0.x) == true, true);
    var var_1 = Struct_1(true, any(!select(select(vec4<bool>(true, var_0.x, false, false), vec4<bool>(var_0.x, false, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, false, var_0.x)), !vec4<bool>(false, true, var_0.x, true), true)));
    let var_2 = _wgslsmith_dot_vec4_u32(abs(~countOneBits(vec4<u32>(12140u, u_input.d, 1u, 40033u)) & (~vec4<u32>(37065u, u_input.d, 1u, 6933u) | (vec4<u32>(u_input.b, u_input.d, 19240u, u_input.b) << (vec4<u32>(29384u, 0u, u_input.d, 70461u) % vec4<u32>(32u))))), ~(~vec4<u32>(_wgslsmith_mult_u32(0u, u_input.d), 0u, u_input.b, ~1u)));
    var_1 = Struct_1(true, var_1.a);
    var_0 = select(func_1(~vec3<u32>(~24343u, 1u, var_2), i32(-1i) * -2147483647i, var_0.x, vec2<i32>(abs(-2147483647i), _wgslsmith_dot_vec4_i32(vec4<i32>(0i, 1i, u_input.e, u_input.e), u_input.c)) & vec2<i32>(u_input.e, firstLeadingBit(-27933i))), !select(vec4<bool>(!var_1.a, all(vec4<bool>(true, false, false, var_0.x)), true, !var_1.a), select(select(vec4<bool>(var_0.x, false, false, var_0.x), vec4<bool>(var_0.x, false, true, false), vec4<bool>(false, false, var_0.x, true)), vec4<bool>(true, var_0.x, var_0.x, true), vec4<bool>(true, var_0.x, false, var_1.b)), false), select(vec4<bool>(var_0.x, var_0.x || var_1.a, all(!vec4<bool>(false, false, var_0.x, false)), var_0.x), !(!(!vec4<bool>(false, true, true, var_1.a))), true));
    global0 = var_1.b;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.x, var_2);
}

