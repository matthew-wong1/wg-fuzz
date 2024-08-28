struct Struct_1 {
    a: vec3<i32>,
    b: u32,
    c: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec2<i32>,
    c: Struct_2,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 10>;

var<private> global1: vec3<i32>;

var<private> global2: vec3<bool> = vec3<bool>(true, true, false);

var<private> global3: array<vec2<i32>, 10> = array<vec2<i32>, 10>(vec2<i32>(1i, 69329i), vec2<i32>(-1i, -996i), vec2<i32>(1i, -10113i), vec2<i32>(-1i, -35026i), vec2<i32>(-1i, 0i), vec2<i32>(28393i, 0i), vec2<i32>(-53175i, 2147483647i), vec2<i32>(2147483647i, -18504i), vec2<i32>(-1i, -43737i), vec2<i32>(-1i, 54666i));

var<private> global4: array<vec2<u32>, 24>;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
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

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec3<bool>, arg_1: u32) -> vec4<bool> {
    let var_0 = 1u;
    var var_1 = Struct_2(Struct_1(-vec3<i32>(_wgslsmith_clamp_i32(60872i, global1.x, -22389i), u_input.a, 0i), ~12919u, select(vec4<u32>(arg_1, select(var_0, global0[_wgslsmith_index_u32(arg_1, 10u)], arg_0.x), 1u, ~global0[_wgslsmith_index_u32(arg_1, 10u)]), vec4<u32>(~4294967295u, var_0, 8055u, ~37978u), !select(vec4<bool>(global2.x, false, true, true), vec4<bool>(arg_0.x, global2.x, false, true), global2.x))));
    var var_2 = _wgslsmith_mod_u32(~_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(~var_1.a.c.ywy, vec3<u32>(arg_1, var_0, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_1.a.b, 10u)], 10u)])), ~select(var_1.a.c.wxw, vec3<u32>(4294967295u, 10964u, 4294967295u), true)), ~arg_1);
    var var_3 = Struct_2(var_1.a);
    var var_4 = var_3.a.c;
    return !(!(!(!select(vec4<bool>(arg_0.x, global2.x, true, global2.x), vec4<bool>(arg_0.x, global2.x, true, arg_0.x), global2.x))));
}

fn func_2(arg_0: vec4<bool>, arg_1: u32, arg_2: f32, arg_3: vec4<u32>) -> Struct_1 {
    var var_0 = global1.x;
    let var_1 = Struct_1(reverseBits(~vec3<i32>(global1.x, 0i, -44532i)), _wgslsmith_clamp_u32(~arg_3.x << (_wgslsmith_dot_vec4_u32(vec4<u32>(5900u, arg_1, 4294967295u, arg_1), _wgslsmith_clamp_vec4_u32(arg_3, arg_3, arg_3)) % 32u), _wgslsmith_sub_u32(_wgslsmith_add_u32(~arg_1, ~30284u), 11066u), _wgslsmith_clamp_u32(firstLeadingBit(select(global0[_wgslsmith_index_u32(1u, 10u)], 4294967295u, global2.x)), arg_3.x, arg_3.x)), vec4<u32>(0u, 35474u, 31379u << (global0[_wgslsmith_index_u32(arg_3.x, 10u)] % 32u), _wgslsmith_div_u32(4294967295u, arg_1)));
    let var_2 = select(vec4<bool>(false, false, false, arg_0.x), select(vec4<bool>(arg_0.x && false, all(select(vec2<bool>(global2.x, true), arg_0.xw, false)), true, !arg_0.x), select(arg_0, select(vec4<bool>(arg_0.x, false, false, true), !arg_0, func_3(arg_0.wyw, 1u)), true != !arg_0.x), all(global2.xz)), !arg_0);
    var_0 = _wgslsmith_mod_i32(-(-countOneBits(global1.x) & ~(-2147483647i)), ~(~(~(var_1.a.x | var_1.a.x))));
    global4 = array<vec2<u32>, 24>();
    return Struct_1(-max(-abs(var_1.a), var_1.a << (_wgslsmith_clamp_vec3_u32(vec3<u32>(arg_3.x, 4294967295u, arg_1), arg_3.xxy, var_1.c.xzz) % vec3<u32>(32u))), (~_wgslsmith_sub_u32(arg_1, global0[_wgslsmith_index_u32(arg_3.x, 10u)]) | 82794u) << (firstTrailingBit(4294967295u) % 32u), max(~((vec4<u32>(1u, 1u, 10194u, arg_1) << (vec4<u32>(global0[_wgslsmith_index_u32(arg_1, 10u)], global0[_wgslsmith_index_u32(0u, 10u)], arg_3.x, 16489u) % vec4<u32>(32u))) | ~var_1.c), ~_wgslsmith_div_vec4_u32(vec4<u32>(arg_3.x, global0[_wgslsmith_index_u32(0u, 10u)], var_1.c.x, global0[_wgslsmith_index_u32(arg_1, 10u)]), reverseBits(arg_3))));
}

fn func_1(arg_0: i32, arg_1: vec3<u32>, arg_2: Struct_2) -> Struct_2 {
    let var_0 = global2.x;
    let var_1 = vec3<i32>(select(arg_0, _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(arg_2.a.a.yx, vec2<i32>(arg_2.a.a.x, -30251i)), global3[_wgslsmith_index_u32(4294967295u, 10u)]) & ~min(45762i, global1.x), any(select(!vec3<bool>(false, false, global2.x), select(vec3<bool>(false, global2.x, true), vec3<bool>(global2.x, global2.x, true), vec3<bool>(false, global2.x, global2.x)), true))), arg_0, 1i);
    let var_2 = 66190i;
    let var_3 = arg_2;
    var var_4 = 17036u;
    return Struct_2(func_2(vec4<bool>(true, true || (global2.x || true), !all(vec4<bool>(global2.x, global2.x, false, global2.x)), !global2.x), ~(~22029u), _wgslsmith_f_op_f32(f32(-1f) * -624f), ~arg_2.a.c));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1) -> i32 {
    global3 = array<vec2<i32>, 10>();
    global0 = array<u32, 10>();
    var var_0 = global2.zy;
    let var_1 = func_1(_wgslsmith_mult_i32(2147483647i, _wgslsmith_mod_i32(_wgslsmith_mult_i32(arg_1.a.x, -43251i), -43798i)), abs(vec3<u32>(func_1(func_2(vec4<bool>(true, true, var_0.x, var_0.x), global0[_wgslsmith_index_u32(59313u, 10u)], 1510f, arg_0.a.c).a.x, _wgslsmith_mod_vec3_u32(arg_0.a.c.zxz, vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 10u)], 10u)], 4294967295u, 51208u)), func_1(13045i, vec3<u32>(arg_0.a.c.x, 0u, 4294967295u), Struct_2(Struct_1(arg_0.a.a, 82366u, vec4<u32>(arg_0.a.c.x, 27431u, global0[_wgslsmith_index_u32(arg_0.a.b, 10u)], global0[_wgslsmith_index_u32(arg_1.b, 10u)]))))).a.b, arg_0.a.c.x, ~_wgslsmith_dot_vec3_u32(arg_0.a.c.wxz, arg_1.c.wwz))), Struct_2(arg_0.a));
    global1 = vec3<i32>(-33517i ^ global1.x, 49367i, ~var_1.a.a.x);
    return -_wgslsmith_dot_vec3_i32(max(vec3<i32>(_wgslsmith_mult_i32(arg_1.a.x, 10358i), -2147483647i, arg_0.a.a.x | -6508i), vec3<i32>(-5265i, 1i, global1.x)), _wgslsmith_add_vec3_i32(abs(-vec3<i32>(global1.x, var_1.a.a.x, -50978i)), arg_1.a));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec2<i32>, 10>();
    let var_0 = Struct_3(select(!vec4<bool>(true, false, true, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 10u)], 10u)] != 26607u), !(!(!vec4<bool>(false, true, global2.x, global2.x))), true), vec2<i32>(global1.x, func_4(func_1(1i, vec3<u32>(1u, 30658u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 10u)], 10u)], 10u)], 10u)]) & vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(66003u, 10u)], 10u)], 10u)], 80474u, 50233u), Struct_2(Struct_1(vec3<i32>(u_input.a, -2147483647i, 21641i), global0[_wgslsmith_index_u32(4294967295u, 10u)], vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 10u)], 10u)], 10u)], 10u)], 10u)], 10u)], 4294967295u, global0[_wgslsmith_index_u32(17438u, 10u)], global0[_wgslsmith_index_u32(24149u, 10u)])))), Struct_1(firstTrailingBit(vec3<i32>(u_input.a, u_input.a, 2147483647i)), ~4294967295u, _wgslsmith_div_vec4_u32(vec4<u32>(80546u, 25125u, global0[_wgslsmith_index_u32(10038u, 10u)], 45119u), vec4<u32>(global0[_wgslsmith_index_u32(1u, 10u)], 22701u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(44001u, 10u)], 10u)], 10u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(46904u, 10u)], 10u)]))))), Struct_2(Struct_1(func_2(vec4<bool>(true, true, true, global2.x), ~35492u, 832f, vec4<u32>(1898u, 1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(34165u, 10u)], 10u)], global0[_wgslsmith_index_u32(1u, 10u)])).a, max(56813u, _wgslsmith_dot_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(30234u, 10u)], 10u)], 0u, 16473u), vec3<u32>(1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(103416u, 10u)], 10u)], 10u)], 10u)], 11255u))), vec4<u32>(77515u, ~global0[_wgslsmith_index_u32(8236u, 10u)], ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(3507u, 10u)], 10u)], 10u)], global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(33324u, 10u)], 10u)], 10u)]))), ~vec2<u32>(59421u, 0u & (global0[_wgslsmith_index_u32(27637u, 10u)] | global0[_wgslsmith_index_u32(0u, 10u)])));
    var var_1 = _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(min(-1208f, 1485f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(401f)))), -1064f, global2.x)))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_1.x, var_1.x)));
    let var_3 = var_0.c;
    let x = u_input.a;
    s_output = StorageBuffer(~(~var_0.d), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_2, var_1.x, 1317f, var_2), vec4<f32>(var_1.x, 2108f, 1096f, -247f), false)))))));
}

