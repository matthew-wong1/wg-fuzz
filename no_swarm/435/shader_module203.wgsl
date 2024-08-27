struct Struct_1 {
    a: vec4<u32>,
    b: vec4<f32>,
    c: u32,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<f32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 30>;

var<private> global1: u32;

var<private> global2: array<bool, 26>;

var<private> global3: array<vec2<f32>, 24>;

var<private> global4: array<i32, 32> = array<i32, 32>(1i, -19453i, 19955i, 10739i, i32(-2147483648), i32(-2147483648), -50763i, -7998i, 3321i, -20108i, 13977i, 0i, -31819i, 1i, 2147483647i, -6785i, i32(-2147483648), 41774i, 52547i, i32(-2147483648), -46064i, 47235i, 24595i, i32(-2147483648), i32(-2147483648), 1i, 39103i, -9380i, -43100i, -10587i, -12265i, 0i);

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(548f, -950f, _wgslsmith_div_f32(185f, 1000f), _wgslsmith_f_op_f32(f32(-1f) * -1178f)))) + vec4<f32>(-199f, -677f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(-1316f, -1499f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-441f * -233f))))));
    let var_1 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * _wgslsmith_f_op_f32(max(272f, -452f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-598f, var_0.x)) + _wgslsmith_f_op_f32(var_0.x - var_0.x)), var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x + var_0.x))))));
    global0 = array<Struct_1, 30>();
    global0 = array<Struct_1, 30>();
    global1 = _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(0u, u_input.a), ~87823u, u_input.a, 37047u), _wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(firstLeadingBit(vec4<u32>(0u, u_input.a, u_input.a, 4294967295u)), ~vec4<u32>(u_input.a, 0u, 1479u, u_input.a)), vec4<u32>(75680u, 5843u, abs(u_input.a), _wgslsmith_div_u32(u_input.a, 1u)))), vec4<u32>(~max(reverseBits(17227u), u_input.a ^ 8901u), 35521u & firstTrailingBit(52274u), u_input.a ^ ~4u, min(~(~4294967295u), _wgslsmith_dot_vec3_u32(~vec3<u32>(77970u, u_input.a, u_input.a), vec3<u32>(u_input.a, 6664u, 82654u)))));
    return select(select(select(vec3<bool>(!global2[_wgslsmith_index_u32(28191u, 26u)], !global2[_wgslsmith_index_u32(u_input.a, 26u)], global2[_wgslsmith_index_u32(0u, 26u)]), vec3<bool>(true, false, false), select(select(vec3<bool>(global2[_wgslsmith_index_u32(30056u, 26u)], global2[_wgslsmith_index_u32(u_input.a, 26u)], true), vec3<bool>(false, false, global2[_wgslsmith_index_u32(4294967295u, 26u)]), vec3<bool>(true, false, true)), !vec3<bool>(false, false, global2[_wgslsmith_index_u32(4294967295u, 26u)]), vec3<bool>(global2[_wgslsmith_index_u32(u_input.a, 26u)], false, global2[_wgslsmith_index_u32(u_input.a, 26u)]))), !select(vec3<bool>(true, global2[_wgslsmith_index_u32(81057u, 26u)], true), select(vec3<bool>(global2[_wgslsmith_index_u32(u_input.a, 26u)], true, global2[_wgslsmith_index_u32(20320u, 26u)]), vec3<bool>(global2[_wgslsmith_index_u32(u_input.a, 26u)], global2[_wgslsmith_index_u32(u_input.a, 26u)], global2[_wgslsmith_index_u32(u_input.a, 26u)]), vec3<bool>(false, global2[_wgslsmith_index_u32(20720u, 26u)], true)), !vec3<bool>(true, false, global2[_wgslsmith_index_u32(u_input.a, 26u)])), !(!select(vec3<bool>(false, false, global2[_wgslsmith_index_u32(27413u, 26u)]), vec3<bool>(global2[_wgslsmith_index_u32(u_input.a, 26u)], false, global2[_wgslsmith_index_u32(u_input.a, 26u)]), vec3<bool>(global2[_wgslsmith_index_u32(u_input.a, 26u)], global2[_wgslsmith_index_u32(78630u, 26u)], true)))), select(vec3<bool>(true, false, global2[_wgslsmith_index_u32(u_input.a, 26u)]), select(select(select(vec3<bool>(true, global2[_wgslsmith_index_u32(u_input.a, 26u)], true), vec3<bool>(global2[_wgslsmith_index_u32(u_input.a, 26u)], global2[_wgslsmith_index_u32(u_input.a, 26u)], global2[_wgslsmith_index_u32(u_input.a, 26u)]), false), !vec3<bool>(false, global2[_wgslsmith_index_u32(1u, 26u)], false), vec3<bool>(global2[_wgslsmith_index_u32(0u, 26u)], global2[_wgslsmith_index_u32(u_input.a, 26u)], global2[_wgslsmith_index_u32(4294967295u, 26u)])), select(select(vec3<bool>(false, false, false), vec3<bool>(global2[_wgslsmith_index_u32(4294967295u, 26u)], false, true), vec3<bool>(false, false, false)), vec3<bool>(false, false, global2[_wgslsmith_index_u32(u_input.a, 26u)]), false), global2[_wgslsmith_index_u32(~_wgslsmith_mult_u32(4294967295u, u_input.a), 26u)]), select(select(!vec3<bool>(false, true, global2[_wgslsmith_index_u32(0u, 26u)]), vec3<bool>(false, true, global2[_wgslsmith_index_u32(4294967295u, 26u)]), select(vec3<bool>(false, global2[_wgslsmith_index_u32(0u, 26u)], true), vec3<bool>(global2[_wgslsmith_index_u32(63696u, 26u)], global2[_wgslsmith_index_u32(42558u, 26u)], true), global2[_wgslsmith_index_u32(u_input.a, 26u)])), !vec3<bool>(true, false, global2[_wgslsmith_index_u32(u_input.a, 26u)]), vec3<bool>(all(vec3<bool>(true, global2[_wgslsmith_index_u32(u_input.a, 26u)], true)), any(vec4<bool>(true, true, global2[_wgslsmith_index_u32(u_input.a, 26u)], false)), true))), false || global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~_wgslsmith_add_u32(20136u, u_input.a), min(1u >> (u_input.a % 32u), ~u_input.a), u_input.a), 26u)]);
}

fn func_2() -> Struct_1 {
    let var_0 = ~(~countOneBits(max(vec4<u32>(u_input.a, 0u, u_input.a, 6313u) | vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<u32>(0u, u_input.a, 47439u, u_input.a) >> (vec4<u32>(1u, u_input.a, 9193u, 10376u) % vec4<u32>(32u)))));
    global2 = array<bool, 26>();
    let var_1 = 28894u;
    global1 = var_1;
    global1 = ~(~reverseBits(reverseBits(28465u)));
    return Struct_1(var_0, vec4<f32>(1f, 1f, 1f, 1f), 52981u, select(!func_3(), !select(vec3<bool>(global2[_wgslsmith_index_u32(var_0.x, 26u)], global2[_wgslsmith_index_u32(37999u, 26u)], global2[_wgslsmith_index_u32(1u, 26u)]), select(vec3<bool>(global2[_wgslsmith_index_u32(0u, 26u)], false, false), vec3<bool>(true, true, false), global2[_wgslsmith_index_u32(u_input.a, 26u)]), select(vec3<bool>(false, global2[_wgslsmith_index_u32(var_0.x, 26u)], true), vec3<bool>(global2[_wgslsmith_index_u32(37792u, 26u)], global2[_wgslsmith_index_u32(20846u, 26u)], true), vec3<bool>(false, true, true))), !func_3()));
}

fn func_1() -> i32 {
    var var_0 = vec4<i32>(firstLeadingBit(-20707i), reverseBits(global4[_wgslsmith_index_u32(u_input.a, 32u)] & _wgslsmith_div_i32(-39330i, _wgslsmith_add_i32(37919i, 57355i))), global4[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.a, select(u_input.a, ~52809u, true)), 32u)] ^ reverseBits(abs(_wgslsmith_dot_vec2_i32(vec2<i32>(-20092i, global4[_wgslsmith_index_u32(u_input.a, 32u)]), vec2<i32>(2147483647i, global4[_wgslsmith_index_u32(62312u, 32u)])))), global4[_wgslsmith_index_u32(0u, 32u)]);
    global4 = array<i32, 32>();
    global2 = array<bool, 26>();
    let var_1 = func_2();
    var var_2 = func_2();
    return reverseBits(global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, firstTrailingBit(var_1.c)), 32u)]);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(592f, 374f, global4[_wgslsmith_index_u32(u_input.a, 32u)] <= -40667i)) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -297f)))), 1380f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1547f * 669f))), 1388f));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-2347f - 707f), var_0.x)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-489f)) + 627f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x - var_0.x) - -877f)))));
    var var_2 = _wgslsmith_div_f32(var_0.x, var_1.x);
    var var_3 = u_input.a;
    var var_4 = func_1() | 2147483647i;
    global2 = array<bool, 26>();
    let var_5 = vec2<bool>(any(!(!(!vec2<bool>(true, global2[_wgslsmith_index_u32(19554u, 26u)])))), global2[_wgslsmith_index_u32(max(0u, 5220u), 26u)]);
    var var_6 = Struct_1(max(~_wgslsmith_add_vec4_u32(vec4<u32>(37268u, u_input.a, 0u, 1u), vec4<u32>(u_input.a, 59077u, 1551u, u_input.a)), (vec4<u32>(u_input.a, 4294967295u, u_input.a, u_input.a) >> (vec4<u32>(0u, 0u, 27831u, 15867u) % vec4<u32>(32u))) << (vec4<u32>(u_input.a, u_input.a, 0u, 4294967295u) % vec4<u32>(32u))) | max(_wgslsmith_clamp_vec4_u32(vec4<u32>(39048u, 1u, 39324u, 5560u) | vec4<u32>(u_input.a, 1u, 54376u, 92570u), vec4<u32>(4294967295u, u_input.a, u_input.a, u_input.a) ^ vec4<u32>(4362u, u_input.a, u_input.a, 10640u), vec4<u32>(u_input.a, 4294967295u, 73341u, u_input.a)), ~max(vec4<u32>(u_input.a, 43822u, u_input.a, 0u), vec4<u32>(u_input.a, u_input.a, 8017u, 57738u))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, -656f, var_1.x, 146f) * vec4<f32>(var_0.x, 1350f, var_1.x, var_1.x)), vec4<f32>(var_0.x, 1103f, -2095f, var_0.x)))), (((u_input.a | u_input.a) << (_wgslsmith_clamp_u32(347u, 0u, u_input.a) % 32u)) ^ u_input.a) | u_input.a, select(select(!(!vec3<bool>(global2[_wgslsmith_index_u32(u_input.a, 26u)], var_5.x, global2[_wgslsmith_index_u32(u_input.a, 26u)])), vec3<bool>(true, var_5.x, any(vec3<bool>(global2[_wgslsmith_index_u32(u_input.a, 26u)], true, true))), select(vec3<bool>(var_5.x, var_5.x, false), !vec3<bool>(true, var_5.x, true), func_2().d)), !(!vec3<bool>(global2[_wgslsmith_index_u32(u_input.a, 26u)], global2[_wgslsmith_index_u32(u_input.a, 26u)], var_5.x)), func_3().x & !(!global2[_wgslsmith_index_u32(98980u, 26u)])));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec2_u32(select(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, 91182u), vec2<u32>(var_6.c, 13906u)), ~vec2<u32>(2087u, var_6.a.x), global4[_wgslsmith_index_u32(u_input.a, 32u)] == 22188i) << (var_6.a.ww % vec2<u32>(32u)), min(firstTrailingBit(vec2<u32>(var_6.c, 69968u)), ~(vec2<u32>(var_6.a.x, 23200u) | var_6.a.xz)), vec2<u32>(~(~103184u), min(~4294967295u, var_6.a.x | var_6.a.x))), var_6.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, -1067f, -1374f, 637f) + var_6.b), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-502f, 856f, -344f, 509f))))) * var_6.b)));
}

