struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec4<bool>,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 32> = array<vec2<i32>, 32>(vec2<i32>(2147483647i, 1i), vec2<i32>(15233i, 0i), vec2<i32>(-33850i, -24121i), vec2<i32>(1i, -1i), vec2<i32>(-28456i, 1i), vec2<i32>(10681i, 0i), vec2<i32>(-1i, 1i), vec2<i32>(-55708i, -10435i), vec2<i32>(2147483647i, 0i), vec2<i32>(0i, 0i), vec2<i32>(40436i, 994i), vec2<i32>(-1i, 45811i), vec2<i32>(-1i, -51977i), vec2<i32>(6512i, i32(-2147483648)), vec2<i32>(40372i, -27454i), vec2<i32>(1i, 58694i), vec2<i32>(i32(-2147483648), -20154i), vec2<i32>(-8757i, 6914i), vec2<i32>(-1i, 14551i), vec2<i32>(57281i, 1i), vec2<i32>(-30849i, 0i), vec2<i32>(-9356i, -17363i), vec2<i32>(-11185i, -46168i), vec2<i32>(-19227i, i32(-2147483648)), vec2<i32>(22758i, -21980i), vec2<i32>(-33252i, -1i), vec2<i32>(0i, -13283i), vec2<i32>(46586i, 2147483647i), vec2<i32>(-38681i, -1i), vec2<i32>(-6594i, -1i), vec2<i32>(18718i, 57682i), vec2<i32>(43933i, 2147483647i));

var<private> global1: Struct_1;

var<private> global2: array<Struct_3, 20> = array<Struct_3, 20>(Struct_3(Struct_2(vec4<bool>(false, false, true, true), 1i, Struct_1(false)), Struct_1(false), Struct_2(vec4<bool>(false, false, false, true), 1i, Struct_1(true))), Struct_3(Struct_2(vec4<bool>(true, true, true, false), -31160i, Struct_1(true)), Struct_1(true), Struct_2(vec4<bool>(true, false, false, true), 15506i, Struct_1(false))), Struct_3(Struct_2(vec4<bool>(false, true, true, false), 2147483647i, Struct_1(true)), Struct_1(false), Struct_2(vec4<bool>(false, false, true, false), -35065i, Struct_1(true))), Struct_3(Struct_2(vec4<bool>(false, false, false, true), 12472i, Struct_1(true)), Struct_1(true), Struct_2(vec4<bool>(true, false, false, true), -4915i, Struct_1(false))), Struct_3(Struct_2(vec4<bool>(true, false, false, true), 2780i, Struct_1(true)), Struct_1(true), Struct_2(vec4<bool>(true, true, false, true), -1i, Struct_1(true))), Struct_3(Struct_2(vec4<bool>(false, true, true, true), -50433i, Struct_1(true)), Struct_1(true), Struct_2(vec4<bool>(true, true, true, true), 30082i, Struct_1(true))), Struct_3(Struct_2(vec4<bool>(true, true, true, false), 1i, Struct_1(false)), Struct_1(true), Struct_2(vec4<bool>(true, false, false, false), 32688i, Struct_1(true))), Struct_3(Struct_2(vec4<bool>(false, false, false, false), 27013i, Struct_1(false)), Struct_1(false), Struct_2(vec4<bool>(true, true, true, true), 21706i, Struct_1(true))), Struct_3(Struct_2(vec4<bool>(true, false, false, false), 0i, Struct_1(false)), Struct_1(false), Struct_2(vec4<bool>(false, false, false, true), -25747i, Struct_1(false))), Struct_3(Struct_2(vec4<bool>(false, true, false, false), 1i, Struct_1(true)), Struct_1(true), Struct_2(vec4<bool>(false, false, true, true), 2147483647i, Struct_1(true))), Struct_3(Struct_2(vec4<bool>(false, true, true, true), 15658i, Struct_1(true)), Struct_1(true), Struct_2(vec4<bool>(true, false, true, true), -34865i, Struct_1(false))), Struct_3(Struct_2(vec4<bool>(true, false, false, true), -23465i, Struct_1(false)), Struct_1(true), Struct_2(vec4<bool>(true, true, false, false), -1i, Struct_1(false))), Struct_3(Struct_2(vec4<bool>(false, true, false, true), 75730i, Struct_1(false)), Struct_1(false), Struct_2(vec4<bool>(false, false, true, false), 38254i, Struct_1(false))), Struct_3(Struct_2(vec4<bool>(false, false, false, true), 1i, Struct_1(true)), Struct_1(false), Struct_2(vec4<bool>(false, false, true, false), 2147483647i, Struct_1(false))), Struct_3(Struct_2(vec4<bool>(false, false, true, true), 2147483647i, Struct_1(true)), Struct_1(true), Struct_2(vec4<bool>(true, true, true, false), 28796i, Struct_1(true))), Struct_3(Struct_2(vec4<bool>(true, true, false, false), i32(-2147483648), Struct_1(true)), Struct_1(false), Struct_2(vec4<bool>(true, false, false, false), i32(-2147483648), Struct_1(false))), Struct_3(Struct_2(vec4<bool>(true, false, true, false), 0i, Struct_1(true)), Struct_1(true), Struct_2(vec4<bool>(true, true, false, false), 0i, Struct_1(false))), Struct_3(Struct_2(vec4<bool>(false, false, false, true), -29662i, Struct_1(false)), Struct_1(true), Struct_2(vec4<bool>(false, true, true, false), -1i, Struct_1(false))), Struct_3(Struct_2(vec4<bool>(false, false, true, true), -35682i, Struct_1(true)), Struct_1(true), Struct_2(vec4<bool>(true, true, true, false), 2147483647i, Struct_1(true))), Struct_3(Struct_2(vec4<bool>(false, false, true, true), 1i, Struct_1(false)), Struct_1(false), Struct_2(vec4<bool>(false, false, false, false), -1i, Struct_1(true))));

var<private> global3: array<f32, 4> = array<f32, 4>(348f, 317f, 1108f, 1000f);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec2<u32>) -> u32 {
    let var_0 = global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(1u, u_input.a.x), 20u)];
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1320f), _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(arg_0.x, 4u)] + global3[_wgslsmith_index_u32(26938u, 4u)])))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(4294967295u, 4u)]) * _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(27052u, 4u)] - global3[_wgslsmith_index_u32(51334u, 4u)])) * global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(~4294967295u, ~9424u), 4u)])), -1000f);
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1708f)))) * global3[_wgslsmith_index_u32(~19363u, 4u)]);
    let var_3 = Struct_1(any(select(var_0.a.a, !select(var_0.a.a, vec4<bool>(true, true, false, false), true), var_0.a.a)));
    global2 = array<Struct_3, 20>();
    return select(0u, ~select(arg_0.x, _wgslsmith_div_u32(arg_0.x, 44108u), true), false || any(!vec4<bool>(global1.a, var_0.b.a, var_0.c.a.x, var_3.a)));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2, arg_2: vec3<i32>, arg_3: bool) -> vec2<u32> {
    let var_0 = Struct_3(Struct_2(!(!vec4<bool>(true, arg_3, arg_0.c.c.a, false)), ~2147483647i, Struct_1(any(select(arg_0.a.a.wy, arg_0.a.a.wy, arg_1.a.xw)))), Struct_1(true), Struct_2(!vec4<bool>(!arg_3, true, arg_3, u_input.a.x != 52632u), firstLeadingBit(_wgslsmith_mod_i32(arg_0.a.b << (54548u % 32u), -1i)), Struct_1(!(9092u == u_input.a.x))));
    let var_1 = vec2<i32>(firstTrailingBit(countOneBits(var_0.c.b & 4052i) >> (_wgslsmith_add_u32(firstLeadingBit(u_input.a.x), u_input.a.x) % 32u)), -var_0.a.b);
    let var_2 = var_0.c.c;
    let var_3 = -arg_2.xz;
    var var_4 = vec3<f32>(_wgslsmith_f_op_f32(exp2(global3[_wgslsmith_index_u32(u_input.a.x, 4u)])), global3[_wgslsmith_index_u32(~_wgslsmith_sub_u32(1u, ~4294967295u), 4u)], _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(max(4294967295u, u_input.a.x), u_input.a.x ^ 1u), u_input.a.xx), 4u)]));
    return u_input.a.xz;
}

fn func_2() -> vec4<bool> {
    let var_0 = 18906i;
    global2 = array<Struct_3, 20>();
    let var_1 = func_4(global2[_wgslsmith_index_u32(~func_3(_wgslsmith_add_vec2_u32(u_input.a.zx, u_input.a.yy & u_input.a.zy)), 20u)], Struct_2(vec4<bool>(!(566f == global3[_wgslsmith_index_u32(88389u, 4u)]), all(!vec3<bool>(global1.a, global1.a, false)), all(select(vec4<bool>(global1.a, global1.a, true, global1.a), vec4<bool>(global1.a, true, global1.a, global1.a), vec4<bool>(true, global1.a, global1.a, true))), any(vec2<bool>(false, global1.a)) && true), (countOneBits(0i) | _wgslsmith_sub_i32(var_0, var_0)) & -52192i, Struct_1((4294967295u == u_input.a.x) == (0u <= u_input.a.x))), reverseBits(~_wgslsmith_mult_vec3_i32(vec3<i32>(-1i, var_0, var_0) >> (vec3<u32>(u_input.a.x, u_input.a.x, 4294967295u) % vec3<u32>(32u)), -vec3<i32>(var_0, 2147483647i, var_0))), true);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(903f, 1509f))))) + global3[_wgslsmith_index_u32(~24640u, 4u)]));
    global3 = array<f32, 4>();
    return vec4<bool>(false, global1.a, !any(select(select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), false), !vec3<bool>(false, global1.a, global1.a), !vec3<bool>(true, global1.a, true))), false);
}

fn func_1() -> i32 {
    global0 = array<vec2<i32>, 32>();
    var var_0 = ~u_input.a;
    var var_1 = !vec3<bool>(any(!func_2()), !global1.a, true);
    var_1 = vec3<bool>(!(!global1.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(var_0.x, 4u)] - -655f))) > global3[_wgslsmith_index_u32(u_input.a.x, 4u)], var_1.x);
    let var_2 = _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(abs(17906i), _wgslsmith_clamp_i32(1i, -2147483647i, -14474i), 11695i & _wgslsmith_clamp_i32(0i, 2147483647i, 2147483647i)), _wgslsmith_mod_vec3_i32(firstLeadingBit(_wgslsmith_sub_vec3_i32(vec3<i32>(-13559i, -12993i, 36491i), vec3<i32>(-34710i, -8909i, 12886i))), select(-vec3<i32>(0i, 1i, 9956i), firstLeadingBit(vec3<i32>(-1i, 1i, 2147483647i)), func_2().zxy))), -891i);
    return var_2 | firstTrailingBit(_wgslsmith_div_i32(_wgslsmith_sub_i32(var_2, var_2), 29041i & countOneBits(var_2)));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<f32, 4>();
    var var_0 = vec3<i32>(-abs(countOneBits(2147483647i)), _wgslsmith_mult_i32(_wgslsmith_add_i32(~54258i << (u_input.a.x % 32u), func_1()), ~select(abs(-1i), countOneBits(54846i), global1.a)), ~countOneBits(~(~(-7697i))));
    var var_1 = _wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_dot_vec2_u32(u_input.a.zz, _wgslsmith_sub_vec2_u32(u_input.a.zy, vec2<u32>(u_input.a.x, 37433u))), countOneBits(12320u), ~u_input.a.x | u_input.a.x, _wgslsmith_add_u32(_wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, 0u), u_input.a.x)) & reverseBits(_wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(1u, 0u, 1u, u_input.a.x), vec4<u32>(62316u, u_input.a.x, 1u, 0u)), _wgslsmith_sub_vec4_u32(vec4<u32>(18091u, 0u, 4294967295u, 0u), vec4<u32>(1u, 52856u, u_input.a.x, u_input.a.x)), ~vec4<u32>(1u, 15255u, 0u, u_input.a.x))), ~(~vec4<u32>(0u, 67222u, u_input.a.x, 4294967295u) << (vec4<u32>(u_input.a.x, ~4294967295u, u_input.a.x << (u_input.a.x % 32u), ~87936u) % vec4<u32>(32u))));
    global3 = array<f32, 4>();
    var var_2 = _wgslsmith_clamp_u32(~(~(~min(u_input.a.x, u_input.a.x))), ~(~(~countOneBits(var_1.x))), var_1.x);
    let var_3 = abs(countOneBits(vec4<u32>(var_1.x, _wgslsmith_add_u32(47705u, u_input.a.x) ^ u_input.a.x, ~countOneBits(54945u), u_input.a.x)));
    let var_4 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(u_input.a.x, 4u)])), _wgslsmith_div_f32(_wgslsmith_div_f32(global3[_wgslsmith_index_u32(28959u, 4u)], global3[_wgslsmith_index_u32(11889u, 4u)]), -174f))))) != global3[_wgslsmith_index_u32(min(var_1.x, abs(~_wgslsmith_dot_vec2_u32(u_input.a.yx, vec2<u32>(var_1.x, 4294967295u)))), 4u)];
    global2 = array<Struct_3, 20>();
    let x = u_input.a;
    s_output = StorageBuffer(~reverseBits(countOneBits(abs(70356u))), (~0i & var_0.x) | _wgslsmith_clamp_i32(2147483647i, var_0.x, 1i), global3[_wgslsmith_index_u32(firstTrailingBit(82019u), 4u)]);
}

