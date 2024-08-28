struct Struct_1 {
    a: vec2<i32>,
    b: i32,
    c: vec3<bool>,
    d: vec3<f32>,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 30> = array<vec2<i32>, 30>(vec2<i32>(1i, -6010i), vec2<i32>(-1i, -13080i), vec2<i32>(0i, 8972i), vec2<i32>(4138i, 32341i), vec2<i32>(i32(-2147483648), -322i), vec2<i32>(-34198i, i32(-2147483648)), vec2<i32>(1i, i32(-2147483648)), vec2<i32>(1i, 1i), vec2<i32>(i32(-2147483648), 21315i), vec2<i32>(0i, -1i), vec2<i32>(i32(-2147483648), -33212i), vec2<i32>(-24109i, 2147483647i), vec2<i32>(0i, 1909i), vec2<i32>(-1i, -1i), vec2<i32>(2147483647i, -20674i), vec2<i32>(1i, -52227i), vec2<i32>(1i, i32(-2147483648)), vec2<i32>(i32(-2147483648), 0i), vec2<i32>(2147483647i, 0i), vec2<i32>(-1i, -27136i), vec2<i32>(-29051i, 19414i), vec2<i32>(2147483647i, 51297i), vec2<i32>(21932i, -1i), vec2<i32>(-22837i, i32(-2147483648)), vec2<i32>(i32(-2147483648), 2147483647i), vec2<i32>(-41790i, 0i), vec2<i32>(0i, 0i), vec2<i32>(i32(-2147483648), -28660i), vec2<i32>(1i, i32(-2147483648)), vec2<i32>(2147483647i, 52431i));

var<private> global1: Struct_1;

var<private> global2: array<vec3<f32>, 26> = array<vec3<f32>, 26>(vec3<f32>(-966f, 434f, 836f), vec3<f32>(857f, 1284f, -1692f), vec3<f32>(272f, -1705f, 903f), vec3<f32>(-971f, 858f, 1802f), vec3<f32>(-865f, -249f, 195f), vec3<f32>(1548f, -176f, 271f), vec3<f32>(1000f, -385f, -304f), vec3<f32>(768f, -2096f, 1228f), vec3<f32>(-465f, 358f, 211f), vec3<f32>(-260f, -367f, 712f), vec3<f32>(1830f, 934f, -166f), vec3<f32>(-984f, -1148f, 378f), vec3<f32>(169f, 1000f, -568f), vec3<f32>(-106f, 615f, 1087f), vec3<f32>(274f, 843f, -216f), vec3<f32>(-2103f, 2366f, -1514f), vec3<f32>(481f, 167f, -202f), vec3<f32>(-230f, -1372f, 584f), vec3<f32>(362f, 1397f, 988f), vec3<f32>(-360f, -353f, 626f), vec3<f32>(-1313f, 1115f, 168f), vec3<f32>(806f, -216f, 703f), vec3<f32>(696f, 708f, -329f), vec3<f32>(1146f, 889f, -2039f), vec3<f32>(480f, -146f, -1000f), vec3<f32>(899f, -1532f, 142f));

var<private> global3: Struct_1;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> i32 {
    let var_0 = _wgslsmith_div_f32(global3.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-293f, global3.d.x), _wgslsmith_f_op_f32(f32(-1f) * -942f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(192f)) - 1f)))));
    global3 = Struct_1(firstLeadingBit(vec2<i32>(1i, select(-8793i, global3.b, global1.e.x)) << (vec2<u32>(1u, 1u) % vec2<u32>(32u))), 37576i, global1.c, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -834f)), _wgslsmith_f_op_f32(var_0 * _wgslsmith_f_op_f32(select(-231f, -244f, global3.c.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-797f)) * 1644f)), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1533f, 1478f, var_0) * vec3<f32>(global3.d.x, 624f, -832f)), global1.d))), vec3<bool>((u_input.b.x << (u_input.b.x % 32u)) >= reverseBits(u_input.b.x), any(vec3<bool>(global1.e.x, true, false)) || true, global3.e.x))), !select(vec4<bool>(all(vec4<bool>(global1.c.x, false, global3.c.x, global3.e.x)), false, true, var_0 >= var_0), select(select(vec4<bool>(true, global1.c.x, global1.c.x, true), vec4<bool>(false, true, global1.c.x, false), global3.e), global3.e, select(vec4<bool>(global3.c.x, global1.c.x, true, true), vec4<bool>(true, global1.c.x, global3.e.x, false), vec4<bool>(global1.c.x, global1.c.x, global1.c.x, global3.c.x))), global3.e));
    global0 = array<vec2<i32>, 30>();
    let var_1 = global1.c.yy;
    let var_2 = Struct_1(vec2<i32>(global1.a.x >> ((1u | select(1155u, 61930u, global1.e.x)) % 32u), -2147483647i), global3.a.x, select(global1.c, vec3<bool>(4294967295u < u_input.b.x, !all(global3.e.xx), any(vec2<bool>(global1.e.x, global3.e.x))), ~u_input.b.x < min(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, u_input.b.x), vec2<u32>(u_input.b.x, 60694u)), ~u_input.b.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(max(global3.d, vec3<f32>(var_0, global1.d.x, global3.d.x)))))))), select(global1.e, select(!vec4<bool>(true, true, var_1.x, false), global1.e, select(!vec4<bool>(global3.e.x, global3.e.x, global1.c.x, global3.e.x), select(vec4<bool>(global1.c.x, false, global3.c.x, var_1.x), vec4<bool>(true, true, global3.c.x, true), global1.e), global1.c.x | var_1.x)), var_1.x));
    return var_2.b;
}

fn func_2() -> Struct_1 {
    var var_0 = vec3<i32>(67488i, u_input.a.x, ~_wgslsmith_mult_i32(_wgslsmith_mod_i32(~global1.b, global3.b), global3.a.x));
    global3 = Struct_1(vec2<i32>(reverseBits(func_3()), -global3.b), i32(-1i) * -52661i, select(select(!global1.e.wxx, !global3.c, global3.e.x), vec3<bool>(false, !(!global3.e.x), any(global1.e)), global3.c.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(-3238f - global3.d.x), _wgslsmith_f_op_f32(-global3.d.x), -628f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.d.x, -1485f, 223f))))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(global3.d.x, global1.d.x), _wgslsmith_f_op_f32(f32(-1f) * -122f), global1.d.x))), global1.e);
    global0 = array<vec2<i32>, 30>();
    let var_1 = _wgslsmith_clamp_vec2_u32(~(~_wgslsmith_mult_vec2_u32(u_input.b, ~u_input.b)), select(firstLeadingBit(u_input.b), ~vec2<u32>(_wgslsmith_clamp_u32(u_input.b.x, u_input.b.x, u_input.b.x), ~42677u), ~min(-56913i, 2147483647i) == _wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(global3.b, -48378i, -453i, 0i), u_input.a), i32(-1i) * -2147483647i, -global1.b)), reverseBits(abs(vec2<u32>(u_input.b.x, 43927u))) << (~vec2<u32>(u_input.b.x | 1u, min(u_input.b.x, u_input.b.x)) % vec2<u32>(32u)));
    var var_2 = Struct_1(u_input.a.xx, ~(-1i), !vec3<bool>(all(global1.c.yx), true, global1.c.x), vec3<f32>(_wgslsmith_f_op_f32(-global3.d.x), _wgslsmith_f_op_f32(f32(-1f) * -459f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.d.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global3.d.x))), !global3.e.x | global3.c.x))), vec4<bool>(true, true, global1.e.x, !global1.c.x));
    return Struct_1(vec2<i32>(~u_input.a.x, -6782i), global3.a.x, var_2.e.yyx, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1114f), _wgslsmith_f_op_f32(min(var_2.d.x, global3.d.x)), 975f) - global1.d), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.d.x, 347f, global3.d.x) * vec3<f32>(943f, 504f, 112f))), _wgslsmith_f_op_vec3_f32(abs(global3.d)))), !(!(!(!vec4<bool>(var_2.c.x, true, global1.c.x, true)))));
}

fn func_1(arg_0: vec2<i32>, arg_1: vec4<u32>, arg_2: bool, arg_3: bool) -> Struct_1 {
    let var_0 = func_2();
    global3 = func_2();
    let var_1 = arg_1.x;
    global0 = array<vec2<i32>, 30>();
    let var_2 = global1.a.x;
    return Struct_1(vec2<i32>(firstTrailingBit(0i), _wgslsmith_mult_i32(~u_input.a.x, ~2147483647i)), ~(-(~global3.b >> (arg_1.x % 32u))), vec3<bool>(arg_2, !any(select(vec2<bool>(global1.e.x, arg_3), vec2<bool>(true, var_0.c.x), global1.e.x)), select(arg_3, true, global3.c.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.d.x, _wgslsmith_div_f32(-1000f, global3.d.x), _wgslsmith_f_op_f32(-global1.d.x))), select(!select(vec4<bool>(global3.c.x, arg_3, global3.e.x, true), select(global1.e, vec4<bool>(false, arg_2, arg_2, false), global3.e), true), vec4<bool>(true, global3.e.x, false, global1.e.x), global1.e));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = func_1(~vec2<i32>(global1.b & -9250i, -(-1i >> (u_input.b.x % 32u))), _wgslsmith_div_vec4_u32(~countOneBits(~vec4<u32>(79197u, 4294967295u, 25714u, u_input.b.x)), select(select(vec4<u32>(64451u, u_input.b.x, 1u, 0u), vec4<u32>(33552u, u_input.b.x, 1u, u_input.b.x), any(vec4<bool>(global1.c.x, true, global1.e.x, global3.e.x))), vec4<u32>(u_input.b.x ^ 4294967295u, ~5624u, ~u_input.b.x, ~u_input.b.x), !vec4<bool>(global1.c.x, false, false, false))), !all(!vec3<bool>(global1.c.x, global1.e.x, true)) & (_wgslsmith_sub_u32(~70974u, u_input.b.x | 56020u) == firstTrailingBit(1u)), global3.e.x);
    let var_0 = !vec2<bool>(false, !(!global1.c.x));
    var var_1 = vec4<i32>(-2147483647i, _wgslsmith_mod_i32(abs(_wgslsmith_dot_vec2_i32(vec2<i32>(global3.b, -228i), vec2<i32>(4096i, -1i)) & u_input.a.x), i32(-1i) * -global1.a.x), 21353i, u_input.a.x);
    var var_2 = global1.d.x;
    let x = u_input.a;
    s_output = StorageBuffer(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.b.x, _wgslsmith_mult_u32(_wgslsmith_mod_u32(69914u, abs(12853u)), _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.b.x, u_input.b.x, 10607u, u_input.b.x), ~vec4<u32>(u_input.b.x, 4294967295u, u_input.b.x, u_input.b.x)))), 26u)], 1000f, u_input.a);
}

