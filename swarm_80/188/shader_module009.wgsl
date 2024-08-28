struct Struct_1 {
    a: vec4<bool>,
    b: vec2<u32>,
    c: f32,
    d: f32,
}

struct Struct_2 {
    a: u32,
    b: vec2<bool>,
    c: vec4<f32>,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec2<i32>,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec2<u32>,
    d: f32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<Struct_2, 14>;

var<private> global2: f32;

var<private> global3: array<u32, 31>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec3<bool>) -> i32 {
    let var_0 = global3[_wgslsmith_index_u32(1677u, 31u)];
    let var_1 = ~(-reverseBits(-vec3<i32>(u_input.a.x, -1i, 27118i)));
    global3 = array<u32, 31>();
    global0 = -max(u_input.a.x, u_input.e.x);
    global1 = array<Struct_2, 14>();
    return u_input.e.x;
}

fn func_2(arg_0: vec3<bool>, arg_1: vec4<u32>, arg_2: Struct_2) -> bool {
    global0 = i32(-1i) * -reverseBits(23501i);
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2.e.d), -771f));
    global0 = _wgslsmith_mod_i32(-2147483647i, max(_wgslsmith_add_i32(u_input.b, countOneBits(func_3(vec3<bool>(arg_0.x, arg_2.b.x, arg_0.x)))), 18711i));
    var var_1 = arg_2;
    global2 = 213f;
    return !(!(!(-1203f > _wgslsmith_f_op_f32(-var_1.e.d))));
}

fn func_4(arg_0: vec2<bool>) -> vec3<i32> {
    let var_0 = _wgslsmith_sub_u32(1u & ~global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(4294967295u, 29230u) >> (0u % 32u), 31u)], 1u);
    let var_1 = _wgslsmith_mod_u32(~0u, ~max(u_input.d, ~(~global3[_wgslsmith_index_u32(20317u, 31u)])));
    let var_2 = Struct_1(!(!(!select(vec4<bool>(arg_0.x, false, arg_0.x, true), vec4<bool>(arg_0.x, false, arg_0.x, arg_0.x), vec4<bool>(false, arg_0.x, false, arg_0.x)))), ~(~(~abs(vec2<u32>(1u, var_1)))), _wgslsmith_f_op_f32(1199f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_div_f32(546f, 359f), all(vec3<bool>(arg_0.x, false, arg_0.x)))))), -1503f);
    global2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(405f, _wgslsmith_f_op_f32(-var_2.c), false | arg_0.x))));
    let var_3 = vec3<bool>(var_2.a.x, all(vec2<bool>(func_2(var_2.a.xzw, vec4<u32>(1u, 44405u, 4294967295u, 1u), Struct_2(27511u, var_2.a.yx, vec4<f32>(550f, 997f, -541f, var_2.c), Struct_1(vec4<bool>(false, arg_0.x, var_2.a.x, var_2.a.x), vec2<u32>(u_input.d, var_0), -1106f, var_2.c), Struct_1(var_2.a, vec2<u32>(45495u, var_0), 747f, -760f))), true)), any(vec3<bool>(var_2.a.x, arg_0.x, any(!vec4<bool>(true, arg_0.x, true, true)))));
    return _wgslsmith_sub_vec3_i32(u_input.e.yxz, max(reverseBits(u_input.e.wwy), _wgslsmith_sub_vec3_i32(abs(u_input.e.xxy), ~u_input.e.zwx))) | firstTrailingBit(firstLeadingBit(~countOneBits(u_input.e.wzz)));
}

fn func_1(arg_0: i32) -> bool {
    global1 = array<Struct_2, 14>();
    var var_0 = func_4(!select(vec2<bool>(true, true), vec2<bool>(any(vec3<bool>(false, false, false)), func_2(vec3<bool>(true, true, false), vec4<u32>(23377u, 36386u, 1u, u_input.d), Struct_2(0u, vec2<bool>(false, true), vec4<f32>(2141f, 381f, -1000f, -1098f), Struct_1(vec4<bool>(false, false, false, false), vec2<u32>(global3[_wgslsmith_index_u32(1u, 31u)], 14016u), 970f, 947f), Struct_1(vec4<bool>(false, false, true, true), vec2<u32>(u_input.d, 0u), 227f, -758f)))), !select(vec2<bool>(false, true), vec2<bool>(false, true), true)));
    var var_1 = !(firstLeadingBit(_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(var_0.x, -24709i, var_0.x, -1i), vec4<i32>(u_input.a.x, -56531i, -27292i, -54564i)), vec4<i32>(-2147483647i, var_0.x, var_0.x, -35229i))) == u_input.a.x);
    var var_2 = Struct_2(34971u, vec2<bool>(true, false), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(-190f)), _wgslsmith_f_op_f32(select(-706f, -126f, false)))), 155f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(846f)) + -1324f), _wgslsmith_f_op_f32(-165f + 793f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(676f, 1764f, -420f, 552f) - vec4<f32>(449f, -1318f, 216f, 1167f))))))), Struct_1(vec4<bool>(true, ~var_0.x == arg_0, false, ~u_input.d == global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(~u_input.d, 31u)], 31u)]), ~_wgslsmith_div_vec2_u32(~vec2<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1979u, 31u)], 31u)], 782u), _wgslsmith_add_vec2_u32(vec2<u32>(87074u, u_input.d), vec2<u32>(u_input.d, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 31u)], 31u)]))), -153f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(979f * -1051f) + 587f)))), Struct_1(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), select(all(vec4<bool>(true, false, false, true)), false, true)), ((vec2<u32>(0u, 1u) << (vec2<u32>(u_input.d, u_input.d) % vec2<u32>(32u))) ^ (vec2<u32>(global3[_wgslsmith_index_u32(30588u, 31u)], u_input.d) >> (vec2<u32>(u_input.d, global3[_wgslsmith_index_u32(1u, 31u)]) % vec2<u32>(32u)))) >> (vec2<u32>(1u | global3[_wgslsmith_index_u32(u_input.d, 31u)], global3[_wgslsmith_index_u32(4294967295u, 31u)] | 3554u) % vec2<u32>(32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-689f + _wgslsmith_f_op_f32(ceil(-1336f)))), _wgslsmith_div_f32(647f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1067f)))));
    let var_3 = var_2.b.x;
    return select((true && (var_2.d.a.x | any(var_2.d.a.yz))) || true, var_2.b.x, var_2.d.a.x & !any(select(vec4<bool>(false, var_2.d.a.x, var_2.d.a.x, var_2.b.x), vec4<bool>(var_2.d.a.x, true, true, var_2.e.a.x), true)));
}

fn func_5(arg_0: vec2<bool>, arg_1: Struct_1) -> StorageBuffer {
    global0 = _wgslsmith_div_i32(~u_input.c.x, ~((i32(-1i) * -11568i) | u_input.a.x));
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_1.c)));
    var var_1 = vec2<i32>(u_input.a.x, firstTrailingBit(u_input.b));
    let var_2 = global1[_wgslsmith_index_u32(min(firstLeadingBit(79848u), 1u), 14u)];
    var_1 = func_4(vec2<bool>(func_1(_wgslsmith_clamp_i32(var_1.x, 40493i, var_1.x)), var_2.b.x)).xx;
    return StorageBuffer(u_input.e, -(u_input.c & vec2<i32>(func_4(vec2<bool>(false, false)).x, ~29308i)), ~vec2<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 6458u, 4294967295u), vec3<u32>(15494u, 14034u, 0u)), 0u), -191f, arg_1.b);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_5(!vec2<bool>(func_1(u_input.b), true), Struct_1(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false), false), vec4<bool>(true, true, true, true)), true), abs(vec2<u32>(1u, 1u)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(-753f + -1394f)) * -1107f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-365f, -1000f))));
}

