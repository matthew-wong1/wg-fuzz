struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: u32,
    d: i32,
    e: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 14> = array<vec3<i32>, 14>(vec3<i32>(-1i, -1i, -74543i), vec3<i32>(-58615i, 1i, -1i), vec3<i32>(11792i, -14894i, 2147483647i), vec3<i32>(2042i, i32(-2147483648), -1i), vec3<i32>(1i, 2147483647i, 4153i), vec3<i32>(1i, -1i, i32(-2147483648)), vec3<i32>(0i, 38403i, i32(-2147483648)), vec3<i32>(5953i, 0i, 1i), vec3<i32>(0i, 2147483647i, 2147483647i), vec3<i32>(-1i, 8426i, 1359i), vec3<i32>(-60786i, 40168i, i32(-2147483648)), vec3<i32>(i32(-2147483648), 0i, -1i), vec3<i32>(0i, 2147483647i, 0i), vec3<i32>(1i, -59042i, 45962i));

var<private> global1: Struct_1 = Struct_1(229f);

var<private> global2: vec2<f32>;

var<private> global3: array<vec3<bool>, 6> = array<vec3<bool>, 6>(vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true));

var<private> global4: array<f32, 32>;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
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

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: i32, arg_1: vec4<bool>) -> u32 {
    var var_0 = 1773f;
    return ~_wgslsmith_dot_vec2_u32(select(vec2<u32>(u_input.a.x, u_input.a.x), countOneBits(u_input.a), vec2<bool>(arg_1.x, true)) ^ (u_input.a & (vec2<u32>(35458u, u_input.a.x) << (u_input.a % vec2<u32>(32u)))), _wgslsmith_mod_vec2_u32(~vec2<u32>(u_input.a.x, u_input.a.x), u_input.a));
}

fn func_2(arg_0: Struct_1, arg_1: u32, arg_2: i32) -> vec2<f32> {
    var var_0 = vec4<u32>(u_input.a.x, u_input.a.x | reverseBits(79857u), func_3(~select(arg_2, _wgslsmith_mod_i32(arg_2, arg_2), select(true, false, true)), vec4<bool>(!any(vec2<bool>(false, false)), !(arg_1 == u_input.a.x), true, all(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false))))), _wgslsmith_add_u32(~arg_1, arg_1));
    global1 = Struct_1(_wgslsmith_f_op_f32(659f - _wgslsmith_f_op_f32(-467f - 1000f)));
    global2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a, 658f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a, global4[_wgslsmith_index_u32(arg_1, 32u)]))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global4[_wgslsmith_index_u32(var_0.x, 32u)], 200f))))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1355f, 1000f))))) * _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(global4[_wgslsmith_index_u32(53601u & u_input.a.x, 32u)], -340f) - vec2<f32>(arg_0.a, _wgslsmith_f_op_f32(-1803f + arg_0.a))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(305f, global2.x) + vec2<f32>(-1675f, -1446f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1000f, -240f))))))));
    let var_1 = 50565u;
    var_0 = vec4<u32>(_wgslsmith_dot_vec3_u32(~(~reverseBits(var_0.zyx)), ~(~vec3<u32>(var_1, 4294967295u, 1u))), _wgslsmith_mult_u32(firstLeadingBit(~arg_1), 0u), 32691u, 4294967295u);
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(133f, 1036f)), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(718f, 1201f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1067f, -390f) + vec2<f32>(-154f, arg_0.a)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-350f, -1004f)))))));
}

fn func_1() -> bool {
    global2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_2(Struct_1(-657f), ~(u_input.a.x >> (u_input.a.x % 32u)), firstTrailingBit(_wgslsmith_div_i32(31101i, 7698i))))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1054f, global4[_wgslsmith_index_u32(u_input.a.x, 32u)]))) + _wgslsmith_f_op_vec2_f32(func_2(Struct_1(567f), u_input.a.x, 0i))) * vec2<f32>(_wgslsmith_div_f32(global1.a, _wgslsmith_f_op_f32(f32(-1f) * -1090f)), 882f)));
    global1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(288f))));
    global0 = array<vec3<i32>, 14>();
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1035f * 345f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(u_input.a.x, 32u)])))), 2811f, global2.x, _wgslsmith_f_op_f32(-153f - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(global2.x, global4[_wgslsmith_index_u32(u_input.a.x & 66197u, 32u)]))))));
    global4 = array<f32, 32>();
    return any(select(!select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, false)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), true))) && any(vec3<bool>(true & any(vec4<bool>(false, true, true, true)), true, !all(vec4<bool>(false, false, false, true))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<bool>(!all(!select(vec2<bool>(true, true), vec2<bool>(true, true), false)), reverseBits(0u) >= min(~u_input.a.x, ~54813u), !(func_1() & (_wgslsmith_sub_u32(u_input.a.x, 15556u) <= min(4294967295u, 80364u))), any(!(!select(vec2<bool>(true, false), vec2<bool>(false, true), false))));
    global3 = array<vec3<bool>, 6>();
    global0 = array<vec3<i32>, 14>();
    var var_1 = Struct_1(global1.a);
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -135f) * 1000f);
    global2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-300f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-492f * -1032f), _wgslsmith_f_op_f32(sign(-457f))))));
    var var_3 = u_input.a.x;
    global0 = array<vec3<i32>, 14>();
    global0 = array<vec3<i32>, 14>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(~_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(-2147483647i, -27453i), vec2<i32>(-7208i, 0i), vec2<i32>(-1i, -1i)), -vec2<i32>(-1i, -2147483647i)), _wgslsmith_sub_i32(0i, _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, 45053i), vec2<i32>(1i, -1i))) >> (abs(~39920u) % 32u)), _wgslsmith_mod_u32(u_input.a.x, abs(max(1u, u_input.a.x) | _wgslsmith_mod_u32(u_input.a.x, 1u))), ~_wgslsmith_clamp_vec4_i32(vec4<i32>(1i, -19497i, -18980i, -2147483647i), vec4<i32>(i32(-1i) * -1i, reverseBits(15020i), -2147483647i, ~1058i), firstLeadingBit(-vec4<i32>(18658i, -2147483647i, -1i, 31694i))));
}

