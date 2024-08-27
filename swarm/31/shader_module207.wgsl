struct Struct_1 {
    a: i32,
    b: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(36145i, -10844i);

var<private> global1: array<Struct_1, 26> = array<Struct_1, 26>(Struct_1(207i, -23708i), Struct_1(-34657i, 0i), Struct_1(0i, 0i), Struct_1(-25200i, -2446i), Struct_1(i32(-2147483648), 2147483647i), Struct_1(-1i, 1i), Struct_1(37056i, 21831i), Struct_1(0i, 2415i), Struct_1(0i, 2147483647i), Struct_1(1i, 1i), Struct_1(0i, 1i), Struct_1(2147483647i, -2004i), Struct_1(-15906i, -1i), Struct_1(0i, -12149i), Struct_1(-21976i, 27154i), Struct_1(-9741i, 2147483647i), Struct_1(-20810i, -17636i), Struct_1(13220i, i32(-2147483648)), Struct_1(0i, -14557i), Struct_1(2147483647i, -11242i), Struct_1(-32129i, 41032i), Struct_1(-14461i, 1i), Struct_1(-35817i, i32(-2147483648)), Struct_1(66923i, 1i), Struct_1(61466i, -1i), Struct_1(33041i, -32751i));

var<private> global2: array<vec4<u32>, 28> = array<vec4<u32>, 28>(vec4<u32>(8313u, 6316u, 2564u, 1u), vec4<u32>(0u, 26391u, 91630u, 18198u), vec4<u32>(0u, 46514u, 1u, 4294967295u), vec4<u32>(4294967295u, 127512u, 4294967295u, 42895u), vec4<u32>(4294967295u, 1u, 0u, 92786u), vec4<u32>(44455u, 48675u, 0u, 4294967295u), vec4<u32>(4294967295u, 1u, 0u, 45607u), vec4<u32>(21774u, 14067u, 4294967295u, 4294967295u), vec4<u32>(39252u, 4294967295u, 4294967295u, 1u), vec4<u32>(1u, 46247u, 47828u, 112039u), vec4<u32>(1u, 78321u, 81095u, 1u), vec4<u32>(4294967295u, 0u, 13675u, 693u), vec4<u32>(0u, 36906u, 4294967295u, 4294967295u), vec4<u32>(53913u, 1u, 34603u, 50324u), vec4<u32>(1u, 23717u, 24592u, 36479u), vec4<u32>(75333u, 92310u, 0u, 50545u), vec4<u32>(37782u, 4294967295u, 0u, 44852u), vec4<u32>(1u, 0u, 4294967295u, 1u), vec4<u32>(4294967295u, 4294967295u, 48927u, 0u), vec4<u32>(27435u, 1u, 6030u, 80333u), vec4<u32>(32790u, 32796u, 59674u, 0u), vec4<u32>(51435u, 34026u, 1u, 66079u), vec4<u32>(45997u, 4294967295u, 1u, 24192u), vec4<u32>(28479u, 12180u, 3678u, 0u), vec4<u32>(1u, 16261u, 4294967295u, 13904u), vec4<u32>(11033u, 0u, 51474u, 0u), vec4<u32>(4294967295u, 1u, 1u, 1u), vec4<u32>(23149u, 15706u, 4294967295u, 17611u));

var<private> global3: array<Struct_1, 25> = array<Struct_1, 25>(Struct_1(-55620i, i32(-2147483648)), Struct_1(2147483647i, 0i), Struct_1(7275i, -1i), Struct_1(-21031i, 2147483647i), Struct_1(i32(-2147483648), -8415i), Struct_1(0i, i32(-2147483648)), Struct_1(1i, 0i), Struct_1(-81314i, 1i), Struct_1(1i, -7364i), Struct_1(0i, -8363i), Struct_1(22805i, 1i), Struct_1(-3971i, 2147483647i), Struct_1(-7073i, -28694i), Struct_1(-10631i, 1i), Struct_1(2147483647i, 42098i), Struct_1(i32(-2147483648), -26115i), Struct_1(2147483647i, 2147483647i), Struct_1(-34199i, i32(-2147483648)), Struct_1(2147483647i, 1i), Struct_1(-19977i, -1i), Struct_1(8152i, -6837i), Struct_1(0i, i32(-2147483648)), Struct_1(2147483647i, -1i), Struct_1(-1i, -46087i), Struct_1(1i, 20286i));

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32, arg_1: vec3<u32>) -> u32 {
    var var_0 = _wgslsmith_mod_vec4_i32(min(_wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, u_input.a.x, 192i | u_input.a.x, 0i), vec4<i32>(0i, 2147483647i, min(arg_0, global0.a), _wgslsmith_add_i32(global0.a, arg_0))), ~firstTrailingBit(_wgslsmith_div_vec4_i32(vec4<i32>(0i, arg_0, 3041i, -1i), vec4<i32>(0i, 1i, arg_0, arg_0)))), _wgslsmith_div_vec4_i32(vec4<i32>(~(~arg_0), _wgslsmith_div_i32(firstLeadingBit(2147483647i), firstTrailingBit(-15205i)), reverseBits(u_input.a.x), -12173i), _wgslsmith_div_vec4_i32(firstLeadingBit(vec4<i32>(-6265i, global0.b, u_input.a.x, global0.b)), abs(abs(vec4<i32>(-1i, 0i, -6522i, arg_0))))));
    var var_1 = global1[_wgslsmith_index_u32(select(arg_1.x, 1u, !(!all(vec2<bool>(false, true)))), 26u)];
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-374f, -769f, 599f, 739f))))))) + _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(202f))), 1f, 2011f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(1132f)), _wgslsmith_f_op_f32(-196f - -1450f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-982f, -1000f, 122f, 535f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-400f, -248f, 497f, -1220f))))));
    let var_3 = Struct_1(-35738i, var_1.a);
    var var_4 = _wgslsmith_div_u32(arg_1.x, arg_1.x ^ _wgslsmith_mult_u32(arg_1.x, _wgslsmith_clamp_u32(50139u, arg_1.x, arg_1.x)));
    return select(~firstLeadingBit(53124u), _wgslsmith_clamp_u32(52511u, arg_1.x, arg_1.x), true);
}

fn func_2(arg_0: vec2<bool>) -> Struct_1 {
    global0 = global3[_wgslsmith_index_u32(~abs(func_3(-(~global0.a), ~max(vec3<u32>(30622u, 13474u, 12455u), vec3<u32>(4803u, 0u, 62546u)))), 25u)];
    let var_0 = _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1701f + -1321f) + 1679f), 137f)));
    let var_1 = global3[_wgslsmith_index_u32(reverseBits(_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(~(~vec2<u32>(33137u, 0u)), ~_wgslsmith_clamp_vec2_u32(vec2<u32>(40449u, 1u), vec2<u32>(46599u, 112638u), vec2<u32>(60221u, 23371u))), 4294967295u, max(43710u, firstLeadingBit(1u)))), 25u)];
    var var_2 = select(!vec4<bool>(!any(vec3<bool>(arg_0.x, arg_0.x, arg_0.x)), _wgslsmith_f_op_f32(step(var_0, var_0)) < -465f, true && arg_0.x, arg_0.x), !(!select(select(vec4<bool>(false, arg_0.x, arg_0.x, true), vec4<bool>(true, false, arg_0.x, false), false), vec4<bool>(true, arg_0.x, arg_0.x, false), vec4<bool>(true, arg_0.x, arg_0.x, true))), vec4<bool>(any(vec3<bool>(true, true, true)), !all(vec2<bool>(arg_0.x, true)), true, !(!(arg_0.x | false))));
    let var_3 = vec3<bool>(arg_0.x, all(vec2<bool>(var_2.x, true)), var_2.x);
    return Struct_1(abs(~21683i), ~(i32(-1i) * -47447i));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    var var_0 = Struct_1(-56971i, ~_wgslsmith_div_i32(global0.a, global0.b));
    global3 = array<Struct_1, 25>();
    let var_1 = func_2(vec2<bool>(true, any(vec4<bool>(true, false, true, true))));
    var var_2 = !(!vec2<bool>(select(true, true, false) & false, true));
    global0 = func_2(!(!vec2<bool>(any(vec4<bool>(false, true, true, false)), any(vec2<bool>(var_2.x, true)))));
    return func_2(vec2<bool>(any(!(!vec4<bool>(var_2.x, true, false, true))), var_2.x));
}

fn func_1(arg_0: Struct_1, arg_1: u32) -> vec2<i32> {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(153f * 1000f))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-489f, -784f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(435f))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1225f, _wgslsmith_f_op_f32(1994f + -338f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-915f, 341f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2152f))));
    let var_1 = vec4<i32>(-1i) * -_wgslsmith_sub_vec4_i32(abs(vec4<i32>(u_input.a.x, 4110i, arg_0.b, 2147483647i) | vec4<i32>(u_input.a.x, arg_0.b, u_input.a.x, global0.b)), vec4<i32>(0i, -arg_0.b, ~2147483647i, ~(-2147483647i)));
    let var_2 = arg_1;
    var var_3 = func_4(global1[_wgslsmith_index_u32(4294967295u, 26u)], func_2(!select(vec2<bool>(true, false), vec2<bool>(false, true), select(false, false, true))));
    var_3 = arg_0;
    return vec2<i32>(u_input.a.x, firstLeadingBit(-2147483647i));
}

fn func_5(arg_0: Struct_1, arg_1: vec2<i32>) -> Struct_1 {
    let var_0 = vec3<i32>(arg_1.x ^ ~_wgslsmith_mod_i32(firstTrailingBit(-39786i), abs(0i)), ~(-1i), ~(-25794i));
    global1 = array<Struct_1, 26>();
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-106f + -860f), _wgslsmith_f_op_f32(ceil(-1177f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1060f, -405f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1135f)) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1434f))))));
    global0 = Struct_1(_wgslsmith_div_i32(43723i, -2147483647i), -(-1i >> (_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(83284u, 2004u, 34533u, 7554u), vec4<u32>(17836u, 4294967295u, 30843u, 26978u)), global2[_wgslsmith_index_u32(1u, 28u)]) % 32u)));
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -413f);
    return func_4(global1[_wgslsmith_index_u32(firstLeadingBit(0u), 26u)], func_2(vec2<bool>(false, all(vec3<bool>(true, false, false)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(Struct_1(_wgslsmith_dot_vec3_i32(~vec3<i32>(global0.a, u_input.a.x, 1i), vec3<i32>(global0.a, -1i, global0.b)) << (36701u % 32u), 6028i), _wgslsmith_mod_vec2_i32(select(~u_input.a | firstTrailingBit(u_input.a), vec2<i32>(global0.a, u_input.a.x) & vec2<i32>(-17684i, u_input.a.x), false), func_1(global1[_wgslsmith_index_u32(~4294967295u, 26u)], 1u)));
    let var_1 = _wgslsmith_add_vec4_i32(vec4<i32>(-1i >> (abs(1u >> (0u % 32u)) % 32u), max(max(_wgslsmith_div_i32(global0.b, var_0.b), abs(u_input.a.x)), func_1(Struct_1(36065i, -2147483647i), _wgslsmith_div_u32(30029u, 34857u)).x), _wgslsmith_div_i32(2147483647i, func_4(func_4(Struct_1(-8473i, u_input.a.x), var_0), func_4(Struct_1(global0.b, u_input.a.x), Struct_1(global0.a, global0.b))).b), global0.b), ~firstTrailingBit(vec4<i32>(func_2(vec2<bool>(true, true)).b, ~var_0.b, ~global0.a, 0i)));
    global3 = array<Struct_1, 25>();
    global2 = array<vec4<u32>, 28>();
    var var_2 = func_2(vec2<bool>(true, select(all(vec2<bool>(false, true)) && false, all(vec2<bool>(true, true)), all(vec2<bool>(true, true)))));
    var var_3 = Struct_1(~(-1i), _wgslsmith_clamp_i32(_wgslsmith_sub_i32(_wgslsmith_add_i32(_wgslsmith_div_i32(0i, u_input.a.x), var_1.x >> (4294967295u % 32u)), var_1.x), reverseBits(0i), ~_wgslsmith_add_i32(abs(29822i), 6897i)));
    var var_4 = func_4(var_0, func_2(select(!select(vec2<bool>(true, false), vec2<bool>(false, false), false), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), true), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false))), vec2<bool>(true, all(vec3<bool>(true, true, false))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.xy, ~(~firstTrailingBit(max(0u, 52524u))));
}

