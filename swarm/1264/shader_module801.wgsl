struct Struct_1 {
    a: u32,
    b: vec4<bool>,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: Struct_1,
    d: bool,
    e: i32,
}

struct Struct_3 {
    a: f32,
    b: u32,
    c: Struct_2,
    d: u32,
}

struct Struct_4 {
    a: vec3<u32>,
    b: Struct_3,
}

struct Struct_5 {
    a: vec2<bool>,
    b: u32,
    c: vec2<i32>,
    d: i32,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec3<u32>,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec4<f32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 11> = array<Struct_4, 11>(Struct_4(vec3<u32>(39498u, 4294967295u, 4294967295u), Struct_3(1232f, 41781u, Struct_2(Struct_1(4294967295u, vec4<bool>(false, true, false, false), false), vec2<i32>(-1i, i32(-2147483648)), Struct_1(1u, vec4<bool>(false, true, true, false), true), true, -55309i), 4294967295u)), Struct_4(vec3<u32>(1u, 37288u, 1u), Struct_3(1571f, 42753u, Struct_2(Struct_1(1u, vec4<bool>(false, true, false, false), true), vec2<i32>(8136i, i32(-2147483648)), Struct_1(100803u, vec4<bool>(false, true, true, false), false), true, 4326i), 1u)), Struct_4(vec3<u32>(1u, 1u, 0u), Struct_3(1494f, 3971u, Struct_2(Struct_1(9277u, vec4<bool>(false, false, true, false), false), vec2<i32>(1i, 1i), Struct_1(4294967295u, vec4<bool>(false, false, true, false), true), false, 2147483647i), 21242u)), Struct_4(vec3<u32>(27807u, 2409u, 4294967295u), Struct_3(134f, 1u, Struct_2(Struct_1(1929u, vec4<bool>(false, true, true, true), true), vec2<i32>(1492i, 0i), Struct_1(74857u, vec4<bool>(false, true, true, true), false), true, i32(-2147483648)), 17984u)), Struct_4(vec3<u32>(10893u, 61862u, 31438u), Struct_3(139f, 0u, Struct_2(Struct_1(4294967295u, vec4<bool>(false, true, false, false), true), vec2<i32>(i32(-2147483648), 10222i), Struct_1(1u, vec4<bool>(true, true, true, false), false), false, i32(-2147483648)), 4294967295u)), Struct_4(vec3<u32>(5460u, 1u, 29595u), Struct_3(-2001f, 37241u, Struct_2(Struct_1(1u, vec4<bool>(true, false, true, false), false), vec2<i32>(-2983i, -26556i), Struct_1(28503u, vec4<bool>(true, true, true, false), false), true, -1i), 108177u)), Struct_4(vec3<u32>(1u, 1620u, 91899u), Struct_3(515f, 52594u, Struct_2(Struct_1(4294967295u, vec4<bool>(true, false, false, true), true), vec2<i32>(-17584i, 1i), Struct_1(33545u, vec4<bool>(false, false, true, false), false), true, 0i), 31719u)), Struct_4(vec3<u32>(18747u, 4294967295u, 1u), Struct_3(1056f, 26778u, Struct_2(Struct_1(0u, vec4<bool>(false, false, false, true), false), vec2<i32>(i32(-2147483648), 7824i), Struct_1(1446u, vec4<bool>(false, false, true, false), true), true, i32(-2147483648)), 64863u)), Struct_4(vec3<u32>(4294967295u, 17560u, 28785u), Struct_3(931f, 47397u, Struct_2(Struct_1(36116u, vec4<bool>(false, false, false, true), true), vec2<i32>(-24509i, -35800i), Struct_1(64643u, vec4<bool>(false, false, true, false), false), true, -1i), 31257u)), Struct_4(vec3<u32>(0u, 20819u, 0u), Struct_3(1345f, 72376u, Struct_2(Struct_1(49419u, vec4<bool>(true, true, false, false), true), vec2<i32>(-23917i, -21341i), Struct_1(0u, vec4<bool>(true, true, true, false), false), false, 23621i), 6573u)), Struct_4(vec3<u32>(64354u, 4294967295u, 4294967295u), Struct_3(1015f, 0u, Struct_2(Struct_1(1u, vec4<bool>(false, false, false, false), false), vec2<i32>(10339i, 1i), Struct_1(12837u, vec4<bool>(true, false, true, true), true), false, -49321i), 1u)));

var<private> global1: array<Struct_1, 12> = array<Struct_1, 12>(Struct_1(4294967295u, vec4<bool>(false, true, false, false), false), Struct_1(4294967295u, vec4<bool>(false, false, false, false), false), Struct_1(33677u, vec4<bool>(true, true, true, true), true), Struct_1(26560u, vec4<bool>(true, false, true, false), false), Struct_1(11641u, vec4<bool>(false, false, true, true), false), Struct_1(32424u, vec4<bool>(true, false, true, true), false), Struct_1(11932u, vec4<bool>(false, false, true, false), true), Struct_1(28944u, vec4<bool>(true, true, false, true), true), Struct_1(4294967295u, vec4<bool>(false, false, true, true), true), Struct_1(48469u, vec4<bool>(true, false, true, false), true), Struct_1(3783u, vec4<bool>(true, true, true, true), true), Struct_1(4294967295u, vec4<bool>(true, false, true, false), false));

var<private> global2: array<Struct_5, 23>;

var<private> global3: vec3<bool> = vec3<bool>(true, false, false);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_5, arg_1: Struct_5, arg_2: vec3<u32>, arg_3: vec2<i32>) -> i32 {
    let var_0 = global0[_wgslsmith_index_u32(u_input.a, 11u)];
    global0 = array<Struct_4, 11>();
    var var_1 = _wgslsmith_dot_vec3_u32(~abs(vec3<u32>(arg_0.e.x, arg_2.x, arg_0.b)), _wgslsmith_add_vec3_u32(arg_1.e.xzx, arg_2)) << (~max(_wgslsmith_add_u32(~4294967295u, 1u), ~arg_2.x) % 32u);
    global3 = !(!var_0.b.c.a.b.xyy);
    global1 = array<Struct_1, 12>();
    return -17531i;
}

fn func_2() -> Struct_3 {
    global0 = array<Struct_4, 11>();
    var var_0 = Struct_2(Struct_1(firstTrailingBit(~0u) >> (1u % 32u), select(select(select(vec4<bool>(global3.x, global3.x, global3.x, true), vec4<bool>(global3.x, false, true, true), global3.x), !vec4<bool>(global3.x, false, global3.x, global3.x), select(vec4<bool>(true, global3.x, global3.x, global3.x), vec4<bool>(true, false, global3.x, global3.x), vec4<bool>(true, global3.x, global3.x, false))), vec4<bool>(false, global3.x && global3.x, global3.x, true), !vec4<bool>(true, global3.x, global3.x, global3.x)), true), -_wgslsmith_div_vec2_i32(countOneBits(u_input.b.yx >> (u_input.c.zy % vec2<u32>(32u))), _wgslsmith_div_vec2_i32(-vec2<i32>(u_input.b.x, -7132i), -vec2<i32>(u_input.e.x, 2147483647i))), global1[_wgslsmith_index_u32(u_input.a, 12u)], _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-792f - 293f)))) <= -1057f, func_3(Struct_5(global3.xx, u_input.a, vec2<i32>(_wgslsmith_mult_i32(u_input.d, 8675i), 0i), u_input.e.x ^ (u_input.e.x & 52360i), _wgslsmith_div_vec4_u32(~vec4<u32>(u_input.a, 57238u, u_input.a, 4294967295u), ~vec4<u32>(0u, u_input.a, 38596u, 54254u))), global2[_wgslsmith_index_u32(u_input.a | 4294967295u, 23u)], vec3<u32>(_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(u_input.c, vec3<u32>(u_input.c.x, u_input.a, 5272u)), u_input.a, 4880u), 1u, ~1u), u_input.e));
    var var_1 = 4294967295u;
    let var_2 = true;
    var_1 = var_0.c.a;
    return Struct_3(_wgslsmith_div_f32(230f, _wgslsmith_div_f32(355f, -1000f)), _wgslsmith_dot_vec3_u32(u_input.c, ~vec3<u32>(countOneBits(76433u), 1u, var_0.a.a ^ u_input.a)), Struct_2(Struct_1(~u_input.a ^ (var_0.c.a ^ 7610u), var_0.c.b, any(select(var_0.c.b, vec4<bool>(true, global3.x, false, false), vec4<bool>(var_0.d, false, global3.x, false)))), var_0.b, Struct_1(26935u, var_0.c.b, global3.x), 2147483647i != u_input.b.x, var_0.b.x | u_input.e.x), _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(var_0.a.a, 0u, 50450u) >> (vec3<u32>(u_input.c.x, u_input.c.x, 0u) % vec3<u32>(32u)), vec3<u32>(4961u, 12050u, var_0.a.a)), reverseBits(vec3<u32>(u_input.a, u_input.a, 27229u))) | ~_wgslsmith_mult_u32(_wgslsmith_mult_u32(u_input.a, var_0.c.a), ~22777u));
}

fn func_1(arg_0: i32, arg_1: i32) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-633f, _wgslsmith_f_op_f32(sign(1721f)))) + _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(628f))))) - 1f);
    var_0 = -1096f;
    var var_1 = 562f;
    let var_2 = Struct_4(reverseBits(vec3<u32>(7426u, 3986u, ~u_input.a)), func_2());
    var var_3 = !(!(!var_2.b.c.c.b));
    return i32(-1i) * -arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 2147483647i;
    let var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1127f)));
    var var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(abs(622f)), _wgslsmith_f_op_f32(-1000f - -1001f), _wgslsmith_f_op_f32(-var_1)));
    var var_3 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1 * var_1) * _wgslsmith_f_op_f32(f32(-1f) * -2264f))));
    var_0 = _wgslsmith_mod_i32(-24037i, _wgslsmith_mod_i32(-10724i, 12357i | ~u_input.b.x));
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.b.x, _wgslsmith_div_i32(func_1(-1i, u_input.d), 2147483647i), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, -1006f, -633f, var_2.x) + vec4<f32>(146f, 394f, var_2.x, var_1)), vec4<f32>(225f, 621f, -656f, var_1)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, 106f, var_2.x, var_1))), false)) * vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1) * _wgslsmith_f_op_f32(-1388f - var_1)), -947f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(463f * var_2.x) - var_2.x), 386f)), ~(~abs(u_input.c ^ u_input.c)));
}

