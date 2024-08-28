struct Struct_1 {
    a: u32,
    b: vec2<f32>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: Struct_2,
    d: vec3<i32>,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_4,
    c: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: i32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 17> = array<Struct_1, 17>(Struct_1(39205u, vec2<f32>(-1377f, 1189f), vec3<u32>(4294967295u, 4294967295u, 0u)), Struct_1(4294967295u, vec2<f32>(315f, 127f), vec3<u32>(1u, 2053u, 22385u)), Struct_1(1u, vec2<f32>(-1226f, 1638f), vec3<u32>(4294967295u, 1u, 0u)), Struct_1(65100u, vec2<f32>(-1713f, -860f), vec3<u32>(0u, 0u, 0u)), Struct_1(6070u, vec2<f32>(-1000f, -1242f), vec3<u32>(1u, 0u, 48583u)), Struct_1(12883u, vec2<f32>(1381f, 152f), vec3<u32>(1u, 40981u, 0u)), Struct_1(43351u, vec2<f32>(1323f, 605f), vec3<u32>(36275u, 7515u, 47257u)), Struct_1(60764u, vec2<f32>(-134f, -1234f), vec3<u32>(107279u, 13460u, 29732u)), Struct_1(4294967295u, vec2<f32>(-472f, 724f), vec3<u32>(64347u, 0u, 35098u)), Struct_1(1u, vec2<f32>(1000f, 171f), vec3<u32>(0u, 4294967295u, 4294967295u)), Struct_1(4294967295u, vec2<f32>(-559f, -279f), vec3<u32>(6407u, 4294967295u, 45065u)), Struct_1(13989u, vec2<f32>(-862f, 480f), vec3<u32>(49872u, 1u, 31394u)), Struct_1(1u, vec2<f32>(517f, -1451f), vec3<u32>(28849u, 0u, 45418u)), Struct_1(99080u, vec2<f32>(-1570f, -335f), vec3<u32>(117850u, 46983u, 52915u)), Struct_1(1u, vec2<f32>(-552f, -1820f), vec3<u32>(0u, 77792u, 1u)), Struct_1(0u, vec2<f32>(-2385f, 417f), vec3<u32>(1083u, 1u, 6883u)), Struct_1(5622u, vec2<f32>(-771f, -1966f), vec3<u32>(10771u, 63835u, 4294967295u)));

var<private> global1: bool;

var<private> global2: array<Struct_2, 30>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2() -> f32 {
    global0 = array<Struct_1, 17>();
    var var_0 = !all(vec3<bool>(true | any(vec4<bool>(false, true, false, false)), all(vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(sign(-141f)) <= -334f));
    global0 = array<Struct_1, 17>();
    let var_1 = select(~(~5997u), _wgslsmith_add_u32(u_input.c.x, countOneBits(_wgslsmith_dot_vec4_u32(min(u_input.c, vec4<u32>(u_input.c.x, 1u, u_input.c.x, u_input.c.x)), vec4<u32>(u_input.c.x, 37034u, 4294967295u, 1u)))), _wgslsmith_div_u32(u_input.c.x, u_input.c.x) >= _wgslsmith_mult_u32(4294967295u, u_input.c.x));
    global0 = array<Struct_1, 17>();
    return -206f;
}

fn func_3() -> f32 {
    let var_0 = Struct_3(~_wgslsmith_div_i32(_wgslsmith_div_i32(_wgslsmith_add_i32(u_input.d, u_input.d), countOneBits(11257i)), _wgslsmith_dot_vec3_i32(select(vec3<i32>(u_input.a.x, u_input.b.x, u_input.a.x), vec3<i32>(u_input.b.x, u_input.d, u_input.d), vec3<bool>(false, false, true)), vec3<i32>(-1i, -1i, u_input.d))), Struct_1(45472u, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(143f, 940f))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-721f, 227f) + vec2<f32>(174f, -1565f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -627f))))), _wgslsmith_add_vec3_u32(~u_input.c.zxz, vec3<u32>(34062u, ~u_input.c.x, 1u))), Struct_2((abs(u_input.c.x) | 11281u) << (_wgslsmith_dot_vec2_u32(u_input.c.yx, ~u_input.c.yy) % 32u)), _wgslsmith_mult_vec3_i32(firstLeadingBit(select(abs(u_input.b), select(vec3<i32>(-1i, u_input.a.x, u_input.d), u_input.b, vec3<bool>(true, false, false)), select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), true))), countOneBits(vec3<i32>(2147483647i, -466i, i32(-1i) * -1i))), Struct_2(u_input.c.x));
    let var_1 = ~reverseBits(u_input.c.zyy);
    var var_2 = Struct_3(countOneBits(var_0.a), var_0.b, global2[_wgslsmith_index_u32(var_1.x, 30u)], reverseBits(vec3<i32>(~u_input.d, var_0.a, abs(u_input.a.x))), var_0.e);
    var_2 = Struct_3(1i, Struct_1(~4294967295u, vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(var_2.b.b.x)))), 693f), countOneBits(var_1)), Struct_2(67482u), _wgslsmith_div_vec3_i32(u_input.b, vec3<i32>(min(-6133i, max(var_0.d.x, var_0.a)), 1i, _wgslsmith_dot_vec2_i32(var_0.d.zy, ~vec2<i32>(-36120i, 30231i)))), Struct_2(1u));
    var_2 = Struct_3(~_wgslsmith_mult_i32(-reverseBits(2147483647i), _wgslsmith_dot_vec4_i32(-vec4<i32>(23083i, 1i, var_0.d.x, -21233i), vec4<i32>(0i, var_0.d.x, -51606i, -1i))), global0[_wgslsmith_index_u32(var_2.c.a, 17u)], var_2.e, ~vec3<i32>(select(-1i & var_2.d.x, max(u_input.d, var_0.d.x), true), _wgslsmith_dot_vec4_i32(~vec4<i32>(65288i, var_0.a, var_2.a, var_2.a), ~vec4<i32>(var_2.d.x, 8328i, -1i, var_2.a)), var_0.a), global2[_wgslsmith_index_u32(~var_1.x, 30u)]);
    return var_2.b.b.x;
}

fn func_1(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec2<bool>) -> bool {
    var var_0 = global2[_wgslsmith_index_u32(9225u, 30u)];
    global0 = array<Struct_1, 17>();
    global0 = array<Struct_1, 17>();
    global0 = array<Struct_1, 17>();
    global0 = array<Struct_1, 17>();
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(arg_1.b.x, _wgslsmith_div_f32(arg_1.b.x, arg_1.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) * arg_1.b.x)) + arg_1.b.x) != _wgslsmith_f_op_f32(func_3());
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.c.yyz;
    let var_1 = 1172f;
    let var_2 = var_0.yz;
    var var_3 = select(vec3<bool>(all(vec4<bool>(false, all(vec2<bool>(false, true)), true, func_1(global2[_wgslsmith_index_u32(var_0.x, 30u)], Struct_1(var_0.x, vec2<f32>(var_1, 694f), vec3<u32>(u_input.c.x, 46640u, 7992u)), vec2<bool>(false, false)))), any(vec3<bool>(true, true, true)) || !(var_0.x != 1u), true), !vec3<bool>(true, true, func_1(Struct_2(var_2.x), Struct_1(0u, vec2<f32>(-1673f, -1677f), u_input.c.yzw), vec2<bool>(true, true))), vec3<bool>(!all(select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true), true)), var_1 <= 337f, true));
    var_3 = !select(select(vec3<bool>(var_3.x, false, any(vec2<bool>(true, true))), select(vec3<bool>(var_3.x, var_3.x, false), !vec3<bool>(false, var_3.x, var_3.x), var_3.x & var_3.x), !select(vec3<bool>(var_3.x, var_3.x, true), vec3<bool>(false, var_3.x, true), true)), select(vec3<bool>(!var_3.x, any(vec2<bool>(var_3.x, false)), false), select(select(vec3<bool>(var_3.x, var_3.x, var_3.x), vec3<bool>(true, var_3.x, var_3.x), var_3.x), select(vec3<bool>(true, var_3.x, var_3.x), vec3<bool>(var_3.x, false, false), var_3.x), vec3<bool>(true, var_3.x, var_3.x)), var_3.x), vec3<bool>(any(select(vec3<bool>(false, false, var_3.x), vec3<bool>(true, true, true), vec3<bool>(var_3.x, true, true))), var_3.x, all(vec3<bool>(true, true, var_3.x))));
    global2 = array<Struct_2, 30>();
    let var_4 = Struct_4(Struct_3(2147483647i ^ (~u_input.d << (_wgslsmith_sub_u32(var_0.x, 4294967295u) % 32u)), global0[_wgslsmith_index_u32(var_0.x, 17u)], global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.c.x, ~4294967295u), 30u)], -firstLeadingBit(~u_input.b), global2[_wgslsmith_index_u32(22780u, 30u)]), Struct_1(0u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-903f, var_1) * _wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_1, -1000f), vec2<f32>(var_1, var_1))))), reverseBits(vec3<u32>(76939u, var_0.x, u_input.c.x) >> (vec3<u32>(1u, 79750u, u_input.c.x) % vec3<u32>(32u))) >> (u_input.c.zyz % vec3<u32>(32u))));
    var_0 = u_input.c.xxw;
    let var_5 = Struct_4(Struct_3(~u_input.b.x ^ select(-1i, 6551i, 4448u > var_4.b.c.x), Struct_1(~(~var_0.x), var_4.b.b, var_4.a.b.c << (max(vec3<u32>(u_input.c.x, var_4.a.c.a, 8643u), u_input.c.wyw) % vec3<u32>(32u))), Struct_2(max(var_4.b.a, 12038u) << (4294967295u % 32u)), vec3<i32>(-79943i, i32(-1i) * -u_input.a.x, countOneBits(0i)), var_4.a.c), global0[_wgslsmith_index_u32(var_0.x, 17u)]);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(var_1, var_4.b.b.x), vec2<f32>(-1192f, var_4.b.b.x))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(-413f, var_5.a.b.b.x) + var_4.b.b)))))), (u_input.b.x << (~abs(var_2.x) % 32u)) | _wgslsmith_dot_vec2_i32(~(-vec2<i32>(-1i, -2147483647i)), u_input.a), _wgslsmith_dot_vec3_i32(u_input.b, -_wgslsmith_clamp_vec3_i32(_wgslsmith_add_vec3_i32(u_input.b, u_input.b), abs(vec3<i32>(1i, -1i, u_input.b.x)), _wgslsmith_sub_vec3_i32(u_input.b, u_input.b))), select(reverseBits(vec2<i32>(1i, var_4.a.a)), _wgslsmith_mult_vec2_i32(reverseBits(vec2<i32>(var_4.a.d.x, 10734i)), _wgslsmith_sub_vec2_i32(var_5.a.d.yx, vec2<i32>(-2147483647i, u_input.b.x))), vec2<bool>(all(vec2<bool>(true, false)), 3769u != var_4.a.b.a)) << ((~(var_4.b.c.zy & vec2<u32>(1697u, 2000u)) & vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.c.x, var_0.x, var_2.x), vec4<u32>(27742u, 34451u, var_0.x, 62901u)), 4294967295u)) % vec2<u32>(32u)));
}

