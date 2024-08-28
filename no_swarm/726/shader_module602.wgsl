struct Struct_1 {
    a: vec4<bool>,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: u32,
    d: vec2<u32>,
    e: vec4<u32>,
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

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: u32, arg_1: vec3<f32>, arg_2: u32) -> Struct_1 {
    var var_0 = any(vec3<bool>(true, true, true));
    let var_1 = _wgslsmith_add_vec2_u32((select(u_input.d, vec2<u32>(arg_2, arg_0), true) ^ vec2<u32>(9601u, 1u)) & _wgslsmith_mod_vec2_u32(vec2<u32>(arg_0, 0u), vec2<u32>(5967u, 82291u)), vec2<u32>(4294967295u, u_input.b.x << (_wgslsmith_div_u32(54119u, 8673u) % 32u))) & (_wgslsmith_mod_vec2_u32(vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_2, 1u, arg_0), vec3<u32>(arg_0, arg_0, arg_0)), ~arg_2), u_input.e.yw) << (u_input.e.ww % vec2<u32>(32u)));
    var_0 = true;
    var var_2 = ~u_input.a.x;
    let var_3 = Struct_1(select(vec4<bool>(true, true || any(vec4<bool>(true, true, true, true)), !(u_input.a.x >= 36137i), false), select(vec4<bool>(true, any(vec4<bool>(true, true, true, true)), true, true), vec4<bool>(true, 2147483647i >= u_input.a.x, true, true), false), any(vec2<bool>(true, true))), ~(~(min(u_input.b, vec3<u32>(39466u, arg_0, arg_2)) & vec3<u32>(0u, arg_0, 101626u))));
    return var_3;
}

fn func_3() -> f32 {
    var var_0 = func_2(~_wgslsmith_div_u32(abs(~8490u), abs(~u_input.b.x)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(-1378f * -849f), _wgslsmith_div_f32(973f, 122f), _wgslsmith_f_op_f32(478f + -172f)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(821f, 970f, 357f)))), vec3<f32>(-142f, _wgslsmith_f_op_f32(step(1000f, 1425f)), _wgslsmith_div_f32(1000f, -828f)), (i32(-1i) * -28806i) >= u_input.a.x)))), _wgslsmith_mod_u32(u_input.b.x, _wgslsmith_div_u32(_wgslsmith_mod_u32(abs(0u), 54546u & u_input.b.x), u_input.b.x)));
    var_0 = Struct_1(vec4<bool>(var_0.a.x, 42367u != ~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 1u), u_input.e.zy), !(!var_0.a.x), var_0.a.x), ~(~_wgslsmith_clamp_vec3_u32(u_input.b, ~var_0.b, vec3<u32>(83969u, 71136u, 13026u))));
    var_0 = Struct_1(vec4<bool>(true, true, any(var_0.a.wz), false), ~var_0.b);
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -241f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(891f)), _wgslsmith_f_op_f32(f32(-1f) * -227f)))), -132f, 1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -437f)) * -1736f)));
    var var_2 = _wgslsmith_mod_u32(~var_0.b.x, reverseBits(~max(var_0.b.x | 29116u, 31542u)));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f * var_1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(-1681f - -463f)) + var_1.x) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(616f))))))));
}

fn func_1(arg_0: i32, arg_1: vec3<f32>, arg_2: u32, arg_3: bool) -> vec4<f32> {
    let var_0 = func_2(0u, arg_1, _wgslsmith_mult_u32(u_input.c, 4294967295u));
    let var_1 = arg_1.x;
    var var_2 = all(vec3<bool>(arg_3, any(vec4<bool>(-25092i < arg_0, -2433f < var_1, var_0.a.x || var_0.a.x, true)), true));
    let var_3 = func_2(~(~40548u), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_1.x, -393f, var_1))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-876f, -1741f, var_1))) * arg_1))), _wgslsmith_add_u32(var_0.b.x << (1u % 32u), 34172u));
    let var_4 = var_0;
    return vec4<f32>(arg_1.x, var_1, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1523f + _wgslsmith_f_op_f32(f32(-1f) * -282f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3()))), 1220f);
}

fn func_4(arg_0: vec4<f32>, arg_1: f32) -> f32 {
    var var_0 = arg_0;
    var var_1 = u_input.a.x;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1248f), -957f, 1000f, _wgslsmith_f_op_f32(-822f + -479f)) - _wgslsmith_f_op_vec4_f32(func_1(i32(-1i) * -30019i, _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-487f, -757f, -528f), vec3<f32>(1201f, -156f, -467f))), ~u_input.d.x, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(701f)), 1417f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(-1000f))))), -2659f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-1107f, -768f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-447f)) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(-1341f, _wgslsmith_f_op_vec4_f32(func_1(-2147483647i, vec3<f32>(2169f, 704f, -1858f), u_input.d.x, true)).x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_4(vec4<f32>(1972f, -315f, -969f, 2193f), 265f)))), true))));
    var var_1 = !select(!vec3<bool>(-376f > var_0.x, all(vec2<bool>(false, true)), u_input.e.x > u_input.d.x), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), true)), vec3<bool>(true, true, true));
    var var_2 = -vec2<i32>(_wgslsmith_sub_i32(_wgslsmith_sub_i32(u_input.a.x, -2147483647i & u_input.a.x), _wgslsmith_mult_i32(2147483647i | u_input.a.x, 0i)), _wgslsmith_dot_vec3_i32(u_input.a.xyx, _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, -2580i) | u_input.a.yyx, vec3<i32>(64254i, u_input.a.x, -1i) << (u_input.b % vec3<u32>(32u)))));
    var var_3 = u_input.d;
    let var_4 = Struct_1(vec4<bool>(u_input.a.x >= -1i, !func_2(u_input.b.x, _wgslsmith_f_op_vec3_f32(-vec3<f32>(682f, var_0.x, 418f)), 66063u).a.x, (1u >> (u_input.d.x % 32u)) < _wgslsmith_mult_u32(_wgslsmith_mult_u32(var_3.x, 4294967295u), _wgslsmith_sub_u32(25563u, 0u)), var_1.x), vec3<u32>(~_wgslsmith_add_u32(u_input.b.x, ~0u), var_3.x, ~abs(u_input.e.x)));
    var var_5 = var_4;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.x);
}

