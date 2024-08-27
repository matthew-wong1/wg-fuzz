struct Struct_1 {
    a: vec4<bool>,
    b: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: u32 = 17348u;

var<private> global2: array<f32, 25>;

var<private> global3: array<bool, 25>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
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

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1) -> vec4<bool> {
    var var_0 = arg_0;
    var var_1 = vec4<i32>(5008i, 1i, _wgslsmith_add_i32(0i, arg_1.b), arg_1.b);
    var_1 = abs(vec4<i32>(-arg_1.b, var_1.x, -2147483647i, var_1.x));
    var var_2 = arg_2;
    var var_3 = Struct_1(vec4<bool>(!(true | global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(0u, 1u), 25u)]), true, all(vec4<bool>(arg_1.a.x, true, true, arg_2.a.x | var_2.a.x)), arg_1.a.x), (arg_1.b >> (_wgslsmith_clamp_u32(_wgslsmith_sub_u32(4294967295u, 27031u), 1u, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 31710u), vec2<u32>(0u, 4294967295u))) % 32u)) >> (49501u % 32u));
    return !arg_2.a;
}

fn func_2(arg_0: vec3<u32>, arg_1: bool, arg_2: vec2<f32>, arg_3: Struct_1) -> u32 {
    var var_0 = select(vec2<bool>(true, arg_1 | !all(arg_3.a.zxy)), vec2<bool>(true, true), !any(arg_3.a) | arg_1);
    let var_1 = Struct_1(func_3((_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 6077i, -2147483647i, 16208i), vec4<i32>(u_input.a, arg_3.b, u_input.a, u_input.a)) != -28051i) || false, arg_3, arg_3), _wgslsmith_mult_i32(0i, max(0i, max(-1i, arg_3.b) & countOneBits(u_input.a))));
    return ~34829u;
}

fn func_1(arg_0: vec3<u32>, arg_1: i32, arg_2: u32) -> u32 {
    var var_0 = vec2<u32>(abs(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_2, arg_2, 4799u, 29547u) >> (select(vec4<u32>(1u, arg_0.x, arg_0.x, 0u), vec4<u32>(0u, 4294967295u, 0u, arg_0.x), vec4<bool>(global3[_wgslsmith_index_u32(88797u, 25u)], global3[_wgslsmith_index_u32(arg_0.x, 25u)], global3[_wgslsmith_index_u32(arg_0.x, 25u)], global3[_wgslsmith_index_u32(arg_2, 25u)])) % vec4<u32>(32u)), reverseBits(max(vec4<u32>(32634u, arg_0.x, arg_2, arg_0.x), vec4<u32>(arg_0.x, 5155u, arg_0.x, 4820u))))), 0u);
    let var_1 = -vec4<i32>(u_input.a, ~2147483647i, _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(arg_1, arg_1, 36474i), vec3<i32>(21494i, arg_1, arg_1)), vec3<i32>(u_input.a, arg_1, 2147483647i)), _wgslsmith_mult_vec3_i32(~vec3<i32>(10723i, 1i, arg_1), vec3<i32>(-25347i, -34327i, -2147483647i))), (1i & firstLeadingBit(u_input.a)) << (_wgslsmith_add_u32(func_2(arg_0, false, vec2<f32>(1000f, -1808f), Struct_1(vec4<bool>(global3[_wgslsmith_index_u32(15844u, 25u)], false, global3[_wgslsmith_index_u32(6204u, 25u)], true), 15855i)), ~arg_0.x) % 32u));
    let var_2 = ~arg_0.zz ^ vec2<u32>(var_0.x, _wgslsmith_div_u32(arg_2, ~select(var_0.x, 4294967295u, global3[_wgslsmith_index_u32(arg_0.x, 25u)])));
    var var_3 = _wgslsmith_f_op_f32(max(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(~arg_0.x, arg_0.x), 25u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(arg_2, 25u)])))));
    global3 = array<bool, 25>();
    return ~(var_2.x >> (_wgslsmith_sub_u32(firstLeadingBit(4294967295u), arg_2) % 32u));
}

fn func_4(arg_0: i32, arg_1: vec3<i32>, arg_2: u32, arg_3: vec4<u32>) -> Struct_1 {
    var var_0 = _wgslsmith_add_u32(1u, arg_3.x);
    let var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(global2[_wgslsmith_index_u32(0u, 25u)], global2[_wgslsmith_index_u32(arg_2, 25u)])));
    global2 = array<f32, 25>();
    var_0 = min(func_2(min(arg_3.xyw, _wgslsmith_mod_vec3_u32(~vec3<u32>(1u, 4294967295u, arg_3.x), arg_3.xzy & arg_3.xyz)), any(!vec4<bool>(true, false, global3[_wgslsmith_index_u32(0u, 25u)], global3[_wgslsmith_index_u32(1u, 25u)])), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-752f, var_1)) + vec2<f32>(192f, -905f)), Struct_1(func_3(global3[_wgslsmith_index_u32(~arg_2, 25u)], Struct_1(vec4<bool>(false, true, false, true), 2147483647i), Struct_1(vec4<bool>(global3[_wgslsmith_index_u32(0u, 25u)], global3[_wgslsmith_index_u32(0u, 25u)], global3[_wgslsmith_index_u32(arg_2, 25u)], global3[_wgslsmith_index_u32(arg_2, 25u)]), u_input.a)), -17964i)), func_1((select(vec3<u32>(4294967295u, 63229u, arg_3.x), vec3<u32>(0u, arg_2, 1u), global3[_wgslsmith_index_u32(arg_2, 25u)]) << (firstLeadingBit(arg_3.wxx) % vec3<u32>(32u))) ^ vec3<u32>(16498u | arg_3.x, arg_3.x, arg_2), _wgslsmith_mult_i32(_wgslsmith_mod_i32(arg_1.x, u_input.a), -firstTrailingBit(u_input.a)), firstTrailingBit(~_wgslsmith_dot_vec2_u32(arg_3.wz, vec2<u32>(23427u, 4294967295u)))));
    var_0 = abs(~0u);
    return Struct_1(!vec4<bool>(global3[_wgslsmith_index_u32(func_2(max(arg_3.wxy, arg_3.wzx), true, _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2[_wgslsmith_index_u32(arg_3.x, 25u)], var_1)), Struct_1(vec4<bool>(true, global3[_wgslsmith_index_u32(arg_3.x, 25u)], true, true), arg_0)), 25u)], any(vec4<bool>(global3[_wgslsmith_index_u32(0u, 25u)], global3[_wgslsmith_index_u32(arg_2, 25u)], global3[_wgslsmith_index_u32(0u, 25u)], global3[_wgslsmith_index_u32(48191u, 25u)])), -1i >= arg_1.x, !(!global3[_wgslsmith_index_u32(arg_2, 25u)])), -1i);
}

fn func_5(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: vec3<i32>, arg_3: vec2<u32>) -> bool {
    let var_0 = func_3(true, arg_0, func_4(-2147483647i, -firstLeadingBit(~vec3<i32>(arg_2.x, 4086i, -31061i)), ~reverseBits(arg_3.x >> (arg_1.x % 32u)), vec4<u32>(_wgslsmith_dot_vec2_u32(arg_1.wx, arg_1.yy ^ vec2<u32>(0u, arg_1.x)), arg_3.x, 32898u, 82981u))).x;
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(abs(-2664f)), _wgslsmith_f_op_f32(min(-1639f, -643f)), _wgslsmith_f_op_f32(min(2421f, global2[_wgslsmith_index_u32(arg_3.x, 25u)]))))));
    let var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_1.x * global2[_wgslsmith_index_u32(arg_1.x, 25u)]))) - global2[_wgslsmith_index_u32(9202u, 25u)]), -2170f, _wgslsmith_f_op_f32(abs(1162f))) * vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global2[_wgslsmith_index_u32(arg_1.x, 25u)])))), _wgslsmith_f_op_f32(sign(var_1.x)), _wgslsmith_f_op_f32(select(1181f, var_1.x, !all(vec3<bool>(true, global3[_wgslsmith_index_u32(0u, 25u)], true))))));
    var var_3 = u_input.a;
    global1 = arg_3.x;
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<bool, 25>();
    let var_0 = func_5(func_4(35075i, -_wgslsmith_add_vec3_i32(vec3<i32>(u_input.a, -1i, 0i), vec3<i32>(2147483647i, u_input.a, u_input.a)), abs(firstLeadingBit(44341u)), vec4<u32>(func_1(vec3<u32>(4294967295u, 1u, 1u), u_input.a, 59185u), ~34238u, 4294967295u, ~10020u)), vec4<u32>(1u, 1u, 1u, 1u), vec3<i32>(min(_wgslsmith_sub_i32(1i, -48158i), u_input.a), _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, -5387i, u_input.a), vec3<i32>(u_input.a, 1i, -40486i)), 2147483647i), _wgslsmith_mod_i32(_wgslsmith_mult_i32(u_input.a, u_input.a), 1i)), vec2<u32>(1u, 1u)) | false;
    global1 = max(_wgslsmith_sub_u32(1u, _wgslsmith_dot_vec2_u32(reverseBits(countOneBits(vec2<u32>(4294967295u, 0u))), reverseBits(~vec2<u32>(0u, 96443u)))), ~_wgslsmith_dot_vec2_u32(firstLeadingBit(_wgslsmith_div_vec2_u32(vec2<u32>(17106u, 0u), vec2<u32>(28092u, 1u))), vec2<u32>(1u, 1u)));
    let var_1 = i32(-1i) * -2147483647i;
    var var_2 = 49372u & (select(~_wgslsmith_dot_vec3_u32(vec3<u32>(14948u, 39996u, 23731u), vec3<u32>(4294967295u, 29462u, 0u)), max(1u, 1u), !(11542i < u_input.a)) | 1u);
    var var_3 = 1u;
    var var_4 = Struct_1(vec4<bool>(func_5(func_4(firstLeadingBit(var_1), select(vec3<i32>(u_input.a, var_1, u_input.a), vec3<i32>(u_input.a, u_input.a, -6959i), vec3<bool>(false, false, global3[_wgslsmith_index_u32(0u, 25u)])), max(11699u, 4294967295u), vec4<u32>(1u, 1u, 1u, 1u)), vec4<u32>(1u, select(0u, 1u, false), 57776u, _wgslsmith_sub_u32(4294967295u, 4294967295u)), _wgslsmith_mod_vec3_i32(select(vec3<i32>(2147483647i, u_input.a, 2147483647i), vec3<i32>(var_1, u_input.a, -26220i), vec3<bool>(true, false, true)), vec3<i32>(-1704i, -1i, -67066i)), vec2<u32>(0u, ~43683u)), true, var_0, false), 0i);
    let var_5 = func_4(var_4.b, vec3<i32>(64443i, ~(i32(-1i) * -var_4.b), -(_wgslsmith_mult_i32(u_input.a, -1i) & var_1)), _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 55674u, 0u), vec3<u32>(26345u, 4294967295u, 23695u)), 70931u), vec2<u32>(reverseBits(26986u), _wgslsmith_sub_u32(27890u, 17082u))) << (45678u % 32u), _wgslsmith_sub_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 73402u << (0u % 32u), ~4565u, ~0u), reverseBits(vec4<u32>(1u, 1u, 1u, 1u))), ~vec4<u32>(1u, 1u, 1u, 1u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_i32(func_4(-2147483647i, max(~vec3<i32>(var_4.b, var_1, var_5.b), vec3<i32>(-31281i, -19410i, 1i)), ~1u, _wgslsmith_clamp_vec4_u32(select(vec4<u32>(25162u, 1u, 4294967295u, 14408u), vec4<u32>(1u, 4294967295u, 25143u, 19304u), vec4<bool>(true, var_4.a.x, var_0, var_5.a.x)), ~vec4<u32>(37680u, 48728u, 26727u, 36715u), ~vec4<u32>(42457u, 1u, 1u, 73050u))).b, u_input.a, 40005i), vec4<u32>(0u, func_2(_wgslsmith_div_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 33233u, 4294967295u)), any(!vec4<bool>(true, var_5.a.x, true, false)), vec2<f32>(224f, _wgslsmith_f_op_f32(select(global2[_wgslsmith_index_u32(21559u, 25u)], -1000f, var_5.a.x))), var_5), 4294967295u, _wgslsmith_sub_u32(func_2(~vec3<u32>(4294967295u, 4294967295u, 1u), false, vec2<f32>(544f, global2[_wgslsmith_index_u32(29402u, 25u)]), func_4(u_input.a, vec3<i32>(var_4.b, u_input.a, var_1), 1u, vec4<u32>(1u, 7211u, 18u, 4669u))), 1u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 39454u), vec3<u32>(22502u, 36307u, 39529u)), 25u)] + 1000f)), -682f);
}

