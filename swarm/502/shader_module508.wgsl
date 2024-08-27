struct Struct_1 {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec3<u32>,
    d: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: bool,
    c: Struct_2,
    d: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec3<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_2) -> vec3<bool> {
    var var_0 = _wgslsmith_div_vec2_i32(vec2<i32>(-12330i, ~(~(27046i & u_input.d))), firstTrailingBit(vec2<i32>(_wgslsmith_mult_i32(17383i, 1i), 2147483647i)));
    let var_1 = _wgslsmith_add_u32(~select(~_wgslsmith_dot_vec3_u32(arg_0.a.a.ywz, arg_0.a.b.yww), _wgslsmith_mult_u32(~arg_0.a.a.x, _wgslsmith_dot_vec2_u32(arg_0.a.c.yy, vec2<u32>(0u, 81447u))), _wgslsmith_mod_i32(-1i, u_input.a.x) <= var_0.x), ~(_wgslsmith_mod_u32(abs(63984u), arg_0.a.c.x) >> (~(arg_0.a.a.x | 0u) % 32u)));
    var var_2 = arg_0;
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_2.a.d.x, -1147f, -346f))))))));
    var var_4 = Struct_2(var_2.a);
    return vec3<bool>(false, true, true != (var_3.x > _wgslsmith_f_op_f32(select(-1000f, _wgslsmith_f_op_f32(-arg_0.a.d.x), var_2.a.a.x <= var_1))));
}

fn func_2(arg_0: Struct_2) -> vec3<bool> {
    let var_0 = ~firstTrailingBit(firstLeadingBit(vec3<u32>(arg_0.a.b.x, 1u, arg_0.a.b.x)) | vec3<u32>(arg_0.a.b.x, reverseBits(89810u), firstTrailingBit(37720u)));
    let var_1 = !func_3(Struct_2(arg_0.a));
    let var_2 = !(!vec4<bool>(~var_0.x >= 1u, var_0.x >= (arg_0.a.a.x & var_0.x), var_1.x, false));
    var var_3 = ~(-42051i);
    let var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(312f, 277f, 1304f) * vec3<f32>(-930f, 1608f, 851f))))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.a.d.x, arg_0.a.d.x, -209f) - vec3<f32>(arg_0.a.d.x, arg_0.a.d.x, arg_0.a.d.x)), vec3<f32>(-1712f, arg_0.a.d.x, 487f))) + vec3<f32>(368f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -976f)), -308f)));
    return select(var_1, var_2.xwy, var_1);
}

fn func_1(arg_0: Struct_1, arg_1: vec4<u32>) -> f32 {
    let var_0 = all(!func_2(Struct_2(arg_0))) | (arg_0.d.x > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-960f - -1000f)) - _wgslsmith_f_op_f32(-arg_0.d.x)));
    let var_1 = reverseBits(abs(~arg_1.xzz << ((vec3<u32>(arg_0.c.x, arg_0.a.x, arg_1.x) ^ vec3<u32>(64701u, 4294967295u, 29353u)) % vec3<u32>(32u)))) << (~vec3<u32>(~select(arg_0.a.x, 30831u, var_0), 4719u, ~4294967295u) % vec3<u32>(32u));
    let var_2 = 793f;
    var var_3 = false;
    var_3 = var_0;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2) + _wgslsmith_f_op_f32(arg_0.d.x - 587f)))) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(-754f)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 32950i;
    var var_1 = Struct_3(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1258f)) - 1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1000f, -380f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(Struct_1(vec4<u32>(4294967295u, 63119u, 48766u, 1u), vec4<u32>(4294967295u, 50160u, 4294967295u, 56955u), vec3<u32>(16365u, 32578u, 1u), vec2<f32>(-779f, -314f)), vec4<u32>(1u, 28342u, 4294967295u, 0u))) + _wgslsmith_div_f32(-410f, 3083f))))), false, Struct_2(Struct_1(vec4<u32>(0u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u), ~abs(vec3<u32>(4294967295u, 1963u, 27826u)), _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 1694f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-513f, -1759f))))), ~23557u);
    var var_2 = abs(-_wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(select(u_input.c, u_input.a, vec4<bool>(true, var_1.b, var_1.b, var_1.b)), max(vec4<i32>(u_input.b.x, u_input.c.x, 1i, -4278i), u_input.a)), ~(-vec4<i32>(u_input.c.x, u_input.a.x, -2147483647i, u_input.b.x))));
    var_2 = -vec4<i32>(_wgslsmith_div_i32(20864i, abs(u_input.d)) & abs(u_input.a.x ^ -1i), abs(var_2.x << (~0u % 32u)), max(abs(u_input.a.x), -u_input.c.x), i32(-1i) * -55999i);
    let var_3 = !(!func_2(var_1.c).yy);
    var var_4 = u_input.a.zw;
    var var_5 = vec3<i32>(u_input.c.x, reverseBits(-1i), firstTrailingBit(55533i));
    let var_6 = Struct_2(var_1.c.a);
    let var_7 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.c.a.d.x) * _wgslsmith_f_op_f32(var_1.c.a.d.x + -713f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.c.a.d.x * 1295f) + _wgslsmith_f_op_f32(f32(-1f) * -1267f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(var_6.a.d.x, var_6.a.d.x)), _wgslsmith_f_op_f32(-var_1.a))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(517f, var_6.a.d.x, _wgslsmith_f_op_f32(-var_6.a.d.x)) - vec3<f32>(-728f, -1000f, _wgslsmith_f_op_f32(trunc(-802f))))));
    let x = u_input.a;
    s_output = StorageBuffer(0i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-2206f)))), ~u_input.a.wwz, countOneBits(max(i32(-1i) * -var_5.x, var_4.x)));
}

