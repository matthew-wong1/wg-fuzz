struct Struct_1 {
    a: f32,
    b: vec3<f32>,
    c: u32,
    d: vec2<bool>,
    e: vec4<bool>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec2<i32>,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<f32>,
}

struct Struct_4 {
    a: Struct_3,
    b: f32,
    c: vec3<bool>,
    d: Struct_2,
    e: vec2<bool>,
}

struct Struct_5 {
    a: Struct_4,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 13>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_5) -> vec3<u32> {
    global0 = array<bool, 13>();
    var var_0 = vec3<u32>(arg_0.a.a.b.c, 1u, firstTrailingBit(4294967295u ^ (1u | arg_0.a.d.d)));
    var var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(-732f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(249f * -1442f), _wgslsmith_f_op_f32(-arg_0.a.b), any(vec4<bool>(global0[_wgslsmith_index_u32(var_0.x, 13u)], global0[_wgslsmith_index_u32(4294967295u, 13u)], arg_0.a.c.x, false)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -309f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a.a.b.a, arg_0.a.b, 176f)), vec3<f32>(-132f, -1210f, arg_0.a.b))) + arg_0.a.d.c.b)));
    var_0 = select(~vec3<u32>(1u, ~arg_0.a.a.a.c | arg_0.a.d.d, _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(var_0.zx, vec2<u32>(49715u, 0u)), _wgslsmith_div_vec2_u32(vec2<u32>(0u, arg_0.a.d.c.c), var_0.yy))), min(max(~vec3<u32>(28409u, var_0.x, 17783u), _wgslsmith_add_vec3_u32(vec3<u32>(1u, arg_0.a.a.a.c, 0u), vec3<u32>(52550u, 18162u, 61025u))) ^ (vec3<u32>(25637u, arg_0.a.a.a.c, 5324u) << ((vec3<u32>(var_0.x, arg_0.a.d.d, 13380u) & vec3<u32>(arg_0.a.a.a.c, 36578u, var_0.x)) % vec3<u32>(32u))), _wgslsmith_add_vec3_u32(abs(~vec3<u32>(arg_0.a.a.a.c, 427u, 4517u)), _wgslsmith_add_vec3_u32(firstLeadingBit(vec3<u32>(arg_0.a.a.b.c, 14871u, var_0.x)), ~vec3<u32>(var_0.x, 4294967295u, 4294967295u)))), all(arg_0.a.e));
    var_1 = vec3<f32>(arg_0.a.a.a.b.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_1.x * var_1.x), _wgslsmith_f_op_f32(step(-974f, -1314f)))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-907f)), _wgslsmith_f_op_f32(-385f * -1668f))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(var_1.x)))))));
    return ~(~(~vec3<u32>(4294967295u, ~33801u, min(0u, arg_0.a.d.d))));
}

fn func_2() -> vec4<f32> {
    let var_0 = vec3<u32>(_wgslsmith_dot_vec3_u32(select(_wgslsmith_div_vec3_u32(vec3<u32>(0u, 4294967295u, 21186u), reverseBits(vec3<u32>(85847u, 1u, 26895u))), select(vec3<u32>(1u, 1u, 1u), func_3(Struct_5(Struct_4(Struct_3(Struct_1(-1355f, vec3<f32>(-1000f, 1671f, 1127f), 1u, vec2<bool>(global0[_wgslsmith_index_u32(1u, 13u)], false), vec4<bool>(global0[_wgslsmith_index_u32(0u, 13u)], false, global0[_wgslsmith_index_u32(66182u, 13u)], global0[_wgslsmith_index_u32(4808u, 13u)])), Struct_1(1212f, vec3<f32>(-1366f, -493f, 1000f), 18314u, vec2<bool>(global0[_wgslsmith_index_u32(1u, 13u)], global0[_wgslsmith_index_u32(52266u, 13u)]), vec4<bool>(global0[_wgslsmith_index_u32(87823u, 13u)], global0[_wgslsmith_index_u32(4294967295u, 13u)], global0[_wgslsmith_index_u32(1u, 13u)], true)), vec3<f32>(1070f, 1000f, -560f)), -1321f, vec3<bool>(global0[_wgslsmith_index_u32(31214u, 13u)], true, true), Struct_2(u_input.a.yzw, vec2<i32>(u_input.a.x, u_input.b), Struct_1(457f, vec3<f32>(770f, 2488f, 2167f), 5727u, vec2<bool>(global0[_wgslsmith_index_u32(1u, 13u)], true), vec4<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 13u)], global0[_wgslsmith_index_u32(11890u, 13u)], global0[_wgslsmith_index_u32(1u, 13u)])), 41607u), vec2<bool>(false, false)))), select(vec3<bool>(true, global0[_wgslsmith_index_u32(31642u, 13u)], true), vec3<bool>(global0[_wgslsmith_index_u32(0u, 13u)], true, global0[_wgslsmith_index_u32(0u, 13u)]), vec3<bool>(true, global0[_wgslsmith_index_u32(1u, 13u)], global0[_wgslsmith_index_u32(11410u, 13u)]))), true), vec3<u32>(_wgslsmith_mod_u32(16505u, countOneBits(41631u)), ~1u >> (firstLeadingBit(30449u) % 32u), ~_wgslsmith_mult_u32(0u, 0u))), _wgslsmith_dot_vec3_u32(func_3(Struct_5(Struct_4(Struct_3(Struct_1(542f, vec3<f32>(-1000f, 1080f, 2124f), 61074u, vec2<bool>(false, true), vec4<bool>(true, true, false, true)), Struct_1(572f, vec3<f32>(-117f, -155f, 331f), 0u, vec2<bool>(false, global0[_wgslsmith_index_u32(0u, 13u)]), vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 13u)], global0[_wgslsmith_index_u32(75674u, 13u)], global0[_wgslsmith_index_u32(0u, 13u)], false)), vec3<f32>(1063f, -1144f, -1023f)), 123f, vec3<bool>(global0[_wgslsmith_index_u32(118626u, 13u)], false, global0[_wgslsmith_index_u32(42000u, 13u)]), Struct_2(u_input.a.yzw, vec2<i32>(u_input.b, u_input.b), Struct_1(633f, vec3<f32>(-1781f, -443f, 1696f), 65146u, vec2<bool>(false, global0[_wgslsmith_index_u32(30673u, 13u)]), vec4<bool>(false, false, global0[_wgslsmith_index_u32(4294967295u, 13u)], true)), 45859u), vec2<bool>(false, global0[_wgslsmith_index_u32(22715u, 13u)])))), ~select(vec3<u32>(4294967295u, 8283u, 31148u), vec3<u32>(1u, 1u, 1u), vec3<bool>(global0[_wgslsmith_index_u32(1u, 13u)], global0[_wgslsmith_index_u32(5747u, 13u)], false))), select(~(~select(67980u, 11951u, false)), _wgslsmith_div_u32(~reverseBits(1u), 1u), ~firstTrailingBit(29233u) != 1u));
    var var_1 = Struct_2(select(-u_input.a.www, vec3<i32>(~(~0i), u_input.a.x, u_input.a.x), !(!vec3<bool>(global0[_wgslsmith_index_u32(23144u, 13u)], true, global0[_wgslsmith_index_u32(var_0.x, 13u)]))), ~u_input.a.zz, Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-525f, 251f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1727f, 527f, 525f), vec3<f32>(-538f, 734f, 680f), vec3<bool>(global0[_wgslsmith_index_u32(0u, 13u)], global0[_wgslsmith_index_u32(0u, 13u)], global0[_wgslsmith_index_u32(var_0.x, 13u)]))) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-277f, -2034f, -871f), vec3<f32>(699f, -266f, -1059f), vec3<bool>(true, global0[_wgslsmith_index_u32(38274u, 13u)], false))))), ~var_0.x, !select(select(vec2<bool>(global0[_wgslsmith_index_u32(1u, 13u)], global0[_wgslsmith_index_u32(10481u, 13u)]), vec2<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 13u)]), vec2<bool>(false, global0[_wgslsmith_index_u32(var_0.x, 13u)])), vec2<bool>(global0[_wgslsmith_index_u32(var_0.x, 13u)], global0[_wgslsmith_index_u32(1u, 13u)]), global0[_wgslsmith_index_u32(0u, 13u)]), !(!select(vec4<bool>(true, true, false, true), vec4<bool>(global0[_wgslsmith_index_u32(var_0.x, 13u)], false, false, global0[_wgslsmith_index_u32(4294967295u, 13u)]), vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 13u)], global0[_wgslsmith_index_u32(var_0.x, 13u)], global0[_wgslsmith_index_u32(45341u, 13u)], false)))), firstTrailingBit(~func_3(Struct_5(Struct_4(Struct_3(Struct_1(1000f, vec3<f32>(-254f, 1305f, -246f), 35398u, vec2<bool>(true, false), vec4<bool>(global0[_wgslsmith_index_u32(var_0.x, 13u)], global0[_wgslsmith_index_u32(35317u, 13u)], false, true)), Struct_1(2128f, vec3<f32>(-275f, -1000f, -669f), var_0.x, vec2<bool>(true, global0[_wgslsmith_index_u32(var_0.x, 13u)]), vec4<bool>(global0[_wgslsmith_index_u32(var_0.x, 13u)], true, false, global0[_wgslsmith_index_u32(0u, 13u)])), vec3<f32>(604f, -368f, -374f)), 514f, vec3<bool>(false, false, global0[_wgslsmith_index_u32(var_0.x, 13u)]), Struct_2(vec3<i32>(u_input.b, u_input.a.x, u_input.a.x), u_input.a.wx, Struct_1(-859f, vec3<f32>(-747f, -557f, 2663f), 1u, vec2<bool>(false, false), vec4<bool>(true, global0[_wgslsmith_index_u32(var_0.x, 13u)], global0[_wgslsmith_index_u32(var_0.x, 13u)], global0[_wgslsmith_index_u32(var_0.x, 13u)])), var_0.x), vec2<bool>(false, global0[_wgslsmith_index_u32(var_0.x, 13u)])))).x));
    let var_2 = var_0;
    var var_3 = vec3<i32>(abs(_wgslsmith_dot_vec3_i32(u_input.a.zzz, firstLeadingBit(-vec3<i32>(0i, 19499i, 2147483647i)))), select(-1i, 29376i, !(global0[_wgslsmith_index_u32(var_2.x, 13u)] | global0[_wgslsmith_index_u32(var_2.x, 13u)])) & ~u_input.b, 11067i);
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -394f))));
    return _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.c.a, var_1.c.b.x, -1000f, var_4)), vec4<f32>(var_4, var_1.c.b.x, var_1.c.a, var_4), global0[_wgslsmith_index_u32(var_1.d, 13u)]))))));
}

fn func_1(arg_0: Struct_4) -> u32 {
    let var_0 = arg_0.a;
    global0 = array<bool, 13>();
    let var_1 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1143f, var_0.a.b.x, -1123f, arg_0.b), vec4<f32>(-780f, var_0.a.a, arg_0.b, -358f), global0[_wgslsmith_index_u32(var_0.a.c, 13u)])))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(var_0.a.b.x - -1027f), -676f, _wgslsmith_f_op_f32(-339f - 1324f), var_0.c.x)) * _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_div_f32(var_0.b.a, -777f), 951f, _wgslsmith_f_op_f32(-arg_0.b), _wgslsmith_f_op_f32(floor(1000f))), vec4<f32>(var_0.b.a, _wgslsmith_f_op_f32(arg_0.b - 1512f), _wgslsmith_f_op_f32(-2341f * var_0.c.x), _wgslsmith_div_f32(-310f, 1000f))))));
    let var_2 = arg_0.a.b;
    var var_3 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_0.b.b.x)) + _wgslsmith_f_op_f32(round(var_2.a))), var_0.c.x, 1126f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_2.a, 414f, arg_0.e.x)) * var_2.b.x)) + _wgslsmith_f_op_vec4_f32(func_2()))));
    return 19040u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(-1291f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(406f, 833f, -331f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(264f, 573f, 1116f))))), _wgslsmith_mod_u32(_wgslsmith_clamp_u32(0u, abs(abs(40730u)), _wgslsmith_div_u32(countOneBits(0u), 1u)), _wgslsmith_mult_u32(~func_1(Struct_4(Struct_3(Struct_1(187f, vec3<f32>(456f, 784f, 223f), 0u, vec2<bool>(global0[_wgslsmith_index_u32(1u, 13u)], global0[_wgslsmith_index_u32(4294967295u, 13u)]), vec4<bool>(global0[_wgslsmith_index_u32(89212u, 13u)], global0[_wgslsmith_index_u32(4738u, 13u)], false, false)), Struct_1(-608f, vec3<f32>(669f, -1431f, 1195f), 49636u, vec2<bool>(global0[_wgslsmith_index_u32(1u, 13u)], global0[_wgslsmith_index_u32(0u, 13u)]), vec4<bool>(global0[_wgslsmith_index_u32(0u, 13u)], false, true, global0[_wgslsmith_index_u32(1u, 13u)])), vec3<f32>(-758f, -567f, 528f)), 474f, vec3<bool>(global0[_wgslsmith_index_u32(16112u, 13u)], global0[_wgslsmith_index_u32(44489u, 13u)], false), Struct_2(vec3<i32>(u_input.b, -12773i, -2147483647i), vec2<i32>(u_input.a.x, u_input.a.x), Struct_1(-1233f, vec3<f32>(-520f, 759f, 228f), 1u, vec2<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 13u)]), vec4<bool>(global0[_wgslsmith_index_u32(0u, 13u)], false, global0[_wgslsmith_index_u32(1279u, 13u)], false)), 1295u), vec2<bool>(true, true))), _wgslsmith_mult_u32(1u, 63280u))), !(!vec2<bool>(all(vec3<bool>(true, true, true)), false)), !vec4<bool>(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_sub_u32(44090u, 41113u), 745u, 88u), 13u)], any(select(vec3<bool>(false, true, true), vec3<bool>(true, global0[_wgslsmith_index_u32(28494u, 13u)], global0[_wgslsmith_index_u32(78880u, 13u)]), vec3<bool>(true, true, true))), !global0[_wgslsmith_index_u32(72812u, 13u)] & true, true));
    let var_1 = var_0.c <= abs(~(~49096u));
    global0 = array<bool, 13>();
    global0 = array<bool, 13>();
    var var_2 = select(vec2<i32>(u_input.a.x, (u_input.b & u_input.a.x) & _wgslsmith_sub_i32(u_input.a.x, u_input.a.x)) | ~u_input.a.ww, vec2<i32>(_wgslsmith_mod_i32(26880i, -32584i ^ abs(u_input.a.x)), -35372i), !(~u_input.a.x == 0i));
    let var_3 = Struct_5(Struct_4(Struct_3(Struct_1(-486f, var_0.b, 56015u, select(vec2<bool>(true, var_0.e.x), vec2<bool>(false, true), vec2<bool>(var_1, var_0.e.x)), !vec4<bool>(true, true, var_0.d.x, global0[_wgslsmith_index_u32(4294967295u, 13u)])), Struct_1(592f, _wgslsmith_f_op_vec3_f32(-var_0.b), ~var_0.c, vec2<bool>(true, false), select(var_0.e, var_0.e, var_0.e)), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -652f), _wgslsmith_f_op_f32(-100f - var_0.a), var_0.b.x)), _wgslsmith_f_op_f32(var_0.b.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(965f + var_0.a))), !(!var_0.e.wwz), Struct_2(min(u_input.a.zyz, vec3<i32>(1i, u_input.b, 48108i)), u_input.a.wy, Struct_1(-180f, var_0.b, ~var_0.c, vec2<bool>(false, false), vec4<bool>(false, global0[_wgslsmith_index_u32(43247u, 13u)], global0[_wgslsmith_index_u32(var_0.c, 13u)], true)), ~_wgslsmith_mult_u32(var_0.c, 11468u)), var_0.e.zz));
    let var_4 = func_3(Struct_5(var_3.a)).x;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(countOneBits(1u), ~0u, _wgslsmith_dot_vec4_u32(abs(_wgslsmith_div_vec4_u32(vec4<u32>(var_0.c, var_0.c, var_3.a.d.c.c, var_0.c), vec4<u32>(var_3.a.a.a.c, 1u, 36374u, 44763u))), ~vec4<u32>(var_4, 1u, 10736u, 90922u) ^ vec4<u32>(var_4, var_3.a.a.b.c, var_0.c, var_3.a.d.d)), 0u), ~(_wgslsmith_mod_vec2_i32(select(var_3.a.d.b, vec2<i32>(var_3.a.d.a.x, var_3.a.d.a.x), var_3.a.d.c.e.zy), -var_3.a.d.b) & vec2<i32>(_wgslsmith_div_i32(var_3.a.d.b.x, var_2.x), 63893i)), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(-150f, var_3.a.a.c.x) + _wgslsmith_f_op_vec2_f32(var_3.a.d.c.b.yz * var_0.b.yy)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1126f, var_3.a.d.c.b.x) - var_0.b.zz) + var_3.a.a.c.zx)))));
}

