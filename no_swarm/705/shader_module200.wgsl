struct Struct_1 {
    a: f32,
    b: f32,
    c: u32,
}

struct Struct_2 {
    a: bool,
    b: u32,
    c: f32,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
    d: vec2<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 2> = array<u32, 2>(4294967295u, 28927u);

var<private> global1: array<vec4<u32>, 15>;

var<private> global2: vec4<f32>;

var<private> global3: array<i32, 14> = array<i32, 14>(11702i, i32(-2147483648), -45604i, -24045i, -12364i, 65173i, -1i, i32(-2147483648), -8076i, -1i, i32(-2147483648), -3801i, 51020i, -13187i);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec2<u32>) -> i32 {
    global1 = array<vec4<u32>, 15>();
    var var_0 = global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(1u, arg_1.b, ~4294967295u), (firstTrailingBit(u_input.b.wxz) | vec3<u32>(arg_0.c, 45109u, 0u)) | ~u_input.b.yxx), u_input.a), 14u)];
    global1 = array<vec4<u32>, 15>();
    global0 = array<u32, 2>();
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(global2.wzz, global2.wxx)), _wgslsmith_f_op_vec3_f32(exp2(global2.zzz)), arg_1.a))))));
    return min(global3[_wgslsmith_index_u32(max(10692u, global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(arg_2.x, firstTrailingBit(arg_2.x)) | arg_0.c, 2u)]), 14u)], -81511i);
}

fn func_2(arg_0: Struct_2, arg_1: Struct_2, arg_2: f32, arg_3: i32) -> u32 {
    var var_0 = arg_1;
    global3 = array<i32, 14>();
    let var_1 = Struct_2(arg_1.a, ~_wgslsmith_div_u32(_wgslsmith_add_u32(abs(global0[_wgslsmith_index_u32(var_0.b, 2u)]), _wgslsmith_sub_u32(var_0.b, 0u)), reverseBits(~9722u)), 896f);
    global2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(547f, arg_0.c))), -1311f, _wgslsmith_f_op_f32(step(1497f, _wgslsmith_div_f32(arg_0.c, _wgslsmith_f_op_f32(235f - -415f)))), -263f) + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_2, arg_1.c, arg_0.c, var_1.c))))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, -1126f, -1546f, -311f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-618f - var_0.c), _wgslsmith_f_op_f32(select(422f, arg_1.c, var_0.a)), _wgslsmith_f_op_f32(f32(-1f) * -679f), _wgslsmith_f_op_f32(arg_1.c - var_0.c))))));
    let var_2 = vec4<i32>(u_input.d, ~1i, _wgslsmith_sub_i32(~_wgslsmith_dot_vec4_i32(vec4<i32>(-751i, 64970i, u_input.d, -16715i), vec4<i32>(u_input.d, 11057i, -24217i, u_input.d)), _wgslsmith_dot_vec4_i32(abs(vec4<i32>(56130i, -1i, arg_3, arg_3)), vec4<i32>(1i, -6336i, arg_3, global3[_wgslsmith_index_u32(arg_0.b, 14u)]) | vec4<i32>(global3[_wgslsmith_index_u32(arg_0.b, 14u)], 40860i, u_input.d, global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b.x, 2u)], 2u)], 14u)]))), 10149i) ^ (vec4<i32>(func_3(Struct_1(-756f, 1000f, var_1.b), arg_1, firstLeadingBit(u_input.a.xx)), u_input.d, arg_3, arg_3) | max(vec4<i32>(-1i, u_input.d >> (var_0.b % 32u), -75655i, _wgslsmith_add_i32(-53723i, arg_3)), vec4<i32>(_wgslsmith_add_i32(u_input.d, arg_3), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d, 0i), vec2<i32>(-13547i, global3[_wgslsmith_index_u32(16869u, 14u)])), arg_3 ^ global3[_wgslsmith_index_u32(0u, 14u)], global3[_wgslsmith_index_u32(firstTrailingBit(37729u), 14u)])));
    return ~countOneBits(arg_0.b);
}

fn func_1(arg_0: Struct_1, arg_1: u32) -> Struct_1 {
    let var_0 = -(~global3[_wgslsmith_index_u32(4294967295u, 14u)]);
    global0 = array<u32, 2>();
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1000f - arg_0.a), _wgslsmith_f_op_f32(245f - _wgslsmith_f_op_f32(round(global2.x))), false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(-424f, arg_0.b))))))), _wgslsmith_add_u32(~reverseBits(func_2(Struct_2(false, 42016u, arg_0.a), Struct_2(true, 22893u, arg_0.a), arg_0.a, 2147483647i)), 13182u));
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: vec4<bool>) -> u32 {
    let var_0 = 626f;
    let var_1 = Struct_3(Struct_1(906f, _wgslsmith_f_op_f32(-func_1(Struct_1(1234f, var_0, global0[_wgslsmith_index_u32(60531u, 2u)]), global0[_wgslsmith_index_u32(arg_1.c, 2u)] >> (56018u % 32u)).b), arg_1.c));
    global2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2004f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(422f)) + _wgslsmith_f_op_f32(f32(-1f) * -1429f)))), -529f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -591f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -888f), arg_0)))));
    var var_2 = global2.yzw;
    global0 = array<u32, 2>();
    return global0[_wgslsmith_index_u32(38494u, 2u)];
}

fn func_5(arg_0: i32, arg_1: Struct_1, arg_2: u32, arg_3: vec2<u32>) -> Struct_1 {
    let var_0 = _wgslsmith_mod_i32(max(arg_0, _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(arg_0, -2147483647i), vec2<i32>(arg_0, -23396i) << (vec2<u32>(85563u, 4294967295u) % vec2<u32>(32u)), -vec2<i32>(u_input.d, -5981i)), firstLeadingBit(select(vec2<i32>(-2147483647i, u_input.d), vec2<i32>(47228i, 1617i), false)))), abs(-2147483647i));
    global0 = array<u32, 2>();
    let var_1 = firstTrailingBit(u_input.b.x ^ _wgslsmith_dot_vec4_u32(~vec4<u32>(0u, arg_2, 0u, 4294967295u), u_input.b));
    global1 = array<vec4<u32>, 15>();
    var var_2 = func_1(func_1(arg_1, ~_wgslsmith_add_u32(global0[_wgslsmith_index_u32(21040u, 2u)] ^ 1u, ~arg_3.x)), 1u);
    return Struct_1(-1463f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(301f - _wgslsmith_f_op_f32(select(var_2.a, 1277f, false)))), global2.x), var_2.c & var_1);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!(!(!select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false)))));
    global3 = array<i32, 14>();
    var var_1 = func_5(global3[_wgslsmith_index_u32(~(~39315u) ^ global0[_wgslsmith_index_u32(func_4(global2.x, func_1(Struct_1(-363f, -471f, 1u), 50691u), !vec4<bool>(var_0.x, var_0.x, false, true)), 2u)], 14u)] | reverseBits(28973i & global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(69475u, 4804u, u_input.a.x), 14u)]), func_1(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -436f), 1139f, ~(~0u)), u_input.b.x), 4294967295u, firstTrailingBit(u_input.a.zy));
    global0 = array<u32, 2>();
    var var_2 = func_1(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(752f + var_1.a) * _wgslsmith_f_op_f32(-2214f - _wgslsmith_f_op_f32(f32(-1f) * -1550f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global2.x, _wgslsmith_f_op_f32(var_1.b + global2.x)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1101f), var_1.b)), u_input.b.x), abs(34261u) & global0[_wgslsmith_index_u32(min(abs(~var_1.c), _wgslsmith_mult_u32(0u, 1u >> (1u % 32u))), 2u)]);
    var var_3 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(195f, global2.x) + _wgslsmith_f_op_f32(-777f + _wgslsmith_f_op_f32(f32(-1f) * -1132f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1045f)) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(159f, global2.x) - _wgslsmith_f_op_f32(f32(-1f) * -387f)))), func_1(func_1(func_5(-19763i, Struct_1(551f, var_2.b, var_1.c), var_2.c, select(u_input.a.xy, u_input.b.zx, var_0.x)), ~var_1.c), ~global0[_wgslsmith_index_u32(abs(0u), 2u)]).c);
    let x = u_input.a;
    s_output = StorageBuffer(1i, var_3.c, ~(abs(vec2<i32>(18045i, 33514i)) | _wgslsmith_div_vec2_i32(-vec2<i32>(2147483647i, global3[_wgslsmith_index_u32(18223u, 14u)]), abs(vec2<i32>(7247i, u_input.d)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 672f)), _wgslsmith_mult_u32(var_1.c ^ var_1.c, ~_wgslsmith_mod_u32(u_input.a.x & 1u, _wgslsmith_mult_u32(47341u, 26380u))));
}

