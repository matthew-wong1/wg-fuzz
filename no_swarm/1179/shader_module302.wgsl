struct Struct_1 {
    a: u32,
    b: vec4<i32>,
    c: vec4<bool>,
    d: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: array<bool, 21>;

var<private> global2: u32 = 0u;

var<private> global3: array<vec2<bool>, 7>;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: i32) -> vec4<i32> {
    var var_0 = Struct_2(Struct_1(28314u, ~abs(vec4<i32>(arg_0, -2147483647i, u_input.b, u_input.b)) ^ vec4<i32>(arg_0, 1i, -u_input.b, ~arg_0), select(select(vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.a, 21u)], global1[_wgslsmith_index_u32(u_input.a, 21u)], global1[_wgslsmith_index_u32(u_input.a, 21u)]), !vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 21u)], global1[_wgslsmith_index_u32(u_input.a, 21u)], global1[_wgslsmith_index_u32(u_input.a, 21u)], global1[_wgslsmith_index_u32(14786u, 21u)]), vec4<bool>(global1[_wgslsmith_index_u32(83985u, 21u)], true, global1[_wgslsmith_index_u32(u_input.a, 21u)], true)), vec4<bool>(all(vec3<bool>(true, global1[_wgslsmith_index_u32(13244u, 21u)], global1[_wgslsmith_index_u32(1u, 21u)])), true, false, all(global3[_wgslsmith_index_u32(u_input.a, 7u)])), !vec4<bool>(global1[_wgslsmith_index_u32(26706u, 21u)], true, false, true)), firstTrailingBit(vec4<i32>(2147483647i, ~(-51181i), _wgslsmith_mod_i32(1i, 2147483647i), u_input.b << (122050u % 32u)))), arg_0, Struct_1(~1u, vec4<i32>(arg_0, max(reverseBits(arg_0), ~u_input.b), _wgslsmith_add_i32(2147483647i, u_input.b), abs(1i)), vec4<bool>(true, global1[_wgslsmith_index_u32(59995u, 21u)], global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1515u, u_input.a), vec2<u32>(u_input.a, 1u)), 21u)], any(vec4<bool>(global1[_wgslsmith_index_u32(u_input.a, 21u)], global1[_wgslsmith_index_u32(u_input.a, 21u)], true, global1[_wgslsmith_index_u32(57909u, 21u)]))), firstTrailingBit(_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_0, 0i, arg_0, -1i), vec4<i32>(arg_0, 8826i, u_input.b, arg_0), vec4<i32>(arg_0, 47173i, 1i, u_input.b) | vec4<i32>(-12074i, -4113i, arg_0, -2147483647i)))));
    var var_1 = _wgslsmith_f_op_vec3_f32(step(vec3<f32>(1015f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(-635f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1136f * -1677f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(608f, -1125f, true)))))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-212f - 783f), -124f, _wgslsmith_div_f32(-653f, 1286f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(118f, 1703f, 1000f))))))));
    var var_2 = select(var_0.c.c, var_0.a.c, vec4<bool>(true, true, global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_mod_u32(var_0.c.a ^ 0u, var_0.c.a), 1u), 21u)], global1[_wgslsmith_index_u32(4294967295u, 21u)]));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -740f)))), global1[_wgslsmith_index_u32(0u, 21u)])) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x + var_1.x)) * _wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_f32(f32(-1f) * -490f)));
    let var_4 = var_0.c;
    return vec4<i32>(_wgslsmith_sub_i32(abs(u_input.b), firstTrailingBit(var_4.d.x)), ~(-1i), _wgslsmith_sub_i32(abs(var_4.d.x), _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(var_0.c.d, _wgslsmith_add_vec4_i32(var_4.d, vec4<i32>(-1i, var_4.d.x, 24430i, -8106i))), u_input.b)), _wgslsmith_dot_vec4_i32(abs(vec4<i32>(arg_0, -18634i, -2147483647i, -2147483647i)), _wgslsmith_mod_vec4_i32(var_4.b, var_0.a.b << (vec4<u32>(var_0.a.a, 19728u, 39546u, var_0.c.a) % vec4<u32>(32u)))) | firstLeadingBit(var_4.b.x >> ((0u ^ u_input.a) % 32u)));
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1) -> vec3<i32> {
    global0 = arg_1.c.x;
    global1 = array<bool, 21>();
    let var_0 = Struct_2(arg_1, ~arg_2.d.x, Struct_1(~arg_1.a, arg_1.d, !vec4<bool>(arg_2.c.x, arg_1.c.x, all(arg_2.c.zzx), arg_0), arg_1.b));
    var var_1 = -_wgslsmith_dot_vec2_i32(func_3(24769i).yx, _wgslsmith_mult_vec2_i32(vec2<i32>(~0i, arg_2.b.x), countOneBits(-vec2<i32>(u_input.b, -42159i))));
    var var_2 = Struct_2(var_0.a, ~countOneBits(var_0.a.d.x), arg_1);
    return -vec3<i32>(~(-var_0.c.b.x), arg_2.b.x & _wgslsmith_mult_i32(0i, -arg_2.b.x), 46044i);
}

fn func_2(arg_0: i32, arg_1: vec4<u32>, arg_2: bool) -> u32 {
    global0 = true;
    var var_0 = func_4(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(8687u, ~arg_1.x, 0u, arg_1.x)), ~(~(~arg_1))), 21u)], Struct_1(38564u, _wgslsmith_mult_vec4_i32(_wgslsmith_add_vec4_i32(func_3(2245i), abs(vec4<i32>(0i, 79022i, arg_0, 1i))), _wgslsmith_div_vec4_i32(vec4<i32>(2671i, -27840i, -4225i, -2147483647i), vec4<i32>(2147483647i, -38818i, -2147483647i, -15056i)) >> (arg_1 % vec4<u32>(32u))), select(vec4<bool>(global1[_wgslsmith_index_u32(select(45898u, arg_1.x, false), 21u)], true, true, global1[_wgslsmith_index_u32(~u_input.a, 21u)]), select(select(vec4<bool>(false, false, false, arg_2), vec4<bool>(global1[_wgslsmith_index_u32(66438u, 21u)], false, global1[_wgslsmith_index_u32(u_input.a, 21u)], arg_2), global1[_wgslsmith_index_u32(25612u, 21u)]), !vec4<bool>(true, arg_2, true, false), vec4<bool>(true, true, true, true)), true), func_3(arg_0)), Struct_1(countOneBits(0u & arg_1.x) << (31022u % 32u), _wgslsmith_mod_vec4_i32(vec4<i32>(-51530i, -20422i, 0i, arg_0) ^ ~vec4<i32>(u_input.b, -1i, arg_0, u_input.b), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b, arg_0, u_input.b, arg_0) >> (arg_1 % vec4<u32>(32u)), vec4<i32>(1i, arg_0, -2147483647i, arg_0) << (vec4<u32>(4294967295u, 12617u, u_input.a, u_input.a) % vec4<u32>(32u)))), vec4<bool>(true, !global1[_wgslsmith_index_u32(~arg_1.x, 21u)], true, global1[_wgslsmith_index_u32(arg_1.x, 21u)]), vec4<i32>(arg_0, arg_0, (arg_0 << (100472u % 32u)) & ~u_input.b, -1i)));
    var var_1 = false;
    var var_2 = Struct_2(Struct_1(_wgslsmith_add_u32(firstLeadingBit(0u), 31903u) & (~0u << (_wgslsmith_dot_vec4_u32(arg_1, arg_1) % 32u)), ~(~_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b, var_0.x, -58964i, var_0.x), vec4<i32>(-1i, var_0.x, -27980i, var_0.x), vec4<i32>(arg_0, var_0.x, var_0.x, -1i))), !vec4<bool>(true, true, global1[_wgslsmith_index_u32(arg_1.x, 21u)], false), max(_wgslsmith_sub_vec4_i32(select(vec4<i32>(3247i, arg_0, arg_0, u_input.b), vec4<i32>(-1i, arg_0, -19885i, 47156i), true), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.b, u_input.b, 0i, 0i), vec4<i32>(3756i, u_input.b, 1i, 6366i))), firstTrailingBit(~vec4<i32>(19586i, var_0.x, -1i, 2147483647i)))), -min(1i, countOneBits(abs(-1i))), Struct_1(_wgslsmith_mult_u32(_wgslsmith_div_u32(firstTrailingBit(4294967295u), reverseBits(54182u)), 1265u), vec4<i32>(var_0.x, -2147483647i, -1i, ~1i), vec4<bool>(global1[_wgslsmith_index_u32(firstLeadingBit(~9351u), 21u)], _wgslsmith_mult_i32(-1i, var_0.x) < arg_0, !global1[_wgslsmith_index_u32(4294967295u, 21u)], 1u > (u_input.a ^ 1u)), _wgslsmith_add_vec4_i32(firstTrailingBit(vec4<i32>(u_input.b, arg_0, arg_0, 2147483647i)), abs(vec4<i32>(13377i, -3063i, 40587i, u_input.b))) ^ (vec4<i32>(-1i) * -vec4<i32>(14745i, 2147483647i, -2147483647i, var_0.x))));
    global3 = array<vec2<bool>, 7>();
    return u_input.a;
}

fn func_1(arg_0: vec3<f32>, arg_1: u32) -> Struct_2 {
    global2 = _wgslsmith_dot_vec2_u32(firstTrailingBit(reverseBits(~abs(vec2<u32>(0u, 7801u)))), ~(~_wgslsmith_div_vec2_u32(max(vec2<u32>(49580u, 36639u), vec2<u32>(u_input.a, 19451u)), ~vec2<u32>(0u, 1u))));
    var var_0 = reverseBits(vec4<u32>(_wgslsmith_add_u32(u_input.a | 9119u, func_2(1i, vec4<u32>(26224u, 4294967295u, u_input.a, 1u), true) | u_input.a), 4294967295u, ~_wgslsmith_sub_u32(u_input.a, 16865u) | ~arg_1, _wgslsmith_mult_u32(~(~19692u), _wgslsmith_add_u32(~8956u, max(0u, u_input.a)))));
    global1 = array<bool, 21>();
    let var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) - _wgslsmith_f_op_f32(sign(-198f)))))));
    let var_2 = abs(_wgslsmith_sub_u32(reverseBits(1u), ~var_0.x));
    return Struct_2(Struct_1(firstTrailingBit(var_0.x), min(select(vec4<i32>(-1i, u_input.b, u_input.b, -2147483647i), vec4<i32>(-31504i, u_input.b, 64245i, u_input.b), vec4<bool>(false, false, global1[_wgslsmith_index_u32(u_input.a, 21u)], global1[_wgslsmith_index_u32(4294967295u, 21u)])), vec4<i32>(1i, -1i, -1i, countOneBits(-1i))), select(select(select(vec4<bool>(global1[_wgslsmith_index_u32(u_input.a, 21u)], global1[_wgslsmith_index_u32(64472u, 21u)], global1[_wgslsmith_index_u32(u_input.a, 21u)], global1[_wgslsmith_index_u32(u_input.a, 21u)]), vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.a, 21u)], false, global1[_wgslsmith_index_u32(var_0.x, 21u)]), true), !vec4<bool>(global1[_wgslsmith_index_u32(var_2, 21u)], global1[_wgslsmith_index_u32(18416u, 21u)], global1[_wgslsmith_index_u32(1u, 21u)], true), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(var_0.zy, var_0.zx), 21u)]), !(!vec4<bool>(global1[_wgslsmith_index_u32(u_input.a, 21u)], false, global1[_wgslsmith_index_u32(0u, 21u)], global1[_wgslsmith_index_u32(29401u, 21u)])), all(!vec3<bool>(global1[_wgslsmith_index_u32(var_0.x, 21u)], global1[_wgslsmith_index_u32(0u, 21u)], true))), countOneBits(-(vec4<i32>(u_input.b, u_input.b, u_input.b, -2147483647i) << (vec4<u32>(0u, var_2, arg_1, u_input.a) % vec4<u32>(32u))))), func_4(all(vec3<bool>(false, global1[_wgslsmith_index_u32(0u, 21u)], global1[_wgslsmith_index_u32(u_input.a, 21u)])), Struct_1(4294967295u, abs(vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b)), select(vec4<bool>(global1[_wgslsmith_index_u32(u_input.a, 21u)], true, false, true), vec4<bool>(global1[_wgslsmith_index_u32(var_2, 21u)], global1[_wgslsmith_index_u32(21835u, 21u)], false, false), false), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b, u_input.b, u_input.b, 2147483647i), vec4<i32>(1520i, u_input.b, u_input.b, 0i))), Struct_1(4294967295u, vec4<i32>(-7188i, -60398i, 21970i, 1i), select(vec4<bool>(global1[_wgslsmith_index_u32(var_0.x, 21u)], false, false, false), vec4<bool>(global1[_wgslsmith_index_u32(3252u, 21u)], global1[_wgslsmith_index_u32(arg_1, 21u)], false, global1[_wgslsmith_index_u32(57742u, 21u)]), global1[_wgslsmith_index_u32(4294967295u, 21u)]), firstTrailingBit(vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b)))).x & u_input.b, Struct_1(~var_0.x, vec4<i32>(2147483647i, 2147483647i, _wgslsmith_clamp_i32(u_input.b, u_input.b, u_input.b) << (arg_1 % 32u), _wgslsmith_add_i32(abs(u_input.b), 1i)), vec4<bool>(any(global3[_wgslsmith_index_u32(4294967295u, 7u)]), all(vec4<bool>(false, global1[_wgslsmith_index_u32(var_0.x, 21u)], true, global1[_wgslsmith_index_u32(0u, 21u)])), all(vec2<bool>(true, false)), all(global3[_wgslsmith_index_u32(82888u >> (u_input.a % 32u), 7u)])), (~vec4<i32>(1i, 0i, u_input.b, u_input.b) & -vec4<i32>(u_input.b, 14580i, 2147483647i, u_input.b)) >> (firstLeadingBit(~vec4<u32>(var_2, 1u, u_input.a, arg_1)) % vec4<u32>(32u))));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_2, arg_3: u32) -> Struct_1 {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(step(1330f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1282f, 2294f)) + 1f)))), _wgslsmith_f_op_f32(min(-344f, 2157f)));
    global2 = 1u;
    var var_1 = arg_0.c;
    var var_2 = arg_2.a.c.x && !any(vec4<bool>(arg_2.a.c.x == true, var_1.c.x, func_1(vec3<f32>(-999f, -773f, -656f), var_1.a).c.c.x, false));
    var_2 = !(!(any(select(arg_0.c.c.ywx, vec3<bool>(global1[_wgslsmith_index_u32(45985u, 21u)], global1[_wgslsmith_index_u32(arg_2.a.a, 21u)], arg_1.c.x), vec3<bool>(var_1.c.x, arg_1.c.x, false))) & (_wgslsmith_f_op_f32(f32(-1f) * -643f) > _wgslsmith_f_op_f32(floor(694f)))));
    return arg_2.c;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec2<bool>, 7>();
    global1 = array<bool, 21>();
    global0 = any(global3[_wgslsmith_index_u32(~abs(7488u), 7u)]);
    var var_0 = _wgslsmith_mult_i32(select(~2147483647i, abs(-2147483647i), global1[_wgslsmith_index_u32(4294967295u, 21u)]), ~(-1i));
    global0 = !(reverseBits(1514i) > min(_wgslsmith_add_i32(u_input.b, u_input.b), 8560i)) && any(global3[_wgslsmith_index_u32(43715u, 7u)]);
    let var_1 = func_5(func_1(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1097f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(1000f, -345f)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-638f, -343f) * 865f)), u_input.a), func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1374f, 1099f, 597f) * vec3<f32>(1269f, 1000f, -1862f))), 3790u).c, Struct_2(func_1(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1478f, -527f, 1705f), vec3<f32>(-491f, 141f, -756f))))), 4294967295u).a, ~0i, Struct_1(1u, vec4<i32>(i32(-1i) * -30211i, u_input.b | u_input.b, u_input.b, u_input.b), vec4<bool>(global1[_wgslsmith_index_u32(~u_input.a, 21u)], !global1[_wgslsmith_index_u32(65957u, 21u)], select(false, global1[_wgslsmith_index_u32(u_input.a, 21u)], global1[_wgslsmith_index_u32(u_input.a, 21u)]), true), -(~vec4<i32>(u_input.b, -1i, u_input.b, u_input.b)))), ~u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(-17133i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(108f)))))), var_1.d);
}

