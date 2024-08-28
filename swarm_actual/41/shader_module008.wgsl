struct Struct_1 {
    a: vec3<bool>,
    b: f32,
    c: vec4<u32>,
    d: u32,
    e: vec2<u32>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: u32,
    d: vec2<u32>,
    e: vec4<bool>,
}

struct Struct_4 {
    a: vec2<u32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec3<u32>,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 2>;

var<private> global1: array<Struct_3, 14> = array<Struct_3, 14>(Struct_3(Struct_2(636f), -1i, 43675u, vec2<u32>(0u, 10984u), vec4<bool>(false, true, false, false)), Struct_3(Struct_2(118f), 36888i, 1u, vec2<u32>(1u, 0u), vec4<bool>(false, false, true, false)), Struct_3(Struct_2(961f), -1i, 4294967295u, vec2<u32>(51701u, 0u), vec4<bool>(false, false, true, true)), Struct_3(Struct_2(1000f), -68991i, 1u, vec2<u32>(1u, 26597u), vec4<bool>(true, true, true, true)), Struct_3(Struct_2(-372f), 5141i, 4294967295u, vec2<u32>(72222u, 615u), vec4<bool>(true, false, true, false)), Struct_3(Struct_2(1592f), 3616i, 0u, vec2<u32>(1u, 99506u), vec4<bool>(false, true, false, true)), Struct_3(Struct_2(719f), 0i, 4294967295u, vec2<u32>(27696u, 15762u), vec4<bool>(true, false, true, false)), Struct_3(Struct_2(322f), -1i, 9831u, vec2<u32>(148721u, 1u), vec4<bool>(false, true, false, true)), Struct_3(Struct_2(-2363f), 9887i, 35075u, vec2<u32>(43180u, 18488u), vec4<bool>(true, false, false, true)), Struct_3(Struct_2(-724f), i32(-2147483648), 33172u, vec2<u32>(1u, 1u), vec4<bool>(false, true, true, false)), Struct_3(Struct_2(-1153f), -61719i, 5140u, vec2<u32>(0u, 5988u), vec4<bool>(true, true, false, true)), Struct_3(Struct_2(665f), 1i, 1187u, vec2<u32>(43688u, 21615u), vec4<bool>(true, true, false, true)), Struct_3(Struct_2(214f), -99614i, 4886u, vec2<u32>(1u, 60332u), vec4<bool>(true, true, true, false)), Struct_3(Struct_2(-498f), 2147483647i, 82244u, vec2<u32>(21374u, 17658u), vec4<bool>(true, false, true, false)));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_1(arg_0: vec3<bool>) -> vec3<bool> {
    let var_0 = -489f;
    global1 = array<Struct_3, 14>();
    global1 = array<Struct_3, 14>();
    let var_1 = Struct_1(arg_0, var_0, select(~(~vec4<u32>(34044u, u_input.c.x, 1u, 39306u)), countOneBits(vec4<u32>(u_input.c.x, u_input.c.x, ~0u, ~1182u)), false), ~countOneBits(~u_input.c.x), ~abs(u_input.c.zy));
    var var_2 = var_1.c.zxw;
    return select(var_1.a, var_1.a, true);
}

fn func_3(arg_0: i32, arg_1: f32, arg_2: Struct_1, arg_3: vec2<u32>) -> vec2<u32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, -213f, arg_1, arg_2.b) * _wgslsmith_div_vec4_f32(vec4<f32>(-1069f, arg_2.b, arg_2.b, -488f), vec4<f32>(arg_2.b, arg_2.b, arg_1, arg_1))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1346f, 862f, -412f, -1064f) * vec4<f32>(arg_1, arg_2.b, -1696f, arg_2.b)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, arg_1, -490f, -1052f)))))));
    var var_1 = Struct_3(Struct_2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1), -166f) + arg_2.b)), _wgslsmith_dot_vec3_i32(min(-vec3<i32>(2147483647i, -27866i, -26087i), -_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a, u_input.b, -2147483647i), vec3<i32>(-57237i, -2147483647i, u_input.a), vec3<i32>(-71875i, u_input.a, -1i))), select(~(~vec3<i32>(-73333i, 0i, 55261i)), vec3<i32>(-2147483647i, -44733i, arg_0) & -vec3<i32>(u_input.d, u_input.b, -24640i), vec3<bool>(arg_2.a.x || arg_2.a.x, true, false & arg_2.a.x))), 4294967295u, arg_3, vec4<bool>(arg_2.a.x, all(arg_2.a), func_1(arg_2.a).x, (arg_3.x != arg_3.x) & true));
    var var_2 = global0[_wgslsmith_index_u32(select(~max(~arg_3.x, firstLeadingBit(~28928u)), 83747u, true), 2u)];
    global0 = array<Struct_4, 2>();
    let var_3 = -_wgslsmith_add_vec2_i32(vec2<i32>(var_1.b, _wgslsmith_clamp_i32(-arg_0, firstLeadingBit(u_input.a), -46818i)), firstLeadingBit(vec2<i32>(-81603i, min(u_input.b, 1i))));
    return ~var_2.b.c.wy & _wgslsmith_mod_vec2_u32(~(~vec2<u32>(21427u, var_1.c)) ^ (~vec2<u32>(var_2.a.x, 3102u) >> (min(arg_3, vec2<u32>(arg_2.c.x, arg_3.x)) % vec2<u32>(32u))), arg_2.e);
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_4(func_3(1i | u_input.d, -1174f, Struct_1(select(vec3<bool>(true, false, true), select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), false), vec3<bool>(false, false, false)), -732f, _wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 15801u, u_input.c.x, u_input.c.x), vec4<u32>(0u, 1u, 0u, u_input.c.x)) << ((vec4<u32>(u_input.c.x, u_input.c.x, 21292u, u_input.c.x) >> (vec4<u32>(u_input.c.x, 0u, 34958u, 4294967295u) % vec4<u32>(32u))) % vec4<u32>(32u)), ~0u, ~(vec2<u32>(37453u, u_input.c.x) >> (vec2<u32>(4294967295u, u_input.c.x) % vec2<u32>(32u)))), vec2<u32>(1u, u_input.c.x)), Struct_1(select(func_1(vec3<bool>(false, false, true)), vec3<bool>(true, true, any(vec4<bool>(true, true, true, true))), func_1(vec3<bool>(true, true, true))), -1109f, vec4<u32>(1u, 0u, u_input.c.x << (~u_input.c.x % 32u), u_input.c.x), ~(~u_input.c.x), _wgslsmith_mult_vec2_u32(u_input.c.xz, ~vec2<u32>(u_input.c.x, u_input.c.x))));
    var var_1 = Struct_2(-504f);
    global0 = array<Struct_4, 2>();
    let var_2 = vec2<i32>(u_input.d, -u_input.b);
    var var_3 = ~(min(-(~var_2.x), _wgslsmith_mod_i32(~u_input.a, 43529i)) ^ var_2.x);
    return Struct_1(vec3<bool>(all(var_0.b.a), var_0.b.a.x & !all(vec3<bool>(true, var_0.b.a.x, false)), !var_0.b.a.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.b) * _wgslsmith_f_op_f32(786f + var_0.b.b)), -348f)), vec4<u32>(~firstTrailingBit(u_input.c.x) >> (~(~var_0.b.c.x) % 32u), select(~(~var_0.b.d), _wgslsmith_dot_vec4_u32(~var_0.b.c, _wgslsmith_div_vec4_u32(var_0.b.c, var_0.b.c)), !(!var_0.b.a.x)), ~(~u_input.c.x), u_input.c.x), max(u_input.c.x, _wgslsmith_mod_u32(func_3(_wgslsmith_dot_vec4_i32(vec4<i32>(-6797i, 17335i, 0i, var_2.x), vec4<i32>(u_input.b, var_2.x, var_2.x, 27161i)), _wgslsmith_f_op_f32(-var_0.b.b), var_0.b, ~u_input.c.xy).x, _wgslsmith_dot_vec2_u32(u_input.c.zz, var_0.a) << (countOneBits(var_0.b.e.x) % 32u))), var_0.a);
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: u32) -> f32 {
    let var_0 = Struct_2(232f);
    global1 = array<Struct_3, 14>();
    var var_1 = _wgslsmith_add_i32(u_input.d, arg_0.x);
    var var_2 = global1[_wgslsmith_index_u32(_wgslsmith_div_u32(~(~(~4294967295u)) & u_input.c.x, max(arg_1.c.x, ~(~_wgslsmith_mult_u32(4294967295u, 1u)))), 14u)];
    global0 = array<Struct_4, 2>();
    return -438f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -_wgslsmith_add_vec3_i32(vec3<i32>(u_input.d, ~0i << (~u_input.c.x % 32u), u_input.b), abs(select(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.a, 8164i, -2147483647i), vec3<i32>(0i, u_input.d, 29396i)), vec3<i32>(u_input.b, 15497i, u_input.b), true)));
    global0 = array<Struct_4, 2>();
    var var_1 = Struct_1(!func_1(vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(-vec4<i32>(-2147483647i, u_input.d, u_input.b, 2147483647i), func_2(), 1u)))), _wgslsmith_mod_vec4_u32(abs(vec4<u32>(0u, u_input.c.x, 0u, u_input.c.x)) >> (vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 93215u), u_input.c.zy), u_input.c.x, ~57798u, abs(u_input.c.x)) % vec4<u32>(32u)), ~vec4<u32>(u_input.c.x, _wgslsmith_mod_u32(84363u, 50583u), u_input.c.x & 0u, u_input.c.x)), abs(~4294967295u), select(u_input.c.xz, vec2<u32>(u_input.c.x, ~max(8816u, 1u)), func_2().a.xy));
    let var_2 = select(_wgslsmith_div_vec2_u32(abs(firstLeadingBit(vec2<u32>(7094u, 25754u)) & ~var_1.e), var_1.c.wz), _wgslsmith_mult_vec2_u32(func_3(-80923i, 310f, func_2(), _wgslsmith_mod_vec2_u32(u_input.c.xy, u_input.c.xy) & vec2<u32>(u_input.c.x, u_input.c.x)), _wgslsmith_sub_vec2_u32(reverseBits(u_input.c.yz), u_input.c.zz)), vec2<bool>(false, all(vec2<bool>(true, true))));
    var var_3 = global1[_wgslsmith_index_u32(~(u_input.c.x >> (abs(4294967295u) % 32u)) ^ select(3575u, max(~_wgslsmith_div_u32(u_input.c.x, var_1.d), min(max(0u, var_2.x), ~0u)), true), 14u)];
    var var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_3.a.a), 119f), vec2<f32>(var_3.a.a, var_1.b)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(970f, _wgslsmith_div_f32(var_1.b, var_3.a.a)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(642f, 225f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(var_3.a.a, var_1.b) + vec2<f32>(-1000f, var_3.a.a))))));
    let var_5 = _wgslsmith_mult_vec3_i32(~abs(_wgslsmith_mod_vec3_i32(vec3<i32>(var_0.x, u_input.b, 19595i), vec3<i32>(-6222i, 4241i, var_0.x))), ~(-vec3<i32>(var_0.x, u_input.d, -2147483647i))) >> (vec3<u32>((var_1.d >> (var_3.d.x % 32u)) >> (~(~u_input.c.x) % 32u), _wgslsmith_add_u32(_wgslsmith_clamp_u32(33372u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, var_1.d, 4294967295u), vec3<u32>(1u, var_3.d.x, u_input.c.x)), 4294967295u), var_1.c.x), 23609u) % vec3<u32>(32u));
    let var_6 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(var_4.x)), _wgslsmith_f_op_f32(f32(-1f) * -775f)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(i32(-1i) * -6609i, 6063i, -45295i), _wgslsmith_div_vec3_i32(vec3<i32>(var_5.x, (u_input.d | var_0.x) >> (~4294967295u % 32u), -var_0.x), vec3<i32>(u_input.b, var_0.x, -13361i)), min(min(var_1.c.yxx, ~u_input.c), vec3<u32>(3822u, 1u, var_2.x) ^ u_input.c) << (~vec3<u32>(firstLeadingBit(var_2.x), _wgslsmith_mod_u32(var_2.x, var_1.d), 44861u) % vec3<u32>(32u)), i32(-1i) * -(~(~2147483647i)), var_3.b);
}

