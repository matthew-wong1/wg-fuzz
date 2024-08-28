struct Struct_1 {
    a: bool,
    b: vec3<i32>,
    c: vec3<u32>,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<f32>,
    c: f32,
    d: vec4<u32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 15>;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: u32) -> vec3<u32> {
    global0 = array<f32, 15>();
    return ~(~_wgslsmith_clamp_vec3_u32(vec3<u32>(select(arg_0, 6663u, false), _wgslsmith_sub_u32(arg_0, 18192u), ~0u), _wgslsmith_div_vec3_u32(vec3<u32>(0u, arg_0, 1u), _wgslsmith_div_vec3_u32(vec3<u32>(arg_0, 0u, arg_0), vec3<u32>(50795u, 4294967295u, 53860u))), select(_wgslsmith_div_vec3_u32(vec3<u32>(arg_0, arg_0, 4294967295u), vec3<u32>(0u, arg_0, 22233u)), _wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, 12890u, arg_0), vec3<u32>(38414u, arg_0, arg_0)), select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true)))));
}

fn func_3(arg_0: vec4<u32>, arg_1: vec3<f32>, arg_2: Struct_1, arg_3: Struct_1) -> vec3<u32> {
    let var_0 = vec4<i32>(reverseBits(arg_2.b.x), _wgslsmith_clamp_i32(arg_2.b.x, min(~_wgslsmith_mod_i32(u_input.a, 1i), 33625i), _wgslsmith_sub_i32(~arg_3.b.x, ~(~(-40394i)))), ~(-u_input.a), ~max(-2147483647i, ~(~(-1i))));
    var var_1 = arg_3.b;
    var_1 = firstTrailingBit(abs(_wgslsmith_div_vec3_i32(arg_3.b, vec3<i32>(2147483647i, _wgslsmith_mult_i32(29772i, 0i), -arg_2.b.x))));
    let var_2 = Struct_1(false, arg_3.b, _wgslsmith_add_vec3_u32(~(~arg_0.ywz), ~vec3<u32>(~arg_2.c.x, 26696u, ~1u)), arg_2.d);
    let var_3 = ~35021u >= ~arg_3.c.x;
    return _wgslsmith_mod_vec3_u32(select(select(vec3<u32>(_wgslsmith_add_u32(var_2.c.x, 10876u), var_2.c.x, arg_2.c.x >> (4412u % 32u)), arg_2.c, select(select(vec3<bool>(var_3, false, false), vec3<bool>(true, true, true), vec3<bool>(false, var_2.a, false)), vec3<bool>(var_2.a, var_2.a, true), select(vec3<bool>(false, arg_2.a, var_2.a), vec3<bool>(arg_2.a, false, arg_2.a), vec3<bool>(arg_2.a, false, var_2.a)))), ~vec3<u32>(arg_3.c.x, _wgslsmith_mult_u32(1u, var_2.c.x), _wgslsmith_dot_vec3_u32(vec3<u32>(arg_2.c.x, var_2.c.x, var_2.c.x), vec3<u32>(var_2.c.x, 64124u, 10640u))), select(vec3<bool>(any(vec3<bool>(arg_3.a, true, true)), arg_3.a & arg_2.a, select(false, var_2.a, true)), vec3<bool>(true, !arg_3.a, !var_2.a), !(!vec3<bool>(true, arg_2.a, true)))), vec3<u32>(~1u, 10496u, ~arg_2.c.x));
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: f32, arg_3: u32) -> u32 {
    let var_0 = ~firstLeadingBit(arg_3);
    let var_1 = _wgslsmith_f_op_vec4_f32(-arg_0.d);
    let var_2 = !(!vec4<bool>(select(arg_0.d.x < -1000f, true, !arg_1), any(select(vec2<bool>(true, arg_1), vec2<bool>(false, false), true)), arg_0.b.x >= _wgslsmith_mult_i32(20506i, arg_0.b.x), arg_0.a));
    global0 = array<f32, 15>();
    return arg_3;
}

fn func_2() -> vec3<u32> {
    var var_0 = vec3<u32>(_wgslsmith_div_u32(func_4(Struct_1(true, reverseBits(vec3<i32>(1i, u_input.a, u_input.a)), func_3(vec4<u32>(0u, 1u, 0u, 1u), vec3<f32>(global0[_wgslsmith_index_u32(0u, 15u)], -122f, global0[_wgslsmith_index_u32(37352u, 15u)]), Struct_1(false, vec3<i32>(0i, u_input.a, -36191i), vec3<u32>(13379u, 0u, 4294967295u), vec4<f32>(global0[_wgslsmith_index_u32(0u, 15u)], -648f, global0[_wgslsmith_index_u32(4294967295u, 15u)], global0[_wgslsmith_index_u32(0u, 15u)])), Struct_1(true, vec3<i32>(u_input.a, -2147483647i, -22377i), vec3<u32>(1u, 61477u, 1794u), vec4<f32>(565f, global0[_wgslsmith_index_u32(59288u, 15u)], 2093f, global0[_wgslsmith_index_u32(1u, 15u)]))), vec4<f32>(global0[_wgslsmith_index_u32(13632u, 15u)], global0[_wgslsmith_index_u32(2463u, 15u)], -1192f, global0[_wgslsmith_index_u32(1u, 15u)])), true, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(27660u, 15u)]), _wgslsmith_f_op_f32(-283f * -1422f)), ~1u), _wgslsmith_add_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(68629u, 71310u, 4294967295u), vec3<u32>(4294967295u, 11770u, 31412u)), 32717u)), reverseBits(20223u), abs(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(4294967295u, 43021u), 1u), ~vec2<u32>(1u, 4294967295u))));
    let var_1 = Struct_1(true, vec3<i32>(1744i, u_input.a & -u_input.a, u_input.a), _wgslsmith_sub_vec3_u32(func_1(min(~var_0.x, var_0.x | var_0.x)), ~vec3<u32>(4294967295u, _wgslsmith_mult_u32(var_0.x, var_0.x), ~var_0.x)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(var_0.x, 15u)], global0[_wgslsmith_index_u32(4294967295u, 15u)], 233f, global0[_wgslsmith_index_u32(4294967295u, 15u)]))), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(-1456f)), global0[_wgslsmith_index_u32(max(var_0.x, var_0.x), 15u)], global0[_wgslsmith_index_u32(countOneBits(16895u), 15u)], -196f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-570f, 758f, 1387f, global0[_wgslsmith_index_u32(var_0.x, 15u)]) + vec4<f32>(global0[_wgslsmith_index_u32(29559u, 15u)], -843f, 1000f, 2004f)) * _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global0[_wgslsmith_index_u32(1364u, 15u)], 616f, -271f, global0[_wgslsmith_index_u32(87110u, 15u)]))))), !vec4<bool>(true, any(vec2<bool>(true, true)), any(vec3<bool>(true, true, false)), select(true, true, true)))));
    var_0 = vec3<u32>(_wgslsmith_add_u32(4294967295u, _wgslsmith_dot_vec3_u32(~_wgslsmith_div_vec3_u32(var_1.c, var_1.c), var_1.c)), var_0.x, select(1u, abs(~1u), !(var_1.d.x < _wgslsmith_f_op_f32(max(var_1.d.x, 454f)))));
    var_0 = vec3<u32>(_wgslsmith_sub_u32(firstTrailingBit(_wgslsmith_mult_u32(4294967295u, var_1.c.x)), 29292u), var_1.c.x, 0u) & (var_1.c | vec3<u32>(var_1.c.x, ~func_1(var_1.c.x).x, ~firstTrailingBit(var_1.c.x)));
    let var_2 = select(-select(-(~vec4<i32>(2147483647i, 12418i, u_input.a, 2147483647i)), _wgslsmith_clamp_vec4_i32(select(vec4<i32>(42841i, 2147483647i, var_1.b.x, var_1.b.x), vec4<i32>(u_input.a, -37831i, u_input.a, -30666i), var_1.a), -vec4<i32>(var_1.b.x, var_1.b.x, var_1.b.x, var_1.b.x), vec4<i32>(u_input.a, 0i, -11656i, -1i) & vec4<i32>(var_1.b.x, 8191i, var_1.b.x, 1i)), var_1.a), -(max(-vec4<i32>(var_1.b.x, var_1.b.x, var_1.b.x, -5162i), max(vec4<i32>(var_1.b.x, u_input.a, 2147483647i, u_input.a), vec4<i32>(u_input.a, -254i, 0i, 1i))) ^ -vec4<i32>(-5172i, u_input.a, -42246i, -1i)), vec4<bool>(true, var_1.a & true, var_1.a, countOneBits(-1i) == var_1.b.x));
    return ~vec3<u32>(~1u, countOneBits(1u), var_0.x & ~var_1.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mod_vec3_i32(abs(abs(~vec3<i32>(u_input.a, u_input.a, 2147483647i))) << (~(~func_1(1u)) % vec3<u32>(32u)), _wgslsmith_clamp_vec3_i32(_wgslsmith_div_vec3_i32(select(vec3<i32>(u_input.a, 49755i, 23124i), vec3<i32>(u_input.a, 30026i, u_input.a), true), vec3<i32>(u_input.a, -31051i, u_input.a) >> (vec3<u32>(9098u, 4294967295u, 4294967295u) % vec3<u32>(32u))) >> (func_2() % vec3<u32>(32u)), ~vec3<i32>(-1i, -19970i, u_input.a), abs(_wgslsmith_div_vec3_i32(select(vec3<i32>(u_input.a, -18938i, u_input.a), vec3<i32>(u_input.a, u_input.a, u_input.a), false), vec3<i32>(-1i, -40704i, 74425i)))));
    global0 = array<f32, 15>();
    let var_1 = Struct_1(any(vec3<bool>(true, true, true)) | any(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false)))), -firstTrailingBit(~(~vec3<i32>(var_0.x, 0i, u_input.a))), _wgslsmith_mult_vec3_u32(~func_3(vec4<u32>(1u, 1u, 1u, 1u), vec3<f32>(-1203f, 367f, global0[_wgslsmith_index_u32(45933u, 15u)]), Struct_1(false, vec3<i32>(2147483647i, var_0.x, var_0.x), vec3<u32>(0u, 46955u, 0u), vec4<f32>(global0[_wgslsmith_index_u32(4294967295u, 15u)], global0[_wgslsmith_index_u32(0u, 15u)], 144f, -662f)), Struct_1(true, vec3<i32>(0i, 10055i, -50343i), vec3<u32>(30287u, 55211u, 4294967295u), vec4<f32>(2499f, -1750f, global0[_wgslsmith_index_u32(1u, 15u)], global0[_wgslsmith_index_u32(1u, 15u)]))), min(vec3<u32>(47329u << (0u % 32u), 0u, _wgslsmith_dot_vec2_u32(vec2<u32>(5782u, 1u), vec2<u32>(6185u, 48379u))), ~select(vec3<u32>(1u, 1u, 3236u), vec3<u32>(4294967295u, 1u, 4294967295u), true))), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(abs(1u), 15u)], _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 15u)]), global0[_wgslsmith_index_u32(36502u, 15u)], global0[_wgslsmith_index_u32(34443u, 15u)]) + _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-832f, global0[_wgslsmith_index_u32(4294967295u, 15u)], -932f, -613f) * vec4<f32>(288f, 309f, global0[_wgslsmith_index_u32(4294967295u, 15u)], global0[_wgslsmith_index_u32(46137u, 15u)])))))));
    global0 = array<f32, 15>();
    global0 = array<f32, 15>();
    let var_2 = select(select(select(select(!vec4<bool>(var_1.a, var_1.a, var_1.a, var_1.a), select(vec4<bool>(false, false, true, var_1.a), vec4<bool>(var_1.a, var_1.a, false, var_1.a), vec4<bool>(false, var_1.a, true, true)), !vec4<bool>(true, true, true, var_1.a)), !select(vec4<bool>(var_1.a, true, false, false), vec4<bool>(var_1.a, false, var_1.a, var_1.a), false), select(select(vec4<bool>(true, var_1.a, var_1.a, var_1.a), vec4<bool>(var_1.a, var_1.a, var_1.a, true), vec4<bool>(true, var_1.a, var_1.a, var_1.a)), select(vec4<bool>(var_1.a, true, false, var_1.a), vec4<bool>(var_1.a, true, true, true), var_1.a), !vec4<bool>(var_1.a, var_1.a, true, true))), vec4<bool>(true, true, true, true), any(vec4<bool>(select(var_1.a, var_1.a, true), 0u >= var_1.c.x, var_1.a != var_1.a, var_1.a))), vec4<bool>(global0[_wgslsmith_index_u32(var_1.c.x, 15u)] < -1000f, false, false, ((var_1.a && false) && (var_1.c.x >= var_1.c.x)) & !select(false, false, var_1.a)), select(!(!(!vec4<bool>(var_1.a, false, var_1.a, var_1.a))), select(!vec4<bool>(false, var_1.a, var_1.a, var_1.a), select(vec4<bool>(true, var_1.a, var_1.a, var_1.a), select(vec4<bool>(true, true, true, true), vec4<bool>(var_1.a, var_1.a, true, var_1.a), vec4<bool>(var_1.a, var_1.a, var_1.a, var_1.a)), true), false), !var_1.a));
    let x = u_input.a;
    s_output = StorageBuffer(select(select(var_1.c & var_1.c, vec3<u32>(_wgslsmith_mod_u32(var_1.c.x, var_1.c.x), 1u, _wgslsmith_clamp_u32(0u, 1u, 1u)), vec3<bool>(true, var_1.a, var_2.x)), vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 26998u, 1u, 1u), vec4<u32>(var_1.c.x, var_1.c.x, var_1.c.x, var_1.c.x)) << (var_1.c.x % 32u), max(firstTrailingBit(1u), max(var_1.c.x, var_1.c.x)), ~func_2().x), all(vec2<bool>(var_1.a, !var_2.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.d.x, var_1.d.x, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_1.c.x, 15u)]), global0[_wgslsmith_index_u32(~58674u, 15u)])) * _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(vec4<f32>(var_1.d.x, -1169f, -1000f, global0[_wgslsmith_index_u32(4294967295u, 15u)]), vec4<f32>(global0[_wgslsmith_index_u32(var_1.c.x, 15u)], var_1.d.x, -1497f, -218f))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-345f))), firstTrailingBit(~vec4<u32>(37869u >> (var_1.c.x % 32u), ~var_1.c.x, ~4294967295u, var_1.c.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(var_1.d, vec4<f32>(-905f, -2162f, -628f, var_1.d.x), var_2.x))))));
}

