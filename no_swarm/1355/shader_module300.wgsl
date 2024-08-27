struct Struct_1 {
    a: vec2<u32>,
    b: bool,
    c: vec2<u32>,
    d: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<i32, 24> = array<i32, 24>(0i, -42556i, 30152i, -32348i, -10753i, i32(-2147483648), -13019i, 0i, -12839i, i32(-2147483648), 2147483647i, 2147483647i, -6854i, 37587i, -36991i, 2147483647i, -3244i, -1825i, i32(-2147483648), 0i, -1i, i32(-2147483648), -1i, -33326i);

var<private> global2: vec3<u32> = vec3<u32>(1u, 38488u, 4294967295u);

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2(arg_0: bool) -> vec3<u32> {
    return firstTrailingBit(_wgslsmith_add_vec3_u32(~(~vec3<u32>(u_input.a.x, u_input.a.x, 36583u) ^ ~vec3<u32>(4294967295u, u_input.a.x, u_input.a.x)), u_input.a));
}

fn func_3(arg_0: f32, arg_1: f32, arg_2: f32) -> u32 {
    global0 = true == !all(select(select(vec2<bool>(true, true), vec2<bool>(false, false), false), select(vec2<bool>(true, false), vec2<bool>(true, false), true), select(vec2<bool>(false, true), vec2<bool>(false, false), true)));
    var var_0 = _wgslsmith_sub_vec2_u32(global2.yy >> (vec2<u32>(4294967295u << (firstLeadingBit(4294967295u) % 32u), _wgslsmith_dot_vec3_u32(min(u_input.a, u_input.a), vec3<u32>(u_input.a.x, 4294967295u, 17862u))) % vec2<u32>(32u)), global2.yz & ~vec2<u32>(~0u, _wgslsmith_mult_u32(global2.x, 0u)));
    let var_1 = _wgslsmith_mult_vec4_u32(vec4<u32>(~_wgslsmith_add_u32(22948u, global2.x), _wgslsmith_div_u32(35257u, var_0.x), u_input.a.x >> ((0u >> (0u % 32u)) % 32u), _wgslsmith_mult_u32(u_input.a.x & 133378u, var_0.x)) & abs(abs(~vec4<u32>(global2.x, var_0.x, global2.x, 4294967295u))), ~vec4<u32>(abs(u_input.a.x | 0u), (u_input.a.x >> (46742u % 32u)) ^ select(4294967295u, 27749u, true), 46785u, global2.x));
    global2 = vec3<u32>(abs(_wgslsmith_add_u32(firstTrailingBit(61872u), var_1.x >> (64506u % 32u))), _wgslsmith_mod_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, 48007u, global2.x, 0u), var_1), global2.x), 4294967295u) | vec3<u32>(var_1.x << (0u % 32u), ~firstLeadingBit(1u << (1u % 32u)), _wgslsmith_dot_vec3_u32(u_input.a, _wgslsmith_mult_vec3_u32(var_1.xww & var_1.xxx, vec3<u32>(22800u, global2.x, u_input.a.x) >> (vec3<u32>(1u, 4294967295u, u_input.a.x) % vec3<u32>(32u)))));
    let var_2 = Struct_1(~(~countOneBits(vec2<u32>(0u, 4294967295u) & global2.yx)), all(vec3<bool>(arg_0 != _wgslsmith_f_op_f32(round(arg_1)), !all(vec3<bool>(false, false, true)), any(select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true), true)))), vec2<u32>(~var_1.x, global2.x), min(select(vec2<i32>(~(-30183i), global1[_wgslsmith_index_u32(u_input.a.x, 24u)]), -_wgslsmith_clamp_vec2_i32(vec2<i32>(1i, -2147483647i), vec2<i32>(u_input.d, u_input.b.x), vec2<i32>(-2147483647i, global1[_wgslsmith_index_u32(37078u, 24u)])), !select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true))), ~_wgslsmith_sub_vec2_i32(min(vec2<i32>(u_input.c, 16364i), vec2<i32>(24139i, global1[_wgslsmith_index_u32(var_1.x, 24u)])), u_input.b)));
    return select(select(min(countOneBits(~var_1.x), 1u), firstLeadingBit(~firstLeadingBit(89033u)), var_2.b), global2.x << ((~27327u ^ ~(~var_1.x)) % 32u), true);
}

fn func_1() -> bool {
    global2 = u_input.a;
    var var_0 = Struct_1(vec2<u32>(u_input.a.x, _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(global2.x, 93672u, global2.x), vec3<u32>(u_input.a.x, 0u, u_input.a.x)), func_2(false)), ~55196u)), global2.x != _wgslsmith_mult_u32(_wgslsmith_sub_u32(func_3(-748f, 182f, 886f), func_3(1000f, 1106f, -1778f)), _wgslsmith_sub_u32(_wgslsmith_sub_u32(14763u, u_input.a.x), global2.x)), vec2<u32>(global2.x, global2.x), ~u_input.b);
    let var_1 = vec3<i32>(var_0.d.x, -30013i, 0i);
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(640f, 475f, -2141f, 252f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1497f, 646f, -1006f, 669f))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(988f + 1192f), 1037f, _wgslsmith_f_op_f32(min(-2156f, -198f)), _wgslsmith_div_f32(1846f, -263f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(309f, 312f, -269f, 165f)))))));
    let var_3 = reverseBits(var_1);
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = ~(max(_wgslsmith_add_vec3_u32(u_input.a, u_input.a) ^ u_input.a, vec3<u32>(firstTrailingBit(global2.x), ~82874u, global2.x << (1u % 32u))) << (vec3<u32>(1u, ~(u_input.a.x | global2.x), 95192u) % vec3<u32>(32u)));
    let var_0 = func_1();
    let var_1 = Struct_3(true);
    let var_2 = var_1;
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(966f, -365f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-2939f, 595f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(292f, -490f))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(floor(235f)), 1429f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -1430f))), !select(vec2<bool>(var_0, false), vec2<bool>(var_2.a, var_2.a), true)))));
    let var_4 = u_input.a.x;
    var var_5 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_3.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(139f - 562f))));
    let var_6 = vec4<u32>(u_input.a.x, reverseBits(~1u), ~var_4, abs(~var_4) << (abs(firstTrailingBit(1u)) % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(var_6, vec3<u32>(1u, 27759u, _wgslsmith_mod_u32(~0u, _wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(u_input.a.x, 48724u)), global2.yz))), _wgslsmith_clamp_i32(_wgslsmith_sub_i32(0i, _wgslsmith_div_i32(global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(var_6.x, u_input.a.x, u_input.a.x), 24u)], 23255i)), -1i | u_input.c, -(~(~global1[_wgslsmith_index_u32(var_4, 24u)]))), 47935u);
}

