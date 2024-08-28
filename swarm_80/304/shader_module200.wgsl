struct Struct_1 {
    a: vec2<f32>,
    b: u32,
    c: vec2<u32>,
    d: u32,
    e: vec4<i32>,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: u32,
    b: bool,
}

struct Struct_5 {
    a: u32,
    b: bool,
    c: vec3<f32>,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec4<u32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> i32 {
    var var_0 = -_wgslsmith_mult_vec3_i32(abs(~(~vec3<i32>(u_input.b.x, 0i, 0i))), -countOneBits(firstTrailingBit(vec3<i32>(u_input.a, -43360i, 29679i))));
    let var_1 = select((vec3<i32>(var_0.x, -2147483647i, u_input.b.x) | vec3<i32>(var_0.x, u_input.b.x, u_input.a)) >> (countOneBits(~u_input.c.xyw) % vec3<u32>(32u)), reverseBits(-abs(vec3<i32>(-14702i, -24330i, -2147483647i))), select(!select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), true), vec3<bool>(any(vec4<bool>(true, true, true, true)), u_input.c.x <= 20128u, any(vec2<bool>(true, false))), select(true, all(vec3<bool>(false, false, true)), true))) << (vec3<u32>(min(~1u, ~u_input.c.x), max(1u, firstTrailingBit(4294967295u)), abs(41760u)) % vec3<u32>(32u));
    var_0 = var_1;
    var var_2 = var_1.zx;
    let var_3 = Struct_4(_wgslsmith_clamp_u32(4294967295u, 1919u, reverseBits(u_input.c.x << (firstTrailingBit(u_input.e) % 32u))), any(vec4<bool>(!select(true, false, false), any(vec3<bool>(true, false, false)) | all(vec3<bool>(true, true, true)), false, any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)))));
    return var_1.x;
}

fn func_4(arg_0: f32, arg_1: vec2<bool>, arg_2: vec2<u32>, arg_3: i32) -> vec2<bool> {
    let var_0 = Struct_3(~arg_2.x);
    var var_1 = 41363u;
    return arg_1;
}

fn func_2(arg_0: Struct_2, arg_1: Struct_3, arg_2: bool, arg_3: u32) -> vec4<bool> {
    var var_0 = arg_0;
    var_0 = arg_0;
    var_0 = Struct_2(vec2<i32>(-arg_0.a.x, -52012i));
    let var_1 = arg_0;
    var var_2 = select(select(select(func_4(215f, !vec2<bool>(arg_2, arg_2), countOneBits(vec2<u32>(arg_3, 0u)), func_3()), !(!vec2<bool>(arg_2, arg_2)), vec2<bool>(true, true)), vec2<bool>(true, any(select(vec2<bool>(true, arg_2), vec2<bool>(true, true), arg_2))), !(!(!arg_2))), !select(!func_4(-1057f, vec2<bool>(arg_2, arg_2), vec2<u32>(1u, u_input.e), arg_0.a.x), !vec2<bool>(arg_2, arg_2), false), !(!vec2<bool>(select(true, false, false), u_input.e != 1u)));
    return select(!(!vec4<bool>(arg_2, any(vec3<bool>(arg_2, var_2.x, arg_2)), var_2.x != arg_2, arg_3 != u_input.e)), !select(!select(vec4<bool>(true, arg_2, var_2.x, arg_2), vec4<bool>(arg_2, arg_2, true, false), arg_2), !(!vec4<bool>(var_2.x, var_2.x, var_2.x, false)), true), select(!vec4<bool>(var_2.x & true, !arg_2, arg_2, arg_2), !(!vec4<bool>(var_2.x, var_2.x, arg_2, true)), all(vec3<bool>(var_1.a.x <= 17328i, true, true))));
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_5) -> Struct_5 {
    var var_0 = vec2<bool>(!any(func_2(Struct_2(arg_0), Struct_3(0u), true, arg_1.a)) & arg_1.b, false);
    var var_1 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(451f + _wgslsmith_f_op_f32(arg_1.c.x * 452f)), -1000f) * _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(arg_1.d.wx)) * _wgslsmith_div_vec2_f32(arg_1.d.zw, arg_1.d.yw)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_1.d.ww) * _wgslsmith_f_op_vec2_f32(arg_1.c.yz + vec2<f32>(-367f, -1434f))))))));
    let var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -685f), _wgslsmith_f_op_f32(trunc(-979f))));
    var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-501f, 429f))), _wgslsmith_f_op_vec2_f32(abs(arg_1.d.xx))) * vec2<f32>(-1166f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1243f))));
    var var_3 = Struct_4(countOneBits(abs(~abs(4294967295u))), arg_1.b || var_0.x);
    return arg_1;
}

fn func_5(arg_0: Struct_5, arg_1: vec2<i32>) -> Struct_2 {
    var var_0 = Struct_1(arg_0.d.xx, ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.e, 55362u, arg_0.a), vec3<u32>(arg_0.a, 4294967295u, u_input.d))), _wgslsmith_mod_vec2_u32(vec2<u32>(arg_0.a, u_input.d), u_input.c.wy), _wgslsmith_dot_vec2_u32(max(_wgslsmith_div_vec2_u32(u_input.c.zw >> (vec2<u32>(u_input.c.x, arg_0.a) % vec2<u32>(32u)), vec2<u32>(arg_0.a, 22088u)), select(~vec2<u32>(u_input.c.x, 1u), u_input.c.yy, any(vec3<bool>(false, arg_0.b, true)))), _wgslsmith_add_vec2_u32(u_input.c.yw | ~vec2<u32>(u_input.d, 0u), _wgslsmith_mod_vec2_u32(abs(vec2<u32>(34552u, 65477u)), u_input.c.zx))), -(vec4<i32>(-76211i, -19488i, 22978i, -5671i) ^ _wgslsmith_div_vec4_i32(vec4<i32>(arg_1.x, -2147483647i, -33688i, 676i), vec4<i32>(-2147483647i, 18264i, arg_1.x, arg_1.x))) ^ firstLeadingBit(-_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, -2147483647i, u_input.a, u_input.b.x), vec4<i32>(u_input.a, u_input.b.x, -20989i, arg_1.x))));
    var var_1 = var_0.a;
    var var_2 = Struct_4(_wgslsmith_add_u32(firstLeadingBit(~(var_0.b & arg_0.a)), ~29358u), arg_0.b);
    var var_3 = vec3<u32>(_wgslsmith_add_u32(~19351u, arg_0.a), 60411u, u_input.d);
    var var_4 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.a))))), _wgslsmith_sub_u32(9867u, reverseBits(_wgslsmith_add_u32(0u, var_0.c.x)) | 6735u), u_input.c.zw, ~(~_wgslsmith_sub_u32(0u, var_3.x)), firstLeadingBit(vec4<i32>(492i, ~(-23918i), 1i, ~(-1i))) | min(abs(~var_0.e), abs(min(vec4<i32>(46796i, 1i, arg_1.x, var_0.e.x), var_0.e))));
    return Struct_2(var_0.e.zx);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(func_1(select(u_input.b, countOneBits(u_input.b) ^ u_input.b, vec2<bool>(true, true)), Struct_5(firstLeadingBit(1u & u_input.e), true, _wgslsmith_f_op_vec3_f32(round(vec3<f32>(1229f, -1422f, 1000f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(985f, -557f, 833f, 301f))))), -(~_wgslsmith_sub_vec2_i32(vec2<i32>(2147483647i, -30752i), u_input.b)));
    var var_1 = Struct_2(countOneBits(u_input.b));
    var var_2 = all(select(vec2<bool>(true, true), func_2(func_5(func_1(var_0.a, Struct_5(30670u, false, vec3<f32>(-943f, -867f, 490f), vec4<f32>(-951f, 1643f, -286f, 957f))), select(u_input.b, vec2<i32>(var_1.a.x, 0i), vec2<bool>(true, false))), Struct_3(_wgslsmith_mod_u32(4294967295u, u_input.e)), true, min(u_input.c.x, ~u_input.d)).wz, !vec2<bool>(func_4(-1000f, vec2<bool>(false, true), vec2<u32>(u_input.e, 7273u), var_0.a.x).x, false)));
    let var_3 = var_1.a.x;
    var_2 = true;
    var var_4 = select(true, all(vec3<bool>(any(vec2<bool>(true, true)), true, func_1(vec2<i32>(u_input.a, -8640i), func_1(var_0.a, Struct_5(4294967295u, true, vec3<f32>(-1996f, 446f, 1238f), vec4<f32>(479f, 487f, 457f, -294f)))).b)), any(!(!select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true)))));
    var var_5 = u_input.e;
    let var_6 = Struct_3(_wgslsmith_dot_vec3_u32(~u_input.c.xxy, u_input.c.wxw));
    let x = u_input.a;
    s_output = StorageBuffer(-904f, _wgslsmith_mult_i32(select(2147483647i, _wgslsmith_clamp_i32(_wgslsmith_add_i32(u_input.a, -2147483647i), -u_input.a, -11632i), !(var_6.a < var_6.a)), _wgslsmith_mult_i32(~(~(-1i)), func_3())), var_6.a);
}

