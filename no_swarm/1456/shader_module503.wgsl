struct Struct_1 {
    a: bool,
    b: vec4<u32>,
    c: vec4<i32>,
    d: vec2<i32>,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec2<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 21>;

var<private> global1: array<f32, 11>;

var<private> global2: vec3<bool>;

var<private> global3: i32 = -34901i;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2(arg_0: i32, arg_1: Struct_1, arg_2: bool) -> Struct_3 {
    return Struct_3(Struct_2(!vec3<bool>(true, arg_1.a, arg_1.a)));
}

fn func_3(arg_0: Struct_3) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(countOneBits(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(11073u, 21u)], 21u)], 21u)] << (1u % 32u), 21u)]), 11u)], _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(4294967295u, 11u)]), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(37118u, 21u)], 11u)] * -431f))))) * 1170f);
    global0 = array<u32, 21>();
    global3 = _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -u_input.c.x, _wgslsmith_dot_vec3_i32(u_input.d.wxx, -vec3<i32>(u_input.a.x, -15288i, u_input.b.x)), ~u_input.d.x), vec4<i32>(-11611i, firstTrailingBit(u_input.d.x), _wgslsmith_dot_vec2_i32(u_input.a, ~(-vec2<i32>(u_input.a.x, u_input.c.x))), abs(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d.x, u_input.c.x), -u_input.d.zy))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(497f)));
    var var_2 = Struct_1(false, ~_wgslsmith_mod_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(abs(global0[_wgslsmith_index_u32(4294967295u, 21u)]), 21u)], 21u)], _wgslsmith_dot_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(31030u, 21u)], 21u)], 21u)], global0[_wgslsmith_index_u32(1u, 21u)]), vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(16717u, 21u)], 21u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(42986u, 21u)], 21u)])), countOneBits(8315u), _wgslsmith_dot_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 21u)], 21u)], 21u)], 62857u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 21u)], 21u)], 21u)], 62040u), vec4<u32>(global0[_wgslsmith_index_u32(20244u, 21u)], global0[_wgslsmith_index_u32(42674u, 21u)], global0[_wgslsmith_index_u32(0u, 21u)], global0[_wgslsmith_index_u32(38838u, 21u)]))), max(~vec4<u32>(global0[_wgslsmith_index_u32(0u, 21u)], global0[_wgslsmith_index_u32(6342u, 21u)], global0[_wgslsmith_index_u32(0u, 21u)], 1u), ~vec4<u32>(1u, 39205u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(80563u, 21u)], 21u)], 21u)], 21u)], 21u)], 32966u))), vec4<i32>(~_wgslsmith_mod_i32(max(7367i, -2147483647i), u_input.b.x), firstTrailingBit(3573i), u_input.d.x, ~(u_input.c.x << (~17811u % 32u))), ~vec2<i32>(min(_wgslsmith_clamp_i32(u_input.c.x, -9998i, u_input.a.x), u_input.c.x), (i32(-1i) * -22127i) | -u_input.d.x));
    return Struct_1(var_2.a && true, _wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(~select(vec4<u32>(var_2.b.x, var_2.b.x, 4294967295u, 1u), vec4<u32>(1u, 0u, 4294967295u, 46027u), vec4<bool>(global2.x, false, true, false)), abs(~vec4<u32>(global0[_wgslsmith_index_u32(1u, 21u)], global0[_wgslsmith_index_u32(var_2.b.x, 21u)], var_2.b.x, var_2.b.x))), var_2.b << (_wgslsmith_mult_vec4_u32(min(vec4<u32>(37936u, var_2.b.x, global0[_wgslsmith_index_u32(var_2.b.x, 21u)], var_2.b.x), var_2.b), ~vec4<u32>(1u, global0[_wgslsmith_index_u32(var_2.b.x, 21u)], 0u, 4294967295u)) % vec4<u32>(32u)), _wgslsmith_sub_vec4_u32(reverseBits(min(vec4<u32>(1u, 9900u, var_2.b.x, global0[_wgslsmith_index_u32(67300u, 21u)]), vec4<u32>(0u, 1u, 0u, global0[_wgslsmith_index_u32(81783u, 21u)]))), ~var_2.b)), select(~vec4<i32>(17770i, 8871i, 1i, var_2.c.x) & -_wgslsmith_sub_vec4_i32(u_input.d, vec4<i32>(u_input.d.x, var_2.d.x, -13919i, 1i)), -min(abs(vec4<i32>(0i, u_input.b.x, var_2.d.x, 1i)), ~vec4<i32>(-1i, u_input.c.x, u_input.a.x, u_input.a.x)), !select(select(vec4<bool>(global2.x, true, arg_0.a.a.x, false), vec4<bool>(global2.x, true, global2.x, arg_0.a.a.x), false), select(vec4<bool>(global2.x, true, true, global2.x), vec4<bool>(true, true, false, var_2.a), vec4<bool>(arg_0.a.a.x, arg_0.a.a.x, global2.x, true)), arg_0.a.a.x)), -(~u_input.b));
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: vec4<i32>, arg_3: i32) -> Struct_3 {
    global1 = array<f32, 11>();
    var var_0 = ~vec2<i32>(arg_3, ~(arg_3 | _wgslsmith_div_i32(1i, -35727i)));
    var var_1 = func_2(1i, arg_0, any(vec3<bool>(any(vec3<bool>(false, false, arg_0.a)), arg_0.a, global2.x)) | !any(vec3<bool>(true, arg_0.a, global2.x)));
    let var_2 = func_2(-57727i, arg_0, true);
    var var_3 = var_2;
    return Struct_3(func_2(arg_2.x, arg_0, !(!(!global2.x))).a);
}

fn func_5(arg_0: Struct_3) -> Struct_1 {
    let var_0 = Struct_2(arg_0.a.a);
    global1 = array<f32, 11>();
    global0 = array<u32, 21>();
    var var_1 = ~max(firstLeadingBit(vec2<u32>(global0[_wgslsmith_index_u32(~0u, 21u)], abs(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(82163u, 21u)], 21u)], 21u)], 21u)]))), ((vec2<u32>(4294967295u, global0[_wgslsmith_index_u32(1u, 21u)]) | vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(17463u, 21u)], 21u)], 21u)], 31338u)) & vec2<u32>(global0[_wgslsmith_index_u32(22463u, 21u)], 4294967295u)) | ~_wgslsmith_div_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 21u)], 21u)], 21u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(38887u, 21u)], 21u)], 21u)]), vec2<u32>(global0[_wgslsmith_index_u32(66786u, 21u)], global0[_wgslsmith_index_u32(1u, 21u)])));
    global0 = array<u32, 21>();
    return func_3(arg_0);
}

fn func_1() -> Struct_2 {
    global0 = array<u32, 21>();
    global3 = u_input.b.x;
    let var_0 = u_input.d.x;
    var var_1 = func_5(func_4(func_3(func_2(u_input.d.x, Struct_1(false, vec4<u32>(4294967295u, global0[_wgslsmith_index_u32(1u, 21u)], 63547u, global0[_wgslsmith_index_u32(1u, 21u)]), vec4<i32>(u_input.b.x, u_input.a.x, -2147483647i, var_0), u_input.d.zw), any(vec3<bool>(true, true, false)))), global1[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(abs(60099u), 21u)], 21u)], 11u)], u_input.d, var_0));
    global3 = 0i;
    return Struct_2(!(!vec3<bool>(true, !global2.x, true)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<f32, 11>();
    var var_0 = u_input.d.x < u_input.c.x;
    let var_1 = func_1();
    var var_2 = Struct_2(vec3<bool>(true == (~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 21u)], 21u)], 21u)], 21u)], 21u)], 21u)] >= global0[_wgslsmith_index_u32(min(41435u, global0[_wgslsmith_index_u32(0u, 21u)]), 21u)]), func_1().a.x, func_4(Struct_1(!global2.x, ~vec4<u32>(0u, global0[_wgslsmith_index_u32(58823u, 21u)], 40705u, 4294967295u), ~vec4<i32>(1i, u_input.d.x, u_input.a.x, u_input.a.x), ~vec2<i32>(u_input.d.x, u_input.b.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(4294967295u, 11u)]), _wgslsmith_f_op_f32(round(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(40388u, 21u)], 21u)], 11u)])))), min(~vec4<i32>(u_input.b.x, -37535i, u_input.d.x, u_input.a.x), ~u_input.d), -1i).a.a.x));
    var var_3 = Struct_1(var_1.a.x, ~(func_5(func_2(-11526i, Struct_1(var_1.a.x, vec4<u32>(global0[_wgslsmith_index_u32(19881u, 21u)], 23080u, global0[_wgslsmith_index_u32(34039u, 21u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 21u)], 21u)]), vec4<i32>(u_input.b.x, -10972i, 45481i, 1i), u_input.c), var_2.a.x)).b >> (vec4<u32>(global0[_wgslsmith_index_u32(1u, 21u)], max(48324u, 1u), 57764u, abs(43654u)) % vec4<u32>(32u))), select(vec4<i32>(-28792i, abs(u_input.c.x), u_input.b.x, u_input.a.x), u_input.d, vec4<bool>(1i != u_input.b.x, true, !var_2.a.x, func_3(Struct_3(Struct_2(var_1.a))).a)) | u_input.d, u_input.d.zz);
    var var_4 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(636f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_3.b.x, 21u)], 11u)], -456f))), -581f, true)), false))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(min(u_input.a.x, _wgslsmith_add_i32(firstTrailingBit(-8224i), var_3.c.x)), -34319i), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(262f + global1[_wgslsmith_index_u32(82676u, 11u)]) * _wgslsmith_div_f32(1495f, 459f)), -723f))));
}

