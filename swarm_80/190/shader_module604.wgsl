struct Struct_1 {
    a: f32,
    b: vec2<i32>,
    c: vec3<u32>,
    d: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<u32>,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: vec3<u32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 0i;

var<private> global1: array<Struct_3, 7> = array<Struct_3, 7>(Struct_3(vec3<bool>(false, false, true)), Struct_3(vec3<bool>(true, true, false)), Struct_3(vec3<bool>(true, true, false)), Struct_3(vec3<bool>(true, false, true)), Struct_3(vec3<bool>(false, false, true)), Struct_3(vec3<bool>(false, true, false)), Struct_3(vec3<bool>(false, false, true)));

var<private> global2: array<Struct_2, 6> = array<Struct_2, 6>(Struct_2(Struct_1(-802f, vec2<i32>(2147483647i, -33280i), vec3<u32>(6314u, 0u, 27760u), vec4<f32>(-683f, -1000f, 469f, 1010f)), Struct_1(-1163f, vec2<i32>(0i, i32(-2147483648)), vec3<u32>(20027u, 4294967295u, 4294967295u), vec4<f32>(-104f, -928f, 1279f, 1095f)), vec4<u32>(105103u, 4294967295u, 29774u, 4294967295u)), Struct_2(Struct_1(-705f, vec2<i32>(12471i, 127i), vec3<u32>(4294967295u, 36050u, 75699u), vec4<f32>(525f, -176f, -480f, 268f)), Struct_1(900f, vec2<i32>(25416i, -29939i), vec3<u32>(28953u, 4294967295u, 0u), vec4<f32>(-540f, -1194f, 1000f, 539f)), vec4<u32>(0u, 6861u, 1u, 4294967295u)), Struct_2(Struct_1(-1342f, vec2<i32>(14711i, -52451i), vec3<u32>(1u, 55179u, 4294967295u), vec4<f32>(-338f, 1550f, 991f, -185f)), Struct_1(3541f, vec2<i32>(55288i, 0i), vec3<u32>(4294967295u, 0u, 0u), vec4<f32>(335f, 387f, -941f, -320f)), vec4<u32>(39125u, 39437u, 76313u, 37274u)), Struct_2(Struct_1(-1000f, vec2<i32>(42508i, -29466i), vec3<u32>(1u, 1u, 17463u), vec4<f32>(-1235f, -1384f, 374f, 267f)), Struct_1(-165f, vec2<i32>(32874i, i32(-2147483648)), vec3<u32>(45316u, 5652u, 0u), vec4<f32>(-1760f, 942f, -822f, 1177f)), vec4<u32>(4294967295u, 25277u, 41185u, 4294967295u)), Struct_2(Struct_1(-864f, vec2<i32>(i32(-2147483648), 8670i), vec3<u32>(21683u, 30762u, 1u), vec4<f32>(-958f, 745f, -450f, -921f)), Struct_1(-1000f, vec2<i32>(-12066i, -1i), vec3<u32>(1u, 14965u, 42263u), vec4<f32>(-1884f, -208f, 2132f, 1239f)), vec4<u32>(4294967295u, 12315u, 1u, 0u)), Struct_2(Struct_1(1080f, vec2<i32>(-19171i, 72998i), vec3<u32>(19281u, 0u, 16873u), vec4<f32>(-105f, 1321f, -224f, 843f)), Struct_1(-508f, vec2<i32>(1i, -46394i), vec3<u32>(1u, 13629u, 1u), vec4<f32>(2520f, -197f, -1373f, 1000f)), vec4<u32>(4294967295u, 4638u, 1u, 0u)));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: vec3<bool>) -> vec3<f32> {
    global1 = array<Struct_3, 7>();
    global0 = _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, u_input.c, u_input.a.x, select(_wgslsmith_mult_i32(-u_input.a.x, -u_input.c), u_input.d.x, _wgslsmith_clamp_u32(u_input.b, u_input.b, 4294967295u) >= u_input.b)), u_input.d);
    let var_0 = Struct_3(vec3<bool>(true, true, arg_0.x != false));
    global2 = array<Struct_2, 6>();
    global0 = _wgslsmith_clamp_i32(abs(7417i), u_input.c, -25449i);
    return _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-775f, -360f, 322f)))) * _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(199f, -855f, -210f))))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_vec3_f32(vec3<f32>(900f, -1351f, 1172f) - vec3<f32>(1474f, 276f, -891f))))))));
}

fn func_2(arg_0: u32) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec3_f32(func_3(vec3<bool>(true, true, true)));
    let var_1 = abs(0i >> (arg_0 % 32u));
    return global2[_wgslsmith_index_u32(23547u, 6u)];
}

fn func_1(arg_0: Struct_3, arg_1: vec2<f32>) -> vec3<u32> {
    var var_0 = !select(vec4<bool>(_wgslsmith_f_op_f32(max(-935f, arg_1.x)) < arg_1.x, true, false, arg_0.a.x), !vec4<bool>(!arg_0.a.x, select(arg_0.a.x, arg_0.a.x, true), false, arg_0.a.x), any(arg_0.a));
    let var_1 = func_2(u_input.b);
    let var_2 = vec3<f32>(961f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(813f + -428f))), var_1.a.d.x);
    global0 = -20845i;
    let var_3 = Struct_3(!vec3<bool>(true, true, var_2.x >= _wgslsmith_f_op_f32(-var_2.x)));
    return vec3<u32>(var_1.a.c.x, reverseBits(68823u), _wgslsmith_dot_vec2_u32(max(_wgslsmith_div_vec2_u32(vec2<u32>(0u, u_input.b), var_1.a.c.zy), var_1.b.c.xy >> (vec2<u32>(4294967295u, 4294967295u) % vec2<u32>(32u))) & (var_1.b.c.zy & ~vec2<u32>(4294967295u, u_input.b)), vec2<u32>(~u_input.b, _wgslsmith_clamp_u32(0u, ~var_1.b.c.x, 0u & u_input.b))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstLeadingBit(firstTrailingBit(abs(func_1(Struct_3(vec3<bool>(false, false, false)), vec2<f32>(-103f, 1000f)))) & vec3<u32>(~abs(1u), ~5769u, ~u_input.b));
    global0 = -(1665i >> (~reverseBits(var_0.x) % 32u));
    global2 = array<Struct_2, 6>();
    let var_1 = any(vec4<bool>(false, false, false, false));
    var var_2 = reverseBits(~select(~(vec4<u32>(var_0.x, u_input.b, 19197u, var_0.x) << (vec4<u32>(var_0.x, var_0.x, 1u, var_0.x) % vec4<u32>(32u))), vec4<u32>(_wgslsmith_mult_u32(var_0.x, u_input.b), 0u, _wgslsmith_sub_u32(49373u, 1u), _wgslsmith_div_u32(var_0.x, var_0.x)), !select(vec4<bool>(var_1, var_1, true, var_1), vec4<bool>(var_1, var_1, var_1, true), vec4<bool>(var_1, true, var_1, false))));
    var_0 = ~min(abs(select(abs(var_2.yyx), vec3<u32>(0u, var_0.x, var_0.x), var_1)), var_2.yyx ^ ~(vec3<u32>(u_input.b, var_0.x, var_0.x) << (vec3<u32>(var_0.x, 31365u, 0u) % vec3<u32>(32u))));
    global2 = array<Struct_2, 6>();
    var var_3 = vec2<u32>(~var_2.x, abs(~10086u)) << (abs(vec2<u32>(10210u, _wgslsmith_mult_u32(_wgslsmith_mult_u32(var_0.x, 1u), 1u))) % vec2<u32>(32u));
    var var_4 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(610f))))))), reverseBits(-_wgslsmith_sub_vec2_i32(vec2<i32>(32723i, u_input.d.x), vec2<i32>(44144i, -24755i) >> (var_2.xz % vec2<u32>(32u)))), ~(~min(vec3<u32>(0u, var_3.x, var_3.x), var_2.xzx)), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1143f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1928f))), _wgslsmith_f_op_f32(f32(-1f) * -378f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -986f) * _wgslsmith_f_op_f32(ceil(1413f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1073f + -120f) + var_4.d.x), var_4.a) + -1339f), firstLeadingBit(~vec4<u32>(1u, 1u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_3.x, var_2.x, 0u, u_input.b), vec4<u32>(1u, u_input.b, var_0.x, var_0.x)), 46393u)), var_2.yzy ^ var_2.zwx, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(140f - var_4.d.x), -2623f)) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_4.a, -294f)) - _wgslsmith_div_vec2_f32(vec2<f32>(-1832f, -432f), vec2<f32>(var_4.d.x, var_4.a))), vec2<f32>(_wgslsmith_f_op_vec3_f32(func_3(vec3<bool>(var_1, var_1, var_1))).x, 2140f))));
}

