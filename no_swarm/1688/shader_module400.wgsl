struct Struct_1 {
    a: u32,
    b: vec4<bool>,
}

struct Struct_2 {
    a: i32,
    b: vec4<u32>,
    c: vec3<u32>,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec2<u32>,
    e: vec3<u32>,
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

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2) -> bool {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-187f, -363f, 646f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1033f, -434f, -370f))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(562f, 187f, -1171f) - vec3<f32>(-1328f, -1219f, -1076f)), vec3<f32>(300f, 507f, 1000f), false))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(775f, -597f, 210f))))), vec3<bool>(any(vec2<bool>(true, true)), select(true, all(vec4<bool>(false, false, false, true)), any(vec2<bool>(false, true))), false))));
    let var_1 = true;
    var var_2 = Struct_1(1u, !(!(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(var_1, true, var_1, true)))));
    var var_3 = Struct_1(~var_2.a, vec4<bool>(!any(vec2<bool>(var_2.b.x, true)), false, var_2.b.x, true));
    var_2 = Struct_1(_wgslsmith_dot_vec3_u32((~arg_0.c | vec3<u32>(u_input.a, 11011u, var_2.a)) << (_wgslsmith_add_vec3_u32(~arg_0.c, abs(vec3<u32>(0u, var_2.a, arg_0.b.x))) % vec3<u32>(32u)), arg_0.c), vec4<bool>(var_1, all(!var_2.b.zx), u_input.c <= _wgslsmith_sub_i32(1i ^ arg_0.a, countOneBits(u_input.c)), select(false, var_1 | select(true, var_2.b.x, true), !var_3.b.x)));
    return var_1;
}

fn func_2(arg_0: i32, arg_1: vec4<f32>, arg_2: Struct_2) -> vec4<bool> {
    let var_0 = select(vec2<bool>(false, !(_wgslsmith_f_op_f32(594f - arg_1.x) >= _wgslsmith_div_f32(158f, -112f))), !select(vec2<bool>(252f < arg_1.x, any(vec4<bool>(true, false, false, false))), vec2<bool>(true, true), true), vec2<bool>(true, true));
    var var_1 = Struct_2(31208i, arg_2.b, arg_2.b.yxx, arg_2.d);
    let var_2 = all(var_0);
    var_1 = arg_2;
    var var_3 = Struct_1(var_1.b.x, select(select(!vec4<bool>(var_2, var_2, var_2, true), vec4<bool>(134f < arg_1.x, false, !var_2, !var_2), true), select(select(!vec4<bool>(var_0.x, var_0.x, false, true), !vec4<bool>(var_2, var_0.x, var_2, false), select(vec4<bool>(true, var_2, true, var_0.x), vec4<bool>(true, var_0.x, false, var_2), vec4<bool>(true, var_2, false, var_0.x))), vec4<bool>(arg_2.b.x >= arg_2.b.x, true, true, all(vec4<bool>(false, var_0.x, var_2, false))), !(!vec4<bool>(var_2, true, var_2, false))), true));
    return vec4<bool>(true, select(!var_3.b.x, select(-9066i, 1i, true) > arg_2.a, var_3.b.x), !(!var_0.x & true), !func_3(Struct_2(_wgslsmith_clamp_i32(0i, -19776i, arg_2.d.x), vec4<u32>(u_input.a, 19595u, 35103u, var_1.b.x), ~vec3<u32>(1u, 4294967295u, var_3.a), _wgslsmith_sub_vec2_i32(vec2<i32>(arg_2.d.x, 2147483647i), vec2<i32>(u_input.b, 43511i)))));
}

fn func_4(arg_0: i32, arg_1: Struct_1) -> Struct_2 {
    let var_0 = all(vec4<bool>(!all(vec3<bool>(arg_1.b.x, arg_1.b.x, true)), func_3(Struct_2(u_input.b, vec4<u32>(u_input.a, arg_1.a, arg_1.a, arg_1.a), vec3<u32>(u_input.a, u_input.a, arg_1.a), vec2<i32>(arg_0, arg_0))), false, arg_1.b.x)) & true;
    var var_1 = vec4<u32>(arg_1.a >> (14698u % 32u), ~_wgslsmith_mult_u32(4294967295u, 0u), reverseBits(4294967295u) & ~(~(u_input.a >> (arg_1.a % 32u))), ~15770u | u_input.a);
    var_1 = ~vec4<u32>(arg_1.a, u_input.a, reverseBits(2905u), ~abs(arg_1.a));
    let var_2 = Struct_1(firstLeadingBit(_wgslsmith_clamp_u32(firstLeadingBit(max(1u, 39675u)), 22851u, ~8410u)), func_2(~1i, _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1f, _wgslsmith_div_f32(549f, -300f), -1361f, _wgslsmith_f_op_f32(sign(-656f))))), Struct_2(1i, vec4<u32>(0u, abs(1u), 5233u, 0u), var_1.yyy, -(vec2<i32>(-2147483647i, 2147483647i) & vec2<i32>(u_input.b, 61302i)))));
    var var_3 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-315f, -139f))))))));
    return Struct_2(arg_0, abs(min(~vec4<u32>(var_1.x, 1u, 19110u, 59798u), select(~vec4<u32>(5397u, 16876u, 22298u, var_1.x), vec4<u32>(3647u, 4294967295u, 1u, var_2.a), all(vec2<bool>(var_2.b.x, false))))), vec3<u32>(~abs(4294967295u) ^ _wgslsmith_mult_u32(_wgslsmith_sub_u32(73159u, var_1.x), var_2.a << (44400u % 32u)), reverseBits(0u), min(arg_1.a, var_2.a ^ abs(var_2.a))), vec2<i32>(-1i, arg_0));
}

fn func_1(arg_0: f32, arg_1: vec4<f32>, arg_2: vec2<bool>, arg_3: u32) -> vec4<u32> {
    var var_0 = u_input.b;
    let var_1 = func_4(min(u_input.c, abs(_wgslsmith_clamp_i32(23675i, -2042i, 2147483647i)) | firstLeadingBit(u_input.b)), Struct_1(arg_3, select(!(!vec4<bool>(false, arg_2.x, arg_2.x, true)), select(!vec4<bool>(arg_2.x, arg_2.x, true, true), !vec4<bool>(arg_2.x, arg_2.x, false, arg_2.x), func_2(u_input.c, vec4<f32>(-1000f, arg_1.x, 120f, -1115f), Struct_2(2147483647i, vec4<u32>(78800u, arg_3, 62557u, 16557u), vec3<u32>(21356u, arg_3, 19838u), vec2<i32>(u_input.b, u_input.c)))), select(select(vec4<bool>(false, false, arg_2.x, true), vec4<bool>(arg_2.x, arg_2.x, arg_2.x, arg_2.x), arg_2.x), select(vec4<bool>(arg_2.x, true, true, false), vec4<bool>(true, arg_2.x, arg_2.x, arg_2.x), vec4<bool>(arg_2.x, arg_2.x, false, false)), u_input.c <= u_input.c))));
    let var_2 = func_4(reverseBits(reverseBits(_wgslsmith_sub_i32(var_1.a, ~15455i))), Struct_1(u_input.a, vec4<bool>(true, true, false, !all(vec3<bool>(true, false, false)))));
    var_0 = 580i;
    var var_3 = _wgslsmith_mult_vec2_i32(abs(abs(-var_1.d)) ^ abs(~(-vec2<i32>(var_2.d.x, -1i))), var_2.d);
    return ~select(vec4<u32>(~max(arg_3, u_input.a), ~(~arg_3), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, arg_3, var_1.b.x), var_2.b.zxw), _wgslsmith_clamp_u32(arg_3, var_2.b.x, var_1.b.x) & 72071u), var_1.b, func_2(_wgslsmith_mod_i32(-var_1.d.x, var_3.x), _wgslsmith_f_op_vec4_f32(-arg_1), Struct_2(min(var_1.d.x, var_1.a), vec4<u32>(u_input.a, var_1.b.x, 4294967295u, arg_3) << (var_1.b % vec4<u32>(32u)), var_1.c, min(vec2<i32>(2147483647i, u_input.c), var_2.d))));
}

fn func_5(arg_0: u32, arg_1: Struct_2) -> Struct_2 {
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 0i;
    let var_1 = func_5(4444u, Struct_2(~firstLeadingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, u_input.b), vec2<i32>(var_0, 42205i))), func_1(-341f, vec4<f32>(-1091f, 1472f, 1263f, -832f), select(vec2<bool>(false, false), vec2<bool>(false, false), true), u_input.a ^ 0u) & ~(~vec4<u32>(u_input.a, u_input.a, 33328u, 86510u)), ~vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 93836u), vec2<u32>(u_input.a, u_input.a)), _wgslsmith_div_u32(u_input.a, u_input.a), 1u >> (u_input.a % 32u)), vec2<i32>(_wgslsmith_clamp_i32(-2147483647i, var_0, -408i), max(-15045i, -u_input.c))));
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(551f, -566f, 1231f, -417f))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-335f, 281f, -575f, -811f), vec4<f32>(-935f, 1000f, -192f, 1795f), vec4<bool>(true, false, false, true)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1450f, -833f, -584f, 1133f), vec4<f32>(-759f, -262f, -1253f, -1355f)) * _wgslsmith_div_vec4_f32(vec4<f32>(1685f, -1179f, 2520f, 913f), vec4<f32>(2089f, -302f, -145f, 603f)))) * vec4<f32>(-1238f, 317f, _wgslsmith_f_op_f32(f32(-1f) * -984f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(530f * -698f))))));
    let var_3 = any(vec3<bool>(all(func_2(-u_input.c, _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, -1985f, -411f, 1163f)), var_1)), true, any(vec3<bool>(true, var_0 >= u_input.b, var_2.x > 946f))));
    var var_4 = Struct_1(u_input.a | firstTrailingBit(var_1.b.x), func_2(~abs(u_input.c), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1389f), _wgslsmith_f_op_f32(sign(642f)), _wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(var_2.x * _wgslsmith_f_op_f32(round(1156f)))), var_1));
    var_4 = Struct_1(~4294967295u, !(!select(func_2(-45965i, vec4<f32>(1052f, var_2.x, 570f, var_2.x), var_1), vec4<bool>(var_3, true, false, var_3), vec4<bool>(var_4.b.x, var_4.b.x, var_3, true))));
    let var_5 = Struct_2(min(var_1.a, _wgslsmith_sub_i32(func_5(21076u, Struct_2(9382i, var_1.b, vec3<u32>(var_4.a, 42889u, var_4.a), vec2<i32>(u_input.b, var_1.a))).a >> (var_1.c.x % 32u), _wgslsmith_mod_i32(u_input.b, 10547i) >> (~u_input.a % 32u))), _wgslsmith_sub_vec4_u32(select(var_1.b << (vec4<u32>(var_1.c.x, 9387u, u_input.a, 56623u) % vec4<u32>(32u)), ~(~vec4<u32>(var_4.a, var_4.a, u_input.a, 12425u)), false), var_1.b), abs(~min(abs(vec3<u32>(var_4.a, 80388u, var_1.c.x)), var_1.b.xxy)), -var_1.d);
    var_4 = Struct_1(9354u, var_4.b);
    let var_6 = -(~_wgslsmith_clamp_i32(func_5(reverseBits(1u), func_4(1i, Struct_1(var_1.c.x, var_4.b))).d.x, abs(2147483647i), 65674i));
    let x = u_input.a;
    s_output = StorageBuffer(0u, var_0, ~_wgslsmith_div_i32(~0i, 55410i), vec2<u32>(1u >> ((_wgslsmith_sub_u32(59288u, 14884u) & var_4.a) % 32u), var_4.a), var_5.b.yyz);
}

