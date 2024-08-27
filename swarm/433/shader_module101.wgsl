struct Struct_1 {
    a: f32,
    b: i32,
    c: u32,
    d: vec4<u32>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: u32,
    b: f32,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec3<i32>,
    c: Struct_1,
    d: vec2<bool>,
}

struct Struct_4 {
    a: vec2<f32>,
    b: vec4<f32>,
    c: f32,
    d: vec3<f32>,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: u32,
    d: vec3<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 64887u;

var<private> global1: Struct_2 = Struct_2(36900u, 610f);

var<private> global2: array<bool, 4>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32) -> vec4<u32> {
    let var_0 = _wgslsmith_dot_vec3_u32(firstLeadingBit(~vec3<u32>(_wgslsmith_clamp_u32(1u, u_input.b.x, u_input.a), 4294967295u, abs(global1.a))), abs(vec3<u32>(~global1.a, u_input.b.x, u_input.b.x)));
    global1 = Struct_2(firstTrailingBit(1u), global1.b);
    let var_1 = Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(528f, 206f, global1.b, -1570f), vec4<f32>(global1.b, global1.b, -566f, global1.b))) - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(1047f, global1.b, global1.b, global1.b) * vec4<f32>(global1.b, global1.b, 897f, global1.b)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1870f, global1.b, global1.b, -858f)))))), vec3<i32>(2147483647i, 6860i, min(~_wgslsmith_mult_i32(u_input.c.x, u_input.c.x), u_input.c.x)), Struct_1(_wgslsmith_f_op_f32(global1.b * 917f), u_input.c.x, select(~u_input.b.x, _wgslsmith_clamp_u32(global1.a, u_input.a, arg_0), false) | ~var_0, reverseBits(vec4<u32>(4512u, 33897u, u_input.a, 1u)) >> (~vec4<u32>(3366u, 1u, arg_0, 78852u) % vec4<u32>(32u)), _wgslsmith_sub_vec4_u32(vec4<u32>(global1.a, u_input.a, 0u, global1.a) ^ u_input.b, u_input.b) >> (abs(vec4<u32>(3293u, var_0, arg_0, global1.a)) % vec4<u32>(32u))), select(vec2<bool>(global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(4294967295u, global1.a, 29638u), 4u)], any(select(vec3<bool>(true, global2[_wgslsmith_index_u32(global1.a, 4u)], false), vec3<bool>(true, true, false), true))), vec2<bool>((var_0 < global1.a) || true, all(select(vec2<bool>(true, global2[_wgslsmith_index_u32(12124u, 4u)]), vec2<bool>(global2[_wgslsmith_index_u32(global1.a, 4u)], global2[_wgslsmith_index_u32(arg_0, 4u)]), vec2<bool>(true, true)))), global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.a, var_0) ^ ~13085u, 4u)] == all(!vec2<bool>(false, global2[_wgslsmith_index_u32(u_input.a, 4u)]))));
    var var_2 = vec3<u32>(_wgslsmith_dot_vec3_u32(min(abs(~vec3<u32>(39478u, var_1.c.d.x, 0u)), ~vec3<u32>(global1.a, var_0, 0u) >> (_wgslsmith_sub_vec3_u32(vec3<u32>(8311u, u_input.b.x, var_0), vec3<u32>(arg_0, var_0, var_0)) % vec3<u32>(32u))), vec3<u32>(4294967295u ^ global1.a, ~(var_1.c.c | var_0), 25777u)), ~_wgslsmith_add_u32(_wgslsmith_mod_u32(_wgslsmith_mult_u32(var_1.c.e.x, var_1.c.c), ~7728u), _wgslsmith_add_u32(var_1.c.c, arg_0)), ~_wgslsmith_add_u32(countOneBits(~4294967295u), firstLeadingBit(arg_0) & u_input.b.x));
    global2 = array<bool, 4>();
    return u_input.b;
}

fn func_2(arg_0: vec2<u32>) -> Struct_1 {
    return Struct_1(-357f, _wgslsmith_sub_i32(u_input.c.x, -_wgslsmith_mod_i32(~u_input.c.x, ~(-15132i))), _wgslsmith_dot_vec3_u32(u_input.b.wwy, u_input.b.wyw), reverseBits(vec4<u32>(firstTrailingBit(global1.a ^ u_input.a), global1.a, _wgslsmith_mult_u32(u_input.a, countOneBits(4294967295u)), select(86922u, global1.a, true))), abs(~func_3(15101u)) ^ vec4<u32>(~u_input.a, ~select(2729u, global1.a, false), ~arg_0.x, arg_0.x));
}

fn func_4(arg_0: vec3<u32>, arg_1: u32, arg_2: Struct_1, arg_3: vec4<f32>) -> Struct_2 {
    var var_0 = any(select(select(vec3<bool>(global2[_wgslsmith_index_u32(u_input.b.x, 4u)], any(vec2<bool>(true, global2[_wgslsmith_index_u32(60751u, 4u)])), false), select(select(vec3<bool>(global2[_wgslsmith_index_u32(arg_1, 4u)], global2[_wgslsmith_index_u32(arg_0.x, 4u)], global2[_wgslsmith_index_u32(66767u, 4u)]), vec3<bool>(true, false, global2[_wgslsmith_index_u32(arg_2.e.x, 4u)]), vec3<bool>(true, false, global2[_wgslsmith_index_u32(14417u, 4u)])), vec3<bool>(global2[_wgslsmith_index_u32(arg_1, 4u)], global2[_wgslsmith_index_u32(0u, 4u)], global2[_wgslsmith_index_u32(25632u, 4u)]), true), true), !select(!vec3<bool>(global2[_wgslsmith_index_u32(arg_1, 4u)], global2[_wgslsmith_index_u32(34153u, 4u)], false), select(vec3<bool>(false, global2[_wgslsmith_index_u32(arg_2.c, 4u)], true), vec3<bool>(true, false, true), false), global2[_wgslsmith_index_u32(global1.a, 4u)] | global2[_wgslsmith_index_u32(42680u, 4u)]), !global2[_wgslsmith_index_u32(arg_0.x, 4u)]));
    var var_1 = Struct_3(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1244f, arg_3.x, arg_2.a, global1.b), vec4<f32>(-1844f, arg_3.x, arg_3.x, -328f))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_3))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(arg_2.a, 1359f, -561f, arg_2.a), arg_3)))), any(!vec4<bool>(global2[_wgslsmith_index_u32(88888u, 4u)], global2[_wgslsmith_index_u32(arg_0.x, 4u)], global2[_wgslsmith_index_u32(37333u, 4u)], global2[_wgslsmith_index_u32(1u, 4u)])))), _wgslsmith_mod_vec3_i32(-(select(u_input.c.zzw, vec3<i32>(0i, arg_2.b, arg_2.b), vec3<bool>(global2[_wgslsmith_index_u32(u_input.a, 4u)], false, global2[_wgslsmith_index_u32(0u, 4u)])) >> (~vec3<u32>(arg_2.c, 4294967295u, arg_1) % vec3<u32>(32u))), -vec3<i32>(func_2(vec2<u32>(global1.a, 7973u)).b, _wgslsmith_sub_i32(-2147483647i, u_input.c.x), u_input.c.x)), func_2(~(~arg_2.e.wz)), !(!select(!vec2<bool>(true, global2[_wgslsmith_index_u32(4294967295u, 4u)]), select(vec2<bool>(global2[_wgslsmith_index_u32(arg_0.x, 4u)], true), vec2<bool>(global2[_wgslsmith_index_u32(4294967295u, 4u)], true), false), select(vec2<bool>(global2[_wgslsmith_index_u32(39558u, 4u)], global2[_wgslsmith_index_u32(41364u, 4u)]), vec2<bool>(false, global2[_wgslsmith_index_u32(global1.a, 4u)]), true))));
    let var_2 = Struct_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(424f, 1064f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.b * arg_3.x)))), var_1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-175f + 1000f) - _wgslsmith_f_op_f32(-2033f + -2190f)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-606f, -439f, 964f))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(373f, -1542f) * 766f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(-187f, -1066f)), 676f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2101f) * _wgslsmith_f_op_f32(ceil(-2805f)))))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-246f, arg_3.x)), arg_3.x, _wgslsmith_div_f32(-2229f, _wgslsmith_f_op_f32(sign(-349f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(var_1.c.a))))))));
    global2 = array<bool, 4>();
    global1 = Struct_2(arg_1, global1.b);
    return Struct_2(4438u >> ((~arg_2.d.x << ((_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 1u), arg_2.e.wx) >> (abs(1u) % 32u)) % 32u)) % 32u), -1578f);
}

fn func_1(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1) -> vec4<bool> {
    let var_0 = vec4<bool>(false, select(any(!select(vec2<bool>(arg_1, arg_1), vec2<bool>(arg_1, arg_1), vec2<bool>(global2[_wgslsmith_index_u32(u_input.b.x, 4u)], true))), any(!vec2<bool>(true, arg_1)), global2[_wgslsmith_index_u32(~(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, global1.a), arg_0.e.yw)), 4u)]), false, all(!select(select(vec3<bool>(false, arg_1, global2[_wgslsmith_index_u32(global1.a, 4u)]), vec3<bool>(arg_1, global2[_wgslsmith_index_u32(arg_0.c, 4u)], false), arg_1), !vec3<bool>(true, global2[_wgslsmith_index_u32(4294967295u, 4u)], false), select(vec3<bool>(global2[_wgslsmith_index_u32(arg_0.c, 4u)], global2[_wgslsmith_index_u32(0u, 4u)], true), vec3<bool>(arg_1, true, global2[_wgslsmith_index_u32(arg_2.c, 4u)]), global2[_wgslsmith_index_u32(0u, 4u)]))));
    global0 = 17359u & countOneBits(~u_input.a);
    global0 = global1.a;
    var var_1 = func_4(_wgslsmith_clamp_vec3_u32(u_input.b.wxy, firstTrailingBit(~abs(vec3<u32>(arg_0.e.x, 0u, u_input.b.x))), _wgslsmith_mult_vec3_u32(vec3<u32>(~u_input.b.x, arg_2.d.x ^ 10607u, global1.a << (140230u % 32u)), vec3<u32>(min(arg_0.c, u_input.a), global1.a ^ arg_2.d.x, global1.a))), _wgslsmith_dot_vec2_u32(~(~(~vec2<u32>(arg_2.c, arg_2.d.x))), _wgslsmith_sub_vec2_u32(arg_2.e.yx, arg_2.d.zz)), func_2(~vec2<u32>(u_input.b.x, _wgslsmith_mult_u32(arg_0.c, arg_0.e.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1237f, arg_2.a, -456f, global1.b), vec4<f32>(843f, global1.b, arg_2.a, 237f))), vec4<f32>(1000f, _wgslsmith_f_op_f32(f32(-1f) * -909f), _wgslsmith_f_op_f32(-935f - global1.b), 107f)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a, -2189f, -2108f, -1477f)), vec4<f32>(562f, 402f, -1000f, 367f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1094f, global1.b, -165f, 2225f) + vec4<f32>(1214f, arg_0.a, arg_2.a, -2240f))))));
    global1 = Struct_2(_wgslsmith_add_u32(~arg_2.c, arg_0.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(555f))), _wgslsmith_f_op_f32(select(-1070f, _wgslsmith_f_op_f32(f32(-1f) * -456f), false)), global2[_wgslsmith_index_u32(countOneBits(var_1.a) & abs(4294967295u), 4u)]))));
    return var_0;
}

fn func_5(arg_0: vec3<bool>) -> Struct_2 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-517f, -1530f))) + global1.b), reverseBits(u_input.c.x), global1.a, u_input.b, ~_wgslsmith_clamp_vec4_u32(vec4<u32>(global1.a, 8335u, u_input.b.x, global1.a) ^ (vec4<u32>(global1.a, 73047u, 0u, 8096u) << (vec4<u32>(global1.a, 13518u, 4294967295u, 34312u) % vec4<u32>(32u))), u_input.b, vec4<u32>(1u, reverseBits(global1.a), ~0u, _wgslsmith_mod_u32(19772u, global1.a))));
    let var_1 = -1000f;
    var var_2 = func_2(~vec2<u32>(23966u, 4294967295u));
    let var_3 = ~_wgslsmith_sub_i32(min(_wgslsmith_add_i32(u_input.c.x, -1i), _wgslsmith_div_i32(0i, 33382i)), -1i) >> (global1.a % 32u);
    var var_4 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(462f, var_2.a), vec2<f32>(global1.b, var_1), arg_0.yx)))))));
    return Struct_2(firstLeadingBit(_wgslsmith_sub_u32(_wgslsmith_add_u32(1u, ~6147u), u_input.b.x)), 2723f);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<bool, 4>();
    let var_0 = u_input.b.wzw;
    global0 = _wgslsmith_mod_u32(global1.a, u_input.a & global1.a);
    global0 = _wgslsmith_clamp_u32(~global1.a, global1.a, _wgslsmith_clamp_u32(4294967295u >> (var_0.x % 32u), 64434u, select(1u, var_0.x, global2[_wgslsmith_index_u32(var_0.x << (global1.a % 32u), 4u)])));
    global1 = func_5(vec3<bool>(all(select(vec4<bool>(global2[_wgslsmith_index_u32(0u, 4u)], true, true, global2[_wgslsmith_index_u32(u_input.b.x, 4u)]), func_1(Struct_1(1686f, 2147483647i, var_0.x, vec4<u32>(u_input.b.x, 4294967295u, u_input.b.x, var_0.x), vec4<u32>(u_input.b.x, global1.a, u_input.b.x, u_input.b.x)), true, Struct_1(-542f, -1i, global1.a, u_input.b, vec4<u32>(u_input.b.x, 0u, global1.a, 0u))), false)), true, func_1(func_2(vec2<u32>(4294967295u, 84806u)), global2[_wgslsmith_index_u32(global1.a, 4u)] || false, func_2(_wgslsmith_mod_vec2_u32(var_0.zy, vec2<u32>(global1.a, 30836u)))).x));
    let var_1 = _wgslsmith_f_op_f32(-global1.b);
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(vec3<f32>(var_1, var_1, var_1), _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.b, global1.b, global1.b) - vec3<f32>(global1.b, 1193f, -1032f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, -1172f, -734f)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(global1.b, var_1, -232f), vec3<f32>(-738f, -463f, var_1))), var_1 > -753f)))));
    var var_3 = u_input.a;
    let var_4 = Struct_2(max(_wgslsmith_mult_u32(firstTrailingBit(var_0.x), func_3(~23337u).x), u_input.b.x), 182f);
    let x = u_input.a;
    s_output = StorageBuffer(func_4(u_input.b.xzy | var_0, 1u, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1)), u_input.c.x, 66814u, u_input.b, ~vec4<u32>(u_input.b.x, 18347u, var_4.a, 82101u) & (vec4<u32>(u_input.a, 12389u, global1.a, var_4.a) & vec4<u32>(global1.a, 0u, var_0.x, 21320u))), vec4<f32>(func_4(var_0 ^ vec3<u32>(1u, 30651u, global1.a), max(var_4.a, var_4.a), Struct_1(1000f, u_input.c.x, 0u, vec4<u32>(u_input.b.x, 0u, 40932u, 71027u), vec4<u32>(1u, 56402u, 1u, 9847u)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1000f, var_2.x, -1000f, var_4.b), vec4<f32>(global1.b, global1.b, -1850f, 569f)))).b, func_4(vec3<u32>(50512u, var_4.a, 0u), _wgslsmith_clamp_u32(var_0.x, var_0.x, 0u), func_2(u_input.b.zw), _wgslsmith_f_op_vec4_f32(-vec4<f32>(945f, -487f, -322f, var_2.x))).b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1296f) + 326f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.b + -117f)))).b, -2147483647i, countOneBits((_wgslsmith_dot_vec2_u32(vec2<u32>(global1.a, 40340u), vec2<u32>(79549u, 0u)) ^ _wgslsmith_sub_u32(var_0.x, 7425u)) & var_4.a), vec3<u32>(func_2(vec2<u32>(78258u, var_0.x)).e.x >> (firstTrailingBit(var_4.a) % 32u), 1752u, _wgslsmith_clamp_u32(var_0.x, abs(4294967295u), _wgslsmith_dot_vec4_u32(~vec4<u32>(0u, 25101u, var_0.x, global1.a), min(u_input.b, vec4<u32>(0u, 27594u, 40726u, 4307u))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_5(vec3<bool>(false, false, true)).b * 115f) - var_2.x));
}

