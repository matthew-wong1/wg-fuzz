struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec3<i32>,
    c: Struct_1,
}

struct Struct_4 {
    a: vec4<f32>,
    b: Struct_2,
    c: u32,
}

struct Struct_5 {
    a: Struct_1,
    b: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec4<bool>(true, false, false, true), Struct_1(1u), Struct_1(46398u));

var<private> global1: array<bool, 7>;

var<private> global2: bool = false;

var<private> global3: array<Struct_2, 13> = array<Struct_2, 13>(Struct_2(vec4<bool>(false, true, false, false), Struct_1(26157u), Struct_1(0u)), Struct_2(vec4<bool>(true, true, false, true), Struct_1(47915u), Struct_1(37717u)), Struct_2(vec4<bool>(false, true, false, false), Struct_1(1u), Struct_1(4294967295u)), Struct_2(vec4<bool>(false, false, true, false), Struct_1(53940u), Struct_1(16053u)), Struct_2(vec4<bool>(true, false, false, true), Struct_1(1u), Struct_1(4294967295u)), Struct_2(vec4<bool>(false, false, false, true), Struct_1(0u), Struct_1(28572u)), Struct_2(vec4<bool>(true, true, true, true), Struct_1(0u), Struct_1(1u)), Struct_2(vec4<bool>(true, false, false, true), Struct_1(0u), Struct_1(30118u)), Struct_2(vec4<bool>(false, true, false, false), Struct_1(4294967295u), Struct_1(1u)), Struct_2(vec4<bool>(false, true, true, false), Struct_1(28878u), Struct_1(1u)), Struct_2(vec4<bool>(true, true, true, false), Struct_1(4294967295u), Struct_1(19107u)), Struct_2(vec4<bool>(false, false, false, true), Struct_1(10959u), Struct_1(1u)), Struct_2(vec4<bool>(true, false, false, false), Struct_1(4294967295u), Struct_1(0u)));

var<private> global4: i32;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: u32) -> f32 {
    global0 = global3[_wgslsmith_index_u32(arg_0, 13u)];
    var var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(floor(1091f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -857f)))))));
    var var_1 = Struct_1(firstTrailingBit(u_input.a.x));
    let var_2 = select(select(vec4<bool>(~u_input.a.x != arg_0, global0.a.x, true, all(global0.a)), select(!global0.a, vec4<bool>(4294967295u <= var_1.a, select(true, global0.a.x, global1[_wgslsmith_index_u32(var_1.a, 7u)]), any(vec2<bool>(true, global0.a.x)), any(global0.a.yw)), true), global0.a.x), vec4<bool>(select(select(global0.a.x, global0.a.x, any(vec2<bool>(false, global1[_wgslsmith_index_u32(global0.b.a, 7u)]))), global0.a.x, global0.a.x), global1[_wgslsmith_index_u32(arg_0, 7u)], global0.a.x, !(~arg_0 != _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, global0.b.a), vec2<u32>(0u, 48010u)))), false);
    global3 = array<Struct_2, 13>();
    return _wgslsmith_f_op_f32(select(-806f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-386f, -2833f)), all(vec3<bool>(true, global1[_wgslsmith_index_u32(~reverseBits(global0.b.a), 7u)], !var_2.x))));
}

fn func_2() -> vec3<i32> {
    let var_0 = Struct_5(global0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-478f - 835f) * -1070f) - _wgslsmith_f_op_f32(round(-1000f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(78396u)) * _wgslsmith_div_f32(-1021f, -1884f)) - _wgslsmith_f_op_f32(step(-435f, _wgslsmith_f_op_f32(func_3(31163u)))))));
    var var_1 = min(_wgslsmith_mod_vec3_u32(abs(firstLeadingBit(abs(vec3<u32>(0u, u_input.a.x, 13189u)))), select(vec3<u32>(u_input.a.x, 0u, ~global0.c.a), _wgslsmith_mult_vec3_u32(vec3<u32>(1u, 15263u, 4294967295u) ^ vec3<u32>(u_input.a.x, 97408u, 23415u), abs(vec3<u32>(0u, 0u, var_0.a.a))), !vec3<bool>(global1[_wgslsmith_index_u32(var_0.a.a, 7u)], global1[_wgslsmith_index_u32(var_0.a.a, 7u)], global0.a.x))), vec3<u32>(_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global0.c.a, global0.c.a, global0.b.a, 4294967295u), vec4<u32>(0u, 41325u, u_input.a.x, 12634u)), var_0.a.a) | 31266u, 31985u, var_0.a.a));
    let var_2 = global3[_wgslsmith_index_u32(4294967295u, 13u)];
    let var_3 = Struct_3(20004u, vec3<i32>(firstLeadingBit(~(~35531i)), ~(-1i), abs(~(~(-1i)))), global0.c);
    let var_4 = Struct_3(~1u, ~var_3.b, Struct_1(_wgslsmith_div_u32(4294967295u, 1u)));
    return var_4.b;
}

fn func_1() -> f32 {
    var var_0 = Struct_3(22421u, vec3<i32>(-2147483647i, _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(min(vec3<i32>(-43436i, -2147483647i, 1i), vec3<i32>(-81879i, 2147483647i, -19209i)), func_2()), 54532i), ~(~(~(-1i)))), Struct_1(76834u & u_input.a.x));
    let var_1 = select(select(select(global0.a, !select(vec4<bool>(true, false, true, global1[_wgslsmith_index_u32(u_input.a.x, 7u)]), global0.a, true), select(!global0.a, select(global0.a, global0.a, global1[_wgslsmith_index_u32(1u, 7u)]), true)), !global0.a, false), select(global0.a, vec4<bool>(true, select(true, global1[_wgslsmith_index_u32(_wgslsmith_div_u32(var_0.c.a, global0.b.a), 7u)], !global0.a.x), global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(63279u, global0.b.a), 7u)], true), vec4<bool>(!global1[_wgslsmith_index_u32(~var_0.c.a, 7u)], var_0.a != u_input.a.x, global1[_wgslsmith_index_u32(countOneBits(~var_0.a), 7u)], all(global0.a.xyw))), global0.a);
    var var_2 = u_input.a.x;
    var var_3 = (_wgslsmith_clamp_i32(-var_0.b.x, firstLeadingBit(-27115i ^ var_0.b.x), _wgslsmith_mult_i32(var_0.b.x, -48779i)) | -_wgslsmith_add_i32(1i, _wgslsmith_add_i32(2147483647i, var_0.b.x))) >> (4294967295u % 32u);
    var var_4 = Struct_5(var_0.c, _wgslsmith_f_op_f32(1167f * 755f));
    return 1529f;
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_5, arg_2: Struct_2) -> Struct_2 {
    global2 = !global1[_wgslsmith_index_u32(~(~(~(~u_input.a.x))), 7u)];
    var var_0 = select(select(global0.a.yy, !arg_2.a.xy, true), vec2<bool>(true, true), vec2<bool>(~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.a.a, u_input.a.x, 4294967295u, 1u), vec4<u32>(global0.b.a, global0.c.a, 4294967295u, 45732u)) >= _wgslsmith_mod_u32(0u, 9330u & arg_2.b.a), global1[_wgslsmith_index_u32(~_wgslsmith_div_u32(global0.b.a, 65117u), 7u)] && global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 0u), countOneBits(vec2<u32>(0u, arg_2.c.a))), 7u)]));
    var var_1 = reverseBits(_wgslsmith_sub_vec2_i32(vec2<i32>(arg_0.x, arg_0.x), arg_0.zz));
    let var_2 = select(vec2<u32>(1u, _wgslsmith_dot_vec4_u32(~(vec4<u32>(global0.b.a, arg_2.b.a, u_input.a.x, 65856u) << (vec4<u32>(16605u, 0u, arg_1.a.a, 1u) % vec4<u32>(32u))), vec4<u32>(1u, 1u, 1u, 0u))), u_input.a, select(arg_2.a.wz, select(global0.a.yw, !(!global0.a.wz), arg_2.a.xx), select(!global0.a.yx, vec2<bool>(true, true), select(arg_1.b >= 2637f, true, false))));
    return Struct_2(select(global0.a, global0.a, true), Struct_1(~1u), arg_1.a);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = !(global1[_wgslsmith_index_u32(~(abs(24061u) >> (global0.b.a % 32u)), 7u)] & (all(!global0.a.zy) | !(0u < global0.c.a)));
    var var_0 = func_4(-_wgslsmith_div_vec3_i32(firstLeadingBit(-vec3<i32>(1i, 38567i, -37177i)), vec3<i32>(417i, _wgslsmith_dot_vec2_i32(vec2<i32>(1i, -38523i), vec2<i32>(-1i, 32317i)), _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -26807i, 42449i), vec3<i32>(-2147483647i, 33562i, 20180i)))), Struct_5(Struct_1(~global0.c.a), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-398f, -934f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1220f) * _wgslsmith_f_op_f32(func_1())))), global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(u_input.a.x, firstLeadingBit(23479u), _wgslsmith_mult_u32(68789u, 10941u))), reverseBits(vec3<u32>(57285u ^ u_input.a.x, abs(global0.c.a), 1u))), 13u)]);
    var var_1 = func_4(vec3<i32>(max(18341i, abs(1i)) ^ func_2().x, -22651i, 1i), Struct_5(Struct_1(_wgslsmith_mult_u32(u_input.a.x ^ 4294967295u, ~53025u)), 790f), func_4(_wgslsmith_add_vec3_i32(min(-vec3<i32>(27198i, -1i, 1i), vec3<i32>(32539i, -2147483647i, -18824i)), abs(_wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, 0i, 14087i), vec3<i32>(-41040i, 2147483647i, 28786i)))), Struct_5(Struct_1(0u), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(-962f))))), global3[_wgslsmith_index_u32(abs(select(0u, 62447u, global0.a.x)), 13u)])).a.zz;
    var var_2 = func_4(min(_wgslsmith_clamp_vec3_i32(vec3<i32>(_wgslsmith_div_i32(-2147483647i, -2147483647i), firstTrailingBit(-55427i), _wgslsmith_dot_vec4_i32(vec4<i32>(75333i, -1i, 0i, -3055i), vec4<i32>(-5326i, -1i, 2147483647i, 1i))), vec3<i32>(1i, 1i, 1i), vec3<i32>(_wgslsmith_mult_i32(-35117i, 18062i), -1i, 0i)), ~vec3<i32>(1i, _wgslsmith_dot_vec4_i32(vec4<i32>(3605i, -29071i, -40798i, -1i), vec4<i32>(1i, -27490i, -4871i, 1i)), -14713i >> (u_input.a.x % 32u))), Struct_5(func_4(vec3<i32>(~(-8928i), ~0i, i32(-1i) * -1i), Struct_5(func_4(vec3<i32>(8049i, 0i, 0i), Struct_5(var_0.b, -867f), Struct_2(vec4<bool>(global0.a.x, var_0.a.x, false, global1[_wgslsmith_index_u32(u_input.a.x, 7u)]), global0.b, Struct_1(20114u))).b, -830f), func_4(vec3<i32>(-25224i, -29680i, 1i), Struct_5(var_0.b, -366f), func_4(vec3<i32>(-2147483647i, -27249i, -24933i), Struct_5(var_0.c, -1000f), global3[_wgslsmith_index_u32(78317u, 13u)]))).c, _wgslsmith_f_op_f32(func_1())), global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(global0.c.a, var_0.c.a), 13u)]);
    global0 = func_4(-vec3<i32>(firstLeadingBit(~(-20202i)), ~(-9990i), 1i << (min(0u, 4294967295u) % 32u)), Struct_5(func_4(-vec3<i32>(-24828i, -24163i, -1i), Struct_5(Struct_1(var_2.b.a), _wgslsmith_f_op_f32(min(-1105f, -1128f))), global3[_wgslsmith_index_u32(~abs(u_input.a.x), 13u)]).b, _wgslsmith_f_op_f32(-1f)), func_4(~firstTrailingBit(vec3<i32>(1i, 1i, 1i)), Struct_5(global0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -470f))), func_4(-_wgslsmith_add_vec3_i32(vec3<i32>(1i, -31635i, -10045i), vec3<i32>(0i, 1i, -32568i)), Struct_5(func_4(vec3<i32>(76523i, -17113i, 33926i), Struct_5(Struct_1(var_2.b.a), 315f), global3[_wgslsmith_index_u32(1u, 13u)]).c, -1031f), func_4(countOneBits(vec3<i32>(-13131i, -1i, 52389i)), Struct_5(global0.c, -539f), Struct_2(vec4<bool>(var_2.a.x, false, global1[_wgslsmith_index_u32(var_0.b.a, 7u)], var_2.a.x), var_2.c, Struct_1(u_input.a.x))))));
    let var_3 = ~(~(_wgslsmith_add_vec4_u32(vec4<u32>(0u, u_input.a.x, 30419u, var_2.c.a), vec4<u32>(var_2.b.a, u_input.a.x, global0.b.a, 39414u)) | firstTrailingBit(~vec4<u32>(global0.b.a, 4294967295u, var_2.b.a, u_input.a.x))));
    var var_4 = Struct_3(_wgslsmith_sub_u32(global0.c.a, ~_wgslsmith_add_u32(62091u, var_0.c.a)) << (firstTrailingBit(_wgslsmith_dot_vec2_u32(~vec2<u32>(var_2.b.a, 8900u), ~var_3.yx)) % 32u), vec3<i32>(firstTrailingBit(2147483647i), -69413i, -2147483647i | _wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(0i, -1i, 2147483647i)), vec3<i32>(60056i, -2147483647i, 0i) >> (vec3<u32>(6865u, global0.b.a, var_0.b.a) % vec3<u32>(32u)))), Struct_1(var_0.c.a));
    let x = u_input.a;
    s_output = StorageBuffer(~firstLeadingBit(firstTrailingBit(var_3.xyz)));
}

