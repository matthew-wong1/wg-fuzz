struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: bool,
    b: vec3<i32>,
    c: vec2<bool>,
    d: u32,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: f32,
    c: Struct_3,
    d: u32,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 25>;

var<private> global1: array<Struct_4, 22> = array<Struct_4, 22>(Struct_4(-448f, -285f, Struct_3(4294967295u, Struct_2(false, vec3<i32>(61783i, 0i, -49561i), vec2<bool>(true, true), 76975u)), 1u, i32(-2147483648)), Struct_4(219f, 888f, Struct_3(37900u, Struct_2(true, vec3<i32>(-36418i, -80063i, -7285i), vec2<bool>(false, true), 1u)), 50526u, 43654i), Struct_4(326f, 1380f, Struct_3(0u, Struct_2(true, vec3<i32>(-41045i, 17078i, 1i), vec2<bool>(false, true), 0u)), 1u, -19843i), Struct_4(182f, 2069f, Struct_3(50696u, Struct_2(true, vec3<i32>(-7366i, 52096i, 2147483647i), vec2<bool>(true, false), 4002u)), 4294967295u, -38606i), Struct_4(877f, 185f, Struct_3(25258u, Struct_2(false, vec3<i32>(-43305i, 1i, -33081i), vec2<bool>(true, false), 0u)), 21944u, -14860i), Struct_4(-1232f, 401f, Struct_3(0u, Struct_2(true, vec3<i32>(-1i, -1025i, -1i), vec2<bool>(true, true), 4294967295u)), 115124u, -6520i), Struct_4(1845f, -833f, Struct_3(31622u, Struct_2(true, vec3<i32>(2147483647i, i32(-2147483648), -13921i), vec2<bool>(true, false), 2361u)), 0u, 44685i), Struct_4(-685f, -926f, Struct_3(37657u, Struct_2(true, vec3<i32>(51102i, 1i, 1i), vec2<bool>(false, false), 135693u)), 0u, 44561i), Struct_4(1000f, -341f, Struct_3(0u, Struct_2(false, vec3<i32>(0i, -3138i, 0i), vec2<bool>(true, false), 1u)), 80282u, 1i), Struct_4(-1194f, -1636f, Struct_3(0u, Struct_2(false, vec3<i32>(0i, -1i, -1i), vec2<bool>(false, true), 24926u)), 4294967295u, -919i), Struct_4(2170f, -1402f, Struct_3(47637u, Struct_2(true, vec3<i32>(-15363i, 1i, 0i), vec2<bool>(true, true), 12013u)), 32031u, 1i), Struct_4(1175f, 791f, Struct_3(8873u, Struct_2(true, vec3<i32>(-1i, -45797i, 2147483647i), vec2<bool>(false, true), 1u)), 1u, 16172i), Struct_4(-434f, 1065f, Struct_3(22705u, Struct_2(false, vec3<i32>(-13688i, 5016i, -11151i), vec2<bool>(false, false), 0u)), 0u, 1i), Struct_4(1600f, 169f, Struct_3(4294967295u, Struct_2(false, vec3<i32>(6288i, 0i, 12324i), vec2<bool>(true, true), 4294967295u)), 0u, -1i), Struct_4(-555f, 1529f, Struct_3(1u, Struct_2(true, vec3<i32>(40486i, 1i, 26737i), vec2<bool>(true, false), 34503u)), 4294967295u, 27767i), Struct_4(-456f, -1000f, Struct_3(42184u, Struct_2(true, vec3<i32>(123i, -21781i, 13662i), vec2<bool>(true, true), 20233u)), 62715u, 1i), Struct_4(1092f, -574f, Struct_3(1u, Struct_2(false, vec3<i32>(2147483647i, 2513i, 33589i), vec2<bool>(false, false), 10244u)), 1161u, 13919i), Struct_4(1000f, -515f, Struct_3(12799u, Struct_2(false, vec3<i32>(0i, -27409i, 24055i), vec2<bool>(true, false), 4294967295u)), 0u, 19317i), Struct_4(1408f, -698f, Struct_3(4294967295u, Struct_2(true, vec3<i32>(46692i, 2147483647i, i32(-2147483648)), vec2<bool>(false, false), 4294967295u)), 19881u, 4611i), Struct_4(1104f, 2004f, Struct_3(0u, Struct_2(true, vec3<i32>(10887i, -1i, -24213i), vec2<bool>(false, false), 0u)), 58056u, 2147483647i), Struct_4(613f, 289f, Struct_3(4294967295u, Struct_2(true, vec3<i32>(-33310i, 5035i, -36713i), vec2<bool>(true, true), 54995u)), 11689u, -7826i), Struct_4(2194f, 996f, Struct_3(0u, Struct_2(false, vec3<i32>(1i, 8336i, -30076i), vec2<bool>(false, false), 4294967295u)), 1u, i32(-2147483648)));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
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

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: vec3<i32>) -> u32 {
    global0 = array<u32, 25>();
    let var_0 = -firstLeadingBit(vec3<i32>(-37649i, max(-45371i, 1i), u_input.c) ^ firstTrailingBit(arg_2));
    var var_1 = Struct_2(arg_1, -countOneBits(-vec3<i32>(-1i, -22030i, 0i)), select(select(vec2<bool>(arg_1, arg_1), !(!vec2<bool>(arg_0.a.x, arg_1)), select(!vec2<bool>(arg_1, true), select(vec2<bool>(false, arg_0.a.x), vec2<bool>(arg_0.a.x, arg_1), false), true)), arg_0.a.yy, all(arg_0.a.yww)), 21145u);
    var var_2 = arg_1;
    var var_3 = !arg_0.a.x;
    return _wgslsmith_mod_u32(u_input.d | ~(~(1u | global0[_wgslsmith_index_u32(u_input.d, 25u)])), 0u);
}

fn func_2() -> Struct_3 {
    let var_0 = vec2<u32>(~_wgslsmith_mult_u32(reverseBits(~u_input.b.x), func_3(Struct_1(vec4<bool>(true, true, false, true)), true, vec3<i32>(39842i, u_input.e, u_input.a))), 30021u);
    var var_1 = vec3<u32>(var_0.x, ~4294967295u, _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(countOneBits(u_input.b.xx), countOneBits(vec2<u32>(57562u, var_0.x)) | ~u_input.b.xy), ~min(~vec2<u32>(32047u, 15125u), ~vec2<u32>(var_0.x, 0u))));
    var_1 = _wgslsmith_sub_vec3_u32(~_wgslsmith_div_vec3_u32(u_input.b, u_input.b), u_input.b);
    global0 = array<u32, 25>();
    let var_2 = countOneBits(~max(_wgslsmith_div_vec2_i32(vec2<i32>(2147483647i, -1i), vec2<i32>(u_input.c, u_input.a)), select(vec2<i32>(u_input.c, -15045i), vec2<i32>(-2147483647i, 26250i), vec2<bool>(true, true)))) | _wgslsmith_div_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(0i, u_input.a) << (var_1.zz % vec2<u32>(32u)), ~(~vec2<i32>(u_input.a, u_input.c))), firstLeadingBit(_wgslsmith_sub_vec2_i32(vec2<i32>(0i, u_input.e), vec2<i32>(u_input.c, u_input.e) >> (var_0 % vec2<u32>(32u)))));
    return Struct_3(_wgslsmith_mod_u32(~var_1.x, ~_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(var_1.zz, var_0), var_1.x)), Struct_2(true != all(vec4<bool>(true, false, true, true)), firstTrailingBit(vec3<i32>(u_input.e, var_2.x, u_input.e >> (27049u % 32u))), select(vec2<bool>(var_1.x > 45705u, select(false, true, true)), select(vec2<bool>(false, false), select(vec2<bool>(true, true), vec2<bool>(true, true), true), true), false | any(vec4<bool>(true, false, true, false))), ~1u));
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: Struct_3) -> bool {
    global0 = array<u32, 25>();
    global0 = array<u32, 25>();
    global0 = array<u32, 25>();
    var var_0 = global0[_wgslsmith_index_u32((~(_wgslsmith_add_u32(0u, 0u) & arg_2.a) & func_2().b.d) >> (1u % 32u), 25u)];
    let var_1 = !(((-2147483647i & (u_input.e >> (global0[_wgslsmith_index_u32(u_input.b.x, 25u)] % 32u))) > func_2().b.b.x) || arg_2.b.a);
    return arg_0.x >= arg_0.x;
}

fn func_1(arg_0: Struct_2, arg_1: vec3<u32>) -> Struct_4 {
    global0 = array<u32, 25>();
    let var_0 = vec2<bool>(func_4(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1194f, 1122f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1937f, 937f)), !arg_0.c)), Struct_1(!vec4<bool>(arg_0.c.x, arg_0.c.x, true, false)), func_2()) && select(!(!arg_0.c.x), false, !any(vec4<bool>(false, true, true, true))), !any(vec4<bool>(4294967295u > arg_0.d, arg_0.c.x, false, func_2().b.a)));
    var var_1 = arg_0.a;
    global1 = array<Struct_4, 22>();
    var var_2 = (~(~(arg_0.d << (76636u % 32u))) << ((_wgslsmith_mod_u32(49458u, firstLeadingBit(arg_1.x)) << (arg_1.x % 32u)) % 32u)) ^ reverseBits(firstTrailingBit(arg_0.d));
    return Struct_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-110f * 111f)) + _wgslsmith_f_op_f32(step(-398f, _wgslsmith_f_op_f32(abs(-1000f))))), 781f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(-257f, -104f)))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(271f, 502f)))))), func_2(), ~1u, 2147483647i >> (~arg_1.x % 32u));
}

fn func_5(arg_0: f32, arg_1: Struct_4) -> Struct_1 {
    global0 = array<u32, 25>();
    let var_0 = -vec3<i32>(~abs(u_input.e), ~(-2147483647i), -1i) ^ vec3<i32>(1i, u_input.c, firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.c.b.b.x, u_input.a, 0i, arg_1.e), vec4<i32>(arg_1.c.b.b.x, 15416i, 0i, -1i))));
    var var_1 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1045f, 910f, arg_0, arg_1.b) - vec4<f32>(arg_0, arg_1.b, 180f, arg_1.a)) - _wgslsmith_div_vec4_f32(vec4<f32>(-503f, arg_0, -1000f, 1370f), vec4<f32>(arg_1.a, arg_1.b, arg_1.b, 1891f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(624f, arg_0, 186f, -1130f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.b, 472f, 238f, -2393f) * vec4<f32>(1369f, arg_1.b, 792f, 350f))))))));
    var_1 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(arg_0, -408f, arg_1.b, arg_1.a), vec4<f32>(-1000f, arg_1.a, arg_0, arg_1.a)) - _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_0, -538f, -671f, 119f)))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-540f, -1857f, arg_0, var_1.x)), vec4<f32>(917f, -1166f, 402f, 358f), select(vec4<bool>(arg_1.c.b.c.x, arg_1.c.b.c.x, true, arg_1.c.b.c.x), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true))))))));
    global0 = array<u32, 25>();
    return Struct_1(select(vec4<bool>(any(select(vec2<bool>(arg_1.c.b.a, false), vec2<bool>(false, false), vec2<bool>(false, false))), any(func_2().b.c), false, !(!arg_1.c.b.a)), vec4<bool>(false, true, true, false), false));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(-799f, func_1(Struct_2(all(vec4<bool>(true, true, false, false)), vec3<i32>(max(u_input.c, u_input.e), -2147483647i, ~26051i), !select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true)), countOneBits(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.d, 25u)], 25u)]) & global0[_wgslsmith_index_u32(~u_input.b.x, 25u)]), abs(u_input.b)));
    global0 = array<u32, 25>();
    var var_1 = func_2();
    var_1 = Struct_3(~60244u, var_1.b);
    global1 = array<Struct_4, 22>();
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-858f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(func_1(var_1.b, u_input.b).b, _wgslsmith_f_op_f32(-599f + 120f))))), -618f));
    let x = u_input.a;
    s_output = StorageBuffer(abs(countOneBits(var_1.a)), 42u, u_input.d, ~vec4<u32>(u_input.b.x, min(~global0[_wgslsmith_index_u32(29788u, 25u)], u_input.d), min(~1u, ~u_input.d), 27123u));
}

