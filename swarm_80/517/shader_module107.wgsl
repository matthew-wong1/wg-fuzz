struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: vec4<u32>,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<i32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<Struct_1, 18> = array<Struct_1, 18>(Struct_1(vec4<u32>(1u, 24785u, 9020u, 4294967295u), -881f, vec4<u32>(21803u, 4294967295u, 21613u, 8893u), vec4<u32>(5832u, 1u, 4294967295u, 1u)), Struct_1(vec4<u32>(19867u, 0u, 22081u, 67614u), -215f, vec4<u32>(4294967295u, 47430u, 4860u, 11151u), vec4<u32>(24585u, 1u, 11988u, 0u)), Struct_1(vec4<u32>(0u, 1u, 5148u, 15512u), -1000f, vec4<u32>(23321u, 0u, 1u, 0u), vec4<u32>(9062u, 43982u, 56040u, 0u)), Struct_1(vec4<u32>(1u, 56928u, 4294967295u, 1u), -1594f, vec4<u32>(0u, 4294967295u, 4294967295u, 4294967295u), vec4<u32>(34410u, 51622u, 12063u, 17271u)), Struct_1(vec4<u32>(35009u, 26650u, 1u, 1u), -1800f, vec4<u32>(47534u, 36643u, 0u, 41539u), vec4<u32>(23940u, 1377u, 0u, 0u)), Struct_1(vec4<u32>(20030u, 85097u, 0u, 25549u), -643f, vec4<u32>(4294967295u, 18575u, 32779u, 1u), vec4<u32>(0u, 4294967295u, 0u, 1u)), Struct_1(vec4<u32>(1u, 10223u, 18695u, 0u), -838f, vec4<u32>(0u, 27571u, 19522u, 4294967295u), vec4<u32>(112166u, 0u, 79959u, 4294967295u)), Struct_1(vec4<u32>(0u, 25608u, 1u, 53615u), -986f, vec4<u32>(4294967295u, 40307u, 16652u, 4294967295u), vec4<u32>(34387u, 53113u, 4849u, 9667u)), Struct_1(vec4<u32>(1u, 4294967295u, 0u, 0u), -1106f, vec4<u32>(2421u, 33201u, 5301u, 22074u), vec4<u32>(65115u, 25225u, 0u, 50597u)), Struct_1(vec4<u32>(4294967295u, 26911u, 1u, 0u), -2034f, vec4<u32>(1u, 0u, 10836u, 35974u), vec4<u32>(9743u, 4294967295u, 4294967295u, 27640u)), Struct_1(vec4<u32>(4294967295u, 1548u, 4294967295u, 4294967295u), -1786f, vec4<u32>(51581u, 15916u, 4294967295u, 12124u), vec4<u32>(51588u, 4294967295u, 47175u, 4294967295u)), Struct_1(vec4<u32>(0u, 0u, 7551u, 1u), 421f, vec4<u32>(0u, 15317u, 51174u, 28477u), vec4<u32>(0u, 22602u, 57300u, 72705u)), Struct_1(vec4<u32>(71938u, 65188u, 13863u, 84194u), 953f, vec4<u32>(1u, 62315u, 38432u, 0u), vec4<u32>(4294967295u, 1u, 1u, 4016u)), Struct_1(vec4<u32>(0u, 9427u, 0u, 43443u), 1857f, vec4<u32>(21657u, 31039u, 31873u, 4294967295u), vec4<u32>(63466u, 28882u, 22343u, 12074u)), Struct_1(vec4<u32>(18886u, 1u, 0u, 0u), 359f, vec4<u32>(0u, 4214u, 0u, 0u), vec4<u32>(29424u, 0u, 0u, 0u)), Struct_1(vec4<u32>(1u, 72257u, 0u, 0u), -1000f, vec4<u32>(1u, 52866u, 7571u, 4294967295u), vec4<u32>(4294967295u, 1u, 40272u, 0u)), Struct_1(vec4<u32>(20197u, 4294967295u, 4294967295u, 22871u), -581f, vec4<u32>(2007u, 18675u, 28769u, 4294967295u), vec4<u32>(4294967295u, 1u, 4294967295u, 27771u)), Struct_1(vec4<u32>(1u, 56527u, 37638u, 1u), -1532f, vec4<u32>(4294967295u, 21212u, 4294967295u, 4294967295u), vec4<u32>(1u, 16065u, 0u, 97184u)));

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec4<f32>, arg_1: f32, arg_2: i32) -> vec4<f32> {
    let var_0 = Struct_1(~_wgslsmith_mod_vec4_u32(abs(firstLeadingBit(vec4<u32>(1u, 20907u, u_input.c.x, u_input.c.x))), vec4<u32>(abs(u_input.c.x), countOneBits(48845u), 28456u, u_input.c.x)), _wgslsmith_f_op_f32(step(-1175f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_0.x - arg_1))) + arg_1))), vec4<u32>(min(max(_wgslsmith_clamp_u32(1u, 0u, u_input.c.x), u_input.c.x), ~(~7999u)), ~1u, 92502u, _wgslsmith_mod_u32(22661u, ~u_input.c.x)), select(vec4<u32>(u_input.c.x, _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(1u, 4294967295u, 8280u), vec3<u32>(1u, 1u, 16093u)), vec3<u32>(u_input.c.x, 1u, 79356u)), max(u_input.c.x, 36234u << (u_input.c.x % 32u)), ~u_input.c.x), ~vec4<u32>(firstLeadingBit(74857u), 4817u, u_input.c.x << (1u % 32u), u_input.c.x), all(select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false), select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true), true)))));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1599f * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(var_0.b, arg_1)), _wgslsmith_f_op_f32(-arg_1)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_0.x * -286f))), _wgslsmith_div_f32(-115f, -573f)), any(!select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-828f)), arg_1)));
    var_1 = arg_0.yzw;
    global0 = 58649i <= -u_input.a.x;
    var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, var_0.b, arg_1))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(-371f, arg_0.x, -1177f) * vec3<f32>(var_1.x, 182f, arg_0.x)), _wgslsmith_f_op_vec3_f32(-arg_0.yzz))), !select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true))))) * arg_0.ywy);
    return arg_0;
}

fn func_2() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-861f, 115f, -1210f, -799f))), _wgslsmith_f_op_f32(ceil(732f)), select(-21129i, u_input.b, false)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-952f, -1910f, 1501f, -291f) + vec4<f32>(-384f, 596f, -802f, 729f)), vec4<f32>(_wgslsmith_f_op_f32(1774f - 601f), _wgslsmith_f_op_f32(f32(-1f) * -903f), _wgslsmith_f_op_f32(select(821f, 1000f, false)), _wgslsmith_f_op_f32(f32(-1f) * -745f)), vec4<bool>(all(vec3<bool>(false, true, true)), all(vec2<bool>(true, false)), true, false)))) * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -659f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-757f * _wgslsmith_f_op_f32(812f - -676f))), 1498f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -598f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -231f))))));
    var var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, _wgslsmith_f_op_f32(min(-617f, var_0.x)), _wgslsmith_f_op_f32(-923f * var_0.x), var_0.x) * _wgslsmith_f_op_vec4_f32(-var_0))), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(var_0.x, _wgslsmith_f_op_f32(var_0.x + var_0.x))), -1048f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -554f)), 1000f, var_0.x));
    var var_2 = Struct_1(countOneBits(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, 57182u, 4423u, u_input.c.x), countOneBits(~vec4<u32>(1u, u_input.c.x, 6509u, u_input.c.x)))), _wgslsmith_f_op_f32(f32(-1f) * -714f), abs(select(vec4<u32>(u_input.c.x, 23083u, u_input.c.x, u_input.c.x), _wgslsmith_mod_vec4_u32(select(vec4<u32>(35662u, 9269u, u_input.c.x, 20587u), vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 4294967295u), true), firstTrailingBit(vec4<u32>(7895u, 4294967295u, u_input.c.x, u_input.c.x))), vec4<bool>(true, true, true, true))), vec4<u32>(0u, 4323u, u_input.c.x, 33755u));
    var var_3 = select(select(vec4<bool>(true, (1i <= u_input.b) != true, true, true), vec4<bool>(!(u_input.c.x > var_2.a.x), true, false, all(select(vec2<bool>(false, true), vec2<bool>(false, false), true))), true), vec4<bool>(true, false, (var_2.c.x & (var_2.a.x & 4294967295u)) <= ~firstTrailingBit(var_2.d.x), !select(any(vec4<bool>(true, false, true, true)), 418f != var_0.x, u_input.b != u_input.b)), false);
    var_2 = global1[_wgslsmith_index_u32(0u, 18u)];
    return global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(var_2.d.yy, firstTrailingBit(~vec2<u32>(1u, 1u))), 18u)];
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: vec4<i32>) -> vec4<u32> {
    let var_0 = vec2<bool>(true, any(vec3<bool>(true, select(false, true, true), !all(vec2<bool>(false, true)))));
    let var_1 = global1[_wgslsmith_index_u32((abs(1u) ^ u_input.c.x) & 4294967295u, 18u)];
    global1 = array<Struct_1, 18>();
    let var_2 = func_2();
    var var_3 = _wgslsmith_sub_vec2_u32(var_1.d.wz, ~vec2<u32>(4294967295u, firstLeadingBit(arg_1.d.x)));
    return vec4<u32>(_wgslsmith_clamp_u32(var_1.a.x, firstLeadingBit(var_2.d.x), _wgslsmith_add_u32(~(~38668u), ~var_2.c.x)), abs(_wgslsmith_sub_u32(_wgslsmith_div_u32(u_input.c.x << (u_input.c.x % 32u), ~arg_0.x), (u_input.c.x & var_2.d.x) & 1u)), arg_1.a.x, var_1.d.x);
}

fn func_1(arg_0: vec3<i32>, arg_1: bool, arg_2: bool, arg_3: vec3<bool>) -> Struct_1 {
    return Struct_1(_wgslsmith_sub_vec4_u32(countOneBits(~vec4<u32>(u_input.c.x, 0u, u_input.c.x, 12922u)), select(vec4<u32>(u_input.c.x, 0u, u_input.c.x, 4294967295u) >> (vec4<u32>(1u, 78737u, 0u, u_input.c.x) % vec4<u32>(32u)), vec4<u32>(0u, u_input.c.x, u_input.c.x, 0u), !vec4<bool>(false, true, arg_3.x, true)) | min(firstLeadingBit(vec4<u32>(u_input.c.x, 4294967295u, 11465u, 27070u)), _wgslsmith_add_vec4_u32(vec4<u32>(0u, u_input.c.x, u_input.c.x, u_input.c.x), vec4<u32>(1u, u_input.c.x, 0u, 1u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-338f, -1856f))))), _wgslsmith_add_vec4_u32(func_4(u_input.c, func_2(), u_input.a & _wgslsmith_div_vec4_i32(vec4<i32>(u_input.b, 0i, 1i, u_input.a.x), vec4<i32>(33904i, -40781i, -2147483647i, 1i))), vec4<u32>(firstLeadingBit(u_input.c.x), u_input.c.x, 1u, _wgslsmith_add_u32(21645u, 1u))), _wgslsmith_mult_vec4_u32(firstLeadingBit(~_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, u_input.c.x, u_input.c.x, u_input.c.x), vec4<u32>(1u, 1u, u_input.c.x, u_input.c.x))), vec4<u32>(abs(u_input.c.x) << (u_input.c.x % 32u), max(u_input.c.x | 68608u, u_input.c.x), u_input.c.x, u_input.c.x << (u_input.c.x % 32u))));
}

fn func_5(arg_0: Struct_1, arg_1: u32) -> vec2<bool> {
    var var_0 = select(func_2().d, vec4<u32>(~func_1(vec3<i32>(-2147483647i, -2147483647i, u_input.b), false, true, vec3<bool>(true, true, true)).d.x >> (abs(~1u) % 32u), 19821u, _wgslsmith_mult_u32(_wgslsmith_mult_u32(4294967295u, 1u) ^ ~arg_1, select(~1u, abs(55129u), true)), u_input.c.x), select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false), select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, false))), vec4<bool>(true, true, true, true)), !vec4<bool>(true, true, true, any(vec4<bool>(true, false, true, true))), vec4<bool>(true | (arg_0.b > arg_0.b), select(any(vec4<bool>(false, false, true, false)), select(false, true, true), 60728i < u_input.b), !select(false, true, false), true)));
    var var_1 = _wgslsmith_mult_u32(arg_1, ~(~4294967295u));
    let var_2 = Struct_1(abs(func_4(~_wgslsmith_sub_vec2_u32(var_0.yz, arg_0.c.xx), func_1(min(u_input.a.zwy, vec3<i32>(u_input.b, u_input.b, u_input.b)), all(vec3<bool>(false, false, true)), any(vec2<bool>(true, false)), select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, true))), _wgslsmith_sub_vec4_i32(-vec4<i32>(-2147483647i, -1i, -34464i, -1i), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -1i) ^ vec4<i32>(2147483647i, u_input.a.x, 38338i, u_input.a.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(593f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_0.b)) - -1279f)), arg_0.b), ~vec4<u32>(max(2034u, _wgslsmith_dot_vec3_u32(var_0.wzy, vec3<u32>(u_input.c.x, arg_0.c.x, u_input.c.x))), 10040u, 1u | _wgslsmith_add_u32(arg_0.c.x, 61557u), u_input.c.x), vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_add_u32(100155u, u_input.c.x), 32322u, arg_0.d.x >> (4294967295u % 32u)), max(vec3<u32>(arg_0.c.x, 5211u, 33935u), arg_0.a.yzx)), 23801u, var_0.x, ~func_1(vec3<i32>(u_input.b, u_input.b, -15207i) | vec3<i32>(u_input.a.x, u_input.b, -96394i), 1767f < arg_0.b, false, vec3<bool>(true, false, false)).a.x));
    let var_3 = func_1(-min(-u_input.a.wzw, vec3<i32>(u_input.a.x, u_input.b, u_input.b)) | vec3<i32>(min(~u_input.a.x, i32(-1i) * -2147483647i), u_input.b, 22772i), _wgslsmith_div_u32(~4294967295u, max(_wgslsmith_dot_vec4_u32(var_2.a, var_2.a), _wgslsmith_add_u32(1u, 1u))) >= ~_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(var_0.yzw, vec3<u32>(arg_0.a.x, var_2.a.x, var_2.a.x)), firstTrailingBit(arg_0.c.xzw)), true, !(!select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(false, false, true)), vec3<bool>(true, false, false))));
    var var_4 = ~u_input.a.yw;
    return select(!vec2<bool>(40908u >= arg_0.c.x, select(true, false, true)), vec2<bool>(false, any(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false), true))), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), !select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true))), vec2<bool>(all(vec3<bool>(true, true, true)), true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(select(select(select(vec2<bool>(false, false), vec2<bool>(true, true), all(vec4<bool>(false, false, false, false))), select(vec2<bool>(true, false), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true)), true), vec2<bool>(true, all(vec3<bool>(true, false, true)))), select(vec2<bool>(true, any(vec2<bool>(false, false))), func_5(func_1(vec3<i32>(u_input.a.x, u_input.b, 1i), true, false, vec3<bool>(true, false, false)), 4294967295u), select(func_5(Struct_1(vec4<u32>(31895u, u_input.c.x, 0u, u_input.c.x), 224f, vec4<u32>(1u, u_input.c.x, u_input.c.x, u_input.c.x), vec4<u32>(4294967295u, 14576u, u_input.c.x, 14226u)), u_input.c.x), vec2<bool>(false, false), true)), any(!select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false), true))), select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false)), true), true), !vec2<bool>(all(vec4<bool>(true, true, true, true)), true), select(!select(vec2<bool>(true, true), vec2<bool>(true, true), true), select(select(vec2<bool>(true, false), vec2<bool>(false, false), true), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<bool>(true, true)), vec2<bool>(true, true))), select(func_5(Struct_1(vec4<u32>(u_input.c.x, 0u, 0u, 51836u), _wgslsmith_f_op_f32(f32(-1f) * -616f), _wgslsmith_mod_vec4_u32(vec4<u32>(86955u, 38791u, 62751u, u_input.c.x), vec4<u32>(u_input.c.x, u_input.c.x, 16980u, 72654u)), ~vec4<u32>(u_input.c.x, 0u, 4294967295u, u_input.c.x)), u_input.c.x), select(!func_5(Struct_1(vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 7942u), 149f, vec4<u32>(u_input.c.x, 14959u, 232u, 31676u), vec4<u32>(32104u, 39213u, u_input.c.x, u_input.c.x)), 11758u), select(vec2<bool>(true, true), vec2<bool>(true, true), all(vec4<bool>(true, true, false, false))), vec2<bool>(true, true)), vec2<bool>(true, true)));
    var var_1 = func_2();
    global0 = var_0.x;
    var var_2 = global1[_wgslsmith_index_u32(var_1.c.x, 18u)];
    var var_3 = func_2().a.x;
    let var_4 = vec2<bool>(true, all(vec2<bool>(var_0.x, var_0.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_2.b, var_2.b, -700f, 940f), vec4<f32>(1141f, -1121f, var_2.b, 752f), vec4<bool>(var_4.x, var_4.x, false, false)))))), vec2<i32>(firstLeadingBit(_wgslsmith_mod_i32(_wgslsmith_div_i32(u_input.b, u_input.a.x), 0i)), max(1i, ~u_input.b)), vec4<f32>(var_1.b, _wgslsmith_f_op_f32(-var_1.b), _wgslsmith_f_op_f32(2123f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_1.b)) + var_2.b)), var_2.b));
}

