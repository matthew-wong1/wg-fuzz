struct Struct_1 {
    a: bool,
    b: i32,
    c: vec2<bool>,
    d: bool,
}

struct Struct_2 {
    a: vec3<u32>,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec2<f32>,
    c: Struct_2,
}

struct Struct_4 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec2<f32>,
    d: vec4<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 2>;

var<private> global1: array<f32, 12>;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec3<i32>) -> vec3<u32> {
    var var_0 = Struct_3(~((~arg_0.x << (4294967295u % 32u)) & _wgslsmith_div_i32(~arg_0.x, _wgslsmith_mult_i32(arg_0.x, arg_0.x))), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(abs(11119u), 12u)]), 386f))), Struct_2(_wgslsmith_clamp_vec3_u32(min(~vec3<u32>(u_input.a, 4346u, u_input.a), firstLeadingBit(vec3<u32>(1u, 65675u, u_input.a))), ~abs(vec3<u32>(u_input.a, u_input.a, u_input.a)), reverseBits(vec3<u32>(u_input.a, u_input.a, 8885u))), all(vec4<bool>(true, any(vec3<bool>(false, true, true)), false, true)), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_clamp_u32(4294967295u, u_input.a & 0u, u_input.a), ~u_input.a), 2u)]));
    global0 = array<Struct_1, 2>();
    var_0 = Struct_3(abs(_wgslsmith_sub_i32(var_0.c.c.b, (i32(-1i) * -1i) & -var_0.a)), var_0.b, Struct_2(abs(~(~var_0.c.a)), !all(select(vec3<bool>(true, var_0.c.c.c.x, var_0.c.b), vec3<bool>(true, var_0.c.c.a, false), vec3<bool>(var_0.c.b, var_0.c.c.d, var_0.c.b))), var_0.c.c));
    let var_1 = 1i;
    var var_2 = Struct_3(-45541i, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(546f - -320f), 1000f)))), Struct_2(~(~vec3<u32>(686u, 4294967295u, var_0.c.a.x)), var_0.c.b, Struct_1(-1666f != _wgslsmith_f_op_f32(max(var_0.b.x, -510f)), ~1i, vec2<bool>(true, true), var_0.c.b)));
    return vec3<u32>(10240u, u_input.a >> (var_2.c.a.x % 32u), ~46992u);
}

fn func_2() -> f32 {
    var var_0 = Struct_2(abs(_wgslsmith_sub_vec3_u32(func_3(abs(vec3<i32>(48729i, 1i, 2652i))), _wgslsmith_sub_vec3_u32(~vec3<u32>(1u, 0u, u_input.a), ~vec3<u32>(u_input.a, u_input.a, 17330u)))), true, global0[_wgslsmith_index_u32(~(~u_input.a) ^ 35867u, 2u)]);
    var var_1 = Struct_2(~firstTrailingBit(select(max(vec3<u32>(38697u, 0u, u_input.a), vec3<u32>(u_input.a, 16475u, u_input.a)), vec3<u32>(var_0.a.x, u_input.a, 92441u), vec3<bool>(false, false, true))), !(var_0.b & var_0.b), Struct_1(var_0.b, _wgslsmith_mult_i32(-var_0.c.b, var_0.c.b), var_0.c.c, select(select(true, var_0.c.a || var_0.c.d, var_0.b), false, any(!vec4<bool>(var_0.b, var_0.b, var_0.c.d, true)))));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(264f, _wgslsmith_f_op_f32(1892f * 475f), -1324f) - _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(716f, global1[_wgslsmith_index_u32(36980u, 12u)], 184f), vec3<f32>(global1[_wgslsmith_index_u32(var_0.a.x, 12u)], global1[_wgslsmith_index_u32(var_0.a.x, 12u)], global1[_wgslsmith_index_u32(var_1.a.x, 12u)])), _wgslsmith_div_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(0u, 12u)], 489f, 469f), vec3<f32>(global1[_wgslsmith_index_u32(var_0.a.x, 12u)], global1[_wgslsmith_index_u32(33742u, 12u)], global1[_wgslsmith_index_u32(4294967295u, 12u)])))) + _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1667f, 1313f, -1000f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-229f, global1[_wgslsmith_index_u32(4294967295u, 12u)], global1[_wgslsmith_index_u32(1u, 12u)])))))));
    let var_3 = _wgslsmith_f_op_f32(f32(-1f) * -547f);
    let var_4 = _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.a.x, 1u) | reverseBits(vec2<u32>(var_0.a.x, 9106u)), ~(vec2<u32>(4294967295u, 18505u) ^ ~var_0.a.yy)) << (select(~_wgslsmith_sub_u32(var_1.a.x, 0u), u_input.a, select(any(!vec3<bool>(false, false, var_1.b)), var_0.c.d, var_0.a.x > max(39292u, var_1.a.x))) % 32u);
    return _wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(var_0.a.x >> (firstTrailingBit(var_0.a.x) % 32u), 12u)]));
}

fn func_1() -> Struct_1 {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(477f + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1693f - _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(35597u, 12u)]))))));
    var var_1 = 1u;
    var var_2 = Struct_3(-2147483647i | _wgslsmith_mult_i32(_wgslsmith_clamp_i32(max(31148i, -1i), 44462i >> (u_input.a % 32u), ~45172i), -16553i), _wgslsmith_f_op_vec2_f32(abs(var_0)), Struct_2(~_wgslsmith_sub_vec3_u32(vec3<u32>(19836u, u_input.a, u_input.a), vec3<u32>(1u, 28688u, 30758u)), all(vec4<bool>(true, true, true, true)), global0[_wgslsmith_index_u32(21709u, 2u)]));
    let var_3 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(4294967295u, 12u)], 670f, 636f, global1[_wgslsmith_index_u32(27311u, 12u)])), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(global1[_wgslsmith_index_u32(u_input.a, 12u)], var_2.b.x, 245f, -1091f), vec4<f32>(global1[_wgslsmith_index_u32(u_input.a, 12u)], var_2.b.x, var_0.x, var_0.x))), vec4<bool>(false, var_2.c.b, true, var_2.c.b))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0.x, var_2.b.x, 1379f, var_0.x))))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(1358f + var_0.x), -380f, -573f, _wgslsmith_f_op_f32(abs(-1958f)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global1[_wgslsmith_index_u32(3767u, 12u)], 604f, global1[_wgslsmith_index_u32(0u, 12u)], -1756f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_2.b.x, var_0.x, var_2.b.x))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(158f, 594f, 447f, global1[_wgslsmith_index_u32(1u, 12u)])))));
    var_2 = Struct_3(0i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-564f, 1267f) + var_2.b) + var_2.b)))), Struct_2(vec3<u32>(var_2.c.a.x << (0u % 32u), 23116u, ~1u), var_2.c.c.c.x, Struct_1(var_2.c.b, _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(0i, var_2.a), vec2<i32>(28542i, -47517i)), _wgslsmith_clamp_vec2_i32(vec2<i32>(var_2.a, 27544i), vec2<i32>(0i, var_2.a), vec2<i32>(var_2.c.c.b, -1i))), !(!vec2<bool>(true, var_2.c.c.a)), all(!var_2.c.c.c))));
    return Struct_1(true, var_2.c.c.b, var_2.c.c.c, true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(~(~vec3<u32>(u_input.a, 1u >> (u_input.a % 32u), 36832u << (1u % 32u))), false, func_1());
    let var_1 = _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a.x, 1u, 0u, u_input.a), vec4<u32>(var_0.a.x, 0u, 1u, 1u)), 12u)]), _wgslsmith_f_op_f32(ceil(1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -228f)))), vec3<f32>(1183f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(0u, 12u)]))), 1000f)));
    global0 = array<Struct_1, 2>();
    global0 = array<Struct_1, 2>();
    global0 = array<Struct_1, 2>();
    let var_2 = var_0.a.x;
    let var_3 = any(select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, var_0.c.d, false, false), any(vec3<bool>(var_0.c.c.x, false, false))), !select(vec4<bool>(var_0.b, var_0.c.d, true, true), vec4<bool>(var_0.b, false, var_0.c.d, var_0.c.c.x), false), _wgslsmith_div_u32(u_input.a, u_input.a) > _wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.a, 0u), vec3<u32>(u_input.a, 4294967295u, 7817u)))) | (!(!(1348f >= var_1.x)) | false);
    let x = u_input.a;
    s_output = StorageBuffer(select(_wgslsmith_div_vec3_i32(-vec3<i32>(var_0.c.b, 1i, var_0.c.b), vec3<i32>(2147483647i, 26180i, 2147483647i)), vec3<i32>(i32(-1i) * -31703i, -var_0.c.b, -24742i), var_0.c.d) ^ select(abs(vec3<i32>(var_0.c.b, -27594i, -2147483647i)), reverseBits(abs(vec3<i32>(var_0.c.b, var_0.c.b, var_0.c.b))), vec3<bool>(any(vec3<bool>(true, false, var_0.b)), true, var_0.b | var_3)), -var_0.c.b ^ min(-16812i, i32(-1i) * -var_0.c.b), vec2<f32>(_wgslsmith_f_op_f32(select(738f, var_1.x, true)), global1[_wgslsmith_index_u32(var_2, 12u)]), vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1270f), _wgslsmith_f_op_f32(var_1.x - -899f), false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1787f)))), _wgslsmith_f_op_f32(f32(-1f) * -391f), -1408f, 135f), _wgslsmith_f_op_f32(sign(-1156f)));
}

