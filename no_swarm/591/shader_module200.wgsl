struct Struct_1 {
    a: vec3<f32>,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec4<i32>,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32, arg_1: i32) -> vec3<i32> {
    let var_0 = global0.a.x;
    var var_1 = global0.a.x;
    var_1 = global0.a.x;
    global0 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-global0.a.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global0.a.x + global0.a.x))), 1033f), !vec4<bool>(_wgslsmith_dot_vec2_i32(vec2<i32>(56206i, 30370i), vec2<i32>(u_input.a.x, 52719i)) != ~arg_0, global0.b.x, true, ~arg_0 > ~1i));
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global0.a - vec3<f32>(-1000f, global0.a.x, _wgslsmith_f_op_f32(global0.a.x + 895f)))), !select(vec4<bool>(global0.b.x, any(vec4<bool>(false, false, global0.b.x, true)), true, false), select(!global0.b, global0.b, global0.b), select(!global0.b, global0.b, select(true, true, global0.b.x))));
    return vec3<i32>(_wgslsmith_dot_vec2_i32(u_input.a, vec2<i32>(54721i, 27959i ^ abs(u_input.a.x))), _wgslsmith_mod_i32(_wgslsmith_clamp_i32(_wgslsmith_div_i32(arg_0, arg_0), -47732i, ~arg_0), _wgslsmith_add_i32(arg_0, 1i)) >> (66184u % 32u), -30509i);
}

fn func_2(arg_0: bool, arg_1: vec3<f32>, arg_2: bool, arg_3: bool) -> Struct_1 {
    var var_0 = func_3(1i, -2147483647i);
    var var_1 = vec3<u32>(~4294967295u, 12870u, abs(1u));
    var var_2 = Struct_1(vec3<f32>(arg_1.x, -1110f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.a.x), 171f), true))), global0.b);
    var_1 = ~vec3<u32>(_wgslsmith_add_u32(firstLeadingBit(4294967295u), var_1.x) & (countOneBits(var_1.x) << (49383u % 32u)), 1u, _wgslsmith_add_u32(4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 50457u, 19045u, 31957u), _wgslsmith_div_vec4_u32(vec4<u32>(var_1.x, 53161u, 5060u, var_1.x), vec4<u32>(var_1.x, 25246u, 10771u, 4294967295u)))));
    var_0 = -(vec3<i32>(_wgslsmith_dot_vec4_i32(max(vec4<i32>(-1i, 30142i, u_input.a.x, u_input.a.x), vec4<i32>(u_input.a.x, -5431i, -22258i, u_input.a.x)), countOneBits(vec4<i32>(-3333i, -47638i, 1i, u_input.a.x))), -18011i, 1i) ^ vec3<i32>(u_input.a.x, min(_wgslsmith_dot_vec2_i32(var_0.zz, var_0.yy), 21710i), -_wgslsmith_mult_i32(0i, 2147483647i)));
    return Struct_1(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(exp2(global0.a.x))) * -634f), 2135f, arg_1.x), vec4<bool>(true, true, !(true && all(var_2.b)), false));
}

fn func_1(arg_0: i32, arg_1: vec2<u32>) -> f32 {
    global0 = func_2(false, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0.a) - vec3<f32>(1316f, global0.a.x, -720f))))), countOneBits(~(~38946u)) > reverseBits(select(_wgslsmith_sub_u32(arg_1.x, arg_1.x), arg_1.x, false)), !all(vec2<bool>(false && global0.b.x, true)));
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(sign(global0.a)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-395f, global0.a.x, global0.a.x) * vec3<f32>(global0.a.x, global0.a.x, global0.a.x)))) - global0.a), select(global0.b, !global0.b, true));
    let var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(global0.a.x, _wgslsmith_f_op_f32(1000f * global0.a.x), select(_wgslsmith_f_op_f32(-var_0.a.x) == -882f, global0.b.x != true, !global0.b.x & var_0.b.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(func_2(false, vec3<f32>(var_0.a.x, 700f, var_0.a.x), false, true).a.x)) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -173f)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -826f) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global0.a.x), _wgslsmith_div_f32(-1664f, var_0.a.x)))))));
    let var_2 = _wgslsmith_f_op_f32(trunc(696f));
    var var_3 = global0.a;
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(var_2, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(120f, -345f)))))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-423f + 1000f), global0.a.x, _wgslsmith_f_op_f32(func_1(u_input.a.x, vec2<u32>(0u, 68079u))))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a.x, _wgslsmith_f_op_f32(global0.a.x + -653f), _wgslsmith_f_op_f32(-global0.a.x)))), select(select(select(vec4<bool>(false, true, global0.b.x, global0.b.x), !global0.b, global0.b), global0.b, false), global0.b, func_2(false, _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a.x, 365f, global0.a.x) + _wgslsmith_f_op_vec3_f32(-global0.a)), !select(true, true, global0.b.x), global0.b.x).b));
    global0 = func_2(~4310u <= _wgslsmith_dot_vec2_u32(vec2<u32>(~0u, 1u), vec2<u32>(1u, 1u)), _wgslsmith_f_op_vec3_f32(-global0.a), true, false);
    let var_1 = _wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(1u, ~abs(11802u)), vec2<u32>(1u, 1u) ^ _wgslsmith_add_vec2_u32(~vec2<u32>(1u, 1u), min(_wgslsmith_clamp_vec2_u32(vec2<u32>(94417u, 2236u), vec2<u32>(0u, 33508u), vec2<u32>(90616u, 0u)), firstLeadingBit(vec2<u32>(4294967295u, 1u)))));
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1343f, 893f, _wgslsmith_f_op_f32(global0.a.x + global0.a.x)) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(global0.a * vec3<f32>(233f, 1624f, 357f)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1000f, 279f, var_0.a.x), var_0.a)))))), !(!select(var_0.b, !var_0.b, var_0.b)));
    let var_3 = u_input.a;
    global0 = Struct_1(func_2(var_2.b.x & true, func_2(false, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 1000f, var_2.a.x)) - _wgslsmith_f_op_vec3_f32(-var_0.a)), any(var_0.b), select(var_1.x, 1u, false) < var_1.x).a, global0.b.x, var_0.b.x).a, !vec4<bool>(!var_2.b.x, all(select(vec4<bool>(global0.b.x, true, var_2.b.x, var_2.b.x), vec4<bool>(false, true, global0.b.x, false), vec4<bool>(global0.b.x, global0.b.x, global0.b.x, var_0.b.x))), (global0.a.x < -558f) & (var_1.x <= var_1.x), !global0.b.x));
    let var_4 = global0.b.x;
    var_0 = Struct_1(global0.a, !select(select(vec4<bool>(var_0.b.x, true, var_2.b.x, true), !var_0.b, vec4<bool>(global0.b.x, false, true, false)), !select(global0.b, vec4<bool>(var_0.b.x, false, false, var_2.b.x), var_0.b.x), !vec4<bool>(var_0.b.x, var_0.b.x, var_2.b.x, false)));
    var var_5 = min(~abs(~(~vec4<u32>(var_1.x, var_1.x, var_1.x, 7368u))), reverseBits(_wgslsmith_mult_vec4_u32(select(vec4<u32>(var_1.x, var_1.x, 4294967295u, 33722u) << (vec4<u32>(0u, 4294967295u, var_1.x, 7302u) % vec4<u32>(32u)), max(vec4<u32>(43352u, var_1.x, 36749u, 1u), vec4<u32>(4294967295u, 0u, var_1.x, 34484u)), var_2.b), _wgslsmith_clamp_vec4_u32(vec4<u32>(var_1.x, var_1.x, var_1.x, var_1.x) & vec4<u32>(4294967295u, 1u, 96123u, 4294967295u), vec4<u32>(var_1.x, 19381u, var_1.x, var_1.x) << (vec4<u32>(4294967295u, var_1.x, 8887u, 4017u) % vec4<u32>(32u)), vec4<u32>(var_1.x, 0u, var_1.x, var_1.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(_wgslsmith_add_i32(abs(-1i), var_3.x), -abs(u_input.a.x), ~firstLeadingBit(0i), var_3.x), _wgslsmith_div_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(min(var_1.x, var_5.x), var_1.x), firstTrailingBit(7707u) >> (reverseBits(0u) % 32u)), min(var_1, var_1)), vec4<i32>(-(~(-1i)), 2147483647i, -2147483647i, _wgslsmith_add_i32(abs(var_3.x), 31470i)), ~(~var_5.x), 0i);
}

