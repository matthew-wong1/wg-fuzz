struct Struct_1 {
    a: bool,
    b: bool,
}

struct Struct_2 {
    a: f32,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec4<f32>,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: vec2<f32>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: vec3<bool>) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(sign(global1.x));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x * global1.x)));
    global1 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(abs(global1.x)), _wgslsmith_f_op_f32(-global1.x))))));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global1.x)) * _wgslsmith_div_f32(-573f, _wgslsmith_f_op_f32(global1.x * _wgslsmith_f_op_f32(global1.x + 560f)))));
    let var_1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1521f, global1.x, arg_0.x))), vec3<u32>(1u, 17117u, 4294967295u));
    return var_1;
}

fn func_1(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: Struct_1) -> Struct_2 {
    return func_2(select(vec3<bool>(!(arg_1.b.x < arg_1.b.x), select(arg_1.b.x <= 0u, arg_2.a != true, !arg_2.a), arg_2.b), select(vec3<bool>(arg_2.b, select(arg_2.a, false, arg_2.a), false), select(select(vec3<bool>(arg_2.a, false, false), vec3<bool>(false, true, arg_2.a), true), !vec3<bool>(arg_2.a, arg_2.a, true), vec3<bool>(arg_2.a, arg_2.b, arg_2.b)), arg_2.a), all(!vec4<bool>(arg_2.a, true, arg_2.b, false)) || arg_2.b));
}

fn func_3(arg_0: bool, arg_1: vec3<bool>, arg_2: Struct_2) -> u32 {
    global1 = vec2<f32>(-1226f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.x, _wgslsmith_f_op_f32(f32(-1f) * -1185f)) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(arg_2.a))))))));
    var var_0 = Struct_1(true, arg_0);
    let var_1 = Struct_1(all(select(!(!arg_1), !arg_1, arg_1)), (arg_0 && all(vec3<bool>(var_0.b, true, true))) && var_0.b);
    global1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-387f, global1.x))) + vec2<f32>(global1.x, _wgslsmith_f_op_f32(abs(global1.x))))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global1.x, global1.x), vec2<f32>(385f, arg_2.a), false)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1116f, 491f) * vec2<f32>(arg_2.a, 2024f))))) * vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1175f, -893f)), _wgslsmith_f_op_f32(-152f * _wgslsmith_f_op_f32(select(global1.x, global1.x, true))))));
    let var_2 = Struct_1(true, var_1.b);
    return _wgslsmith_dot_vec4_u32(vec4<u32>(97900u, min(arg_2.b.x, 1u), reverseBits(~36550u), arg_2.b.x), _wgslsmith_clamp_vec4_u32(abs(~vec4<u32>(arg_2.b.x, 20606u, 1u, arg_2.b.x)) | ~(~vec4<u32>(arg_2.b.x, 1u, arg_2.b.x, 4294967295u)), ~max(~vec4<u32>(arg_2.b.x, 1u, arg_2.b.x, arg_2.b.x), vec4<u32>(5557u, arg_2.b.x, 86467u, 4294967295u)), vec4<u32>(_wgslsmith_add_u32(~37993u, arg_2.b.x & arg_2.b.x), arg_2.b.x, arg_2.b.x | arg_2.b.x, arg_2.b.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_mult_vec2_i32(abs(-(~vec2<i32>(global0.x, u_input.a))) << (vec2<u32>(reverseBits(firstLeadingBit(37487u)), func_3(true, select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), true), func_1(vec2<f32>(782f, -1351f), Struct_2(-868f, vec3<u32>(7944u, 28113u, 5716u)), Struct_1(true, false)))) % vec2<u32>(32u)), vec2<i32>(2147483647i & min(~u_input.a, 16604i | global0.x), abs(global0.x)));
    var var_0 = i32(-1i) * -8727i;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -638f)) * 756f);
    var var_2 = countOneBits(select(vec4<i32>(_wgslsmith_clamp_i32(firstTrailingBit(global0.x), u_input.a, _wgslsmith_mod_i32(58445i, u_input.a)), -max(-1i, 2147483647i), 1i, countOneBits(u_input.a) >> (7939u % 32u)), -vec4<i32>(_wgslsmith_div_i32(global0.x, global0.x), _wgslsmith_sub_i32(-1i, global0.x), u_input.a, abs(53218i)), all(vec2<bool>(true, true))));
    let var_3 = Struct_1(all(vec4<bool>(true, true, true, true)), true);
    let var_4 = 0u;
    var var_5 = -503f;
    let x = u_input.a;
    s_output = StorageBuffer(~1u, _wgslsmith_f_op_f32(global1.x + -164f), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.x, global1.x) + 647f), -1746f, -990f, 274f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-636f, -417f, global1.x, -488f)) - vec4<f32>(-636f, global1.x, global1.x, global1.x)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, global1.x, 185f, -993f) + vec4<f32>(-556f, global1.x, 595f, 443f)))), -1249f, var_4);
}

