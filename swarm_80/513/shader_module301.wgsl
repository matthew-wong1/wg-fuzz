struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: f32,
    d: bool,
    e: vec2<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: vec3<i32>,
    d: u32,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<vec4<i32>, 21> = array<vec4<i32>, 21>(vec4<i32>(2147483647i, 2147483647i, -16988i, 67745i), vec4<i32>(0i, 0i, 2147483647i, 24512i), vec4<i32>(-19587i, 2147483647i, 68933i, i32(-2147483648)), vec4<i32>(-19988i, -37761i, 52692i, 0i), vec4<i32>(-1i, -14359i, -28947i, i32(-2147483648)), vec4<i32>(i32(-2147483648), -61621i, 32605i, 50018i), vec4<i32>(1i, -45373i, 0i, 7698i), vec4<i32>(0i, 25218i, 2147483647i, -1i), vec4<i32>(1i, -29720i, 1i, 2317i), vec4<i32>(18228i, -38778i, -29857i, 2147483647i), vec4<i32>(-67761i, i32(-2147483648), 1i, 8540i), vec4<i32>(-7866i, -16289i, 0i, -23202i), vec4<i32>(-1i, 1i, 2147483647i, 5289i), vec4<i32>(73893i, 15815i, 20903i, 1i), vec4<i32>(2147483647i, -2247i, 0i, 0i), vec4<i32>(-1060i, 10696i, -13656i, 50945i), vec4<i32>(i32(-2147483648), 2147483647i, 1i, -5896i), vec4<i32>(2147483647i, 2147483647i, -20437i, 50136i), vec4<i32>(44068i, 0i, 7318i, 2147483647i), vec4<i32>(1i, 1i, -9879i, 44278i), vec4<i32>(4923i, 17378i, 0i, 0i));

var<private> global2: array<bool, 9>;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: f32) -> Struct_2 {
    let var_0 = select(!vec3<bool>(true, global2[_wgslsmith_index_u32(u_input.a, 9u)], any(select(vec3<bool>(global2[_wgslsmith_index_u32(u_input.a, 9u)], global2[_wgslsmith_index_u32(4294967295u, 9u)], global2[_wgslsmith_index_u32(59750u, 9u)]), vec3<bool>(true, global2[_wgslsmith_index_u32(u_input.a, 9u)], false), global2[_wgslsmith_index_u32(0u, 9u)]))), vec3<bool>(!all(vec2<bool>(global2[_wgslsmith_index_u32(u_input.a, 9u)], true)), !any(vec4<bool>(false, global2[_wgslsmith_index_u32(u_input.a, 9u)], global2[_wgslsmith_index_u32(u_input.a, 9u)], false)), -_wgslsmith_mod_i32(u_input.b, 9685i) < _wgslsmith_dot_vec4_i32(firstTrailingBit(global1[_wgslsmith_index_u32(u_input.a, 21u)]), vec4<i32>(u_input.b, u_input.b, -39662i, -72219i))), !any(!select(vec4<bool>(global2[_wgslsmith_index_u32(u_input.a, 9u)], global2[_wgslsmith_index_u32(26759u, 9u)], global2[_wgslsmith_index_u32(u_input.a, 9u)], false), vec4<bool>(global2[_wgslsmith_index_u32(32690u, 9u)], global2[_wgslsmith_index_u32(5723u, 9u)], true, true), vec4<bool>(false, global2[_wgslsmith_index_u32(79635u, 9u)], global2[_wgslsmith_index_u32(u_input.a, 9u)], true))));
    global0 = (23805i << (~(~(18573u >> (u_input.a % 32u))) % 32u)) ^ -10994i;
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 + arg_0) * -1233f)))), _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(select(-1196f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) * -459f), var_0.x))));
    return Struct_2(Struct_1(u_input.a), abs(vec4<u32>(_wgslsmith_mod_u32(4294967295u, min(u_input.a, u_input.a)), ~u_input.a, (u_input.a | u_input.a) ^ select(u_input.a, u_input.a, true), 4294967295u)), _wgslsmith_f_op_f32(min(-2070f, _wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * -1229f) - _wgslsmith_f_op_f32(floor(arg_0)))))), select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_0)) + _wgslsmith_f_op_f32(arg_0 * -655f)) > -1014f, true, 69715u >= _wgslsmith_add_u32(u_input.a, _wgslsmith_sub_u32(u_input.a, u_input.a))), vec2<f32>(-1936f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 * 837f) + _wgslsmith_f_op_f32(-arg_0)) + -2029f)));
}

fn func_3(arg_0: Struct_2, arg_1: bool, arg_2: Struct_1, arg_3: Struct_1) -> vec2<f32> {
    let var_0 = vec2<bool>(func_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_div_f32(323f, -2456f) + 1391f)))).d, func_1(1521f).d | all(vec2<bool>(!arg_0.d, arg_1)));
    var var_1 = abs(arg_0.b.wyx) << ((select(vec3<u32>(firstTrailingBit(1u), arg_3.a, firstTrailingBit(0u)), ~arg_0.b.zxy << (select(arg_0.b.zyx, arg_0.b.yyy, vec3<bool>(arg_1, arg_1, arg_1)) % vec3<u32>(32u)), select(vec3<bool>(false, var_0.x, arg_0.d), vec3<bool>(true, false, true), vec3<bool>(false, true, var_0.x))) | (abs(~vec3<u32>(0u, 30749u, u_input.a)) | ~vec3<u32>(32175u, 0u, 4294967295u))) % vec3<u32>(32u));
    var var_2 = arg_3.a;
    let var_3 = arg_0;
    global1 = array<vec4<i32>, 21>();
    return _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_div_f32(arg_0.c, 2278f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -351f)))), vec2<f32>(1098f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(749f - -878f))), select(var_0, !var_0, vec2<bool>(arg_0.d, true & var_3.d))))));
}

fn func_4(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: Struct_2, arg_3: vec2<f32>) -> vec2<u32> {
    let var_0 = 4294967295u;
    var var_1 = vec4<bool>(!any(select(!vec2<bool>(arg_0.d, true), select(vec2<bool>(arg_0.d, true), vec2<bool>(arg_2.d, false), vec2<bool>(arg_2.d, arg_0.d)), select(vec2<bool>(global2[_wgslsmith_index_u32(u_input.a, 9u)], arg_0.d), vec2<bool>(true, true), vec2<bool>(arg_0.d, arg_0.d)))), global2[_wgslsmith_index_u32(_wgslsmith_add_u32(var_0, _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(arg_0.a.a, 4125u, arg_0.b.x), ~vec3<u32>(arg_2.b.x, var_0, arg_0.a.a)), _wgslsmith_mod_vec3_u32(vec3<u32>(0u, arg_2.a.a, 4294967295u), _wgslsmith_sub_vec3_u32(arg_2.b.www, vec3<u32>(45968u, 1u, 1509u))))), 9u)], 1u <= ((63341u ^ ~arg_0.b.x) | ~(7088u << (0u % 32u))), global2[_wgslsmith_index_u32(36687u, 9u)]);
    var var_2 = _wgslsmith_div_u32(1u, arg_2.b.x);
    let var_3 = !select(true, true, any(vec3<bool>(false, arg_2.d, !arg_2.d)));
    global1 = array<vec4<i32>, 21>();
    return arg_2.b.zw;
}

fn func_2() -> Struct_3 {
    var var_0 = -(vec2<i32>(u_input.b, _wgslsmith_add_i32(u_input.b, u_input.b) | reverseBits(u_input.b)) << ((vec2<u32>(46172u, 258u) << (func_4(func_1(-241f), -vec3<i32>(65517i, -19766i, 1i), Struct_2(Struct_1(4294967295u), vec4<u32>(4294967295u, u_input.a, 83054u, 33906u), 777f, global2[_wgslsmith_index_u32(0u, 9u)], vec2<f32>(-389f, 1000f)), _wgslsmith_f_op_vec2_f32(func_3(Struct_2(Struct_1(50223u), vec4<u32>(u_input.a, 33840u, u_input.a, 25749u), 440f, true, vec2<f32>(-577f, 861f)), false, Struct_1(u_input.a), Struct_1(u_input.a)))) % vec2<u32>(32u))) % vec2<u32>(32u)));
    let var_1 = ~_wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(33482u, u_input.a, u_input.a, 70026u), vec4<u32>(44119u, 76614u, 75938u, u_input.a)), ~41705u, _wgslsmith_dot_vec4_u32(vec4<u32>(86492u, 50252u, u_input.a, u_input.a), vec4<u32>(1u, u_input.a, u_input.a, u_input.a))), ~(vec4<u32>(u_input.a, u_input.a, u_input.a, 0u) >> (vec4<u32>(u_input.a, 0u, 0u, u_input.a) % vec4<u32>(32u)))), vec4<u32>(~u_input.a >> (u_input.a % 32u), u_input.a, ~firstLeadingBit(31952u), 1u));
    var var_2 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(759f, 1562f)))), 335f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-806f, 190f)) * _wgslsmith_f_op_vec2_f32(func_3(Struct_2(Struct_1(var_1.x), vec4<u32>(u_input.a, u_input.a, 0u, 23658u), -1030f, global2[_wgslsmith_index_u32(1u, 9u)], vec2<f32>(230f, 1689f)), true, Struct_1(32142u), Struct_1(54257u))).x), func_1(_wgslsmith_div_f32(-567f, 1224f)).c) * vec4<f32>(_wgslsmith_f_op_f32(round(-101f)), _wgslsmith_f_op_f32(ceil(-856f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_3(Struct_2(Struct_1(u_input.a), var_1, -1336f, global2[_wgslsmith_index_u32(4294967295u, 9u)], vec2<f32>(177f, -1067f)), global2[_wgslsmith_index_u32(1u, 9u)], Struct_1(var_1.x), Struct_1(u_input.a))).x), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(-1723f))))))));
    var var_3 = u_input.a & (_wgslsmith_add_u32(firstLeadingBit(var_1.x), var_1.x | 83732u) << (select(35727u, max(_wgslsmith_div_u32(var_1.x, var_1.x), firstLeadingBit(u_input.a)), _wgslsmith_add_u32(1u, var_1.x) < countOneBits(u_input.a)) % 32u));
    var_3 = u_input.a | 0u;
    return Struct_3(func_1(_wgslsmith_f_op_f32(-var_2.x)), -1i, -vec3<i32>(0i, abs(reverseBits(var_0.x)), 28345i), u_input.a, func_1(499f).a);
}

fn func_5(arg_0: Struct_3, arg_1: vec3<u32>) -> bool {
    let var_0 = func_2().c;
    let var_1 = abs(0i);
    var var_2 = !select(!select(select(vec4<bool>(false, global2[_wgslsmith_index_u32(arg_1.x, 9u)], arg_0.a.d, arg_0.a.d), vec4<bool>(false, global2[_wgslsmith_index_u32(0u, 9u)], arg_0.a.d, false), vec4<bool>(global2[_wgslsmith_index_u32(arg_1.x, 9u)], false, global2[_wgslsmith_index_u32(1u, 9u)], arg_0.a.d)), vec4<bool>(true, false, false, true), arg_0.a.d), vec4<bool>(func_1(_wgslsmith_f_op_f32(-arg_0.a.c)).d, ~u_input.a <= arg_1.x, all(!vec4<bool>(arg_0.a.d, arg_0.a.d, arg_0.a.d, true)), func_1(_wgslsmith_f_op_f32(f32(-1f) * -553f)).d), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(arg_0.a.b, arg_0.a.b, vec4<u32>(4294967295u, arg_1.x, arg_0.d, arg_1.x) << (vec4<u32>(arg_1.x, arg_1.x, u_input.a, 0u) % vec4<u32>(32u))), vec4<u32>(~32105u, func_4(Struct_2(arg_0.e, vec4<u32>(arg_1.x, arg_1.x, 1u, arg_1.x), arg_0.a.c, true, vec2<f32>(arg_0.a.e.x, arg_0.a.c)), vec3<i32>(var_1, u_input.b, 1i), Struct_2(Struct_1(0u), vec4<u32>(arg_0.a.b.x, 1u, 4294967295u, 12385u), 762f, true, arg_0.a.e), arg_0.a.e).x, 1u, _wgslsmith_mult_u32(u_input.a, 40742u))), 9u)]);
    global2 = array<bool, 9>();
    let var_3 = arg_0.e;
    return true;
}

fn func_6(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_3, arg_3: bool) -> Struct_1 {
    var var_0 = min(countOneBits(43364i) >> (arg_0.a.a % 32u), 0i) <= 1i;
    let var_1 = _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(-1202f + _wgslsmith_f_op_f32(1225f + 1292f)), _wgslsmith_f_op_f32(-arg_0.c)), _wgslsmith_f_op_vec2_f32(arg_2.a.e * _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.e.x, arg_1.c) * vec2<f32>(-1000f, _wgslsmith_f_op_f32(-arg_2.a.e.x))))));
    var var_2 = select(_wgslsmith_div_i32(472i, _wgslsmith_add_i32(6265i >> (arg_0.b.x % 32u), reverseBits(-15695i)) ^ reverseBits(~(-13393i))), arg_2.c.x, _wgslsmith_f_op_f32(max(1448f, -573f)) != var_1.x);
    var var_3 = arg_2.a.d;
    let var_4 = _wgslsmith_mult_vec3_i32(arg_2.c, arg_2.c);
    return Struct_1(~(~0u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<bool>(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_mult_u32(~u_input.a, 15503u) | u_input.a, ~_wgslsmith_div_u32(u_input.a, 0u)), 9u)], global2[_wgslsmith_index_u32(min(firstLeadingBit(1u), 47517u), 9u)] | !all(select(vec4<bool>(global2[_wgslsmith_index_u32(0u, 9u)], global2[_wgslsmith_index_u32(u_input.a, 9u)], global2[_wgslsmith_index_u32(u_input.a, 9u)], global2[_wgslsmith_index_u32(20650u, 9u)]), vec4<bool>(global2[_wgslsmith_index_u32(u_input.a, 9u)], false, false, false), vec4<bool>(true, global2[_wgslsmith_index_u32(u_input.a, 9u)], false, global2[_wgslsmith_index_u32(11465u, 9u)]))), true);
    var var_1 = vec4<u32>(max(u_input.a, ~(~u_input.a)), u_input.a, _wgslsmith_sub_u32(u_input.a, u_input.a), ~(~1u));
    global1 = array<vec4<i32>, 21>();
    var var_2 = var_1.x;
    global2 = array<bool, 9>();
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(-411f)), 555f)));
    var var_4 = Struct_2(func_6(Struct_2(Struct_1(var_1.x), _wgslsmith_add_vec4_u32(vec4<u32>(1u, 4294967295u, u_input.a, 0u), ~vec4<u32>(u_input.a, var_1.x, 43024u, var_1.x)), -455f, !(u_input.a <= var_1.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1000f, -357f))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(857f, 471f)))), func_1(_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(f32(-1f) * -1609f))), Struct_3(func_1(-1244f), ~(~45407i), vec3<i32>(_wgslsmith_div_i32(u_input.b, -52381i), u_input.b, select(u_input.b, u_input.b, true)), countOneBits(4294967295u) & _wgslsmith_clamp_u32(47494u, u_input.a, 68153u), func_1(_wgslsmith_f_op_f32(round(-169f))).a), !func_5(func_2(), var_1.ywz)), ~(~select(vec4<u32>(var_1.x, 48406u, u_input.a, u_input.a) & vec4<u32>(u_input.a, 6599u, 1u, 1u), select(vec4<u32>(u_input.a, var_1.x, 0u, var_1.x), vec4<u32>(1u, 17388u, 19046u, 0u), vec4<bool>(false, global2[_wgslsmith_index_u32(1u, 9u)], true, false)), vec4<bool>(var_0.x, false, global2[_wgslsmith_index_u32(var_1.x, 9u)], var_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1431f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1000f)))))), var_0.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(func_1(_wgslsmith_f_op_f32(-1458f + 1332f)), !global2[_wgslsmith_index_u32(u_input.a, 9u)], func_1(_wgslsmith_f_op_f32(f32(-1f) * -2985f)).a, Struct_1(func_4(Struct_2(Struct_1(41191u), vec4<u32>(1u, var_1.x, u_input.a, u_input.a), -1663f, true, vec2<f32>(-897f, 217f)), vec3<i32>(1i, u_input.b, u_input.b), Struct_2(Struct_1(var_1.x), vec4<u32>(18445u, 1524u, 88469u, 81019u), -1543f, true, vec2<f32>(-359f, 146f)), vec2<f32>(133f, -397f)).x))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-220f, 938f) - vec2<f32>(866f, -428f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(386f, 862f) - vec2<f32>(-674f, 1113f))), vec2<f32>(_wgslsmith_div_f32(-593f, 1013f), -1000f), !(var_0.x | var_0.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(1121f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1783f, 319f, true || var_0.x)) * _wgslsmith_f_op_f32(select(-415f, _wgslsmith_f_op_f32(f32(-1f) * -1024f), 1u != var_1.x))))), -_wgslsmith_sub_vec4_i32(countOneBits(global1[_wgslsmith_index_u32(9006u, 21u)]) & min(vec4<i32>(u_input.b, u_input.b, -2147483647i, u_input.b), global1[_wgslsmith_index_u32(u_input.a, 21u)]), vec4<i32>(1i, u_input.b, u_input.b, firstTrailingBit(-23090i))));
}

