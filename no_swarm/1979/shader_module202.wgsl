struct Struct_1 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec2<i32>,
    d: vec4<i32>,
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

var<private> global0: array<Struct_1, 27>;

var<private> global1: Struct_1;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec2<bool> {
    global1 = global0[_wgslsmith_index_u32(59434u, 27u)];
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1008f, _wgslsmith_div_f32(global1.a.x, _wgslsmith_div_f32(-156f, -776f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global1.a.x), _wgslsmith_f_op_f32(sign(884f))))))));
    let var_1 = select(select(select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false), true), vec4<bool>(true, true, true, true), all(vec2<bool>(false, false))), true), !select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true)), vec4<bool>(false, true, true, false), all(vec2<bool>(true, false))), vec4<bool>(true, -3435i == u_input.d.x, any(select(vec2<bool>(false, false), vec2<bool>(true, true), false)), any(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))))), vec4<bool>(any(vec3<bool>(true, true, true)), all(vec4<bool>(true, true, true, true)), true, all(!select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, true), false))), !select(select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), true), select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true)), all(vec2<bool>(true, true)) && true));
    global1 = Struct_1(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1434f), _wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(var_0.a.x - 265f)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(trunc(global1.a)), global1.a))))));
    let var_2 = 234f;
    return vec2<bool>(true, true);
}

fn func_2(arg_0: i32, arg_1: i32, arg_2: Struct_1) -> vec2<f32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(arg_2.a * _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(global1.a.x, arg_2.a.x), global1.a.x)), 490f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(197f)))))));
    var var_1 = _wgslsmith_dot_vec2_i32(max(min(u_input.d.xw, u_input.c), _wgslsmith_mod_vec2_i32(u_input.d.xw, vec2<i32>(u_input.d.x, abs(u_input.c.x)))), select(-max(_wgslsmith_clamp_vec2_i32(vec2<i32>(arg_1, arg_0), u_input.d.yz, vec2<i32>(arg_1, arg_0)), min(vec2<i32>(u_input.a.x, arg_0), u_input.d.xx)), min(u_input.c, u_input.d.zz), !func_3()));
    var var_2 = vec4<bool>(false | !(_wgslsmith_f_op_f32(global1.a.x + arg_2.a.x) >= global1.a.x), true, true, false);
    let var_3 = arg_2;
    let var_4 = var_3;
    return _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(global1.a.xy - var_4.a.xz)));
}

fn func_4(arg_0: u32, arg_1: bool, arg_2: vec2<f32>, arg_3: Struct_1) -> u32 {
    var var_0 = u_input.a.zz;
    let var_1 = arg_3;
    let var_2 = vec3<u32>(arg_0, arg_0, _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(76447u, 63178u, arg_0), vec3<u32>(8447u, arg_0, arg_0), vec3<u32>(arg_0, 54308u, 0u)), ~vec3<u32>(28660u, arg_0, 23488u)), ~0u) >> (_wgslsmith_mod_u32(_wgslsmith_div_u32(~arg_0, ~arg_0), arg_0) % 32u));
    let var_3 = _wgslsmith_sub_vec4_u32(~(~vec4<u32>(2512u, 4294967295u, 53097u, 0u)) << (~(~_wgslsmith_mult_vec4_u32(vec4<u32>(21919u, 79421u, 28754u, var_2.x), vec4<u32>(40015u, arg_0, 4294967295u, arg_0))) % vec4<u32>(32u)), vec4<u32>(countOneBits(countOneBits(_wgslsmith_sub_u32(13597u, arg_0))), var_2.x, 4294967295u, ~var_2.x));
    global0 = array<Struct_1, 27>();
    return _wgslsmith_clamp_u32(70474u, 4294967295u, _wgslsmith_mod_u32(~(~0u), 15807u)) ^ _wgslsmith_div_u32(~19800u << (firstTrailingBit(arg_0) % 32u), 0u);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32) -> vec4<u32> {
    global1 = arg_0;
    var var_0 = arg_1;
    let var_1 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(~(abs(~arg_2) | ~0u), select(~(~(~arg_2)), ~firstTrailingBit(_wgslsmith_clamp_u32(4294967295u, 4294967295u, 19577u)), true)), 27u)];
    let var_2 = arg_0;
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.x) - var_1.a.x);
    return select(reverseBits(vec4<u32>(arg_2, arg_2, 0u, arg_2)), min(~abs(vec4<u32>(arg_2, 22653u, arg_2, arg_2)), vec4<u32>(55490u, 1u, 4294967295u, arg_2) ^ select(vec4<u32>(4294967295u, arg_2, 109469u, arg_2), vec4<u32>(arg_2, 92u, arg_2, arg_2), true)), all(func_3())) >> (vec4<u32>(arg_2, _wgslsmith_sub_u32(45352u, arg_2), 4294967295u, ~(~arg_2)) % vec4<u32>(32u));
}

fn func_1() -> vec4<i32> {
    let var_0 = func_5(global0[_wgslsmith_index_u32(~(_wgslsmith_sub_u32(62549u, 35390u) << (_wgslsmith_dot_vec3_u32(vec3<u32>(34245u, 0u, 1939u), vec3<u32>(4294967295u, 11909u, 4294967295u)) % 32u)), 27u)], global0[_wgslsmith_index_u32(reverseBits(~1u), 27u)], abs(func_4(~2360u, true, _wgslsmith_f_op_vec2_f32(func_2(u_input.c.x, -13286i, global0[_wgslsmith_index_u32(18793u, 27u)])), Struct_1(vec3<f32>(-791f, 1267f, global1.a.x))))) | vec4<u32>(_wgslsmith_mod_u32(18936u, 33785u), 4294967295u, _wgslsmith_sub_u32(1u, _wgslsmith_dot_vec2_u32(~vec2<u32>(85278u, 0u), vec2<u32>(0u, 70438u))), 0u);
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.a.x, 1044f, 496f))))) * _wgslsmith_f_op_vec3_f32(global1.a * _wgslsmith_div_vec3_f32(vec3<f32>(-739f, global1.a.x, global1.a.x), _wgslsmith_f_op_vec3_f32(round(global1.a))))));
    global0 = array<Struct_1, 27>();
    let var_2 = false;
    let var_3 = Struct_1(global1.a);
    return u_input.d;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(global1.a.x, global1.a.x)), _wgslsmith_f_op_f32(abs(-527f))), global1.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a.x + _wgslsmith_f_op_f32(-1332f + -1065f)))));
    global0 = array<Struct_1, 27>();
    var var_1 = ~(~_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(firstTrailingBit(u_input.d.xx), vec2<i32>(0i, u_input.a.x)), abs(u_input.a.x) | abs(-2147483647i)));
    var var_2 = _wgslsmith_add_vec4_i32(abs(-func_1()), _wgslsmith_clamp_vec4_i32(-u_input.d, u_input.d, -u_input.d));
    var var_3 = any(vec2<bool>(true, !any(vec3<bool>(true, true, true))));
    let x = u_input.a;
    s_output = StorageBuffer(2147483647i, 1u);
}

