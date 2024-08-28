struct Struct_1 {
    a: vec2<u32>,
    b: vec3<f32>,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
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

var<private> global0: array<Struct_1, 26>;

var<private> global1: vec2<u32>;

var<private> global2: array<vec3<bool>, 13> = array<vec3<bool>, 13>(vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, true));

var<private> global3: array<vec4<u32>, 7> = array<vec4<u32>, 7>(vec4<u32>(36355u, 4294967295u, 4294967295u, 51004u), vec4<u32>(65154u, 72445u, 4294967295u, 1u), vec4<u32>(0u, 32035u, 1u, 42419u), vec4<u32>(8488u, 90979u, 4294967295u, 4294967295u), vec4<u32>(46308u, 48648u, 30505u, 21171u), vec4<u32>(4294967295u, 1u, 4294967295u, 76939u), vec4<u32>(15423u, 19208u, 13145u, 29973u));

var<private> global4: array<Struct_1, 17> = array<Struct_1, 17>(Struct_1(vec2<u32>(18258u, 110948u), vec3<f32>(-475f, 1000f, -630f), 4294967295u), Struct_1(vec2<u32>(18007u, 28594u), vec3<f32>(815f, -832f, -333f), 6166u), Struct_1(vec2<u32>(0u, 4294967295u), vec3<f32>(-767f, -1764f, 1000f), 0u), Struct_1(vec2<u32>(35006u, 10729u), vec3<f32>(-179f, 813f, 911f), 4294967295u), Struct_1(vec2<u32>(28195u, 1u), vec3<f32>(1423f, 1224f, 1160f), 1u), Struct_1(vec2<u32>(21139u, 1u), vec3<f32>(-555f, 483f, 236f), 5255u), Struct_1(vec2<u32>(1u, 39621u), vec3<f32>(1236f, 188f, -1302f), 11168u), Struct_1(vec2<u32>(1u, 17795u), vec3<f32>(-993f, -1099f, 2099f), 48941u), Struct_1(vec2<u32>(69927u, 12593u), vec3<f32>(-301f, -191f, -906f), 0u), Struct_1(vec2<u32>(4294967295u, 0u), vec3<f32>(1299f, 935f, -412f), 0u), Struct_1(vec2<u32>(1u, 1u), vec3<f32>(-1131f, -424f, 1073f), 41758u), Struct_1(vec2<u32>(24353u, 8024u), vec3<f32>(-1000f, -202f, 1051f), 1u), Struct_1(vec2<u32>(4294967295u, 21260u), vec3<f32>(897f, 1193f, -860f), 4294967295u), Struct_1(vec2<u32>(21421u, 1u), vec3<f32>(1890f, 104f, -869f), 0u), Struct_1(vec2<u32>(0u, 5195u), vec3<f32>(911f, 407f, 599f), 31895u), Struct_1(vec2<u32>(19862u, 0u), vec3<f32>(1435f, 180f, 1216f), 1u), Struct_1(vec2<u32>(0u, 4294967295u), vec3<f32>(-903f, 930f, 1408f), 1u));

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2(arg_0: vec4<f32>) -> vec4<i32> {
    global2 = array<vec3<bool>, 13>();
    var var_0 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x + arg_0.x))));
    return max(countOneBits(vec4<i32>(-2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(12217i, 2147483647i, -1i, 13657i), vec4<i32>(-35042i, 0i, 0i, 1i)) ^ ~(-2147483647i), _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 1i, -962i, 1i), vec4<i32>(1i, -2147483647i, -2147483647i, -1i)) ^ _wgslsmith_add_i32(-26023i, 0i), firstLeadingBit(i32(-1i) * -29614i))), abs(-abs(min(vec4<i32>(-2147483647i, -2147483647i, 44770i, -1i), vec4<i32>(-2147483647i, -2147483647i, -21325i, 30458i)))));
}

fn func_1(arg_0: vec4<i32>, arg_1: vec3<i32>, arg_2: vec2<u32>, arg_3: vec4<bool>) -> i32 {
    global0 = array<Struct_1, 26>();
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -386f);
    let var_1 = ~_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(arg_1.x, arg_0.x, arg_0.x, 17637i), select(arg_0, arg_0, vec4<bool>(arg_3.x, arg_3.x, arg_3.x, false))) >> (max(vec4<u32>(389u, arg_2.x, u_input.b.x, u_input.b.x), select(vec4<u32>(arg_2.x, 4294967295u, 6017u, 26159u), global3[_wgslsmith_index_u32(1678u, 7u)], arg_3)) % vec4<u32>(32u)), _wgslsmith_add_vec4_i32(vec4<i32>(-6587i << (arg_2.x % 32u), countOneBits(-2147483647i), _wgslsmith_div_i32(38939i, -2147483647i), 1i), func_2(vec4<f32>(var_0, var_0, 1099f, var_0))));
    let var_2 = ~(~1u) >> (global1.x % 32u);
    var var_3 = arg_0.yyw;
    return 1720i;
}

fn func_3(arg_0: i32, arg_1: bool) -> Struct_3 {
    global0 = array<Struct_1, 26>();
    global0 = array<Struct_1, 26>();
    global3 = array<vec4<u32>, 7>();
    var var_0 = Struct_2(Struct_1(countOneBits(select(reverseBits(vec2<u32>(global1.x, 8037u)), min(u_input.b, vec2<u32>(4294967295u, global1.x)), all(vec2<bool>(arg_1, true)))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(438f, 548f, 733f)))), 1u));
    global1 = vec2<u32>(firstTrailingBit(u_input.a), u_input.b.x);
    return Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-796f, 1057f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_0.a.b.x * 1000f))))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0.a.b.x)) + _wgslsmith_f_op_f32(-644f - var_0.a.b.x)) + -469f)));
}

fn func_4(arg_0: f32, arg_1: Struct_3, arg_2: bool, arg_3: vec3<bool>) -> Struct_3 {
    global0 = array<Struct_1, 26>();
    global1 = vec2<u32>(u_input.b.x, _wgslsmith_dot_vec4_u32(~_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 10169u, 1u, 0u), vec4<u32>(1u, global1.x, 0u, 73243u)), ~(~vec4<u32>(global1.x, u_input.a, 27614u, 4294967295u)))) >> (u_input.b % vec2<u32>(32u));
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(1527f)))) - arg_0), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(-2090f, 2162f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, arg_1.a))))), -210f);
    let var_1 = 105264u;
    let var_2 = 1069f;
    return func_3(max(-(~200i << (~var_1 % 32u)), -43639i), true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(1277f, func_3(-61129i | select(_wgslsmith_sub_i32(-2147483647i, -2147483647i), func_1(vec4<i32>(-58320i, -1i, -71671i, -13873i), vec3<i32>(2147483647i, -1i, 3410i), vec2<u32>(global1.x, u_input.b.x), vec4<bool>(true, true, true, false)), true), true), any(select(global2[_wgslsmith_index_u32(~u_input.a, 13u)], !global2[_wgslsmith_index_u32(global1.x, 13u)], true)), !global2[_wgslsmith_index_u32(1u, 13u)]);
    var var_1 = 0u;
    let var_2 = global4[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(_wgslsmith_sub_u32(u_input.a, u_input.a), u_input.b.x >> (global1.x % 32u)), ~(~vec2<u32>(52271u, u_input.a))), ~u_input.a, min(1u, max(_wgslsmith_clamp_u32(1u, u_input.b.x, _wgslsmith_dot_vec3_u32(vec3<u32>(74680u, 4294967295u, u_input.b.x), vec3<u32>(global1.x, u_input.b.x, 0u))), countOneBits(_wgslsmith_mult_u32(u_input.a, global1.x))))), 17u)];
    var var_3 = ~53143u;
    global1 = vec2<u32>(0u, _wgslsmith_clamp_u32(_wgslsmith_sub_u32(u_input.b.x, u_input.b.x), u_input.b.x, 1u & abs(u_input.a)) ^ 2024u);
    let var_4 = _wgslsmith_f_op_f32(max(var_2.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1131f))))));
    global2 = array<vec3<bool>, 13>();
    var var_5 = Struct_2(Struct_1(var_2.a << (_wgslsmith_sub_vec2_u32(u_input.b, _wgslsmith_div_vec2_u32(var_2.a, u_input.b)) % vec2<u32>(32u)), vec3<f32>(_wgslsmith_f_op_f32(step(-1033f, var_2.b.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_4 * var_0.a), 100f, true)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(var_2.b.x)), -406f)), 59392u));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.x);
}

