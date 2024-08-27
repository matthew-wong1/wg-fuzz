struct Struct_1 {
    a: vec4<bool>,
    b: vec3<i32>,
    c: u32,
    d: vec4<f32>,
    e: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
    d: vec4<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec2<f32>,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 29>;

var<private> global1: array<bool, 12>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: vec3<bool>) -> vec4<u32> {
    global1 = array<bool, 12>();
    let var_0 = Struct_2(Struct_1(!select(!vec4<bool>(global1[_wgslsmith_index_u32(u_input.e.x, 12u)], true, global0[_wgslsmith_index_u32(2977u, 29u)], true), !vec4<bool>(global1[_wgslsmith_index_u32(u_input.e.x, 12u)], true, arg_0.x, false), vec4<bool>(global1[_wgslsmith_index_u32(5042u, 12u)], false, global0[_wgslsmith_index_u32(u_input.e.x, 29u)], true)), u_input.d.wwy, ~(~_wgslsmith_sub_u32(u_input.e.x, 16642u)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-258f, -666f, 388f, 106f), vec4<f32>(-1000f, 188f, 1357f, 622f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(804f, -1121f, 1257f, 1460f) - vec4<f32>(-1000f, -1427f, 1051f, 654f)) * _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(280f, -1346f, 1481f, 1180f)))))), reverseBits(vec4<i32>(u_input.c, -u_input.b, -u_input.c, 0i))), Struct_1(vec4<bool>(all(select(vec4<bool>(global1[_wgslsmith_index_u32(23125u, 12u)], false, true, true), vec4<bool>(false, arg_0.x, true, arg_0.x), global0[_wgslsmith_index_u32(u_input.e.x, 29u)])), true, 1i != -u_input.b, any(select(vec4<bool>(false, false, global1[_wgslsmith_index_u32(63200u, 12u)], true), vec4<bool>(global1[_wgslsmith_index_u32(u_input.e.x, 12u)], global1[_wgslsmith_index_u32(27634u, 12u)], global1[_wgslsmith_index_u32(28641u, 12u)], true), true))), _wgslsmith_sub_vec3_i32(u_input.d.yyx, vec3<i32>(15422i, i32(-1i) * -2147483647i, 1i)), max(~16538u, ~_wgslsmith_add_u32(34075u, u_input.e.x)), vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -476f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-206f)) + _wgslsmith_f_op_f32(min(-609f, -1000f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-681f, 921f)), 255f), -668f), reverseBits(vec4<i32>(_wgslsmith_mult_i32(u_input.c, 0i), u_input.c, 2147483647i, u_input.a.x | -10217i))), Struct_1(select(select(vec4<bool>(global1[_wgslsmith_index_u32(u_input.e.x, 12u)], global1[_wgslsmith_index_u32(u_input.e.x, 12u)], true, global0[_wgslsmith_index_u32(u_input.e.x, 29u)]), vec4<bool>(false, arg_0.x, true, false), vec4<bool>(false, false, global0[_wgslsmith_index_u32(1u, 29u)], true)), vec4<bool>(true, true, all(arg_0), arg_0.x & arg_0.x), select(true, global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(32265u, 1u), 29u)], arg_0.x)), -abs(firstTrailingBit(u_input.d.wzw)), _wgslsmith_div_u32(1u, max(u_input.e.x, u_input.e.x)), vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(1335f)), _wgslsmith_f_op_f32(-1255f - -171f))), _wgslsmith_f_op_f32(-1439f - _wgslsmith_f_op_f32(497f * 354f)), _wgslsmith_f_op_f32(ceil(1008f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(403f * 1004f)))), _wgslsmith_add_vec4_i32(_wgslsmith_sub_vec4_i32(u_input.d ^ u_input.d, vec4<i32>(u_input.a.x, u_input.d.x, 2147483647i, 22548i) ^ vec4<i32>(u_input.b, 45494i, 336i, u_input.b)), u_input.d)), Struct_1(select(!vec4<bool>(false, global1[_wgslsmith_index_u32(4294967295u, 12u)], false, false), select(select(vec4<bool>(true, true, false, true), vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.e.x, 12u)], false, true), vec4<bool>(true, false, global1[_wgslsmith_index_u32(1u, 12u)], false)), vec4<bool>(arg_0.x, global1[_wgslsmith_index_u32(4294967295u, 12u)], false, false), select(vec4<bool>(global1[_wgslsmith_index_u32(1u, 12u)], true, global0[_wgslsmith_index_u32(0u, 29u)], true), vec4<bool>(false, arg_0.x, true, true), false)), global0[_wgslsmith_index_u32(u_input.e.x, 29u)]), u_input.d.xyx, ~(_wgslsmith_dot_vec2_u32(u_input.e, u_input.e) ^ 1u), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-960f, 631f, 119f, -465f), vec4<f32>(319f, -1000f, -350f, 327f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1127f, -214f, 960f, 2474f) * vec4<f32>(-1000f, -469f, -578f, 129f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 1051f, 1556f, 1236f))), true)), _wgslsmith_clamp_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(42260i, u_input.c, u_input.c, u_input.c), -vec4<i32>(u_input.b, 2147483647i, 32571i, u_input.c)), u_input.d, ~u_input.d)));
    let var_1 = Struct_1(vec4<bool>(arg_0.x, global1[_wgslsmith_index_u32(u_input.e.x, 12u)], any(select(!var_0.a.a.ww, !var_0.a.a.yw, !vec2<bool>(true, var_0.c.a.x))), global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(max(4294967295u, firstLeadingBit(59618u)), firstTrailingBit(1u)), 12u)]), reverseBits(_wgslsmith_mult_vec3_i32(select(countOneBits(vec3<i32>(var_0.b.e.x, 1i, u_input.a.x)), ~vec3<i32>(-2147483647i, 1i, -16001i), !vec3<bool>(global1[_wgslsmith_index_u32(10598u, 12u)], var_0.b.a.x, var_0.d.a.x)), _wgslsmith_div_vec3_i32(var_0.d.e.yyy, vec3<i32>(var_0.a.b.x, -23439i, 11495i)))), 1u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-var_0.a.d)))))), u_input.d);
    global1 = array<bool, 12>();
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(639f, 217f, var_1.d.x))) - vec3<f32>(_wgslsmith_f_op_f32(trunc(-685f)), var_0.d.d.x, -1000f)) - vec3<f32>(1078f, _wgslsmith_f_op_f32(var_1.d.x * -1000f), _wgslsmith_f_op_f32(-var_1.d.x))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1153f), _wgslsmith_f_op_f32(-var_1.d.x), var_0.a.d.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_1.d.xxz - vec3<f32>(224f, -302f, var_1.d.x))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.c.d.x, -1116f, -615f) - var_0.b.d.wyw)))));
    return firstLeadingBit(~countOneBits(~(~vec4<u32>(var_0.c.c, 47626u, 4294967295u, 35776u))));
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_sub_vec3_u32(vec3<u32>(abs(u_input.e.x), _wgslsmith_dot_vec4_u32(min(vec4<u32>(0u, 4294967295u, 55838u, u_input.e.x), ~vec4<u32>(u_input.e.x, 4294967295u, 0u, u_input.e.x)), _wgslsmith_add_vec4_u32(func_3(vec3<bool>(false, true, false)), vec4<u32>(66267u, u_input.e.x, u_input.e.x, u_input.e.x))), u_input.e.x), _wgslsmith_div_vec3_u32(~((vec3<u32>(u_input.e.x, 48704u, u_input.e.x) & vec3<u32>(1379u, 38746u, u_input.e.x)) & _wgslsmith_add_vec3_u32(vec3<u32>(u_input.e.x, 4294967295u, u_input.e.x), vec3<u32>(9991u, u_input.e.x, 1u))), vec3<u32>(0u, 0u, 112826u)));
    let var_1 = vec3<bool>(global1[_wgslsmith_index_u32(~u_input.e.x, 12u)], true, global1[_wgslsmith_index_u32(~1u, 12u)]);
    let var_2 = u_input.d.zzx;
    var_0 = min(~(~vec3<u32>(var_0.x, var_0.x, u_input.e.x) ^ vec3<u32>(u_input.e.x, 24443u, 0u)) & ~abs(_wgslsmith_div_vec3_u32(vec3<u32>(0u, 0u, var_0.x), vec3<u32>(4294967295u, var_0.x, 76217u))), func_3(vec3<bool>(global0[_wgslsmith_index_u32(~11678u, 29u)], false, true)).wzz ^ (vec3<u32>(u_input.e.x, u_input.e.x, 89732u) | abs(_wgslsmith_add_vec3_u32(vec3<u32>(84654u, var_0.x, u_input.e.x), vec3<u32>(u_input.e.x, 0u, 4294967295u)))));
    var_0 = _wgslsmith_clamp_vec3_u32(abs(firstTrailingBit(~vec3<u32>(u_input.e.x, u_input.e.x, 5903u))), vec3<u32>(_wgslsmith_div_u32(_wgslsmith_clamp_u32(~u_input.e.x, ~59678u, var_0.x), _wgslsmith_dot_vec4_u32(min(vec4<u32>(1u, u_input.e.x, u_input.e.x, 0u), vec4<u32>(65245u, 51943u, u_input.e.x, var_0.x)), vec4<u32>(31313u, u_input.e.x, u_input.e.x, 28027u))), _wgslsmith_mult_u32(4294967295u, reverseBits(var_0.x) | _wgslsmith_mult_u32(24987u, 4437u)), _wgslsmith_add_u32(u_input.e.x, _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, u_input.e.x, var_0.x, u_input.e.x), _wgslsmith_mod_vec4_u32(vec4<u32>(var_0.x, u_input.e.x, u_input.e.x, u_input.e.x), vec4<u32>(var_0.x, 1u, var_0.x, 25133u))))), countOneBits(vec3<u32>(_wgslsmith_dot_vec2_u32(~u_input.e, vec2<u32>(0u, var_0.x)), ~40244u, _wgslsmith_div_u32(~var_0.x, _wgslsmith_add_u32(u_input.e.x, u_input.e.x)))));
    return Struct_1(select(select(select(vec4<bool>(global1[_wgslsmith_index_u32(u_input.e.x, 12u)], global0[_wgslsmith_index_u32(15777u, 29u)], var_1.x, global1[_wgslsmith_index_u32(var_0.x, 12u)]), !vec4<bool>(global1[_wgslsmith_index_u32(1u, 12u)], global1[_wgslsmith_index_u32(24118u, 12u)], global0[_wgslsmith_index_u32(1u, 29u)], var_1.x), true), select(vec4<bool>(false, global0[_wgslsmith_index_u32(3351u, 29u)], global0[_wgslsmith_index_u32(1u, 29u)], var_1.x), vec4<bool>(true, true, true, true), true), any(var_1)), vec4<bool>(true, all(var_1.yy) && select(false, false, true), false, false), true), -vec3<i32>(-abs(u_input.a.x), -2147483647i, (i32(-1i) * -18322i) | max(2764i, var_2.x)), _wgslsmith_div_u32(((12649u | var_0.x) & 1u) & u_input.e.x, ~var_0.x), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -215f), _wgslsmith_f_op_f32(trunc(-1619f)), _wgslsmith_f_op_f32(step(421f, -1000f)), 407f))), _wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(firstLeadingBit(-29966i), u_input.c >> (65743u % 32u), ~var_2.x, var_2.x ^ var_2.x), select(u_input.d, -u_input.d, all(vec3<bool>(false, true, true)))), max(u_input.d << (reverseBits(vec4<u32>(9148u, var_0.x, 0u, 4294967295u)) % vec4<u32>(32u)), ~firstLeadingBit(u_input.d))));
}

fn func_1(arg_0: vec3<i32>, arg_1: i32, arg_2: bool, arg_3: vec4<f32>) -> f32 {
    global1 = array<bool, 12>();
    var var_0 = Struct_1(vec4<bool>(false, arg_3.x >= 696f, global0[_wgslsmith_index_u32(1u, 29u)], true), u_input.d.wzz, u_input.e.x, vec4<f32>(arg_3.x, arg_3.x, _wgslsmith_f_op_f32(floor(1219f)), 677f), ~_wgslsmith_clamp_vec4_i32(min(u_input.d, vec4<i32>(arg_0.x, 2733i, arg_1, arg_1)) & (vec4<i32>(-9341i, -2147483647i, u_input.b, u_input.a.x) >> (vec4<u32>(4294967295u, u_input.e.x, 0u, u_input.e.x) % vec4<u32>(32u))), select(~vec4<i32>(7118i, u_input.c, 4548i, arg_0.x), abs(vec4<i32>(arg_1, u_input.a.x, 42826i, -2147483647i)), 11313i != arg_1), ~min(u_input.d, vec4<i32>(-44904i, 29610i, -2147483647i, arg_1))));
    let var_1 = var_0.c;
    var_0 = func_2();
    global0 = array<bool, 29>();
    return var_0.d.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<f32>(-170f, _wgslsmith_f_op_f32(func_1(vec3<i32>(~_wgslsmith_div_i32(u_input.a.x, 2873i), ~_wgslsmith_sub_i32(u_input.d.x, 1i), reverseBits(u_input.a.x)), 19785i, true, _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1430f, -291f, -1118f, -1015f)), vec4<f32>(-127f, -1293f, 714f, 822f)) * vec4<f32>(_wgslsmith_f_op_f32(select(569f, -1099f, global0[_wgslsmith_index_u32(4294967295u, 29u)])), _wgslsmith_f_op_f32(floor(-538f)), _wgslsmith_f_op_f32(round(-615f)), 1f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-991f))), _wgslsmith_div_f32(401f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1758f))), -4335f, global1[_wgslsmith_index_u32(1u, 12u)]))));
    let var_1 = func_2();
    let var_2 = ~u_input.e.x;
    let var_3 = Struct_2(Struct_1(var_1.a, u_input.d.yyy, ~0u, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, 419f)), 1123f, var_1.d.x, func_2().d.x), abs((var_1.e >> (vec4<u32>(0u, 1u, var_2, var_2) % vec4<u32>(32u))) ^ ~var_1.e)), Struct_1(var_1.a, -vec3<i32>(~(-37735i), -84332i, firstTrailingBit(-2147483647i)), _wgslsmith_sub_u32(var_1.c, 179u), var_1.d, max(_wgslsmith_add_vec4_i32(vec4<i32>(0i, -67801i, var_1.b.x, 2147483647i), ~vec4<i32>(1i, -1i, u_input.c, var_1.e.x)), _wgslsmith_mult_vec4_i32(abs(var_1.e), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.b, u_input.b, 2147483647i, var_1.e.x), vec4<i32>(var_1.b.x, 0i, var_1.b.x, var_1.e.x))))), Struct_1(var_1.a, var_1.e.wwy & firstLeadingBit(select(vec3<i32>(-1i, 0i, u_input.d.x), var_1.e.xxz, var_1.a.xyx)), 83018u, var_1.d, vec4<i32>(var_1.b.x, abs(var_1.b.x) >> (u_input.e.x % 32u), ~abs(u_input.c), u_input.a.x)), var_1);
    let var_4 = vec2<bool>(false, firstTrailingBit(1u) <= var_3.d.c);
    var var_5 = countOneBits(~_wgslsmith_sub_vec3_u32(~vec3<u32>(1u, var_3.c.c, var_3.d.c), countOneBits(vec3<u32>(0u, 4294967295u, var_3.a.c)))) >> (vec3<u32>(var_1.c, 4294967295u, ~var_2) % vec3<u32>(32u));
    let var_6 = _wgslsmith_f_op_f32(sign(var_3.c.d.x));
    var_5 = min(_wgslsmith_div_vec3_u32(~abs(_wgslsmith_mult_vec3_u32(vec3<u32>(var_2, var_2, 14269u), vec3<u32>(var_5.x, 46436u, 4294967295u))), ~vec3<u32>(23891u, 0u, 4294967295u)), func_3(var_1.a.zxx).zwx);
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(611f, var_0.x, 1108f, -824f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(142f, 280f, -1176f, var_1.d.x)))) + _wgslsmith_f_op_vec4_f32(var_1.d + vec4<f32>(_wgslsmith_f_op_f32(max(555f, var_1.d.x)), _wgslsmith_f_op_f32(step(var_0.x, var_0.x)), _wgslsmith_div_f32(-418f, 948f), _wgslsmith_div_f32(169f, var_1.d.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_u32(vec4<u32>(~countOneBits(var_1.c), ~(var_5.x & u_input.e.x), _wgslsmith_sub_u32(abs(var_3.c.c), u_input.e.x), _wgslsmith_mod_u32(1u, u_input.e.x) & firstLeadingBit(20081u)), firstTrailingBit(~vec4<u32>(var_5.x, var_1.c, 55645u, 1u) & vec4<u32>(var_5.x, u_input.e.x, var_1.c, var_3.c.c))), var_3.a.c, func_2().d.xw, -23676i, ~_wgslsmith_add_i32(~select(var_1.e.x, 1i, var_4.x), _wgslsmith_mod_i32(-36014i, var_3.c.b.x | -1i)));
}

