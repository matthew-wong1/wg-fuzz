struct Struct_1 {
    a: u32,
    b: vec2<f32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 3> = array<i32, 3>(-25369i, -5556i, -48039i);

var<private> global1: array<Struct_1, 13> = array<Struct_1, 13>(Struct_1(23280u, vec2<f32>(372f, -471f)), Struct_1(41281u, vec2<f32>(-520f, 305f)), Struct_1(1u, vec2<f32>(784f, 845f)), Struct_1(36062u, vec2<f32>(-425f, -232f)), Struct_1(0u, vec2<f32>(-1039f, 644f)), Struct_1(0u, vec2<f32>(-1000f, 175f)), Struct_1(14424u, vec2<f32>(518f, -394f)), Struct_1(59272u, vec2<f32>(-782f, 262f)), Struct_1(23644u, vec2<f32>(1000f, 1000f)), Struct_1(117170u, vec2<f32>(635f, 254f)), Struct_1(27519u, vec2<f32>(-969f, -594f)), Struct_1(0u, vec2<f32>(856f, -191f)), Struct_1(1u, vec2<f32>(-1878f, -1645f)));

var<private> global2: vec2<u32>;

var<private> global3: i32 = -17180i;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> u32 {
    global0 = array<i32, 3>();
    global3 = ~7876i << (reverseBits(global2.x) % 32u);
    var var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1370f, 1000f, 1000f, 1042f), vec4<f32>(-171f, -798f, -1151f, -747f), vec4<bool>(true, false, true, false)))) - _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(555f, 750f, 429f, 272f), vec4<f32>(1515f, -1366f, -999f, -1000f), vec4<bool>(true, false, false, true)))))))), -1487f);
    var var_1 = ~select(_wgslsmith_div_i32(abs(-64520i), 25424i), _wgslsmith_div_i32(12417i, -select(-1i, 10881i, false)), true);
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -356f), _wgslsmith_f_op_f32(round(2209f)), 472f);
    return 78206u;
}

fn func_4(arg_0: u32, arg_1: u32, arg_2: u32, arg_3: Struct_2) -> f32 {
    let var_0 = select(vec3<bool>(all(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, false, true))), true, !(-737f != arg_3.a.x)), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), false);
    global3 = global0[_wgslsmith_index_u32(~arg_1, 3u)];
    var var_1 = vec2<i32>(6522i, global0[_wgslsmith_index_u32(global2.x, 3u)]);
    let var_2 = arg_3.a.x;
    var_1 = -vec2<i32>(-31230i, var_1.x);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1219f))))) - _wgslsmith_f_op_f32(f32(-1f) * -1076f));
}

fn func_2() -> f32 {
    let var_0 = vec3<bool>(_wgslsmith_add_i32(24050i, _wgslsmith_mod_i32(u_input.b.x << (global2.x % 32u), 0i)) <= u_input.a, true, any(!vec4<bool>(true, true, true, all(vec3<bool>(true, false, true)))));
    var var_1 = u_input.b.yx;
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(func_4(select(_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(0u, global2.x, 1u, u_input.c)), _wgslsmith_sub_vec4_u32(vec4<u32>(0u, u_input.c, global2.x, 0u), vec4<u32>(68448u, u_input.c, 30291u, 11118u))), 30687u, !var_0.x), _wgslsmith_sub_u32(func_3(), ~(~4294967295u)), global2.x, Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1603f, -712f, 1000f, -1000f), vec4<f32>(1000f, -174f, 1000f, -880f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-549f, -1183f, 891f, -1686f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(306f * 1000f), -565f))))), _wgslsmith_f_op_f32(min(809f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-813f - _wgslsmith_f_op_f32(f32(-1f) * -598f)) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-2123f - -1390f)))))), _wgslsmith_div_f32(248f, -1000f), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1969f * 1000f))), 119f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-859f, -621f, true))))));
    var_2 = vec4<f32>(var_2.x, -606f, _wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(365f - _wgslsmith_f_op_f32(-var_2.x)))));
    var_1 = vec2<i32>(_wgslsmith_mult_i32(select(_wgslsmith_dot_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(global2.x, 3u)], var_1.x, var_1.x, -1i), vec4<i32>(global0[_wgslsmith_index_u32(1u, 3u)], -29865i, 2147483647i, 25365i)) ^ ~var_1.x, countOneBits(_wgslsmith_dot_vec2_i32(u_input.b.zx, vec2<i32>(u_input.b.x, global0[_wgslsmith_index_u32(8228u, 3u)]))), var_0.x), countOneBits(_wgslsmith_clamp_i32(~u_input.a, -var_1.x, reverseBits(var_1.x)))), _wgslsmith_add_i32(reverseBits(_wgslsmith_mult_i32(u_input.a, -1i)) | _wgslsmith_sub_i32(~global0[_wgslsmith_index_u32(u_input.c, 3u)], 1i), _wgslsmith_clamp_i32(81012i, 1i, 2147483647i)));
    return -452f;
}

fn func_1(arg_0: i32, arg_1: u32, arg_2: u32, arg_3: f32) -> Struct_1 {
    let var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-444f, 1669f, 1100f, arg_3)) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-697f, arg_3, arg_3, arg_3), vec4<f32>(-447f, -1000f, -1007f, 666f), vec4<bool>(false, false, true, true)))) + _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_3, -775f, -933f, 1093f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_3, -145f, arg_3, -1358f))), vec4<f32>(arg_3, 624f, arg_3, -302f))))), _wgslsmith_f_op_f32(arg_3 * 2035f));
    global0 = array<i32, 3>();
    var var_1 = 38737u;
    var var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.x - -2794f) + -299f) + var_0.b), _wgslsmith_f_op_f32(func_2())));
    var var_3 = ((_wgslsmith_add_i32(~global0[_wgslsmith_index_u32(63138u, 3u)], 0i) & firstTrailingBit(global0[_wgslsmith_index_u32(26155u, 3u)] & 53635i)) == _wgslsmith_clamp_i32(global0[_wgslsmith_index_u32(4294967295u, 3u)] ^ -1i, _wgslsmith_div_i32(u_input.b.x, u_input.b.x), _wgslsmith_dot_vec4_i32(abs(vec4<i32>(arg_0, 2147483647i, -10656i, -28166i)), abs(vec4<i32>(arg_0, global0[_wgslsmith_index_u32(u_input.c, 3u)], -54597i, arg_0))))) != (all(vec3<bool>(any(vec4<bool>(true, true, false, false)), all(vec3<bool>(false, true, false)), -1i != u_input.a)) && all(vec3<bool>(false, all(vec4<bool>(true, false, false, false)), any(vec4<bool>(true, false, true, false)))));
    return global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(max(select(select(vec3<u32>(4294967295u, 41520u, 82456u), vec3<u32>(arg_2, 19219u, 1u), vec3<bool>(true, true, false)), ~vec3<u32>(79104u, arg_2, 4294967295u), true), _wgslsmith_sub_vec3_u32(vec3<u32>(arg_2, arg_1, 62384u), vec3<u32>(global2.x, 4294967295u, 0u)) ^ firstTrailingBit(vec3<u32>(arg_1, global2.x, 39081u))), ~vec3<u32>(1u, 0u, firstTrailingBit(0u))) << (_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(5624u, 1u, 18696u), ~abs(vec3<u32>(1u, 4294967295u, 75341u))), firstLeadingBit(_wgslsmith_add_u32(~1184u, arg_1 & 1u))) % 32u), 13u)];
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2) -> Struct_2 {
    var var_0 = ~(-1i) | firstTrailingBit(118146i);
    let var_1 = ~(_wgslsmith_div_u32(_wgslsmith_mod_u32(arg_0.a, _wgslsmith_sub_u32(u_input.c, global2.x)), ~(~u_input.c)) << (firstLeadingBit(~0u & ~arg_0.a) % 32u));
    let var_2 = 496f;
    global1 = array<Struct_1, 13>();
    let var_3 = abs(_wgslsmith_clamp_u32(26061u, u_input.c, ~(~(~63778u))));
    return Struct_2(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_1.a - vec4<f32>(345f, var_2, -1252f, -1506f)))))), _wgslsmith_f_op_f32(trunc(arg_0.b.x)));
}

fn func_6(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec3<i32>) -> f32 {
    return -1000f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b;
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-278f, -273f))), _wgslsmith_f_op_f32(func_6(func_5(func_1(firstLeadingBit(0i), ~global2.x, u_input.c, -542f), Struct_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(-802f, -490f, 255f, -509f) * vec4<f32>(-345f, 278f, -1036f, -1141f)), _wgslsmith_f_op_f32(f32(-1f) * -403f))), Struct_2(vec4<f32>(1f, 1f, 1f, 1f), 1227f), u_input.b)), _wgslsmith_f_op_f32(step(-1510f, -1298f)));
    let var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(134f, -505f, -835f, var_1.x) - vec4<f32>(var_1.x, var_1.x, var_1.x, var_1.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1088f, var_1.x, 406f, var_1.x))))))), _wgslsmith_f_op_f32(abs(-422f)));
    global1 = array<Struct_1, 13>();
    var var_3 = global1[_wgslsmith_index_u32(u_input.c, 13u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(var_2.a)) + vec4<f32>(var_1.x, var_1.x, var_2.b, -417f)), var_2.a))), -global0[_wgslsmith_index_u32(~_wgslsmith_add_u32(1u, ~u_input.c), 3u)]);
}

