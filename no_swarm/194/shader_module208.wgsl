struct Struct_1 {
    a: vec2<bool>,
    b: i32,
    c: vec4<u32>,
    d: vec2<bool>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: f32,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(-938f, 1001f);

var<private> global1: Struct_2 = Struct_2(vec4<f32>(-524f, 1000f, 664f, 212f), Struct_1(vec2<bool>(true, false), -12014i, vec4<u32>(0u, 1590u, 24967u, 4294967295u), vec2<bool>(false, false)), -1013f, Struct_1(vec2<bool>(false, false), 2147483647i, vec4<u32>(1u, 0u, 5834u, 76360u), vec2<bool>(false, false)));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec2<f32> {
    global1 = Struct_2(global1.a, Struct_1(select(vec2<bool>(global1.d.a.x && global1.b.d.x, all(vec2<bool>(true, true))), global1.d.d, global1.b.d.x), 14333i, reverseBits(select(vec4<u32>(global1.d.c.x, global1.d.c.x, 59686u, u_input.c.x) & vec4<u32>(global1.d.c.x, 68860u, global1.d.c.x, global1.d.c.x), _wgslsmith_sub_vec4_u32(u_input.c, vec4<u32>(2119u, global1.d.c.x, u_input.c.x, 86312u)), select(vec4<bool>(true, false, global1.d.a.x, global1.b.d.x), vec4<bool>(true, false, global1.b.d.x, global1.d.a.x), true))), vec2<bool>(~global1.d.b < u_input.d, any(select(global1.d.d, global1.d.d, global1.b.a.x)))), global0.x, Struct_1(vec2<bool>(true, countOneBits(4294967295u) < _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, u_input.c.x), vec2<u32>(1u, global1.b.c.x))), -33987i, ~u_input.c, global1.b.a));
    var var_0 = Struct_1(global1.d.d, -firstTrailingBit(global1.b.b), abs(_wgslsmith_clamp_vec4_u32(global1.b.c, _wgslsmith_div_vec4_u32(u_input.c, vec4<u32>(global1.b.c.x, global1.d.c.x, 8192u, global1.d.c.x)), vec4<u32>(abs(global1.b.c.x), ~0u, global1.b.c.x, ~u_input.c.x))), global1.b.a);
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global0.x + -810f))) + global0.x) + -3141f), _wgslsmith_f_op_f32(trunc(global0.x)));
    var var_2 = vec3<i32>(-firstLeadingBit(2147483647i), _wgslsmith_dot_vec2_i32(abs(vec2<i32>(firstTrailingBit(29391i), 54066i)), _wgslsmith_div_vec2_i32(firstTrailingBit(vec2<i32>(0i, global1.d.b)) | firstTrailingBit(vec2<i32>(u_input.d, -34670i)), vec2<i32>(var_0.b, _wgslsmith_div_i32(-1i, 21236i)))), min(u_input.d, countOneBits(-select(var_0.b, global1.d.b, false))));
    var_0 = Struct_1(select(!select(!vec2<bool>(var_0.a.x, false), select(vec2<bool>(var_0.a.x, true), var_0.a, var_0.d.x), !vec2<bool>(global1.d.d.x, false)), !(!(!vec2<bool>(var_0.a.x, var_0.d.x))), vec2<bool>(var_0.d.x, countOneBits(u_input.a) > _wgslsmith_div_i32(-1i, -31771i))), _wgslsmith_sub_i32(_wgslsmith_mod_i32(i32(-1i) * -2147483647i, select(35897i, global1.b.b, true)), -11827i) | 33943i, vec4<u32>(_wgslsmith_dot_vec4_u32(firstTrailingBit(global1.d.c), vec4<u32>(0u, u_input.c.x, 32042u, u_input.c.x)), 69107u, global1.b.c.x, u_input.c.x) & select(vec4<u32>(22097u, abs(var_0.c.x), global1.b.c.x, ~0u), vec4<u32>(66184u, global1.d.c.x, min(71685u, global1.d.c.x), global1.b.c.x), select(vec4<bool>(var_0.d.x, true, var_0.a.x, false), !vec4<bool>(global1.d.a.x, false, global1.b.a.x, var_0.a.x), select(vec4<bool>(true, global1.d.d.x, var_0.d.x, true), vec4<bool>(true, true, true, global1.d.a.x), vec4<bool>(var_0.a.x, false, true, var_0.d.x)))), !select(vec2<bool>(1105f < global0.x, true), vec2<bool>(true, -152f == global1.c), false));
    return _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(107f, 1777f, true)))) * _wgslsmith_f_op_f32(global1.a.x * _wgslsmith_f_op_f32(-var_1.x))), var_1.x)));
}

fn func_2(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1) -> vec4<u32> {
    global0 = _wgslsmith_f_op_vec2_f32(func_3());
    let var_0 = arg_1;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-323f - _wgslsmith_f_op_f32(floor(-1753f))) + _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-103f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(298f))))))));
    var_1 = global0.x;
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3()));
    return abs(~var_0.c) << (countOneBits(~arg_1.c) % vec4<u32>(32u));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: Struct_2, arg_3: Struct_2) -> f32 {
    var var_0 = Struct_2(vec4<f32>(global1.c, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.a.x), arg_2.a.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(314f)), _wgslsmith_f_op_f32(ceil(global0.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.c), _wgslsmith_f_op_f32(min(-1824f, _wgslsmith_f_op_vec2_f32(func_3()).x)))), Struct_1(select(arg_3.d.d, !(!vec2<bool>(false, arg_3.d.a.x)), false), 8074i, _wgslsmith_mod_vec4_u32(~select(vec4<u32>(23736u, 4294967295u, arg_0.c.x, 25220u), arg_0.c, global1.b.d.x), ~u_input.c), select(!select(vec2<bool>(false, true), vec2<bool>(arg_3.b.d.x, false), vec2<bool>(arg_2.b.d.x, arg_2.d.d.x)), vec2<bool>(all(arg_0.d), true), !(global0.x > -1000f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_3.c), global1.a.x), global1.b);
    let var_1 = !select(select(vec2<bool>(true, true), !arg_0.d, select(arg_0.a, select(vec2<bool>(arg_2.d.a.x, var_0.d.d.x), global1.d.a, true), any(vec2<bool>(var_0.d.a.x, arg_3.d.a.x)))), vec2<bool>(true, true), arg_3.b.d.x);
    var var_2 = vec3<i32>(_wgslsmith_dot_vec2_i32(-vec2<i32>(0i, _wgslsmith_mult_i32(arg_2.d.b, arg_1.x)), vec2<i32>(-arg_3.b.b, 0i)), var_0.b.b, _wgslsmith_mod_i32(~1i ^ _wgslsmith_div_i32(1i, u_input.b), ~(~arg_2.d.b)) >> (~u_input.c.x % 32u));
    var var_3 = _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1382f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(271f)))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global0.x * arg_3.a.x), _wgslsmith_f_op_f32(332f + -357f), false)))), _wgslsmith_f_op_f32(abs(1000f))), arg_3.a));
    var_3 = global1.a;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.c) + -1007f) - var_3.x);
}

fn func_1(arg_0: Struct_2) -> u32 {
    let var_0 = global1.a.ywy;
    global0 = vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(2008f, _wgslsmith_f_op_f32(897f - _wgslsmith_f_op_f32(f32(-1f) * -222f))), _wgslsmith_f_op_f32(func_4(Struct_1(vec2<bool>(global1.d.d.x, false), global1.d.b | -1585i, func_2(-7227i, Struct_1(vec2<bool>(arg_0.b.d.x, global1.b.d.x), -37769i, vec4<u32>(11993u, 16561u, u_input.c.x, 59022u), vec2<bool>(false, false)), Struct_1(arg_0.d.d, -35910i, arg_0.d.c, global1.b.d)), vec2<bool>(arg_0.d.a.x, global1.b.d.x)), abs(vec4<i32>(13279i, u_input.d, u_input.b, 0i)), Struct_2(_wgslsmith_f_op_vec4_f32(arg_0.a - vec4<f32>(-555f, -335f, 955f, arg_0.c)), global1.d, -835f, Struct_1(vec2<bool>(arg_0.b.a.x, false), global1.b.b, arg_0.d.c, global1.b.d)), Struct_2(_wgslsmith_f_op_vec4_f32(floor(arg_0.a)), global1.b, 728f, Struct_1(global1.d.d, arg_0.b.b, global1.d.c, vec2<bool>(false, global1.b.d.x))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1f)) * -339f)));
    var var_1 = i32(-1i) * -7223i;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global1.a.x - global0.x), _wgslsmith_f_op_f32(func_4(Struct_1(vec2<bool>(global1.d.a.x, true), -35956i, arg_0.d.c, global1.d.a), vec4<i32>(-35584i, arg_0.d.b, u_input.d, u_input.d), Struct_2(arg_0.a, global1.d, arg_0.c, global1.d), arg_0)), all(vec3<bool>(true, true, false)))))) + arg_0.a.x);
    let var_3 = global0.x;
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = max(~(~u_input.c), ~u_input.c) >> (vec4<u32>(max(global1.d.c.x, 1u), _wgslsmith_dot_vec3_u32(u_input.c.yyy, ~global1.d.c.zxy), _wgslsmith_mult_u32(47365u, func_1(Struct_2(vec4<f32>(1491f, global1.c, global1.a.x, global1.a.x), Struct_1(vec2<bool>(false, true), global1.d.b, vec4<u32>(69835u, u_input.c.x, u_input.c.x, 1u), global1.d.a), -1074f, Struct_1(vec2<bool>(true, true), u_input.d, u_input.c, global1.b.a)))) << (global1.b.c.x % 32u), 0u) % vec4<u32>(32u));
    let var_1 = false;
    let var_2 = vec2<bool>(global1.d.d.x, any(select(!select(vec2<bool>(global1.b.a.x, false), global1.b.a, global1.b.d.x), vec2<bool>(global1.b.d.x, true), global1.d.d.x)));
    global1 = Struct_2(global1.a, global1.b, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_4(global1.b, vec4<i32>(10049i, 1i, u_input.d, 24277i), Struct_2(global1.a, global1.d, global1.a.x, global1.b), Struct_2(vec4<f32>(global0.x, 1446f, 1000f, -710f), global1.b, global0.x, global1.d))), -1253f, true)))), Struct_1(vec2<bool>(var_1, true), _wgslsmith_add_i32(2147483647i, -_wgslsmith_dot_vec4_i32(vec4<i32>(global1.d.b, u_input.a, 18630i, 26244i), vec4<i32>(global1.d.b, -1i, -18896i, u_input.b))), global1.d.c, select(!vec2<bool>(false, global1.b.d.x), !var_2, var_2.x || global1.d.d.x)));
    let var_3 = !(!(!vec3<bool>(u_input.d == 0i, true || var_2.x, true)));
    let x = u_input.a;
    s_output = StorageBuffer(11685u, -267f);
}

