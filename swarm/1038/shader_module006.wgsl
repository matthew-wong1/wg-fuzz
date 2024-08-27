struct Struct_1 {
    a: vec4<bool>,
    b: i32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec3<f32>,
    c: vec3<bool>,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: u32,
    b: f32,
    c: vec4<i32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 25>;

var<private> global1: array<vec2<u32>, 16> = array<vec2<u32>, 16>(vec2<u32>(0u, 41236u), vec2<u32>(13566u, 0u), vec2<u32>(4294967295u, 24956u), vec2<u32>(7063u, 1u), vec2<u32>(1u, 60671u), vec2<u32>(18864u, 65447u), vec2<u32>(1u, 1u), vec2<u32>(45033u, 5532u), vec2<u32>(1u, 0u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(0u, 89854u), vec2<u32>(42176u, 97757u), vec2<u32>(1u, 0u), vec2<u32>(55607u, 34902u), vec2<u32>(4294967295u, 116788u), vec2<u32>(17461u, 39129u));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
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

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<bool>, arg_1: vec2<i32>) -> f32 {
    global1 = array<vec2<u32>, 16>();
    var var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-988f, -145f) * -236f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -406f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(780f, 191f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1675f, 945f))) - vec2<f32>(993f, _wgslsmith_f_op_f32(-1000f - 281f))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1103f, -1000f, -1000f)), arg_0.yxw);
    let var_1 = select(vec2<bool>(true, false || arg_0.x), !vec2<bool>(false, all(select(arg_0, arg_0, arg_0.x))), false);
    global1 = array<vec2<u32>, 16>();
    let var_2 = _wgslsmith_f_op_f32(-var_0.a.x);
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.a.x))), -412f));
}

fn func_2() -> Struct_2 {
    global1 = array<vec2<u32>, 16>();
    global0 = array<bool, 25>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec4<bool>(any(!vec3<bool>(global0[_wgslsmith_index_u32(19818u, 25u)], global0[_wgslsmith_index_u32(1u, 25u)], false)), global0[_wgslsmith_index_u32(1u << (_wgslsmith_clamp_u32(1u, 4294967295u, 0u) % 32u), 25u)], false, !all(vec4<bool>(false, true, global0[_wgslsmith_index_u32(1u, 25u)], false))), firstTrailingBit(vec2<i32>(1i, _wgslsmith_mod_i32(u_input.a.x, 0i))))));
    let var_1 = ~u_input.a.x;
    global1 = array<vec2<u32>, 16>();
    return Struct_2(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, 147f)))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(736f, -666f))))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(vec3<f32>(var_0, -813f, 1633f), vec3<f32>(1000f, 842f, -1712f)))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-881f, -1184f, var_0)))))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, var_0, 205f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, var_0, 403f) * vec3<f32>(141f, var_0, -1000f)))))), vec3<bool>(true || (false && (true & global0[_wgslsmith_index_u32(28000u, 25u)])), global0[_wgslsmith_index_u32(~(~0u), 25u)], global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(0u, 30322u, firstLeadingBit(~46723u)), 25u)]));
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: Struct_2) -> Struct_3 {
    var var_0 = abs(abs(_wgslsmith_mult_vec3_i32(abs(u_input.a) << (reverseBits(vec3<u32>(1u, 45325u, 4294967295u)) % vec3<u32>(32u)), u_input.a)));
    global0 = array<bool, 25>();
    global0 = array<bool, 25>();
    var var_1 = 73270u;
    var var_2 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(select(firstTrailingBit(~vec4<u32>(4294967295u, 4294967295u, 24913u, 4294967295u)), vec4<u32>(countOneBits(9322u), 62688u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 0u, 1u, 17905u), vec4<u32>(1u, 86294u, 0u, 3600u)), ~10287u), vec4<bool>(global0[_wgslsmith_index_u32(max(1u, 6710u), 25u)], global0[_wgslsmith_index_u32(~15174u, 25u)], any(vec4<bool>(arg_2.c.x, arg_2.c.x, false, false)), arg_1.c.x)), vec4<u32>(~max(4294967295u, 29316u), ~_wgslsmith_add_u32(40291u, 6937u), ~0u, _wgslsmith_dot_vec3_u32(~vec3<u32>(0u, 52276u, 1u), vec3<u32>(36514u, 0u, 0u)))), 16u)] & vec2<u32>(_wgslsmith_mod_u32(~_wgslsmith_add_u32(4294967295u, 0u), ~_wgslsmith_dot_vec2_u32(global1[_wgslsmith_index_u32(11720u, 16u)], global1[_wgslsmith_index_u32(72527u, 16u)])), abs(1u));
    return Struct_3(1i);
}

fn func_1(arg_0: f32, arg_1: bool) -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, arg_0)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(867f, -1597f) + vec2<f32>(525f, -1262f)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(arg_0, 684f))), vec2<f32>(arg_0, 493f))))));
    let var_1 = func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, 1079f, var_0.x, -638f) - vec4<f32>(var_0.x, var_0.x, -315f, -257f)))) - _wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0.x, 215f, 1137f, arg_0), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-913f, -954f, -1000f, arg_0)))))), func_2(), Struct_2(vec2<f32>(var_0.x, arg_0), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, _wgslsmith_f_op_f32(select(1000f, arg_0, global0[_wgslsmith_index_u32(36914u, 25u)])), _wgslsmith_f_op_f32(f32(-1f) * -824f))), !(!func_2().c)));
    global0 = array<bool, 25>();
    let var_2 = _wgslsmith_add_u32(max(1u, reverseBits(1u)), 0u) ^ _wgslsmith_mult_u32(max(920u, min(min(18948u, 4294967295u), abs(45984u))), _wgslsmith_clamp_u32(max(4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(56007u, 23751u, 1u, 4294967295u), vec4<u32>(4294967295u, 18711u, 26868u, 60580u))), 4294967295u, _wgslsmith_sub_u32(countOneBits(17829u), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 3301u, 0u), vec3<u32>(60932u, 0u, 1u)))));
    var var_3 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(arg_0, _wgslsmith_f_op_f32(arg_0 + var_0.x), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + _wgslsmith_f_op_f32(var_0.x * var_0.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0.x * -316f), _wgslsmith_f_op_f32(-var_0.x))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, arg_0, var_0.x)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, 1467f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, 526f)) - _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_0.x, arg_0, 1256f), vec3<f32>(-515f, arg_0, arg_0))))))), vec3<bool>(!func_2().c.x, false, true));
    return select(select(vec4<bool>(arg_1 & false, var_3.c.x, true, select(0i, -2147483647i, global0[_wgslsmith_index_u32(var_2, 25u)]) < (7924i << (var_2 % 32u))), vec4<bool>(-10986i < (22077i << (var_2 % 32u)), !global0[_wgslsmith_index_u32(~4294967295u, 25u)], !arg_1, any(select(var_3.c.zx, var_3.c.zx, var_3.c.zy))), select(select(vec4<bool>(global0[_wgslsmith_index_u32(36156u, 25u)], true, arg_1, false), vec4<bool>(arg_1, global0[_wgslsmith_index_u32(32967u, 25u)], arg_1, true), false), vec4<bool>(func_2().c.x, true, !arg_1, true), !(!vec4<bool>(false, false, true, arg_1)))), select(vec4<bool>(any(!vec4<bool>(arg_1, var_3.c.x, true, true)), all(vec2<bool>(arg_1, false)), true, all(func_2().c.zy)), !select(select(vec4<bool>(global0[_wgslsmith_index_u32(14565u, 25u)], arg_1, false, true), vec4<bool>(global0[_wgslsmith_index_u32(var_2, 25u)], var_3.c.x, true, false), true), !vec4<bool>(var_3.c.x, true, var_3.c.x, true), vec4<bool>(false, var_3.c.x, true, false)), all(func_2().c.zy)), !(!select(select(vec4<bool>(global0[_wgslsmith_index_u32(var_2, 25u)], true, global0[_wgslsmith_index_u32(var_2, 25u)], false), vec4<bool>(arg_1, false, var_3.c.x, arg_1), vec4<bool>(global0[_wgslsmith_index_u32(47032u, 25u)], global0[_wgslsmith_index_u32(var_2, 25u)], true, false)), select(vec4<bool>(global0[_wgslsmith_index_u32(var_2, 25u)], true, true, global0[_wgslsmith_index_u32(26597u, 25u)]), vec4<bool>(false, false, global0[_wgslsmith_index_u32(var_2, 25u)], true), vec4<bool>(var_3.c.x, global0[_wgslsmith_index_u32(4294967295u, 25u)], false, global0[_wgslsmith_index_u32(var_2, 25u)])), select(vec4<bool>(var_3.c.x, true, true, false), vec4<bool>(global0[_wgslsmith_index_u32(var_2, 25u)], true, true, true), false))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1000f;
    let var_1 = select(vec4<u32>(1u, 1u, 1u, 1u), _wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u)), vec4<u32>(1u, 1u, 1u, 1u)), vec4<u32>(_wgslsmith_add_u32(1u, 8109u), ~1u, 1u, select(reverseBits(105876u), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 23832u, 4294967295u, 60490u), vec4<u32>(4294967295u, 7910u, 4294967295u, 1u)), -659f > var_0))), func_1(_wgslsmith_f_op_f32(f32(-1f) * -877f), global0[_wgslsmith_index_u32(1u, 25u)]));
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i & u_input.a.x, 27221u, 2147483647i, u_input.a.x, -_wgslsmith_clamp_i32(u_input.a.x, _wgslsmith_dot_vec2_i32(vec2<i32>(17985i, 0i), vec2<i32>(u_input.a.x, 1i)), u_input.a.x) >> (~(~var_1.x | var_1.x) % 32u));
}

