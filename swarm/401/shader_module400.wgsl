struct Struct_1 {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: vec3<bool>,
    b: Struct_1,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec4<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec2<f32>,
    d: vec3<i32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(vec4<u32>(18585u, 8175u, 62736u, 10894u), vec3<u32>(42091u, 4817u, 30582u), vec4<i32>(-12531i, -11403i, -2585i, 36559i)));

var<private> global1: array<bool, 24> = array<bool, 24>(true, false, false, false, true, false, false, true, true, true, true, true, true, false, false, true, true, true, false, false, true, false, true, false);

var<private> global2: i32 = 0i;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> f32 {
    global1 = array<bool, 24>();
    global0 = Struct_2(global0.a);
    var var_0 = ~_wgslsmith_mod_vec4_i32(firstTrailingBit(-(~global0.a.c)), ~min(vec4<i32>(global0.a.c.x, u_input.c.x, 7933i, global0.a.c.x), _wgslsmith_div_vec4_i32(global0.a.c, u_input.c)));
    global2 = -_wgslsmith_dot_vec3_i32((countOneBits(u_input.c.wyx) | vec3<i32>(-1i, var_0.x, global0.a.c.x)) << (max(global0.a.a.xwz, ~u_input.b.xww) % vec3<u32>(32u)), vec3<i32>(-1i) * -(vec3<i32>(var_0.x, 0i, -41034i) ^ vec3<i32>(-35265i, -8938i, u_input.c.x)));
    let var_1 = select(!vec3<bool>(any(vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.a, 24u)], false, global1[_wgslsmith_index_u32(14699u, 24u)])), (global1[_wgslsmith_index_u32(u_input.b.x, 24u)] && global1[_wgslsmith_index_u32(8598u, 24u)]) | true, true), select(vec3<bool>(select(any(vec2<bool>(false, global1[_wgslsmith_index_u32(4294967295u, 24u)])), all(vec3<bool>(true, false, global1[_wgslsmith_index_u32(17090u, 24u)])), global1[_wgslsmith_index_u32(~global0.a.b.x, 24u)]), true, global1[_wgslsmith_index_u32(~31324u, 24u)]), select(vec3<bool>(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(16857u, 0u), 24u)], false, !global1[_wgslsmith_index_u32(11323u, 24u)]), !vec3<bool>(false, global1[_wgslsmith_index_u32(4294967295u, 24u)], global1[_wgslsmith_index_u32(0u, 24u)]), vec3<bool>(global1[_wgslsmith_index_u32(53185u, 24u)], select(true, false, false), select(true, false, true))), true), vec3<bool>(all(!vec4<bool>(true, false, global1[_wgslsmith_index_u32(24565u, 24u)], false)), false, !(!any(vec4<bool>(true, true, global1[_wgslsmith_index_u32(1u, 24u)], true)))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(-1f)))) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1f - -445f))));
}

fn func_4(arg_0: vec3<f32>, arg_1: vec3<f32>) -> vec2<u32> {
    let var_0 = u_input.a;
    var var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x * _wgslsmith_f_op_f32(floor(-1518f)))) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(227f)), -601f))), -1006f));
    var var_2 = Struct_4(!select(!select(vec3<bool>(true, false, false), vec3<bool>(global1[_wgslsmith_index_u32(global0.a.b.x, 24u)], global1[_wgslsmith_index_u32(0u, 24u)], global1[_wgslsmith_index_u32(u_input.a, 24u)]), global1[_wgslsmith_index_u32(28163u, 24u)]), vec3<bool>(true, true, true), select(!vec3<bool>(global1[_wgslsmith_index_u32(0u, 24u)], global1[_wgslsmith_index_u32(u_input.b.x, 24u)], global1[_wgslsmith_index_u32(u_input.a, 24u)]), vec3<bool>(true, global1[_wgslsmith_index_u32(var_0, 24u)], true), true)), Struct_1(u_input.b, max(vec3<u32>(~1u, 3719u, abs(761u)), countOneBits(_wgslsmith_sub_vec3_u32(u_input.b.xzz, vec3<u32>(global0.a.b.x, u_input.a, global0.a.b.x)))), vec4<i32>(-2147483647i, _wgslsmith_div_i32(u_input.d.x, u_input.c.x), u_input.c.x, abs(-35786i)) ^ vec4<i32>(global0.a.c.x, ~33601i, firstTrailingBit(global0.a.c.x), u_input.d.x)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_1.x)) - arg_1.x)), _wgslsmith_f_op_f32(abs(-1679f)), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(arg_0.x)), 943f), -1775f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(2175f, arg_1.x)) - arg_0.x)));
    var var_3 = arg_0.xy;
    var var_4 = any(!(!vec4<bool>(true, var_2.a.x, any(var_2.a), false)));
    return vec2<u32>(u_input.b.x >> (~(~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, var_0, 64919u), u_input.b.wzw)) % 32u), 32037u);
}

fn func_2(arg_0: i32, arg_1: vec3<bool>) -> i32 {
    let var_0 = func_4(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1795f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - 663f))), _wgslsmith_f_op_f32(floor(1071f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())), _wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(f32(-1f) * -1257f))));
    let var_1 = Struct_2(global0.a);
    global1 = array<bool, 24>();
    return max(-select(1i & (var_1.a.c.x >> (0u % 32u)), ~firstLeadingBit(var_1.a.c.x), true), _wgslsmith_dot_vec2_i32(vec2<i32>(-1i | (var_1.a.c.x & 2147483647i), reverseBits(~var_1.a.c.x)), ~(var_1.a.c.xy ^ _wgslsmith_mod_vec2_i32(vec2<i32>(arg_0, u_input.c.x), vec2<i32>(global0.a.c.x, 8204i)))));
}

fn func_1(arg_0: vec2<bool>) -> f32 {
    let var_0 = _wgslsmith_mod_vec3_i32(vec3<i32>(-15566i, _wgslsmith_mult_i32(_wgslsmith_clamp_i32(global0.a.c.x, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, 25314i, -55103i, 8905i), u_input.c), max(u_input.c.x, u_input.c.x)), -60895i), reverseBits(u_input.c.x)), _wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, global0.a.c.x, func_2(countOneBits(0i), vec3<bool>(true, true, true))), u_input.c.zxx));
    var var_1 = vec2<bool>(0i != firstLeadingBit(firstTrailingBit(_wgslsmith_sub_i32(1i, -26456i))), global1[_wgslsmith_index_u32(global0.a.a.x, 24u)]);
    var var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1321f) + -311f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -986f) + -1820f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-2259f + -428f)))))));
    let var_3 = ~(~abs(~global0.a.a.x) >> (global0.a.b.x % 32u));
    var var_4 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -794f)));
    return -2457f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -156f;
    let x = u_input.a;
    s_output = StorageBuffer(~max(-37162i, -5985i), ~(~((0u | global0.a.b.x) ^ _wgslsmith_dot_vec4_u32(vec4<u32>(global0.a.b.x, 34849u, 4294967295u, u_input.b.x), global0.a.a))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1838f, var_0), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(var_0 * var_0), var_0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(vec2<bool>(true, true))) - -2457f) > _wgslsmith_f_op_f32(-var_0))), vec3<i32>(4135i, 1i, _wgslsmith_clamp_i32(min(_wgslsmith_dot_vec2_i32(vec2<i32>(global0.a.c.x, u_input.d.x), global0.a.c.yx), -47895i), reverseBits(global0.a.c.x), ~_wgslsmith_dot_vec3_i32(global0.a.c.yzy, vec3<i32>(global0.a.c.x, u_input.d.x, -53394i)))), ~max(vec2<i32>(global0.a.c.x, u_input.d.x), u_input.c.yy) >> (u_input.b.zw % vec2<u32>(32u)));
}

