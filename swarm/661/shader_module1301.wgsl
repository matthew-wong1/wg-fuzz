struct Struct_1 {
    a: vec2<bool>,
    b: u32,
    c: vec2<u32>,
    d: f32,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: vec3<u32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<bool>(true, true), 74657u, vec2<u32>(44788u, 4294967295u), -346f, true);

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: vec3<bool>) -> f32 {
    var var_0 = arg_1;
    let var_1 = Struct_1(global0.a, arg_1.c.x, arg_0.wz | ~(~_wgslsmith_mult_vec2_u32(arg_1.c, vec2<u32>(1u, 22792u))), _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1237f) * var_0.d), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0.d)) - var_0.d)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global0.d), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(arg_1.d, 866f, false)))), true)) == 1000f);
    let var_2 = !(any(vec4<bool>(!arg_2.x, false, false || global0.e, true)) && var_0.a.x);
    global0 = var_1;
    global0 = Struct_1(!select(select(select(vec2<bool>(false, false), vec2<bool>(global0.e, false), vec2<bool>(true, global0.a.x)), !arg_1.a, select(var_1.a, arg_1.a, arg_1.a.x)), select(select(vec2<bool>(true, global0.e), vec2<bool>(global0.a.x, var_0.e), var_0.a.x), !vec2<bool>(var_1.a.x, true), var_0.a), !var_0.a), ~(u_input.a ^ ~u_input.b), vec2<u32>(22086u, _wgslsmith_dot_vec3_u32(~arg_0.yzz, arg_0.xwy)), 653f, !var_0.a.x);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-845f)));
}

fn func_2(arg_0: Struct_1, arg_1: bool, arg_2: vec2<f32>, arg_3: vec3<bool>) -> vec4<bool> {
    let var_0 = arg_0;
    let var_1 = _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x))), _wgslsmith_f_op_f32(func_3(_wgslsmith_div_vec4_u32(max(vec4<u32>(0u, var_0.c.x, global0.c.x, u_input.a), vec4<u32>(4820u, u_input.b, 28652u, 1u)), max(vec4<u32>(u_input.b, arg_0.b, global0.c.x, var_0.c.x), vec4<u32>(28389u, arg_0.c.x, 0u, 0u))), Struct_1(arg_0.a, abs(2534u), ~arg_0.c, _wgslsmith_f_op_f32(406f + -1144f), false), !arg_3)), 108f)));
    let var_2 = countOneBits(_wgslsmith_mult_u32(~_wgslsmith_dot_vec3_u32(min(vec3<u32>(0u, 0u, arg_0.c.x), vec3<u32>(u_input.b, arg_0.b, 75756u)), ~vec3<u32>(0u, 1u, 4294967295u)), _wgslsmith_add_u32(1u, 0u) & var_0.c.x));
    global0 = var_0;
    global0 = Struct_1(select(vec2<bool>(global0.a.x, arg_1), select(vec2<bool>(!var_0.e, arg_1), select(select(vec2<bool>(true, true), vec2<bool>(arg_0.a.x, false), arg_3.xz), !arg_3.zx, arg_3.zy), select(global0.a, arg_0.a, true)), !select(!arg_3.yy, !var_0.a, false)), 82630u, vec2<u32>(4294967295u, 4294967295u >> (_wgslsmith_sub_u32(8415u, ~var_2) % 32u)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(808f * arg_0.d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.d, var_1.x))))), !any(select(!vec4<bool>(true, true, arg_1, true), !vec4<bool>(true, arg_3.x, false, arg_1), select(vec4<bool>(true, var_0.a.x, true, false), vec4<bool>(arg_1, var_0.a.x, global0.e, var_0.a.x), vec4<bool>(true, global0.e, false, false)))));
    return select(vec4<bool>(true, true, false, true), vec4<bool>(arg_0.a.x, true, any(select(vec2<bool>(arg_3.x, true), var_0.a, vec2<bool>(var_0.a.x, arg_0.a.x))) || false, all(!(!vec2<bool>(arg_1, arg_3.x)))), false);
}

fn func_1(arg_0: u32, arg_1: i32) -> Struct_1 {
    global0 = Struct_1(vec2<bool>(global0.a.x, global0.a.x), _wgslsmith_add_u32(62392u, ~reverseBits(1u)), global0.c, 971f, any(select(func_2(Struct_1(global0.a, 26343u, global0.c, global0.d, true), false, _wgslsmith_div_vec2_f32(vec2<f32>(-586f, 1795f), vec2<f32>(307f, global0.d)), vec3<bool>(true, false, global0.a.x)), select(select(vec4<bool>(false, true, global0.a.x, global0.e), vec4<bool>(true, global0.a.x, global0.a.x, global0.e), global0.e), vec4<bool>(global0.a.x, true, true, global0.e), func_2(Struct_1(vec2<bool>(global0.e, true), arg_0, vec2<u32>(52943u, arg_0), global0.d, global0.a.x), global0.a.x, vec2<f32>(global0.d, global0.d), vec3<bool>(false, global0.e, global0.e))), select(select(vec4<bool>(true, global0.a.x, true, global0.e), vec4<bool>(global0.e, global0.e, false, true), vec4<bool>(global0.a.x, false, global0.e, true)), vec4<bool>(global0.e, global0.a.x, global0.e, true), !vec4<bool>(false, global0.a.x, false, global0.e)))));
    var var_0 = Struct_1(!(!select(select(global0.a, vec2<bool>(false, global0.e), global0.a), !vec2<bool>(true, global0.a.x), vec2<bool>(true, global0.a.x))), 1u, global0.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.d * -895f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.d + -997f))) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(857f, _wgslsmith_f_op_f32(f32(-1f) * -1797f)))), select(false, true, any(func_2(Struct_1(vec2<bool>(true, false), u_input.a, vec2<u32>(0u, arg_0), global0.d, false), global0.a.x, _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(478f, 2638f))), select(vec3<bool>(global0.e, false, true), vec3<bool>(false, true, true), true)).xwx)));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-157f, var_0.d) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -234f) - _wgslsmith_f_op_f32(f32(-1f) * -1092f))));
    var_0 = Struct_1(var_0.a, _wgslsmith_dot_vec3_u32(~min(vec3<u32>(global0.c.x, var_0.c.x, u_input.a), _wgslsmith_clamp_vec3_u32(vec3<u32>(arg_0, u_input.b, arg_0), vec3<u32>(arg_0, var_0.c.x, arg_0), vec3<u32>(arg_0, global0.b, global0.c.x))), _wgslsmith_clamp_vec3_u32(select(firstTrailingBit(vec3<u32>(1u, arg_0, 26488u)), vec3<u32>(var_0.c.x, u_input.a, 63366u), func_2(Struct_1(vec2<bool>(var_0.e, var_0.a.x), 52159u, var_0.c, -2261f, global0.a.x), true, vec2<f32>(1000f, 1012f), vec3<bool>(var_0.e, var_0.a.x, var_0.a.x)).x), vec3<u32>(4294967295u, max(var_0.b, 0u), 4294967295u), reverseBits(abs(vec3<u32>(34479u, 4294967295u, global0.b))))), vec2<u32>(1u, _wgslsmith_dot_vec3_u32(select(vec3<u32>(12571u, var_0.c.x, 1u), vec3<u32>(u_input.b, 1u, 52302u), global0.e), vec3<u32>(max(arg_0, global0.b), global0.b, _wgslsmith_clamp_u32(u_input.a, 0u, 66397u)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(2212f)))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.d * global0.d), _wgslsmith_f_op_f32(min(var_0.d, var_1)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1030f * _wgslsmith_f_op_f32(min(-1000f, var_0.d))), _wgslsmith_f_op_f32(select(530f, _wgslsmith_f_op_f32(max(var_1, -461f)), func_2(Struct_1(vec2<bool>(var_0.e, global0.a.x), var_0.c.x, global0.c, -617f, var_0.e), true, vec2<f32>(-556f, 477f), vec3<bool>(global0.e, false, var_0.a.x)).x))))), !any(!func_2(Struct_1(var_0.a, 73764u, vec2<u32>(28829u, 4294967295u), global0.d, var_0.a.x), true, vec2<f32>(-495f, -203f), vec3<bool>(global0.a.x, global0.e, false)).yy));
    let var_2 = Struct_1(!select(!(!var_0.a), global0.a, global0.e), arg_0 >> (_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(76612u, 0u, 4333u), vec3<u32>(4294967295u, global0.c.x, arg_0)), _wgslsmith_add_u32(~u_input.b, ~0u)) % 32u), vec2<u32>(~u_input.a, var_0.b), var_1, func_2(Struct_1(var_0.a, u_input.a, global0.c, -507f, global0.e && var_0.e), var_0.e, vec2<f32>(global0.d, -318f), !(!select(vec3<bool>(var_0.a.x, false, true), vec3<bool>(global0.e, global0.a.x, global0.e), var_0.e))).x);
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1(_wgslsmith_div_u32(_wgslsmith_mult_u32(global0.b, firstTrailingBit(4294967295u) ^ global0.c.x), global0.c.x), u_input.c.x);
    var var_0 = vec4<f32>(global0.d, _wgslsmith_f_op_f32(-global0.d), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1222f)) * _wgslsmith_f_op_f32(round(319f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(1u, u_input.c.x).d + global0.d) - _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-228f, _wgslsmith_f_op_f32(select(-463f, global0.d, true)))))));
    var var_1 = 41740u;
    global0 = Struct_1(global0.a, 36498u, reverseBits(abs(_wgslsmith_mod_vec2_u32(vec2<u32>(45745u, 0u), ~vec2<u32>(global0.b, 0u)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_3(reverseBits(select(vec4<u32>(0u, 1u, 52560u, 0u), vec4<u32>(global0.c.x, 1u, global0.b, 0u), vec4<bool>(global0.a.x, false, global0.a.x, global0.a.x))), func_1(~global0.c.x, 0i), !vec3<bool>(global0.e, global0.a.x, global0.e))), _wgslsmith_f_op_f32(-1385f + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1839f, global0.d))))), all(global0.a));
    let var_2 = Struct_1(func_2(Struct_1(select(global0.a, !global0.a, true | global0.e), u_input.a << (1u % 32u), vec2<u32>(9053u, u_input.b), global0.d, false | global0.a.x), false, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(1390f, var_0.x), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global0.d, var_0.x)))), vec2<f32>(-729f, _wgslsmith_f_op_f32(var_0.x - var_0.x)), vec2<bool>(any(vec3<bool>(global0.e, false, false)), true && global0.e))), select(vec3<bool>(0i <= u_input.c.x, select(false, true, global0.a.x), func_1(global0.c.x, 0i).a.x), !select(vec3<bool>(true, global0.e, true), vec3<bool>(false, global0.e, true), false), vec3<bool>(true, true, true != global0.e))).zy, u_input.b, _wgslsmith_mod_vec2_u32(max(vec2<u32>(~u_input.a, _wgslsmith_mult_u32(u_input.a, 17045u)), ~vec2<u32>(4294967295u, u_input.b)), global0.c), var_0.x, true);
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(-1000f)))), 524f));
    var var_4 = select(!func_2(Struct_1(var_2.a, ~u_input.b, ~global0.c, _wgslsmith_f_op_f32(round(var_3)), any(vec3<bool>(var_2.a.x, global0.e, global0.e))), any(vec2<bool>(var_2.a.x, true)), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, global0.d) * var_0.wy), !(!vec3<bool>(var_2.a.x, false, global0.a.x))), select(!(!vec4<bool>(var_2.e, false, false, true)), func_2(var_2, func_1(global0.c.x, reverseBits(u_input.c.x)).a.x, vec2<f32>(_wgslsmith_f_op_f32(-global0.d), _wgslsmith_f_op_f32(var_3 - var_2.d)), vec3<bool>(!var_2.a.x, !var_2.a.x, all(vec4<bool>(false, true, var_2.e, false)))), !all(!vec4<bool>(global0.a.x, false, var_2.e, false))), (var_2.e || false) & func_2(func_1(~1u, _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, u_input.c.x), u_input.c)), true, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3, -973f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, 444f))), !select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), true)).x);
    let var_5 = var_2;
    var var_6 = u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_5.d - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(1091f, var_5.d, global0.e))))))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_2.d, -893f, global0.d) - vec4<f32>(594f, global0.d, var_0.x, 1131f))))))), ~vec3<u32>(_wgslsmith_add_u32(0u, var_5.c.x), _wgslsmith_mult_u32(global0.b, 35259u), 0u), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, 784f)))) * _wgslsmith_f_op_vec2_f32(-var_0.wy)));
}

