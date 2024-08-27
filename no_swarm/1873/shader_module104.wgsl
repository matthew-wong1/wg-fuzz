struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: bool,
    d: vec3<bool>,
    e: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec2<i32>,
}

struct Struct_4 {
    a: vec2<u32>,
    b: f32,
    c: i32,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_3,
    c: bool,
    d: Struct_3,
    e: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_2) -> vec2<i32> {
    var var_0 = arg_1.a;
    var_0 = arg_1.a;
    var var_1 = _wgslsmith_sub_vec4_u32(~u_input.b, ~firstTrailingBit(~vec4<u32>(0u, arg_1.e, arg_1.e, 1u)) & ~vec4<u32>(16186u | u_input.b.x, arg_1.e, max(4294967295u, u_input.a.x), 60864u));
    var var_2 = abs(~(-1i));
    var var_3 = select(arg_1.d.zy, arg_1.d.xz, all(arg_1.d.xz));
    return select(~abs(_wgslsmith_div_vec2_i32(vec2<i32>(2147483647i, arg_0.x), vec2<i32>(arg_0.x, arg_1.b.x))), _wgslsmith_clamp_vec2_i32(vec2<i32>(2147483647i >> (countOneBits(0u) % 32u), i32(-1i) * -41495i), abs(vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.b.x, 2147483647i, arg_0.x), vec3<i32>(arg_1.b.x, -1i, -55726i)), i32(-1i) * -2147483647i)), firstLeadingBit(_wgslsmith_mod_vec2_i32(vec2<i32>(2147483647i, arg_1.b.x), arg_0.zz | vec2<i32>(arg_1.b.x, -4732i)))), true);
}

fn func_2() -> u32 {
    var var_0 = all(!select(vec3<bool>(false, true, true), vec3<bool>(true, any(vec4<bool>(false, true, true, false)), true), any(vec4<bool>(false, true, false, false)) & any(vec4<bool>(false, true, true, true))));
    var_0 = any(!select(vec2<bool>(select(true, false, true), true), vec2<bool>(true, all(vec2<bool>(true, true))), vec2<bool>(true, true)));
    var var_1 = !vec3<bool>(all(vec4<bool>(all(vec3<bool>(true, true, true)), true, true, all(vec4<bool>(false, true, true, true)))), any(vec2<bool>(all(vec2<bool>(false, false)), all(vec2<bool>(true, true)))), false);
    let var_2 = Struct_5(Struct_4(u_input.b.yz, _wgslsmith_f_op_f32(floor(790f)), abs(1i)), Struct_3(Struct_2(Struct_1(u_input.b.x >> (2935u % 32u)), func_3(~vec4<i32>(21596i, 27329i, -2147483647i, 58838i), Struct_2(Struct_1(u_input.a.x), vec2<i32>(-2147483647i, -59665i), false, vec3<bool>(false, true, false), u_input.b.x)), var_1.x, vec3<bool>(true, true, true), u_input.a.x), Struct_1(u_input.b.x), vec2<i32>(1i, 1i)), true, Struct_3(Struct_2(Struct_1(~0u), vec2<i32>(1i, i32(-1i) * -55256i), !var_1.x, !vec3<bool>(var_1.x, true, var_1.x), u_input.a.x), Struct_1(countOneBits(~0u)), -vec2<i32>(1i, -1i)), select(-1i, 34605i, any(vec4<bool>(var_1.x, true, false, false)) | !var_1.x));
    let var_3 = !any(vec2<bool>((0u > var_2.d.a.e) != (u_input.b.x >= u_input.a.x), !(var_2.d.b.a < u_input.a.x)));
    return var_2.d.a.e;
}

fn func_1(arg_0: u32) -> u32 {
    var var_0 = u_input.b.x;
    var_0 = 42204u;
    var_0 = max(~1u, ~min(1u, 0u));
    var_0 = func_2();
    var var_1 = u_input.b.zzw;
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-838f - _wgslsmith_f_op_f32(721f + -1975f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1268f + 679f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f))));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-237f)) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(790f, -1035f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(167f + -1000f))))));
    let var_1 = 4294967295u;
    var_0 = 1473f;
    let var_2 = ~min(vec2<u32>(u_input.b.x, 1u), vec2<u32>(79435u, u_input.a.x));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(674f - 1659f)))))));
    let var_4 = _wgslsmith_mult_i32(2147483647i, 1i);
    var var_5 = firstTrailingBit(_wgslsmith_add_vec2_i32(-countOneBits(-vec2<i32>(var_4, -10742i)), -_wgslsmith_add_vec2_i32(max(vec2<i32>(0i, -2147483647i), vec2<i32>(-1i, var_4)), -vec2<i32>(var_4, 2147483647i))));
    var var_6 = _wgslsmith_mod_u32(~(~(20533u << (var_1 % 32u))), func_1(var_2.x)) << (abs(14051u) % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(2147483647i, vec3<i32>(i32(-1i) * -18380i, 2147483647i, ~var_4));
}

