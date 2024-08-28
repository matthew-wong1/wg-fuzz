struct Struct_1 {
    a: f32,
    b: bool,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec2<i32>,
    c: i32,
    d: bool,
}

struct Struct_3 {
    a: vec2<f32>,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec2<i32>,
    d: vec4<i32>,
    e: vec2<u32>,
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

var<private> global0: u32;

var<private> global1: vec2<f32>;

var<private> global2: array<Struct_2, 18> = array<Struct_2, 18>(Struct_2(vec3<f32>(177f, -1340f, -166f), vec2<i32>(0i, -356i), 0i, false), Struct_2(vec3<f32>(-824f, 2195f, -1658f), vec2<i32>(2147483647i, 2147483647i), i32(-2147483648), true), Struct_2(vec3<f32>(839f, 1317f, 521f), vec2<i32>(-4825i, -3152i), 0i, false), Struct_2(vec3<f32>(153f, 528f, -581f), vec2<i32>(30890i, 1i), -22455i, false), Struct_2(vec3<f32>(-1181f, 2116f, 313f), vec2<i32>(i32(-2147483648), -1i), i32(-2147483648), true), Struct_2(vec3<f32>(425f, 1663f, 1017f), vec2<i32>(1i, 26944i), 21537i, true), Struct_2(vec3<f32>(-889f, 1000f, -639f), vec2<i32>(17813i, i32(-2147483648)), 0i, false), Struct_2(vec3<f32>(-243f, -820f, 359f), vec2<i32>(2147483647i, -13916i), 57797i, true), Struct_2(vec3<f32>(-325f, 312f, -1000f), vec2<i32>(732i, -27897i), -18907i, false), Struct_2(vec3<f32>(-1557f, -866f, -2460f), vec2<i32>(-22309i, 1i), i32(-2147483648), false), Struct_2(vec3<f32>(-198f, 1241f, -1885f), vec2<i32>(50790i, -1i), 58013i, false), Struct_2(vec3<f32>(-338f, -261f, -727f), vec2<i32>(-42316i, -23969i), -12887i, false), Struct_2(vec3<f32>(1000f, 718f, 1158f), vec2<i32>(80070i, 0i), i32(-2147483648), false), Struct_2(vec3<f32>(560f, 1088f, -878f), vec2<i32>(31682i, -22064i), i32(-2147483648), false), Struct_2(vec3<f32>(530f, 230f, 3191f), vec2<i32>(0i, 8917i), 2147483647i, true), Struct_2(vec3<f32>(-164f, -314f, 211f), vec2<i32>(16110i, 1i), 0i, false), Struct_2(vec3<f32>(-1206f, 1236f, 1181f), vec2<i32>(-18749i, 39968i), 13102i, false), Struct_2(vec3<f32>(598f, -374f, -191f), vec2<i32>(-27216i, -16803i), i32(-2147483648), false));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: bool, arg_1: vec2<u32>, arg_2: u32) -> bool {
    var var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, 1f))), ~arg_2);
    global1 = var_0.a;
    return any(select(!select(select(vec3<bool>(false, arg_0, arg_0), vec3<bool>(arg_0, false, false), vec3<bool>(false, true, arg_0)), vec3<bool>(arg_0, arg_0, true), !vec3<bool>(arg_0, true, arg_0)), vec3<bool>(true, !any(vec3<bool>(arg_0, arg_0, true)), false), !select(vec3<bool>(arg_0, arg_0, true), !vec3<bool>(false, arg_0, arg_0), vec3<bool>(arg_0, arg_0, arg_0))));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<bool>) -> bool {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(259f - -1000f), global1.x);
    let var_1 = min(40239u, u_input.b.x);
    var var_2 = u_input.b.x;
    var_2 = ~(~u_input.a);
    let var_3 = arg_0;
    return any(vec4<bool>(var_3.b, true, u_input.c.x >= ~4337i, true));
}

fn func_2(arg_0: bool, arg_1: vec3<bool>, arg_2: Struct_1, arg_3: Struct_1) -> bool {
    let var_0 = -(u_input.d.x << (u_input.a % 32u));
    var var_1 = _wgslsmith_mult_i32(abs(1400i << (min(31770u << (u_input.e.x % 32u), _wgslsmith_add_u32(17018u, u_input.b.x)) % 32u)), reverseBits(_wgslsmith_mult_i32(-34174i, u_input.c.x)));
    return func_4(arg_3, vec4<bool>(func_3(arg_2.b, vec2<u32>(~u_input.e.x, 95340u), u_input.e.x), select(~(-43028i), 17617i, false) <= var_0, arg_0, false));
}

fn func_1(arg_0: f32) -> Struct_1 {
    var var_0 = !(false || (_wgslsmith_div_f32(_wgslsmith_div_f32(792f, global1.x), -326f) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1363f) - global1.x)));
    global0 = 40767u;
    global2 = array<Struct_2, 18>();
    var var_1 = !vec4<bool>(!(_wgslsmith_f_op_f32(min(global1.x, arg_0)) != _wgslsmith_f_op_f32(-106f - arg_0)), true, func_2(false, !select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false)), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1083f), true), Struct_1(-580f, true)), func_2(all(vec3<bool>(false, true, true)) && true, vec3<bool>(func_2(false, vec3<bool>(true, true, true), Struct_1(global1.x, false), Struct_1(767f, false)), func_2(false, vec3<bool>(true, false, true), Struct_1(arg_0, false), Struct_1(-345f, true)), true), Struct_1(_wgslsmith_f_op_f32(select(-224f, arg_0, true)), func_4(Struct_1(global1.x, false), vec4<bool>(false, false, false, true))), Struct_1(_wgslsmith_f_op_f32(-global1.x), false)));
    let var_2 = Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_div_f32(1023f, 971f), _wgslsmith_f_op_f32(-859f * 3052f))))), _wgslsmith_clamp_u32(abs(4294967295u), (u_input.b.x >> (32380u % 32u)) << (~_wgslsmith_mod_u32(4294967295u, 50055u) % 32u), ~_wgslsmith_mod_u32(1u, ~42376u)));
    return Struct_1(2572f, true);
}

fn func_5(arg_0: Struct_1, arg_1: i32, arg_2: vec4<u32>, arg_3: Struct_3) -> vec2<bool> {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_0.a))) - _wgslsmith_div_f32(-522f, -1225f)), false);
    var var_1 = arg_1 ^ 68563i;
    global0 = reverseBits(~42959u);
    var var_2 = arg_0;
    global2 = array<Struct_2, 18>();
    return vec2<bool>(var_0.b, var_0.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(func_1(global1.x), -50661i, _wgslsmith_mult_vec4_u32(vec4<u32>(firstLeadingBit(u_input.a ^ u_input.b.x), ~33033u, 50016u, firstTrailingBit(1u)), ~firstLeadingBit(vec4<u32>(u_input.a, 4294967295u, u_input.a, 27360u) & vec4<u32>(u_input.e.x, 61871u, 66531u, 31724u))), Struct_3(vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -563f), _wgslsmith_f_op_f32(min(global1.x, global1.x)), select(false, false, true))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(max(-1320f, -2128f))))), u_input.a));
    var var_1 = ~u_input.a;
    var var_2 = true;
    var_2 = select(var_0.x, true, true || !var_0.x);
    let var_3 = true;
    let var_4 = ~vec3<u32>(_wgslsmith_mult_u32(73471u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.e.x, u_input.e.x, u_input.a), vec4<u32>(u_input.b.x, u_input.a, 17271u, u_input.a))), u_input.e.x, 1u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec3_u32(u_input.b, _wgslsmith_sub_vec3_u32(~reverseBits(vec3<u32>(1u, u_input.e.x, 1575u)), vec3<u32>(u_input.b.x, abs(0u), 10534u >> (u_input.b.x % 32u))), max((var_4 >> (u_input.b % vec3<u32>(32u))) >> ((u_input.b << (vec3<u32>(u_input.b.x, 1u, 27229u) % vec3<u32>(32u))) % vec3<u32>(32u)), vec3<u32>(u_input.b.x, var_4.x, 2332u) >> (~vec3<u32>(10346u, 4294967295u, u_input.b.x) % vec3<u32>(32u)))));
}

