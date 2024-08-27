struct Struct_1 {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: Struct_2,
}

struct Struct_4 {
    a: vec4<bool>,
    b: i32,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(vec4<bool>(true, true, true, false), 0i, Struct_2(Struct_1(vec2<i32>(i32(-2147483648), 2147483647i), vec4<u32>(1u, 4294967295u, 45166u, 0u), vec2<bool>(false, false)), Struct_1(vec2<i32>(-19456i, -7202i), vec4<u32>(1u, 4294967295u, 0u, 4294967295u), vec2<bool>(false, true)), Struct_1(vec2<i32>(1i, 0i), vec4<u32>(0u, 0u, 32688u, 43809u), vec2<bool>(false, false))));

var<private> global1: Struct_3;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: f32, arg_1: Struct_3) -> vec4<u32> {
    global0 = Struct_4(global0.a, global0.b, global1.b);
    global1 = Struct_3(4294967295u, Struct_2(arg_1.c.b, Struct_1(~select(global1.b.a.a, global0.c.a.a, false), reverseBits(vec4<u32>(47414u, arg_1.b.b.b.x, global1.c.c.b.x, 1u)), vec2<bool>(select(true, true, global1.b.a.c.x), !arg_1.b.b.c.x)), arg_1.b.a), Struct_2(arg_1.b.c, global1.c.c, global0.c.c));
    var var_0 = global1.b;
    global1 = Struct_3(~_wgslsmith_add_u32(global0.c.c.b.x, _wgslsmith_clamp_u32(var_0.a.b.x, 0u, global1.c.b.b.x) & 1u), Struct_2(global0.c.b, Struct_1(max(arg_1.b.a.a >> (global1.b.a.b.zw % vec2<u32>(32u)), ~var_0.a.a), ~global1.c.b.b, arg_1.b.b.c), arg_1.c.c), global1.c);
    return max(var_0.b.b, ~reverseBits(arg_1.c.a.b));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3, arg_2: i32, arg_3: Struct_3) -> vec4<bool> {
    global0 = Struct_4(vec4<bool>(any(global0.a.wwy), true, false, all(select(select(global0.a, vec4<bool>(global0.c.c.c.x, true, global1.c.b.c.x, global0.c.c.c.x), vec4<bool>(false, false, global1.c.a.c.x, true)), select(global0.a, vec4<bool>(global1.b.a.c.x, global0.c.a.c.x, true, arg_1.b.a.c.x), global0.a), global0.a))), select(-1i, ~global1.b.b.a.x, any(!global0.a)), global0.c);
    var var_0 = global0.c.c.b.wxw;
    let var_1 = ~_wgslsmith_mult_vec2_u32(firstLeadingBit(arg_0.b.xy) >> (_wgslsmith_mult_vec2_u32(~vec2<u32>(arg_1.b.c.b.x, global1.b.c.b.x), arg_3.c.a.b.ww >> (vec2<u32>(u_input.a, 0u) % vec2<u32>(32u))) % vec2<u32>(32u)), global1.c.b.b.xx);
    var var_2 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1216f) + -1223f), -540f))));
    global0 = Struct_4(vec4<bool>(any(!global0.a) | any(global0.a), false, any(global0.a.ww), !global0.a.x), arg_1.c.b.a.x, Struct_2(global1.c.b, Struct_1(_wgslsmith_add_vec2_i32(arg_1.b.b.a, arg_1.c.b.a << (arg_1.b.b.b.zy % vec2<u32>(32u))), func_3(_wgslsmith_div_f32(705f, -2412f), Struct_3(52138u, global0.c, Struct_2(Struct_1(vec2<i32>(-2147483647i, arg_0.a.x), vec4<u32>(1u, arg_1.c.b.b.x, 58528u, 46862u), vec2<bool>(true, global0.c.c.c.x)), global0.c.b, global1.c.b))), vec2<bool>(arg_3.b.b.c.x, true)), Struct_1(vec2<i32>(-u_input.b, 27627i), select(_wgslsmith_mod_vec4_u32(arg_3.c.b.b, global0.c.a.b), max(global1.b.a.b, vec4<u32>(arg_3.b.c.b.x, arg_1.a, 0u, 4294967295u)), all(global0.a.wwz)), vec2<bool>(true, global1.b.c.c.x | true))));
    return global0.a;
}

fn func_2(arg_0: Struct_1) -> f32 {
    let var_0 = Struct_4(func_4(Struct_1(vec2<i32>(arg_0.a.x, 1i), func_3(_wgslsmith_f_op_f32(964f + -1000f), Struct_3(global0.c.c.b.x, Struct_2(Struct_1(global1.c.c.a, global0.c.c.b, vec2<bool>(global0.a.x, false)), Struct_1(global1.b.c.a, global1.c.a.b, arg_0.c), Struct_1(vec2<i32>(arg_0.a.x, 16475i), arg_0.b, global0.c.b.c)), Struct_2(Struct_1(global1.c.b.a, vec4<u32>(global0.c.c.b.x, 1u, 0u, 25306u), global1.c.c.c), arg_0, Struct_1(global0.c.c.a, vec4<u32>(global0.c.a.b.x, 84806u, 45351u, global0.c.a.b.x), global1.c.c.c)))), global1.b.a.c), Struct_3(~firstLeadingBit(1u), Struct_2(global0.c.a, Struct_1(vec2<i32>(global0.b, global1.c.a.a.x), arg_0.b, vec2<bool>(true, true)), arg_0), Struct_2(global1.c.b, global1.b.c, Struct_1(vec2<i32>(47668i, arg_0.a.x), vec4<u32>(61125u, 34056u, 4294967295u, 1u), vec2<bool>(false, false)))), ~select(_wgslsmith_dot_vec2_i32(global1.b.a.a, vec2<i32>(0i, arg_0.a.x)), ~global0.b, arg_0.c.x), Struct_3(u_input.a, Struct_2(arg_0, Struct_1(vec2<i32>(0i, 50492i), global1.b.a.b, vec2<bool>(true, arg_0.c.x)), global1.c.b), Struct_2(arg_0, global0.c.b, arg_0))), _wgslsmith_div_i32(~_wgslsmith_mult_i32(reverseBits(u_input.b), 26354i), -(~(global1.b.c.a.x >> (1u % 32u)))), Struct_2(global1.c.c, arg_0, arg_0));
    let var_1 = _wgslsmith_div_vec4_f32(vec4<f32>(-1044f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1046f))), _wgslsmith_f_op_f32(floor(1f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -209f) - -1082f), 906f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(710f * -791f)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-279f, -1000f, -424f, -1000f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(651f, 1958f, 608f, 328f))))));
    var var_2 = true;
    var_2 = true;
    let var_3 = Struct_3(global0.c.a.b.x, global0.c, global0.c);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(var_1.x)))) * -1780f) * -1000f);
}

fn func_5(arg_0: vec3<bool>, arg_1: f32, arg_2: Struct_3) -> f32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, 898f, 374f, -294f))), vec4<f32>(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(ceil(-2473f)), _wgslsmith_f_op_f32(min(arg_1, 1000f)), -1206f))) - _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(arg_1, 2062f, arg_1, -1000f), vec4<f32>(813f, arg_1, -1339f, -2008f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, arg_1, arg_1, arg_1))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-821f, arg_1, -1966f, arg_1)))) + _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(691f)), _wgslsmith_f_op_f32(arg_1 + -115f), _wgslsmith_f_op_f32(sign(1096f)), _wgslsmith_f_op_f32(140f - 580f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-193f, -1000f, arg_1, arg_1))))));
    global1 = arg_2;
    let var_1 = Struct_1(_wgslsmith_clamp_vec2_i32(~vec2<i32>(1i, -1i), vec2<i32>(12222i, 1i), arg_2.c.c.a), vec4<u32>(firstLeadingBit(27700u), global1.c.a.b.x, 20808u, arg_2.b.c.b.x | 20452u), vec2<bool>(!(_wgslsmith_sub_i32(global1.b.b.a.x, global0.b) == firstLeadingBit(-2147483647i)), arg_2.b.c.c.x));
    var var_2 = _wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(select(_wgslsmith_mult_i32(global1.b.c.a.x, global1.c.a.a.x), _wgslsmith_div_i32(1i, -24946i), all(vec3<bool>(global1.b.b.c.x, true, true))), u_input.b), 0i, ~(~(~2147483647i)), 0i), vec4<i32>(_wgslsmith_sub_i32(-var_1.a.x, 2147483647i), select(_wgslsmith_mod_i32(1i, 1i), global1.b.b.a.x | var_1.a.x, arg_2.b.b.c.x), 31222i, ~var_1.a.x) >> (vec4<u32>(reverseBits(global0.c.c.b.x), 118941u, 1u, 39896u) % vec4<u32>(32u)));
    global0 = Struct_4(!select(global0.a, global0.a, vec4<bool>(any(global0.a.xz), !global0.a.x, global0.a.x, false)), ~_wgslsmith_mult_i32(max(~global0.c.c.a.x, reverseBits(var_2.x)), -_wgslsmith_mod_i32(global1.c.b.a.x, 3395i)), global0.c);
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-271f + arg_1), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_1))));
}

fn func_1(arg_0: vec4<bool>, arg_1: bool, arg_2: f32, arg_3: Struct_2) -> Struct_2 {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -439f) * _wgslsmith_f_op_f32(arg_2 - arg_2)) * 162f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(func_5(!vec3<bool>(global0.a.x, global0.a.x, false), _wgslsmith_f_op_f32(func_2(Struct_1(vec2<i32>(21125i, -45047i), vec4<u32>(51818u, 1u, global0.c.c.b.x, global0.c.a.b.x), arg_3.a.c))), Struct_3(u_input.a, Struct_2(Struct_1(global1.b.a.a, vec4<u32>(0u, 4294967295u, arg_3.c.b.x, 0u), vec2<bool>(arg_3.a.c.x, false)), arg_3.b, global1.b.b), arg_3)))), _wgslsmith_f_op_f32(func_2(Struct_1(arg_3.a.a, vec4<u32>(global1.c.a.b.x, 32844u, global1.c.b.b.x, 1u), !vec2<bool>(true, global1.c.b.c.x))))));
    let var_1 = !func_4(Struct_1(-vec2<i32>(arg_3.b.a.x, arg_3.a.a.x), ~vec4<u32>(global1.c.c.b.x, 47330u, 1u, 7446u), func_4(global1.c.c, Struct_3(4294967295u, global0.c, arg_3), arg_3.c.a.x, Struct_3(global1.b.c.b.x, Struct_2(global1.c.b, global0.c.c, Struct_1(vec2<i32>(-4347i, arg_3.b.a.x), vec4<u32>(0u, 0u, 31302u, arg_3.b.b.x), arg_3.a.c)), arg_3)).yz), Struct_3(94152u, Struct_2(global0.c.b, global0.c.c, arg_3.c), arg_3), -global1.c.a.a.x, Struct_3(1u, Struct_2(global1.c.a, Struct_1(global0.c.a.a, global1.c.b.b, global0.c.a.c), Struct_1(vec2<i32>(arg_3.c.a.x, global0.c.c.a.x), global0.c.b.b, vec2<bool>(false, arg_0.x))), global1.b)).x;
    global0 = Struct_4(arg_0, 1i, Struct_2(Struct_1(select(global0.c.a.a, global1.b.a.a, var_1) ^ abs(vec2<i32>(global0.b, 37875i)), arg_3.b.b, arg_3.b.c), Struct_1(firstTrailingBit(global0.c.a.a), vec4<u32>(~28746u, 5126u << (global1.c.b.b.x % 32u), ~global1.a, 1488u), vec2<bool>(!var_1, false || global0.a.x)), Struct_1(select(select(vec2<i32>(arg_3.c.a.x, -17343i), vec2<i32>(-58311i, global0.c.a.a.x), true), ~vec2<i32>(global0.c.b.a.x, 0i), false), reverseBits(~global0.c.c.b), func_4(Struct_1(vec2<i32>(2147483647i, arg_3.c.a.x), arg_3.a.b, arg_0.yy), Struct_3(1u, global1.c, Struct_2(arg_3.a, global1.b.b, global1.c.a)), ~u_input.b, Struct_3(u_input.a, arg_3, Struct_2(global1.c.c, Struct_1(global0.c.b.a, vec4<u32>(1u, 4294967295u, global0.c.c.b.x, u_input.a), vec2<bool>(false, arg_0.x)), Struct_1(vec2<i32>(-14546i, global0.c.c.a.x), arg_3.b.b, vec2<bool>(global0.c.a.c.x, false))))).zz)));
    global1 = Struct_3(~(_wgslsmith_dot_vec2_u32(vec2<u32>(39219u, 1u), global1.c.c.b.yx) ^ _wgslsmith_sub_u32(~arg_3.b.b.x, ~4294967295u)), global0.c, global1.b);
    let var_2 = 4294967295u;
    return global0.c;
}

fn func_6(arg_0: f32, arg_1: vec4<u32>, arg_2: Struct_2, arg_3: Struct_1) -> Struct_3 {
    global0 = Struct_4(func_4(Struct_1(arg_3.a, vec4<u32>(firstTrailingBit(arg_2.b.b.x), 21600u, arg_3.b.x, _wgslsmith_div_u32(arg_3.b.x, global1.a)), !vec2<bool>(arg_3.c.x, global1.b.c.c.x)), Struct_3(_wgslsmith_add_u32(~4294967295u, 0u), func_1(global0.a, global1.b.b.c.x, arg_0, Struct_2(arg_3, global0.c.b, Struct_1(arg_3.a, vec4<u32>(arg_3.b.x, global1.b.b.b.x, 81047u, global0.c.b.b.x), arg_2.b.c))), Struct_2(Struct_1(vec2<i32>(-44828i, global0.b), vec4<u32>(arg_1.x, global1.c.b.b.x, 0u, 4294967295u), arg_3.c), arg_2.c, Struct_1(vec2<i32>(arg_2.a.a.x, -14789i), vec4<u32>(arg_3.b.x, global1.a, 0u, 1u), vec2<bool>(arg_2.b.c.x, true)))), 45433i, Struct_3(90742u, global0.c, global1.b)), 26668i, func_1(vec4<bool>(false, true, true || all(global0.a.xzx), all(global0.a.yzz)), false, _wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0, 698f))), Struct_2(arg_3, Struct_1(arg_3.a, vec4<u32>(7641u, global0.c.b.b.x, 1u, 4294967295u), func_1(global0.a, arg_2.b.c.x, arg_0, global1.b).c.c), func_1(global0.a, true, arg_0, arg_2).c)));
    let var_0 = arg_3.c.x;
    var var_1 = ~(~vec3<u32>(select(arg_3.b.x, 1u, all(vec3<bool>(global0.c.a.c.x, global0.a.x, arg_3.c.x))), ~_wgslsmith_add_u32(global1.c.a.b.x, arg_2.a.b.x), _wgslsmith_mult_u32(_wgslsmith_div_u32(u_input.a, 79539u), ~0u)));
    let var_2 = arg_0 <= -668f;
    global0 = Struct_4(vec4<bool>(all(!vec2<bool>(true, global1.c.b.c.x)), true, global1.b.c.c.x, true), _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(global1.b.b.a.x, reverseBits(2147483647i)), vec2<i32>(global1.b.a.a.x, -44160i)), -32397i), Struct_2(Struct_1(_wgslsmith_clamp_vec2_i32(vec2<i32>(global1.c.a.a.x, global0.b), func_1(vec4<bool>(true, var_0, false, global0.c.a.c.x), true, arg_0, global0.c).a.a, global1.c.c.a), firstTrailingBit(func_3(-105f, Struct_3(global1.c.b.b.x, arg_2, Struct_2(arg_2.c, arg_3, global0.c.a)))), vec2<bool>(arg_3.c.x, true)), global1.b.c, arg_3));
    return Struct_3(19558u, func_1(!(!global0.a), var_0, -1328f, func_1(vec4<bool>(true, true, var_0, true), true, _wgslsmith_f_op_f32(f32(-1f) * -702f), arg_2)), arg_2);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0.c.c;
    let var_1 = func_6(_wgslsmith_f_op_f32(step(-1362f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1107f, -620f))))), ~(~min(abs(var_0.b), global0.c.c.b)), func_1(select(vec4<bool>(any(vec2<bool>(var_0.c.x, var_0.c.x)), var_0.c.x, !global1.b.a.c.x, true), select(vec4<bool>(global0.a.x, true, false, global0.c.c.c.x), vec4<bool>(false, global0.c.b.c.x, global0.c.a.c.x, true), select(vec4<bool>(false, false, var_0.c.x, var_0.c.x), global0.a, vec4<bool>(var_0.c.x, false, global0.c.b.c.x, true))), global1.c.c.c.x), var_0.c.x, 1000f, global1.b), func_1(global0.a, ~min(u_input.b, 1i) < (i32(-1i) * -1i), 1000f, Struct_2(global1.b.c, global0.c.c, Struct_1(abs(vec2<i32>(0i, global0.b)), global1.b.c.b, var_0.c))).c);
    var_0 = Struct_1(vec2<i32>(-30545i, _wgslsmith_mult_i32(_wgslsmith_mod_i32(u_input.b, -6066i), 1i) & 2147483647i), func_1(vec4<bool>(false, var_0.c.x && false, global1.c.b.c.x == func_6(1447f, global1.b.c.b, global1.b, global1.c.a).c.a.c.x, !(29588u >= u_input.a)), !all(global0.a), -1095f, var_1.b).a.b, !(!func_6(1000f, vec4<u32>(4294967295u, 14602u, global0.c.a.b.x, u_input.a), var_1.c, global0.c.b).b.a.c));
    let var_2 = _wgslsmith_sub_i32(var_1.c.c.a.x, _wgslsmith_mult_i32(u_input.b, var_1.c.c.a.x));
    global0 = Struct_4(!(!global0.a), var_2, func_1(global0.a, var_1.c.c.c.x, _wgslsmith_f_op_f32(func_5(!(!vec3<bool>(global1.c.c.c.x, false, global0.a.x)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -647f))), func_6(-1567f, _wgslsmith_sub_vec4_u32(vec4<u32>(global1.b.c.b.x, 2570u, 57582u, global1.a), vec4<u32>(global0.c.b.b.x, var_1.a, 4294967295u, u_input.a)), Struct_2(global0.c.b, Struct_1(vec2<i32>(var_1.c.a.a.x, global0.b), global1.b.a.b, var_0.c), Struct_1(var_1.b.b.a, vec4<u32>(1u, 46270u, 85096u, 4294967295u), vec2<bool>(false, global0.c.c.c.x))), func_6(1724f, global1.c.a.b, Struct_2(Struct_1(vec2<i32>(34047i, 3901i), vec4<u32>(var_1.c.c.b.x, 1452u, var_1.b.c.b.x, 15217u), vec2<bool>(true, var_0.c.x)), Struct_1(vec2<i32>(var_0.a.x, 0i), global1.b.a.b, vec2<bool>(false, var_1.b.a.c.x)), Struct_1(vec2<i32>(global0.c.c.a.x, -9448i), vec4<u32>(57666u, 27029u, 8516u, global0.c.c.b.x), var_1.c.c.c)), Struct_1(var_1.c.c.a, vec4<u32>(60706u, 0u, var_1.a, var_0.b.x), var_0.c)).c.a))), func_1(select(!vec4<bool>(false, true, var_1.b.c.c.x, false), vec4<bool>(var_0.c.x, var_0.c.x, false, var_0.c.x), false), true, 1934f, Struct_2(global1.c.c, global0.c.c, func_1(vec4<bool>(var_1.b.b.c.x, true, false, false), false, 803f, Struct_2(Struct_1(vec2<i32>(global0.b, global0.c.b.a.x), var_0.b, var_0.c), Struct_1(var_1.c.a.a, vec4<u32>(global0.c.b.b.x, var_0.b.x, global0.c.a.b.x, 4294967295u), var_0.c), global1.c.b)).a))));
    let var_3 = global1.b.c.a;
    let var_4 = global0.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(1u, -687f, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -868f), -706f, 1962f, 641f) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(433f, -309f, -960f, -150f) + _wgslsmith_f_op_vec4_f32(min(vec4<f32>(771f, -220f, 351f, 1530f), vec4<f32>(-621f, 179f, 630f, 1017f)))))));
}

