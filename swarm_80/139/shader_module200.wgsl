struct Struct_1 {
    a: vec3<i32>,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec2<f32>,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3() -> u32 {
    let var_0 = 0i;
    var var_1 = vec4<f32>(-753f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(961f)))) + _wgslsmith_f_op_f32(f32(-1f) * -642f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(abs(-1019f)))))));
    var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_1.x, var_1.x, var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1000f)))))));
    var_1 = _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(select(-243f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.x, 1000f)), true | (u_input.c > 4294967295u))), var_1.x, -381f, 1000f)));
    var var_2 = u_input.b;
    return select(u_input.b, 13037u, true);
}

fn func_2(arg_0: Struct_1, arg_1: bool) -> u32 {
    var var_0 = any(!select(arg_0.b, vec2<bool>(true, true), select(vec2<bool>(arg_0.b.x, false), arg_0.b, vec2<bool>(true, true))));
    var_0 = !(4294967295u != _wgslsmith_dot_vec3_u32(firstTrailingBit(~vec3<u32>(0u, 80503u, 29591u)), vec3<u32>(4294967295u, 64530u, 4180u ^ u_input.b)));
    var var_1 = arg_0;
    let var_2 = 8857u;
    var var_3 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(890f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)) + _wgslsmith_f_op_f32(-1919f + -511f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -372f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-181f * -798f))))));
    return func_3();
}

fn func_1(arg_0: i32, arg_1: vec4<f32>, arg_2: u32, arg_3: vec2<i32>) -> vec2<bool> {
    var var_0 = vec4<bool>(_wgslsmith_mult_u32(min(func_2(Struct_1(vec3<i32>(-2147483647i, u_input.d.x, -60723i), vec2<bool>(false, false)), false), abs(arg_2)), 25531u) >= ~(~4294967295u << ((18901u << (arg_2 % 32u)) % 32u)), false, (_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1337f, 1437f)) + arg_1.x) >= -810f) && all(vec3<bool>(true, false, any(vec2<bool>(false, true)))), all(vec3<bool>(true, true, true)));
    var var_1 = _wgslsmith_sub_vec3_u32(select(_wgslsmith_add_vec3_u32(reverseBits(vec3<u32>(0u, arg_2, u_input.b)), ~vec3<u32>(9681u, 4294967295u, 33271u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(90910u, arg_2, 4294967295u), vec3<u32>(1u, 11445u, u_input.b) >> (vec3<u32>(u_input.b, arg_2, u_input.c) % vec3<u32>(32u)), ~vec3<u32>(104932u, arg_2, arg_2)), select(select(var_0.zyw, vec3<bool>(var_0.x, true, true), true), select(var_0.wxw, var_0.wxx, var_0.x), var_0.x & var_0.x)) >> (_wgslsmith_mult_vec3_u32(~(vec3<u32>(u_input.b, arg_2, 0u) | vec3<u32>(1u, 0u, arg_2)), ~vec3<u32>(21638u, 26815u, u_input.b) ^ firstTrailingBit(vec3<u32>(1u, u_input.b, 36765u))) % vec3<u32>(32u)), vec3<u32>(firstTrailingBit(_wgslsmith_mult_u32(max(65182u, u_input.b), 0u)), 17861u, 4294967295u));
    var var_2 = Struct_1(-abs(_wgslsmith_mult_vec3_i32(-u_input.a, u_input.a << (vec3<u32>(1u, 4294967295u, arg_2) % vec3<u32>(32u)))), vec2<bool>(var_0.x, var_0.x));
    var_0 = vec4<bool>(true, true, false, any(select(!vec4<bool>(true, false, false, var_2.b.x), !select(vec4<bool>(false, false, var_2.b.x, var_0.x), vec4<bool>(false, var_2.b.x, true, var_2.b.x), vec4<bool>(false, var_2.b.x, var_2.b.x, false)), !any(var_0.zyx))));
    var var_3 = vec3<bool>(!var_0.x, !((u_input.b == 52120u) || all(select(var_0.yxy, vec3<bool>(true, var_2.b.x, true), var_0.xwy))), false);
    return !var_2.b;
}

fn func_4(arg_0: Struct_1, arg_1: vec2<bool>) -> Struct_1 {
    let var_0 = select(-_wgslsmith_clamp_vec2_i32(~abs(vec2<i32>(u_input.d.x, u_input.d.x)), (vec2<i32>(u_input.d.x, 5121i) ^ arg_0.a.yy) ^ (u_input.a.yx | u_input.a.zx), ~arg_0.a.yz), firstTrailingBit(select(arg_0.a.yy, _wgslsmith_sub_vec2_i32(_wgslsmith_div_vec2_i32(u_input.d, vec2<i32>(u_input.a.x, u_input.a.x)), u_input.a.yz), ~u_input.c >= u_input.b)), true);
    var var_1 = select(!select(!(!vec4<bool>(arg_0.b.x, true, arg_0.b.x, false)), select(select(vec4<bool>(true, arg_1.x, false, arg_0.b.x), vec4<bool>(arg_1.x, arg_1.x, true, arg_0.b.x), vec4<bool>(arg_1.x, arg_1.x, true, true)), !vec4<bool>(true, arg_0.b.x, arg_1.x, arg_0.b.x), select(vec4<bool>(arg_1.x, arg_1.x, arg_1.x, true), vec4<bool>(true, arg_1.x, true, arg_1.x), true)), select(!vec4<bool>(false, arg_1.x, true, true), select(vec4<bool>(false, arg_0.b.x, true, arg_0.b.x), vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false)), u_input.d.x != 2147483647i)), vec4<bool>(arg_1.x, _wgslsmith_f_op_f32(f32(-1f) * -116f) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-384f)) * _wgslsmith_f_op_f32(f32(-1f) * -2692f)), true, true), true == !all(!arg_1));
    let var_2 = 1560f;
    var var_3 = -_wgslsmith_div_i32(~19931i, _wgslsmith_mult_i32(0i, countOneBits(var_0.x)));
    let var_4 = firstTrailingBit(u_input.a);
    return Struct_1(firstLeadingBit(select(arg_0.a & arg_0.a, u_input.a, select(vec3<bool>(true, arg_0.b.x, true), vec3<bool>(true, arg_0.b.x, var_1.x), !arg_1.x))), !(!select(var_1.xz, select(vec2<bool>(true, arg_0.b.x), vec2<bool>(false, true), true), select(var_1.yx, vec2<bool>(true, arg_1.x), false))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = (~select(u_input.a, -vec3<i32>(u_input.d.x, 76341i, u_input.d.x), true) & (vec3<i32>(18170i, 2147483647i, -25705i) | _wgslsmith_mod_vec3_i32(max(vec3<i32>(u_input.a.x, u_input.d.x, 4809i), vec3<i32>(u_input.d.x, u_input.a.x, 27674i)), ~vec3<i32>(u_input.d.x, 2147483647i, 73584i)))) >> (_wgslsmith_div_vec3_u32(vec3<u32>(~max(u_input.c, u_input.b), _wgslsmith_div_u32(u_input.b, u_input.c) & (u_input.c >> (u_input.b % 32u)), u_input.c), ~(~vec3<u32>(u_input.b, 8614u, u_input.b)) | abs(_wgslsmith_clamp_vec3_u32(vec3<u32>(47919u, u_input.b, 8435u), vec3<u32>(14325u, u_input.c, 0u), vec3<u32>(u_input.c, u_input.c, 46208u)))) % vec3<u32>(32u));
    var var_1 = Struct_1(-max(var_0 << (_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b, 10634u, u_input.b), vec3<u32>(u_input.c, 4818u, u_input.b)) % vec3<u32>(32u)), ~var_0), !(!(!select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false)))));
    var var_2 = func_4(Struct_1(-vec3<i32>(0i, ~u_input.d.x, -15096i), func_1(-var_0.x, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-423f, -517f, 1275f, -704f))))), _wgslsmith_add_u32(abs(u_input.b), max(4294967295u, u_input.b)), u_input.d)), select(var_1.b, func_1(i32(-1i) * -2147483647i, vec4<f32>(1f, -539f, _wgslsmith_f_op_f32(-698f * -300f), -714f), ~u_input.c, var_1.a.xy), false));
    let var_3 = func_4(func_4(Struct_1(countOneBits(vec3<i32>(2147483647i, var_2.a.x, var_2.a.x)), vec2<bool>(var_1.b.x, true)), select(vec2<bool>(true, false), var_1.b, func_4(Struct_1(u_input.a, vec2<bool>(true, false)), var_1.b).b)), select(func_1(var_1.a.x, vec4<f32>(469f, _wgslsmith_f_op_f32(step(-277f, 406f)), _wgslsmith_f_op_f32(f32(-1f) * -1081f), _wgslsmith_div_f32(1184f, -388f)), ~u_input.b, select(_wgslsmith_sub_vec2_i32(vec2<i32>(-9304i, var_1.a.x), vec2<i32>(var_0.x, -41767i)), -u_input.a.xy, true)), vec2<bool>(false, any(select(vec3<bool>(var_2.b.x, var_1.b.x, true), vec3<bool>(var_2.b.x, false, var_2.b.x), vec3<bool>(false, var_1.b.x, false)))), var_1.b.x));
    var_1 = var_3;
    var_1 = func_4(Struct_1(~vec3<i32>(var_1.a.x, -20875i, -58641i) ^ vec3<i32>(firstTrailingBit(u_input.d.x), select(var_1.a.x, var_0.x, false), _wgslsmith_dot_vec2_i32(var_3.a.yy, vec2<i32>(2147483647i, var_2.a.x))), var_2.b), !(!func_1(_wgslsmith_clamp_i32(var_1.a.x, 0i, 2147483647i), _wgslsmith_f_op_vec4_f32(vec4<f32>(1227f, 2027f, -419f, -1232f) - vec4<f32>(267f, -772f, -207f, 631f)), 70374u, vec2<i32>(var_1.a.x, var_0.x) << (vec2<u32>(27418u, 53832u) % vec2<u32>(32u)))));
    var var_4 = Struct_1(vec3<i32>(u_input.d.x, -u_input.a.x, i32(-1i) * -var_2.a.x), func_4(func_4(Struct_1(vec3<i32>(-873i, var_0.x, var_2.a.x), !vec2<bool>(true, var_2.b.x)), !(!var_2.b)), var_1.b).b);
    var_2 = Struct_1(vec3<i32>(~2147483647i, max(_wgslsmith_mod_i32(41911i, -var_0.x), var_1.a.x), abs(_wgslsmith_sub_i32(var_0.x, i32(-1i) * -1i))), vec2<bool>(!(!any(vec3<bool>(var_3.b.x, false, var_3.b.x))), any(var_1.b)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(abs(abs(9000u)), ~35877u), abs(var_4.a.xx), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-729f, -1984f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 386f) + vec2<f32>(-1161f, -1000f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-717f, 174f) * vec2<f32>(454f, -931f)))), !select(true, var_3.b.x, true))), _wgslsmith_sub_u32(u_input.b, (u_input.c << (u_input.b % 32u)) & _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, u_input.b, u_input.b), vec3<u32>(u_input.c, u_input.b, u_input.b))) | firstTrailingBit(u_input.b), firstTrailingBit(~u_input.b));
}

