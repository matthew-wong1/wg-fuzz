struct Struct_1 {
    a: u32,
    b: u32,
    c: bool,
    d: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: Struct_1 = Struct_1(0u, 4294967295u, false, 50191u);

var<private> global2: array<i32, 19> = array<i32, 19>(-30715i, 1i, 533i, 41121i, 6184i, 32942i, -9804i, -34645i, -3637i, -45519i, 756i, -16648i, -23179i, 1903i, 1i, 26178i, -54253i, -1i, -15426i);

var<private> global3: array<bool, 31> = array<bool, 31>(true, false, false, true, false, false, true, false, false, true, true, false, true, true, true, false, true, false, true, false, false, true, false, true, true, true, true, false, true, true, false);

var<private> global4: vec3<i32> = vec3<i32>(-1i, 2147483647i, 2147483647i);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: vec4<u32>) -> bool {
    var var_0 = _wgslsmith_mod_i32(_wgslsmith_add_i32(_wgslsmith_div_i32(-8086i, 1i), global4.x << (61450u % 32u)) >> (~arg_2.x % 32u), countOneBits(0i)) <= (i32(-1i) * -global2[_wgslsmith_index_u32(~arg_1.x, 19u)]);
    var var_1 = Struct_1(firstTrailingBit(1u), u_input.b, arg_0.c, ~firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, arg_2.x, u_input.b, arg_1.x), arg_2)) >> (arg_0.b % 32u));
    return any(select(vec4<bool>(false, select(true, arg_0.c, true), true, !(!global1.c)), vec4<bool>(!any(vec3<bool>(global3[_wgslsmith_index_u32(global1.a, 31u)], true, global1.c)), all(select(vec2<bool>(global1.c, true), vec2<bool>(false, false), vec2<bool>(var_1.c, global3[_wgslsmith_index_u32(0u, 31u)]))), true, var_1.c), vec4<bool>(var_1.c, var_1.c, true, all(vec4<bool>(false, true, global1.c, global3[_wgslsmith_index_u32(var_1.b, 31u)])))));
}

fn func_2(arg_0: vec2<i32>) -> Struct_1 {
    var var_0 = Struct_1(~_wgslsmith_sub_u32(41805u, ~min(1u, u_input.a)), 57667u, func_3(Struct_1(76137u, 4294967295u, all(select(vec2<bool>(global3[_wgslsmith_index_u32(u_input.c.x, 31u)], global3[_wgslsmith_index_u32(4294967295u, 31u)]), vec2<bool>(true, false), vec2<bool>(global3[_wgslsmith_index_u32(u_input.b, 31u)], false))), 52208u), vec3<u32>(_wgslsmith_div_u32(_wgslsmith_div_u32(u_input.c.x, 1u), ~global1.a), 1u, (0u << (global1.b % 32u)) >> (select(global1.a, 4152u, global3[_wgslsmith_index_u32(4294967295u, 31u)]) % 32u)), firstLeadingBit(select(abs(vec4<u32>(1u, global1.b, u_input.a, 31339u)), reverseBits(vec4<u32>(44561u, 0u, 30879u, u_input.c.x)), global3[_wgslsmith_index_u32(global1.b, 31u)]))), global1.b);
    let var_1 = reverseBits(firstTrailingBit(_wgslsmith_mult_vec2_i32(select(_wgslsmith_mult_vec2_i32(vec2<i32>(67429i, arg_0.x), arg_0), _wgslsmith_mod_vec2_i32(global4.zy, arg_0), !vec2<bool>(var_0.c, var_0.c)), vec2<i32>(_wgslsmith_clamp_i32(global4.x, global2[_wgslsmith_index_u32(46776u, 19u)], -2147483647i), 1i))));
    let var_2 = Struct_1(var_0.d, 1u, !(!global3[_wgslsmith_index_u32(var_0.a, 31u)]), 87469u);
    let var_3 = Struct_1(~(_wgslsmith_clamp_u32(~u_input.a, abs(u_input.a), u_input.c.x) >> (34237u % 32u)), 4294967295u, false, ~u_input.b);
    global3 = array<bool, 31>();
    return Struct_1(u_input.b, 1u, global1.c, _wgslsmith_div_u32(_wgslsmith_mult_u32(~global1.a, ~var_3.d), min(0u, var_3.a) ^ u_input.c.x) ^ ~var_0.b);
}

fn func_4(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: Struct_1, arg_3: Struct_1) -> f32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(646f + -767f), global0.x, _wgslsmith_f_op_f32(global0.x + global0.x))))));
    global2 = array<i32, 19>();
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global0.x), var_0.x))) - _wgslsmith_f_op_f32(-274f + 973f));
    var var_2 = true;
    return global0.x;
}

fn func_1(arg_0: f32, arg_1: i32, arg_2: vec2<bool>) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x - 1000f) * _wgslsmith_f_op_f32(func_4(func_2(global4.zy >> (_wgslsmith_clamp_vec2_u32(u_input.c.zx, u_input.c.yz, vec2<u32>(23966u, 31991u)) % vec2<u32>(32u))), !select(!vec4<bool>(global1.c, true, arg_2.x, arg_2.x), select(vec4<bool>(true, arg_2.x, true, false), vec4<bool>(arg_2.x, false, global1.c, true), true), vec4<bool>(true, true, true, true)), func_2(vec2<i32>(1i, -29087i)), func_2(~abs(vec2<i32>(-2147483647i, arg_1))))));
    let var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, 1832f));
    return abs(~1u);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<i32, 19>();
    let var_0 = Struct_1(global1.a, 4294967295u, true, countOneBits(_wgslsmith_mult_u32(func_1(_wgslsmith_f_op_f32(-global0.x), ~global4.x, select(vec2<bool>(true, global3[_wgslsmith_index_u32(0u, 31u)]), vec2<bool>(global1.c, false), vec2<bool>(global3[_wgslsmith_index_u32(452u, 31u)], global1.c))), _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(u_input.c.x, 30023u, 0u), ~4294967295u, _wgslsmith_sub_u32(global1.a, 0u)))));
    let var_1 = Struct_1(87561u, _wgslsmith_mult_u32(~_wgslsmith_div_u32(reverseBits(u_input.c.x), ~1u), global1.b), any(vec4<bool>(any(vec2<bool>(true, var_0.c)), abs(global4.x) >= -26872i, func_3(func_2(global4.zx), _wgslsmith_sub_vec3_u32(vec3<u32>(global1.d, 27609u, u_input.a), vec3<u32>(u_input.a, 0u, 22979u)), abs(vec4<u32>(var_0.d, global1.a, 1u, 73280u))), true)), _wgslsmith_mult_u32(global1.b, _wgslsmith_mod_u32(~var_0.b, ~4294967295u) << (((global1.d | 4294967295u) & 14832u) % 32u)));
    let var_2 = Struct_1(var_0.b, max(var_0.b, 0u), true, var_1.b);
    var var_3 = _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(i32(-1i) * -3869i, -20841i, firstLeadingBit(global4.x), global2[_wgslsmith_index_u32(var_1.a, 19u)])), -reverseBits(countOneBits(vec4<i32>(global4.x, global4.x, global4.x, global4.x)))), -390i);
    let var_4 = func_2(_wgslsmith_mult_vec2_i32(-_wgslsmith_mult_vec2_i32(~vec2<i32>(global2[_wgslsmith_index_u32(var_0.b, 19u)], 1i), ~global4.zz), _wgslsmith_clamp_vec2_i32(global4.yy, -select(vec2<i32>(global4.x, global2[_wgslsmith_index_u32(global1.b, 19u)]), global4.yz, vec2<bool>(false, var_1.c)), global4.yy)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global0.x, 1938f, -134f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, 1043f, global0.x) - vec3<f32>(-279f, global0.x, 679f)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1661f, 175f, -530f))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(1106f, global0.x, global0.x) - _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1566f, 855f, 1289f)))))));
}

