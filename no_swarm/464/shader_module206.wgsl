struct Struct_1 {
    a: u32,
    b: vec4<bool>,
    c: f32,
    d: f32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: f32,
    d: vec4<u32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: u32, arg_1: u32) -> vec2<bool> {
    let var_0 = 371f;
    var var_1 = true;
    var_1 = true;
    let var_2 = Struct_1(max(35359u, 1u), select(select(vec4<bool>(all(vec4<bool>(true, true, true, true)), false, true, any(vec3<bool>(false, false, false))), vec4<bool>(true, true, true, true), !all(vec3<bool>(false, true, true))), select(vec4<bool>(true, true, true, 0i >= u_input.a.x), vec4<bool>(true, all(vec4<bool>(false, true, false, true)), all(vec4<bool>(true, true, true, false)), false), any(vec2<bool>(true, false))), true), var_0, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1595f - _wgslsmith_f_op_f32(abs(var_0))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_0)) - _wgslsmith_f_op_f32(min(890f, var_0))))), _wgslsmith_f_op_f32(step(var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(319f * -1055f)))))));
    var_1 = var_2.b.x;
    return var_2.b.xw;
}

fn func_2(arg_0: u32, arg_1: u32, arg_2: vec2<i32>) -> u32 {
    let var_0 = Struct_2(select(select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<bool>(true, true)), vec2<bool>(false, true), select(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true)), vec2<bool>(true, true), vec2<bool>(true, true))), !func_3(arg_0, 19925u), 1u == abs(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, 1u, 49470u, arg_0), vec4<u32>(u_input.d, u_input.c.x, 0u, arg_0)))), Struct_1(~(arg_0 << (4294967295u % 32u)), !(!select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true))), _wgslsmith_f_op_f32(trunc(1442f)), _wgslsmith_f_op_f32(f32(-1f) * -1114f)), _wgslsmith_f_op_f32(f32(-1f) * -1770f), _wgslsmith_add_vec4_u32(~select(vec4<u32>(1u, arg_0, u_input.d, arg_1) >> (vec4<u32>(4294967295u, 0u, u_input.c.x, arg_1) % vec4<u32>(32u)), countOneBits(vec4<u32>(0u, arg_1, arg_0, arg_0)), true), _wgslsmith_clamp_vec4_u32(countOneBits(~vec4<u32>(u_input.d, arg_1, 0u, 4294967295u)), _wgslsmith_add_vec4_u32(vec4<u32>(arg_0, 52762u, 1u, 1u), vec4<u32>(arg_0, 4294967295u, arg_1, 117u)), vec4<u32>(arg_1, ~arg_0, firstTrailingBit(40663u), 18480u))), Struct_1(abs(~(~19024u)), vec4<bool>(true, true, true, true), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(-948f)))), _wgslsmith_f_op_f32(select(1312f, _wgslsmith_f_op_f32(-837f - -580f), true)))), _wgslsmith_f_op_f32(1f + -826f)));
    var var_1 = vec3<i32>(0i, u_input.a.x, ~abs(~u_input.a.x));
    let var_2 = Struct_1(4294967295u, !select(var_0.e.b, var_0.e.b, true), _wgslsmith_f_op_f32(-256f + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(302f, var_0.c)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0.c)) * _wgslsmith_f_op_f32(-var_0.c)));
    let var_3 = Struct_1(83053u, select(!var_0.e.b, select(!var_0.e.b, var_0.e.b, true), select(var_0.b.b, select(var_2.b, !vec4<bool>(var_0.e.b.x, var_2.b.x, false, var_2.b.x), !var_2.b), select(select(var_2.b, vec4<bool>(false, true, var_2.b.x, true), false), var_0.e.b, vec4<bool>(var_2.b.x, true, var_2.b.x, true)))), var_2.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.d - _wgslsmith_f_op_f32(f32(-1f) * -1196f))));
    let var_4 = _wgslsmith_add_i32(_wgslsmith_clamp_i32(_wgslsmith_mod_i32(arg_2.x, var_1.x), min(u_input.a.x, arg_2.x) | (arg_2.x << (100642u % 32u)), 30362i), firstLeadingBit(1i)) | select(var_1.x, -2147483647i, true);
    return 47134u;
}

fn func_1(arg_0: bool) -> Struct_2 {
    var var_0 = vec3<i32>(-32588i, -2147483647i, abs(_wgslsmith_mod_i32(-9959i, u_input.b.x))) << (vec3<u32>(u_input.d, ~func_2(38295u, u_input.c.x, min(vec2<i32>(u_input.b.x, u_input.a.x), vec2<i32>(10137i, u_input.b.x))), 12926u) % vec3<u32>(32u));
    let var_1 = 854f;
    var var_2 = u_input.a;
    var_0 = max(select(countOneBits((vec3<i32>(u_input.a.x, var_2.x, var_0.x) ^ vec3<i32>(var_2.x, var_0.x, -37067i)) | _wgslsmith_clamp_vec3_i32(vec3<i32>(2147483647i, -7558i, 1i), vec3<i32>(var_2.x, var_2.x, 23542i), u_input.a)), _wgslsmith_mod_vec3_i32(_wgslsmith_add_vec3_i32(u_input.a, abs(vec3<i32>(var_0.x, var_2.x, u_input.b.x))), ~vec3<i32>(var_0.x, u_input.a.x, var_0.x)), !select(vec3<bool>(arg_0, arg_0, true), vec3<bool>(arg_0, arg_0, true), vec3<bool>(arg_0, false, arg_0))), vec3<i32>(1i, -1i, -1i));
    let var_3 = Struct_1(4294967295u, vec4<bool>(any(vec3<bool>(all(vec3<bool>(arg_0, arg_0, false)), false, true)), arg_0, arg_0, !(!arg_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-2140f)) * var_1)), _wgslsmith_f_op_f32(-313f * _wgslsmith_f_op_f32(f32(-1f) * -1816f)));
    return Struct_2(!var_3.b.ww, var_3, 1f, firstLeadingBit(firstTrailingBit(~abs(vec4<u32>(1u, 6116u, var_3.a, u_input.c.x)))), Struct_1(~0u, select(var_3.b, select(vec4<bool>(arg_0, false, var_3.b.x, arg_0), var_3.b, !vec4<bool>(true, arg_0, arg_0, true)), vec4<bool>(arg_0, func_3(u_input.c.x, 1u).x, any(vec4<bool>(true, false, var_3.b.x, arg_0)), func_3(var_3.a, var_3.a).x)), _wgslsmith_f_op_f32(-var_3.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(206f * -1069f), _wgslsmith_f_op_f32(var_1 + 787f))))));
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: Struct_2) -> bool {
    var var_0 = func_1(arg_2.e.b.x);
    var_0 = Struct_2(vec2<bool>(true, !(!func_1(arg_0.b.x).b.b.x)), arg_0, 996f, reverseBits(func_1(all(arg_2.b.b.yww) || (1i != u_input.a.x)).d), Struct_1(arg_0.a, vec4<bool>(true, false & (arg_0.c != -966f), all(select(vec4<bool>(arg_0.b.x, arg_0.b.x, var_0.e.b.x, false), vec4<bool>(true, arg_0.b.x, false, true), var_0.a.x)), 38103i > u_input.b.x), -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -239f))));
    let var_1 = func_1(select(arg_2.e.b.x, any(arg_0.b.wx), var_0.e.b.x));
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_1.c), _wgslsmith_f_op_f32(max(var_1.e.c, -654f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_2.c, arg_0.d)))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.b.d, -1165f))))))));
    let var_3 = ~arg_2.e.a;
    return all(select(!vec3<bool>(arg_2.e.b.x, 1u <= var_0.d.x, var_1.e.b.x), vec3<bool>(_wgslsmith_f_op_f32(-var_0.b.d) >= _wgslsmith_f_op_f32(abs(var_0.e.c)), !var_1.a.x, var_0.b.b.x), vec3<bool>(arg_0.b.x | !arg_0.b.x, true, all(var_1.b.b))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -393f);
    var var_1 = Struct_1(~u_input.c.x, vec4<bool>(u_input.b.x != u_input.b.x, all(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false))), true, func_4(Struct_1(~4294967295u, select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), true), -784f, -1297f), 1u, func_1(true))), _wgslsmith_f_op_f32(round(268f)), -227f);
    var_1 = Struct_1(var_1.a, select(func_1(!var_1.b.x).b.b, vec4<bool>(func_1(var_1.b.x).b.c == -1000f, all(var_1.b.xzw) && var_1.b.x, any(vec4<bool>(var_1.b.x, false, var_1.b.x, var_1.b.x)), var_1.b.x), !((var_1.b.x | var_1.b.x) || true)), _wgslsmith_f_op_f32(-var_1.d), _wgslsmith_f_op_f32(-func_1(select(all(var_1.b.wz), 1u == var_1.a, var_1.b.x)).b.d));
    let var_2 = Struct_1(u_input.d, !select(var_1.b, var_1.b, any(var_1.b)), var_1.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(858f, _wgslsmith_f_op_f32(max(var_1.c, var_1.d))))));
    var_1 = Struct_1(1u, func_1(true).e.b, var_2.d, _wgslsmith_div_f32(var_1.d, -445f));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c, _wgslsmith_f_op_f32(min(-951f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.c), var_1.d))));
}

