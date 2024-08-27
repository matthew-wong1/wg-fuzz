struct Struct_1 {
    a: bool,
    b: u32,
    c: vec2<f32>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec2<bool>,
    c: Struct_1,
    d: Struct_1,
    e: bool,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct Struct_4 {
    a: i32,
}

struct Struct_5 {
    a: bool,
    b: vec4<u32>,
    c: Struct_4,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: Struct_2;

var<private> global2: array<vec4<f32>, 25> = array<vec4<f32>, 25>(vec4<f32>(-1000f, -989f, -637f, -300f), vec4<f32>(126f, -220f, 1517f, 287f), vec4<f32>(-1426f, -1918f, -320f, 924f), vec4<f32>(-776f, -817f, 1208f, -969f), vec4<f32>(-383f, -1584f, 977f, -1631f), vec4<f32>(260f, -443f, -210f, 1749f), vec4<f32>(105f, -1455f, 1951f, 347f), vec4<f32>(1000f, -1000f, -2138f, -890f), vec4<f32>(652f, 1067f, -239f, 198f), vec4<f32>(107f, 893f, 112f, 1000f), vec4<f32>(-1136f, 1128f, 296f, 895f), vec4<f32>(-1228f, 264f, -616f, 1226f), vec4<f32>(1143f, 1000f, 1638f, -205f), vec4<f32>(-492f, -1328f, -1000f, 1090f), vec4<f32>(569f, 1000f, -873f, 526f), vec4<f32>(226f, -133f, -1683f, -989f), vec4<f32>(1678f, -374f, 1566f, -289f), vec4<f32>(-865f, 1170f, 1000f, 391f), vec4<f32>(-1509f, -1000f, -772f, -1173f), vec4<f32>(-412f, 1018f, -1039f, 515f), vec4<f32>(1674f, -633f, -824f, -1534f), vec4<f32>(386f, -1485f, -639f, 1166f), vec4<f32>(184f, 411f, -907f, -2434f), vec4<f32>(-1218f, 389f, -352f, -883f), vec4<f32>(-1893f, -1098f, -1300f, 201f));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_1, arg_1: i32) -> bool {
    var var_0 = global1.a.x;
    return global0.x != _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(ceil(-741f))) + 1374f), 159f));
}

fn func_2(arg_0: vec3<bool>, arg_1: bool, arg_2: u32, arg_3: f32) -> Struct_3 {
    global2 = array<vec4<f32>, 25>();
    global1 = Struct_2(select(vec4<bool>(arg_0.x, !arg_0.x, global1.a.x, !(global1.c.b >= 66035u)), global1.a, vec4<bool>(false, arg_0.x, (global0.x >= global1.d.c.x) || (1753f >= global0.x), global1.e)), select(global1.b, vec2<bool>(!select(arg_1, arg_1, arg_0.x), true), vec2<bool>(arg_0.x, !all(vec2<bool>(true, arg_0.x)))), Struct_1(func_3(global1.d, _wgslsmith_div_i32(-7403i, 24520i)), 44167u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1680f, global0.x)) + _wgslsmith_f_op_vec2_f32(ceil(global0.yz)))), global1.c.d), Struct_1(true, _wgslsmith_sub_u32(u_input.a.x, ~4294967295u), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(1073f + 549f), global0.x), global1.c.c)), select(global1.d.d, ~global1.c.d, arg_0)), all(vec2<bool>(all(select(global1.a.zzx, vec3<bool>(false, arg_1, true), arg_0.x)), false)));
    global1 = Struct_2(!(!(!(!global1.a))), !(!select(select(vec2<bool>(arg_0.x, false), arg_0.xy, false), !vec2<bool>(false, arg_1), vec2<bool>(false, arg_0.x))), global1.c, global1.c, any(select(select(global1.a, vec4<bool>(arg_1, arg_1, false, arg_1), select(global1.a, vec4<bool>(true, true, true, true), arg_0.x)), !global1.a, !vec4<bool>(false, false, arg_0.x, arg_0.x))));
    let var_0 = ~global1.d.d;
    global2 = array<vec4<f32>, 25>();
    return Struct_3(~vec4<u32>(u_input.a.x, var_0.x, abs(_wgslsmith_mod_u32(var_0.x, 1u)), arg_2));
}

fn func_1(arg_0: i32, arg_1: vec4<i32>, arg_2: u32, arg_3: vec3<bool>) -> i32 {
    var var_0 = func_2(arg_3, all(vec2<bool>(!(1u < global1.d.d.x), arg_3.x)), 19839u, _wgslsmith_f_op_f32(-1150f - global0.x));
    var_0 = Struct_3(vec4<u32>(0u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.a.x, global1.d.d.x, arg_2), vec3<u32>(69945u, global1.d.d.x, u_input.a.x)) >> (80040u % 32u), ~firstTrailingBit(abs(u_input.a.x)), _wgslsmith_dot_vec4_u32(var_0.a, vec4<u32>(arg_2, max(76713u, u_input.a.x), _wgslsmith_mult_u32(arg_2, u_input.a.x), 47878u))));
    global2 = array<vec4<f32>, 25>();
    global0 = vec4<f32>(_wgslsmith_f_op_f32(min(global1.c.c.x, global0.x)), -1100f, _wgslsmith_f_op_f32(-global1.d.c.x), _wgslsmith_div_f32(_wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(step(global0.x, _wgslsmith_f_op_f32(-193f + 536f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-995f))))));
    global1 = Struct_2(vec4<bool>(false, false, all(vec3<bool>(func_3(global1.c, arg_0), any(global1.a), any(vec4<bool>(arg_3.x, true, global1.a.x, false)))), global1.e), select(vec2<bool>(!select(false, arg_3.x, global1.e), true), !select(!global1.a.yw, vec2<bool>(true, arg_3.x), true), global1.c.b > max(_wgslsmith_mult_u32(1u, 1u), _wgslsmith_div_u32(34826u, global1.d.d.x))), global1.d, Struct_1(global1.c.a, 0u ^ _wgslsmith_dot_vec3_u32(vec3<u32>(1u, global1.c.b, 0u), vec3<u32>(91685u, 4294967295u, 0u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.yy)), min(firstTrailingBit(vec3<u32>(arg_2, 1u, 0u) ^ vec3<u32>(43255u, 30427u, 1u)), vec3<u32>(5859u, global1.c.d.x << (1u % 32u), 27128u))), _wgslsmith_mod_i32(arg_1.x, -arg_1.x) > firstTrailingBit(~_wgslsmith_div_i32(2147483647i, arg_1.x)));
    return -_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(~arg_1.xx, arg_1.xz), vec2<i32>(-arg_0, -arg_0)) >> (~1u % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_sub_vec3_i32(vec3<i32>(reverseBits(-58383i), _wgslsmith_mod_i32(~(i32(-1i) * -2147483647i), 1i), _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(2147483647i, 67053i, -26202i), vec3<i32>(-1i, -1i, -1i)), max(vec3<i32>(-2147483647i, -11335i, -1i), vec3<i32>(-1i, 2147483647i, 30485i)), countOneBits(vec3<i32>(-54995i, 2818i, 20446i))), vec3<i32>(~0i, _wgslsmith_mult_i32(1787i, -35564i), func_1(0i, vec4<i32>(2147483647i, 0i, -25508i, -11599i), u_input.a.x, global1.a.xzw)))), vec3<i32>(-1i) * -vec3<i32>(_wgslsmith_mult_i32(-11706i, -23064i), _wgslsmith_mod_i32(1i, -1i), _wgslsmith_mod_i32(-41030i, 41117i)));
    let var_1 = any(global1.a);
    global1 = Struct_2(select(!select(!global1.a, select(global1.a, vec4<bool>(false, false, true, var_1), false), !vec4<bool>(false, true, global1.e, false)), global1.a, !vec4<bool>(u_input.a.x <= u_input.a.x, var_0.x < var_0.x, 672f != global0.x, global1.e)), vec2<bool>(any(vec2<bool>(func_3(Struct_1(false, u_input.a.x, vec2<f32>(global1.c.c.x, 125f), vec3<u32>(0u, 7619u, 4294967295u)), 2147483647i), !var_1)), true), Struct_1(!select(any(vec3<bool>(var_1, true, var_1)), global1.a.x, -1089f <= global1.d.c.x), global1.c.b, _wgslsmith_f_op_vec2_f32(global0.zz * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-814f, global1.c.c.x), global0.yx)))), vec3<u32>(4572u, 6163u | global1.c.b, ~select(1u, 32875u, global1.c.a))), global1.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.d.c.x * global0.x))) <= 770f);
    let var_2 = Struct_5(true, ~vec4<u32>(u_input.a.x, u_input.a.x, ~u_input.a.x, u_input.a.x), Struct_4(var_0.x));
    global2 = array<vec4<f32>, 25>();
    let var_3 = Struct_5(!all(global1.a), select(vec4<u32>(u_input.a.x, ~global1.d.d.x, abs(global1.c.d.x ^ u_input.a.x), ~(~var_2.b.x)), ~(~vec4<u32>(global1.c.d.x, global1.d.d.x, 0u, 58827u)), false), Struct_4(-2147483647i));
    global2 = array<vec4<f32>, 25>();
    let var_4 = vec4<u32>(u_input.a.x, _wgslsmith_dot_vec4_u32(~_wgslsmith_add_vec4_u32(var_2.b, var_2.b) ^ (var_3.b | vec4<u32>(1u, 43846u, global1.d.d.x, 0u)), ~vec4<u32>(var_3.b.x, ~1u, var_3.b.x, 1u)), ~0u, global1.c.b);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_add_u32(32081u, var_4.x), var_4.yx, _wgslsmith_dot_vec3_i32(var_0 ^ (var_0 >> (vec3<u32>(var_4.x, var_2.b.x, 4294967295u) % vec3<u32>(32u))), var_0) ^ (var_3.c.a | _wgslsmith_mod_i32(-21266i, -2147483647i)), _wgslsmith_add_u32(firstLeadingBit(_wgslsmith_sub_u32(_wgslsmith_mult_u32(1u, var_4.x), abs(4294967295u))), _wgslsmith_dot_vec4_u32(vec4<u32>(52753u, 23609u, 1u, 92023u), ~var_3.b) << (firstTrailingBit(global1.c.d.x) % 32u)), global1.c.c.x);
}

