struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> bool {
    var var_0 = Struct_1(0i);
    var var_1 = true;
    let var_2 = true;
    var var_3 = min(u_input.a, ~_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.d.x, 0u, u_input.d.x), firstTrailingBit(vec3<u32>(5748u, u_input.d.x, 0u)))) < _wgslsmith_mult_u32(u_input.d.x, 0u);
    var_3 = var_2;
    return any(select(select(select(!vec2<bool>(var_2, true), select(vec2<bool>(var_2, var_2), vec2<bool>(var_2, var_2), var_2), true), vec2<bool>(any(vec3<bool>(var_2, true, var_2)), all(vec3<bool>(var_2, var_2, false))), select(select(vec2<bool>(var_2, var_2), vec2<bool>(var_2, true), vec2<bool>(var_2, var_2)), !vec2<bool>(var_2, var_2), select(vec2<bool>(var_2, true), vec2<bool>(var_2, var_2), var_2))), vec2<bool>(var_2, true), select(select(!vec2<bool>(var_2, var_2), !vec2<bool>(false, var_2), !vec2<bool>(false, var_2)), vec2<bool>(true, true), var_2 && true)));
}

fn func_2(arg_0: f32) -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 - arg_0)));
    var var_1 = _wgslsmith_f_op_f32(-arg_0);
    let var_2 = -2147483647i;
    let var_3 = vec3<bool>(true, all(vec3<bool>(arg_0 < _wgslsmith_f_op_f32(step(778f, -1614f)), true, !func_3())), 8052i == (-2147483647i & u_input.c));
    var var_4 = ~(~vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d.x, u_input.d.x, 1u, 16411u), vec4<u32>(1u, u_input.d.x, 28657u, 46837u)), u_input.a, 0u & u_input.d.x, countOneBits(1u)) & select(~(~vec4<u32>(0u, u_input.d.x, 0u, u_input.a)), ~(vec4<u32>(u_input.a, 55050u, u_input.d.x, u_input.a) << (vec4<u32>(41132u, 0u, u_input.a, 4294967295u) % vec4<u32>(32u))), vec4<bool>(true, false, true, true)));
    return select(vec3<bool>(reverseBits(-22439i) > var_2, false, !var_3.x), vec3<bool>(false, ~max(u_input.a, u_input.d.x) < ~(~0u), true), !(!vec3<bool>(var_3.x, select(var_3.x, var_3.x, true), !var_3.x)));
}

fn func_4(arg_0: vec3<bool>, arg_1: f32, arg_2: vec3<bool>, arg_3: bool) -> Struct_1 {
    var var_0 = u_input.d;
    var var_1 = -1195f;
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1, 482f))))));
    var_1 = -752f;
    var var_2 = Struct_1(abs(~(0i >> (_wgslsmith_mod_u32(15389u, u_input.d.x) % 32u))));
    return Struct_1(u_input.c);
}

fn func_1() -> Struct_1 {
    var var_0 = Struct_1(u_input.b.x);
    let var_1 = u_input.b.xy;
    let var_2 = vec4<u32>(u_input.a, 3318u, ~u_input.d.x, 68585u);
    var var_3 = ~(~abs(_wgslsmith_sub_vec4_i32(u_input.b, u_input.b))) >> (var_2 % vec4<u32>(32u));
    var var_4 = func_4(func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(-2039f, 1000f)), _wgslsmith_f_op_f32(263f * 130f))) * _wgslsmith_f_op_f32(f32(-1f) * -834f))), -106f, select(vec3<bool>(true, any(vec4<bool>(true, true, true, true)), true), func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-499f, -155f)))), vec3<bool>(true, true, true)), false || (max(~var_2.x, u_input.d.x) >= var_2.x));
    return func_4(vec3<bool>(false, func_3(), true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1000f, -1502f, false))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-566f + -1563f) - _wgslsmith_f_op_f32(floor(499f)))) * _wgslsmith_f_op_f32(1186f - _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1019f, -582f) + 517f))), func_2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(110f, 507f))))), any(select(!select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true)), vec4<bool>(true, true, false, all(vec2<bool>(true, false))), true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = vec4<bool>(select(all(vec4<bool>(true, any(vec3<bool>(true, false, true)), any(vec3<bool>(true, false, false)), true)), any(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), false))), all(vec3<bool>(true, true, 1i < u_input.c))), true, true, true);
    var var_2 = var_1.xyx;
    var_1 = select(select(vec4<bool>(var_2.x, false, !var_1.x, false), vec4<bool>(true, !var_1.x, 28424i == _wgslsmith_dot_vec3_i32(vec3<i32>(-47305i, u_input.c, u_input.c), u_input.b.www), var_1.x), select((true && var_2.x) | !var_1.x, true, all(!vec4<bool>(var_2.x, var_2.x, var_2.x, var_1.x)))), vec4<bool>(any(select(vec2<bool>(var_2.x, var_1.x), var_1.xx, var_2.x)), !(max(u_input.c, 0i) < (var_0.a << (u_input.a % 32u))), _wgslsmith_f_op_f32(f32(-1f) * -1012f) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1000f, -1378f))), select(true, all(vec2<bool>(true, false)), true)), false);
    var_2 = vec3<bool>(!all(vec4<bool>(true, any(vec4<bool>(true, var_2.x, true, var_1.x)), any(var_1.wx), all(vec4<bool>(true, true, var_2.x, true)))), any(!vec4<bool>(false, var_2.x, var_2.x, var_2.x)) | var_1.x, false);
    var_2 = var_1.wxw;
    var var_3 = Struct_1(~(~91763i));
    var_1 = vec4<bool>(true, !var_1.x, true | var_2.x, !all(select(select(vec4<bool>(false, true, var_2.x, true), vec4<bool>(false, true, true, false), vec4<bool>(false, var_1.x, var_2.x, true)), vec4<bool>(true, var_2.x, true, true), all(vec4<bool>(true, false, var_2.x, var_1.x)))));
    let var_4 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(-47378i);
}

