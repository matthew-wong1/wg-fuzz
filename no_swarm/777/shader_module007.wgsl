struct Struct_1 {
    a: vec2<i32>,
    b: vec2<f32>,
    c: vec3<bool>,
    d: vec4<u32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec4<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
}

struct Struct_4 {
    a: vec3<i32>,
    b: Struct_3,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: vec3<f32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 1i;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<f32>, arg_1: i32, arg_2: vec4<f32>) -> i32 {
    let var_0 = vec4<i32>(arg_1, 1i, _wgslsmith_dot_vec4_i32((vec4<i32>(-1i) * -vec4<i32>(arg_1, arg_1, arg_1, 0i)) >> (vec4<u32>(~48229u, u_input.a, 50349u, firstLeadingBit(11506u)) % vec4<u32>(32u)), abs(firstTrailingBit(vec4<i32>(arg_1, 2147483647i, arg_1, 1i) & vec4<i32>(arg_1, arg_1, arg_1, arg_1)))), countOneBits(3067i));
    var var_1 = Struct_3(Struct_2(reverseBits(20411i), Struct_1(abs(var_0.ww), _wgslsmith_f_op_vec2_f32(-arg_2.yy), select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), reverseBits(vec4<u32>(u_input.a, u_input.a, 55579u, u_input.a)) << (vec4<u32>(u_input.a, 0u, 70743u, 0u) % vec4<u32>(32u))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, 251f, -369f, arg_2.x)))) - _wgslsmith_f_op_vec4_f32(arg_2 - _wgslsmith_f_op_vec4_f32(-vec4<f32>(535f, arg_0.x, -399f, arg_2.x))))), Struct_2(_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(~vec4<i32>(var_0.x, var_0.x, arg_1, arg_1), firstTrailingBit(vec4<i32>(-1i, var_0.x, -53i, var_0.x))), ~(-vec4<i32>(var_0.x, arg_1, -2147483647i, var_0.x))), Struct_1(vec2<i32>(arg_1, 1i >> (u_input.a % 32u)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.x, 2190f)), select(select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), false), vec3<bool>(false, true, false), vec3<bool>(true, true, true)), _wgslsmith_sub_vec4_u32(select(vec4<u32>(0u, u_input.a, 71460u, 4294967295u), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), false), vec4<u32>(4294967295u, 18098u, u_input.a, u_input.a))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_2))));
    global0 = reverseBits(-_wgslsmith_sub_i32(var_0.x, arg_1));
    var_1 = Struct_3(Struct_2(_wgslsmith_mod_i32(-149i, 1i), var_1.b.b, var_1.a.c), var_1.b);
    var var_2 = var_1.a.b.d.x;
    return -_wgslsmith_dot_vec2_i32(~(var_1.a.b.a & countOneBits(var_1.a.b.a)), vec2<i32>(_wgslsmith_sub_i32(30631i, 41735i), _wgslsmith_sub_i32(var_0.x, -28066i)) & var_1.a.b.a);
}

fn func_2() -> bool {
    global0 = func_3(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1580f), _wgslsmith_f_op_f32(f32(-1f) * -424f)), 1i & ~(-2147483647i >> (_wgslsmith_add_u32(39177u, u_input.a) % 32u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(611f, -1971f, 1025f, -340f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-674f, -450f, 1400f, -1766f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(895f, -397f, 1996f, -1257f) - vec4<f32>(602f, -337f, 844f, 622f))))));
    let var_0 = select(vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(1i, 1i)) & 0i, _wgslsmith_add_i32(~2147483647i, -2147483647i << (u_input.a % 32u)) ^ ~(i32(-1i) * -2147483647i)), ~(-vec2<i32>(~(-23031i), -19569i)), true);
    global0 = -1i;
    global0 = var_0.x >> (0u % 32u);
    var var_1 = ~abs(countOneBits(vec4<u32>(_wgslsmith_sub_u32(4294967295u, u_input.a), min(u_input.a, 4294967295u), 30379u, u_input.a)));
    return false;
}

fn func_4(arg_0: bool, arg_1: u32) -> Struct_1 {
    global0 = -1i;
    global0 = -_wgslsmith_div_i32(1i, 1i);
    let var_0 = Struct_2(-1i, Struct_1(countOneBits(~select(vec2<i32>(1058i, 44331i), vec2<i32>(1i, -1i), arg_0)), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -652f), _wgslsmith_f_op_f32(f32(-1f) * -469f)))), !select(select(vec3<bool>(arg_0, false, arg_0), vec3<bool>(true, arg_0, false), vec3<bool>(arg_0, false, arg_0)), select(vec3<bool>(arg_0, false, arg_0), vec3<bool>(false, arg_0, true), arg_0), !arg_0), vec4<u32>(~(~u_input.a), u_input.a, _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, arg_1, 37166u), vec3<u32>(27757u, arg_1, 10659u)), vec3<u32>(4294967295u, arg_1, u_input.a)), 37532u)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1288f * -173f), _wgslsmith_f_op_f32(-1034f - -1433f)) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-252f, 896f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(654f)) - _wgslsmith_f_op_f32(-592f * -389f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-125f * -1149f)))), _wgslsmith_f_op_f32(-1573f + _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-788f, -1378f), _wgslsmith_f_op_f32(min(-1024f, 196f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(341f, -2491f, arg_0)), _wgslsmith_f_op_f32(f32(-1f) * -731f))))));
    global0 = _wgslsmith_add_i32(func_3(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b.b.x, -1376f))))), var_0.b.a.x, var_0.c), min(-1i, 35749i));
    var var_1 = firstLeadingBit(var_0.b.d.x & u_input.a);
    return Struct_1(var_0.b.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.b.b))))), var_0.b.c, select(var_0.b.d >> (vec4<u32>(_wgslsmith_add_u32(u_input.a, 0u), ~46878u, arg_1, u_input.a) % vec4<u32>(32u)), vec4<u32>(~firstTrailingBit(26124u), arg_1, _wgslsmith_sub_u32(~1u, _wgslsmith_dot_vec4_u32(var_0.b.d, var_0.b.d)), u_input.a), arg_0));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1) -> bool {
    let var_0 = Struct_4(vec3<i32>(-1i) * -countOneBits(-vec3<i32>(arg_1.a.x, -2147483647i, -7040i)), Struct_3(Struct_2(arg_1.a.x, Struct_1(~arg_0.a, _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.b.x, 1812f) + vec2<f32>(arg_0.b.x, 2017f)), vec3<bool>(arg_0.c.x, arg_1.c.x, arg_1.c.x), vec4<u32>(arg_1.d.x, 119484u, 1u, arg_1.d.x)), vec4<f32>(_wgslsmith_div_f32(-2027f, 167f), _wgslsmith_f_op_f32(-arg_0.b.x), _wgslsmith_f_op_f32(step(-916f, arg_1.b.x)), 383f)), Struct_2(27429i, Struct_1(vec2<i32>(1i, arg_1.a.x) & vec2<i32>(arg_1.a.x, arg_1.a.x), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(552f, -2146f))), select(vec3<bool>(true, true, false), vec3<bool>(arg_1.c.x, arg_0.c.x, arg_1.c.x), arg_0.c.x), vec4<u32>(arg_1.d.x, 1u, 2427u, 54749u)), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.b.x, 1622f, arg_1.b.x, 694f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.b.x, 367f, arg_1.b.x, -1000f))))));
    global0 = -1i;
    let var_1 = -_wgslsmith_mod_i32(_wgslsmith_add_i32(var_0.a.x, _wgslsmith_add_i32(8327i, _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.b.b.b.a.x, var_0.a.x, -2147483647i, arg_1.a.x), vec4<i32>(0i, var_0.b.a.a, arg_1.a.x, arg_0.a.x)))), -abs(-1i));
    var var_2 = ~countOneBits(~(~(~arg_0.d.x)));
    let var_3 = ~vec4<u32>(min(~4294967295u, arg_1.d.x), arg_0.d.x ^ abs(arg_1.d.x), u_input.a, select(arg_1.d.x, _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.b.a.b.d.x, var_0.b.b.b.d.x, var_0.b.a.b.d.x), var_0.b.a.b.d.zwz), false));
    return all(func_4(any(arg_0.c), 0u).c.zz) || arg_0.c.x;
}

fn func_1() -> f32 {
    var var_0 = func_5(func_4(func_2(), 1u), Struct_1(vec2<i32>(1i, 1i), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1546f, -500f)))), vec2<f32>(_wgslsmith_f_op_f32(abs(518f)), 1209f), false)), select(vec3<bool>(true, true, true), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false)), select(-21410i, -56994i, true) > -1i), ~vec4<u32>(abs(53609u), countOneBits(u_input.a), 92646u, u_input.a)));
    global0 = _wgslsmith_mod_i32(_wgslsmith_mod_i32(1i, firstLeadingBit(2269i)), -48797i);
    var_0 = true;
    var var_1 = vec4<u32>(u_input.a, u_input.a, 1u, _wgslsmith_mult_u32(_wgslsmith_add_u32(abs(82426u), _wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, 0u, 1u, u_input.a), vec4<u32>(u_input.a, 18371u, u_input.a, u_input.a))), _wgslsmith_dot_vec3_u32(max(vec3<u32>(u_input.a, 144296u, u_input.a), vec3<u32>(u_input.a, u_input.a, 0u)) | _wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(u_input.a, 63363u, 1u)), ~_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, 1u, u_input.a), vec3<u32>(u_input.a, u_input.a, 80060u)))));
    var_0 = false;
    return -1368f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(abs(650f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(172f - _wgslsmith_f_op_f32(min(1699f, _wgslsmith_f_op_f32(func_1())))), _wgslsmith_f_op_f32(ceil(1f))));
    var var_1 = ~max(-_wgslsmith_mult_vec2_i32(abs(vec2<i32>(2147483647i, 32086i)), vec2<i32>(-1i, 5717i)), _wgslsmith_sub_vec2_i32(~(vec2<i32>(32026i, -64422i) >> (vec2<u32>(14516u, u_input.a) % vec2<u32>(32u))), vec2<i32>(-7591i, select(-1i, -59541i, false))));
    var var_2 = true;
    let var_3 = true;
    var var_4 = !any(select(!vec2<bool>(var_3, var_3), func_4(var_3, 33940u).c.xx, !vec2<bool>(var_3, var_3))) || true;
    var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), 1271f));
    var var_5 = !(87330u > u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, -476f, -118f) * vec3<f32>(var_0.x, var_0.x, -548f)), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_0.x, 242f, var_0.x))))))), var_1.x, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-1045f + _wgslsmith_div_f32(var_0.x, var_0.x)), _wgslsmith_f_op_f32(exp2(var_0.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), 1f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, func_4(var_3, 13570u).b.x, _wgslsmith_f_op_f32(-var_0.x))), false)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1489f, 1000f, var_0.x) + vec3<f32>(-1000f, var_0.x, var_0.x))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1858f, var_0.x, -218f), vec3<f32>(869f, 1000f, var_0.x)))))))));
}

