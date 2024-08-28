struct Struct_1 {
    a: i32,
    b: vec2<i32>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: vec4<bool>,
    b: u32,
    c: i32,
}

struct Struct_5 {
    a: Struct_3,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 17>;

var<private> global1: array<Struct_1, 14> = array<Struct_1, 14>(Struct_1(4681i, vec2<i32>(-1i, 39873i)), Struct_1(i32(-2147483648), vec2<i32>(7029i, i32(-2147483648))), Struct_1(24952i, vec2<i32>(-41967i, i32(-2147483648))), Struct_1(-65175i, vec2<i32>(-9350i, 22179i)), Struct_1(2147483647i, vec2<i32>(-1i, 20352i)), Struct_1(0i, vec2<i32>(-109138i, 0i)), Struct_1(-24926i, vec2<i32>(i32(-2147483648), 0i)), Struct_1(8154i, vec2<i32>(9310i, 53757i)), Struct_1(-10061i, vec2<i32>(20363i, -23585i)), Struct_1(47062i, vec2<i32>(0i, 47035i)), Struct_1(-21399i, vec2<i32>(29879i, -24531i)), Struct_1(-1i, vec2<i32>(2147483647i, -8282i)), Struct_1(i32(-2147483648), vec2<i32>(-17937i, 2147483647i)), Struct_1(1i, vec2<i32>(-14018i, -34717i)));

var<private> global2: f32 = 1094f;

var<private> global3: array<Struct_2, 29> = array<Struct_2, 29>(Struct_2(1793f), Struct_2(-286f), Struct_2(-360f), Struct_2(-846f), Struct_2(-1000f), Struct_2(2031f), Struct_2(-910f), Struct_2(1000f), Struct_2(696f), Struct_2(362f), Struct_2(723f), Struct_2(-1809f), Struct_2(1288f), Struct_2(204f), Struct_2(-400f), Struct_2(1203f), Struct_2(-928f), Struct_2(-1009f), Struct_2(-1138f), Struct_2(-782f), Struct_2(374f), Struct_2(-1000f), Struct_2(575f), Struct_2(2169f), Struct_2(579f), Struct_2(1000f), Struct_2(487f), Struct_2(-865f), Struct_2(682f));

var<private> global4: array<i32, 1>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: Struct_4, arg_1: bool, arg_2: vec2<i32>, arg_3: f32) -> u32 {
    global0 = array<u32, 17>();
    global1 = array<Struct_1, 14>();
    var var_0 = -402f;
    var var_1 = Struct_4(arg_0.a, u_input.b.x, arg_2.x);
    let var_2 = u_input.a;
    return 41888u >> (0u % 32u);
}

fn func_2(arg_0: Struct_3, arg_1: i32, arg_2: Struct_1) -> i32 {
    return global4[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(func_3(Struct_4(vec4<bool>(true, true, true, true), max(1u, arg_0.a), ~(-2147483647i)), true, arg_2.b, -559f), reverseBits(_wgslsmith_mod_u32(arg_0.a, ~1u)), 1u, abs(arg_0.a)), ~vec4<u32>(~min(u_input.b.x, 108482u), arg_0.a, 69839u ^ arg_0.a, max(~1u, _wgslsmith_add_u32(global0[_wgslsmith_index_u32(4294967295u, 17u)], global0[_wgslsmith_index_u32(4294967295u, 17u)])))), 1u)];
}

fn func_1() -> Struct_2 {
    let var_0 = select(vec4<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -903f)) < _wgslsmith_f_op_f32(trunc(1f)), all(vec4<bool>(false, true, false, false)) | select(false, all(vec4<bool>(true, true, true, false)), any(vec4<bool>(false, false, false, false))), firstTrailingBit(0i) <= -57531i, !(func_2(Struct_3(1u), u_input.d, global1[_wgslsmith_index_u32(u_input.c.x, 14u)]) >= (global4[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c.x, 17u)], 17u)], 1u)] << (0u % 32u)))), select(vec4<bool>(all(vec4<bool>(true, true, true, true)), true, all(vec3<bool>(true, false, false)), true), vec4<bool>((-17674i >> (u_input.b.x % 32u)) <= u_input.d, false, (global4[_wgslsmith_index_u32(0u, 1u)] >> (u_input.c.x % 32u)) <= (u_input.a.x << (u_input.b.x % 32u)), all(vec4<bool>(false, false, true, true))), vec4<bool>(any(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), false)), true, false, true)), select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), false), vec4<bool>(true, true, true, u_input.a.x != global4[_wgslsmith_index_u32(26824u, 1u)]), false), vec4<bool>(any(vec4<bool>(false, true, true, true)), true, false, true == all(vec3<bool>(true, false, false))), !vec4<bool>(true, all(vec4<bool>(true, false, false, false)), true, true)));
    let var_1 = Struct_3(_wgslsmith_sub_u32(7559u, ~firstTrailingBit(firstLeadingBit(u_input.b.x))));
    let var_2 = var_1.a;
    global1 = array<Struct_1, 14>();
    var var_3 = any(vec2<bool>(true, true)) || true;
    return Struct_2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(abs(197f))))))));
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: f32, arg_3: Struct_5) -> vec3<f32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-2243f, -312f) - vec2<f32>(arg_1.a, 1000f)) - vec2<f32>(-1253f, arg_1.a)), vec2<f32>(arg_2, arg_1.a))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2, arg_2)), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(arg_2, -923f)))))))));
    var var_1 = Struct_3(arg_3.a.a);
    global1 = array<Struct_1, 14>();
    let var_2 = !(!vec3<bool>(!any(vec2<bool>(true, true)), all(vec4<bool>(false, true, true, false)), true));
    var var_3 = _wgslsmith_div_f32(var_0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.a), _wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(arg_1.a)))))));
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(300f)) * _wgslsmith_f_op_f32(sign(302f))), var_0.x, _wgslsmith_f_op_f32(min(452f, 673f)))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0.x - -867f), _wgslsmith_f_op_f32(-arg_2))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.a - arg_1.a) - _wgslsmith_f_op_f32(trunc(-1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_2)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, arg_2, -670f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-790f * 1532f) + _wgslsmith_f_op_f32(ceil(-1175f))), _wgslsmith_f_op_f32(-645f + -716f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(525f - 1650f) * _wgslsmith_f_op_f32(f32(-1f) * -2018f)))) * _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(func_4(_wgslsmith_clamp_vec4_u32(vec4<u32>(76102u, u_input.b.x, 4294967295u, 0u), vec4<u32>(10708u, 1u, 47313u, 1u), vec4<u32>(7703u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 17u)], 17u)], 1846u, 0u)), func_1(), _wgslsmith_f_op_f32(min(677f, 835f)), Struct_5(Struct_3(1u), vec3<u32>(u_input.c.x, u_input.c.x, 44668u)))))))));
    var var_1 = vec4<u32>(0u, ~reverseBits(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~u_input.b.x, 17u)], 17u)]) >> (~(~(~9845u)) % 32u), ~global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(global0[_wgslsmith_index_u32(16995u, 17u)], u_input.b.x, 30236u, 4294967295u)) >> (min(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c.x, 17u)], 17u)], 17u)], 4294967295u, 56280u, u_input.c.x), vec4<u32>(95538u, 4294967295u, global0[_wgslsmith_index_u32(u_input.c.x, 17u)], u_input.c.x)) % vec4<u32>(32u)), ~countOneBits(vec4<u32>(1u, 29895u, global0[_wgslsmith_index_u32(u_input.b.x, 17u)], 49673u))), 17u)], global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, ~firstTrailingBit(global0[_wgslsmith_index_u32(89898u, 17u)])), ~vec2<u32>(17705u, u_input.c.x | u_input.c.x)), 17u)]);
    let var_2 = true;
    global3 = array<Struct_2, 29>();
    let var_3 = global4[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b.x, 17u)], 1u)] ^ u_input.a.x;
    var var_4 = Struct_3(var_1.x);
    var_1 = _wgslsmith_mod_vec4_u32(~(vec4<u32>(global0[_wgslsmith_index_u32(24264u << (var_1.x % 32u), 17u)], func_3(Struct_4(vec4<bool>(var_2, var_2, false, true), 1u, -31948i), var_2, u_input.a.xw, var_0.x), var_4.a ^ var_1.x, select(var_4.a, 28614u, var_2)) << (select(_wgslsmith_mult_vec4_u32(vec4<u32>(0u, u_input.c.x, u_input.b.x, global0[_wgslsmith_index_u32(4294967295u, 17u)]), vec4<u32>(59048u, 4294967295u, 4294967295u, u_input.c.x)), ~vec4<u32>(var_1.x, 1u, var_4.a, u_input.b.x), !vec4<bool>(var_2, false, var_2, var_2)) % vec4<u32>(32u))), ~vec4<u32>(min(4294967295u, 1u), ~1u, _wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(35870u, 17u)], global0[_wgslsmith_index_u32(4294967295u, 17u)], var_4.a) & global0[_wgslsmith_index_u32(u_input.c.x, 17u)], _wgslsmith_add_u32(global0[_wgslsmith_index_u32(var_1.x, 17u)], u_input.c.x) << (_wgslsmith_mult_u32(15876u, u_input.b.x) % 32u)));
    var var_5 = abs(firstLeadingBit(~(~(~u_input.c.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(1i, ~var_3), ~_wgslsmith_mult_u32(~var_1.x << (~var_1.x % 32u), var_4.a));
}

