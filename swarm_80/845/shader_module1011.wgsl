struct Struct_1 {
    a: f32,
    b: u32,
    c: vec4<f32>,
    d: i32,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(488f, 1519f, -2866f, -978f);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: u32) -> vec4<f32> {
    global0 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-385f, -383f, global0.x, global0.x))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, 155f, global0.x, -234f) - vec4<f32>(464f, global0.x, global0.x, global0.x)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1469f, 571f, -552f, global0.x) - vec4<f32>(global0.x, global0.x, global0.x, global0.x)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, -440f, global0.x, global0.x) - vec4<f32>(global0.x, -738f, -1774f, global0.x)))))));
    let var_0 = vec3<bool>(true, true, arg_0 < u_input.b.x);
    var var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-631f * global0.x))))) + _wgslsmith_f_op_f32(floor(867f))), 91130u, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, global0.x, -739f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global0.x, global0.x, global0.x, global0.x))) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.x, 1270f, 1845f, global0.x), vec4<f32>(global0.x, global0.x, global0.x, global0.x), vec4<bool>(var_0.x, var_0.x, true, var_0.x))))))), -u_input.a, countOneBits(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, arg_0, u_input.b.x), vec4<u32>(0u, 13825u, 23714u, u_input.b.x)) ^ _wgslsmith_mod_u32(14698u, 24401u), arg_0, max(arg_0, ~u_input.b.x), arg_0)));
    var_1 = Struct_1(757f, u_input.b.x, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-var_1.c), _wgslsmith_f_op_vec4_f32(floor(var_1.c)), !vec4<bool>(var_0.x, false, var_0.x, var_0.x)))), var_1.c), ~reverseBits(var_1.d), u_input.b << (abs(~var_1.e) % vec4<u32>(32u)));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(304f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1000f, global0.x, false))))), 1u, var_1.c, u_input.a, _wgslsmith_mod_vec4_u32(~u_input.b, vec4<u32>(u_input.b.x, 116768u, _wgslsmith_mult_u32(57454u, 0u) | _wgslsmith_clamp_u32(var_1.e.x, 47007u, u_input.b.x), _wgslsmith_mult_u32(var_1.e.x >> (arg_0 % 32u), select(0u, 35486u, false)))));
    return vec4<f32>(_wgslsmith_f_op_f32(exp2(var_1.c.x)), var_2.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-562f, var_2.c.x, var_0.x))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_2.a))), _wgslsmith_f_op_f32(select(-690f, _wgslsmith_f_op_f32(min(global0.x, global0.x)), u_input.a != 13490i)))));
}

fn func_2(arg_0: vec4<u32>) -> f32 {
    global0 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(func_3(arg_0.x)))) + _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1693f, global0.x, global0.x, -1000f), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, global0.x, global0.x, global0.x) * vec4<f32>(global0.x, global0.x, 309f, global0.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global0.x, global0.x, global0.x, 1075f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1023f, global0.x, -327f, global0.x)))))));
    let var_0 = countOneBits(abs(_wgslsmith_div_vec3_i32(select(select(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(-32529i, u_input.a, u_input.a), vec3<bool>(true, true, false)), reverseBits(vec3<i32>(u_input.a, u_input.a, u_input.a)), select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), false)), vec3<i32>(-15168i ^ u_input.a, 7730i, -u_input.a))));
    var var_1 = countOneBits(~vec2<u32>(7659u, countOneBits(arg_0.x) << (_wgslsmith_sub_u32(u_input.b.x, 0u) % 32u)));
    global0 = vec4<f32>(-288f, _wgslsmith_f_op_f32(717f - _wgslsmith_f_op_f32(f32(-1f) * -1000f)), 2001f, global0.x);
    var_1 = vec2<u32>(firstLeadingBit(u_input.b.x | reverseBits(select(var_1.x, 11844u, true))), 4294967295u);
    return global0.x;
}

fn func_1(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: vec4<bool>) -> f32 {
    let var_0 = firstLeadingBit(~(-63583i));
    global0 = _wgslsmith_div_vec4_f32(arg_0.c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_0.c))));
    let var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x + -214f)))), 858f));
    var var_2 = _wgslsmith_sub_vec2_u32(~vec2<u32>(u_input.b.x, 10728u), vec2<u32>(u_input.b.x, ~61828u));
    let var_3 = arg_0.c;
    return _wgslsmith_f_op_f32(func_2(min(countOneBits(~max(arg_1, vec4<u32>(arg_0.e.x, 4294967295u, arg_0.e.x, arg_1.x))), arg_1)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-239f, global0.x, -740f, -1098f))))) - vec4<f32>(854f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1000f * 1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x + -612f) + _wgslsmith_f_op_f32(min(-1336f, 1057f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(Struct_1(global0.x, 26421u, vec4<f32>(global0.x, -991f, global0.x, global0.x), -53787i, u_input.b), vec4<u32>(1u, 4294967295u, 0u, 31828u), vec4<bool>(false, false, true, false))) - -1834f))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(vec4<f32>(-1398f, global0.x, global0.x, 284f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(289f, 913f, 579f, 548f))))))));
    var var_0 = true | any(vec3<bool>(true, true, !(u_input.b.x != 46279u)));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(u_input.b))), _wgslsmith_clamp_u32(~6813u, abs(1u), u_input.b.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1029f, 732f, 1000f, global0.x), vec4<f32>(-441f, global0.x, 1259f, -1252f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, global0.x, global0.x, 737f) - vec4<f32>(968f, global0.x, 1000f, global0.x))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, global0.x, 500f, 2301f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(591f, global0.x, global0.x, global0.x) * vec4<f32>(1334f, 2192f, 1000f, global0.x))), _wgslsmith_f_op_f32(-global0.x) < _wgslsmith_f_op_f32(-global0.x)))), u_input.a, u_input.b);
    let var_2 = 19673u;
    var var_3 = var_1.c;
    let x = u_input.a;
    s_output = StorageBuffer(-16693i, ~vec2<u32>(firstLeadingBit(u_input.b.x), var_1.b) & _wgslsmith_sub_vec2_u32(var_1.e.ww, _wgslsmith_mod_vec2_u32(_wgslsmith_add_vec2_u32(u_input.b.xx, u_input.b.wy), u_input.b.zx)), ~_wgslsmith_dot_vec2_i32(~firstTrailingBit(vec2<i32>(24788i, var_1.d)), max(~vec2<i32>(28101i, 28836i), ~vec2<i32>(25635i, 0i))), _wgslsmith_div_i32(_wgslsmith_div_i32(firstTrailingBit(_wgslsmith_sub_i32(-1023i, -1i)), _wgslsmith_add_i32(22768i, 0i)), countOneBits(var_1.d)));
}

