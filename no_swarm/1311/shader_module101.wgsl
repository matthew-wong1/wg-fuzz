struct Struct_1 {
    a: vec2<bool>,
    b: vec3<f32>,
    c: vec3<f32>,
    d: vec3<f32>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct Struct_4 {
    a: vec3<i32>,
}

struct Struct_5 {
    a: i32,
    b: Struct_4,
    c: vec3<u32>,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 16> = array<i32, 16>(-9729i, i32(-2147483648), 0i, 35776i, i32(-2147483648), 0i, -1i, i32(-2147483648), 0i, 30747i, 0i, 1i, -30679i, -11910i, -98380i, 2147483647i);

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec4<f32>) -> bool {
    let var_0 = max(vec4<i32>(_wgslsmith_div_i32(~global0[_wgslsmith_index_u32(u_input.a.x, 16u)], -23996i), global0[_wgslsmith_index_u32(70082u, 16u)], firstTrailingBit(~0i), global0[_wgslsmith_index_u32(4540u, 16u)]), -vec4<i32>((i32(-1i) * -1i) | _wgslsmith_clamp_i32(global0[_wgslsmith_index_u32(u_input.a.x, 16u)], -55154i, -2147483647i), (1i << (u_input.a.x % 32u)) << (u_input.a.x % 32u), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(abs(u_input.a.x), 4294967295u), 16u)], global0[_wgslsmith_index_u32(reverseBits(48906u) >> (u_input.a.x % 32u), 16u)]));
    var var_1 = Struct_5((firstTrailingBit(select(29043i, -2147483647i, false)) & firstLeadingBit(1041i)) >> (_wgslsmith_dot_vec3_u32(~firstTrailingBit(vec3<u32>(u_input.a.x, 0u, u_input.a.x)), ~(~vec3<u32>(u_input.a.x, 38642u, u_input.a.x))) % 32u), Struct_4((_wgslsmith_div_vec3_i32(var_0.yzw, vec3<i32>(1i, -28149i, 1i)) & var_0.zyw) << (_wgslsmith_div_vec3_u32(abs(vec3<u32>(u_input.a.x, u_input.a.x, 28558u)), ~u_input.a) % vec3<u32>(32u))), (vec3<u32>(~4294967295u, u_input.a.x, 4896u) >> (~_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 6244u, u_input.a.x), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)) % vec3<u32>(32u))) ^ vec3<u32>(u_input.a.x, select(~u_input.a.x, _wgslsmith_div_u32(u_input.a.x, 4294967295u), false), u_input.a.x), min(~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, 28966u, u_input.a.x, 0u) & vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 1u), ~vec4<u32>(u_input.a.x, u_input.a.x, 0u, 0u)), vec4<u32>(~51564u, _wgslsmith_sub_u32(~u_input.a.x, 4294967295u), u_input.a.x, u_input.a.x)));
    var_1 = Struct_5(i32(-1i) * -1i, var_1.b, _wgslsmith_sub_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(var_1.c.x, _wgslsmith_dot_vec4_u32(var_1.d, var_1.d), u_input.a.x), min(var_1.c, vec3<u32>(4294967295u, 57428u, 0u)), u_input.a), var_1.d.xzx), var_1.d);
    var_1 = Struct_5(var_0.x, var_1.b, ~vec3<u32>(var_1.c.x, reverseBits(~u_input.a.x), ~_wgslsmith_mult_u32(0u, u_input.a.x)), var_1.d);
    var var_2 = 34179u;
    return any(vec4<bool>(!(!(arg_0.x >= arg_0.x)), true, true, false));
}

fn func_2(arg_0: vec3<i32>, arg_1: vec4<i32>) -> vec3<f32> {
    let var_0 = select(!(!(!select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, true)))), vec4<bool>(true, true, func_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1309f, 1000f, -869f, -994f) * vec4<f32>(-2150f, 928f, -158f, -3144f)))), select(true, true, any(vec4<bool>(false, false, false, false))) || (~4294967295u < ~u_input.a.x)), !select(vec4<bool>(false, all(vec3<bool>(true, true, true)), any(vec4<bool>(false, true, true, false)), any(vec2<bool>(true, true))), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, all(vec4<bool>(false, false, false, false)))));
    let var_1 = arg_0.yz;
    global0 = array<i32, 16>();
    var var_2 = arg_0.yz;
    var var_3 = _wgslsmith_div_u32(_wgslsmith_mod_u32(~4294967295u, ~31925u), 41142u);
    return vec3<f32>(-139f, 1888f, -331f);
}

fn func_4(arg_0: Struct_1) -> i32 {
    global0 = array<i32, 16>();
    var var_0 = !vec2<bool>(arg_0.e, true);
    let var_1 = countOneBits(u_input.a.x);
    let var_2 = ~_wgslsmith_mod_vec3_u32(_wgslsmith_add_vec3_u32(select(select(vec3<u32>(1u, var_1, 4294967295u), u_input.a, vec3<bool>(false, arg_0.e, arg_0.a.x)), vec3<u32>(4294967295u, u_input.a.x, 1664u), !vec3<bool>(var_0.x, true, arg_0.a.x)), vec3<u32>(abs(u_input.a.x), _wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(1u, 21768u, u_input.a.x)), var_1)), _wgslsmith_div_vec3_u32(u_input.a, _wgslsmith_add_vec3_u32(vec3<u32>(1u, var_1, var_1), u_input.a)));
    let var_3 = vec4<bool>(!any(select(!vec4<bool>(var_0.x, false, true, true), !vec4<bool>(var_0.x, true, arg_0.a.x, false), arg_0.a.x && arg_0.a.x)), any(select(select(select(vec3<bool>(var_0.x, arg_0.e, true), vec3<bool>(true, false, true), var_0.x), vec3<bool>(true, var_0.x, var_0.x), !var_0.x), vec3<bool>(true, true, true), true)), !any(!(!vec3<bool>(true, true, arg_0.e))), !var_0.x);
    return 0i << (~var_1 % 32u);
}

fn func_1(arg_0: bool, arg_1: Struct_5, arg_2: Struct_5, arg_3: bool) -> vec3<i32> {
    global0 = array<i32, 16>();
    global0 = array<i32, 16>();
    let var_0 = vec3<bool>(true, !all(!vec2<bool>(false, arg_3)), !any(select(select(vec2<bool>(arg_0, arg_0), vec2<bool>(false, false), arg_3), vec2<bool>(true, false), vec2<bool>(arg_3, false))));
    global0 = array<i32, 16>();
    let var_1 = ~0u;
    return vec3<i32>(2147483647i, arg_1.a, func_4(Struct_1(select(var_0.xy, !vec2<bool>(var_0.x, true), var_0.x && arg_0), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-595f, 1569f, -960f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-965f, 1000f, 1000f))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_2(vec3<i32>(arg_1.b.a.x, arg_1.b.a.x, 14348i), vec4<i32>(-2754i, -4769i, arg_1.b.a.x, arg_2.a))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(826f, -730f, 542f)))), vec3<f32>(_wgslsmith_f_op_f32(ceil(1385f)), _wgslsmith_f_op_f32(sign(-1000f)), _wgslsmith_f_op_f32(ceil(-248f))), arg_3)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !vec2<bool>(~_wgslsmith_mod_u32(u_input.a.x, u_input.a.x) >= (_wgslsmith_sub_u32(u_input.a.x, u_input.a.x) ^ abs(5185u)), true);
    let var_1 = _wgslsmith_add_i32(global0[_wgslsmith_index_u32(countOneBits(abs(4529u)), 16u)], global0[_wgslsmith_index_u32(~(~u_input.a.x), 16u)]);
    var var_2 = _wgslsmith_sub_vec3_i32(~(max(func_1(var_0.x, Struct_5(-1i, Struct_4(vec3<i32>(global0[_wgslsmith_index_u32(23145u, 16u)], var_1, global0[_wgslsmith_index_u32(u_input.a.x, 16u)])), vec3<u32>(1u, u_input.a.x, 0u), vec4<u32>(u_input.a.x, 0u, u_input.a.x, 50438u)), Struct_5(21187i, Struct_4(vec3<i32>(var_1, 12616i, 98958i)), u_input.a, vec4<u32>(u_input.a.x, 0u, 0u, u_input.a.x)), false), vec3<i32>(-503i, -33722i, global0[_wgslsmith_index_u32(0u, 16u)]) >> (vec3<u32>(4294967295u, 1u, 1u) % vec3<u32>(32u))) | (~vec3<i32>(var_1, global0[_wgslsmith_index_u32(u_input.a.x, 16u)], 1i) << (u_input.a % vec3<u32>(32u)))), select(min(select(vec3<i32>(22785i, 55430i, 1193i) << (vec3<u32>(49028u, 1u, u_input.a.x) % vec3<u32>(32u)), vec3<i32>(-73392i, 55479i, global0[_wgslsmith_index_u32(55051u, 16u)]) ^ vec3<i32>(var_1, 1i, var_1), true), vec3<i32>(_wgslsmith_clamp_i32(var_1, 46317i, 0i), -25646i, _wgslsmith_clamp_i32(global0[_wgslsmith_index_u32(u_input.a.x, 16u)], var_1, var_1))), vec3<i32>(-2416i ^ var_1, global0[_wgslsmith_index_u32(u_input.a.x, 16u)] >> ((u_input.a.x >> (u_input.a.x % 32u)) % 32u), 26008i), select(!vec3<bool>(var_0.x, false, var_0.x), select(!vec3<bool>(true, var_0.x, false), vec3<bool>(var_0.x, false, true), !vec3<bool>(var_0.x, var_0.x, true)), vec3<bool>(all(vec4<bool>(var_0.x, false, false, false)), true, false))));
    var_2 = select(vec3<i32>(_wgslsmith_clamp_i32(0i, -11066i, -30651i), min(_wgslsmith_dot_vec4_i32(vec4<i32>(48991i, var_1, -18166i, -7700i), vec4<i32>(13902i, 0i, -21667i, -13307i)) | firstLeadingBit(var_1), global0[_wgslsmith_index_u32(u_input.a.x, 16u)]), select(reverseBits(-1i << (u_input.a.x % 32u)), i32(-1i) * -global0[_wgslsmith_index_u32(u_input.a.x, 16u)], all(select(vec3<bool>(false, var_0.x, false), vec3<bool>(true, false, var_0.x), vec3<bool>(var_0.x, true, var_0.x))))), vec3<i32>(_wgslsmith_mod_i32(-firstLeadingBit(1i), abs(_wgslsmith_mod_i32(global0[_wgslsmith_index_u32(34316u, 16u)], var_1))), 0i, ~(-_wgslsmith_add_i32(global0[_wgslsmith_index_u32(28914u, 16u)], global0[_wgslsmith_index_u32(0u, 16u)]))), select(vec3<bool>(true, true, true), select(vec3<bool>(u_input.a.x != 29130u, true, true), vec3<bool>(true, true, any(vec3<bool>(var_0.x, false, true))), var_0.x), select(vec3<bool>(all(vec3<bool>(false, var_0.x, var_0.x)), !var_0.x, any(vec4<bool>(false, true, var_0.x, false))), !vec3<bool>(var_0.x, false, true), false)));
    var var_3 = Struct_2(Struct_1(!select(select(vec2<bool>(var_0.x, false), vec2<bool>(false, var_0.x), vec2<bool>(true, true)), !vec2<bool>(var_0.x, var_0.x), u_input.a.x <= u_input.a.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-3833f, 2235f, 293f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1847f, 1146f, 568f)))), vec3<f32>(144f, _wgslsmith_f_op_f32(trunc(2175f)), _wgslsmith_f_op_f32(f32(-1f) * -2850f)), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -535f) - -1849f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(147f, 1104f)) * _wgslsmith_f_op_f32(abs(-1035f))), _wgslsmith_f_op_f32(f32(-1f) * -900f)), all(select(vec3<bool>(false, var_0.x, var_0.x), vec3<bool>(var_0.x, true, false), select(vec3<bool>(false, true, false), vec3<bool>(var_0.x, false, var_0.x), var_0.x)))), Struct_1(vec2<bool>(var_0.x, select(var_0.x, any(vec3<bool>(false, false, var_0.x)), var_0.x)), vec3<f32>(1f, -1154f, _wgslsmith_f_op_f32(step(-1325f, 242f))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1000f, 835f, 384f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-490f, -1100f, 891f), vec3<f32>(-1076f, -239f, 1232f))) - vec3<f32>(_wgslsmith_f_op_f32(-545f + -276f), _wgslsmith_f_op_f32(-307f + 763f), -790f)), all(vec2<bool>(!var_0.x, select(var_0.x, false, var_0.x)))), u_input.a.x, Struct_1(vec2<bool>(var_0.x, var_0.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(391f, 678f, -290f), vec3<f32>(356f, 432f, -807f)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(1346f + 2826f), -877f, _wgslsmith_f_op_f32(round(-163f))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-275f, -758f, 214f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-728f, 737f, -855f)))), vec3<f32>(-1094f, 649f, _wgslsmith_f_op_f32(607f + _wgslsmith_f_op_f32(f32(-1f) * -720f))), select(true, !var_0.x, (u_input.a.x != 0u) && false)), 4294967295u);
    var var_4 = Struct_5(29663i, Struct_4(_wgslsmith_sub_vec3_i32(-func_1(true, Struct_5(var_1, Struct_4(vec3<i32>(1i, var_2.x, -1i)), u_input.a, vec4<u32>(u_input.a.x, var_3.c, 0u, 4995u)), Struct_5(var_1, Struct_4(vec3<i32>(26117i, 1i, 0i)), vec3<u32>(u_input.a.x, u_input.a.x, 18828u), vec4<u32>(4294967295u, 16450u, 1u, 4294967295u)), var_3.d.e), vec3<i32>(global0[_wgslsmith_index_u32(64310u, 16u)] | var_2.x, ~var_1, abs(var_2.x)))), ~(~firstTrailingBit(u_input.a)) ^ (vec3<u32>(~u_input.a.x, firstLeadingBit(4294967295u), firstTrailingBit(1u)) | (vec3<u32>(1u, 1u, u_input.a.x) | _wgslsmith_clamp_vec3_u32(u_input.a, u_input.a, vec3<u32>(u_input.a.x, 14728u, var_3.e)))), ((vec4<u32>(1u, 107614u, 0u, 4099u) ^ vec4<u32>(11902u, u_input.a.x, 115655u, 16733u)) << (vec4<u32>(select(4294967295u, var_3.e, false), _wgslsmith_clamp_u32(4294967295u, 4294967295u, u_input.a.x), countOneBits(1u), firstTrailingBit(u_input.a.x)) % vec4<u32>(32u))) ^ ~min(~vec4<u32>(31302u, 0u, 77379u, var_3.c), reverseBits(vec4<u32>(u_input.a.x, u_input.a.x, 134904u, u_input.a.x))));
    global0 = array<i32, 16>();
    let var_5 = Struct_4(var_4.b.a);
    var_3 = Struct_2(var_3.a, var_3.d, reverseBits(~select(58161u, 65416u | var_3.c, false)), var_3.d, var_4.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(0u);
}

