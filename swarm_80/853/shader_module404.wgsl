struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: vec4<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) * vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -639f), _wgslsmith_f_op_f32(trunc(-205f)), -1509f, 1808f))) * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1000f + -1159f), _wgslsmith_f_op_f32(f32(-1f) * -992f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1051f)))), -886f, -844f));
    let var_1 = _wgslsmith_f_op_vec3_f32(var_0.xzy * vec3<f32>(-896f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -482f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.x, var_0.x) * -327f)))));
    var var_2 = _wgslsmith_div_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(-1i) * -u_input.a, _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a.x, -1i), vec2<i32>(-21474i, u_input.a.x) | u_input.a)), ~_wgslsmith_div_vec2_i32(~vec2<i32>(-916i, u_input.a.x), ~vec2<i32>(u_input.a.x, 2147483647i))) ^ vec2<i32>(-27038i, firstLeadingBit(0i));
    var var_3 = var_0.x < _wgslsmith_f_op_f32(min(-2479f, var_0.x));
    var_2 = u_input.a;
    return Struct_1(_wgslsmith_add_u32(~u_input.b.x, ~45383u));
}

fn func_3(arg_0: vec2<bool>, arg_1: vec4<i32>, arg_2: Struct_2) -> f32 {
    var var_0 = arg_2.c;
    var var_1 = arg_2;
    let var_2 = func_2();
    var_1 = Struct_2(_wgslsmith_f_op_f32(arg_2.a * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -626f))), var_2, func_2());
    let var_3 = -948f;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -403f)), _wgslsmith_f_op_f32(-arg_2.a))) - _wgslsmith_f_op_f32(sign(-704f))));
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: Struct_2) -> Struct_2 {
    let var_0 = arg_1.b;
    let var_1 = ~(~(~vec2<i32>(u_input.a.x, u_input.a.x) << (vec2<u32>(1u, 28768u) % vec2<u32>(32u))));
    let var_2 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1024f, arg_2.a, arg_2.a, arg_1.a)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.a, -134f, arg_2.a, -1904f) - vec4<f32>(arg_1.a, arg_2.a, arg_1.a, -1504f)) - vec4<f32>(-102f, arg_1.a, -1350f, 1060f))))));
    let var_3 = !(!select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), vec3<bool>(all(vec2<bool>(true, false)), true, true), _wgslsmith_f_op_f32(func_3(vec2<bool>(false, false), vec4<i32>(var_1.x, var_1.x, u_input.a.x, var_1.x), Struct_2(arg_2.a, arg_2.b, var_0))) >= _wgslsmith_f_op_f32(-2095f + -791f)));
    var var_4 = _wgslsmith_f_op_f32(sign(-1352f));
    return arg_2;
}

fn func_1() -> Struct_2 {
    let var_0 = firstTrailingBit(vec3<u32>(_wgslsmith_clamp_u32(1u, 4294967295u | u_input.b.x, 1u), u_input.b.x, abs(19721u)) >> (min(firstLeadingBit(~vec3<u32>(u_input.b.x, 11076u, u_input.b.x)), ~vec3<u32>(54576u, u_input.b.x, u_input.b.x) >> (firstLeadingBit(vec3<u32>(u_input.b.x, 64424u, u_input.b.x)) % vec3<u32>(32u))) % vec3<u32>(32u)));
    return func_4(~(~(select(var_0, var_0, true) | var_0)), Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)) + -359f), Struct_1(_wgslsmith_mod_u32(var_0.x >> (var_0.x % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.b.x), var_0.zz))), func_2()), Struct_2(_wgslsmith_f_op_f32(func_3(vec2<bool>(all(vec2<bool>(false, false)), u_input.a.x >= u_input.a.x), _wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, u_input.a.x, u_input.a.x, 41496i), ~vec4<i32>(-34799i, u_input.a.x, u_input.a.x, u_input.a.x)), Struct_2(818f, func_2(), Struct_1(var_0.x)))), func_2(), func_2()));
}

fn func_5(arg_0: Struct_2) -> Struct_1 {
    let var_0 = vec2<bool>(!any(vec2<bool>(true, true)), false);
    var var_1 = select(-(~(-_wgslsmith_add_i32(u_input.a.x, u_input.a.x))), 0i, all(select(!vec3<bool>(var_0.x, true, false), select(select(vec3<bool>(var_0.x, true, var_0.x), vec3<bool>(true, false, var_0.x), var_0.x), vec3<bool>(var_0.x, var_0.x, false), true), vec3<bool>(!var_0.x, !var_0.x, true))));
    var_1 = u_input.a.x;
    let var_2 = arg_0;
    var var_3 = var_0.x;
    return Struct_1(var_2.c.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    let var_1 = Struct_2(-1000f, func_5(func_1()), func_2());
    var var_2 = select(select(select(select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), any(vec2<bool>(false, false))), vec3<bool>(any(vec3<bool>(true, true, true)), any(vec3<bool>(true, false, false)), false), false), vec3<bool>(any(vec2<bool>(true, true)), 4294967295u < _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.b.x, var_1.c.a), vec3<u32>(var_1.b.a, var_1.c.a, var_1.b.a)), _wgslsmith_mod_i32(u_input.a.x, 1i) >= u_input.a.x), false), vec3<bool>(any(vec4<bool>(true, select(false, false, true), true, true)), true, false), true);
    var var_3 = 4294967295u;
    var var_4 = -vec2<i32>(1i, -u_input.a.x);
    let var_5 = !(!(!(!select(vec3<bool>(var_2.x, true, false), vec3<bool>(var_2.x, var_2.x, true), var_2.x))));
    var_0 = !(_wgslsmith_f_op_f32(var_1.a - _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(f32(-1f) * -575f))) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a - 468f))));
    let var_6 = select(u_input.b, vec2<u32>(~(u_input.b.x & reverseBits(var_1.b.a)), 85813u), !select(var_5.xy, select(!vec2<bool>(var_5.x, false), !vec2<bool>(false, var_5.x), var_5.x), any(select(vec4<bool>(var_5.x, var_2.x, false, var_5.x), vec4<bool>(var_5.x, var_2.x, var_5.x, true), vec4<bool>(var_5.x, false, false, false)))));
    var var_7 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a, vec3<u32>(var_6.x, ~u_input.b.x, ~(~var_1.c.a)) | abs(_wgslsmith_mod_vec3_u32(vec3<u32>(13914u, 1u, 79536u), vec3<u32>(25479u, 4294967295u, u_input.b.x)) << (vec3<u32>(u_input.b.x, var_7.c.a, var_6.x) % vec3<u32>(32u))), (((vec4<u32>(var_6.x, 25636u, var_7.b.a, 77709u) & vec4<u32>(var_6.x, var_6.x, var_1.c.a, 4294967295u)) >> ((vec4<u32>(100986u, var_1.b.a, var_6.x, var_1.c.a) ^ vec4<u32>(8347u, u_input.b.x, 49211u, 83573u)) % vec4<u32>(32u))) >> (_wgslsmith_clamp_vec4_u32(reverseBits(vec4<u32>(45162u, 4506u, 4294967295u, u_input.b.x)), vec4<u32>(0u, var_1.c.a, 1u, 78322u), firstTrailingBit(vec4<u32>(4294967295u, 5670u, var_1.b.a, u_input.b.x))) % vec4<u32>(32u))) | abs(vec4<u32>(max(u_input.b.x, var_1.c.a), 1u, var_6.x ^ 6354u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 1u, 4294967295u), vec3<u32>(51615u, var_6.x, var_1.b.a)))), -2147483647i);
}

