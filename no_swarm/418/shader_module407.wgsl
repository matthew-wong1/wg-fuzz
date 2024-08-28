struct Struct_1 {
    a: vec4<f32>,
    b: i32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec4<f32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec4<u32>,
    b: bool,
    c: Struct_2,
    d: Struct_3,
}

struct Struct_5 {
    a: f32,
    b: vec4<u32>,
    c: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: bool = false;

var<private> global2: bool = true;

var<private> global3: array<vec2<f32>, 8>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_4, arg_2: Struct_3, arg_3: Struct_1) -> i32 {
    global0 = -728f;
    let var_0 = min(countOneBits(66128u), arg_1.a.x);
    let var_1 = arg_1.c;
    let var_2 = arg_1.a;
    global1 = !(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(170f + arg_2.a.d.a.x), _wgslsmith_f_op_f32(ceil(-738f)))) <= -132f);
    return arg_2.a.d.b;
}

fn func_4(arg_0: i32, arg_1: vec3<bool>, arg_2: Struct_3, arg_3: u32) -> vec4<f32> {
    global1 = false;
    global0 = -390f;
    global0 = _wgslsmith_f_op_f32(floor(arg_2.a.b.x));
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_2.a.b + arg_2.a.b) * vec4<f32>(_wgslsmith_f_op_f32(select(-1537f, _wgslsmith_f_op_f32(arg_2.a.d.a.x * arg_2.a.d.a.x), arg_1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-284f)) - _wgslsmith_f_op_f32(-arg_2.a.b.x)), arg_2.a.b.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(arg_2.a.c.a.x, 3288f)), arg_2.a.d.a.x)))) * arg_2.a.b);
    var var_1 = Struct_1(arg_2.a.c.a, -1i);
    return vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -524f) + _wgslsmith_f_op_f32(-898f * -502f)), -1126f, true)), 735f, arg_2.a.c.a.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.x, arg_2.a.d.a.x) + _wgslsmith_f_op_f32(1056f - var_0.x))))));
}

fn func_2(arg_0: i32) -> Struct_4 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(func_4(func_3(Struct_1(vec4<f32>(-1845f, -1168f, 748f, -1458f), -1i), Struct_4(u_input.b, false, Struct_2(vec4<bool>(true, false, true, false), vec4<f32>(205f, -1573f, 1000f, -1505f), Struct_1(vec4<f32>(-251f, -472f, -182f, 773f), 0i), Struct_1(vec4<f32>(920f, 1000f, 604f, 1787f), u_input.e)), Struct_3(Struct_2(vec4<bool>(false, true, false, true), vec4<f32>(1325f, 486f, 1000f, -340f), Struct_1(vec4<f32>(-189f, 1336f, 1000f, -1000f), 0i), Struct_1(vec4<f32>(-741f, 1275f, 1235f, 569f), 10157i)))), Struct_3(Struct_2(vec4<bool>(true, true, false, false), vec4<f32>(-2666f, 504f, 172f, 821f), Struct_1(vec4<f32>(-1332f, -316f, 1000f, 156f), -952i), Struct_1(vec4<f32>(-1118f, 471f, 391f, -112f), 1i))), Struct_1(vec4<f32>(2688f, 327f, -674f, 400f), u_input.e)), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true)), Struct_3(Struct_2(vec4<bool>(false, true, false, false), vec4<f32>(-1402f, 1070f, 524f, -1177f), Struct_1(vec4<f32>(-1969f, -905f, 396f, 948f), u_input.e), Struct_1(vec4<f32>(-714f, -2664f, -305f, -1000f), arg_0))), 4294967295u)), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -369f), -1868f, -735f, -1000f)))), ~min(u_input.e, ~min(29298i, arg_0)));
    var var_1 = ~firstTrailingBit(((u_input.b.x >> (0u % 32u)) | u_input.b.x) << (countOneBits(min(u_input.a, u_input.a)) % 32u));
    global1 = all(vec4<bool>(all(vec2<bool>(true, false)), true, false, true));
    var var_2 = countOneBits(_wgslsmith_mod_i32((arg_0 << (firstLeadingBit(u_input.a) % 32u)) | arg_0, 21180i));
    global3 = array<vec2<f32>, 8>();
    return Struct_4(firstLeadingBit(~(~(~u_input.b))), false, Struct_2(select(vec4<bool>(true, any(vec2<bool>(true, true)), true, false), vec4<bool>(true, true, true, true), false), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1000f)) - var_0.a.x), var_0.a.x, -941f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0.a.x, -338f)) * _wgslsmith_div_f32(var_0.a.x, 1549f))), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_0.a.x, var_0.a.x, var_0.a.x, var_0.a.x)))), -max(u_input.e, u_input.e)), var_0), Struct_3(Struct_2(select(select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true), false), select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, true)), vec4<bool>(false, false, true, true)), vec4<f32>(var_0.a.x, _wgslsmith_f_op_f32(step(268f, -1061f)), 575f, 779f), Struct_1(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.a.x, 178f, var_0.a.x, 854f), vec4<f32>(174f, 567f, var_0.a.x, -665f)), firstTrailingBit(var_0.b)), var_0)));
}

fn func_5(arg_0: Struct_5, arg_1: bool, arg_2: i32, arg_3: i32) -> vec2<bool> {
    global3 = array<vec2<f32>, 8>();
    var var_0 = func_2(countOneBits(-89302i)).c.c;
    let var_1 = Struct_1(arg_0.c.c.d.a, reverseBits(_wgslsmith_clamp_i32(-(i32(-1i) * -43649i), func_3(arg_0.c.c.c, arg_0.c, Struct_3(Struct_2(vec4<bool>(arg_0.c.b, true, arg_1, true), var_0.a, Struct_1(vec4<f32>(-1000f, -767f, -828f, 927f), 2147483647i), Struct_1(vec4<f32>(-565f, arg_0.a, var_0.a.x, 1225f), var_0.b))), arg_0.c.d.a.d), 10699i)));
    var var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(747f - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.a.x, 217f)))))));
    var_2 = -540f;
    return select(arg_0.c.d.a.a.wy, arg_0.c.d.a.a.zw, !func_2(func_3(func_2(-55521i).c.d, Struct_4(arg_0.b, true, Struct_2(arg_0.c.d.a.a, var_1.a, Struct_1(var_1.a, var_1.b), Struct_1(var_1.a, var_1.b)), arg_0.c.d), arg_0.c.d, func_2(var_0.b).c.c)).c.a.xz);
}

fn func_1(arg_0: Struct_2, arg_1: f32, arg_2: i32, arg_3: i32) -> Struct_1 {
    var var_0 = vec2<bool>(any(arg_0.a), !arg_0.a.x);
    var_0 = !func_5(Struct_5(arg_1, _wgslsmith_mod_vec4_u32(u_input.b, u_input.b), func_2(arg_2)), !(!func_2(-5585i).b), 1302i, arg_0.c.b);
    var var_1 = var_0.x;
    let var_2 = u_input.e;
    global1 = -1677f > _wgslsmith_f_op_f32(-815f * func_2(53941i).d.a.c.a.x);
    return arg_0.d;
}

fn func_6(arg_0: f32, arg_1: vec3<bool>, arg_2: i32, arg_3: Struct_1) -> bool {
    let var_0 = func_2(arg_3.b).c.a.x;
    let var_1 = u_input.b.yz;
    let var_2 = arg_3.b;
    let var_3 = Struct_5(arg_0, select(u_input.b, _wgslsmith_mod_vec4_u32(u_input.b, ~firstLeadingBit(vec4<u32>(u_input.d, var_1.x, u_input.c, var_1.x))), !(!vec4<bool>(true, true, var_0, false))), Struct_4(u_input.b, false, func_2(_wgslsmith_dot_vec4_i32(abs(vec4<i32>(16119i, arg_2, var_2, -16312i)), _wgslsmith_div_vec4_i32(vec4<i32>(-13309i, u_input.e, 1i, arg_3.b), vec4<i32>(var_2, 14399i, -23130i, 2147483647i)))).d.a, func_2(1i).d));
    let var_4 = Struct_5(_wgslsmith_f_op_f32(-arg_3.a.x), max(u_input.b, _wgslsmith_div_vec4_u32(max(var_3.c.a, ~vec4<u32>(var_1.x, u_input.a, 68944u, var_1.x)), u_input.b)), func_2(arg_2 >> (~var_3.c.a.x % 32u)));
    return _wgslsmith_dot_vec3_u32(var_4.b.xyw, (var_4.b.zyy | var_4.c.a.zzz) & firstTrailingBit(vec3<u32>(var_1.x, var_4.b.x, u_input.d))) >= 0u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstLeadingBit(vec2<i32>(-2147483647i, 0i));
    global3 = array<vec2<f32>, 8>();
    var var_1 = !vec2<bool>(true, select(all(vec2<bool>(false, false)), func_6(_wgslsmith_div_f32(1906f, -241f), vec3<bool>(true, true, false), -34364i, func_1(Struct_2(vec4<bool>(false, false, true, false), vec4<f32>(594f, 540f, -616f, -982f), Struct_1(vec4<f32>(-1151f, -220f, -629f, 395f), -29771i), Struct_1(vec4<f32>(-549f, 707f, 1779f, 299f), u_input.e)), -613f, var_0.x, 2147483647i)), true));
    let var_2 = Struct_2(!vec4<bool>(any(vec2<bool>(true, false)), false, _wgslsmith_dot_vec3_u32(u_input.b.zxw, vec3<u32>(u_input.b.x, u_input.d, 11055u)) > max(u_input.d, 47113u), !var_1.x), _wgslsmith_f_op_vec4_f32(-func_2(u_input.e).c.c.a), Struct_1(vec4<f32>(1f, 1f, 1f, 1f), 14334i), Struct_1(_wgslsmith_f_op_vec4_f32(round(func_2(1i).c.b)), _wgslsmith_sub_i32(1i, _wgslsmith_dot_vec4_i32(max(vec4<i32>(78430i, 66587i, var_0.x, 2147483647i), vec4<i32>(u_input.e, var_0.x, u_input.e, 28497i)), vec4<i32>(u_input.e, -26038i, 0i, u_input.e) >> (u_input.b % vec4<u32>(32u))))));
    let var_3 = ~select(firstTrailingBit(u_input.b), vec4<u32>(_wgslsmith_div_u32(1u, ~u_input.c), select(u_input.b.x, 62817u, true), ~func_2(var_2.c.b).a.x, firstLeadingBit(1u)), var_2.a);
    let x = u_input.a;
    s_output = StorageBuffer(var_2.d.a, _wgslsmith_mod_vec3_i32(~vec3<i32>(abs(var_2.d.b), -11829i, ~var_2.d.b), max(vec3<i32>(firstTrailingBit(-2147483647i), var_0.x, -var_2.c.b), vec3<i32>(1656i, var_0.x, -1i) | vec3<i32>(var_0.x, -109i, -10410i))), _wgslsmith_dot_vec2_i32(reverseBits(~min(vec2<i32>(-1i, -1i), vec2<i32>(-32080i, var_0.x))), ~vec2<i32>(-8165i, var_0.x)));
}

