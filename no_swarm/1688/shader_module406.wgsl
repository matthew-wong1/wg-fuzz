struct Struct_1 {
    a: i32,
    b: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: array<i32, 27>;

var<private> global2: array<bool, 7>;

var<private> global3: array<vec3<bool>, 10>;

var<private> global4: i32;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<bool>, arg_3: vec3<i32>) -> vec3<f32> {
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, 1000f))) + vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x * global0.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(global0.x, global0.x)), global0.x), _wgslsmith_f_op_f32(floor(global0.x)))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, 1000f, 1586f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, global0.x, 1677f) - vec3<f32>(-383f, 607f, -1000f))) + vec3<f32>(_wgslsmith_f_op_f32(sign(-1189f)), _wgslsmith_f_op_f32(-global0.x), global0.x)), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -674f), global0.x, global0.x), arg_2.x)));
    global1 = array<i32, 27>();
    var var_0 = _wgslsmith_clamp_vec2_u32(~_wgslsmith_mod_vec2_u32(vec2<u32>(~4306u, firstLeadingBit(u_input.b)), ~countOneBits(vec2<u32>(u_input.b, 1u))), ~countOneBits(~(vec2<u32>(u_input.b, 1u) >> (vec2<u32>(u_input.b, u_input.b) % vec2<u32>(32u)))), _wgslsmith_mod_vec2_u32(~(~vec2<u32>(u_input.b, u_input.b)) & select(_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(33366u, 9204u)), vec2<u32>(8170u, 4294967295u), !vec2<bool>(global2[_wgslsmith_index_u32(u_input.b, 7u)], false)), ~vec2<u32>(~32887u, countOneBits(u_input.b))));
    var_0 = firstLeadingBit(~vec2<u32>(_wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(129406u, 0u)), select(vec2<u32>(var_0.x, u_input.b), vec2<u32>(24524u, u_input.b), global2[_wgslsmith_index_u32(var_0.x, 7u)])), ~select(u_input.b, 29743u, arg_2.x)));
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, -756f)))));
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(global0.x * global0.x), _wgslsmith_f_op_f32(min(global0.x, global0.x))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(934f, global0.x, -1605f)) - _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-491f, global0.x, global0.x))))) + vec3<f32>(165f, global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) + 1f))) - _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(-886f, global0.x, global0.x) + vec3<f32>(123f, -418f, global0.x))))))));
}

fn func_2(arg_0: vec2<u32>, arg_1: f32) -> i32 {
    global3 = array<vec3<bool>, 10>();
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(Struct_1(-2147483647i, 2551i), Struct_1(-1i, u_input.a), vec3<bool>(true, false, true), select(vec3<i32>(u_input.a, global1[_wgslsmith_index_u32(1u, 27u)], 70013i), vec3<i32>(u_input.a, u_input.a, 1i), global2[_wgslsmith_index_u32(arg_0.x, 7u)]))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, arg_1))))) - vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1), -799f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_1 * -1142f))), -1000f)), global0.x));
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1362f, global0.x, arg_1)))))));
    let var_0 = Struct_1(u_input.a, _wgslsmith_dot_vec4_i32(-(~vec4<i32>(-24393i, -34454i, -66414i, -2147483647i)), -vec4<i32>(-1198i, ~(-2147483647i), abs(0i), -4002i)));
    global2 = array<bool, 7>();
    return -50663i;
}

fn func_1() -> Struct_1 {
    var var_0 = all(select(!vec3<bool>(any(vec2<bool>(global2[_wgslsmith_index_u32(0u, 7u)], global2[_wgslsmith_index_u32(u_input.b, 7u)])), true, any(vec2<bool>(false, true))), vec3<bool>(true, !(global1[_wgslsmith_index_u32(1u, 27u)] == u_input.a), global2[_wgslsmith_index_u32(u_input.b, 7u)]), vec3<bool>(!(global2[_wgslsmith_index_u32(1u, 7u)] && global2[_wgslsmith_index_u32(u_input.b, 7u)]), false, any(select(vec3<bool>(global2[_wgslsmith_index_u32(0u, 7u)], global2[_wgslsmith_index_u32(23778u, 7u)], false), vec3<bool>(global2[_wgslsmith_index_u32(1u, 7u)], global2[_wgslsmith_index_u32(u_input.b, 7u)], global2[_wgslsmith_index_u32(u_input.b, 7u)]), false)))));
    global4 = -_wgslsmith_sub_i32(func_2(vec2<u32>(~43037u, max(u_input.b, u_input.b)), _wgslsmith_f_op_f32(f32(-1f) * -576f)), u_input.a);
    global4 = reverseBits(-u_input.a ^ 0i);
    var var_1 = ~abs(~(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b, u_input.b, 4294967295u, u_input.b), vec4<u32>(u_input.b, 20374u, 1u, 48659u), vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b)) & ~vec4<u32>(0u, 4294967295u, u_input.b, u_input.b)));
    var var_2 = ~vec2<i32>(firstTrailingBit(-_wgslsmith_div_i32(u_input.a, 0i)), -_wgslsmith_mod_i32(u_input.a >> (0u % 32u), _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, global1[_wgslsmith_index_u32(u_input.b, 27u)]), vec2<i32>(global1[_wgslsmith_index_u32(u_input.b, 27u)], global1[_wgslsmith_index_u32(var_1.x, 27u)]))));
    return Struct_1(0i, _wgslsmith_add_i32(var_2.x, -2147483647i));
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: f32, arg_3: bool) -> vec3<f32> {
    let var_0 = Struct_1(func_1().a, -2147483647i);
    var var_1 = vec2<f32>(-1308f, arg_2);
    global0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(1458f, _wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(-arg_2)), var_1.x) - _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_vec3_f32(func_3(Struct_1(arg_1.b, 1i), var_0, vec3<bool>(arg_3, false, global2[_wgslsmith_index_u32(u_input.b, 7u)]), vec3<i32>(-32490i, var_0.a, -19008i))).x, global0.x, _wgslsmith_f_op_f32(select(var_1.x, 979f, global2[_wgslsmith_index_u32(u_input.b, 7u)]))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(665f, arg_2, 1790f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1496f, arg_2, 517f) - vec3<f32>(-1713f, 863f, 599f))))));
    return _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(601f, arg_2, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_2, -559f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<bool, 7>();
    global0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_4(select(vec3<bool>(true, true, all(vec4<bool>(false, global2[_wgslsmith_index_u32(u_input.b, 7u)], global2[_wgslsmith_index_u32(u_input.b, 7u)], global2[_wgslsmith_index_u32(56283u, 7u)]))), !select(vec3<bool>(false, global2[_wgslsmith_index_u32(61564u, 7u)], false), vec3<bool>(global2[_wgslsmith_index_u32(u_input.b, 7u)], global2[_wgslsmith_index_u32(u_input.b, 7u)], true), global2[_wgslsmith_index_u32(0u, 7u)]), select(select(vec3<bool>(global2[_wgslsmith_index_u32(u_input.b, 7u)], false, true), vec3<bool>(global2[_wgslsmith_index_u32(u_input.b, 7u)], true, global2[_wgslsmith_index_u32(84224u, 7u)]), global3[_wgslsmith_index_u32(u_input.b, 10u)]), !global3[_wgslsmith_index_u32(1u, 10u)], global0.x >= global0.x)), func_1(), _wgslsmith_f_op_f32(f32(-1f) * -1144f), all(select(!global3[_wgslsmith_index_u32(u_input.b, 10u)], vec3<bool>(global2[_wgslsmith_index_u32(u_input.b, 7u)], global2[_wgslsmith_index_u32(u_input.b, 7u)], global2[_wgslsmith_index_u32(4294967295u, 7u)]), select(vec3<bool>(true, true, global2[_wgslsmith_index_u32(u_input.b, 7u)]), vec3<bool>(global2[_wgslsmith_index_u32(u_input.b, 7u)], true, global2[_wgslsmith_index_u32(17540u, 7u)]), global2[_wgslsmith_index_u32(1u, 7u)]))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(612f, global0.x, global0.x))))) + _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(trunc(global0.x)))))));
    global4 = countOneBits(u_input.a);
    var var_0 = _wgslsmith_f_op_vec3_f32(func_4(!(!(!vec3<bool>(global2[_wgslsmith_index_u32(u_input.b, 7u)], global2[_wgslsmith_index_u32(u_input.b, 7u)], false))), Struct_1(reverseBits(u_input.a), reverseBits(-27435i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)))), true)).x;
    var var_1 = ~1i;
    let x = u_input.a;
    s_output = StorageBuffer(-select(_wgslsmith_sub_vec4_i32(vec4<i32>(-1i, global1[_wgslsmith_index_u32(41063u, 27u)], u_input.a, u_input.a), vec4<i32>(0i, u_input.a, -2147483647i, -1i)), vec4<i32>(u_input.a, _wgslsmith_clamp_i32(global1[_wgslsmith_index_u32(4294967295u, 27u)], global1[_wgslsmith_index_u32(1u, 27u)], 2147483647i), ~u_input.a, global1[_wgslsmith_index_u32(0u, 27u)]), all(select(vec2<bool>(true, global2[_wgslsmith_index_u32(46075u, 7u)]), vec2<bool>(false, global2[_wgslsmith_index_u32(u_input.b, 7u)]), global2[_wgslsmith_index_u32(u_input.b, 7u)]))), vec4<u32>(u_input.b, 49790u, min(countOneBits(1u), 4294967295u), 70173u), _wgslsmith_dot_vec4_u32(select(max(vec4<u32>(46745u, u_input.b, 118828u, 59548u), _wgslsmith_clamp_vec4_u32(vec4<u32>(61906u, u_input.b, u_input.b, 29166u), vec4<u32>(u_input.b, u_input.b, 10022u, u_input.b), vec4<u32>(17510u, 0u, 0u, 104707u))), _wgslsmith_clamp_vec4_u32(vec4<u32>(101640u, 1u, u_input.b, u_input.b), vec4<u32>(0u, 0u, 26445u, 4294967295u), vec4<u32>(29026u, u_input.b, u_input.b, 0u)) | ~vec4<u32>(44064u, u_input.b, 49270u, u_input.b), select(select(vec4<bool>(false, false, global2[_wgslsmith_index_u32(0u, 7u)], true), vec4<bool>(true, global2[_wgslsmith_index_u32(u_input.b, 7u)], global2[_wgslsmith_index_u32(u_input.b, 7u)], true), vec4<bool>(false, global2[_wgslsmith_index_u32(4294967295u, 7u)], true, global2[_wgslsmith_index_u32(u_input.b, 7u)])), !vec4<bool>(true, false, global2[_wgslsmith_index_u32(u_input.b, 7u)], true), select(global2[_wgslsmith_index_u32(4294967295u, 7u)], true, global2[_wgslsmith_index_u32(u_input.b, 7u)]))), reverseBits(abs(min(vec4<u32>(u_input.b, 15183u, 1u, 1u), vec4<u32>(0u, u_input.b, u_input.b, u_input.b))))));
}

