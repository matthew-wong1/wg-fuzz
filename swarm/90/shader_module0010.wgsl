struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec2<bool>,
    d: f32,
    e: u32,
}

struct Struct_3 {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: f32,
    e: i32,
}

struct Struct_4 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 31>;

var<private> global1: array<Struct_1, 9>;

var<private> global2: vec2<u32>;

var<private> global3: array<bool, 14> = array<bool, 14>(false, true, true, true, true, false, true, false, false, false, false, true, false, true);

var<private> global4: Struct_4;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> vec3<u32> {
    var var_0 = u_input.c.x;
    let var_1 = 1432f;
    var_0 = (_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(abs(vec4<u32>(u_input.c.x, u_input.c.x, 4294967295u, 4294967295u)), vec4<u32>(0u, 0u, u_input.c.x, 4294967295u), vec4<u32>(global2.x, 1u, u_input.c.x, 0u) >> (vec4<u32>(global2.x, u_input.c.x, 1u, 102313u) % vec4<u32>(32u))), vec4<u32>(1u, ~u_input.c.x, 33951u, 13143u)) | ~1u) & (u_input.c.x ^ max(global2.x << ((0u >> (global2.x % 32u)) % 32u), (u_input.c.x << (44203u % 32u)) >> (43334u % 32u)));
    let var_2 = Struct_4(global4.a);
    global0 = array<Struct_3, 31>();
    return max(~_wgslsmith_add_vec3_u32(~vec3<u32>(0u, global2.x, 24911u) | (vec3<u32>(global2.x, global2.x, 0u) ^ vec3<u32>(u_input.c.x, 4294967295u, global2.x)), abs(vec3<u32>(23924u, 4294967295u, 0u))), ~vec3<u32>(~19475u >> (~4294967295u % 32u), u_input.c.x << ((u_input.c.x & global2.x) % 32u), min(1u, min(4294967295u, u_input.c.x))));
}

fn func_4(arg_0: Struct_4, arg_1: vec3<i32>) -> f32 {
    var var_0 = ~global4.a;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(575f - _wgslsmith_f_op_f32(ceil(-1156f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -375f)))))) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(1673f, 1748f))), _wgslsmith_f_op_f32(trunc(2272f)))), -300f)));
}

fn func_2(arg_0: u32, arg_1: vec3<u32>, arg_2: vec2<f32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-542f, arg_2.x) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-255f, _wgslsmith_f_op_f32(arg_2.x - -867f)) * _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-arg_2))))));
    let var_1 = !vec2<bool>(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(1u, global2.x), u_input.c), 14u)], any(vec3<bool>(global3[_wgslsmith_index_u32(min(global2.x, global2.x), 14u)], false, false)));
    var var_2 = Struct_1(0i);
    var var_3 = u_input.d;
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(round(-1422f))) + arg_2.x) - _wgslsmith_f_op_f32(func_4(Struct_4(2147483647i), -_wgslsmith_clamp_vec3_i32(var_3.yxw, var_3.wxy, vec3<i32>(u_input.a, u_input.b, var_3.x)) >> (abs(func_3()) % vec3<u32>(32u)))));
    return Struct_1(_wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(78343i, _wgslsmith_clamp_i32(0i, -2147483647i, global4.a), u_input.b)), var_3.wwz));
}

fn func_1() -> Struct_3 {
    var var_0 = u_input.c.x;
    global1 = array<Struct_1, 9>();
    global1 = array<Struct_1, 9>();
    var var_1 = !select(select(!(!vec4<bool>(false, global3[_wgslsmith_index_u32(35456u, 14u)], true, global3[_wgslsmith_index_u32(0u, 14u)])), !(!vec4<bool>(false, global3[_wgslsmith_index_u32(global2.x, 14u)], false, false)), select(select(vec4<bool>(global3[_wgslsmith_index_u32(29937u, 14u)], global3[_wgslsmith_index_u32(4294967295u, 14u)], global3[_wgslsmith_index_u32(26865u, 14u)], false), vec4<bool>(true, global3[_wgslsmith_index_u32(global2.x, 14u)], global3[_wgslsmith_index_u32(63355u, 14u)], false), vec4<bool>(global3[_wgslsmith_index_u32(4294967295u, 14u)], global3[_wgslsmith_index_u32(1u, 14u)], true, global3[_wgslsmith_index_u32(u_input.c.x, 14u)])), vec4<bool>(true, global3[_wgslsmith_index_u32(u_input.c.x, 14u)], true, true), select(false, global3[_wgslsmith_index_u32(u_input.c.x, 14u)], global3[_wgslsmith_index_u32(0u, 14u)]))), vec4<bool>(true, true, !any(vec3<bool>(global3[_wgslsmith_index_u32(global2.x, 14u)], global3[_wgslsmith_index_u32(4294967295u, 14u)], global3[_wgslsmith_index_u32(global2.x, 14u)])), true), true == global3[_wgslsmith_index_u32(1u, 14u)]);
    var var_2 = func_2(_wgslsmith_clamp_u32(11046u, 76964u, 64062u), _wgslsmith_div_vec3_u32(~(~vec3<u32>(1u, u_input.c.x, 0u)), vec3<u32>(u_input.c.x, ~2186u, firstTrailingBit(~47270u))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-529f, 827f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1000f, 582f)))))));
    return global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.c, vec2<u32>(global2.x, global2.x)), 31u)];
}

fn func_5(arg_0: i32, arg_1: u32, arg_2: Struct_3, arg_3: vec3<u32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.d, arg_2.d, -1814f, arg_2.d) - vec4<f32>(268f, 688f, 142f, arg_2.d)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, arg_2.d, arg_2.d, 240f) + vec4<f32>(893f, -1027f, -671f, -845f))) + vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1206f), _wgslsmith_f_op_f32(arg_2.d - -460f), arg_2.d, _wgslsmith_f_op_f32(arg_2.d * arg_2.d))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-823f, arg_2.d, arg_2.d, arg_2.d) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, arg_2.d, arg_2.d, arg_2.d)))))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(arg_2.d + -928f), arg_2.d, arg_2.d, _wgslsmith_f_op_f32(abs(arg_2.d))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.d, -730f, 1000f, 1000f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.d, -282f, arg_2.d, arg_2.d) - vec4<f32>(1496f, arg_2.d, 1818f, 2035f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-709f, arg_2.d, arg_2.d, arg_2.d))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.d, 908f, -560f, arg_2.d)))))))));
    var var_1 = !select(select(vec3<bool>(true, any(vec2<bool>(true, global3[_wgslsmith_index_u32(global2.x, 14u)])), false), vec3<bool>(all(vec4<bool>(global3[_wgslsmith_index_u32(102746u, 14u)], false, global3[_wgslsmith_index_u32(global2.x, 14u)], global3[_wgslsmith_index_u32(arg_1, 14u)])), global3[_wgslsmith_index_u32(~4294967295u, 14u)], any(vec2<bool>(global3[_wgslsmith_index_u32(arg_2.c.x, 14u)], false))), false), select(select(select(vec3<bool>(global3[_wgslsmith_index_u32(u_input.c.x, 14u)], true, false), vec3<bool>(global3[_wgslsmith_index_u32(1u, 14u)], true, global3[_wgslsmith_index_u32(u_input.c.x, 14u)]), global3[_wgslsmith_index_u32(arg_2.b, 14u)]), select(vec3<bool>(global3[_wgslsmith_index_u32(arg_2.c.x, 14u)], false, global3[_wgslsmith_index_u32(arg_3.x, 14u)]), vec3<bool>(true, global3[_wgslsmith_index_u32(global2.x, 14u)], global3[_wgslsmith_index_u32(4294967295u, 14u)]), vec3<bool>(false, true, global3[_wgslsmith_index_u32(global2.x, 14u)])), vec3<bool>(global3[_wgslsmith_index_u32(4294967295u, 14u)], true, true)), select(select(vec3<bool>(true, true, false), vec3<bool>(global3[_wgslsmith_index_u32(83150u, 14u)], true, true), vec3<bool>(true, false, global3[_wgslsmith_index_u32(arg_2.b, 14u)])), select(vec3<bool>(true, global3[_wgslsmith_index_u32(4294967295u, 14u)], global3[_wgslsmith_index_u32(u_input.c.x, 14u)]), vec3<bool>(true, true, global3[_wgslsmith_index_u32(1u, 14u)]), vec3<bool>(global3[_wgslsmith_index_u32(arg_1, 14u)], true, true)), vec3<bool>(true, global3[_wgslsmith_index_u32(arg_2.b, 14u)], global3[_wgslsmith_index_u32(1u, 14u)])), !select(vec3<bool>(false, true, false), vec3<bool>(global3[_wgslsmith_index_u32(arg_1, 14u)], global3[_wgslsmith_index_u32(arg_1, 14u)], true), vec3<bool>(global3[_wgslsmith_index_u32(global2.x, 14u)], global3[_wgslsmith_index_u32(22463u, 14u)], false))), global3[_wgslsmith_index_u32(~1u, 14u)]);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1000f)));
    global0 = array<Struct_3, 31>();
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0.x, 212f, -870f, arg_2.d), vec4<f32>(var_0.x, var_0.x, 1419f, arg_2.d))) + vec4<f32>(var_2, arg_2.d, var_0.x, 2080f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 1f, _wgslsmith_f_op_f32(f32(-1f) * -129f), _wgslsmith_f_op_f32(f32(-1f) * -2259f))), vec4<bool>(global3[_wgslsmith_index_u32(~(0u & u_input.c.x), 14u)], 110f != _wgslsmith_f_op_f32(func_4(Struct_4(-1i), u_input.d.yww)), false, all(!vec2<bool>(var_1.x, var_1.x))))));
    return func_2(_wgslsmith_add_u32(67906u, u_input.c.x), arg_2.c.ywx, _wgslsmith_f_op_vec2_f32(vec2<f32>(-450f, arg_2.d) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.wz) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-947f, 473f), var_0.zx)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(~firstLeadingBit(25430i), _wgslsmith_mod_u32(global2.x, min(27543u, u_input.c.x)), func_1(), vec3<u32>(~select(func_3().x, global2.x, true), _wgslsmith_dot_vec4_u32(abs(firstTrailingBit(vec4<u32>(4294967295u, u_input.c.x, u_input.c.x, 0u))), vec4<u32>(u_input.c.x, _wgslsmith_mult_u32(global2.x, global2.x), 0u, 0u)), abs(~global2.x ^ _wgslsmith_div_u32(global2.x, 4294967295u))));
    global2 = ~vec2<u32>(~(~u_input.c.x), u_input.c.x);
    let var_1 = ~global2.x << (~24259u % 32u);
    global1 = array<Struct_1, 9>();
    var_0 = global1[_wgslsmith_index_u32(~max(firstLeadingBit(_wgslsmith_mod_u32(_wgslsmith_sub_u32(0u, 0u), global2.x)), u_input.c.x), 9u)];
    var var_2 = -select(u_input.d.xx & vec2<i32>(24213i >> (var_1 % 32u), abs(var_0.a)), select(_wgslsmith_mult_vec2_i32(-vec2<i32>(0i, u_input.b), vec2<i32>(global4.a, u_input.a) | vec2<i32>(-2147483647i, 2147483647i)), firstLeadingBit(_wgslsmith_mult_vec2_i32(vec2<i32>(var_0.a, var_0.a), u_input.d.wy)), vec2<bool>(false, true)), all(!vec2<bool>(true, global3[_wgslsmith_index_u32(u_input.c.x, 14u)])));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -356f)))), vec3<u32>(abs(var_1), abs(var_1), ~u_input.c.x));
}

