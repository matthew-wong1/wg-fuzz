struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: vec2<bool>,
    d: vec4<i32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_2) -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(604f, _wgslsmith_f_op_f32(-425f + _wgslsmith_f_op_f32(-817f + _wgslsmith_f_op_f32(f32(-1f) * -1513f)))));
    let var_1 = Struct_2(arg_0.e, _wgslsmith_sub_vec3_u32(~(~vec3<u32>(u_input.a.x, 0u, 0u)) | arg_0.b, vec3<u32>(arg_0.e.a, 33533u, min(u_input.b, u_input.a.x)) >> (vec3<u32>(abs(arg_0.e.a), ~1u, arg_0.e.a) % vec3<u32>(32u))), select(vec2<bool>(!(arg_0.a.a <= 4294967295u), false), vec2<bool>(true, true), !(!arg_0.c)), vec4<i32>(~(~(-arg_0.d.x)), u_input.c.x, _wgslsmith_dot_vec2_i32(-vec2<i32>(1i, -21325i) | vec2<i32>(u_input.c.x, u_input.c.x), firstLeadingBit(_wgslsmith_mod_vec2_i32(arg_0.d.zz, u_input.c))), firstLeadingBit(arg_0.d.x << (arg_0.e.a % 32u)) << (0u % 32u)), Struct_1(~abs(u_input.a.x | u_input.b)));
    var var_2 = Struct_2(arg_0.a, ~firstLeadingBit(~(~var_1.b)), select(select(select(vec2<bool>(var_1.c.x, arg_0.c.x), !vec2<bool>(arg_0.c.x, var_1.c.x), false), vec2<bool>(!arg_0.c.x, all(vec2<bool>(false, false))), _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 11374i, -1i, 35611i), vec4<i32>(2147483647i, 2147483647i, 1i, u_input.c.x)) == select(-3896i, -17200i, false)), vec2<bool>(all(vec4<bool>(arg_0.c.x, false, false, var_1.c.x)) || true, all(vec4<bool>(true, var_1.c.x, true, true))), arg_0.c.x), _wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(arg_0.d, ~vec4<i32>(u_input.c.x, var_1.d.x, var_1.d.x, -2147483647i) ^ max(var_1.d, arg_0.d)), var_1.d), Struct_1(arg_0.b.x));
    let var_3 = _wgslsmith_f_op_f32(exp2(var_0));
    var var_4 = Struct_2(var_1.e, _wgslsmith_add_vec3_u32(~_wgslsmith_add_vec3_u32(reverseBits(arg_0.b), select(vec3<u32>(var_2.a.a, arg_0.b.x, arg_0.e.a), var_1.b, var_1.c.x)), vec3<u32>(min(0u, ~1u), ~68362u, abs(~1u))), arg_0.c, arg_0.d, Struct_1(4294967295u));
    return select(select(select(select(select(vec4<bool>(false, var_1.c.x, var_2.c.x, false), vec4<bool>(false, var_2.c.x, true, false), true), vec4<bool>(var_4.c.x, true, true, var_4.c.x), false), !vec4<bool>(false, var_1.c.x, true, var_4.c.x), !(var_1.e.a != 4294967295u)), vec4<bool>(true, any(!vec2<bool>(var_4.c.x, var_2.c.x)), (var_1.d.x >= var_1.d.x) && var_4.c.x, !(var_3 >= 920f)), any(!select(vec3<bool>(var_4.c.x, false, true), vec3<bool>(var_2.c.x, var_1.c.x, false), false))), !vec4<bool>(!var_1.c.x, any(vec3<bool>(true, false, true)) | !arg_0.c.x, var_1.d.x < (var_4.d.x << (var_4.b.x % 32u)), true | all(vec4<bool>(true, var_1.c.x, true, true))), vec4<bool>(true, !var_2.c.x, !any(vec3<bool>(true, true, true)), arg_0.c.x));
}

fn func_4(arg_0: u32, arg_1: vec3<u32>, arg_2: vec4<bool>) -> bool {
    let var_0 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1876f, 112f, -1370f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(210f, -924f, 1132f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-176f, 1093f, 855f) + vec3<f32>(708f, -632f, 974f))))))));
    let var_1 = Struct_1(0u);
    let var_2 = 28175u;
    var var_3 = var_1;
    var var_4 = _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(-var_0.x))));
    return !(true != (true && (671f > var_0.x)));
}

fn func_2(arg_0: i32) -> vec3<f32> {
    let var_0 = Struct_2(Struct_1(u_input.b), vec3<u32>(_wgslsmith_mult_u32(u_input.a.x, countOneBits(u_input.b)), 1u, _wgslsmith_sub_u32(u_input.a.x ^ u_input.b, u_input.a.x) << (0u % 32u)), !select(!select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false)), vec2<bool>(true, true), func_4(u_input.a.x, vec3<u32>(u_input.b, u_input.a.x, 1u), func_3(Struct_2(Struct_1(4294967295u), vec3<u32>(u_input.a.x, u_input.a.x, 12567u), vec2<bool>(false, false), vec4<i32>(u_input.c.x, arg_0, 1i, 1i), Struct_1(u_input.b))))), countOneBits(firstLeadingBit(vec4<i32>(-arg_0, -arg_0, -23079i, 10713i))), Struct_1(u_input.a.x));
    var var_1 = var_0.b.x;
    let var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(345f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1276f) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-1221f)), -1208f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(-128f)))) - _wgslsmith_f_op_f32(-419f * 1434f)) + _wgslsmith_f_op_f32(475f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-409f, 1123f, true)))))));
    let var_3 = Struct_1(4224u);
    var_1 = 4294967295u;
    return vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(-325f)))))), _wgslsmith_f_op_f32(-1644f - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_2 * var_2)))), -1668f);
}

fn func_1() -> StorageBuffer {
    var var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(538f, -740f))))), -697f, 816f) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_2(_wgslsmith_mult_i32(u_input.c.x, -10128i))) * vec3<f32>(-521f, 806f, _wgslsmith_f_op_f32(floor(654f))))));
    let var_1 = _wgslsmith_f_op_f32(select(-245f, _wgslsmith_f_op_f32(-543f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), func_4(~(~reverseBits(u_input.a.x)), ~min(~vec3<u32>(u_input.a.x, 0u, 41905u), ~vec3<u32>(0u, 1u, u_input.a.x)), vec4<bool>(true, func_3(Struct_2(Struct_1(u_input.b), vec3<u32>(0u, u_input.b, u_input.a.x), vec2<bool>(false, false), vec4<i32>(u_input.c.x, 2147483647i, -10449i, -16134i), Struct_1(u_input.b))).x, !(u_input.c.x < u_input.c.x), true))));
    var var_2 = vec4<u32>(0u, u_input.a.x, ~_wgslsmith_dot_vec4_u32(~(vec4<u32>(u_input.b, 0u, u_input.b, u_input.b) >> (vec4<u32>(1u, 12785u, 30805u, 0u) % vec4<u32>(32u))), vec4<u32>(u_input.a.x, 1u, 22727u >> (u_input.b % 32u), ~u_input.b)), u_input.b);
    let var_3 = _wgslsmith_f_op_f32(trunc(var_1));
    let var_4 = Struct_1(~firstLeadingBit(var_2.x));
    return StorageBuffer(568f, vec3<u32>(var_4.a, _wgslsmith_mult_u32(var_4.a, 1u), ~var_4.a), 27118u);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

