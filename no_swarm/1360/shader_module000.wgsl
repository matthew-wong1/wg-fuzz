struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: i32,
    c: Struct_1,
    d: Struct_1,
    e: f32,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: vec2<i32>,
    d: f32,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
    c: bool,
    d: vec4<bool>,
    e: u32,
}

struct Struct_5 {
    a: vec4<u32>,
    b: Struct_3,
    c: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: bool) -> f32 {
    var var_0 = max(-_wgslsmith_add_vec3_i32(-u_input.a.yxx & (u_input.a.yyx >> (vec3<u32>(16333u, 2087u, 59064u) % vec3<u32>(32u))), -vec3<i32>(2147483647i, u_input.a.x, u_input.a.x)), (vec3<i32>(1i, min(u_input.a.x, -2147483647i), firstLeadingBit(-1i)) | vec3<i32>(-7041i, -u_input.a.x, -18226i)) | (vec3<i32>(u_input.a.x, 9893i, u_input.a.x) ^ -u_input.a.yzw));
    var_0 = vec3<i32>(-2147483647i, select(_wgslsmith_mod_i32(44895i, var_0.x), ~u_input.a.x, all(select(select(vec3<bool>(false, arg_0, arg_0), vec3<bool>(arg_0, arg_0, arg_0), arg_0), select(vec3<bool>(arg_0, arg_0, false), vec3<bool>(false, true, arg_0), vec3<bool>(false, arg_0, arg_0)), vec3<bool>(true, true, true)))), var_0.x);
    var_0 = countOneBits(select(vec3<i32>(var_0.x, u_input.a.x << (0u % 32u), -4004i) | _wgslsmith_sub_vec3_i32(u_input.a.zxz, _wgslsmith_div_vec3_i32(vec3<i32>(u_input.a.x, 2147483647i, var_0.x), u_input.a.zzx)), u_input.a.xyy, arg_0 || true));
    var var_1 = -u_input.a.yzy;
    var_1 = ~select(vec3<i32>(firstTrailingBit(-2147483647i), -(-2147483647i >> (0u % 32u)), u_input.a.x), select(vec3<i32>(2147483647i, -2147483647i, var_1.x), (vec3<i32>(var_0.x, -1i, u_input.a.x) & vec3<i32>(var_1.x, 27068i, -49242i)) | ~u_input.a.zxy, true), select(select(select(vec3<bool>(true, false, true), vec3<bool>(arg_0, true, false), false), vec3<bool>(arg_0, arg_0, true), any(vec4<bool>(false, arg_0, false, arg_0))), !(!vec3<bool>(arg_0, arg_0, true)), arg_0));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-1298f)), _wgslsmith_f_op_f32(-127f * _wgslsmith_f_op_f32(sign(1156f))));
}

fn func_2(arg_0: Struct_2, arg_1: u32, arg_2: f32, arg_3: Struct_1) -> vec4<u32> {
    let var_0 = !(!(!all(vec4<bool>(arg_0.d.a.x, true, false, true)))) & true;
    var var_1 = Struct_5(~vec4<u32>(arg_1, 9926u, ~arg_1, _wgslsmith_mod_u32(~arg_1, _wgslsmith_clamp_u32(arg_1, arg_1, 4294967295u))), Struct_3(6490u, arg_0, countOneBits(-u_input.a.yx), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_3(!var_0))))), arg_1);
    var_1 = Struct_5(_wgslsmith_mod_vec4_u32(vec4<u32>(5758u, arg_1, _wgslsmith_dot_vec3_u32(var_1.a.zww, vec3<u32>(0u, 1u, 49747u)), _wgslsmith_sub_u32(arg_1, 4294967295u)) << (var_1.a % vec4<u32>(32u)), vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.c, var_1.c), firstLeadingBit(var_1.a.wz)), _wgslsmith_dot_vec3_u32(~vec3<u32>(1u, var_1.b.a, 30498u), ~vec3<u32>(arg_1, var_1.c, arg_1)), ~select(arg_1, arg_1, var_0), ~5809u)), var_1.b, var_1.a.x);
    var_1 = Struct_5(~vec4<u32>(countOneBits(var_1.a.x), firstTrailingBit(88971u & var_1.c), _wgslsmith_mod_u32(~1u, abs(arg_1)), min(var_1.b.a, ~arg_1)), Struct_3(var_1.a.x, Struct_2(_wgslsmith_f_op_vec2_f32(round(arg_0.a)), var_1.b.c.x, Struct_1(var_1.b.b.d.a), Struct_1(vec3<bool>(true, false, false)), _wgslsmith_f_op_f32(-var_1.b.d)), vec2<i32>(4826i, -26522i), arg_0.e), arg_1 | _wgslsmith_mult_u32(max(57218u, arg_1 >> (var_1.b.a % 32u)), _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(var_1.a.zw, var_1.a.wz), var_1.a.yx & var_1.a.xx)));
    let var_2 = var_1.b.b;
    return _wgslsmith_mod_vec4_u32(~_wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(arg_1, var_1.b.a, arg_1, var_1.b.a), vec4<u32>(var_1.c, 48126u, arg_1, 4294967295u)), ~var_1.a, ~(vec4<u32>(4294967295u, var_1.a.x, var_1.b.a, 33045u) & var_1.a)), var_1.a);
}

fn func_1(arg_0: i32, arg_1: Struct_3, arg_2: Struct_3, arg_3: vec2<bool>) -> vec2<f32> {
    var var_0 = ~(~_wgslsmith_mod_vec4_u32(~vec4<u32>(0u, arg_1.a, arg_2.a, 4294967295u) | (vec4<u32>(arg_2.a, 1u, arg_1.a, arg_1.a) ^ vec4<u32>(1u, arg_1.a, 1u, 0u)), abs(vec4<u32>(arg_2.a, 1u, 17505u, arg_1.a)) << (~vec4<u32>(arg_1.a, 0u, 1u, 1076u) % vec4<u32>(32u))));
    var_0 = func_2(Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.d, arg_1.d)), vec2<f32>(-778f, 314f), !arg_3))), i32(-1i) * -31410i, Struct_1(select(vec3<bool>(false, true, arg_1.b.d.a.x), !arg_2.b.d.a, !vec3<bool>(true, arg_1.b.d.a.x, false))), Struct_1(!arg_1.b.c.a), arg_2.d), arg_1.a, _wgslsmith_f_op_f32(arg_2.d * arg_2.d), arg_1.b.c);
    var_0 = vec4<u32>(var_0.x | _wgslsmith_div_u32(4294967295u, 50041u), 9773u, _wgslsmith_clamp_u32(~min(_wgslsmith_mult_u32(30590u, 0u), _wgslsmith_sub_u32(arg_1.a, var_0.x)), 1u, var_0.x), (~(~arg_1.a) << (4294967295u % 32u)) | _wgslsmith_sub_u32(_wgslsmith_mod_u32(1u, ~41648u), _wgslsmith_clamp_u32(~4294967295u, var_0.x, arg_2.a)));
    var_0 = vec4<u32>(var_0.x, 4294967295u, ~(~0u) ^ _wgslsmith_mult_u32(abs(0u), ~(~arg_2.a)), ~reverseBits(_wgslsmith_mult_u32(_wgslsmith_div_u32(var_0.x, arg_1.a), arg_2.a)));
    var var_1 = Struct_3(~abs(min(abs(var_0.x), 0u)), arg_1.b, u_input.a.xw, arg_2.b.e);
    return _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1680f, arg_2.d))))))), var_1.b.a, any(select(select(vec4<bool>(true, true, false, arg_2.b.c.a.x), vec4<bool>(arg_2.b.c.a.x, arg_1.b.d.a.x, arg_1.b.d.a.x, arg_3.x), arg_2.b.d.a.x), vec4<bool>(arg_3.x, arg_3.x, false, false), vec4<bool>(arg_1.b.d.a.x, arg_2.b.d.a.x, false, true))) & (var_1.a == arg_2.a)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -701f), 334f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-185f, 348f)) + _wgslsmith_f_op_vec2_f32(func_1(u_input.a.x, Struct_3(0u, Struct_2(vec2<f32>(1992f, -1846f), -1i, Struct_1(vec3<bool>(false, true, true)), Struct_1(vec3<bool>(true, false, false)), 816f), u_input.a.yy, -1768f), Struct_3(4294967295u, Struct_2(vec2<f32>(862f, 807f), u_input.a.x, Struct_1(vec3<bool>(true, false, true)), Struct_1(vec3<bool>(false, false, true)), -852f), vec2<i32>(-1i, u_input.a.x), -249f), vec2<bool>(true, false))))))));
    let var_1 = !any(!select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, true), select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false), true)));
    let var_2 = abs(_wgslsmith_add_vec2_u32(min(vec2<u32>(1u, 1u), vec2<u32>(1u, 1u)), ~countOneBits(firstTrailingBit(vec2<u32>(1573u, 31486u)))));
    var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(583f, var_0.x) - vec2<f32>(var_0.x, var_0.x))))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -932f)))), vec2<f32>(var_0.x, _wgslsmith_f_op_f32(trunc(-243f))), !var_1));
    let var_3 = ~(0u ^ ~(~select(var_2.x, 0u, var_1)));
    let var_4 = Struct_5(min(vec4<u32>(~var_3, ~0u, 42267u, _wgslsmith_dot_vec2_u32(var_2, var_2)), ~(~vec4<u32>(var_3, var_2.x, var_3, 1u))) << (~vec4<u32>(1721u, 1u, _wgslsmith_mod_u32(var_3, var_2.x), var_3) % vec4<u32>(32u)), Struct_3(_wgslsmith_clamp_u32(18438u >> (select(1u, var_3, true) % 32u), 0u, var_3), Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(var_0.x, var_0.x), vec2<f32>(1000f, -1801f))), max(countOneBits(47188i), ~u_input.a.x), Struct_1(!vec3<bool>(false, true, var_1)), Struct_1(select(vec3<bool>(var_1, var_1, var_1), vec3<bool>(false, var_1, var_1), false)), -156f), ~_wgslsmith_mult_vec2_i32(select(vec2<i32>(0i, u_input.a.x), u_input.a.zx, var_1), select(vec2<i32>(u_input.a.x, 1i), vec2<i32>(-36079i, 4478i), vec2<bool>(var_1, var_1))), var_0.x), _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(var_3, var_3, 4294967295u), (vec3<u32>(var_3, 4294967295u, var_3) | vec3<u32>(var_3, var_2.x, var_3)) | vec3<u32>(var_2.x, var_3, var_2.x)), _wgslsmith_sub_u32(15765u, abs(~var_2.x)), _wgslsmith_mod_u32(_wgslsmith_clamp_u32(_wgslsmith_mod_u32(20877u, var_2.x), ~var_2.x, func_2(Struct_2(vec2<f32>(var_0.x, var_0.x), u_input.a.x, Struct_1(vec3<bool>(true, var_1, false)), Struct_1(vec3<bool>(var_1, var_1, var_1)), var_0.x), 0u, var_0.x, Struct_1(vec3<bool>(false, true, var_1))).x), 66116u)));
    let var_5 = ~countOneBits(u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(firstLeadingBit(_wgslsmith_mod_i32(var_5.x, 0i)), ~u_input.a.x, max(u_input.a.x, var_4.b.b.b >> (var_4.b.a % 32u)), var_5.x) & u_input.a, 0u, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_3(any(!var_4.b.b.d.a.zy))), -591f)));
}

