struct Struct_1 {
    a: u32,
    b: i32,
    c: vec4<i32>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: bool,
    d: vec3<f32>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<bool>,
    c: vec4<f32>,
    d: vec3<bool>,
}

struct Struct_4 {
    a: Struct_2,
    b: f32,
    c: vec4<f32>,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec4<u32>,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<vec2<bool>, 31>;

var<private> global2: array<u32, 19>;

var<private> global3: u32;

var<private> global4: array<bool, 3>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: Struct_3) -> vec2<u32> {
    global2 = array<u32, 19>();
    var var_0 = global4[_wgslsmith_index_u32(~_wgslsmith_add_u32(67106u, _wgslsmith_dot_vec3_u32(~(~u_input.c.xzx), vec3<u32>(1u, 1u, u_input.d.x))), 3u)];
    var var_1 = arg_0.d;
    var var_2 = select(~max(_wgslsmith_add_vec2_i32(arg_0.a.e.d.zy, firstTrailingBit(vec2<i32>(260i, arg_0.a.a.b))), firstTrailingBit(vec2<i32>(2147483647i, arg_0.a.a.d.x))), ~_wgslsmith_sub_vec2_i32(~(-arg_0.a.a.d.yz), ~vec2<i32>(arg_0.a.a.b, 1i)), global4[_wgslsmith_index_u32(max(4294967295u, _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(1u, 19u)], 0u, global2[_wgslsmith_index_u32(arg_0.a.a.a, 19u)], arg_0.a.e.a), vec4<u32>(4294967295u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(arg_0.a.a.a, 19u)], 19u)], 4294967295u, 1u)), ~arg_0.a.e.a)), 3u)]);
    var var_3 = select(vec4<bool>(true, global4[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_dot_vec2_u32(u_input.d.zy, vec2<u32>(arg_0.a.e.a, 1u)), _wgslsmith_sub_u32(43419u, u_input.d.x)), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.e, arg_0.a.a.a), ~vec2<u32>(0u, 0u))), 3u)], false, false), !select(!(!vec4<bool>(global4[_wgslsmith_index_u32(u_input.a, 3u)], arg_0.a.c, global4[_wgslsmith_index_u32(4294967295u, 3u)], false)), !vec4<bool>(global4[_wgslsmith_index_u32(0u, 3u)], true, arg_0.b.x, true), !(!vec4<bool>(arg_0.a.c, global4[_wgslsmith_index_u32(arg_0.a.e.a, 3u)], global4[_wgslsmith_index_u32(arg_0.a.a.a, 3u)], global4[_wgslsmith_index_u32(0u, 3u)]))), select(vec4<bool>(true, all(!global1[_wgslsmith_index_u32(u_input.c.x, 31u)]), var_1.x, true), select(select(vec4<bool>(false, false, false, true), !vec4<bool>(true, false, arg_0.d.x, true), true), !vec4<bool>(true, arg_0.d.x, arg_0.d.x, false), !(!vec4<bool>(var_1.x, true, true, false))), vec4<bool>(select(global4[_wgslsmith_index_u32(1u, 3u)], true, all(vec2<bool>(false, arg_0.a.c))), !global4[_wgslsmith_index_u32(42598u, 3u)] && all(arg_0.d), var_1.x, select(true, all(vec3<bool>(arg_0.a.c, false, global4[_wgslsmith_index_u32(44316u, 3u)])), arg_0.d.x))));
    return vec2<u32>((~firstTrailingBit(0u) << (abs(global2[_wgslsmith_index_u32(arg_0.a.a.a << (16088u % 32u), 19u)]) % 32u)) ^ ~24513u, 4294967295u);
}

fn func_2(arg_0: f32, arg_1: vec4<u32>) -> f32 {
    global1 = array<vec2<bool>, 31>();
    global2 = array<u32, 19>();
    var var_0 = _wgslsmith_sub_vec2_u32(_wgslsmith_mult_vec2_u32(_wgslsmith_mult_vec2_u32(u_input.d.xx, func_3(Struct_3(Struct_2(Struct_1(u_input.a, 49214i, vec4<i32>(1i, 13418i, 47344i, 0i), vec3<i32>(2147483647i, 0i, -22849i)), vec4<f32>(-395f, 568f, -636f, 604f), true, vec3<f32>(arg_0, arg_0, 1038f), Struct_1(u_input.d.x, 2147483647i, vec4<i32>(2147483647i, -2147483647i, 15771i, -5162i), vec3<i32>(10550i, -4930i, 21852i))), vec2<bool>(true, true), vec4<f32>(arg_0, 1057f, arg_0, arg_0), vec3<bool>(true, true, global4[_wgslsmith_index_u32(32521u, 3u)])))), ~(~abs(vec2<u32>(32910u, 44350u)))), _wgslsmith_clamp_vec2_u32(arg_1.zw, arg_1.yw << (vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(arg_1.x, 19u)], 19u)], 19u)] ^ 64763u, arg_1.x) % vec2<u32>(32u)), arg_1.zw));
    var var_1 = vec3<u32>(~_wgslsmith_mod_u32(countOneBits(_wgslsmith_sub_u32(u_input.b.x, var_0.x)), _wgslsmith_add_u32(global2[_wgslsmith_index_u32(var_0.x, 19u)], arg_1.x) | reverseBits(1u)), u_input.c.x, ~var_0.x);
    return _wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(arg_0 * arg_0));
}

fn func_1(arg_0: u32) -> f32 {
    var var_0 = ~38924i;
    global2 = array<u32, 19>();
    var var_1 = _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1526f + -991f), -1333f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -221f) - _wgslsmith_f_op_f32(func_2(-294f, u_input.c)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-760f + 1294f))), -644f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -2033f)))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(191f, -1100f, 641f)))) * _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(489f, 546f, 1000f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1041f, 994f, -1075f), vec3<f32>(966f, 757f, -1198f), true)))))))));
    let var_2 = !all(select(select(!global1[_wgslsmith_index_u32(1u, 31u)], global1[_wgslsmith_index_u32(countOneBits(0u), 31u)], global1[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.a, 0u), 31u)]), global1[_wgslsmith_index_u32(reverseBits(abs(0u)), 31u)], vec2<bool>(false, any(vec3<bool>(true, false, global4[_wgslsmith_index_u32(4294967295u, 3u)])))));
    let var_3 = Struct_4(Struct_2(Struct_1(~(0u ^ global2[_wgslsmith_index_u32(15302u, 19u)]), _wgslsmith_dot_vec3_i32(-vec3<i32>(1i, 13205i, -36139i), vec3<i32>(-18591i, -2147483647i, -25912i)), vec4<i32>(1i, 1i, 1i, 1i), vec3<i32>(-28050i, firstTrailingBit(-21647i), -10003i)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1000f, var_1.x, var_1.x, var_1.x), vec4<f32>(var_1.x, var_1.x, -294f, -472f))) * vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -161f), _wgslsmith_f_op_f32(max(301f, var_1.x)), var_1.x, -912f)), true, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(vec3<f32>(-222f, -1724f, 1181f), vec3<f32>(-1062f, -649f, var_1.x)))) + _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_1.x, var_1.x, var_1.x)))))), Struct_1(~_wgslsmith_add_u32(arg_0, 81089u), 1i, countOneBits(vec4<i32>(2147483647i, -1i, 0i, 9420i)) << (select(u_input.c, u_input.c, vec4<bool>(false, var_2, true, var_2)) % vec4<u32>(32u)), -(vec3<i32>(-7143i, 1i, 2147483647i) >> (vec3<u32>(u_input.d.x, 1u, global2[_wgslsmith_index_u32(arg_0, 19u)]) % vec3<u32>(32u))))), -670f, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_1.x)) * _wgslsmith_f_op_f32(ceil(var_1.x))), 1000f, var_1.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.x), -294f)) - vec4<f32>(_wgslsmith_div_f32(-240f, -1069f), _wgslsmith_f_op_f32(ceil(var_1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) + var_1.x), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(813f, -1186f, false)))))));
    return _wgslsmith_f_op_f32(-var_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(func_1(_wgslsmith_dot_vec2_u32(vec2<u32>(19800u, 1u), vec2<u32>(u_input.c.x, 23789u))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(-1070f, u_input.c))))), _wgslsmith_f_op_f32(f32(-1f) * -425f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(-980f, _wgslsmith_f_op_f32(func_2(-455f, vec4<u32>(4294967295u, 1u, 1u, global2[_wgslsmith_index_u32(u_input.b.x, 19u)])))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1512f + -933f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
    var var_1 = Struct_2(Struct_1(~global2[_wgslsmith_index_u32(func_3(Struct_3(Struct_2(Struct_1(4294967295u, 19597i, vec4<i32>(17715i, -43493i, -2147483647i, -1i), vec3<i32>(40697i, -29623i, -1i)), vec4<f32>(-992f, 1089f, var_0.x, var_0.x), global4[_wgslsmith_index_u32(u_input.d.x, 3u)], vec3<f32>(var_0.x, var_0.x, 423f), Struct_1(1u, -22631i, vec4<i32>(-1i, -28945i, 52668i, 2147483647i), vec3<i32>(24693i, 2147483647i, 0i))), vec2<bool>(true, global4[_wgslsmith_index_u32(u_input.a, 3u)]), vec4<f32>(var_0.x, -179f, 1417f, var_0.x), vec3<bool>(true, global4[_wgslsmith_index_u32(u_input.e, 3u)], true))).x, 19u)], ~(-24091i), vec4<i32>(abs(max(-28047i, 2147483647i)), _wgslsmith_sub_i32(firstLeadingBit(-2147483647i), 25502i), i32(-1i) * -1i, -(~(-11109i))), ~max(-vec3<i32>(5085i, 0i, 0i), _wgslsmith_div_vec3_i32(vec3<i32>(-76811i, -20498i, -48757i), vec3<i32>(-1i, -4327i, 1i)))), vec4<f32>(var_0.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(-1986f)))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-223f - _wgslsmith_div_f32(1578f, var_0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.x))))), global4[_wgslsmith_index_u32(abs(_wgslsmith_mult_u32(~_wgslsmith_add_u32(u_input.b.x, 200u), global2[_wgslsmith_index_u32(func_3(Struct_3(Struct_2(Struct_1(4294967295u, -40812i, vec4<i32>(0i, 61991i, 1i, 2147483647i), vec3<i32>(-12688i, 0i, 17874i)), vec4<f32>(var_0.x, -1353f, var_0.x, var_0.x), false, var_0, Struct_1(global2[_wgslsmith_index_u32(u_input.e, 19u)], -51668i, vec4<i32>(-1i, 1i, 16178i, 1i), vec3<i32>(-1i, 25706i, 55756i))), global1[_wgslsmith_index_u32(u_input.b.x, 31u)], vec4<f32>(var_0.x, -1016f, var_0.x, var_0.x), vec3<bool>(global4[_wgslsmith_index_u32(23146u, 3u)], false, global4[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.e, 19u)], 3u)]))).x, 19u)])), 3u)], vec3<f32>(var_0.x, var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_0.x - -1000f), -1346f)))), Struct_1(_wgslsmith_sub_u32(_wgslsmith_div_u32(1u, _wgslsmith_sub_u32(u_input.a, 1251u)), u_input.e), max(~2147483647i, 1i) >> (global2[_wgslsmith_index_u32(min(30732u, 27471u), 19u)] % 32u), vec4<i32>(-reverseBits(23299i), 1i, 28378i, ~_wgslsmith_mult_i32(-21864i, -20380i)), vec3<i32>(0i >> (global2[_wgslsmith_index_u32(6727u, 19u)] % 32u), -1i, firstTrailingBit(i32(-1i) * -1i))));
    global2 = array<u32, 19>();
    global4 = array<bool, 3>();
    var var_2 = Struct_5(Struct_1(~(~16262u), -1534i, ~countOneBits(-var_1.e.c), var_1.e.c.yww));
    global4 = array<bool, 3>();
    var var_3 = Struct_4(Struct_2(var_1.e, vec4<f32>(_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(-var_0.x), ~vec4<u32>(var_1.e.a, 45527u, 0u, 4294967295u))), -399f, 147f, -479f), true, _wgslsmith_f_op_vec3_f32(var_1.d + _wgslsmith_f_op_vec3_f32(-var_0)), var_2.a), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1806f + -416f) + _wgslsmith_f_op_f32(floor(351f))), u_input.c)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x - -542f) + -106f), var_1.d.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(-1622f, 1100f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(select(-1033f, var_0.x, var_1.b.x <= var_1.d.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-428f, -1073f, true))), vec2<u32>(_wgslsmith_mult_u32(~4294967295u, ~_wgslsmith_clamp_u32(u_input.e, global2[_wgslsmith_index_u32(var_2.a.a, 19u)], u_input.c.x)), _wgslsmith_clamp_u32(~(~1u), max(~6979u, 8585u), abs(var_3.a.a.a << (global2[_wgslsmith_index_u32(var_2.a.a, 19u)] % 32u)))));
}

