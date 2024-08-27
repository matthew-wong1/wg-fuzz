struct Struct_1 {
    a: u32,
    b: u32,
    c: vec2<f32>,
    d: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct Struct_3 {
    a: f32,
    b: vec3<u32>,
    c: u32,
    d: vec4<f32>,
    e: u32,
}

struct Struct_4 {
    a: vec4<i32>,
    b: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec4<f32>,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: i32;

var<private> global2: vec4<bool> = vec4<bool>(false, true, false, true);

var<private> global3: array<vec4<bool>, 14>;

var<private> global4: array<i32, 14> = array<i32, 14>(-21087i, i32(-2147483648), 17079i, 4727i, 20153i, 2147483647i, -14657i, -26698i, -1i, 2147483647i, 48574i, 41437i, 21810i, 0i);

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_3, arg_2: u32, arg_3: bool) -> f32 {
    var var_0 = ~_wgslsmith_mod_vec4_i32(vec4<i32>(~global4[_wgslsmith_index_u32(~0u, 14u)], -firstLeadingBit(global4[_wgslsmith_index_u32(arg_1.b.x, 14u)]), 0i, -51674i), vec4<i32>(~abs(1i), global4[_wgslsmith_index_u32(u_input.c, 14u)], _wgslsmith_div_i32(global4[_wgslsmith_index_u32(u_input.a, 14u)] >> (51987u % 32u), ~(-21389i)), abs(_wgslsmith_div_i32(0i, 1i))));
    var var_1 = Struct_3(482f, (vec3<u32>(u_input.a, ~66851u, firstTrailingBit(1u)) | select(~arg_1.b, ~vec3<u32>(u_input.a, 69735u, u_input.b), arg_0.x | true)) & arg_1.b, 1u >> ((_wgslsmith_dot_vec2_u32(arg_1.b.zx, ~arg_1.b.yz) | u_input.b) % 32u), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_1.d.x))) * _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(arg_1.d.x, arg_1.a)))), 183f, _wgslsmith_f_op_f32(abs(846f)), arg_1.d.x), abs(arg_2));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.d.x)), _wgslsmith_f_op_f32(select(1672f, 740f, true || arg_3)))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.d.x))));
    global0 = ~_wgslsmith_dot_vec3_i32(var_0.wzz >> (_wgslsmith_add_vec3_u32(vec3<u32>(var_1.e, 4294967295u, 1u), var_1.b) % vec3<u32>(32u)), -(~_wgslsmith_clamp_vec3_i32(vec3<i32>(-2147483647i, 22538i, 2147483647i), var_0.xzz, var_0.xww)));
    var var_3 = -727f;
    return var_2;
}

fn func_2(arg_0: vec3<u32>, arg_1: vec2<f32>, arg_2: Struct_3) -> bool {
    var var_0 = Struct_1(u_input.d, _wgslsmith_div_u32(36699u, arg_0.x ^ abs(u_input.c)) ^ _wgslsmith_add_u32(~(~1u), 0u), _wgslsmith_f_op_vec2_f32(arg_1 * vec2<f32>(_wgslsmith_f_op_f32(trunc(1924f)), _wgslsmith_f_op_f32(func_3(vec4<bool>(true, true, true, false), Struct_3(arg_1.x, vec3<u32>(u_input.c, 0u, arg_2.b.x), u_input.d, vec4<f32>(arg_1.x, arg_1.x, -228f, arg_2.d.x), arg_2.b.x), ~arg_2.b.x, global2.x)))), _wgslsmith_clamp_vec4_i32(min(~vec4<i32>(global4[_wgslsmith_index_u32(23297u, 14u)], 17578i, -52412i, 2147483647i), abs(vec4<i32>(-7927i, 1i, global4[_wgslsmith_index_u32(4294967295u, 14u)], 2147483647i))), vec4<i32>(global4[_wgslsmith_index_u32(41036u, 14u)], 10475i, -49828i, global4[_wgslsmith_index_u32(arg_2.e, 14u)]) >> (countOneBits(vec4<u32>(9419u, 4294967295u, 36065u, 0u)) % vec4<u32>(32u)), _wgslsmith_mult_vec4_i32(~vec4<i32>(-2147483647i, global4[_wgslsmith_index_u32(u_input.b, 14u)], 2704i, 0i), vec4<i32>(global4[_wgslsmith_index_u32(0u, 14u)], -112158i, 1i, -68595i))) & (_wgslsmith_mod_vec4_i32(~vec4<i32>(-1i, 1i, 58611i, global4[_wgslsmith_index_u32(44813u, 14u)]), firstTrailingBit(vec4<i32>(global4[_wgslsmith_index_u32(u_input.b, 14u)], global4[_wgslsmith_index_u32(arg_0.x, 14u)], 1i, 32774i))) << (select(~vec4<u32>(0u, 91927u, arg_0.x, 4294967295u), ~vec4<u32>(30276u, 42840u, arg_2.e, arg_2.b.x), global3[_wgslsmith_index_u32(max(arg_0.x, arg_2.c), 14u)]) % vec4<u32>(32u))));
    var var_1 = _wgslsmith_sub_vec2_u32(firstTrailingBit(~vec2<u32>(~var_0.b, arg_2.e >> (1u % 32u))), _wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(arg_0.x, var_0.b), 1u & arg_0.x) | (firstTrailingBit(arg_2.b.yx) << (abs(vec2<u32>(9448u, 1u)) % vec2<u32>(32u))), _wgslsmith_add_vec2_u32(firstTrailingBit(_wgslsmith_div_vec2_u32(arg_0.xy, vec2<u32>(arg_2.c, arg_2.c))), arg_0.xz)));
    let var_2 = Struct_2(Struct_1(select(_wgslsmith_div_u32(~var_0.a, ~1u), _wgslsmith_div_u32(arg_2.c, 53467u), false), arg_0.x, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(861f + arg_2.a), _wgslsmith_f_op_f32(abs(-1183f)))), var_0.d), _wgslsmith_mult_u32(~(~var_1.x & ~4277u), arg_2.c));
    var var_3 = !global2.x;
    let var_4 = arg_2.d.zzy;
    return true;
}

fn func_1(arg_0: Struct_4, arg_1: vec4<bool>, arg_2: vec2<bool>) -> vec2<u32> {
    var var_0 = !select(!vec4<bool>(true, 1000f >= arg_0.b.a, arg_1.x, global2.x), select(global3[_wgslsmith_index_u32(~u_input.d << (1u % 32u), 14u)], select(!vec4<bool>(true, global2.x, arg_1.x, true), !vec4<bool>(arg_1.x, global2.x, true, arg_1.x), arg_1), arg_1), select(false, false, all(!vec2<bool>(global2.x, global2.x))));
    var_0 = vec4<bool>(all(arg_1.xx), all(!(!var_0.yyw)), all(vec4<bool>(!func_2(arg_0.b.b, arg_0.b.d.xx, arg_0.b), func_2(vec3<u32>(4294967295u, 1u, 32659u), arg_0.b.d.xx, arg_0.b) | true, _wgslsmith_div_f32(arg_0.b.a, arg_0.b.d.x) < -553f, false)), func_2(_wgslsmith_clamp_vec3_u32(reverseBits(~vec3<u32>(u_input.d, 0u, arg_0.b.c)), vec3<u32>(_wgslsmith_add_u32(arg_0.b.c, 0u), u_input.c, _wgslsmith_sub_u32(u_input.d, u_input.d)), arg_0.b.b), _wgslsmith_f_op_vec2_f32(arg_0.b.d.ww * vec2<f32>(-318f, _wgslsmith_f_op_f32(arg_0.b.d.x * -792f))), Struct_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.b.d.x + 751f), _wgslsmith_f_op_f32(trunc(arg_0.b.a))), ~vec3<u32>(arg_0.b.c, u_input.c, 57240u), arg_0.b.b.x, vec4<f32>(_wgslsmith_f_op_f32(exp2(arg_0.b.a)), 1f, _wgslsmith_f_op_f32(arg_0.b.d.x - arg_0.b.d.x), -801f), ~u_input.b)));
    let var_1 = Struct_3(-580f, vec3<u32>(4294967295u, ~arg_0.b.c, arg_0.b.e), max(abs(select(arg_0.b.b.x, ~6596u, true)), firstLeadingBit(11165u)), vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2028f)))), arg_0.b.d.x, -668f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.b.d.x + _wgslsmith_f_op_f32(f32(-1f) * -290f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.d.x)))), arg_0.b.c);
    var var_2 = vec3<bool>(157f < arg_0.b.a, all(select(var_0.yx, global2.zz, !arg_1.wz)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_0.b.d.x + 740f), _wgslsmith_f_op_f32(-arg_0.b.a))), -1288f)) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b.d.x) - -235f));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b.d.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.a, -560f) * var_1.d.x) + 923f)));
    return var_1.b.yx;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mult_u32(reverseBits(_wgslsmith_dot_vec2_u32(~(~vec2<u32>(3819u, 0u)), ~func_1(Struct_4(vec4<i32>(global4[_wgslsmith_index_u32(36721u, 14u)], -2147483647i, 1i, -16915i), Struct_3(1053f, vec3<u32>(4294967295u, u_input.a, 60504u), u_input.b, vec4<f32>(-1000f, 1256f, -193f, 802f), u_input.d)), vec4<bool>(global2.x, false, global2.x, true), vec2<bool>(global2.x, global2.x)))), firstLeadingBit(func_1(Struct_4(vec4<i32>(global4[_wgslsmith_index_u32(u_input.a, 14u)], global4[_wgslsmith_index_u32(4294967295u, 14u)], global4[_wgslsmith_index_u32(12244u, 14u)], global4[_wgslsmith_index_u32(u_input.a, 14u)]) & vec4<i32>(global4[_wgslsmith_index_u32(55045u, 14u)], global4[_wgslsmith_index_u32(1u, 14u)], global4[_wgslsmith_index_u32(u_input.c, 14u)], global4[_wgslsmith_index_u32(22330u, 14u)]), Struct_3(288f, vec3<u32>(u_input.d, u_input.c, u_input.a), u_input.b, vec4<f32>(-313f, -586f, -174f, -658f), u_input.a)), vec4<bool>(false, u_input.c >= 4294967295u, all(vec2<bool>(true, global2.x)), global2.x & global2.x), !select(vec2<bool>(true, true), global2.wy, vec2<bool>(global2.x, true))).x));
    global0 = global4[_wgslsmith_index_u32(4294967295u, 14u)];
    let var_1 = Struct_4(select(vec4<i32>(-global4[_wgslsmith_index_u32(108403u, 14u)], -1i, _wgslsmith_dot_vec4_i32(max(vec4<i32>(global4[_wgslsmith_index_u32(u_input.a, 14u)], 1i, global4[_wgslsmith_index_u32(u_input.b, 14u)], global4[_wgslsmith_index_u32(26517u, 14u)]), vec4<i32>(global4[_wgslsmith_index_u32(49662u, 14u)], 2147483647i, global4[_wgslsmith_index_u32(49263u, 14u)], -2147483647i)), vec4<i32>(-16367i, 13658i, 10355i, 1i) | vec4<i32>(-1i, 1i, global4[_wgslsmith_index_u32(u_input.a, 14u)], 0i)), global4[_wgslsmith_index_u32(u_input.a, 14u)]), countOneBits(firstTrailingBit(~vec4<i32>(2147483647i, -26275i, global4[_wgslsmith_index_u32(u_input.c, 14u)], -25252i))), global3[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1739u, 26524u, 51472u, 526u), vec4<u32>(u_input.c, 1u, 0u, 0u)), ~10268u, _wgslsmith_sub_u32(u_input.b, u_input.c)), 14u)]), Struct_3(119f, ~_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.c, u_input.a, u_input.c) >> (vec3<u32>(u_input.c, 4294967295u, 25498u) % vec3<u32>(32u)), ~vec3<u32>(3401u, u_input.a, u_input.a), min(vec3<u32>(52311u, u_input.a, u_input.b), vec3<u32>(1u, 1u, 15840u))), 27110u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-289f, 320f, 582f, -2114f) * _wgslsmith_div_vec4_f32(vec4<f32>(-1759f, -1000f, -873f, 1692f), vec4<f32>(-1000f, 1836f, -984f, -487f)))), ~(select(23986u, u_input.b, global2.x) >> (4294967295u % 32u))));
    let var_2 = Struct_2(Struct_1(_wgslsmith_dot_vec3_u32(var_1.b.b, ~vec3<u32>(var_1.b.b.x, u_input.d, 1u)), firstTrailingBit(min(1u, u_input.b)), _wgslsmith_f_op_vec2_f32(-var_1.b.d.wy), var_1.a), _wgslsmith_dot_vec3_u32(~_wgslsmith_add_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.c, u_input.a, u_input.a), vec3<u32>(54260u, 2740u, var_1.b.b.x)), ~var_1.b.b), ~abs(var_1.b.b ^ vec3<u32>(4294967295u, u_input.b, 22493u))));
    global4 = array<i32, 14>();
    global0 = var_1.a.x;
    var var_3 = global3[_wgslsmith_index_u32(~(var_1.b.b.x ^ 1u), 14u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1236f))), 4294967295u, vec4<f32>(-455f, _wgslsmith_f_op_f32(f32(-1f) * -2279f), _wgslsmith_f_op_f32(-618f - _wgslsmith_f_op_f32(func_3(vec4<bool>(var_3.x, false, var_3.x, false), Struct_3(260f, var_1.b.b, 12597u, var_1.b.d, var_2.a.a), ~51348u, true))), _wgslsmith_f_op_f32(var_1.b.d.x - var_1.b.d.x)), reverseBits(13982u), ~var_2.a.d.x);
}

