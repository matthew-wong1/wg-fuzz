struct Struct_1 {
    a: u32,
    b: u32,
    c: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct Struct_4 {
    a: f32,
    b: i32,
    c: Struct_2,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3() -> f32 {
    let var_0 = select((vec4<i32>(1i, 1i, 1i, 1i) & select(-vec4<i32>(5489i, 56791i, -39782i, 0i), abs(vec4<i32>(7595i, 4804i, 1i, 2147483647i)), select(false, true, true))) & -(-vec4<i32>(32488i, 2147483647i, -7986i, 0i) ^ (vec4<i32>(6110i, -31438i, -19526i, 20513i) >> (vec4<u32>(u_input.c.x, u_input.b, u_input.a.x, u_input.b) % vec4<u32>(32u)))), _wgslsmith_div_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), _wgslsmith_sub_vec4_i32(-vec4<i32>(-11091i, 75099i, 1i, 0i), vec4<i32>(-40577i, 14010i, -2147483647i, 1i)), -vec4<i32>(1i, 1i, 1i, 1i)), -(~vec4<i32>(-1i, 13160i, -1i, 19736i))), select(select(select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, true)), vec4<bool>(u_input.c.x == u_input.a.x, true, any(vec2<bool>(false, false)), true), true), !select(select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false)), vec4<bool>(true, true, true, true), true), vec4<bool>(any(vec4<bool>(false, false, false, true)) | true, !all(vec2<bool>(true, true)), ~29594u < _wgslsmith_clamp_u32(0u, 12611u, 0u), true)));
    var var_1 = Struct_4(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(222f - 134f), 184f)), var_0.x, Struct_2(Struct_1(~(4294967295u & u_input.b), ~38681u, select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, false)))), vec4<bool>(false, !any(vec3<bool>(true, true, true)), max(_wgslsmith_clamp_u32(14880u, u_input.a.x, 40277u), 77941u) > 4773u, any(vec4<bool>(true, true, true, any(vec4<bool>(false, false, true, false))))));
    var_1 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_1.a), -316f))), -48137i, Struct_2(var_1.c.a), !(!select(vec4<bool>(var_1.d.x, true, false, true), vec4<bool>(var_1.c.a.c.x, false, false, var_1.d.x), select(var_1.d, var_1.d, var_1.d.x))));
    var var_2 = Struct_1(~abs(1u), 4294967295u, !(!(!(!var_1.d.wzx))));
    var_2 = var_1.c.a;
    return _wgslsmith_f_op_f32(-1045f * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_1.a - -183f), -268f, any(!(!var_2.c.yz)))));
}

fn func_2(arg_0: vec2<u32>, arg_1: vec2<f32>) -> f32 {
    let var_0 = vec2<bool>(any(vec2<bool>(any(vec3<bool>(true, true, true)), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) * _wgslsmith_f_op_f32(arg_1.x + arg_1.x)) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1000f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-800f, -1146f, true)) + -452f)));
    let var_1 = Struct_2(Struct_1(51191u, _wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(u_input.a.x, min(u_input.b, arg_0.x), max(5839u, u_input.c.x), arg_0.x)), !select(!vec3<bool>(var_0.x, true, false), select(vec3<bool>(true, var_0.x, var_0.x), vec3<bool>(var_0.x, var_0.x, var_0.x), var_0.x), vec3<bool>(false, var_0.x, var_0.x))));
    var var_2 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1088f, -324f, arg_1.x))) + _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.x, -1186f, 619f) * vec3<f32>(arg_1.x, -680f, arg_1.x)))))))));
    let var_3 = any(vec4<bool>(any(vec4<bool>(true, var_1.a.c.x, false, all(vec4<bool>(false, false, var_0.x, false)))), firstTrailingBit(arg_0.x) != ~(u_input.c.x | 0u), true, any(vec2<bool>(var_1.a.c.x, true))));
    var_2 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1272f, arg_1.x, 2036f)), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_2.x, var_2.x, arg_1.x))), true)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(1614f, arg_1.x, var_2.x) + vec3<f32>(var_2.x, var_2.x, 1430f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_2.x, var_2.x, arg_1.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.x, arg_1.x, arg_1.x) - vec3<f32>(1266f, arg_1.x, -489f)))), !var_1.a.c))));
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-308f, 324f));
}

fn func_1(arg_0: vec3<i32>, arg_1: i32, arg_2: bool, arg_3: f32) -> Struct_3 {
    var var_0 = arg_3;
    var_0 = arg_3;
    var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(-391f)), _wgslsmith_f_op_f32(func_2(u_input.c.xx, vec2<f32>(-1091f, -774f))))) + _wgslsmith_f_op_f32(min(-799f, _wgslsmith_f_op_f32(min(-792f, arg_3))))))));
    let var_1 = arg_0.xz;
    var var_2 = any(!select(select(select(vec3<bool>(true, false, arg_2), vec3<bool>(false, true, false), vec3<bool>(arg_2, arg_2, arg_2)), select(vec3<bool>(true, arg_2, true), vec3<bool>(arg_2, arg_2, arg_2), false), !vec3<bool>(true, arg_2, arg_2)), select(select(vec3<bool>(true, arg_2, true), vec3<bool>(arg_2, true, arg_2), vec3<bool>(arg_2, arg_2, false)), !vec3<bool>(arg_2, arg_2, arg_2), false == arg_2), select(!arg_2, arg_2, !arg_2)));
    return Struct_3(arg_0);
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_3) -> Struct_3 {
    var var_0 = Struct_1(~(~(83865u ^ _wgslsmith_mult_u32(4294967295u, u_input.c.x))), 1u, select(!vec3<bool>(any(vec3<bool>(arg_0.x, true, false)), arg_0.x, arg_0.x), !select(!arg_0.ywz, arg_0.xwx, true), all(select(!vec3<bool>(arg_0.x, false, false), select(vec3<bool>(arg_0.x, arg_0.x, arg_0.x), arg_0.wxy, arg_0.x), select(arg_0.zyy, vec3<bool>(true, arg_0.x, false), vec3<bool>(arg_0.x, true, arg_0.x))))));
    let var_1 = var_0.b;
    let var_2 = _wgslsmith_add_vec2_i32(vec2<i32>(-24779i, abs(arg_1.a.x)), ~(-firstLeadingBit(-arg_1.a.zy)));
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1085f - 1164f), _wgslsmith_f_op_f32(abs(-769f))))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_2(u_input.a.xx, vec2<f32>(143f, 391f))))) - 557f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(u_input.a.zy, vec2<f32>(-593f, 271f))), _wgslsmith_f_op_f32(abs(-2758f)))));
    var var_4 = var_3;
    return Struct_3(vec3<i32>(1133i, arg_1.a.x, arg_1.a.x));
}

fn func_5(arg_0: Struct_3, arg_1: bool) -> Struct_4 {
    var var_0 = arg_1;
    var var_1 = Struct_4(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-445f - _wgslsmith_f_op_f32(-1948f - 664f)))))), -(~((arg_0.a.x >> (0u % 32u)) & 26015i)), Struct_2(Struct_1(u_input.a.x, u_input.a.x, !vec3<bool>(arg_1, arg_1, arg_1))), vec4<bool>(true, !select(all(vec2<bool>(false, arg_1)), !arg_1, true), arg_1, arg_1 & !(!arg_1)));
    let var_2 = arg_0;
    let var_3 = Struct_1(~_wgslsmith_dot_vec4_u32(u_input.a, select(vec4<u32>(u_input.a.x, u_input.b, 4294967295u, var_1.c.a.b), vec4<u32>(var_1.c.a.a, 39559u, 55258u, var_1.c.a.b), var_1.d.x) & _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b, var_1.c.a.a, 4294967295u, 3652u), u_input.a)), var_1.c.a.b, var_1.d.yxw);
    let var_4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a, 358f))))) + _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-475f, 1570f), vec2<f32>(-503f, var_1.a))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_1.a, var_1.a), vec2<f32>(var_1.a, var_1.a), vec2<bool>(var_3.c.x, true))))))));
    return Struct_4(var_1.a, arg_0.a.x, var_1.c, var_1.d);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(func_4(select(!select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false)), !select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true), true), !select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false))), func_1(~_wgslsmith_mod_vec3_i32(vec3<i32>(-5922i, -1i, -15924i), vec3<i32>(25693i, 39896i, 1i)), 1i, (u_input.b <= 4294967295u) || false, -865f)), true);
    var var_1 = func_5(Struct_3(vec3<i32>(0i, -2147483647i, func_4(var_0.d, Struct_3(vec3<i32>(-2147483647i, var_0.b, var_0.b))).a.x) | (min(vec3<i32>(var_0.b, var_0.b, -1i), vec3<i32>(-1i, 45570i, var_0.b)) & (vec3<i32>(var_0.b, 11481i, var_0.b) >> (u_input.a.wzx % vec3<u32>(32u))))), !all(vec3<bool>(true, true, all(vec2<bool>(var_0.d.x, var_0.d.x))))).c.a.c.xy;
    let var_2 = _wgslsmith_div_f32(var_0.a, _wgslsmith_f_op_f32(func_3()));
    var_1 = select(!var_0.c.a.c.yy, select(var_0.c.a.c.xz, !select(select(var_0.d.zy, vec2<bool>(true, var_0.c.a.c.x), var_0.c.a.c.zx), vec2<bool>(var_0.c.a.c.x, true), var_0.a <= -606f), func_5(func_1(~vec3<i32>(var_0.b, var_0.b, var_0.b), ~var_0.b, !var_1.x, 943f), !all(var_0.d)).d.zx), !var_0.d.zy);
    var var_3 = func_5(func_1(countOneBits(vec3<i32>(-1i) * -vec3<i32>(-36413i, var_0.b, -1i)), ~func_1(vec3<i32>(6234i, var_0.b, 2147483647i), -var_0.b, var_0.c.a.c.x, -1181f).a.x, all(select(!var_0.c.a.c.xy, !var_0.d.wx, true)), _wgslsmith_f_op_f32(func_2(u_input.a.yy, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1901f, 595f) * vec2<f32>(1000f, var_2)))))), (func_5(Struct_3(vec3<i32>(-2147483647i, var_0.b, var_0.b)), true || var_1.x).c.a.c.x || (_wgslsmith_sub_i32(var_0.b, var_0.b) > _wgslsmith_mod_i32(-2147483647i, 2295i))) || var_1.x).c.a;
    let var_4 = var_0.c.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec3_i32(-vec3<i32>(var_0.b, var_0.b, var_0.b), ~func_4(vec4<bool>(var_3.c.x, true, true, var_1.x), func_1(vec3<i32>(-1i, var_0.b, -12186i), var_0.b, false, var_2)).a));
}

