struct Struct_1 {
    a: vec3<bool>,
    b: vec3<i32>,
    c: bool,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: u32,
    b: bool,
    c: Struct_1,
    d: Struct_2,
    e: Struct_1,
}

struct Struct_4 {
    a: vec4<bool>,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec4<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: array<vec4<i32>, 26>;

var<private> global2: array<Struct_1, 30> = array<Struct_1, 30>(Struct_1(vec3<bool>(true, false, false), vec3<i32>(-1i, -311i, 15015i), true), Struct_1(vec3<bool>(false, false, false), vec3<i32>(i32(-2147483648), 73921i, 2147483647i), false), Struct_1(vec3<bool>(false, true, true), vec3<i32>(1i, i32(-2147483648), 2147483647i), true), Struct_1(vec3<bool>(false, true, true), vec3<i32>(-10215i, 1i, -1i), false), Struct_1(vec3<bool>(false, false, false), vec3<i32>(49359i, i32(-2147483648), i32(-2147483648)), true), Struct_1(vec3<bool>(false, true, false), vec3<i32>(2147483647i, 1i, -44881i), true), Struct_1(vec3<bool>(false, false, true), vec3<i32>(48563i, i32(-2147483648), 2147483647i), true), Struct_1(vec3<bool>(true, true, false), vec3<i32>(13928i, -1i, -19682i), false), Struct_1(vec3<bool>(true, false, false), vec3<i32>(65507i, 2147483647i, -43542i), false), Struct_1(vec3<bool>(true, false, false), vec3<i32>(1i, -84336i, 1i), false), Struct_1(vec3<bool>(false, true, false), vec3<i32>(i32(-2147483648), 43494i, 50562i), false), Struct_1(vec3<bool>(false, true, true), vec3<i32>(-15347i, 22426i, -20890i), false), Struct_1(vec3<bool>(true, true, true), vec3<i32>(45815i, -173i, -1942i), false), Struct_1(vec3<bool>(false, false, false), vec3<i32>(i32(-2147483648), 2396i, 23594i), false), Struct_1(vec3<bool>(false, true, true), vec3<i32>(-9106i, 58677i, -19338i), true), Struct_1(vec3<bool>(false, false, false), vec3<i32>(7564i, -33012i, 1i), true), Struct_1(vec3<bool>(false, true, false), vec3<i32>(19539i, 0i, 1i), true), Struct_1(vec3<bool>(false, true, false), vec3<i32>(i32(-2147483648), 21882i, 90335i), true), Struct_1(vec3<bool>(true, false, false), vec3<i32>(10600i, -46868i, -1926i), false), Struct_1(vec3<bool>(true, true, true), vec3<i32>(2147483647i, 1i, 2147483647i), true), Struct_1(vec3<bool>(true, true, false), vec3<i32>(-41049i, 0i, 2147483647i), true), Struct_1(vec3<bool>(true, false, true), vec3<i32>(19459i, 2147483647i, 1i), true), Struct_1(vec3<bool>(true, true, true), vec3<i32>(13259i, -1i, i32(-2147483648)), false), Struct_1(vec3<bool>(false, true, false), vec3<i32>(i32(-2147483648), -1169i, 1i), false), Struct_1(vec3<bool>(false, true, true), vec3<i32>(30782i, -79751i, 2147483647i), true), Struct_1(vec3<bool>(false, true, true), vec3<i32>(2147483647i, 0i, -8885i), false), Struct_1(vec3<bool>(false, true, false), vec3<i32>(-30189i, 2147483647i, 32953i), false), Struct_1(vec3<bool>(false, false, true), vec3<i32>(1i, 11429i, 2147483647i), true), Struct_1(vec3<bool>(false, false, false), vec3<i32>(2147483647i, 0i, i32(-2147483648)), true), Struct_1(vec3<bool>(false, true, false), vec3<i32>(44242i, 2147483647i, -1i), false));

var<private> global3: vec4<u32>;

var<private> global4: Struct_3 = Struct_3(19434u, false, Struct_1(vec3<bool>(false, true, false), vec3<i32>(-49827i, 36324i, 58204i), true), Struct_2(0i), Struct_1(vec3<bool>(true, false, true), vec3<i32>(50916i, -48598i, 2147483647i), false));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_3, arg_1: Struct_4, arg_2: Struct_1) -> vec3<bool> {
    return !select(select(!global4.c.a, select(global4.e.a, select(vec3<bool>(true, true, arg_1.b.a.x), global4.c.a, arg_0.e.a.x), true), !arg_0.c.a.x), select(vec3<bool>(arg_2.a.x, false, all(arg_1.c.a)), arg_1.a.yzw, arg_2.a), true);
}

fn func_2(arg_0: vec4<f32>) -> bool {
    var var_0 = u_input.b.x;
    let var_1 = Struct_3(63569u, global4.e.a.x, Struct_1(!vec3<bool>(global4.e.c, false, any(vec4<bool>(global4.e.c, true, true, global4.c.c))), ~vec3<i32>(~global4.d.a, _wgslsmith_dot_vec2_i32(global4.e.b.xx, global4.e.b.zy), -1i), !any(vec3<bool>(global4.e.c, global4.e.a.x, true)) & false), global4.d, Struct_1(select(select(global4.c.a, !vec3<bool>(global4.b, global4.e.c, global4.b), true), !vec3<bool>(false, global4.e.c, false), false), _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.d.x, -global4.c.b.x, global4.d.a), ~(-vec3<i32>(u_input.a, 68663i, 1i)), vec3<i32>(_wgslsmith_mod_i32(1i, 2147483647i), 0i, -1i)), any(!func_3(Struct_3(0u, false, Struct_1(global4.e.a, vec3<i32>(u_input.c.x, -1i, u_input.c.x), global4.e.a.x), global4.d, Struct_1(vec3<bool>(true, true, true), vec3<i32>(global4.e.b.x, u_input.d.x, 0i), false)), Struct_4(vec4<bool>(true, false, false, global4.c.a.x), Struct_1(vec3<bool>(global4.e.c, global4.c.c, global4.b), vec3<i32>(-1i, global4.c.b.x, u_input.d.x), global4.b), Struct_1(vec3<bool>(global4.c.a.x, false, true), vec3<i32>(u_input.a, 23451i, global4.e.b.x), false)), Struct_1(global4.c.a, global4.e.b, global4.b)))));
    var var_2 = var_1.c.a.x;
    var var_3 = 539f;
    global3 = vec4<u32>(~var_1.a, min(countOneBits(abs(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 11077u, var_1.a, global3.x), vec4<u32>(42302u, 106003u, var_1.a, global4.a)))), _wgslsmith_clamp_u32(~_wgslsmith_mod_u32(var_1.a, global3.x), u_input.b.x, global4.a)), ~(~(~_wgslsmith_mult_u32(8301u, u_input.b.x))), (((var_1.a & global4.a) >> (global3.x % 32u)) << (global4.a % 32u)) >> (~(firstLeadingBit(0u) | global4.a) % 32u));
    return _wgslsmith_dot_vec4_u32(vec4<u32>(global3.x, _wgslsmith_clamp_u32(abs(18344u), var_1.a, 23995u), ~u_input.b.x, 0u), vec4<u32>(global4.a, firstLeadingBit(var_1.a), ~var_1.a, _wgslsmith_clamp_u32(var_1.a << (4294967295u % 32u), abs(32220u), _wgslsmith_dot_vec4_u32(vec4<u32>(global3.x, var_1.a, u_input.b.x, 34770u), vec4<u32>(2327u, u_input.b.x, 1u, global3.x))))) < var_1.a;
}

fn func_1(arg_0: Struct_2, arg_1: vec3<u32>) -> vec4<bool> {
    let var_0 = Struct_4(vec4<bool>(!func_2(vec4<f32>(-274f, global0.x, global0.x, global0.x)) || func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(-345f, 1456f, 307f, global0.x) + vec4<f32>(global0.x, global0.x, global0.x, global0.x))), ~(~1u) == arg_1.x, false, global4.b), global4.c, Struct_1(select(vec3<bool>(all(vec3<bool>(true, false, global4.e.a.x)), any(vec3<bool>(true, global4.c.a.x, global4.e.c)), global4.e.c), global4.c.a, false), vec3<i32>(u_input.d.x, _wgslsmith_mult_i32(2147483647i, u_input.a & -1i), ~firstTrailingBit(0i)), any(!vec3<bool>(true, global4.b, true))));
    let var_1 = -_wgslsmith_div_vec2_i32(-reverseBits(vec2<i32>(-36054i, -25709i) << (arg_1.xy % vec2<u32>(32u))), vec2<i32>(-(-1i & global4.c.b.x), var_0.b.b.x));
    let var_2 = select(~vec4<u32>(countOneBits(u_input.b.x), 1u, arg_1.x, ~4294967295u), vec4<u32>(21532u, global4.a, max(arg_1.x, min(12493u, 25863u)), ~firstLeadingBit(u_input.b.x)), var_0.a.x) ^ ~(max(_wgslsmith_add_vec4_u32(vec4<u32>(47142u, 1u, 39248u, 1u), vec4<u32>(0u, 82002u, global3.x, 85299u)), vec4<u32>(global3.x, arg_1.x, 69088u, global4.a)) >> (abs(~vec4<u32>(41657u, global4.a, 4294967295u, 61991u)) % vec4<u32>(32u)));
    let var_3 = global4.c.b.x;
    var var_4 = Struct_3(16250u, all(select(func_3(Struct_3(4603u, false, Struct_1(var_0.c.a, u_input.c.ywz, true), global4.d, global4.c), Struct_4(var_0.a, global4.c, Struct_1(global4.c.a, vec3<i32>(var_0.b.b.x, -1308i, var_0.b.b.x), false)), var_0.c), vec3<bool>(all(vec3<bool>(true, global4.e.c, global4.e.c)), arg_1.x != global4.a, select(true, false, global4.b)), any(select(var_0.a, vec4<bool>(var_0.a.x, var_0.b.c, false, var_0.b.a.x), var_0.a.x)))), Struct_1(vec3<bool>(var_0.c.a.x && true, any(vec3<bool>(false, false, true)), func_3(Struct_3(var_2.x, var_0.c.c, Struct_1(global4.e.a, vec3<i32>(-2147483647i, var_0.c.b.x, var_1.x), var_0.a.x), Struct_2(0i), var_0.b), var_0, Struct_1(global4.c.a, var_0.c.b, true)).x), var_0.c.b, global4.e.c), Struct_2(-1i ^ (~var_0.b.b.x & _wgslsmith_mult_i32(-5574i, var_0.c.b.x))), Struct_1(var_0.c.a, _wgslsmith_add_vec3_i32(global4.c.b, _wgslsmith_mod_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(-25462i, -1i, -2147483647i), vec3<i32>(0i, var_0.b.b.x, 91667i)), select(var_0.c.b, var_0.b.b, false))), var_0.c.a.x));
    return var_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    global4 = Struct_3(~63917u, select(!all(func_1(global4.d, global3.wyy)), _wgslsmith_f_op_f32(select(global0.x, _wgslsmith_f_op_f32(f32(-1f) * -331f), all(global4.e.a))) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1612f - 2902f)), true), global2[_wgslsmith_index_u32(global4.a, 30u)], global4.d, Struct_1(select(!global4.c.a, select(global4.c.a, vec3<bool>(global4.e.c, true, global4.c.c), any(vec2<bool>(false, global4.e.c))), !select(global4.e.a, vec3<bool>(false, true, global4.e.c), vec3<bool>(global4.b, true, global4.e.c))), abs((u_input.d | u_input.c.xwx) ^ _wgslsmith_div_vec3_i32(vec3<i32>(global4.e.b.x, global4.d.a, -5572i), global4.c.b)), false));
    var var_0 = ~(~(~abs(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, global4.a, global3.x, global3.x), vec4<u32>(4294967295u, 0u, 22006u, 80764u)))));
    global2 = array<Struct_1, 30>();
    let var_1 = u_input.d.x;
    var var_2 = ~firstLeadingBit(vec4<u32>(0u | max(global3.x, 21931u), global3.x, reverseBits(global4.a), _wgslsmith_mod_u32(global4.a, global4.a) & abs(1u)));
    global3 = ~(~max(max(vec4<u32>(1u, 18375u, 4294967295u, u_input.b.x), vec4<u32>(40889u, global4.a, u_input.b.x, 60115u)), vec4<u32>(1u, global4.a, 15139u, 0u))) | ~vec4<u32>(1u, ~var_2.x, _wgslsmith_mult_u32(1u, 29942u), global4.a);
    let x = u_input.a;
    s_output = StorageBuffer(global0.x);
}

