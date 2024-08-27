struct Struct_1 {
    a: vec3<i32>,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<f32>,
    d: vec2<bool>,
    e: vec3<i32>,
}

struct Struct_3 {
    a: u32,
    b: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: f32,
    d: u32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 16>;

var<private> global1: array<Struct_2, 15> = array<Struct_2, 15>(Struct_2(Struct_1(vec3<i32>(2147483647i, -1i, 2147483647i), 193f), Struct_1(vec3<i32>(35876i, 29236i, -1i), 2153f), vec4<f32>(-753f, 667f, 539f, 1298f), vec2<bool>(true, true), vec3<i32>(1202i, -26060i, 50720i)), Struct_2(Struct_1(vec3<i32>(0i, i32(-2147483648), -11010i), -1481f), Struct_1(vec3<i32>(57218i, 1i, 2147483647i), 1099f), vec4<f32>(-1113f, 850f, -1944f, -505f), vec2<bool>(true, true), vec3<i32>(6031i, 2147483647i, 1i)), Struct_2(Struct_1(vec3<i32>(-1i, -48337i, -1i), 918f), Struct_1(vec3<i32>(-41151i, 42842i, -1i), 112f), vec4<f32>(744f, 677f, -1000f, -2059f), vec2<bool>(true, false), vec3<i32>(2147483647i, i32(-2147483648), 2147483647i)), Struct_2(Struct_1(vec3<i32>(-74604i, 2147483647i, 1i), -1318f), Struct_1(vec3<i32>(0i, 20701i, 1i), -174f), vec4<f32>(-1015f, -593f, -1000f, 299f), vec2<bool>(false, true), vec3<i32>(-4179i, -20120i, -1i)), Struct_2(Struct_1(vec3<i32>(2147483647i, 0i, 6885i), 1000f), Struct_1(vec3<i32>(2147483647i, -1i, -49044i), 1425f), vec4<f32>(-120f, 349f, -380f, -818f), vec2<bool>(true, true), vec3<i32>(39407i, -35621i, -3199i)), Struct_2(Struct_1(vec3<i32>(-1i, 0i, -1i), 859f), Struct_1(vec3<i32>(65558i, -16717i, -16158i), 964f), vec4<f32>(306f, -1650f, 1659f, 1321f), vec2<bool>(false, true), vec3<i32>(6715i, 22323i, -25075i)), Struct_2(Struct_1(vec3<i32>(-1i, i32(-2147483648), i32(-2147483648)), -649f), Struct_1(vec3<i32>(9505i, 18034i, -1i), 1085f), vec4<f32>(-290f, -730f, -327f, -1664f), vec2<bool>(true, true), vec3<i32>(-36591i, -19015i, 1i)), Struct_2(Struct_1(vec3<i32>(1i, 1i, i32(-2147483648)), 260f), Struct_1(vec3<i32>(-1i, 0i, 0i), 1296f), vec4<f32>(1656f, -2018f, 639f, 526f), vec2<bool>(false, false), vec3<i32>(-57460i, i32(-2147483648), 12829i)), Struct_2(Struct_1(vec3<i32>(0i, -35643i, i32(-2147483648)), -695f), Struct_1(vec3<i32>(2147483647i, 1i, 1i), 1089f), vec4<f32>(-560f, -182f, -862f, 316f), vec2<bool>(false, true), vec3<i32>(0i, 4678i, 0i)), Struct_2(Struct_1(vec3<i32>(0i, 95889i, 15507i), 975f), Struct_1(vec3<i32>(13616i, 14783i, 42564i), 1000f), vec4<f32>(-1707f, -288f, -1174f, 318f), vec2<bool>(true, false), vec3<i32>(-13584i, 2147483647i, 0i)), Struct_2(Struct_1(vec3<i32>(28780i, 33249i, i32(-2147483648)), -172f), Struct_1(vec3<i32>(1i, -1i, 23957i), 1838f), vec4<f32>(-806f, -1000f, -485f, -1442f), vec2<bool>(false, false), vec3<i32>(i32(-2147483648), 44646i, -17241i)), Struct_2(Struct_1(vec3<i32>(-272i, i32(-2147483648), -16001i), -239f), Struct_1(vec3<i32>(0i, 1i, -1i), -1913f), vec4<f32>(142f, -385f, 1973f, -1475f), vec2<bool>(false, true), vec3<i32>(14303i, 0i, i32(-2147483648))), Struct_2(Struct_1(vec3<i32>(1i, i32(-2147483648), 1i), -236f), Struct_1(vec3<i32>(i32(-2147483648), 9305i, i32(-2147483648)), 748f), vec4<f32>(523f, 525f, 729f, -1474f), vec2<bool>(false, true), vec3<i32>(7825i, 0i, -27312i)), Struct_2(Struct_1(vec3<i32>(5790i, 18560i, i32(-2147483648)), -648f), Struct_1(vec3<i32>(0i, 1i, -1i), 191f), vec4<f32>(1538f, 819f, 325f, -1739f), vec2<bool>(true, false), vec3<i32>(-17776i, 4808i, 1i)), Struct_2(Struct_1(vec3<i32>(0i, -1i, 45367i), 800f), Struct_1(vec3<i32>(1i, i32(-2147483648), 7022i), -253f), vec4<f32>(-1660f, 552f, -686f, -1328f), vec2<bool>(true, false), vec3<i32>(-28347i, -57732i, -14312i)));

var<private> global2: array<Struct_2, 7>;

var<private> global3: vec4<f32>;

var<private> global4: i32;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: f32, arg_1: vec3<i32>, arg_2: Struct_3, arg_3: Struct_2) -> i32 {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.a.b)))) * global3.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.x)));
    var var_1 = arg_3.d.x;
    return firstLeadingBit(select(arg_1.x, firstTrailingBit(~(-11947i)), all(arg_3.d)));
}

fn func_2(arg_0: vec2<bool>) -> vec2<bool> {
    let var_0 = countOneBits(-46566i);
    var var_1 = Struct_1(vec3<i32>(-var_0, _wgslsmith_mod_i32(_wgslsmith_add_i32(-1i, ~11714i), func_3(_wgslsmith_f_op_f32(-140f - 1747f), firstTrailingBit(vec3<i32>(var_0, -15780i, -2147483647i)), Struct_3(41972u, 4294967295u), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.a), vec2<u32>(1u, u_input.a)), 7u)])), _wgslsmith_dot_vec2_i32(~vec2<i32>(1i, var_0), _wgslsmith_mult_vec2_i32(vec2<i32>(var_0, var_0), vec2<i32>(45041i, var_0))) ^ -4956i), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(global3.x, 440f), global3.x, arg_0.x)), global3.x));
    let var_2 = _wgslsmith_f_op_f32(-var_1.b);
    global0 = array<vec3<u32>, 16>();
    global4 = _wgslsmith_add_i32(2147483647i, _wgslsmith_clamp_i32(2147483647i, _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(6933i, var_0, var_0, -30211i) >> (vec4<u32>(u_input.a, 42276u, u_input.a, u_input.a) % vec4<u32>(32u)), vec4<i32>(var_0, var_0, -1i, var_1.a.x)), -(~vec4<i32>(-31404i, var_0, var_1.a.x, 14245i))), 1i));
    return select(arg_0, !arg_0, !(!(all(vec3<bool>(true, arg_0.x, true)) == (arg_0.x | false))));
}

fn func_4(arg_0: vec4<f32>, arg_1: i32, arg_2: bool) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, _wgslsmith_f_op_f32(exp2(arg_0.x)), 1347f)))));
    let var_1 = global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.a, u_input.a), 7u)];
    let var_2 = ~((~reverseBits(vec4<u32>(0u, 0u, 7245u, 1u)) << (_wgslsmith_mult_vec4_u32(vec4<u32>(0u, u_input.a, u_input.a, u_input.a), abs(vec4<u32>(u_input.a, 66070u, u_input.a, u_input.a))) % vec4<u32>(32u))) << (vec4<u32>(u_input.a, _wgslsmith_mod_u32(u_input.a ^ u_input.a, 1u), u_input.a, 1u) % vec4<u32>(32u)));
    return Struct_2(Struct_1(var_1.e, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global3.x)))), var_1.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1256f, _wgslsmith_f_op_f32(1522f + -1333f), 1468f, _wgslsmith_f_op_f32(f32(-1f) * -1966f)) * arg_0)), select(var_1.d, vec2<bool>(true, any(select(var_1.d, var_1.d, false))), true), reverseBits(-(vec3<i32>(2147483647i, 15035i, -2147483647i) | ~var_1.b.a)));
}

fn func_1(arg_0: Struct_3, arg_1: i32, arg_2: vec4<bool>) -> vec4<f32> {
    global4 = arg_1;
    global1 = array<Struct_2, 15>();
    global4 = firstTrailingBit(arg_1);
    let var_0 = func_4(vec4<f32>(_wgslsmith_div_f32(global3.x, _wgslsmith_f_op_f32(global3.x * global3.x)), global3.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.x)))), _wgslsmith_f_op_f32(f32(-1f) * -348f)), ~(~arg_1), any(!(!func_2(vec2<bool>(arg_2.x, false)))));
    global0 = array<vec3<u32>, 16>();
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(var_0.c + _wgslsmith_f_op_vec4_f32(-var_0.c)), vec4<f32>(global3.x, global3.x, -1677f, _wgslsmith_f_op_f32(-global3.x)))) - var_0.c));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(global3.x + 1350f) == global3.x;
    let var_1 = Struct_3(26353u, abs(~(u_input.a & u_input.a)));
    global3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_1(var_1, 2147483647i, vec4<bool>(false, true, false, false)))))));
    let var_2 = min(~vec4<i32>(-2147483647i, abs(17650i), 1i, ~(-2147483647i)) << (vec4<u32>(~abs(22978u), _wgslsmith_dot_vec3_u32(~global0[_wgslsmith_index_u32(var_1.a, 16u)], global0[_wgslsmith_index_u32(~var_1.b, 16u)]), ~55058u, var_1.a) % vec4<u32>(32u)), abs(vec4<i32>(reverseBits(~50i), -abs(-14955i), countOneBits(32446i) >> (u_input.a % 32u), _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, -1i, 35259i), abs(vec3<i32>(-15023i, 1i, 65752i))))));
    global2 = array<Struct_2, 7>();
    var var_3 = var_2;
    var var_4 = Struct_1(-vec3<i32>(_wgslsmith_mod_i32(40012i, 1i), var_2.x, min(_wgslsmith_mod_i32(1i, var_3.x), -8709i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.x) * _wgslsmith_f_op_f32(-global3.x)), 117f)) - _wgslsmith_f_op_f32(-global3.x)));
    var var_5 = Struct_1(vec3<i32>(var_2.x, var_4.a.x, -19728i), _wgslsmith_f_op_vec4_f32(func_1(var_1, var_4.a.x, select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true))), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, true)), select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false))), true))).x);
    var var_6 = func_4(_wgslsmith_f_op_vec4_f32(func_1(Struct_3(56702u, ~_wgslsmith_add_u32(1u, 80953u)), _wgslsmith_dot_vec2_i32(var_3.xy, vec2<i32>(2147483647i, var_4.a.x) & select(vec2<i32>(2147483647i, var_5.a.x), vec2<i32>(var_2.x, -47462i), vec2<bool>(true, true))), vec4<bool>(all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), false)), true, _wgslsmith_f_op_f32(var_5.b - var_5.b) == func_4(vec4<f32>(var_5.b, 789f, -572f, 176f), var_2.x, true).a.b, all(vec4<bool>(false, false, false, true))))), -_wgslsmith_mod_i32(countOneBits(928i), func_3(_wgslsmith_f_op_f32(abs(var_4.b)), vec3<i32>(-27510i, var_4.a.x, var_4.a.x), var_1, global1[_wgslsmith_index_u32(abs(var_1.b), 15u)])), false).a;
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~1u)), _wgslsmith_mod_vec4_i32(var_2, _wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(var_6.a.x, 0i, -26507i, var_5.a.x), reverseBits(var_2)), _wgslsmith_add_vec4_i32(var_2, firstTrailingBit(vec4<i32>(1i, 1i, -10697i, -3857i))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1105f + var_6.b)))), 1u, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(-var_6.b), 1f, -176f))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global3.xyy) + _wgslsmith_f_op_vec3_f32(select(global3.zyz, vec3<f32>(var_6.b, -880f, -585f), vec3<bool>(true, false, true)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(106f, var_5.b, 723f) * vec3<f32>(global3.x, -374f, var_6.b))), vec3<bool>(true, true, true)))));
}

