struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: vec3<bool>,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: u32,
    b: vec4<bool>,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
}

struct Struct_5 {
    a: i32,
    b: Struct_2,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
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

var<private> global0: array<vec4<bool>, 21> = array<vec4<bool>, 21>(vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, false));

var<private> global1: bool;

var<private> global2: array<vec4<f32>, 1>;

var<private> global3: vec2<u32> = vec2<u32>(57457u, 90129u);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec4<u32>, arg_1: vec4<f32>, arg_2: vec2<u32>, arg_3: i32) -> bool {
    var var_0 = vec2<bool>(true, true);
    let var_1 = !(!((arg_3 << (global3.x % 32u)) < -1i));
    var var_2 = vec4<bool>(!all(select(select(vec2<bool>(false, false), vec2<bool>(true, true), var_0.x), !vec2<bool>(false, var_0.x), vec2<bool>(true, true))), arg_1.x <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1364f - arg_1.x)))), !var_1 || true, var_1);
    global3 = _wgslsmith_sub_vec2_u32(~(_wgslsmith_mod_vec2_u32(arg_0.zz, ~arg_2) & reverseBits(_wgslsmith_clamp_vec2_u32(vec2<u32>(arg_0.x, 0u), arg_2, vec2<u32>(arg_0.x, 1u)))), select(~arg_0.zw >> (arg_0.yw % vec2<u32>(32u)), vec2<u32>(~4294967295u, 1u | global3.x), select(vec2<bool>(true, var_0.x), vec2<bool>(var_2.x, var_0.x), !var_2.wz)) & ~arg_0.yw);
    return arg_2.x <= u_input.a;
}

fn func_2(arg_0: Struct_1, arg_1: i32) -> bool {
    var var_0 = select(!vec4<bool>(false, select(true, arg_0.a.x | arg_0.a.x, any(vec3<bool>(arg_0.a.x, true, arg_0.a.x))), !arg_0.a.x, true && (false == arg_0.a.x)), select(vec4<bool>(!(global3.x <= 56178u), true, false, arg_0.a.x), arg_0.a, arg_1 < (arg_1 ^ arg_1)), select(!vec4<bool>(arg_0.a.x, arg_0.a.x, false, arg_0.a.x), !vec4<bool>(any(vec2<bool>(arg_0.a.x, arg_0.a.x)), func_3(vec4<u32>(u_input.a, global3.x, global3.x, 93597u), global2[_wgslsmith_index_u32(2619u, 1u)], vec2<u32>(44366u, 1u), 7431i), any(arg_0.a.zx), true), !(!vec4<bool>(arg_0.a.x, arg_0.a.x, arg_0.a.x, true))));
    var var_1 = 25781u;
    let var_2 = firstLeadingBit(-vec2<i32>(_wgslsmith_sub_i32(arg_1, arg_1), ~arg_1) | _wgslsmith_clamp_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(arg_1, arg_1), _wgslsmith_add_i32(arg_1, 1i)), _wgslsmith_clamp_vec2_i32(countOneBits(vec2<i32>(-37796i, 10894i)), -vec2<i32>(arg_1, arg_1), ~vec2<i32>(0i, arg_1)), vec2<i32>(arg_1 & arg_1, 63711i)));
    global2 = array<vec4<f32>, 1>();
    let var_3 = -arg_1;
    return !(!select(var_0.x, all(vec2<bool>(true, false)), arg_0.a.x));
}

fn func_1(arg_0: vec4<f32>, arg_1: vec2<i32>) -> vec3<bool> {
    let var_0 = max(2147483647i << (u_input.a % 32u), -arg_1.x);
    global3 = ~_wgslsmith_mod_vec2_u32(vec2<u32>(global3.x, u_input.a), ~(~(~vec2<u32>(26113u, 6726u))));
    global1 = _wgslsmith_mod_u32(7927u, ~1u) > global3.x;
    let var_1 = abs(~vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(14165u, u_input.a, 38626u), vec3<u32>(global3.x, u_input.a, 5475u)) ^ abs(1u), 82757u, u_input.a));
    global3 = _wgslsmith_add_vec2_u32(vec2<u32>(~_wgslsmith_sub_u32(~global3.x, 4294967295u), 15173u), vec2<u32>(reverseBits(4294967295u), 0u));
    return select(vec3<bool>(func_2(Struct_1(vec4<bool>(true, false, true, false)), 1i), ~global3.x >= 22331u, true), !vec3<bool>(any(select(vec4<bool>(true, false, true, false), global0[_wgslsmith_index_u32(u_input.a, 21u)], global0[_wgslsmith_index_u32(26413u, 21u)])), true, true), true);
}

fn func_4(arg_0: bool) -> vec2<u32> {
    var var_0 = select(!(!vec3<bool>(true, false, arg_0)), func_1(_wgslsmith_f_op_vec4_f32(global2[_wgslsmith_index_u32(1u, 1u)] - global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, global3.x), 1u)]), -vec2<i32>(countOneBits(-51027i), i32(-1i) * -13001i)), arg_0);
    var var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(-113f))))), 1f)));
    var var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-886f, 127f, 350f, 146f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global2[_wgslsmith_index_u32(global3.x, 1u)])))), global2[_wgslsmith_index_u32(4294967295u, 1u)]);
    let var_3 = Struct_4(Struct_2(vec2<bool>(all(select(vec3<bool>(false, false, arg_0), vec3<bool>(false, true, var_0.x), var_0.x)), false), Struct_1(!global0[_wgslsmith_index_u32(firstTrailingBit(23600u), 21u)]), !select(select(vec3<bool>(false, arg_0, var_0.x), vec3<bool>(false, false, var_0.x), false), vec3<bool>(true, var_0.x, false), vec3<bool>(arg_0, true, var_0.x)), Struct_1(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(0u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, global3.x), vec2<u32>(0u, global3.x))), 21u)]), 4294967295u), Struct_1(vec4<bool>(false, var_0.x, var_0.x, var_0.x)));
    let var_4 = Struct_1(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(select(vec4<u32>(71659u | u_input.a, var_3.a.e, var_3.a.e, 4294967295u), vec4<u32>(reverseBits(40811u), 28459u, ~1u, 1u), true), ~firstLeadingBit(~vec4<u32>(u_input.a, u_input.a, global3.x, 97441u))), 21u)]);
    return vec2<u32>(u_input.a, var_3.a.e);
}

fn func_5(arg_0: vec2<u32>, arg_1: vec2<i32>, arg_2: vec4<i32>) -> Struct_1 {
    global3 = ~(~firstTrailingBit(_wgslsmith_clamp_vec2_u32(arg_0 | arg_0, arg_0, arg_0 >> (arg_0 % vec2<u32>(32u)))));
    var var_0 = !func_1(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -132f), 1f, _wgslsmith_f_op_f32(min(-892f, 965f)), -505f))), countOneBits(vec2<i32>(-arg_1.x, 0i))).x;
    var var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-124f, 349f, -334f, -1223f) * _wgslsmith_f_op_vec4_f32(vec4<f32>(885f, -334f, -2384f, 835f) + global2[_wgslsmith_index_u32(1u, 1u)])) + vec4<f32>(560f, 1f, 2130f, 109f)), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(global2[_wgslsmith_index_u32(global3.x, 1u)], vec4<f32>(-881f, -215f, 151f, 1912f)) + _wgslsmith_f_op_vec4_f32(-global2[_wgslsmith_index_u32(global3.x, 1u)]))))), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-1000f)), _wgslsmith_f_op_f32(floor(193f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(958f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1000f)) + _wgslsmith_f_op_f32(f32(-1f) * -145f))), 343f), !(!(!select(global0[_wgslsmith_index_u32(global3.x, 21u)], vec4<bool>(false, true, true, true), true)))));
    var var_2 = arg_0.x;
    let var_3 = all(select(func_1(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1088f, 485f, var_1.x, var_1.x))), -arg_1), !vec3<bool>(arg_1.x >= 2147483647i, true, true), !vec3<bool>(false, select(true, true, false), true)));
    return Struct_1(!vec4<bool>(var_3, true, true, any(vec2<bool>(var_3, true))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!(!vec3<bool>(any(vec2<bool>(false, true)), select(true, false, true), true)));
    global1 = true;
    var var_1 = Struct_2(!(!select(var_0.yy, select(var_0.yx, var_0.xx, vec2<bool>(true, var_0.x)), all(vec3<bool>(true, true, var_0.x)))), func_5(func_4(any(func_1(global2[_wgslsmith_index_u32(107158u, 1u)], vec2<i32>(2147483647i, 1i)))), vec2<i32>(2147483647i, ~1i << (_wgslsmith_mod_u32(global3.x, 1u) % 32u)), ~max(reverseBits(vec4<i32>(-1i, 1i, -21668i, 88910i)), firstLeadingBit(vec4<i32>(-2147483647i, 35898i, -19372i, 34405i)))), vec3<bool>(false, var_0.x, true), func_5(vec2<u32>(u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(18263u, 60968u, u_input.a), vec3<u32>(1u, 4294967295u, global3.x))) << (~reverseBits(vec2<u32>(74139u, global3.x)) % vec2<u32>(32u)), ~vec2<i32>(1i, 1i), select(vec4<i32>(1i, 1i, 1i, 1i), (vec4<i32>(70442i, -14992i, 1i, -1i) << (vec4<u32>(35254u, 0u, 4294967295u, global3.x) % vec4<u32>(32u))) << (firstLeadingBit(vec4<u32>(u_input.a, 50175u, global3.x, 0u)) % vec4<u32>(32u)), var_0.x)), global3.x);
    global1 = any(!vec3<bool>(var_1.d.a.x, var_0.x, func_2(var_1.b, -1i) && func_1(vec4<f32>(-1377f, 631f, 100f, -1000f), vec2<i32>(-21968i, 0i)).x));
    var var_2 = _wgslsmith_mod_vec3_i32(vec3<i32>(1i, 1i, 1i), vec3<i32>(-_wgslsmith_mod_i32(~(-25359i), select(-5307i, -37236i, var_1.c.x)), 39584i, 2147483647i));
    var_1 = Struct_2(vec2<bool>(var_0.x, var_0.x), func_5(~(~vec2<u32>(4294967295u, global3.x) | vec2<u32>(4294967295u, 66116u)), ~vec2<i32>(_wgslsmith_dot_vec2_i32(var_2.yz, var_2.xx), _wgslsmith_mult_i32(var_2.x, var_2.x)), select(vec4<i32>(var_2.x, -2147483647i, -6617i, 12159i) | (vec4<i32>(var_2.x, var_2.x, var_2.x, var_2.x) >> (vec4<u32>(56106u, global3.x, 4294967295u, 0u) % vec4<u32>(32u))), -vec4<i32>(-1i, -8086i, -1551i, var_2.x) & vec4<i32>(-69605i, var_2.x, -2147483647i, 0i), true)), var_0, var_1.d, _wgslsmith_mod_u32(global3.x, ~_wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 1u, u_input.a), reverseBits(vec3<u32>(1u, 39973u, u_input.a)))));
    var var_3 = Struct_1(var_1.b.a);
    global0 = array<vec4<bool>, 21>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_i32(-1i, ~firstLeadingBit(~var_2.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1667f * -1252f)))));
}

