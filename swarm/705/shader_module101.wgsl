struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec3<u32>,
    d: vec2<i32>,
    e: f32,
}

struct Struct_4 {
    a: vec2<u32>,
    b: vec3<i32>,
}

struct Struct_5 {
    a: Struct_1,
    b: vec3<f32>,
    c: vec4<bool>,
    d: vec3<f32>,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(vec2<u32>(1u, 1u), vec3<i32>(2147483647i, 1i, -1789i));

var<private> global1: array<f32, 10> = array<f32, 10>(-1000f, 903f, 1109f, 1415f, 521f, -1264f, 2083f, -834f, -1162f, 1225f);

var<private> global2: u32 = 0u;

var<private> global3: Struct_1 = Struct_1(vec2<i32>(i32(-2147483648), 1i));

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
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

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3() -> vec3<bool> {
    global2 = ~(~(~(~global0.a.x) & 4294967295u));
    let var_0 = -firstTrailingBit(vec4<i32>(-max(global0.b.x, global3.a.x), global3.a.x, -20407i, _wgslsmith_add_i32(abs(u_input.b.x), 2147483647i)));
    let var_1 = Struct_3(Struct_2(select(vec2<bool>(true, true), !select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false)), true), Struct_1(-(~var_0.yz)), Struct_1(var_0.yy), Struct_1(_wgslsmith_div_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(-30911i, global0.b.x), global0.b.xx), ~u_input.b.zy)), Struct_1(_wgslsmith_clamp_vec2_i32(-vec2<i32>(-23764i, var_0.x), var_0.wy << (vec2<u32>(0u, 70225u) % vec2<u32>(32u)), vec2<i32>(var_0.x, global0.b.x)))), Struct_2(select(select(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false)), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true)), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true))), select(vec2<bool>(true, true), vec2<bool>(true, true), true), true), Struct_1(~reverseBits(var_0.yy)), Struct_1(vec2<i32>(0i, global3.a.x) >> (vec2<u32>(0u, global0.a.x) % vec2<u32>(32u))), Struct_1(vec2<i32>(abs(u_input.a), ~var_0.x)), Struct_1(abs(-vec2<i32>(23598i, 44325i)))), _wgslsmith_add_vec3_u32(vec3<u32>(max(global0.a.x | 4294967295u, global0.a.x), ~(~16612u), firstTrailingBit(1u)), ~(firstLeadingBit(vec3<u32>(57888u, global0.a.x, 22154u)) << (vec3<u32>(24955u, global0.a.x, 76013u) % vec3<u32>(32u)))), vec2<i32>(-_wgslsmith_div_i32(_wgslsmith_mult_i32(-1i, global0.b.x), 0i), -64459i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(539f - 919f)))));
    global1 = array<f32, 10>();
    let var_2 = ~(~(var_1.c.x ^ _wgslsmith_div_u32(var_1.c.x, reverseBits(4294967295u))));
    return !vec3<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.e) - _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(var_2, 10u)])) < global1[_wgslsmith_index_u32(reverseBits(0u), 10u)], true, select(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(global0.a.x, 10u)]) > -1176f, any(vec2<bool>(false, var_1.a.a.x)), var_1.a.a.x));
}

fn func_4(arg_0: vec3<bool>, arg_1: vec4<u32>, arg_2: Struct_1) -> bool {
    var var_0 = 7051u;
    var var_1 = ~(-(firstTrailingBit(-vec4<i32>(global0.b.x, u_input.a, -7772i, 63962i)) >> (_wgslsmith_add_vec4_u32(arg_1, vec4<u32>(global0.a.x, 5087u, 35615u, arg_1.x)) % vec4<u32>(32u))));
    var var_2 = -(u_input.b.x ^ abs(-14706i));
    var_2 = 2147483647i;
    var_2 = _wgslsmith_clamp_i32(-1i, ~global3.a.x, _wgslsmith_div_i32(-3428i | global3.a.x, firstTrailingBit(_wgslsmith_sub_i32(-u_input.a, 2147483647i))));
    return arg_0.x;
}

fn func_2(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: vec2<bool>, arg_3: i32) -> Struct_1 {
    let var_0 = Struct_5(arg_0, vec3<f32>(_wgslsmith_f_op_f32(min(1001f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-233f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_1.x, arg_1.x))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(920f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -784f), _wgslsmith_f_op_f32(-655f * global1[_wgslsmith_index_u32(global0.a.x, 10u)]), !arg_2.x)) + _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(~7713u, 10u)] * _wgslsmith_f_op_f32(1108f * global1[_wgslsmith_index_u32(94519u, 10u)])))), vec4<bool>(!(!arg_2.x), global3.a.x > (_wgslsmith_mult_i32(u_input.b.x, 1i) ^ countOneBits(global3.a.x)), func_4(select(func_3(), !vec3<bool>(true, arg_2.x, true), !vec3<bool>(arg_2.x, arg_2.x, arg_2.x)), _wgslsmith_div_vec4_u32(~vec4<u32>(global0.a.x, global0.a.x, global0.a.x, 46909u), _wgslsmith_mod_vec4_u32(vec4<u32>(44497u, 1u, 1u, 20884u), vec4<u32>(global0.a.x, 4294967295u, global0.a.x, 31958u))), arg_0), true), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1815f, 1376f, arg_1.x))))))), global0.a.x);
    let var_1 = Struct_4(global0.a, (-_wgslsmith_sub_vec3_i32(vec3<i32>(-11535i, -2147483647i, -28524i), vec3<i32>(52880i, arg_0.a.x, -1i)) & abs(max(vec3<i32>(-9196i, global0.b.x, -45063i), vec3<i32>(0i, arg_3, 0i)))) | ~min(vec3<i32>(u_input.a, 0i, global0.b.x) << (vec3<u32>(global0.a.x, var_0.e, 4294967295u) % vec3<u32>(32u)), reverseBits(vec3<i32>(1i, arg_0.a.x, arg_3))));
    let var_2 = _wgslsmith_f_op_vec2_f32(arg_1 + arg_1);
    global2 = 0u;
    let var_3 = Struct_3(Struct_2(select(vec2<bool>(all(var_0.c.ww), any(vec2<bool>(true, true))), vec2<bool>(true, arg_2.x | var_0.c.x), arg_2), Struct_1(_wgslsmith_mult_vec2_i32(u_input.b.zx, var_1.b.yy)), Struct_1(var_0.a.a), Struct_1(~vec2<i32>(u_input.b.x, -26437i)), Struct_1(vec2<i32>(_wgslsmith_sub_i32(-1i, 25159i), min(var_0.a.a.x, arg_3)))), Struct_2(!(!func_3().xx), var_0.a, Struct_1(vec2<i32>(0i, ~global3.a.x)), var_0.a, arg_0), vec3<u32>(~global0.a.x, global0.a.x, _wgslsmith_dot_vec4_u32(select(vec4<u32>(7452u, var_1.a.x, global0.a.x, 105210u), vec4<u32>(var_1.a.x, 139992u, 1u, 4294967295u), vec4<bool>(true, arg_2.x, false, true)), vec4<u32>(var_1.a.x, global0.a.x, 1u, var_1.a.x)) << (51832u % 32u)), _wgslsmith_sub_vec2_i32(arg_0.a, vec2<i32>(-_wgslsmith_div_i32(var_1.b.x, -53081i), arg_0.a.x)), var_2.x);
    return var_0.a;
}

fn func_1(arg_0: Struct_3, arg_1: vec3<bool>, arg_2: Struct_5, arg_3: vec2<f32>) -> Struct_1 {
    let var_0 = Struct_5(func_2(arg_0.b.c, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(arg_2.d.xx)) + vec2<f32>(1331f, arg_0.e)) * _wgslsmith_f_op_vec2_f32(-arg_3)), !arg_2.c.xy, global0.b.x), vec3<f32>(963f, -377f, -934f), arg_2.c, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(arg_2.b, _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(arg_2.d * arg_2.d)))))), arg_2.e);
    let var_1 = vec3<i32>(_wgslsmith_mult_i32(0i, ~u_input.b.x), 43425i, (arg_2.a.a.x ^ global3.a.x) & -8325i);
    return arg_2.a;
}

fn func_5(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: vec4<f32>, arg_3: Struct_3) -> vec2<i32> {
    global2 = 1u;
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(arg_2)) - arg_2) - _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(752f, arg_3.e, arg_3.e, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1053f + -1685f))))));
    global3 = func_1(arg_3, select(vec3<bool>(arg_3.a.a.x, !select(false, false, false), true), !(!arg_1), !(false || all(vec4<bool>(arg_3.a.a.x, arg_0.a.x, arg_0.a.x, arg_3.a.a.x)))), Struct_5(Struct_1(arg_3.d), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.x, 800f, global1[_wgslsmith_index_u32(arg_3.c.x, 10u)])))), !(!select(vec4<bool>(arg_1.x, false, true, arg_3.a.a.x), vec4<bool>(arg_0.a.x, true, true, arg_3.b.a.x), true)), _wgslsmith_f_op_vec3_f32(trunc(arg_2.wzy)), ~reverseBits(~0u)), _wgslsmith_div_vec2_f32(var_0.yw, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(arg_2.wz)) - _wgslsmith_f_op_vec2_f32(-arg_2.zw)))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(4294967295u, 10u)])) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1190f, arg_3.e))), -1956f));
    var var_2 = Struct_5(Struct_1(abs(max(_wgslsmith_add_vec2_i32(global3.a, vec2<i32>(-2147483647i, arg_0.e.a.x)), global3.a))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(var_0.zzz))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_1, 2879f, global1[_wgslsmith_index_u32(13590u, 10u)]), vec3<f32>(var_1, var_1, var_0.x)) * _wgslsmith_f_op_vec3_f32(-arg_2.ywz)), true)), _wgslsmith_f_op_vec3_f32(var_0.yzz * arg_2.xxy), vec3<bool>(all(select(vec4<bool>(arg_0.a.x, false, arg_1.x, arg_0.a.x), vec4<bool>(arg_0.a.x, arg_1.x, false, arg_0.a.x), vec4<bool>(true, true, false, arg_3.b.a.x))), arg_2.x != arg_3.e, !all(vec4<bool>(false, false, arg_3.b.a.x, arg_0.a.x))))), select(!(!(!vec4<bool>(false, false, arg_1.x, false))), !select(vec4<bool>(arg_1.x, true, arg_1.x, false), vec4<bool>(false, arg_3.a.a.x, true, arg_0.a.x), !arg_0.a.x), !vec4<bool>(-872f <= global1[_wgslsmith_index_u32(5673u, 10u)], true, arg_1.x, func_3().x)), vec3<f32>(1f, 1031f, -1936f), _wgslsmith_dot_vec2_u32(global0.a, vec2<u32>(~0u, ~0u)) | 15788u);
    return vec2<i32>(13180i, _wgslsmith_mod_i32(-1i, arg_3.a.c.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(Struct_2(select(vec2<bool>(true, true), vec2<bool>(true, false), any(vec3<bool>(false, true, true))), func_1(Struct_3(Struct_2(vec2<bool>(true, true), Struct_1(vec2<i32>(-1i, 1i)), Struct_1(global3.a), Struct_1(vec2<i32>(0i, global0.b.x)), Struct_1(vec2<i32>(global0.b.x, u_input.a))), Struct_2(vec2<bool>(false, false), Struct_1(global3.a), Struct_1(global0.b.yz), Struct_1(vec2<i32>(5727i, u_input.a)), Struct_1(u_input.b.ww)), vec3<u32>(global0.a.x, 39628u, global0.a.x), vec2<i32>(15889i, global0.b.x), global1[_wgslsmith_index_u32(4294967295u, 10u)]), vec3<bool>(true, true, true), Struct_5(Struct_1(vec2<i32>(global0.b.x, -49176i)), vec3<f32>(global1[_wgslsmith_index_u32(global0.a.x, 10u)], -726f, global1[_wgslsmith_index_u32(global0.a.x, 10u)]), vec4<bool>(true, false, false, false), vec3<f32>(global1[_wgslsmith_index_u32(0u, 10u)], global1[_wgslsmith_index_u32(4294967295u, 10u)], global1[_wgslsmith_index_u32(global0.a.x, 10u)]), global0.a.x), vec2<f32>(global1[_wgslsmith_index_u32(global0.a.x, 10u)], global1[_wgslsmith_index_u32(69193u, 10u)])), Struct_1(global0.b.yx), Struct_1(-global0.b.zy), func_2(func_2(Struct_1(vec2<i32>(-6417i, -9570i)), vec2<f32>(-661f, global1[_wgslsmith_index_u32(global0.a.x, 10u)]), vec2<bool>(false, false), global0.b.x), vec2<f32>(-207f, global1[_wgslsmith_index_u32(11884u, 10u)]), vec2<bool>(false, true), _wgslsmith_mod_i32(u_input.b.x, u_input.a))), vec3<bool>(all(vec3<bool>(true, true, true)), !all(vec2<bool>(true, true)), func_3().x), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1012f, -719f, -436f, 333f)) - _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1663f, global1[_wgslsmith_index_u32(global0.a.x, 10u)], global1[_wgslsmith_index_u32(global0.a.x, 10u)], 735f)))))), Struct_3(Struct_2(vec2<bool>(true, true), func_2(Struct_1(u_input.b.yx), vec2<f32>(1233f, global1[_wgslsmith_index_u32(global0.a.x, 10u)]), vec2<bool>(true, false), 23753i), func_2(Struct_1(vec2<i32>(global0.b.x, 2147483647i)), vec2<f32>(249f, -381f), vec2<bool>(true, true), -28945i), func_1(Struct_3(Struct_2(vec2<bool>(true, true), Struct_1(u_input.b.yy), Struct_1(vec2<i32>(5192i, -9060i)), Struct_1(u_input.b.xz), Struct_1(vec2<i32>(global0.b.x, -1i))), Struct_2(vec2<bool>(true, true), Struct_1(vec2<i32>(-2147483647i, -72004i)), Struct_1(u_input.b.ww), Struct_1(global0.b.xy), Struct_1(global3.a)), vec3<u32>(global0.a.x, global0.a.x, global0.a.x), global3.a, global1[_wgslsmith_index_u32(46567u, 10u)]), vec3<bool>(true, false, true), Struct_5(Struct_1(global0.b.yy), vec3<f32>(-1119f, global1[_wgslsmith_index_u32(18729u, 10u)], global1[_wgslsmith_index_u32(global0.a.x, 10u)]), vec4<bool>(true, true, true, false), vec3<f32>(global1[_wgslsmith_index_u32(global0.a.x, 10u)], global1[_wgslsmith_index_u32(20925u, 10u)], global1[_wgslsmith_index_u32(68935u, 10u)]), global0.a.x), vec2<f32>(global1[_wgslsmith_index_u32(global0.a.x, 10u)], global1[_wgslsmith_index_u32(global0.a.x, 10u)])), func_1(Struct_3(Struct_2(vec2<bool>(false, false), Struct_1(u_input.b.yz), Struct_1(vec2<i32>(0i, 0i)), Struct_1(global0.b.zz), Struct_1(vec2<i32>(1i, 2147483647i))), Struct_2(vec2<bool>(true, true), Struct_1(vec2<i32>(3916i, u_input.a)), Struct_1(vec2<i32>(0i, u_input.a)), Struct_1(global0.b.yy), Struct_1(u_input.b.xy)), vec3<u32>(global0.a.x, 1u, global0.a.x), global3.a, global1[_wgslsmith_index_u32(global0.a.x, 10u)]), vec3<bool>(true, false, true), Struct_5(Struct_1(u_input.b.xz), vec3<f32>(global1[_wgslsmith_index_u32(4294967295u, 10u)], 1122f, -931f), vec4<bool>(false, false, true, true), vec3<f32>(global1[_wgslsmith_index_u32(global0.a.x, 10u)], 1056f, 934f), global0.a.x), vec2<f32>(global1[_wgslsmith_index_u32(4294967295u, 10u)], 298f))), Struct_2(func_3().yx, Struct_1(vec2<i32>(15715i, u_input.a)), func_2(Struct_1(vec2<i32>(-23283i, 28922i)), vec2<f32>(-1300f, -1646f), vec2<bool>(true, true), -1i), func_2(Struct_1(u_input.b.xz), vec2<f32>(462f, global1[_wgslsmith_index_u32(12229u, 10u)]), vec2<bool>(true, true), 1i), func_1(Struct_3(Struct_2(vec2<bool>(false, true), Struct_1(vec2<i32>(-20736i, global3.a.x)), Struct_1(u_input.b.ww), Struct_1(u_input.b.zy), Struct_1(global0.b.zx)), Struct_2(vec2<bool>(true, true), Struct_1(global3.a), Struct_1(vec2<i32>(2147483647i, 12326i)), Struct_1(global0.b.yx), Struct_1(vec2<i32>(-19314i, global3.a.x))), vec3<u32>(global0.a.x, 0u, 4294967295u), vec2<i32>(u_input.a, -2147483647i), global1[_wgslsmith_index_u32(global0.a.x, 10u)]), vec3<bool>(false, false, true), Struct_5(Struct_1(global0.b.yx), vec3<f32>(1000f, -1188f, -396f), vec4<bool>(false, false, false, true), vec3<f32>(422f, global1[_wgslsmith_index_u32(global0.a.x, 10u)], -1003f), global0.a.x), vec2<f32>(-159f, 745f))), _wgslsmith_sub_vec3_u32(vec3<u32>(global0.a.x, global0.a.x, 4294967295u) ^ vec3<u32>(44690u, global0.a.x, global0.a.x), select(vec3<u32>(global0.a.x, 45167u, 25605u), vec3<u32>(global0.a.x, global0.a.x, global0.a.x), vec3<bool>(true, true, true))), ~_wgslsmith_div_vec2_i32(vec2<i32>(-1i, -2147483647i), global0.b.zx), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global1[_wgslsmith_index_u32(35893u, 10u)])) * -1672f))) ^ ~(-vec2<i32>(global0.b.x, _wgslsmith_mult_i32(global0.b.x, global0.b.x)));
    var var_1 = Struct_2(vec2<bool>(true, false), func_2(func_1(Struct_3(Struct_2(vec2<bool>(false, false), Struct_1(global3.a), Struct_1(global3.a), Struct_1(vec2<i32>(-28171i, 2147483647i)), Struct_1(vec2<i32>(global3.a.x, u_input.a))), Struct_2(vec2<bool>(true, true), Struct_1(var_0), Struct_1(global0.b.xy), Struct_1(vec2<i32>(var_0.x, -2147483647i)), Struct_1(vec2<i32>(var_0.x, 2147483647i))), vec3<u32>(7157u, global0.a.x, 17879u) ^ vec3<u32>(1u, global0.a.x, global0.a.x), -global0.b.yy, _wgslsmith_f_op_f32(step(global1[_wgslsmith_index_u32(4294967295u, 10u)], 1287f))), select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), true), Struct_5(Struct_1(u_input.b.xy), _wgslsmith_f_op_vec3_f32(vec3<f32>(262f, -2130f, global1[_wgslsmith_index_u32(global0.a.x, 10u)]) + vec3<f32>(-1175f, -458f, global1[_wgslsmith_index_u32(58724u, 10u)])), vec4<bool>(false, true, false, true), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1459f, global1[_wgslsmith_index_u32(global0.a.x, 10u)], -1880f), vec3<f32>(global1[_wgslsmith_index_u32(36469u, 10u)], -173f, 1951f))), 4294967295u), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-291f, 413f) - vec2<f32>(2194f, 883f)), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global1[_wgslsmith_index_u32(global0.a.x, 10u)], -1049f))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global0.a.x, global0.a.x, global0.a.x), 10u)], -796f)), select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false)), vec2<bool>(true, true)), vec2<bool>(true, true), func_3().yy), _wgslsmith_clamp_i32(-40576i, _wgslsmith_sub_i32(global0.b.x, firstLeadingBit(48058i)), 24693i)), Struct_1(_wgslsmith_mult_vec2_i32(vec2<i32>(max(-2147483647i, u_input.b.x), -413i), max(global3.a, func_1(Struct_3(Struct_2(vec2<bool>(true, true), Struct_1(global3.a), Struct_1(global0.b.yz), Struct_1(vec2<i32>(-1i, u_input.b.x)), Struct_1(global0.b.yz)), Struct_2(vec2<bool>(true, true), Struct_1(var_0), Struct_1(var_0), Struct_1(global0.b.zx), Struct_1(vec2<i32>(22379i, u_input.b.x))), vec3<u32>(global0.a.x, 0u, 1u), global3.a, global1[_wgslsmith_index_u32(global0.a.x, 10u)]), vec3<bool>(true, false, true), Struct_5(Struct_1(vec2<i32>(global0.b.x, 2147483647i)), vec3<f32>(global1[_wgslsmith_index_u32(36779u, 10u)], global1[_wgslsmith_index_u32(1u, 10u)], -304f), vec4<bool>(false, false, false, true), vec3<f32>(global1[_wgslsmith_index_u32(global0.a.x, 10u)], global1[_wgslsmith_index_u32(global0.a.x, 10u)], 292f), 4294967295u), vec2<f32>(169f, global1[_wgslsmith_index_u32(42056u, 10u)])).a))), func_1(Struct_3(Struct_2(vec2<bool>(true, true), func_1(Struct_3(Struct_2(vec2<bool>(true, true), Struct_1(vec2<i32>(2147483647i, 2147483647i)), Struct_1(var_0), Struct_1(var_0), Struct_1(var_0)), Struct_2(vec2<bool>(true, false), Struct_1(global3.a), Struct_1(vec2<i32>(-18561i, 25581i)), Struct_1(vec2<i32>(var_0.x, u_input.b.x)), Struct_1(vec2<i32>(u_input.b.x, global3.a.x))), vec3<u32>(4294967295u, 4294967295u, global0.a.x), u_input.b.zy, global1[_wgslsmith_index_u32(global0.a.x, 10u)]), vec3<bool>(true, false, true), Struct_5(Struct_1(u_input.b.yz), vec3<f32>(global1[_wgslsmith_index_u32(global0.a.x, 10u)], 1418f, 1000f), vec4<bool>(true, true, false, true), vec3<f32>(global1[_wgslsmith_index_u32(42367u, 10u)], global1[_wgslsmith_index_u32(1u, 10u)], 814f), global0.a.x), vec2<f32>(global1[_wgslsmith_index_u32(global0.a.x, 10u)], global1[_wgslsmith_index_u32(global0.a.x, 10u)])), Struct_1(vec2<i32>(-2147483647i, 2147483647i)), func_2(Struct_1(global0.b.yy), vec2<f32>(global1[_wgslsmith_index_u32(4294967295u, 10u)], global1[_wgslsmith_index_u32(15191u, 10u)]), vec2<bool>(false, false), -2147483647i), Struct_1(vec2<i32>(17371i, global0.b.x))), Struct_2(vec2<bool>(true, true), Struct_1(global0.b.zy), Struct_1(var_0), Struct_1(var_0), func_2(Struct_1(u_input.b.wz), vec2<f32>(global1[_wgslsmith_index_u32(19009u, 10u)], global1[_wgslsmith_index_u32(global0.a.x, 10u)]), vec2<bool>(true, false), 0i)), ~(~vec3<u32>(4294967295u, global0.a.x, 4294967295u)), abs(vec2<i32>(-34473i, var_0.x)), global1[_wgslsmith_index_u32(global0.a.x | ~global0.a.x, 10u)]), !select(vec3<bool>(false, true, true), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), false), vec3<bool>(false, true, true)), Struct_5(func_2(func_2(Struct_1(u_input.b.xx), vec2<f32>(global1[_wgslsmith_index_u32(global0.a.x, 10u)], global1[_wgslsmith_index_u32(1u, 10u)]), vec2<bool>(false, false), global3.a.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(-914f, 473f) - vec2<f32>(global1[_wgslsmith_index_u32(1u, 10u)], -495f)), vec2<bool>(false, true), ~global0.b.x), vec3<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(0u, 10u)]), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(global0.a.x, 10u)]), 385f), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false)), false), vec3<f32>(_wgslsmith_f_op_f32(-1741f + -1542f), -104f, _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(global0.a.x, 10u)] - global1[_wgslsmith_index_u32(global0.a.x, 10u)])), ~_wgslsmith_dot_vec2_u32(vec2<u32>(global0.a.x, 2524u), global0.a)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(59218u, 10u)], 751f) + vec2<f32>(global1[_wgslsmith_index_u32(1u, 10u)], -861f)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(149f, global1[_wgslsmith_index_u32(13770u, 10u)]), vec2<f32>(global1[_wgslsmith_index_u32(global0.a.x, 10u)], global1[_wgslsmith_index_u32(global0.a.x, 10u)]))) - vec2<f32>(global1[_wgslsmith_index_u32(1u, 10u)], 1000f)))), Struct_1(global0.b.yy));
    var var_2 = _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(49761u, 10u)] * _wgslsmith_f_op_f32(floor(1066f))) <= 318f;
    let var_3 = Struct_5(Struct_1(var_1.c.a), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(1u, 10u)], 238f, global1[_wgslsmith_index_u32(global0.a.x, 10u)]) + vec3<f32>(-557f, 1315f, 1171f)))))))), !select(!vec4<bool>(var_1.a.x, var_1.a.x, true, false), !select(vec4<bool>(var_1.a.x, true, false, true), vec4<bool>(true, var_1.a.x, var_1.a.x, var_1.a.x), var_1.a.x), true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(~1u, 10u)], _wgslsmith_div_f32(global1[_wgslsmith_index_u32(74740u, 10u)], global1[_wgslsmith_index_u32(global0.a.x, 10u)]), 580f))), 4294967295u);
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(575f - _wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(f32(-1f) * -1065f))) - _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_3.e, var_3.e, 4294967295u), countOneBits(~vec3<u32>(var_3.e, 1u, var_3.e))), 10u)] * 1173f));
    let var_5 = vec3<u32>(var_3.e << ((global0.a.x | var_3.e) % 32u), ~(~global0.a.x), ~(~global0.a.x));
    var var_6 = var_3;
    let var_7 = !var_3.c.wxz;
    var var_8 = var_5;
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(_wgslsmith_mult_i32(global0.b.x, -4173i)), -830f);
}

