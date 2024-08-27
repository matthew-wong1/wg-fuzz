struct Struct_1 {
    a: u32,
    b: vec4<bool>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: vec4<i32>,
    d: vec4<bool>,
}

struct Struct_4 {
    a: vec3<bool>,
    b: vec3<bool>,
    c: i32,
    d: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec3<f32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 6> = array<vec2<u32>, 6>(vec2<u32>(1u, 28128u), vec2<u32>(1u, 0u), vec2<u32>(57550u, 32374u), vec2<u32>(0u, 0u), vec2<u32>(1u, 1u), vec2<u32>(40012u, 9025u));

var<private> global1: array<Struct_1, 21> = array<Struct_1, 21>(Struct_1(40294u, vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true)), Struct_1(81221u, vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false)), Struct_1(1u, vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false)), Struct_1(4294967295u, vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false)), Struct_1(0u, vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, true)), Struct_1(0u, vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true)), Struct_1(111325u, vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false)), Struct_1(24730u, vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false)), Struct_1(0u, vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false)), Struct_1(4294967295u, vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false)), Struct_1(1u, vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false)), Struct_1(17595u, vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true)), Struct_1(0u, vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, false)), Struct_1(1u, vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false)), Struct_1(4294967295u, vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true)), Struct_1(48070u, vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false)), Struct_1(1u, vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true)), Struct_1(67244u, vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true)), Struct_1(4294967295u, vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false)), Struct_1(4294967295u, vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false)), Struct_1(10240u, vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, false)));

var<private> global2: array<f32, 30> = array<f32, 30>(1195f, -220f, 1000f, -123f, 251f, 243f, 1000f, -1009f, 743f, -116f, -641f, -1137f, 839f, -184f, -1483f, -597f, 511f, 1183f, 538f, -1182f, 614f, -1273f, -474f, 1106f, 458f, -685f, 551f, -1000f, 1073f, 1165f);

var<private> global3: bool;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec3<f32>, arg_1: f32, arg_2: Struct_3) -> vec4<bool> {
    let var_0 = !vec4<bool>(arg_2.c.x <= 2147483647i, !arg_2.a.b.b.x && arg_2.a.b.c.x, true, true);
    let var_1 = Struct_4(arg_2.a.c.c.zww, select(!(!(!var_0.yxz)), vec3<bool>(arg_2.a.b.c.x && any(vec2<bool>(false, arg_2.a.b.b.x)), !arg_2.a.b.c.x, true), true), -abs(firstTrailingBit(-arg_2.c.x)), abs(arg_2.b) >> (abs(~1u) % 32u));
    var var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_0.x + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.a, 30u)]) - _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(1u, 30u)] + 1407f)), 597f))), arg_2.a.a));
    var var_3 = vec4<f32>(global2[_wgslsmith_index_u32(~22222u, 30u)], _wgslsmith_f_op_f32(select(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(18724u, arg_2.a.b.a), 30u)], global2[_wgslsmith_index_u32(~1u, 30u)], ~(-22216i) == ~(var_1.d | arg_2.b))), _wgslsmith_f_op_f32(trunc(-322f)), _wgslsmith_f_op_f32(f32(-1f) * -942f));
    let var_4 = ~u_input.a;
    return arg_2.a.b.b;
}

fn func_2(arg_0: vec4<f32>, arg_1: vec2<f32>) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-854f)));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(0u, 30u)] * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(739f, -1650f)))), -226f)));
    global0 = array<vec2<u32>, 6>();
    var var_1 = any(!(!func_3(_wgslsmith_div_vec3_f32(vec3<f32>(340f, -830f, global2[_wgslsmith_index_u32(22166u, 30u)]), vec3<f32>(arg_1.x, arg_0.x, 626f)), arg_0.x, Struct_3(Struct_2(-214f, Struct_1(u_input.a, vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, false)), global1[_wgslsmith_index_u32(u_input.a, 21u)]), -7874i, vec4<i32>(0i, 1i, 13990i, 0i), vec4<bool>(false, false, false, false)))));
    return _wgslsmith_dot_vec4_u32(~(~_wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.a, 32827u, u_input.a, 1u), ~vec4<u32>(0u, u_input.a, 32771u, u_input.a))), _wgslsmith_mult_vec4_u32(min(vec4<u32>(24774u, 0u, 16353u, u_input.a), vec4<u32>(24322u, 0u, 50959u, 15006u)), select(vec4<u32>(u_input.a, 4294967295u, 69723u, 1u), vec4<u32>(u_input.a, u_input.a, 23420u, 87556u), 16141u != u_input.a)) ^ ~abs(vec4<u32>(85342u, 11962u, u_input.a, 11537u) ^ vec4<u32>(4294967295u, u_input.a, 94237u, 0u)));
}

fn func_1(arg_0: bool, arg_1: vec3<bool>) -> StorageBuffer {
    global3 = ~_wgslsmith_mod_u32(4294967295u, u_input.a) >= ~(26942u >> (u_input.a % 32u));
    global1 = array<Struct_1, 21>();
    var var_0 = vec4<u32>(1u, u_input.a, ~9598u, ~_wgslsmith_add_u32(~func_2(vec4<f32>(global2[_wgslsmith_index_u32(u_input.a, 30u)], -1109f, -1000f, global2[_wgslsmith_index_u32(u_input.a, 30u)]), vec2<f32>(-327f, -285f)), u_input.a));
    var var_1 = true;
    var var_2 = abs(~min(~(~(-27860i)), max(0i, firstTrailingBit(0i))));
    return StorageBuffer(-vec2<i32>(1i, 1i), var_0.xyz, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-609f + -985f), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(4294967295u, 30u)] + -1000f), _wgslsmith_f_op_f32(max(-351f, 134f))), vec3<f32>(_wgslsmith_f_op_f32(select(global2[_wgslsmith_index_u32(var_0.x, 30u)], 530f, true)), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.a, 30u)]), global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.a, 40904u, 0u), 30u)]), any(vec2<bool>(true, arg_1.x)))))), _wgslsmith_mod_vec3_i32(vec3<i32>(~(-45986i), 1i, ~_wgslsmith_sub_i32(-1i, -24008i)), vec3<i32>(~2046i, _wgslsmith_dot_vec2_i32(vec2<i32>(32788i, 2147483647i), vec2<i32>(71793i, 339i)), reverseBits(1i)) << (min(vec3<u32>(u_input.a, 74465u, u_input.a), ~var_0.xww) % vec3<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(u_input.a <= ~u_input.a, select(vec3<bool>(true, true, true), vec3<bool>(true, all(vec4<bool>(true, false, true, true)), _wgslsmith_div_u32(42665u, 73278u) > ~u_input.a), true));
}

