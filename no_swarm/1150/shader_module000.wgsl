struct Struct_1 {
    a: vec3<bool>,
    b: vec4<bool>,
    c: f32,
}

struct Struct_2 {
    a: f32,
    b: vec3<f32>,
    c: Struct_1,
    d: vec3<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_1,
    c: Struct_1,
    d: vec4<u32>,
    e: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: vec2<f32>,
    d: f32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<u32, 14>;

var<private> global2: bool;

var<private> global3: Struct_1;

var<private> global4: array<i32, 16>;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32, arg_1: Struct_2, arg_2: Struct_2, arg_3: i32) -> vec4<bool> {
    let var_0 = any(select(select(select(arg_2.c.b.xw, arg_1.e.b.ww, global3.b.x), select(vec2<bool>(arg_1.e.a.x, global3.b.x), vec2<bool>(false, false), any(arg_1.e.a)), !select(global3.b.x, arg_2.e.a.x, arg_2.e.b.x)), select(!arg_2.c.a.yx, arg_2.e.b.wx, -2147483647i > _wgslsmith_clamp_i32(20702i, -53279i, arg_3)), select(vec2<bool>(any(arg_2.e.b.wyx), arg_2.c.a.x && global3.a.x), arg_1.e.b.zw, all(!vec4<bool>(false, arg_2.e.b.x, false, true)))));
    let var_1 = arg_1.b.yx;
    global2 = arg_1.e.b.x;
    let var_2 = arg_2;
    let var_3 = -707f;
    return global3.b;
}

fn func_2(arg_0: vec3<u32>, arg_1: f32, arg_2: vec2<i32>) -> u32 {
    let var_0 = ~_wgslsmith_mod_u32(_wgslsmith_div_u32(~u_input.a.x, reverseBits(arg_0.x)), global1[_wgslsmith_index_u32(~abs(60295u), 14u)]) << ((u_input.a.x & ~(~(u_input.a.x ^ 69443u))) % 32u);
    var var_1 = Struct_3(vec4<bool>(true, (1u | select(u_input.a.x, 1u, global3.a.x)) <= var_0, false, any(func_3(2147483647i, Struct_2(global3.c, vec3<f32>(arg_1, global3.c, global3.c), Struct_1(vec3<bool>(global3.a.x, global3.a.x, false), vec4<bool>(true, global3.b.x, global3.a.x, false), global3.c), vec3<u32>(84463u, var_0, u_input.a.x), Struct_1(vec3<bool>(global3.b.x, true, true), global3.b, arg_1)), Struct_2(-1859f, vec3<f32>(global3.c, 609f, arg_1), Struct_1(vec3<bool>(global3.a.x, false, global3.b.x), global3.b, arg_1), u_input.a, Struct_1(vec3<bool>(global3.b.x, global3.a.x, global3.a.x), global3.b, global3.c)), _wgslsmith_mod_i32(arg_2.x, 0i)))), Struct_1(vec3<bool>(!all(global3.b), global3.b.x, global3.b.x), !(!global3.b), _wgslsmith_div_f32(global3.c, -1735f)), Struct_1(global3.b.zyx, !vec4<bool>(true, all(global3.b), all(global3.b), global3.b.x | global3.b.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(363f - arg_1)))), reverseBits(~min(vec4<u32>(u_input.a.x, var_0, 0u, global1[_wgslsmith_index_u32(u_input.a.x, 14u)]), vec4<u32>(10744u, u_input.a.x, arg_0.x, global1[_wgslsmith_index_u32(58089u, 14u)]))), global3.b.x);
    let var_2 = arg_0.yz;
    let var_3 = ~_wgslsmith_sub_vec2_i32(vec2<i32>(_wgslsmith_clamp_i32(2147483647i, -5519i, abs(2147483647i)), arg_2.x), abs(vec2<i32>(-2147483647i, 1i)));
    let var_4 = vec4<i32>(global4[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_mod_u32(4294967295u, ~_wgslsmith_mult_u32(var_1.d.x, 22063u))), 16u)], 40022i, _wgslsmith_add_i32(var_3.x, _wgslsmith_mod_i32(0i, var_3.x)), 2147483647i);
    return max(37269u, firstTrailingBit(~_wgslsmith_sub_u32(0u, var_1.d.x)));
}

fn func_4(arg_0: i32, arg_1: u32) -> vec3<bool> {
    var var_0 = min(abs(vec2<i32>(-1i) * -firstTrailingBit(vec2<i32>(global4[_wgslsmith_index_u32(u_input.a.x, 16u)], global4[_wgslsmith_index_u32(4294967295u, 16u)]))), firstLeadingBit(_wgslsmith_div_vec2_i32(_wgslsmith_div_vec2_i32(~vec2<i32>(-6356i, arg_0), _wgslsmith_sub_vec2_i32(vec2<i32>(-12818i, -1i), vec2<i32>(17427i, 2251i))), vec2<i32>(arg_0 >> (88344u % 32u), -34070i))));
    let var_1 = select(_wgslsmith_dot_vec2_i32(countOneBits(_wgslsmith_div_vec2_i32(vec2<i32>(9658i, var_0.x), _wgslsmith_sub_vec2_i32(vec2<i32>(0i, 19868i), vec2<i32>(1795i, arg_0)))), ~vec2<i32>(-2147483647i, -global4[_wgslsmith_index_u32(4294967295u, 16u)])), abs(global4[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1 << (0u % 32u), u_input.a.x & 55208u, reverseBits(0u), ~u_input.a.x), vec4<u32>(~u_input.a.x, 1u, ~u_input.a.x, ~u_input.a.x)), 16u)]), arg_0 >= (-37441i & min(_wgslsmith_div_i32(2910i, -48724i), var_0.x)));
    let var_2 = _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(715f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global3.c))), -1295f)));
    let var_3 = ~countOneBits(vec4<u32>(global1[_wgslsmith_index_u32(reverseBits(~global1[_wgslsmith_index_u32(arg_1, 14u)]), 14u)], arg_1 >> (4294967295u % 32u), ~u_input.a.x, u_input.a.x));
    var var_4 = Struct_3(func_3(_wgslsmith_dot_vec3_i32(~(~vec3<i32>(18489i, global4[_wgslsmith_index_u32(u_input.a.x, 16u)], -1i)), _wgslsmith_mult_vec3_i32(firstTrailingBit(vec3<i32>(201i, var_0.x, -1i)), select(vec3<i32>(40246i, global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 14u)], 16u)], 1i), vec3<i32>(global4[_wgslsmith_index_u32(4294967295u, 16u)], 0i, -27550i), true))), Struct_2(776f, var_2, Struct_1(select(global3.b.yyw, vec3<bool>(global3.b.x, false, global3.b.x), global3.b.yyz), !global3.b, _wgslsmith_f_op_f32(f32(-1f) * -2239f)), var_3.www, Struct_1(global3.a, global3.b, _wgslsmith_f_op_f32(global3.c + -226f))), Struct_2(_wgslsmith_f_op_f32(max(var_2.x, _wgslsmith_f_op_f32(global3.c + global3.c))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global3.c, -1423f, global3.c) * vec3<f32>(-117f, 737f, -154f))), Struct_1(select(vec3<bool>(global3.b.x, true, true), global3.a, global3.a), select(vec4<bool>(true, global3.b.x, false, true), global3.b, vec4<bool>(global3.a.x, true, false, true)), _wgslsmith_f_op_f32(max(1052f, var_2.x))), min(~u_input.a, vec3<u32>(u_input.a.x, global1[_wgslsmith_index_u32(4294967295u, 14u)], var_3.x) ^ vec3<u32>(39506u, var_3.x, var_3.x)), Struct_1(vec3<bool>(global3.b.x, global3.b.x, global3.b.x), vec4<bool>(false, false, true, true), -1000f)), ~firstTrailingBit(arg_0)), Struct_1(vec3<bool>(global3.a.x, !(global3.a.x | true), true), select(!select(global3.b, vec4<bool>(global3.a.x, global3.b.x, true, false), global3.a.x), global3.b, vec4<bool>(true, all(global3.b.xwx), global3.b.x, global3.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(709f - -1000f)) - -590f)), Struct_1(!vec3<bool>(any(global3.a.yz), false | global3.b.x, true), global3.b, _wgslsmith_f_op_f32(-357f + _wgslsmith_f_op_f32(trunc(-1392f)))), _wgslsmith_div_vec4_u32(firstLeadingBit(select(vec4<u32>(u_input.a.x, 13364u, arg_1, 0u), abs(vec4<u32>(4294967295u, 30704u, 51836u, var_3.x)), !global3.b.x)), vec4<u32>(~1u, 4294967295u, _wgslsmith_clamp_u32(global1[_wgslsmith_index_u32(abs(global1[_wgslsmith_index_u32(u_input.a.x, 14u)]), 14u)], _wgslsmith_mult_u32(global1[_wgslsmith_index_u32(var_3.x, 14u)], 18851u), 0u), global1[_wgslsmith_index_u32((global1[_wgslsmith_index_u32(1u, 14u)] << (0u % 32u)) | 21380u, 14u)])), !global3.a.x);
    return func_3(i32(-1i) * -2147483647i, Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -338f) * var_2.x), vec3<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(var_2.x)), _wgslsmith_div_f32(var_2.x, 1000f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-984f * var_4.c.c)))), var_4.c, vec3<u32>(func_2(u_input.a, _wgslsmith_f_op_f32(-1542f - var_2.x), _wgslsmith_sub_vec2_i32(vec2<i32>(global4[_wgslsmith_index_u32(var_4.d.x, 16u)], global4[_wgslsmith_index_u32(arg_1, 16u)]), vec2<i32>(arg_0, var_1))), ~59127u, ~1u), Struct_1(!select(vec3<bool>(global3.b.x, var_4.a.x, true), var_4.c.a, var_4.c.a), global3.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.c) + _wgslsmith_f_op_f32(109f + global3.c)))), Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -509f), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(vec3<f32>(var_2.x, -831f, -751f), vec3<f32>(1575f, -578f, 1000f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.c, global3.c, -861f)))), _wgslsmith_f_op_vec3_f32(-var_2))), Struct_1(global3.b.wwz, select(select(var_4.b.b, vec4<bool>(var_4.b.b.x, var_4.a.x, true, true), var_4.e), !vec4<bool>(global3.a.x, true, true, true), true), -114f), abs(var_4.d.yzw) ^ _wgslsmith_clamp_vec3_u32(_wgslsmith_div_vec3_u32(u_input.a, vec3<u32>(global1[_wgslsmith_index_u32(var_4.d.x, 14u)], 54243u, 4294967295u)), vec3<u32>(global1[_wgslsmith_index_u32(1u, 14u)], 73044u, global1[_wgslsmith_index_u32(2003u, 14u)]) ^ var_4.d.wzy, abs(vec3<u32>(var_4.d.x, var_4.d.x, 1u))), Struct_1(func_3(global4[_wgslsmith_index_u32(_wgslsmith_add_u32(96883u, 14595u), 16u)], Struct_2(128f, var_2, var_4.b, vec3<u32>(22191u, global1[_wgslsmith_index_u32(var_3.x, 14u)], 93441u), Struct_1(vec3<bool>(global3.a.x, global3.a.x, var_4.c.b.x), global3.b, 1625f)), Struct_2(var_2.x, vec3<f32>(515f, global3.c, -993f), Struct_1(global3.a, var_4.c.b, var_2.x), var_3.wwz, var_4.b), ~arg_0).yzy, vec4<bool>(select(true, false, true), global3.a.x, true, all(vec2<bool>(var_4.a.x, var_4.c.a.x))), _wgslsmith_f_op_f32(ceil(global3.c)))), -_wgslsmith_clamp_i32(i32(-1i) * -13891i, 1i, var_1)).wyw;
}

fn func_1(arg_0: u32) -> Struct_1 {
    global1 = array<u32, 14>();
    var var_0 = Struct_1(select(vec3<bool>(global3.a.x, false, any(global3.b) | true), !select(select(global3.a, global3.a, vec3<bool>(global3.a.x, global3.a.x, true)), !vec3<bool>(true, global3.b.x, global3.b.x), global3.b.x != false), vec3<bool>(!(global1[_wgslsmith_index_u32(u_input.a.x, 14u)] < global1[_wgslsmith_index_u32(u_input.a.x, 14u)]), all(!vec3<bool>(false, true, global3.a.x)), false)), !(!(!(!global3.b))), global3.c);
    var var_1 = global3.b;
    var_0 = Struct_1(select(func_4(_wgslsmith_sub_i32(1i, ~(-1i)), _wgslsmith_add_u32(func_2(u_input.a, global3.c, vec2<i32>(global4[_wgslsmith_index_u32(14763u, 16u)], 1i)), ~4294967295u)), vec3<bool>(u_input.a.x >= u_input.a.x, func_3(-1i, Struct_2(global3.c, vec3<f32>(2174f, var_0.c, 756f), Struct_1(vec3<bool>(var_1.x, true, global3.a.x), vec4<bool>(true, var_1.x, true, false), 1704f), vec3<u32>(4294967295u, 32714u, 70863u), Struct_1(vec3<bool>(global3.a.x, global3.b.x, false), vec4<bool>(global3.b.x, false, false, false), 518f)), Struct_2(-1306f, vec3<f32>(1561f, 459f, 642f), Struct_1(var_0.b.xzx, vec4<bool>(false, global3.b.x, global3.a.x, false), global3.c), vec3<u32>(u_input.a.x, u_input.a.x, 60267u), Struct_1(var_0.a, vec4<bool>(true, var_1.x, true, false), global3.c)), ~global4[_wgslsmith_index_u32(4294967295u, 16u)]).x, true), var_1.x), select(!global3.b, var_0.b, !all(var_0.b)), -685f);
    let var_2 = Struct_1(vec3<bool>(true, false, true), !func_3(_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, global4[_wgslsmith_index_u32(u_input.a.x, 16u)], global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_0, 14u)], 16u)]), vec3<i32>(2147483647i, global4[_wgslsmith_index_u32(u_input.a.x, 16u)], global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_0, 14u)], 16u)])), global4[_wgslsmith_index_u32(~arg_0, 16u)]), Struct_2(-1102f, _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_0.c, var_0.c, global3.c))), Struct_1(global3.b.zxy, vec4<bool>(false, var_0.a.x, global3.a.x, var_0.b.x), var_0.c), vec3<u32>(1681u, 16996u, u_input.a.x), Struct_1(var_0.b.yyw, vec4<bool>(var_1.x, var_1.x, false, false), global3.c)), Struct_2(_wgslsmith_f_op_f32(max(global3.c, -1000f)), vec3<f32>(813f, -1462f, 395f), Struct_1(var_0.b.wyx, var_0.b, 1236f), vec3<u32>(1u, 70162u, global1[_wgslsmith_index_u32(u_input.a.x, 14u)]), Struct_1(var_1.zwy, vec4<bool>(var_1.x, var_0.a.x, false, global3.b.x), global3.c)), -53768i), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.c), _wgslsmith_f_op_f32(f32(-1f) * -1489f)))), -2692f)));
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = false;
    var var_1 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1087f, _wgslsmith_f_op_f32(-global3.c))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-614f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1095f, global3.c, global3.c) + vec3<f32>(-147f, global3.c, global3.c)), vec3<f32>(global3.c, global3.c, -1131f), true))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global3.c, global3.c, 916f), _wgslsmith_div_vec3_f32(vec3<f32>(global3.c, -1678f, global3.c), vec3<f32>(global3.c, global3.c, -228f)), !vec3<bool>(global3.a.x, false, var_0))))), func_1(min(~(~78159u), 0u)), u_input.a << (u_input.a % vec3<u32>(32u)), func_1(40930u));
    global3 = func_1(global1[_wgslsmith_index_u32(var_1.d.x, 14u)]);
    global4 = array<i32, 16>();
    let var_2 = u_input.a.x;
    global0 = any(func_4(countOneBits(select(abs(8995i), abs(1i), !var_0)), _wgslsmith_mult_u32(reverseBits(1u), ~var_1.d.x)));
    let x = u_input.a;
    s_output = StorageBuffer(1u, var_1.b.yz, _wgslsmith_f_op_vec2_f32(-var_1.b.yz), var_1.e.c, vec3<i32>(_wgslsmith_div_i32(~(-7760i), _wgslsmith_sub_i32(global4[_wgslsmith_index_u32(9090u, 16u)] & global4[_wgslsmith_index_u32(u_input.a.x, 16u)], -1i)), -(abs(21212i) | global4[_wgslsmith_index_u32(1u, 16u)]), 36547i));
}

