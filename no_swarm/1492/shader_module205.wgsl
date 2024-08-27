struct Struct_1 {
    a: vec4<u32>,
    b: u32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec4<f32>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: f32,
    d: vec4<i32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: vec4<bool>;

var<private> global2: array<bool, 21>;

var<private> global3: vec4<f32> = vec4<f32>(713f, -785f, 469f, -1053f);

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3() -> bool {
    var var_0 = !(!select(vec2<bool>(global2[_wgslsmith_index_u32(~4294967295u, 21u)], global2[_wgslsmith_index_u32(1u, 21u)]), global1.wx, true));
    let var_1 = Struct_3(~abs(vec2<u32>(4294967295u, ~60764u)), Struct_1(max(~vec4<u32>(1u, 1u, 1u, 1u), ~countOneBits(vec4<u32>(7754u, 4294967295u, 11673u, 0u))), ~_wgslsmith_sub_u32(28888u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 4294967295u), vec3<u32>(0u, 0u, 22816u)))));
    let var_2 = Struct_1(~_wgslsmith_sub_vec4_u32(reverseBits(min(vec4<u32>(var_1.b.a.x, 0u, 4294967295u, var_1.b.b), var_1.b.a)), vec4<u32>(var_1.a.x, var_1.b.a.x, _wgslsmith_mult_u32(var_1.a.x, 1u), _wgslsmith_sub_u32(36382u, var_1.a.x))), ~(abs(4294967295u) ^ select(0u, 4294967295u, true)) & 4294967295u);
    return 1f <= _wgslsmith_div_f32(_wgslsmith_f_op_f32(489f - global0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-131f * -1000f)));
}

fn func_2(arg_0: Struct_4) -> u32 {
    let var_0 = _wgslsmith_mult_u32(~0u, _wgslsmith_div_u32(abs(~abs(arg_0.a.a.x)), _wgslsmith_div_u32(arg_0.b.a.x, 27775u)));
    var var_1 = func_3();
    let var_2 = _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(~min(1u, 42537u), var_0), ~select(arg_0.b.a, firstTrailingBit(vec2<u32>(0u, 18931u)), vec2<bool>(false, arg_0.c.x))), ~select(max(arg_0.a.a.zx, vec2<u32>(12775u, var_0)), arg_0.a.a.xw, !all(vec2<bool>(true, global1.x))));
    let var_3 = vec2<i32>(u_input.a, -1i);
    let var_4 = Struct_2(vec4<f32>(global0.x, global0.x, global3.x, -1163f), vec4<f32>(global3.x, _wgslsmith_f_op_f32(-global3.x), -394f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global3.x), global3.x)));
    return max(var_2, _wgslsmith_dot_vec2_u32(max(abs(arg_0.b.b.a.xy), ~abs(arg_0.a.a.zw)), firstLeadingBit(abs(vec2<u32>(31713u, var_2)))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_1, arg_3: f32) -> Struct_2 {
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(global3.zyy)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1858f, global0.x, arg_3) - global3.xyw))) * global3.yyx));
    let var_0 = Struct_1(~arg_0.a, abs(47286u));
    global3 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(round(arg_1.b))));
    let var_1 = Struct_3(~(vec2<u32>(49374u, min(arg_0.b, 0u)) | firstLeadingBit(max(arg_2.a.wz, vec2<u32>(arg_2.b, 1u)))), arg_2);
    let var_2 = Struct_4(var_0, Struct_3(_wgslsmith_sub_vec2_u32((vec2<u32>(var_0.b, 0u) & var_0.a.zy) >> (vec2<u32>(var_0.b, 4294967295u) % vec2<u32>(32u)), vec2<u32>(_wgslsmith_div_u32(var_0.b, 33829u), _wgslsmith_clamp_u32(1u, 76498u, 4294967295u))), Struct_1(~vec4<u32>(var_1.a.x, var_1.b.b, arg_0.a.x, 106925u), _wgslsmith_clamp_u32(~var_0.a.x, _wgslsmith_sub_u32(arg_0.b, 1u), 1u))), vec2<bool>(false, global2[_wgslsmith_index_u32(var_1.a.x, 21u)]));
    return arg_1;
}

fn func_1(arg_0: vec4<i32>, arg_1: f32, arg_2: bool) -> Struct_4 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(-332f - -536f)))))));
    var var_1 = -441f;
    let var_2 = func_4(Struct_1(min(~vec4<u32>(105484u, 58769u, 24722u, 4294967295u), abs(_wgslsmith_mult_vec4_u32(vec4<u32>(25404u, 3478u, 1u, 1u), vec4<u32>(11164u, 0u, 6627u, 0u)))), _wgslsmith_sub_u32(1u, func_2(Struct_4(Struct_1(vec4<u32>(66712u, 1u, 41929u, 0u), 0u), Struct_3(vec2<u32>(0u, 42410u), Struct_1(vec4<u32>(1u, 33950u, 0u, 0u), 0u)), vec2<bool>(true, global2[_wgslsmith_index_u32(4294967295u, 21u)]))))), Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(global3.x, arg_1, -249f, global0.x), vec4<f32>(-540f, -658f, 1569f, -884f))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(970f, _wgslsmith_f_op_f32(-global0.x), _wgslsmith_div_f32(global3.x, global0.x), _wgslsmith_div_f32(-1011f, global3.x)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1832f, -2143f, var_0, -996f)))), Struct_1(vec4<u32>(4294967295u, 1u, ~(~4294967295u), countOneBits(0u)), 4294967295u), _wgslsmith_f_op_f32(f32(-1f) * -548f));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -866f)));
    var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(495f + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global0.x + 203f)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) * -519f));
    return Struct_4(Struct_1(vec4<u32>(~1u, ~(~23696u), 4294967295u, ~abs(26456u)), 29130u), Struct_3(vec2<u32>(1u, select(min(6596u, 4294967295u), 43921u, true)), Struct_1(vec4<u32>(1u, 1u, 1u, 1u), 49773u)), vec2<bool>(true, !select(false, global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(11325u, 0u), 21u)], global2[_wgslsmith_index_u32(53028u, 21u)] == arg_2)));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = vec4<f32>(_wgslsmith_f_op_f32(-global3.x), 466f, _wgslsmith_f_op_f32(floor(global3.x)), _wgslsmith_f_op_f32(min(global3.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1270f, -923f)) * global3.x))));
    let var_0 = func_1(~(-(_wgslsmith_add_vec4_i32(vec4<i32>(0i, 38491i, 1i, u_input.a), vec4<i32>(0i, 21497i, -2147483647i, 1i)) >> (vec4<u32>(1u, 1725u, 37295u, 17536u) % vec4<u32>(32u)))), global3.x, false);
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(global3.x, _wgslsmith_div_f32(global3.x, 1f), _wgslsmith_f_op_f32(ceil(global0.x))), _wgslsmith_div_vec3_f32(global3.wxw, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(global3.wyz + global3.wyy)))))));
    global0 = vec3<f32>(-594f, global3.x, _wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(f32(-1f) * -787f)));
    global2 = array<bool, 21>();
    var var_1 = 0u;
    let x = u_input.a;
    s_output = StorageBuffer(-1i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -164f) + _wgslsmith_f_op_f32(f32(-1f) * -1657f)), _wgslsmith_f_op_f32(-global3.x), select(_wgslsmith_clamp_vec4_i32(-select(vec4<i32>(u_input.a, u_input.a, 16156i, u_input.a), vec4<i32>(u_input.a, -9191i, -47087i, 2147483647i), vec4<bool>(global1.x, global2[_wgslsmith_index_u32(var_0.a.a.x, 21u)], false, global1.x)), vec4<i32>(-u_input.a, 1i, 22001i << (0u % 32u), countOneBits(u_input.a)), abs(vec4<i32>(0i, u_input.a, -1i, u_input.a))), select(select(vec4<i32>(58807i, u_input.a, u_input.a, -10657i), vec4<i32>(u_input.a, 1i, u_input.a, -18637i), select(global2[_wgslsmith_index_u32(var_0.b.a.x, 21u)], false, true)), -(vec4<i32>(-1i, 20724i, u_input.a, u_input.a) ^ vec4<i32>(-2147483647i, -36769i, u_input.a, 18997i)), select(vec4<bool>(true, true, false, var_0.c.x), vec4<bool>(global1.x, var_0.c.x, global2[_wgslsmith_index_u32(var_0.a.a.x, 21u)], false), select(vec4<bool>(true, true, var_0.c.x, var_0.c.x), vec4<bool>(var_0.c.x, global1.x, true, false), vec4<bool>(var_0.c.x, true, true, true)))), true), ~firstLeadingBit(~_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, -16742i, u_input.a, -27684i), vec4<i32>(-56754i, -23266i, u_input.a, u_input.a))));
}

