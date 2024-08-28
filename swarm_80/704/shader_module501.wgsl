struct Struct_1 {
    a: i32,
    b: vec3<bool>,
    c: u32,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: u32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: bool, arg_1: f32, arg_2: i32, arg_3: Struct_1) -> vec2<bool> {
    var var_0 = arg_1;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-387f, 105f))) - _wgslsmith_f_op_f32(floor(-655f))) + 672f));
    var var_2 = Struct_1(u_input.b, !vec3<bool>(true, !(arg_0 || true), false), 4294967295u, all(select(!vec4<bool>(arg_0, arg_0, false, arg_0), vec4<bool>(arg_0, arg_3.c == u_input.c.x, !arg_0, arg_0), select(!vec4<bool>(arg_3.b.x, arg_0, false, true), !vec4<bool>(arg_0, arg_3.b.x, arg_0, true), all(arg_3.b)))));
    let var_3 = vec4<bool>(true | arg_3.d, !(!(!var_2.b.x)), var_2.d, !arg_3.b.x);
    var_2 = arg_3;
    return vec2<bool>(!(firstLeadingBit(_wgslsmith_mod_u32(arg_3.c, arg_3.c)) == ~111637u), var_3.x);
}

fn func_2(arg_0: vec4<i32>, arg_1: vec2<i32>, arg_2: u32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1145f * _wgslsmith_f_op_f32(sign(173f))))), 1000f)));
    var_0 = vec2<f32>(-1293f, -2110f);
    var var_1 = u_input.a & ~u_input.c.x;
    var var_2 = select(select(func_3(var_0.x <= 577f, var_0.x, 13590i, Struct_1(-2147483647i << (0u % 32u), vec3<bool>(false, true, false), abs(u_input.a), true)), vec2<bool>(~12125i < select(0i, -1i, true), u_input.c.x <= abs(61866u)), true), !vec2<bool>(_wgslsmith_f_op_f32(var_0.x * 411f) == _wgslsmith_f_op_f32(-var_0.x), all(vec4<bool>(false, false, false, false)) | all(vec3<bool>(false, true, true))), true);
    var_0 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(vec2<f32>(1518f, var_0.x), vec2<f32>(var_0.x, var_0.x)), vec2<f32>(921f, var_0.x))) - vec2<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-var_0.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.x, var_0.x), vec2<f32>(var_0.x, var_0.x), var_2.x))), vec2<f32>(_wgslsmith_f_op_f32(min(var_0.x, -1073f)), _wgslsmith_div_f32(-651f, 558f)))))));
    return Struct_1(arg_1.x | u_input.d.x, select(select(select(select(vec3<bool>(var_2.x, var_2.x, true), vec3<bool>(false, true, false), var_2.x), !vec3<bool>(true, var_2.x, var_2.x), vec3<bool>(true, true, true)), !select(vec3<bool>(true, true, true), vec3<bool>(false, var_2.x, var_2.x), vec3<bool>(true, var_2.x, var_2.x)), vec3<bool>(true, var_2.x, var_0.x == var_0.x)), !(!select(vec3<bool>(true, true, var_2.x), vec3<bool>(var_2.x, false, var_2.x), vec3<bool>(true, var_2.x, false))), all(vec3<bool>(!var_2.x, any(vec3<bool>(var_2.x, true, var_2.x)), var_2.x))), 0u, var_2.x);
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: vec2<bool>, arg_3: f32) -> Struct_1 {
    let var_0 = arg_1;
    let var_1 = Struct_1(~arg_1.a, arg_1.b, 0u, arg_2.x);
    var var_2 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_3))) * _wgslsmith_f_op_f32(arg_3 - 618f)), _wgslsmith_f_op_f32(exp2(1f))), vec2<f32>(-373f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1f * arg_3)))), arg_2.x));
    let var_3 = var_0;
    let var_4 = -firstTrailingBit(abs(_wgslsmith_mult_vec3_i32(vec3<i32>(12344i, -1i, var_1.a) & u_input.d, _wgslsmith_sub_vec3_i32(vec3<i32>(0i, u_input.e, arg_1.a), u_input.d))));
    return Struct_1(var_0.a, !var_3.b, u_input.a, false);
}

fn func_1() -> Struct_1 {
    var var_0 = 13304u;
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-804f, 1033f, 250f) * vec3<f32>(1520f, -1000f, -328f)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1344f, 157f, 1057f) + vec3<f32>(1000f, -796f, -435f)))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1082f, 622f, 801f)))));
    let var_2 = -1001f;
    return func_4(u_input.c.yx, func_2(vec4<i32>(_wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.e, -2147483647i, u_input.e, u_input.d.x), vec4<i32>(65861i, 23649i, 1i, -21272i)), u_input.e, abs(u_input.d.x), ~1i), u_input.d.xz, u_input.a), vec2<bool>(true, any(select(vec2<bool>(true, false), vec2<bool>(true, false), false)) | all(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true)))), -1385f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = !vec4<bool>(true, func_3(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(709f - 433f)), -2147483647i & ~u_input.d.x, func_2(select(vec4<i32>(var_0.a, var_0.a, var_0.a, var_0.a), vec4<i32>(u_input.e, -16148i, var_0.a, -1i), var_0.b.x), vec2<i32>(u_input.b, 29148i), var_0.c)).x, true, true);
    var var_2 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(-250f)), _wgslsmith_f_op_f32(-203f + -1000f), false)), 315f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1906f, 581f))) + _wgslsmith_div_vec2_f32(vec2<f32>(-912f, 1041f), vec2<f32>(-605f, 2789f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(836f, 787f), vec2<f32>(-1000f, 532f))))))), vec2<f32>(896f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1421f))))));
    var var_3 = -123f;
    let var_4 = var_0.b.xy;
    let var_5 = select(firstTrailingBit(vec3<i32>(var_0.a, countOneBits(-u_input.b), -42483i)), -firstLeadingBit(vec3<i32>(36035i, abs(-1i), ~u_input.d.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1267f, var_2.x) + _wgslsmith_div_f32(var_2.x, -319f))) >= _wgslsmith_f_op_f32(min(var_2.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_2.x * var_2.x))))));
    var_1 = vec4<bool>(!var_4.x, var_4.x, var_4.x, true);
    let var_6 = func_2(-(~_wgslsmith_add_vec4_i32(firstLeadingBit(vec4<i32>(-45951i, 0i, u_input.e, 1i)), _wgslsmith_mod_vec4_i32(vec4<i32>(18600i, -2147483647i, var_5.x, u_input.e), vec4<i32>(var_5.x, var_5.x, 37801i, 80534i)))), u_input.d.zz >> (_wgslsmith_div_vec2_u32(u_input.c.xy, vec2<u32>(max(3444u, var_0.c), var_0.c)) % vec2<u32>(32u)), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, 1u, reverseBits(max(u_input.a, 32793u)), 20069u), ~reverseBits(~vec4<u32>(u_input.a, 1u, var_0.c, u_input.a))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(min(-994f, var_2.x)), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(vec3<f32>(var_2.x, -604f, var_2.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(116f, -261f, var_2.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(674f, -1000f, var_2.x)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, -700f, 430f))))))), u_input.c.x, vec3<u32>(u_input.a, 51606u, u_input.c.x));
}

