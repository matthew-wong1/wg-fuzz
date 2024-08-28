struct Struct_1 {
    a: i32,
    b: bool,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec2<f32>,
    d: vec4<i32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 6>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: f32) -> vec4<bool> {
    var var_0 = firstTrailingBit(-vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -20295i, u_input.a, -1i) << (vec4<u32>(21054u, 1u, 1u, u_input.b) % vec4<u32>(32u)), vec4<i32>(1i, u_input.a, -30391i, 2147483647i)), _wgslsmith_clamp_i32(0i, u_input.a, -u_input.a), reverseBits(_wgslsmith_dot_vec3_i32(vec3<i32>(3374i, 1i, u_input.a), vec3<i32>(u_input.a, -11791i, 30562i)))));
    global0 = array<u32, 6>();
    global0 = array<u32, 6>();
    var var_1 = vec4<u32>(u_input.b, _wgslsmith_mod_u32(~global0[_wgslsmith_index_u32(1u, 6u)] ^ ~countOneBits(4294967295u), ~select(~global0[_wgslsmith_index_u32(49612u, 6u)], ~17940u, false)), _wgslsmith_dot_vec4_u32(select(reverseBits(abs(vec4<u32>(0u, global0[_wgslsmith_index_u32(22499u, 6u)], 1u, global0[_wgslsmith_index_u32(36801u, 6u)]))), ~vec4<u32>(14708u, u_input.b, 52637u, 34520u) >> ((vec4<u32>(global0[_wgslsmith_index_u32(u_input.b, 6u)], global0[_wgslsmith_index_u32(1u, 6u)], 0u, u_input.b) << (vec4<u32>(u_input.b, 0u, 17040u, u_input.b) % vec4<u32>(32u))) % vec4<u32>(32u)), true), vec4<u32>(1u, u_input.b, max(u_input.b, global0[_wgslsmith_index_u32(21834u, 6u)]), 1u) & select(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, global0[_wgslsmith_index_u32(4294967295u, 6u)], u_input.b, 27753u), vec4<u32>(42594u, 22947u, u_input.b, 0u)), vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b, 6u)], 6u)], 0u, 1u, global0[_wgslsmith_index_u32(u_input.b, 6u)]), vec4<bool>(true, true, true, true))), ~min(u_input.b << (~u_input.b % 32u), reverseBits(~u_input.b)));
    var var_2 = select(vec4<bool>(all(vec4<bool>(true, true, true, true)), (global0[_wgslsmith_index_u32(~5689u, 6u)] > _wgslsmith_div_u32(var_1.x, global0[_wgslsmith_index_u32(1u, 6u)])) | !all(vec2<bool>(true, false)), true, !all(vec2<bool>(false, true))), vec4<bool>(true, true, true, true), select(select(vec4<bool>(any(vec2<bool>(false, false)), true, true, true), vec4<bool>(u_input.a <= u_input.a, any(vec2<bool>(true, false)), true, false), vec4<bool>(all(vec2<bool>(true, true)), true, true, true)), vec4<bool>(all(select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true))), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(global0[_wgslsmith_index_u32(u_input.b, 6u)], u_input.b), 6u)] != u_input.b, any(vec2<bool>(true, true)), 4294967295u > ~global0[_wgslsmith_index_u32(80964u, 6u)]), select(false, all(vec2<bool>(false, false)), arg_0 != arg_0) && (-1i < u_input.a)));
    return select(vec4<bool>(false, any(!select(vec4<bool>(false, var_2.x, var_2.x, false), vec4<bool>(var_2.x, false, var_2.x, true), true)), true, true), vec4<bool>(var_2.x, false, var_2.x, -1217f <= _wgslsmith_f_op_f32(-arg_0)), vec4<bool>(all(select(select(var_2.wzx, var_2.wyw, var_2.wwy), !var_2.yzw, 9496i == u_input.a)), var_2.x, -2013f > arg_0, all(!vec2<bool>(true, var_2.x))));
}

fn func_2() -> i32 {
    let var_0 = select(!vec4<bool>(u_input.a == _wgslsmith_div_i32(u_input.a, 2147483647i), !all(vec3<bool>(true, false, false)), true, false), select(!func_3(_wgslsmith_div_f32(-1518f, 1592f)), vec4<bool>(func_3(_wgslsmith_f_op_f32(-150f - -115f)).x, any(func_3(317f).yw), true, true), !(1i <= u_input.a) && true), vec4<bool>(countOneBits(select(u_input.a, u_input.a, true)) == -2147483647i, true, all(vec4<bool>(true, true, true, true)), true));
    let var_1 = Struct_2(Struct_1(u_input.a, func_3(_wgslsmith_f_op_f32(sign(-717f))).x, 36807i));
    global0 = array<u32, 6>();
    var var_2 = 2858u ^ u_input.b;
    let var_3 = var_1.a;
    return ~(~(~_wgslsmith_mod_i32(var_3.a, var_1.a.a))) & -_wgslsmith_mod_i32(~1173i, _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(-2147483647i, -2147483647i), vec2<i32>(var_1.a.a, -1i)), abs(vec2<i32>(u_input.a, 18423i))));
}

fn func_1(arg_0: vec4<bool>, arg_1: i32, arg_2: u32) -> bool {
    global0 = array<u32, 6>();
    var var_0 = Struct_1(~(select(u_input.a, _wgslsmith_sub_i32(-2147483647i, u_input.a), true) | abs(abs(u_input.a))), _wgslsmith_div_i32(0i, u_input.a) < (arg_1 | arg_1), -func_2());
    var_0 = Struct_1(u_input.a, any(select(arg_0, !arg_0, vec4<bool>(true, true, any(vec2<bool>(true, var_0.b)), false))), ~select(~func_2(), 12109i, false));
    let var_1 = !(!arg_0.x);
    var var_2 = Struct_2(Struct_1(-(-2147483647i >> (~arg_2 % 32u)), var_0.b, var_0.a));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(!select(vec3<bool>(false, all(vec2<bool>(true, true)), func_1(vec4<bool>(true, true, true, true), -6701i, u_input.b)), vec3<bool>(false, func_3(-200f).x, false), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false)), select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(true, false, true)))), func_3(-712f).xyx, !select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true)));
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1351f, -1874f, 758f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-793f, -1256f, 667f) * vec3<f32>(-953f, -220f, 1977f)) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(166f, 872f, -965f), vec3<f32>(-428f, -1507f, 705f), vec3<bool>(false, var_0.x, true))))))) * vec3<f32>(_wgslsmith_f_op_f32(select(-367f, _wgslsmith_f_op_f32(f32(-1f) * -1254f), any(vec3<bool>(var_0.x, var_0.x, var_0.x)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(650f, -941f))), -1746f, var_0.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-425f))), _wgslsmith_f_op_f32(f32(-1f) * -1528f))));
    var var_2 = Struct_1(abs(-u_input.a), true && var_0.x, i32(-1i) * -2147483647i);
    var var_3 = Struct_1(_wgslsmith_add_i32(func_2(), _wgslsmith_add_i32(var_2.a, min(u_input.a, 1i))) ^ _wgslsmith_clamp_i32(_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, var_2.a, -34438i, -42982i), vec4<i32>(522i, var_2.c, var_2.c, 3367i)), 0i), var_2.c, var_2.c), any(vec3<bool>(true, var_2.c != 30252i, true)) && all(func_3(-1480f)), 1i);
    var var_4 = _wgslsmith_f_op_vec2_f32(-var_1.yz);
    let x = u_input.a;
    s_output = StorageBuffer(21085u, -7181i, var_1.zz, ~vec4<i32>(min(u_input.a, var_2.a) & 1i, var_3.c | _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, u_input.a, var_2.c, 1i), vec4<i32>(2147483647i, 11887i, 5109i, 35782i)), -var_2.c, var_3.a), vec4<i32>(abs(~0i) << (~(u_input.b | 4294967295u) % 32u), var_2.c, var_2.c, var_3.c));
}

