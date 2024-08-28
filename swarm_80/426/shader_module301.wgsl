struct Struct_1 {
    a: f32,
    b: i32,
    c: i32,
    d: vec3<u32>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: f32,
    b: vec4<u32>,
    c: Struct_1,
    d: vec4<i32>,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec3<i32>,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> u32 {
    var var_0 = Struct_3(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1177f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1000f + -1597f))))))), Struct_2(-388f, ~u_input.d, Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-269f - -1021f), _wgslsmith_f_op_f32(f32(-1f) * -1188f)), i32(-1i) * -u_input.e, ~_wgslsmith_sub_i32(0i, u_input.c.x), ~u_input.d.zxy, vec3<i32>(u_input.b | 0i, -55560i, -u_input.e)), vec4<i32>(~_wgslsmith_dot_vec3_i32(vec3<i32>(47120i, u_input.c.x, u_input.b), u_input.c), u_input.b, -(~u_input.b), _wgslsmith_mod_i32(-47713i, u_input.e))));
    let var_1 = var_0.b;
    let var_2 = 1u;
    var_0 = Struct_3(1356f, var_0.b);
    let var_3 = reverseBits(-_wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(var_1.c.c, var_0.b.c.c, 6412i), vec3<i32>(-20134i, var_0.b.d.x, -26323i)), -9463i & u_input.b), ~(var_0.b.c.e.zz >> (u_input.d.xx % vec2<u32>(32u)))));
    return var_2;
}

fn func_2(arg_0: vec3<u32>) -> bool {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, 1655f) - _wgslsmith_f_op_f32(max(-577f, 282f))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(376f * -534f)))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-316f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-700f * 1000f), -640f))));
    var_0 = -637f;
    let var_1 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-731f + _wgslsmith_div_f32(750f, 426f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -736f) - 155f))), Struct_2(_wgslsmith_f_op_f32(exp2(1f)), select(~u_input.d, u_input.d, func_3() != u_input.d.x), Struct_1(1038f, -2147483647i, ~(i32(-1i) * -3659i), arg_0, _wgslsmith_div_vec3_i32(min(vec3<i32>(u_input.c.x, u_input.c.x, u_input.b), u_input.c), u_input.c)), ~(vec4<i32>(u_input.c.x, u_input.e, u_input.e, 14873i) & vec4<i32>(u_input.e, u_input.b, u_input.c.x, 13881i))));
    var var_2 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1097f, var_1.a))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a, var_1.b.c.a))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-123f, -621f) * _wgslsmith_div_vec2_f32(vec2<f32>(-1302f, var_1.a), vec2<f32>(var_1.b.a, var_1.b.c.a)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(388f, 476f), _wgslsmith_div_vec2_f32(vec2<f32>(355f, var_1.a), vec2<f32>(-816f, -1774f))))))));
    var var_3 = var_1;
    return false;
}

fn func_1(arg_0: f32) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-302f * _wgslsmith_f_op_f32(select(-857f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(select(arg_0, arg_0, true))), func_2(u_input.a >> (u_input.d.ywz % vec3<u32>(32u))))))));
    var var_1 = _wgslsmith_div_u32(~_wgslsmith_sub_u32(1u >> (u_input.d.x % 32u), countOneBits(9873u)), 1u & (u_input.d.x >> (61943u % 32u))) == _wgslsmith_dot_vec4_u32(u_input.d, vec4<u32>(u_input.d.x, firstTrailingBit(~4294967295u), min(u_input.a.x, u_input.a.x), max(u_input.a.x | 0u, 2082u)));
    var var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)), var_0, _wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(max(arg_0, _wgslsmith_f_op_f32(-arg_0)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_0, 557f, arg_0, 103f)))) - _wgslsmith_f_op_vec4_f32(step(vec4<f32>(1000f, 105f, var_0, arg_0), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0, -1283f, var_0, arg_0), vec4<f32>(arg_0, var_0, 279f, 1557f), false)))))));
    var var_3 = !(!(!(!select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false), true))));
    var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(1283f, arg_0, var_2.x, 382f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-909f, 1061f, arg_0, -1930f) + vec4<f32>(arg_0, 709f, arg_0, var_0))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, var_0, 289f, var_0)), select(!vec4<bool>(var_3.x, false, true, false), vec4<bool>(var_3.x, false, true, true), true))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(160f, var_2.x, var_0, var_0)) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(159f, 1566f, 714f, arg_0)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_2.x, 1000f, 2323f, arg_0)))))), var_3.x)) * vec4<f32>(579f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1836f * 1700f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 * 1001f)), arg_0));
    return -1i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(exp2(1f)), _wgslsmith_dot_vec4_i32(firstLeadingBit(-vec4<i32>(u_input.e, -2147483647i, 0i, u_input.e)), ~(-vec4<i32>(-2147483647i, 2147483647i, -1i, u_input.c.x)) | vec4<i32>(-2147483647i, _wgslsmith_mult_i32(9715i, u_input.b), u_input.e, u_input.e)), 25069i ^ (u_input.c.x | func_1(-1000f)), ~firstTrailingBit(u_input.d.yyz >> (u_input.d.xzz % vec3<u32>(32u))), -(~vec3<i32>(-38849i, ~(-54162i), _wgslsmith_mod_i32(-34106i, u_input.c.x))));
    var var_1 = _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(-253f * 1f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.a))), var_0.a)))));
    var_1 = _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(422f - _wgslsmith_f_op_f32(sign(var_0.a))) - var_1.x), -914f)));
    var_1 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1042f, 561f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1444f, -1975f), vec2<f32>(var_1.x, var_0.a)))))) - vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_1.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a) * _wgslsmith_f_op_f32(step(-1000f, 1965f)))))));
    var var_2 = vec2<f32>(1f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_1.x))));
    var_1 = vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(min(-240f, var_0.a)))), 133f)), 668f);
    let var_3 = select(!vec3<bool>(all(select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), true)), false, !any(vec4<bool>(false, false, true, false))), !vec3<bool>(func_2(vec3<u32>(var_0.d.x, var_0.d.x, var_0.d.x)) && true, true, var_0.d.x > ~106799u), false);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_i32(countOneBits(-(vec3<i32>(u_input.e, u_input.b, var_0.c) << (var_0.d % vec3<u32>(32u)))), vec3<i32>(2147483647i, abs(firstTrailingBit(u_input.b)), var_0.e.x)), _wgslsmith_dot_vec4_i32(~_wgslsmith_add_vec4_i32(-vec4<i32>(8476i, -57346i, u_input.c.x, 1i), vec4<i32>(-41036i, var_0.b, u_input.e, var_0.c)), reverseBits(vec4<i32>(select(u_input.e, -12860i, true), -6597i, i32(-1i) * -1i, 1i))));
}

