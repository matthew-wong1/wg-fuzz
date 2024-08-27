struct Struct_1 {
    a: vec3<f32>,
    b: vec2<f32>,
    c: vec3<f32>,
    d: u32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec2<u32>,
    c: Struct_1,
    d: f32,
    e: vec2<f32>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec3<u32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 28>;

var<private> global1: vec3<i32>;

var<private> global2: f32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: vec2<f32>, arg_3: Struct_1) -> f32 {
    let var_0 = Struct_3(~(-_wgslsmith_add_vec3_i32(-vec3<i32>(0i, 0i, -1i), ~vec3<i32>(14765i, global1.x, global1.x))), 72981u);
    return arg_2.x;
}

fn func_3(arg_0: Struct_2) -> bool {
    let var_0 = -vec3<i32>(46355i, _wgslsmith_clamp_i32(global1.x, -_wgslsmith_mult_i32(global1.x, 0i), ~(-17764i)), _wgslsmith_mod_i32(i32(-1i) * -u_input.a.x, countOneBits(~(-1i))));
    let var_1 = vec3<f32>(-1087f, _wgslsmith_div_f32(-340f, _wgslsmith_f_op_f32(sign(arg_0.e.x))), _wgslsmith_f_op_f32(round(arg_0.e.x)));
    let var_2 = arg_0.a.x;
    var var_3 = true;
    return arg_0.a.x;
}

fn func_2(arg_0: i32, arg_1: bool) -> Struct_2 {
    global1 = vec3<i32>(u_input.d, -_wgslsmith_mult_i32(select(-2147483647i, arg_0, false), -(~arg_0)), firstLeadingBit(~(~max(arg_0, -1i))));
    var var_0 = any(vec3<bool>(func_3(Struct_2(!vec4<bool>(arg_1, arg_1, false, true), _wgslsmith_add_vec2_u32(u_input.c.yz, vec2<u32>(4294967295u, u_input.c.x)), global0[_wgslsmith_index_u32(~u_input.b, 28u)], 1992f, vec2<f32>(1323f, 673f))), true, !arg_1));
    global1 = countOneBits(_wgslsmith_div_vec3_i32(vec3<i32>((1i >> (u_input.b % 32u)) & min(u_input.e, u_input.a.x), firstLeadingBit(i32(-1i) * -2147483647i), _wgslsmith_clamp_i32(arg_0, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.e, global1.x), global1.zy), arg_0)), vec3<i32>(u_input.e, u_input.a.x, abs(select(-21473i, u_input.a.x, true)))));
    global2 = _wgslsmith_f_op_f32(-361f * 118f);
    let var_1 = !(u_input.c.x >= firstTrailingBit(4294967295u));
    return Struct_2(vec4<bool>(!all(!vec4<bool>(arg_1, false, true, false)), ~(~3488u) != u_input.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-569f, 270f))) >= _wgslsmith_f_op_f32(f32(-1f) * -597f), arg_1), ~vec2<u32>(u_input.c.x, abs(u_input.b & u_input.b)), Struct_1(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-583f, -1018f, 552f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-272f, 239f, 1000f)))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -498f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1188f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1000f, 499f, -1227f), vec3<f32>(876f, -606f, 1000f), vec3<bool>(true, arg_1, false)))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(439f, 1510f, 140f))), u_input.c.x >> (29292u % 32u)), 1f, _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(ceil(671f)), _wgslsmith_f_op_f32(-567f - -1533f)), vec2<f32>(1f, 1f)), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(672f + 1157f), _wgslsmith_f_op_f32(253f - -2132f))))));
}

fn func_4(arg_0: u32, arg_1: Struct_2, arg_2: Struct_2, arg_3: bool) -> bool {
    var var_0 = Struct_3(~_wgslsmith_mod_vec3_i32(reverseBits(vec3<i32>(1i, -2147483647i, -36589i)) ^ vec3<i32>(2147483647i, -30774i, global1.x), _wgslsmith_mod_vec3_i32(select(vec3<i32>(global1.x, u_input.e, -1i), vec3<i32>(u_input.e, -13002i, 27553i), arg_1.a.x), vec3<i32>(u_input.a.x, 27861i, u_input.a.x))), 32605u);
    let var_1 = _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-182i, u_input.a.x, global1.x, reverseBits(3461i) & -global1.x), -vec4<i32>(20123i, 0i, global1.x, 0i) & _wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(17446i, 0i, 2147483647i, u_input.d), vec4<i32>(-1i, var_0.a.x, -48640i, 1114i)), min(vec4<i32>(10035i, u_input.d, global1.x, var_0.a.x), vec4<i32>(-1i, -2147483647i, global1.x, 15055i)))), _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(-vec4<i32>(2147483647i, -13510i, -31695i, var_0.a.x) >> ((vec4<u32>(0u, u_input.b, 32490u, 0u) << (vec4<u32>(arg_1.b.x, 4294967295u, u_input.b, 4294967295u) % vec4<u32>(32u))) % vec4<u32>(32u)), vec4<i32>(-2147483647i, _wgslsmith_add_i32(1i, u_input.d), 32421i, min(-1338i, -2003i))), ~reverseBits(~vec4<i32>(var_0.a.x, 42085i, u_input.d, global1.x))));
    let var_2 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(616f, -601f, arg_2.c.b.x, -1177f) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_2.e.x, -1000f, arg_2.e.x, arg_2.d), vec4<f32>(1041f, arg_1.e.x, 361f, arg_2.c.b.x))), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-344f, arg_2.c.a.x, arg_1.d, arg_2.d))), !arg_3)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_1.e.x, arg_1.c.c.x, arg_2.d, arg_2.c.b.x), vec4<f32>(arg_1.c.a.x, arg_2.d, -319f, arg_2.d))) - _wgslsmith_div_vec4_f32(vec4<f32>(-1204f, arg_1.e.x, -122f, -1000f), vec4<f32>(-297f, arg_1.e.x, arg_1.d, arg_1.e.x))), vec4<f32>(_wgslsmith_f_op_f32(select(arg_1.d, arg_2.c.b.x, arg_2.a.x)), _wgslsmith_div_f32(arg_1.e.x, arg_1.d), _wgslsmith_f_op_f32(trunc(arg_1.c.b.x)), arg_2.e.x), arg_2.a.x)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1010f, arg_1.e.x, -502f, 986f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1659f, arg_1.c.c.x, arg_2.c.b.x, arg_2.c.b.x)))))));
    var var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_2.zxx - arg_1.c.c) * _wgslsmith_f_op_vec3_f32(var_2.wxy - arg_2.c.a)) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1793f, 1279f, var_2.x), var_2.zxz, true))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(arg_1.c.c * arg_1.c.a))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_1.e) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-arg_2.e))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(func_2(_wgslsmith_dot_vec4_i32(vec4<i32>(global1.x, 0i, global1.x, u_input.d), vec4<i32>(var_1, var_0.a.x, var_0.a.x, 15642i)), select(arg_1.a.x, arg_3, true)).d, _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.x * var_2.x), _wgslsmith_f_op_f32(709f + -1015f)), -379f)), _wgslsmith_mod_u32(21493u, 1u));
    var var_4 = vec2<bool>(arg_2.c.d >= (~arg_0 | var_0.b), false);
    return any(vec2<bool>(all(select(func_2(20107i, true).a, !vec4<bool>(arg_1.a.x, var_4.x, false, arg_1.a.x), any(arg_1.a.zw))), any(vec2<bool>(select(arg_3, false, true), arg_2.a.x))));
}

fn func_5(arg_0: vec4<f32>, arg_1: u32, arg_2: bool, arg_3: Struct_2) -> Struct_2 {
    let var_0 = abs(vec2<u32>(u_input.c.x, 20645u));
    let var_1 = Struct_2(vec4<bool>(arg_2, false, true, any(arg_3.a.zz)), arg_3.b, func_2(countOneBits(select(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, 1i, -17137i, -2147483647i), vec4<i32>(0i, global1.x, global1.x, global1.x)), 1i, false)), ~arg_3.b.x <= (func_2(global1.x, arg_2).c.d >> (~11750u % 32u))).c, _wgslsmith_f_op_f32(-331f * _wgslsmith_div_f32(func_2(_wgslsmith_clamp_i32(u_input.d, -1i, -87138i), arg_1 <= 43509u).d, _wgslsmith_div_f32(-611f, 225f))), arg_3.c.c.zz);
    let var_2 = arg_3.b;
    var var_3 = vec3<bool>(all(vec4<bool>(false, arg_2 && arg_2, var_1.a.x && true, !arg_2)), !func_3(var_1), global1.x == ~32834i);
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_1(!vec2<bool>(true, var_1.a.x), arg_3, vec2<f32>(296f, _wgslsmith_f_op_f32(-1000f + 301f)), var_1.c)), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-383f + 315f), _wgslsmith_f_op_f32(arg_0.x + arg_0.x)), -977f))));
    return arg_3;
}

fn func_6(arg_0: Struct_2, arg_1: Struct_3, arg_2: f32) -> Struct_3 {
    global1 = -vec3<i32>(i32(-1i) * -22923i, 47842i, firstLeadingBit(-1i | firstLeadingBit(global1.x)));
    let var_0 = select(~(~32801i) ^ ~u_input.e, _wgslsmith_dot_vec4_i32(abs(vec4<i32>(0i, arg_1.a.x, -2147483647i, 34697i)) >> (countOneBits(vec4<u32>(5093u, arg_1.b, arg_1.b, 23439u)) % vec4<u32>(32u)), countOneBits(vec4<i32>(u_input.a.x, 52258i, 1i, 2147483647i) ^ vec4<i32>(global1.x, -43047i, global1.x, arg_1.a.x))), !(!arg_0.a.x)) < ~(-(i32(-1i) * -global1.x));
    global0 = array<Struct_1, 28>();
    let var_1 = arg_0.a.x != (arg_0.a.x && true);
    let var_2 = func_5(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-633f, arg_2)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(2048f, arg_0.d)) * -444f))), arg_2, 1442f), ~countOneBits(reverseBits(1u)), true, arg_0).c;
    return Struct_3(arg_1.a ^ ~vec3<i32>(_wgslsmith_add_i32(0i, arg_1.a.x), -2147483647i, 0i), min(var_2.d, ~max(u_input.c.x, arg_0.c.d << (u_input.b % 32u))));
}

fn func_7(arg_0: Struct_3, arg_1: vec4<i32>, arg_2: f32) -> Struct_1 {
    global1 = -arg_0.a;
    global1 = firstTrailingBit(arg_1.zzz);
    let var_0 = _wgslsmith_dot_vec3_i32(-(_wgslsmith_clamp_vec3_i32(arg_0.a, -arg_1.xyw, -arg_1.xwy) << (~vec3<u32>(arg_0.b, 0u, u_input.b) % vec3<u32>(32u))), vec3<i32>(~_wgslsmith_sub_i32(_wgslsmith_mult_i32(arg_0.a.x, arg_1.x), -u_input.a.x), _wgslsmith_mult_i32(1i, global1.x), -37969i));
    let var_1 = Struct_1(func_2(reverseBits(global1.x), arg_2 > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2 * arg_2))).c.a, vec2<f32>(arg_2, 2214f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, _wgslsmith_f_op_f32(step(-857f, arg_2)), 790f))), ~(func_5(_wgslsmith_f_op_vec4_f32(vec4<f32>(1372f, -1222f, arg_2, arg_2) - vec4<f32>(-200f, arg_2, 859f, 378f)), u_input.b, arg_0.b != arg_0.b, Struct_2(vec4<bool>(false, true, false, false), vec2<u32>(1u, 0u), Struct_1(vec3<f32>(661f, 888f, 104f), vec2<f32>(-166f, arg_2), vec3<f32>(arg_2, -1000f, arg_2), 0u), 1000f, vec2<f32>(-994f, 312f))).b.x >> ((4294967295u << (~u_input.c.x % 32u)) % 32u)));
    var var_2 = _wgslsmith_f_op_vec3_f32(-func_5(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_1.b.x, 1000f, var_1.c.x, 1000f), vec4<f32>(arg_2, var_1.b.x, 427f, arg_2)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1302f, var_1.a.x, -171f, -1358f))))), countOneBits(abs(arg_0.b) >> (0u % 32u)), false, func_2(-arg_1.x, all(vec2<bool>(true, true)))).c.c);
    return Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(2464f, var_1.a.x, var_1.a.x) - vec3<f32>(-1000f, 700f, var_2.x)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-221f, -663f, 154f) * vec3<f32>(var_1.a.x, 1109f, arg_2))) - var_1.c)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(2677f, -149f)) * _wgslsmith_f_op_vec2_f32(var_2.xy * vec2<f32>(547f, var_2.x))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_2.zz) - vec2<f32>(arg_2, -1000f))) + vec2<f32>(var_2.x, _wgslsmith_f_op_f32(f32(-1f) * -1174f))), _wgslsmith_f_op_vec3_f32(select(var_1.c, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-254f, 619f, func_5(vec4<f32>(560f, -208f, 432f, arg_2), 1u, false, Struct_2(vec4<bool>(true, false, true, true), u_input.c.xy, var_1, 467f, vec2<f32>(arg_2, var_1.c.x))).c.c.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2083f, var_2.x, 352f))), select(func_5(vec4<f32>(-1000f, 1949f, -1000f, -335f), 1u, true, Struct_2(vec4<bool>(true, false, false, false), vec2<u32>(u_input.b, 1u), var_1, 344f, vec2<f32>(541f, var_1.c.x))).a.xxw, vec3<bool>(true, true, true), true))), !func_3(Struct_2(vec4<bool>(false, true, false, true), vec2<u32>(arg_0.b, u_input.b), var_1, 915f, vec2<f32>(-684f, 421f))))), u_input.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_7(func_6(func_5(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -760f), _wgslsmith_f_op_f32(func_1(vec2<bool>(true, false), Struct_2(vec4<bool>(true, false, true, false), u_input.c.yx, Struct_1(vec3<f32>(-1000f, -192f, 142f), vec2<f32>(-1470f, 218f), vec3<f32>(308f, 137f, 1050f), 0u), 357f, vec2<f32>(286f, 906f)), vec2<f32>(1000f, -1024f), Struct_1(vec3<f32>(1062f, 1401f, -1000f), vec2<f32>(-1028f, -802f), vec3<f32>(-2066f, -1394f, 503f), u_input.c.x))), _wgslsmith_f_op_f32(176f + -465f), -246f), 1u, func_4(0u, func_2(1i, false), Struct_2(vec4<bool>(false, true, false, true), u_input.c.yy, global0[_wgslsmith_index_u32(15491u, 28u)], -545f, vec2<f32>(-1156f, 837f)), false), Struct_2(vec4<bool>(false, false, true, true), reverseBits(vec2<u32>(9974u, u_input.b)), func_2(u_input.a.x, false).c, -1114f, _wgslsmith_div_vec2_f32(vec2<f32>(-787f, 548f), vec2<f32>(2005f, -364f)))), Struct_3(vec3<i32>(1i, u_input.e, u_input.a.x) << (u_input.c % vec3<u32>(32u)), ~104636u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -632f)) * -1336f)), -vec4<i32>(_wgslsmith_add_i32(reverseBits(0i), _wgslsmith_sub_i32(-4091i, global1.x)), -u_input.d, ~(~(-24276i)), ~_wgslsmith_dot_vec2_i32(global1.xy, vec2<i32>(global1.x, 20933i))), _wgslsmith_div_f32(1966f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1074f, -385f))), _wgslsmith_f_op_f32(step(func_2(global1.x, true).c.b.x, -677f)))));
    var var_1 = !(!select(vec2<bool>(true, true), !select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false)), func_5(vec4<f32>(-146f, var_0.c.x, 1640f, var_0.c.x), _wgslsmith_div_u32(u_input.b, 1u), false, Struct_2(vec4<bool>(false, true, false, false), vec2<u32>(0u, 4294967295u), Struct_1(var_0.a, vec2<f32>(-1099f, var_0.b.x), var_0.a, 0u), 1038f, vec2<f32>(-1516f, 1497f))).a.x));
    let var_2 = vec2<i32>(global1.x, abs(~max(func_6(Struct_2(vec4<bool>(true, true, true, false), vec2<u32>(1u, u_input.c.x), global0[_wgslsmith_index_u32(1u, 28u)], 2274f, var_0.c.yy), Struct_3(vec3<i32>(-2147483647i, 69228i, u_input.d), 2893u), -1077f).a.x, -1i)));
    let var_3 = _wgslsmith_f_op_f32(max(-1937f, _wgslsmith_f_op_f32(-var_0.c.x)));
    var var_4 = func_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1025f, var_0.c.x, var_0.a.x, 138f)))))), _wgslsmith_clamp_u32(~(u_input.b | u_input.c.x), _wgslsmith_mult_u32(~var_0.d, 31459u), 39128u) ^ func_7(Struct_3(vec3<i32>(global1.x, -43424i, 2147483647i), 0u | u_input.c.x), vec4<i32>(-1i ^ global1.x, -global1.x, -15885i, _wgslsmith_sub_i32(-15830i, -1i)), var_0.a.x).d, var_1.x, func_2(_wgslsmith_sub_i32(_wgslsmith_add_i32(min(global1.x, -30437i), 1i), -1i), var_1.x)).a;
    let var_5 = any(select(vec4<bool>(var_4.x, true, true, true), !func_2(var_2.x, var_1.x != true).a, vec4<bool>(false, true, !any(var_4.yz), var_4.x)));
    var var_6 = func_2(u_input.a.x, false);
    var_4 = var_6.a;
    var_0 = var_6.c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-771f, 1248f, -685f, var_0.b.x) + vec4<f32>(978f, 554f, var_0.b.x, -1073f)) - _wgslsmith_div_vec4_f32(vec4<f32>(751f, -984f, var_0.c.x, -2213f), vec4<f32>(1041f, -1751f, var_0.c.x, var_0.a.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-119f, var_3, 1115f, 482f)), select(var_6.a, vec4<bool>(false, var_5, true, var_1.x), select(var_6.a, vec4<bool>(var_6.a.x, true, true, var_6.a.x), var_1.x)))))), 1i, var_6.b.x);
}

