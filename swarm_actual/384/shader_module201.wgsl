struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_1(arg_0: Struct_1) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1035f + _wgslsmith_f_op_f32(f32(-1f) * -1980f)), _wgslsmith_f_op_f32(-1813f * _wgslsmith_f_op_f32(-194f - -1770f))))), -1000f));
    var var_1 = Struct_1(u_input.c.x);
    let var_2 = -vec4<i32>(82207i, countOneBits(_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(41201i, 5999i), u_input.c), vec2<i32>(2147483647i, 4089i))), firstLeadingBit(var_1.a), abs(firstTrailingBit(u_input.c.x | -395i)));
    let var_3 = Struct_1(var_1.a);
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-262f * -1758f)))))));
    return var_1.a;
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: f32, arg_3: vec4<i32>) -> u32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1703f, arg_2, 120f, arg_1)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(515f, -228f, -156f, 659f), vec4<f32>(-1000f, -1109f, arg_2, arg_2))) + vec4<f32>(1f, 1f, 1f, 1f))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(-175f + -141f), _wgslsmith_f_op_f32(-434f + arg_1), _wgslsmith_f_op_f32(arg_2 + arg_2))) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1168f), -820f, _wgslsmith_div_f32(arg_1, arg_1), _wgslsmith_f_op_f32(round(arg_1))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, arg_1, arg_1, 182f))), true))));
    let var_1 = vec4<bool>(true, !((any(vec4<bool>(true, false, true, true)) | false) && false), countOneBits(~_wgslsmith_add_i32(arg_3.x, -1i)) < arg_3.x, arg_1 == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-725f))));
    let var_2 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_0 * _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -460f, arg_1, var_0.x) + var_0)))));
    let var_3 = vec2<u32>(_wgslsmith_mult_u32(countOneBits(~(u_input.b << (u_input.d % 32u))), 0u), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, u_input.b, ~(~u_input.d)), u_input.a.yxz));
    let var_4 = Struct_1(-firstTrailingBit(arg_0.a));
    return 104770u;
}

fn func_2(arg_0: vec3<i32>) -> StorageBuffer {
    let var_0 = Struct_1(_wgslsmith_sub_i32(-46377i, _wgslsmith_add_i32(-32442i, (0i | u_input.c.x) & 2147483647i)));
    var var_1 = func_3(Struct_1(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, ~(-1i), 1i, arg_0.x), ~vec4<i32>(-41165i, 1i, -6915i, -35743i))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-596f)) - _wgslsmith_div_f32(750f, 604f)), -499f) * -736f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(314f * 171f) - -936f))), ~vec4<i32>(2147483647i, 1i, _wgslsmith_add_i32(-2147483647i << (u_input.a.x % 32u), func_1(var_0)), firstTrailingBit(arg_0.x | 2147483647i)));
    return StorageBuffer(-466f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a.wz;
    var var_1 = Struct_1(~(-_wgslsmith_sub_i32(_wgslsmith_sub_i32(2147483647i, 70345i), ~25904i)));
    var_1 = Struct_1(~17168i);
    var var_2 = vec2<f32>(-449f, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(-927f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1130f - 998f)))), 1441f)));
    var var_3 = _wgslsmith_f_op_f32(-var_2.x);
    let var_4 = -_wgslsmith_div_i32(min(u_input.c.x, ~(-31053i)), -_wgslsmith_div_i32(firstLeadingBit(63548i), ~u_input.c.x));
    let x = u_input.a;
    s_output = func_2(vec3<i32>(-u_input.c.x, ~func_1(Struct_1(-2084i)), var_1.a) << (_wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(u_input.a.xyy, u_input.a.ywy << (u_input.a.zxw % vec3<u32>(32u))), ~(~vec3<u32>(52969u, 0u, 4294967295u))) % vec3<u32>(32u)));
}

