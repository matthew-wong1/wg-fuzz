struct Struct_1 {
    a: vec4<bool>,
    b: vec2<f32>,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: f32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_1() -> Struct_1 {
    return Struct_1(select(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true)), vec4<bool>(true, true, true, false)), vec4<bool>(select(false, true, true) & true, true, all(select(vec2<bool>(true, false), vec2<bool>(true, true), true)), true), vec4<bool>(select(false, true, true), any(vec2<bool>(true, true)), _wgslsmith_div_u32(1u, u_input.a) < _wgslsmith_mult_u32(13342u, 0u), true)), vec2<f32>(_wgslsmith_f_op_f32(sign(1f)), -867f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-383f, -119f, _wgslsmith_div_f32(157f, 1266f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f))));
}

fn func_2(arg_0: f32) -> vec3<i32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_0, arg_0, arg_0), vec3<f32>(arg_0, arg_0, arg_0)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, 181f, -840f))))));
    var var_1 = u_input.d ^ (((~1i | _wgslsmith_sub_i32(u_input.d, -18093i)) << (4294967295u % 32u)) | u_input.d);
    var var_2 = func_1();
    var var_3 = u_input.e.x;
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_0, var_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1917f))) - arg_0);
    return vec3<i32>(21735i, u_input.e.x, -9174i);
}

fn func_3(arg_0: i32, arg_1: vec3<i32>) -> vec4<bool> {
    let var_0 = ~(~(-select(vec4<i32>(u_input.d, u_input.e.x, arg_1.x, u_input.e.x), abs(vec4<i32>(26783i, u_input.e.x, u_input.e.x, 3109i)), true)));
    let var_1 = _wgslsmith_clamp_u32(_wgslsmith_mod_u32(countOneBits(abs(u_input.b)), 9715u), abs(u_input.c), firstLeadingBit(~0u));
    var var_2 = u_input.a;
    let var_3 = Struct_1(select(!(!func_1().a), select(vec4<bool>(true, true, false, select(false, true, false)), !select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, false), true), !all(vec2<bool>(false, false))), all(vec4<bool>(true, true, true, true))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(875f, -466f)) * vec2<f32>(1f, _wgslsmith_f_op_f32(min(-1072f, _wgslsmith_f_op_f32(f32(-1f) * -239f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1278f, 883f, 189f))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1972f), _wgslsmith_f_op_f32(-1000f - -1256f), -1352f))));
    var_2 = u_input.b;
    return !vec4<bool>(var_3.a.x, (~(-1i) < u_input.e.x) & !any(var_3.a), func_1().a.x, var_3.a.x);
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1, arg_3: u32) -> vec2<f32> {
    var var_0 = countOneBits(~(~(~firstTrailingBit(vec3<u32>(0u, 65879u, arg_3)))));
    var var_1 = ~1u;
    var_1 = ~(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, u_input.b, u_input.c, 4294967295u), abs(vec4<u32>(48887u, 22217u, var_0.x, 1u)))));
    return arg_0.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-703f * 1280f))), 1354f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -940f), _wgslsmith_f_op_f32(-1f), all(vec4<bool>(true, true, true, true))))), _wgslsmith_f_op_f32(ceil(-1513f))));
    let var_1 = 3202f;
    var var_2 = func_1();
    let var_3 = _wgslsmith_add_vec4_i32(vec4<i32>(u_input.d, ~21491i & (-15534i << ((50158u ^ u_input.c) % 32u)), select(0i, _wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(u_input.e.x, u_input.e.x, u_input.e.x)), func_2(var_2.c.x)), var_2.a.x), u_input.d | 1i), -_wgslsmith_add_vec4_i32((vec4<i32>(0i, -1i, u_input.e.x, u_input.d) ^ vec4<i32>(u_input.d, -25249i, u_input.e.x, -28318i)) ^ -vec4<i32>(1i, u_input.e.x, 1748i, -16161i), firstTrailingBit(vec4<i32>(u_input.e.x, u_input.e.x, -2147483647i, 38796i) << (vec4<u32>(55669u, 30885u, u_input.b, u_input.a) % vec4<u32>(32u)))));
    let var_4 = 2147483647i;
    var var_5 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_2.b) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, var_2.b.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.b.x, 1182f)), false))) * var_2.c.zy) - _wgslsmith_f_op_vec2_f32(func_4(Struct_1(func_3(_wgslsmith_div_i32(var_3.x, var_3.x), countOneBits(vec3<i32>(-14012i, -19783i, u_input.e.x))), _wgslsmith_f_op_vec2_f32(var_2.c.zz - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-771f, 231f))), var_2.c), _wgslsmith_f_op_f32(var_1 * -458f), Struct_1(select(var_2.a, vec4<bool>(var_2.a.x, true, var_2.a.x, var_2.a.x), select(var_2.a, var_2.a, true)), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(select(var_2.c.zx, vec2<f32>(var_2.b.x, -628f), var_2.a.x)))), vec3<f32>(1627f, var_2.c.x, -1267f)), 39081u)));
    var var_6 = var_2.a;
    var var_7 = vec3<i32>(var_4, abs(17736i), var_4);
    let var_8 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, _wgslsmith_dot_vec4_i32(firstTrailingBit(min(vec4<i32>(19768i, var_4, u_input.d, var_3.x), vec4<i32>(22735i, u_input.d, 0i, var_7.x) & vec4<i32>(-26865i, -46194i, var_3.x, 13091i))), _wgslsmith_add_vec4_i32(-var_3, ~(vec4<i32>(-2147483647i, var_4, 16577i, var_3.x) << (vec4<u32>(88640u, 5719u, 1u, 49897u) % vec4<u32>(32u))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(1f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1 * 752f), 289f))), any(!vec2<bool>(var_8.a.x, var_6.x)))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(var_2.c.xz + vec2<f32>(-1694f, var_1)))));
}

