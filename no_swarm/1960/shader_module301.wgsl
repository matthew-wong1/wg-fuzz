struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: f32,
    d: u32,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 22> = array<Struct_1, 22>(Struct_1(vec4<u32>(29950u, 27238u, 0u, 4294967295u), 1000f, -340f, 8520u, vec2<f32>(342f, 684f)), Struct_1(vec4<u32>(42252u, 55658u, 4294967295u, 1u), 2033f, 174f, 11854u, vec2<f32>(763f, 1883f)), Struct_1(vec4<u32>(66816u, 9747u, 0u, 68301u), -242f, -1068f, 1u, vec2<f32>(1000f, -791f)), Struct_1(vec4<u32>(0u, 50130u, 0u, 0u), 283f, -659f, 14320u, vec2<f32>(1756f, -965f)), Struct_1(vec4<u32>(15620u, 0u, 5912u, 4294967295u), 258f, 271f, 0u, vec2<f32>(-727f, 424f)), Struct_1(vec4<u32>(44602u, 6809u, 17771u, 0u), -1000f, 555f, 75893u, vec2<f32>(1091f, -1000f)), Struct_1(vec4<u32>(1u, 1u, 0u, 4294967295u), 641f, -1053f, 0u, vec2<f32>(-711f, -537f)), Struct_1(vec4<u32>(4294967295u, 21299u, 1u, 58152u), -1593f, 772f, 1u, vec2<f32>(-1779f, 760f)), Struct_1(vec4<u32>(4294967295u, 45796u, 8097u, 4294967295u), 276f, -1000f, 4294967295u, vec2<f32>(-1000f, -2266f)), Struct_1(vec4<u32>(4294967295u, 62387u, 34955u, 8214u), 1000f, 724f, 1u, vec2<f32>(-1137f, -208f)), Struct_1(vec4<u32>(53294u, 4294967295u, 4294967295u, 4294967295u), -763f, 288f, 13892u, vec2<f32>(-131f, 207f)), Struct_1(vec4<u32>(1u, 1u, 15070u, 1u), -800f, 924f, 1u, vec2<f32>(2150f, 1084f)), Struct_1(vec4<u32>(1u, 0u, 4294967295u, 28147u), 242f, 1000f, 1u, vec2<f32>(-764f, 1707f)), Struct_1(vec4<u32>(31803u, 52944u, 89413u, 4294967295u), -1436f, 513f, 0u, vec2<f32>(396f, 475f)), Struct_1(vec4<u32>(11278u, 19025u, 0u, 21985u), 196f, 1000f, 12583u, vec2<f32>(657f, -1055f)), Struct_1(vec4<u32>(4294967295u, 35439u, 4294967295u, 0u), 299f, 357f, 0u, vec2<f32>(152f, 1513f)), Struct_1(vec4<u32>(1u, 20734u, 9128u, 4294967295u), 410f, 868f, 1u, vec2<f32>(247f, 801f)), Struct_1(vec4<u32>(38331u, 4294967295u, 34497u, 10448u), 516f, -1922f, 0u, vec2<f32>(-717f, -420f)), Struct_1(vec4<u32>(51955u, 0u, 72267u, 4294967295u), 653f, 2080f, 36698u, vec2<f32>(1008f, 147f)), Struct_1(vec4<u32>(48485u, 14770u, 17762u, 4294967295u), -513f, -1000f, 4294967295u, vec2<f32>(1256f, -627f)), Struct_1(vec4<u32>(4294967295u, 51456u, 0u, 1846u), -937f, 685f, 105338u, vec2<f32>(205f, -1156f)), Struct_1(vec4<u32>(1u, 35685u, 1327u, 1u), -182f, 2384f, 21993u, vec2<f32>(-847f, -1155f)));

var<private> global1: array<u32, 16>;

var<private> global2: vec2<u32>;

var<private> global3: array<vec3<u32>, 11>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_1(arg_0: vec2<i32>, arg_1: bool, arg_2: vec2<i32>) -> Struct_1 {
    global2 = u_input.d.wy;
    var var_0 = -697f;
    let var_1 = global0[_wgslsmith_index_u32(global2.x, 22u)];
    let var_2 = select(vec4<bool>(true, arg_1, select(select(arg_1, false, true) | false, all(!vec4<bool>(true, arg_1, arg_1, true)), arg_1), false), vec4<bool>(arg_1, true, any(!vec2<bool>(arg_1, false)), arg_1), arg_1 && true);
    global1 = array<u32, 16>();
    return global0[_wgslsmith_index_u32(min(4464u ^ ~u_input.a, 0u), 22u)];
}

fn func_3(arg_0: Struct_1, arg_1: vec4<u32>) -> Struct_1 {
    var var_0 = _wgslsmith_mod_vec4_i32(vec4<i32>(34206i, u_input.e << (arg_1.x % 32u), 0i << (u_input.d.x % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.e, _wgslsmith_sub_i32(u_input.c.x, 0i), 46694i, firstLeadingBit(-1i)), ~select(vec4<i32>(1i, 56707i, -15083i, u_input.e), vec4<i32>(u_input.c.x, u_input.c.x, -1i, u_input.c.x), vec4<bool>(false, false, false, false)))), vec4<i32>(-u_input.e, _wgslsmith_mult_i32(_wgslsmith_div_i32(_wgslsmith_sub_i32(u_input.c.x, -62540i), min(4083i, -29464i)), u_input.e), select(_wgslsmith_dot_vec3_i32(vec3<i32>(4952i, u_input.c.x, -30630i), vec3<i32>(u_input.c.x, u_input.c.x, -2147483647i)), 14435i & u_input.c.x, true) & _wgslsmith_mod_i32(u_input.c.x & -3854i, 7424i), u_input.c.x));
    let var_1 = (global2.x >> (_wgslsmith_sub_u32((arg_1.x ^ 6572u) << (_wgslsmith_sub_u32(24804u, u_input.a) % 32u), func_1(vec2<i32>(u_input.c.x, -2147483647i), true, u_input.c).d ^ func_1(var_0.yy, true, vec2<i32>(-5515i, var_0.x)).d) % 32u)) >> (~global1[_wgslsmith_index_u32(abs(~(~global2.x)), 16u)] % 32u);
    let var_2 = firstTrailingBit(vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c.x, u_input.c.x), vec2<i32>(var_0.x, var_0.x) >> (arg_1.zz % vec2<u32>(32u))) ^ _wgslsmith_sub_i32(u_input.e, 17313i), u_input.c.x, -2147483647i));
    global2 = max(u_input.d.zy, vec2<u32>(abs(arg_0.a.x), ~(~(~arg_1.x))));
    let var_3 = Struct_1(~firstLeadingBit(vec4<u32>(global1[_wgslsmith_index_u32(0u, 16u)], arg_1.x, global2.x, global1[_wgslsmith_index_u32(34487u, 16u)]) | ~vec4<u32>(0u, arg_0.d, u_input.b, u_input.b)), -109f, 2562f, 53748u, _wgslsmith_f_op_vec2_f32(vec2<f32>(-180f, -1737f) + _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(arg_0.e, _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 323f) * vec2<f32>(1172f, -948f))) - arg_0.e)));
    return func_1(vec2<i32>(-24233i, 2147483647i), select(true, false, !(global2.x == arg_1.x)), _wgslsmith_mod_vec2_i32(countOneBits((var_0.yx ^ var_0.yz) << ((u_input.d.zx & arg_0.a.wx) % vec2<u32>(32u))), u_input.c));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    let var_0 = func_3(Struct_1(~_wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(18680u, arg_0.d, 43831u, arg_0.d), u_input.d), min(u_input.d, arg_0.a)), -431f, arg_0.c, 82968u, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(arg_0.e, vec2<f32>(arg_1.c, 1140f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_1.e * arg_1.e)))), ~arg_1.a);
    var var_1 = arg_0.e.x;
    let var_2 = vec3<bool>(true, !(!all(select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), true))), false);
    global1 = array<u32, 16>();
    let var_3 = u_input.d.x;
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_2(Struct_1(_wgslsmith_sub_vec4_u32(firstLeadingBit(u_input.d), u_input.d) << (vec4<u32>(0u, u_input.d.x, _wgslsmith_div_u32(53951u, global2.x), 0u) % vec4<u32>(32u)), 1043f, 1000f, _wgslsmith_clamp_u32(abs(11285u), global1[_wgslsmith_index_u32(~33109u, 16u)], ~global1[_wgslsmith_index_u32(u_input.a, 16u)]) & _wgslsmith_sub_u32(u_input.a, firstLeadingBit(global1[_wgslsmith_index_u32(62400u, 16u)])), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(713f, -231f)) + vec2<f32>(2388f, 588f)))), func_1(~_wgslsmith_div_vec2_i32(vec2<i32>(u_input.e, -2036i), u_input.c) >> (vec2<u32>(~1u, abs(43831u)) % vec2<u32>(32u)), true, -(~vec2<i32>(-9815i, u_input.c.x) >> (u_input.d.yx % vec2<u32>(32u)))));
    var var_1 = 2147483647i;
    var var_2 = vec4<i32>(u_input.e, _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(-1i, -11722i, u_input.c.x, -10859i), reverseBits(-vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x))), u_input.c.x), -2147483647i, -2147483647i);
    var var_3 = select(select(vec3<bool>(all(vec2<bool>(true, false)) || true, select(u_input.e, var_2.x, false) <= _wgslsmith_add_i32(u_input.e, u_input.e), all(vec2<bool>(true, true))), vec3<bool>(var_0.c < var_0.c, true, true), select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), false), false), vec3<bool>(true, true, false), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), true), select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(false, true, true))))), select(vec3<bool>(any(vec3<bool>(true, true, true)), true, any(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true)))), !vec3<bool>(true, true, u_input.c.x > 16874i), any(vec4<bool>(true, true, true, true)) & true), select(vec3<bool>(select(false, true, var_2.x > -4993i), all(select(vec2<bool>(true, true), vec2<bool>(true, false), true)), true), !select(vec3<bool>(false, true, true), select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true)), true), any(!select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(true, false, true)))));
    var var_4 = _wgslsmith_div_f32(397f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.c, _wgslsmith_f_op_f32(-var_0.b)) + -1000f)) == var_0.c;
    var_2 = vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, 1i, -u_input.c.x, abs(_wgslsmith_dot_vec2_i32(vec2<i32>(124269i, var_2.x), var_2.xy))), vec4<i32>(~var_2.x, i32(-1i) * -u_input.e, -34950i, ~countOneBits(-28986i))), var_2.x, u_input.e, -_wgslsmith_mod_i32(firstTrailingBit(~u_input.e), reverseBits(var_2.x)));
    let var_5 = global0[_wgslsmith_index_u32(u_input.d.x, 22u)];
    let x = u_input.a;
    s_output = StorageBuffer(~func_3(Struct_1(var_5.a, -1921f, _wgslsmith_f_op_f32(var_5.c - var_5.b), global1[_wgslsmith_index_u32(12136u, 16u)], var_5.e), _wgslsmith_mod_vec4_u32(reverseBits(var_5.a), ~var_0.a)).d);
}

