struct Struct_1 {
    a: u32,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: vec2<f32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 20> = array<bool, 20>(true, true, true, false, false, true, true, true, false, true, false, false, false, true, true, true, true, false, true, true);

var<private> global1: array<f32, 8> = array<f32, 8>(765f, -429f, -1000f, 769f, 422f, -2069f, -953f, -734f);

var<private> global2: i32 = i32(-2147483648);

var<private> global3: array<Struct_3, 16> = array<Struct_3, 16>(Struct_3(Struct_2(Struct_1(40811u, 44600i), Struct_1(4294967295u, i32(-2147483648)), Struct_1(4294967295u, 11500i), Struct_1(0u, 14260i), vec2<f32>(-686f, -216f))), Struct_3(Struct_2(Struct_1(4294967295u, 18334i), Struct_1(78584u, 16772i), Struct_1(0u, 19791i), Struct_1(77917u, 2147483647i), vec2<f32>(1000f, -725f))), Struct_3(Struct_2(Struct_1(1u, i32(-2147483648)), Struct_1(2284u, 0i), Struct_1(1u, -16200i), Struct_1(4294967295u, 0i), vec2<f32>(-764f, 462f))), Struct_3(Struct_2(Struct_1(53820u, -54867i), Struct_1(28477u, 1i), Struct_1(0u, i32(-2147483648)), Struct_1(0u, -1405i), vec2<f32>(-128f, 1265f))), Struct_3(Struct_2(Struct_1(1u, -2908i), Struct_1(0u, 0i), Struct_1(36162u, i32(-2147483648)), Struct_1(4294967295u, -3685i), vec2<f32>(-1037f, -316f))), Struct_3(Struct_2(Struct_1(47673u, -8798i), Struct_1(88269u, -1i), Struct_1(38876u, 99979i), Struct_1(0u, i32(-2147483648)), vec2<f32>(-275f, -155f))), Struct_3(Struct_2(Struct_1(1u, -7636i), Struct_1(1u, 0i), Struct_1(13964u, 37159i), Struct_1(2013u, -24313i), vec2<f32>(-1506f, 1077f))), Struct_3(Struct_2(Struct_1(21142u, -53242i), Struct_1(35642u, 18412i), Struct_1(19615u, 23497i), Struct_1(4294967295u, i32(-2147483648)), vec2<f32>(-3063f, -1679f))), Struct_3(Struct_2(Struct_1(12449u, -2218i), Struct_1(1u, i32(-2147483648)), Struct_1(0u, 16423i), Struct_1(0u, 18436i), vec2<f32>(880f, 431f))), Struct_3(Struct_2(Struct_1(113407u, i32(-2147483648)), Struct_1(1u, 40116i), Struct_1(6956u, 2147483647i), Struct_1(14163u, 70005i), vec2<f32>(768f, -611f))), Struct_3(Struct_2(Struct_1(4294967295u, -19855i), Struct_1(0u, -6876i), Struct_1(1u, -1i), Struct_1(73364u, 1i), vec2<f32>(413f, 741f))), Struct_3(Struct_2(Struct_1(1u, -17537i), Struct_1(49209u, -49610i), Struct_1(0u, 4478i), Struct_1(93077u, 7781i), vec2<f32>(-1507f, 1331f))), Struct_3(Struct_2(Struct_1(0u, 5088i), Struct_1(1u, i32(-2147483648)), Struct_1(2065u, 0i), Struct_1(19492u, -1i), vec2<f32>(1884f, -1000f))), Struct_3(Struct_2(Struct_1(51247u, -6195i), Struct_1(4294967295u, 0i), Struct_1(68906u, 2147483647i), Struct_1(4294967295u, -30335i), vec2<f32>(-1000f, 378f))), Struct_3(Struct_2(Struct_1(8012u, 1i), Struct_1(17010u, -50985i), Struct_1(2875u, 0i), Struct_1(4294967295u, 19480i), vec2<f32>(-282f, 431f))), Struct_3(Struct_2(Struct_1(135871u, 7604i), Struct_1(60274u, 1i), Struct_1(26354u, -31655i), Struct_1(4294967295u, -31689i), vec2<f32>(-1000f, -911f))));

var<private> global4: array<Struct_1, 15> = array<Struct_1, 15>(Struct_1(24321u, 12728i), Struct_1(33597u, 2147483647i), Struct_1(1u, -19293i), Struct_1(34241u, -43583i), Struct_1(41521u, 1i), Struct_1(118526u, 0i), Struct_1(45983u, i32(-2147483648)), Struct_1(7748u, 2147483647i), Struct_1(49115u, -23032i), Struct_1(4294967295u, 10644i), Struct_1(18260u, 2147483647i), Struct_1(51044u, 7604i), Struct_1(1u, -1i), Struct_1(58675u, 1327i), Struct_1(36523u, -29226i));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec3<u32>, arg_1: f32, arg_2: u32, arg_3: u32) -> vec2<f32> {
    var var_0 = Struct_2(Struct_1(~arg_0.x, u_input.a.x), Struct_1(_wgslsmith_dot_vec2_u32(arg_0.xy & vec2<u32>(arg_0.x, arg_0.x), vec2<u32>(13642u, arg_0.x)) >> (arg_0.x % 32u), _wgslsmith_add_i32(-32381i, -_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, u_input.a.x), u_input.a))), global4[_wgslsmith_index_u32(1u ^ _wgslsmith_clamp_u32(~1u, arg_0.x, 5096u), 15u)], Struct_1(arg_0.x, -76930i), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(0u, 8u)], -864f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(1u, 8u)], -288f)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, global1[_wgslsmith_index_u32(49801u, 8u)]) + vec2<f32>(-1000f, -315f)) * _wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_1, 555f), vec2<f32>(arg_1, arg_1))))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(155f, 1550f))), vec2<f32>(arg_1, global1[_wgslsmith_index_u32(73320u, 8u)]))))), any(select(!vec4<bool>(false, global0[_wgslsmith_index_u32(arg_3, 20u)], false, global0[_wgslsmith_index_u32(arg_2, 20u)]), vec4<bool>(true, global0[_wgslsmith_index_u32(arg_2, 20u)], global0[_wgslsmith_index_u32(arg_0.x, 20u)], global0[_wgslsmith_index_u32(arg_3, 20u)]), !vec4<bool>(global0[_wgslsmith_index_u32(arg_0.x, 20u)], global0[_wgslsmith_index_u32(0u, 20u)], false, global0[_wgslsmith_index_u32(52252u, 20u)]))))));
    global2 = _wgslsmith_clamp_i32(i32(-1i) * -(~_wgslsmith_dot_vec4_i32(vec4<i32>(-46685i, -2147483647i, var_0.a.b, 0i), vec4<i32>(var_0.d.b, u_input.a.x, -48630i, u_input.a.x))), -17115i, _wgslsmith_sub_i32(u_input.a.x, 1i) | u_input.a.x);
    var var_1 = true || (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(787f))))) >= _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-472f + -386f), arg_1)));
    var var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(1048f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1000f + 807f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1248f)) - _wgslsmith_f_op_f32(ceil(-1000f))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_1 * -591f)))))));
    let var_3 = _wgslsmith_add_u32(15183u, abs(_wgslsmith_add_u32(~4294967295u, arg_0.x)) ^ _wgslsmith_clamp_u32(~_wgslsmith_div_u32(arg_2, 4294967295u), ~arg_2 >> (min(arg_2, arg_3) % 32u), arg_0.x));
    return var_2.xx;
}

fn func_2(arg_0: bool) -> Struct_3 {
    var var_0 = global3[_wgslsmith_index_u32(9333u, 16u)];
    var_0 = Struct_3(Struct_2(Struct_1(_wgslsmith_mod_u32(~var_0.a.a.a, ~4294967295u), u_input.a.x), var_0.a.d, global4[_wgslsmith_index_u32(var_0.a.c.a, 15u)], global4[_wgslsmith_index_u32(var_0.a.a.a, 15u)], _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(vec3<u32>(var_0.a.d.a, 1u, var_0.a.a.a), _wgslsmith_f_op_f32(f32(-1f) * -116f), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, var_0.a.b.a), vec2<u32>(1585u, 4294967295u)), 60713u)))));
    let var_1 = Struct_3(var_0.a);
    let var_2 = select(vec4<bool>(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.e.x)) > var_0.a.e.x, !all(vec2<bool>(global0[_wgslsmith_index_u32(var_0.a.a.a, 20u)], global0[_wgslsmith_index_u32(4294967295u, 20u)])), any(!vec3<bool>(true, arg_0, true))), vec4<bool>(!(!any(vec3<bool>(global0[_wgslsmith_index_u32(1u, 20u)], true, true))), -11695i <= var_1.a.b.b, arg_0, global0[_wgslsmith_index_u32(~4294967295u, 20u)]), vec4<bool>(all(select(vec4<bool>(true, true, arg_0, true), vec4<bool>(true, false, arg_0, arg_0), vec4<bool>(true, true, arg_0, false))) & !(arg_0 | arg_0), !(!(var_1.a.e.x > 603f)), true, true));
    var var_3 = var_1;
    return Struct_3(var_3.a);
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_3, arg_2: Struct_3, arg_3: vec2<f32>) -> Struct_1 {
    var var_0 = arg_2.a;
    var var_1 = func_2(true);
    var var_2 = vec4<bool>(var_0.c.a == reverseBits(~4294967295u), !global0[_wgslsmith_index_u32(min(select(arg_2.a.d.a, arg_2.a.c.a, global0[_wgslsmith_index_u32(35333u, 20u)]), var_0.a.a) << (~firstTrailingBit(arg_1.a.d.a) % 32u), 20u)], all(select(select(select(vec3<bool>(false, false, false), vec3<bool>(global0[_wgslsmith_index_u32(arg_1.a.d.a, 20u)], false, global0[_wgslsmith_index_u32(var_1.a.a.a, 20u)]), true), select(vec3<bool>(true, global0[_wgslsmith_index_u32(6181u, 20u)], global0[_wgslsmith_index_u32(arg_1.a.b.a, 20u)]), vec3<bool>(global0[_wgslsmith_index_u32(6865u, 20u)], global0[_wgslsmith_index_u32(arg_1.a.b.a, 20u)], global0[_wgslsmith_index_u32(126951u, 20u)]), vec3<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 20u)], global0[_wgslsmith_index_u32(arg_2.a.d.a, 20u)])), -2147483647i > var_0.d.b), vec3<bool>(true, true, true), !(!vec3<bool>(global0[_wgslsmith_index_u32(arg_1.a.b.a, 20u)], false, global0[_wgslsmith_index_u32(4294967295u, 20u)])))), false);
    var var_3 = arg_2.a;
    let var_4 = !(!select(true, var_2.x, global0[_wgslsmith_index_u32(firstLeadingBit(4262u), 20u)]) & var_2.x);
    return var_3.a;
}

fn func_4(arg_0: Struct_3, arg_1: f32, arg_2: u32) -> Struct_1 {
    var var_0 = 1u;
    let var_1 = 0u;
    let var_2 = global0[_wgslsmith_index_u32(reverseBits(_wgslsmith_mult_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, arg_0.a.d.a, arg_2), vec3<u32>(arg_0.a.c.a, var_1, var_1)), firstLeadingBit(func_1(vec4<i32>(arg_0.a.a.b, 2147483647i, -1i, 0i), global3[_wgslsmith_index_u32(4294967295u, 16u)], Struct_3(arg_0.a), vec2<f32>(-1237f, global1[_wgslsmith_index_u32(arg_0.a.d.a, 8u)])).a))) ^ ~(~1u), 20u)];
    let var_3 = func_2(!global0[_wgslsmith_index_u32(arg_2, 20u)]).a.a;
    var var_4 = arg_0.a;
    return var_4.d;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(func_4(Struct_3(Struct_2(global4[_wgslsmith_index_u32(1u, 15u)], Struct_1(54727u, -36890i), global4[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u, 1u), 15u)], func_1(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), global3[_wgslsmith_index_u32(23661u, 16u)], global3[_wgslsmith_index_u32(25091u, 16u)], vec2<f32>(-1099f, global1[_wgslsmith_index_u32(49073u, 8u)])), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global1[_wgslsmith_index_u32(1u, 8u)], global1[_wgslsmith_index_u32(75163u, 8u)]), vec2<f32>(global1[_wgslsmith_index_u32(1616u, 8u)], global1[_wgslsmith_index_u32(4294967295u, 8u)]), global0[_wgslsmith_index_u32(1u, 20u)])))), global1[_wgslsmith_index_u32(~(~(~4294967295u)), 8u)], _wgslsmith_mult_u32(_wgslsmith_mod_u32(func_1(vec4<i32>(-1i, 1i, u_input.a.x, -1i), Struct_3(Struct_2(Struct_1(4294967295u, 50674i), Struct_1(1u, 2147483647i), global4[_wgslsmith_index_u32(30129u, 15u)], global4[_wgslsmith_index_u32(1u, 15u)], vec2<f32>(-891f, global1[_wgslsmith_index_u32(27067u, 8u)]))), Struct_3(Struct_2(global4[_wgslsmith_index_u32(4294967295u, 15u)], Struct_1(0u, u_input.a.x), global4[_wgslsmith_index_u32(53182u, 15u)], global4[_wgslsmith_index_u32(18232u, 15u)], vec2<f32>(637f, -788f))), vec2<f32>(117f, -1533f)).a, 1u), ~(0u >> (1u % 32u)))), global4[_wgslsmith_index_u32(~countOneBits(~(~31318u)), 15u)], global4[_wgslsmith_index_u32(countOneBits(~_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4577u, 97766u), vec2<u32>(42442u, 4294967295u)), ~29746u)), 15u)], global4[_wgslsmith_index_u32(4360u, 15u)], _wgslsmith_f_op_vec2_f32(-vec2<f32>(-617f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(2083f, global1[_wgslsmith_index_u32(1u, 8u)])))))));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(~reverseBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(61141u, var_0.b.a, 51492u, 4294967295u), vec4<u32>(var_0.a.a, 29387u, 4294967295u, var_0.d.a), vec4<u32>(var_0.b.a, var_0.a.a, 10594u, var_0.b.a)))));
}

