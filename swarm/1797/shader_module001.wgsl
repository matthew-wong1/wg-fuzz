struct Struct_1 {
    a: vec2<u32>,
    b: u32,
    c: f32,
}

struct Struct_2 {
    a: u32,
    b: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec3<i32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: i32) -> vec3<f32> {
    let var_0 = Struct_2(~reverseBits(~_wgslsmith_add_u32(20739u, 15029u)), true);
    let var_1 = _wgslsmith_clamp_vec3_u32(vec3<u32>(~(~_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.a, var_0.a), vec2<u32>(0u, var_0.a))), ~32329u, var_0.a), _wgslsmith_add_vec3_u32(firstTrailingBit(_wgslsmith_clamp_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(37820u, var_0.a, 0u), vec3<u32>(79411u, var_0.a, 4294967295u)), vec3<u32>(var_0.a, var_0.a, var_0.a), vec3<u32>(var_0.a, 1u, var_0.a))), vec3<u32>(~(var_0.a << (65167u % 32u)), reverseBits(abs(0u)), 1u)), reverseBits(vec3<u32>(var_0.a, select(var_0.a, 24645u, var_0.b), 4294967295u)));
    var var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(638f, -768f, -1000f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(447f, -765f, -401f))))), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(440f, 743f))), -964f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-232f, -2101f)))), _wgslsmith_f_op_f32(-1222f * 1008f)));
    let var_3 = var_0;
    global0 = _wgslsmith_clamp_u32(var_0.a, ~(~(firstLeadingBit(var_0.a) >> ((var_1.x << (var_3.a % 32u)) % 32u))), 4294967295u);
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, -993f, var_2.x)) * _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.x, var_2.x, 592f) * vec3<f32>(var_2.x, var_2.x, 200f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(2290f, -1027f, var_2.x), vec3<f32>(var_2.x, -1936f, var_2.x), var_3.b)))))));
}

fn func_2(arg_0: Struct_1) -> f32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -2294f), _wgslsmith_f_op_f32(f32(-1f) * -379f)))), -200f, _wgslsmith_f_op_f32(f32(-1f) * -381f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_add_i32(21739i, 42735i)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.c, arg_0.c, 1880f) + vec3<f32>(-445f, 1223f, -1000f)) - _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_0.c, arg_0.c, arg_0.c))))))));
    var_0 = vec3<f32>(_wgslsmith_div_f32(var_0.x, arg_0.c), var_0.x, var_0.x);
    var var_1 = -(vec4<i32>(-1i) * -_wgslsmith_mod_vec4_i32(vec4<i32>(-1i, u_input.a.x, 2147483647i, 0i), -vec4<i32>(0i, u_input.a.x, 1i, u_input.a.x)));
    var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-811f, arg_0.c))), 918f, _wgslsmith_f_op_f32(-1460f * 1050f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(302f, _wgslsmith_f_op_f32(step(var_0.x, 448f)), _wgslsmith_div_f32(-484f, arg_0.c)))));
    global0 = 1u;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1051f) * _wgslsmith_f_op_f32(floor(var_0.x)));
}

fn func_1(arg_0: f32, arg_1: f32) -> bool {
    var var_0 = u_input.a.x;
    var_0 = u_input.a.x;
    let var_1 = u_input.a.x;
    let var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_0, arg_1, 385f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(359f, 1000f, arg_1, 352f)), true)) - vec4<f32>(_wgslsmith_f_op_f32(select(arg_1, 359f, true)), _wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(func_2(Struct_1(vec2<u32>(24837u, 27972u), 7335u, arg_0))), _wgslsmith_div_f32(-1429f, 1180f))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_1, 339f, 365f, -1267f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(arg_1, 1742f, arg_0, arg_0), vec4<f32>(-856f, arg_0, 692f, 764f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(arg_0 + -817f), 995f, arg_1, _wgslsmith_f_op_f32(-arg_1))))));
    var var_3 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_2.x))), -1174f)))), 793f));
    return !(!all(!select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(1f, _wgslsmith_f_op_f32(-1128f + -1445f));
    var var_1 = true;
    let var_2 = ~(~_wgslsmith_sub_vec3_u32(vec3<u32>(max(1u, 1u), ~4294967295u, min(0u, 0u)), select(vec3<u32>(1u, 1u, 1u), vec3<u32>(21636u, 0u, 4294967295u), func_1(-1026f, -1116f))));
    var_1 = true;
    global0 = 0u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-780f + 981f))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(1249f * 779f), _wgslsmith_f_op_f32(round(-712f)))) - _wgslsmith_f_op_f32(-1f)), 23166i, -vec3<i32>(34434i, _wgslsmith_dot_vec2_i32(u_input.a, vec2<i32>(-9485i, u_input.a.x)), 2147483647i), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -1137f, 731f) * vec3<f32>(454f, 414f, 320f)))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(899f, 1238f, -200f) + vec3<f32>(354f, -2882f, -446f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1487f, 554f, -185f)), vec3<bool>(true, true, true)))))));
}

