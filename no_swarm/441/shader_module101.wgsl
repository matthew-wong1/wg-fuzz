struct Struct_1 {
    a: i32,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: f32) -> vec2<i32> {
    var var_0 = _wgslsmith_f_op_f32(-arg_0);
    return abs(_wgslsmith_mult_vec2_i32(u_input.a.wy, vec2<i32>(0i, 0i)));
}

fn func_4(arg_0: vec2<i32>, arg_1: bool, arg_2: vec4<bool>, arg_3: f32) -> vec2<i32> {
    let var_0 = arg_0.x;
    let var_1 = any(arg_2.xw);
    var var_2 = vec4<bool>(var_1, any(vec3<bool>(22879i == u_input.a.x, any(arg_2.wz), false)) | any(arg_2), any(select(select(!arg_2, !arg_2, vec4<bool>(false, true, true, arg_2.x)), vec4<bool>(arg_1, arg_1, false, var_1), !select(arg_2, arg_2, arg_2))), !arg_1);
    var var_3 = 486f;
    var_3 = _wgslsmith_f_op_f32(min(arg_3, arg_3));
    return select(vec2<i32>(var_0, u_input.a.x), firstTrailingBit(firstTrailingBit(arg_0)), !vec2<bool>(true, var_1));
}

fn func_2(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: u32) -> vec2<f32> {
    var var_0 = select(_wgslsmith_dot_vec3_i32(vec3<i32>(69049i, arg_0.a, _wgslsmith_sub_i32(-15062i, arg_0.a)), -vec3<i32>(0i, -2147483647i, -1i) ^ vec3<i32>(4242i, arg_0.a, 0i)) & 2147483647i, _wgslsmith_dot_vec3_i32((-u_input.a.xyy >> (u_input.b.wwx % vec3<u32>(32u))) | _wgslsmith_sub_vec3_i32(select(vec3<i32>(u_input.a.x, arg_0.a, arg_0.a), u_input.a.zwz, vec3<bool>(true, true, false)), reverseBits(vec3<i32>(u_input.a.x, -27448i, -22563i))), u_input.a.ywy), true);
    var_0 = 2147483647i;
    let var_1 = Struct_2(Struct_1(_wgslsmith_dot_vec2_i32(func_4(func_3(-898f), select(true, false, true), vec4<bool>(false, false, true, true), -511f), reverseBits(vec2<i32>(32709i, -2147483647i))), arg_2), arg_0, Struct_1(u_input.a.x, ~countOneBits(_wgslsmith_add_u32(u_input.b.x, 6506u))));
    var_0 = func_3(1181f).x | ~var_1.c.a;
    var var_2 = vec2<u32>(16486u, ~arg_2);
    return _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(1293f, _wgslsmith_f_op_f32(select(205f, -207f, true)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1210f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(791f, 173f), vec2<f32>(984f, 436f), vec2<bool>(true, true))) + _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(302f, 876f)))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(1180f, 2836f) + vec2<f32>(185f, 540f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-872f, 1366f))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1130f, 300f)))))));
}

fn func_5(arg_0: vec4<i32>, arg_1: vec2<f32>, arg_2: vec2<bool>, arg_3: Struct_1) -> Struct_2 {
    let var_0 = arg_3.a;
    let var_1 = _wgslsmith_sub_i32(_wgslsmith_clamp_i32(-1i, func_3(_wgslsmith_f_op_f32(round(arg_1.x))).x, var_0), -36437i) < 0i;
    return Struct_2(arg_3, arg_3, arg_3);
}

fn func_6(arg_0: vec3<u32>, arg_1: vec3<u32>, arg_2: Struct_2) -> i32 {
    let var_0 = 1u;
    let var_1 = Struct_2(Struct_1(~_wgslsmith_mult_i32(~(-1i), u_input.a.x), arg_1.x), Struct_1(u_input.a.x, arg_2.b.b), func_5(reverseBits(vec4<i32>(arg_2.c.a, abs(arg_2.c.a), _wgslsmith_div_i32(arg_2.b.a, arg_2.c.a), -7768i)), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1150f, 987f), vec2<f32>(-1841f, 1380f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-594f, 671f) - vec2<f32>(-1000f, -876f)))))), !(!select(vec2<bool>(false, true), vec2<bool>(false, true), true)), Struct_1(u_input.a.x, ~(~var_0))).b);
    let var_2 = 43476u;
    var var_3 = 1u;
    let var_4 = Struct_2(var_1.a, Struct_1(_wgslsmith_mult_i32(-26123i, -23503i), var_0), var_1.b);
    return var_4.a.a;
}

fn func_1() -> Struct_2 {
    var var_0 = -17103i;
    let var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1556f) * _wgslsmith_f_op_f32(sign(219f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(-920f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(628f, -382f))), _wgslsmith_div_f32(-556f, -528f)))));
    var_0 = func_6(~vec3<u32>(u_input.b.x, 1u, u_input.b.x), ~(~vec3<u32>(~4294967295u, ~4294967295u, countOneBits(u_input.b.x))), func_5(abs(_wgslsmith_div_vec4_i32(u_input.a, vec4<i32>(-19420i, -10687i, u_input.a.x, u_input.a.x))) << (~(u_input.b & vec4<u32>(28508u, u_input.b.x, 47932u, u_input.b.x)) % vec4<u32>(32u)), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(func_2(Struct_1(2147483647i, 4294967295u), vec2<u32>(u_input.b.x, 46862u), 83658u | u_input.b.x)))), select(select(vec2<bool>(false, true), select(vec2<bool>(false, true), vec2<bool>(false, false), true), true), vec2<bool>(true, select(true, false, true)), _wgslsmith_f_op_f32(step(-1352f, var_1)) < _wgslsmith_f_op_f32(step(var_1, 1359f))), Struct_1(u_input.a.x | 18447i, firstTrailingBit(_wgslsmith_mod_u32(u_input.b.x, 20403u)))));
    var var_2 = countOneBits(1u | ~(~u_input.b.x));
    var_2 = u_input.b.x;
    return Struct_2(Struct_1(-6174i, ~(~22478u)), Struct_1(u_input.a.x, 0u), Struct_1(u_input.a.x, _wgslsmith_add_u32(~_wgslsmith_add_u32(1u, u_input.b.x), 13352u)));
}

fn func_7(arg_0: Struct_2, arg_1: Struct_2) -> Struct_1 {
    var var_0 = Struct_1(2147483647i, ~((0u | arg_1.c.b) ^ 93220u));
    let var_1 = Struct_2(func_5(u_input.a, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1101f, -618f)) - vec2<f32>(1000f, 1592f)))), select(select(vec2<bool>(false, true), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true)), select(vec2<bool>(true, false), vec2<bool>(true, false), true)), vec2<bool>(true, true), true), func_5(_wgslsmith_div_vec4_i32(firstTrailingBit(u_input.a), _wgslsmith_mult_vec4_i32(u_input.a, vec4<i32>(-42833i, -2147483647i, -1i, arg_0.a.a))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(229f, -816f) - vec2<f32>(-566f, -840f))), vec2<bool>(true, all(vec4<bool>(true, true, false, true))), arg_0.a).b).a, func_5(_wgslsmith_mult_vec4_i32(-u_input.a, select(u_input.a, vec4<i32>(34484i, -14281i, -1i, arg_1.b.a), false) >> (vec4<u32>(0u, arg_0.c.b, arg_0.c.b, 69275u) % vec4<u32>(32u))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(606f, 1000f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) * vec2<f32>(-564f, 201f))), vec2<bool>(true, true), func_1().a).a, func_1().a);
    var_0 = Struct_1(arg_1.b.a, countOneBits(~(~var_0.b)));
    let var_2 = var_1;
    var_0 = func_1().b;
    return func_5(reverseBits((-vec4<i32>(var_0.a, var_2.a.a, u_input.a.x, var_1.c.a) & max(vec4<i32>(1i, -38835i, u_input.a.x, 0i), u_input.a)) << (u_input.b % vec4<u32>(32u))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1000f, 1436f, false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-457f, -523f))))), vec2<bool>(!(!(1u > var_1.a.b)), !(~arg_0.c.a == _wgslsmith_mod_i32(-1i, var_2.a.a))), Struct_1(arg_0.c.a, 106790u)).b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstLeadingBit(-u_input.a.yy);
    var var_1 = (u_input.b.x & 0u) >> (abs(~4294967295u) % 32u);
    let var_2 = 0u;
    let var_3 = Struct_2(func_7(func_1(), func_5(_wgslsmith_div_vec4_i32(-u_input.a, _wgslsmith_sub_vec4_i32(u_input.a, vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -14416i))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1000f, -661f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 709f)))), select(select(vec2<bool>(false, false), vec2<bool>(false, false), false), vec2<bool>(false, true), vec2<bool>(false, true)), Struct_1(u_input.a.x, 1u))), Struct_1(-u_input.a.x | ((u_input.a.x ^ -2147483647i) ^ u_input.a.x), ~_wgslsmith_mod_u32(~u_input.b.x, ~20958u)), func_1().b);
    var var_4 = var_3.c.b;
    let var_5 = func_1();
    var_4 = max(~(~var_3.a.b), firstTrailingBit(_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(6423u, u_input.b.x, var_2), 1u, func_5(u_input.a, vec2<f32>(-1061f, -1824f), vec2<bool>(true, false), var_3.c).c.b) | 1u));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, ~var_3.a.b, var_2), vec3<u32>(22155u, abs(0u), _wgslsmith_dot_vec2_u32(vec2<u32>(var_5.c.b, 4739u), u_input.b.xx))), var_2), ~(~func_5(vec4<i32>(u_input.a.x, 1i, var_5.a.a, var_0.x), vec2<f32>(114f, 156f), vec2<bool>(false, true), var_5.b).a.b) << (func_7(var_3, Struct_2(Struct_1(-2583i, 33176u), func_5(u_input.a, vec2<f32>(625f, -2077f), vec2<bool>(false, false), var_5.c).b, func_5(vec4<i32>(-27493i, -1i, -39297i, var_3.c.a), vec2<f32>(735f, -305f), vec2<bool>(false, true), Struct_1(var_3.b.a, var_5.b.b)).c)).b % 32u), ~_wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(_wgslsmith_add_i32(77109i, 0i), ~u_input.a.x, func_1().a.a, _wgslsmith_mult_i32(u_input.a.x, var_3.c.a))));
}

