struct Struct_1 {
    a: vec3<bool>,
    b: bool,
    c: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: vec3<f32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3() -> vec3<bool> {
    var var_0 = Struct_2(Struct_1(select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), true), vec3<bool>(true, true, true)), vec3<bool>(true, any(vec3<bool>(false, true, false)), select(false, false, false)), vec3<bool>(true, true, true)), true, vec3<bool>(true, all(vec2<bool>(false, true)) | true, any(vec3<bool>(true, true, true)))), vec4<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1620f - -176f)) <= _wgslsmith_f_op_f32(round(-2449f)), true, any(!select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false), false)), false), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1585f + -1000f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -574f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1091f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -656f))), _wgslsmith_f_op_f32(exp2(1f))), Struct_1(vec3<bool>(false, !any(vec2<bool>(false, false)), false), (-71887i == u_input.b) == true, select(vec3<bool>(true, any(vec3<bool>(true, false, false)), true), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), false)));
    return var_0.a.a;
}

fn func_2(arg_0: u32) -> bool {
    let var_0 = Struct_2(Struct_1(select(select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true))), vec3<bool>(false, all(vec2<bool>(true, false)), true), !(4294967295u > u_input.a.x)), !(!all(vec3<bool>(true, true, false))), select(select(select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(false, false, false)), vec3<bool>(true, false, false), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false))), select(func_3(), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false), true), vec3<bool>(false, false, true))), vec4<bool>(true, !func_3().x, max(-1i, 0i) < u_input.c.x, true), vec3<f32>(-917f, 113f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -581f)))), Struct_1(!select(func_3(), vec3<bool>(true, true, true), true), (true == (u_input.a.x >= 24284u)) && !func_3().x, vec3<bool>(true, !select(true, false, false), firstTrailingBit(u_input.c.x) <= countOneBits(194i))));
    let var_1 = Struct_1(select(func_3(), var_0.a.a, all(vec2<bool>(true && var_0.a.c.x, true))), true, !(!vec3<bool>(var_0.c.x >= -550f, var_0.b.x, any(var_0.d.c.zx))));
    return true;
}

fn func_4(arg_0: vec3<bool>) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(1f + -810f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1013f * -720f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(-576f, _wgslsmith_f_op_f32(f32(-1f) * -841f)))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1514f, 441f, 1046f), vec3<f32>(2088f, 340f, 646f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) + _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1377f, -1751f, -1000f))))))));
    let var_1 = Struct_2(Struct_1(select(vec3<bool>(select(arg_0.x, arg_0.x, false), all(vec4<bool>(true, arg_0.x, false, false)), true), !arg_0, select(vec3<bool>(false, false, false), select(arg_0, vec3<bool>(false, arg_0.x, arg_0.x), arg_0.x), true)), true, arg_0), select(select(select(vec4<bool>(arg_0.x, true, true, arg_0.x), select(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), vec4<bool>(arg_0.x, false, arg_0.x, false), true), false | arg_0.x), select(select(vec4<bool>(false, arg_0.x, false, arg_0.x), vec4<bool>(arg_0.x, true, false, true), true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, false), vec4<bool>(arg_0.x, arg_0.x, false, arg_0.x), vec4<bool>(false, false, arg_0.x, true))), true), !(!vec4<bool>(arg_0.x, arg_0.x, false, false)), arg_0.x), var_0, Struct_1(arg_0, any(!select(vec4<bool>(arg_0.x, false, arg_0.x, arg_0.x), vec4<bool>(false, false, false, true), arg_0.x)), select(select(func_3(), arg_0, arg_0), !(!vec3<bool>(arg_0.x, true, arg_0.x)), _wgslsmith_dot_vec3_u32(vec3<u32>(3750u, u_input.d, u_input.d), vec3<u32>(u_input.d, 60182u, u_input.a.x)) < 4294967295u)));
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.c.x + 148f) + var_1.c.x), 1f)), 1f, var_1.c.x);
    var var_3 = ~(~select(vec4<u32>(0u, firstLeadingBit(4294967295u), 1u, max(61934u, 16144u)), _wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 56998u, 0u, 33882u), vec4<u32>(u_input.d, 0u, 25564u, 1u)), vec4<u32>(u_input.d, u_input.d, u_input.d, 0u)), true));
    let var_4 = Struct_2(Struct_1(!vec3<bool>(arg_0.x, !var_1.d.c.x, u_input.b >= -2373i), var_1.a.a.x, select(var_1.a.c, vec3<bool>(!var_1.d.b, true, 1i >= u_input.c.x), arg_0)), !(!select(select(vec4<bool>(var_1.a.b, var_1.a.a.x, true, var_1.b.x), vec4<bool>(arg_0.x, arg_0.x, false, true), vec4<bool>(false, false, true, arg_0.x)), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), var_1.b)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_1.c.x, var_0.x)), vec3<f32>(806f, var_1.c.x, 963f))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_2 * vec3<f32>(498f, 244f, 765f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, -922f, var_0.x))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_0.x, var_0.x, 1878f)))))), var_1.a);
    return Struct_2(Struct_1(select(!vec3<bool>(var_1.d.b, false, var_4.d.c.x), !var_4.a.a, var_1.b.x), var_1.d.a.x, vec3<bool>(!var_1.a.a.x, all(!arg_0), func_3().x)), select(!(!select(var_1.b, vec4<bool>(false, arg_0.x, false, true), var_4.a.c.x)), vec4<bool>(true, (u_input.d <= 2922u) == false, any(vec2<bool>(true, true)), true), func_3().x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(var_2)), vec3<f32>(663f, 251f, -1726f)), _wgslsmith_f_op_vec3_f32(-var_2))), var_1.a);
}

fn func_1(arg_0: f32, arg_1: bool) -> Struct_1 {
    let var_0 = 1u;
    let var_1 = func_4(select(!(!select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), true)), vec3<bool>(any(!vec4<bool>(arg_1, arg_1, false, true)), func_2(46891u), true), select(select(vec3<bool>(true, false, false), vec3<bool>(arg_1, true, arg_1), true), select(vec3<bool>(arg_1, false, true), select(vec3<bool>(arg_1, arg_1, false), vec3<bool>(arg_1, true, true), arg_1), !vec3<bool>(arg_1, false, arg_1)), !vec3<bool>(true, true, arg_1))));
    var var_2 = func_4(vec3<bool>(true, true, true));
    var_2 = var_1;
    var_2 = var_1;
    return Struct_1(vec3<bool>(true, var_2.b.x, true), any(var_2.b.xx), vec3<bool>(true, !arg_1, !(var_2.c.x >= var_1.c.x) & true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.c.zz;
    let var_1 = Struct_2(func_1(789f, select(select(true, true, true), true, true)), select(vec4<bool>(true, func_1(-148f, true).c.x, true, true), !select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), true), select(vec4<bool>(select(true, true, false), true, true, u_input.a.x <= 72100u), vec4<bool>(true, true, true, true), vec4<bool>(true, all(vec4<bool>(true, false, true, true)), true, func_2(12801u)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(371f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1156f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1819f * 1000f))))), func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-562f + -333f) + _wgslsmith_f_op_f32(f32(-1f) * -1000f))), all(select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, false)))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_1.c.x)));
    var var_3 = _wgslsmith_clamp_vec2_i32(abs(select(vec2<i32>(89253i, u_input.b) >> (_wgslsmith_mod_vec2_u32(u_input.a, vec2<u32>(u_input.a.x, 75893u)) % vec2<u32>(32u)), vec2<i32>(-1i, _wgslsmith_dot_vec3_i32(u_input.c.wxy, u_input.c.yxx)), !var_1.b.x)), u_input.c.zy ^ ~(~(-var_0)), var_0);
    var_2 = var_1.c.x;
    var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1015f, 565f)));
    var_3 = -reverseBits(abs(vec2<i32>(_wgslsmith_mult_i32(var_3.x, var_3.x), var_0.x)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(u_input.a.x, u_input.d, ~abs(~2135u)));
}

