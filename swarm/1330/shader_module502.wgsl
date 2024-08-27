struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: f32,
    c: Struct_1,
    d: vec4<f32>,
    e: bool,
}

struct Struct_5 {
    a: Struct_1,
    b: u32,
    c: Struct_4,
    d: vec3<u32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec2<u32>,
    d: vec2<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 14> = array<vec2<i32>, 14>(vec2<i32>(0i, 21239i), vec2<i32>(5430i, 2147483647i), vec2<i32>(7338i, 9867i), vec2<i32>(2147483647i, -43853i), vec2<i32>(1i, i32(-2147483648)), vec2<i32>(2147483647i, -1i), vec2<i32>(-1i, -27988i), vec2<i32>(-49762i, i32(-2147483648)), vec2<i32>(-1i, 31613i), vec2<i32>(0i, -34465i), vec2<i32>(-46688i, 8927i), vec2<i32>(-15651i, -1351i), vec2<i32>(18027i, 1i), vec2<i32>(1i, -85559i));

var<private> global1: array<vec2<i32>, 31>;

var<private> global2: array<Struct_3, 31> = array<Struct_3, 31>(Struct_3(Struct_1(174f)), Struct_3(Struct_1(609f)), Struct_3(Struct_1(-573f)), Struct_3(Struct_1(-1402f)), Struct_3(Struct_1(-1146f)), Struct_3(Struct_1(231f)), Struct_3(Struct_1(1000f)), Struct_3(Struct_1(-224f)), Struct_3(Struct_1(1144f)), Struct_3(Struct_1(621f)), Struct_3(Struct_1(165f)), Struct_3(Struct_1(-737f)), Struct_3(Struct_1(-1251f)), Struct_3(Struct_1(2134f)), Struct_3(Struct_1(-1309f)), Struct_3(Struct_1(-997f)), Struct_3(Struct_1(-785f)), Struct_3(Struct_1(-601f)), Struct_3(Struct_1(420f)), Struct_3(Struct_1(1359f)), Struct_3(Struct_1(887f)), Struct_3(Struct_1(1664f)), Struct_3(Struct_1(850f)), Struct_3(Struct_1(173f)), Struct_3(Struct_1(1147f)), Struct_3(Struct_1(-1321f)), Struct_3(Struct_1(1065f)), Struct_3(Struct_1(411f)), Struct_3(Struct_1(1053f)), Struct_3(Struct_1(1760f)), Struct_3(Struct_1(1312f)));

var<private> global3: u32;

var<private> global4: Struct_1 = Struct_1(1320f);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: bool, arg_1: bool, arg_2: vec3<u32>, arg_3: vec2<i32>) -> f32 {
    global0 = array<vec2<i32>, 14>();
    var var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(global4.a)), global4.a));
    global3 = 4294967295u;
    global4 = Struct_1(958f);
    var var_1 = Struct_4(firstLeadingBit(firstLeadingBit(_wgslsmith_sub_i32(2147483647i, 1i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(global4.a)))) - 2173f)), Struct_1(global4.a), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(487f, -603f, global4.a, global4.a) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.a, global4.a, global4.a, 1462f))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1168f, global4.a, 1646f, 173f), vec4<f32>(1000f, global4.a, 1251f, 1145f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.a, -741f, -1000f, 905f)))), select(!vec4<bool>(arg_1, true, arg_0, arg_0), vec4<bool>(arg_0, arg_0, arg_0, arg_1), arg_1)))), false);
    return -515f;
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_4, arg_2: u32) -> u32 {
    var var_0 = Struct_1(_wgslsmith_div_f32(1396f, _wgslsmith_f_op_f32(-global4.a)));
    let var_1 = Struct_5(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1120f) + _wgslsmith_f_op_f32(f32(-1f) * -1470f)))), arg_2, arg_1, ~(u_input.b.wxw ^ vec3<u32>(2494u, 1u, u_input.d.x)) & vec3<u32>(_wgslsmith_mod_u32(1u, ~u_input.b.x), 32424u, ~(~arg_2)), Struct_1(764f));
    global1 = array<vec2<i32>, 31>();
    var var_2 = -1000f;
    global2 = array<Struct_3, 31>();
    return 19297u;
}

fn func_2(arg_0: f32) -> Struct_1 {
    var var_0 = ~vec4<u32>(u_input.b.x, _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(56583u, u_input.c.x, u_input.d.x), 1u, ~4294967295u) ^ u_input.d.x, _wgslsmith_add_u32(~_wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(4294967295u, 1777u, u_input.a, 16261u)), 0u >> (_wgslsmith_mult_u32(0u, u_input.d.x) % 32u)), abs(u_input.a));
    global1 = array<vec2<i32>, 31>();
    global1 = array<vec2<i32>, 31>();
    let var_1 = Struct_1(-1589f);
    var_0 = min(vec4<u32>(func_4(vec4<f32>(_wgslsmith_f_op_f32(func_3(false, false, u_input.b.yxx, vec2<i32>(38067i, 1i))), 1f, -1739f, _wgslsmith_f_op_f32(-1383f * 351f)), Struct_4(-2147483647i, _wgslsmith_f_op_f32(func_3(true, true, vec3<u32>(78668u, var_0.x, u_input.b.x), global1[_wgslsmith_index_u32(1u, 31u)])), var_1, _wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.a, -314f, global4.a, 655f)), true), ~8868u), _wgslsmith_mult_u32(~firstTrailingBit(var_0.x), ~countOneBits(u_input.d.x)), 62546u, ~firstTrailingBit(4294967295u & u_input.b.x)), vec4<u32>(1u, firstLeadingBit(13052u), u_input.a << (~countOneBits(u_input.d.x) % 32u), ~_wgslsmith_div_u32(u_input.b.x, var_0.x)));
    return var_1;
}

fn func_5(arg_0: Struct_2, arg_1: i32, arg_2: Struct_2, arg_3: u32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(-func_2(arg_0.a.a).a);
    var var_1 = Struct_5(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -156f)), ~u_input.e.x, Struct_4(arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-194f))), func_2(-973f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-879f, -646f, arg_2.a.a, 1013f))))), false), ~u_input.e, arg_0.a);
    return Struct_1(var_1.e.a);
}

fn func_1(arg_0: vec2<u32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(sign(-431f));
    var var_1 = func_5(Struct_2(func_2(-216f)), 50561i, Struct_2(func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) * global4.a))), 35351u);
    let var_2 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(-1396f)), _wgslsmith_div_f32(-802f, 1305f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global4.a, var_1.a))), var_0, _wgslsmith_f_op_f32(sign(global4.a)), 755f), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, _wgslsmith_f_op_f32(-var_0), var_0, _wgslsmith_f_op_f32(floor(165f)))))));
    let var_3 = vec2<bool>(false, all(!vec4<bool>(any(vec2<bool>(false, false)), false, true, select(true, false, true))));
    return func_2(-1698f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -1408f;
    let var_1 = Struct_3(func_1(_wgslsmith_sub_vec2_u32(u_input.b.yy >> (vec2<u32>(33630u, u_input.d.x) % vec2<u32>(32u)), ~(vec2<u32>(13752u, 0u) | vec2<u32>(20993u, u_input.b.x)))));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1379f, 1632f, true)) * 603f), -1429f) * 306f) - _wgslsmith_f_op_f32(func_3(true, !(all(vec2<bool>(true, false)) | true), vec3<u32>(u_input.b.x, reverseBits(u_input.a), firstLeadingBit(~u_input.a)), vec2<i32>(_wgslsmith_clamp_i32(1i, 2147483647i, 7744i) << (min(75774u, 0u) % 32u), -1i))));
    global1 = array<vec2<i32>, 31>();
    global3 = 12499u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_u32(reverseBits(u_input.d.x), 63952u));
}

