struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 2147483647i;

var<private> global1: f32 = -2376f;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec4<u32>, arg_2: Struct_2, arg_3: Struct_1) -> i32 {
    global0 = -(_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(-arg_0, arg_0 >> (arg_1.xxx % vec3<u32>(32u))), _wgslsmith_sub_vec3_i32(arg_0, vec3<i32>(arg_3.a, arg_3.a, arg_0.x))) | arg_3.a);
    let var_0 = Struct_2(arg_2.c, ~(~vec2<i32>(-arg_3.a, ~arg_3.a)), arg_3);
    var var_1 = arg_2;
    var var_2 = firstLeadingBit(41857u);
    var_1 = arg_2;
    return -1i;
}

fn func_2() -> u32 {
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(606f - 1055f)));
    let var_0 = Struct_1(_wgslsmith_dot_vec3_i32(-abs(reverseBits(vec3<i32>(2147483647i, 2147483647i, -25018i))), vec3<i32>(18169i, -67406i, _wgslsmith_add_i32(1i, func_3(vec3<i32>(-29225i, 7913i, 993i), vec4<u32>(u_input.b, 3168u, 1u, u_input.c), Struct_2(Struct_1(29266i), vec2<i32>(2147483647i, 6054i), Struct_1(-17677i)), Struct_1(17419i))))));
    global0 = var_0.a;
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(836f)) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -850f) - _wgslsmith_div_f32(-377f, 1280f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(-1000f, 415f), _wgslsmith_div_f32(-1080f, -1948f)) + -137f))));
    let var_1 = 0i;
    return u_input.d;
}

fn func_4(arg_0: Struct_1, arg_1: vec3<u32>) -> Struct_1 {
    let var_0 = select(vec4<bool>(true, true, true, true), !(!select(select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false)), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false))), select(vec4<bool>(arg_0.a > abs(-10021i), false, true, !(4294967295u >= arg_1.x)), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true)));
    let var_1 = Struct_1(~(-arg_0.a));
    let var_2 = arg_0.a;
    let var_3 = countOneBits(vec3<i32>(2849i, _wgslsmith_sub_i32(~1i, abs(var_1.a)), arg_0.a)) ^ (vec3<i32>(-1i) * -(~vec3<i32>(arg_0.a, var_2, arg_0.a)));
    var var_4 = Struct_1(_wgslsmith_sub_i32(-1i, ~2147483647i << (_wgslsmith_mod_u32(~35057u, u_input.e) % 32u)));
    return Struct_1(-1i);
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    global1 = -710f;
    var var_0 = Struct_2(Struct_1(arg_0.a), (_wgslsmith_add_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(-1i, 11176i), vec2<i32>(arg_0.a, 0i)), vec2<i32>(arg_0.a, 1i)) << (_wgslsmith_add_vec2_u32(reverseBits(vec2<u32>(0u, 34007u)), abs(vec2<u32>(u_input.b, 19731u))) % vec2<u32>(32u))) << (reverseBits(vec2<u32>(~76022u, 0u)) % vec2<u32>(32u)), Struct_1(_wgslsmith_dot_vec2_i32(-(~vec2<i32>(-797i, arg_0.a)), abs(vec2<i32>(arg_0.a, arg_0.a)))));
    global0 = ~_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_mult_i32(arg_0.a, 24244i), _wgslsmith_div_i32(arg_0.a, arg_0.a), -2147483647i), _wgslsmith_div_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(var_0.c.a, var_0.a.a, arg_0.a), vec3<i32>(2147483647i, 26621i, 1i)), min(vec3<i32>(arg_0.a, -2147483647i, 0i), vec3<i32>(arg_0.a, -13973i, 19372i)))), 1i);
    var_0 = Struct_2(func_4(var_0.c, countOneBits(~abs(vec3<u32>(u_input.a, 86845u, u_input.d)))), vec2<i32>(var_0.b.x, firstTrailingBit(-(-63742i >> (u_input.b % 32u)))), func_4(func_4(func_4(var_0.a, vec3<u32>(u_input.c, 1u, u_input.c)), ~(vec3<u32>(0u, u_input.d, u_input.c) << (vec3<u32>(u_input.a, u_input.d, u_input.b) % vec3<u32>(32u)))), ~(~vec3<u32>(29663u, u_input.c, 0u) << (~vec3<u32>(u_input.b, 54467u, u_input.e) % vec3<u32>(32u)))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(549f, 1645f)))))));
    return arg_0;
}

fn func_1(arg_0: u32) -> i32 {
    let var_0 = ~(-32714i);
    var var_1 = vec4<bool>(all(!select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), false), true)), false, true, true);
    let var_2 = func_5(func_4(Struct_1(var_0), _wgslsmith_sub_vec3_u32(vec3<u32>(0u, func_2(), firstTrailingBit(u_input.a)), ~(~vec3<u32>(arg_0, u_input.c, arg_0)))));
    var var_3 = Struct_1(abs(reverseBits(_wgslsmith_clamp_i32(~var_0, var_0, abs(7105i)))));
    let var_4 = Struct_2(var_2, ~select(vec2<i32>(firstLeadingBit(var_2.a), _wgslsmith_dot_vec2_i32(vec2<i32>(var_3.a, -2147483647i), vec2<i32>(var_3.a, 7405i))), vec2<i32>(var_2.a, var_2.a) >> ((vec2<u32>(1u, u_input.b) >> (vec2<u32>(111756u, 1u) % vec2<u32>(32u))) % vec2<u32>(32u)), false & all(vec2<bool>(true, false))), var_2);
    return ~1i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~(~(~1u)));
    global0 = -(i32(-1i) * -1i);
    global1 = _wgslsmith_div_f32(1155f, _wgslsmith_f_op_f32(f32(-1f) * -1050f));
    let var_1 = vec2<bool>(any(select(select(vec2<bool>(false, false), vec2<bool>(false, false), true), vec2<bool>(any(vec4<bool>(false, false, false, false)), false), vec2<bool>(true, true))), any(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false))));
    global1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -266f)))));
    var var_2 = _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(538f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-204f - -1218f) + _wgslsmith_f_op_f32(max(-278f, 567f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(590f + -2046f)))));
    var var_3 = _wgslsmith_mod_u32(1133u, ~firstLeadingBit(59268u));
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -657f) + 688f);
    let x = u_input.a;
    s_output = StorageBuffer(func_1(var_0), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, _wgslsmith_add_u32(u_input.e, u_input.a), 4294967295u) ^ (vec3<u32>(4294967295u, 4294967295u, u_input.d) & vec3<u32>(var_0, u_input.b, 15727u)), ~(~vec3<u32>(75787u, 39675u, 0u))), -2147483647i);
}

