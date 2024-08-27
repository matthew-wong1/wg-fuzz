struct Struct_1 {
    a: u32,
    b: i32,
    c: i32,
    d: i32,
    e: f32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec3<u32>,
    d: vec4<bool>,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: Struct_2,
    c: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 15>;

var<private> global1: array<vec4<bool>, 5> = array<vec4<bool>, 5>(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true));

var<private> global2: array<vec3<bool>, 24> = array<vec3<bool>, 24>(vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, false, true));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<u32>) -> i32 {
    global2 = array<vec3<bool>, 24>();
    global2 = array<vec3<bool>, 24>();
    global2 = array<vec3<bool>, 24>();
    let var_0 = Struct_2(!any(vec3<bool>(true, true, true)), Struct_1(~(global0[_wgslsmith_index_u32(arg_0.x, 15u)] | arg_0.x), ~2147483647i << (_wgslsmith_dot_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_0.x, 15u)], 15u)], u_input.a, global0[_wgslsmith_index_u32(arg_0.x, 15u)], 7531u), arg_0 << (arg_0 % vec4<u32>(32u))) % 32u), _wgslsmith_dot_vec3_i32(-abs(vec3<i32>(14090i, -2147483647i, 54638i)), _wgslsmith_mod_vec3_i32(~vec3<i32>(2147483647i, -48273i, 1i), -vec3<i32>(-2147483647i, 1i, -2147483647i))), firstLeadingBit(1i), 363f), min(arg_0.xxx, select(vec3<u32>(~arg_0.x, _wgslsmith_sub_u32(u_input.a, 4450u), 38247u), firstLeadingBit(vec3<u32>(4294967295u, 55569u, 1u)), any(vec4<bool>(false, true, false, false)))), !(!vec4<bool>(true, true, 11124u < arg_0.x, false)));
    global1 = array<vec4<bool>, 5>();
    return var_0.b.d;
}

fn func_2(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: f32) -> vec3<f32> {
    let var_0 = max(_wgslsmith_add_vec2_i32(-vec2<i32>(func_3(vec4<u32>(9471u, global0[_wgslsmith_index_u32(1u, 15u)], u_input.a, u_input.a)), _wgslsmith_dot_vec2_i32(vec2<i32>(-13172i, -2147483647i), vec2<i32>(-2147483647i, arg_1.b.d))), vec2<i32>(arg_1.b.c, arg_1.b.d)), ~_wgslsmith_mult_vec2_i32(-vec2<i32>(arg_1.b.c, -47390i), ~vec2<i32>(arg_1.b.d, 75066i)) | select(_wgslsmith_add_vec2_i32(min(vec2<i32>(arg_1.b.b, 2147483647i), vec2<i32>(arg_1.b.b, arg_1.b.b)), firstLeadingBit(vec2<i32>(arg_1.b.c, arg_1.b.c))), firstTrailingBit(min(vec2<i32>(arg_1.b.c, arg_1.b.c), vec2<i32>(35614i, -1i))), !select(vec2<bool>(arg_1.a, arg_1.d.x), arg_1.d.yw, arg_1.d.zx)));
    var var_1 = !(!vec3<bool>(!(!arg_1.d.x), arg_1.a, true));
    let var_2 = arg_1.a;
    var_1 = select(arg_1.d.xwx, !select(vec3<bool>(true | var_2, all(global1[_wgslsmith_index_u32(4259u, 5u)]), false), vec3<bool>(11106i < var_0.x, var_1.x, false), !vec3<bool>(var_2, var_2, false)), true);
    var var_3 = _wgslsmith_sub_i32(~(i32(-1i) * -1i), -22368i);
    return _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.b.e, arg_2, arg_2)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1298f, -365f, 1370f)))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-522f, -367f, 374f) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-941f, arg_1.b.e, 497f) - vec3<f32>(arg_2, arg_2, -994f)))) + vec3<f32>(_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(-arg_1.b.e)), -625f, -1423f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_2, arg_2))), arg_1.b.e))));
}

fn func_4(arg_0: vec3<f32>) -> vec4<i32> {
    var var_0 = Struct_4(-341f, Struct_2(select(true, ~u_input.a != u_input.a, true), Struct_1(_wgslsmith_dot_vec2_u32(~vec2<u32>(30460u, u_input.a), select(vec2<u32>(63678u, global0[_wgslsmith_index_u32(u_input.a, 15u)]), vec2<u32>(37585u, global0[_wgslsmith_index_u32(u_input.a, 15u)]), false)), countOneBits(func_3(vec4<u32>(u_input.a, 0u, u_input.a, u_input.a))), -max(-1i, 2147483647i), -1i, _wgslsmith_f_op_f32(f32(-1f) * -1411f)), _wgslsmith_div_vec3_u32(select(vec3<u32>(55512u, global0[_wgslsmith_index_u32(3076u, 15u)], 0u), vec3<u32>(u_input.a, 47034u, u_input.a) << (vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1955u, 15u)], 15u)], 6415u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 15u)], 15u)], 15u)]) % vec3<u32>(32u)), !global2[_wgslsmith_index_u32(58759u, 24u)]), firstTrailingBit(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, u_input.a, 32810u), vec3<u32>(global0[_wgslsmith_index_u32(4294967295u, 15u)], 1u, global0[_wgslsmith_index_u32(15280u, 15u)])))), global1[_wgslsmith_index_u32(0u, 5u)]), select(false, true, true));
    let var_1 = var_0.c;
    var var_2 = Struct_4(_wgslsmith_div_f32(-462f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0.x)))))), var_0.b, false);
    global1 = array<vec4<bool>, 5>();
    var_2 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a) - _wgslsmith_f_op_f32(var_0.a * arg_0.x)) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + -1476f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_0.x)))))), Struct_2(!(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, 65259u), 15u)], 15u)] != ~0u), var_2.b.b, select(vec3<u32>(0u, _wgslsmith_div_u32(var_0.b.b.a, var_2.b.b.a), u_input.a), min(~var_2.b.c, ~var_2.b.c), all(!var_2.b.d.xzw)), vec4<bool>(var_2.c, true, all(var_2.b.d.wxw), true)), true);
    return ~max(~(vec4<i32>(-12964i, var_0.b.b.c, var_0.b.b.b, var_0.b.b.d) >> (vec4<u32>(8514u, var_2.b.c.x, 90570u, 0u) % vec4<u32>(32u))), _wgslsmith_div_vec4_i32(reverseBits(min(vec4<i32>(-2147483647i, var_0.b.b.b, 45149i, var_0.b.b.c), vec4<i32>(var_0.b.b.d, 8369i, 1i, var_0.b.b.d))), ~(-vec4<i32>(var_2.b.b.d, var_0.b.b.c, var_0.b.b.d, var_2.b.b.d))));
}

fn func_1() -> Struct_2 {
    var var_0 = 1u;
    global2 = array<vec3<bool>, 24>();
    global2 = array<vec3<bool>, 24>();
    global0 = array<u32, 15>();
    let var_1 = func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(278f, 821f, -1553f)))), _wgslsmith_f_op_vec3_f32(func_2(_wgslsmith_add_vec3_u32(vec3<u32>(93272u, 1u, u_input.a), vec3<u32>(u_input.a, 89555u, global0[_wgslsmith_index_u32(u_input.a, 15u)])), Struct_2(false, Struct_1(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 15u)], 15u)], -426i, -29112i, -5483i, 2217f), vec3<u32>(u_input.a, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 15u)], 15u)], u_input.a), vec4<bool>(true, true, true, true)), _wgslsmith_f_op_f32(select(670f, 373f, true)))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-735f, -1380f, -1000f))) - _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(-351f, 863f, 818f) + vec3<f32>(562f, -1219f, -527f)))))));
    return Struct_2(!(!(!any(global2[_wgslsmith_index_u32(u_input.a, 24u)]))), Struct_1(1u, func_4(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -1752f, 1804f))))).x, -(min(6006i, 1i) ^ _wgslsmith_div_i32(var_1.x, var_1.x)), 0i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-550f, -2070f, true))) + -1102f)), _wgslsmith_mult_vec3_u32(~(vec3<u32>(4294967295u, 71500u, 22016u) ^ vec3<u32>(117057u, u_input.a, global0[_wgslsmith_index_u32(55959u, 15u)])), ~_wgslsmith_mod_vec3_u32(vec3<u32>(45352u, u_input.a, u_input.a), vec3<u32>(8370u, u_input.a, 0u))) & firstTrailingBit(~(~vec3<u32>(1u, global0[_wgslsmith_index_u32(1u, 15u)], 1u))), vec4<bool>(true, func_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-401f, 913f, 1599f))).x <= firstLeadingBit(~0i), all(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), true)), _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(70103u, global0[_wgslsmith_index_u32(u_input.a, 15u)]), vec2<u32>(1u, global0[_wgslsmith_index_u32(u_input.a, 15u)])), ~4294967295u, u_input.a) > global0[_wgslsmith_index_u32(103002u, 15u)]));
}

fn func_5(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: u32, arg_3: Struct_3) -> Struct_1 {
    var var_0 = arg_1;
    global0 = array<u32, 15>();
    let var_1 = Struct_1(u_input.a, ~_wgslsmith_sub_i32(_wgslsmith_div_i32(~arg_1.b.c, func_3(vec4<u32>(arg_3.c.c.x, 50872u, 48616u, var_0.c.x))), select(arg_3.b.c, arg_1.b.d, true)), _wgslsmith_mod_i32(arg_3.b.c, -2147483647i), -37153i, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(801f * arg_0.x))), -1000f)));
    global1 = array<vec4<bool>, 5>();
    global2 = array<vec3<bool>, 24>();
    return func_1().b;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec3<bool>, 24>();
    let var_0 = ~(~_wgslsmith_mod_vec3_u32(vec3<u32>(29459u, global0[_wgslsmith_index_u32(4294967295u, 15u)], global0[_wgslsmith_index_u32(u_input.a, 15u)]), _wgslsmith_div_vec3_u32(vec3<u32>(2054u, 4294967295u, 4294967295u), vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(76529u, 15u)], 15u)], 15u)], u_input.a, u_input.a))) | ~(~_wgslsmith_add_vec3_u32(vec3<u32>(15094u, u_input.a, 246u), vec3<u32>(62689u, u_input.a, 17647u))));
    global1 = array<vec4<bool>, 5>();
    let var_1 = Struct_3(~(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(562u, var_0.x), 15u)], 15u)]), func_5(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-106f, 259f, 1605f)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-117f, 604f, 754f))) - vec3<f32>(-502f, 234f, -2277f))), func_1(), ~(_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(50707u, 15u)], global0[_wgslsmith_index_u32(u_input.a, 15u)]) ^ select(111186u, 29254u, false)), Struct_3(~global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(4294967295u, 15u)], var_0.x), 15u)], Struct_1(0u, ~(-11976i), func_3(vec4<u32>(6107u, 4895u, 23763u, var_0.x)), firstLeadingBit(-1i), _wgslsmith_f_op_f32(1145f * 1816f)), Struct_2(true, Struct_1(global0[_wgslsmith_index_u32(94667u, 15u)], 1i, -897i, 1i, -1524f), func_1().c, global1[_wgslsmith_index_u32(28387u, 5u)]))), func_1());
    var var_2 = 4294967295u;
    var var_3 = Struct_1(firstLeadingBit(countOneBits(firstLeadingBit(var_1.a))), var_1.c.b.c, 18409i, _wgslsmith_div_i32(1i, var_1.c.b.b), var_1.b.e);
    let var_4 = Struct_1(1u, var_1.b.d, -56299i, func_1().b.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(var_3.e)), _wgslsmith_f_op_f32(min(-736f, var_1.c.b.e)), !var_1.c.a)) * var_1.c.b.e) + _wgslsmith_f_op_f32(var_3.e + var_1.c.b.e)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(func_1().b.e, var_3.e, -1145f), _wgslsmith_dot_vec2_i32(~min(abs(vec2<i32>(-16283i, var_4.b)), -vec2<i32>(0i, var_4.b)), select(_wgslsmith_div_vec2_i32(vec2<i32>(-63535i, var_3.c), vec2<i32>(var_1.c.b.c, var_1.b.d)), _wgslsmith_add_vec2_i32(vec2<i32>(-1i, 2147483647i), vec2<i32>(var_4.c, 2147483647i)), false) | countOneBits(vec2<i32>(-20221i, -2147483647i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b.e - var_4.e)) * _wgslsmith_f_op_f32(-185f + -736f)) + var_4.e));
}

