struct Struct_1 {
    a: f32,
    b: vec3<f32>,
    c: vec3<i32>,
    d: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: i32,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: f32,
    d: vec3<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 10> = array<vec4<u32>, 10>(vec4<u32>(4294967295u, 4294967295u, 12564u, 1u), vec4<u32>(1u, 1u, 5996u, 10380u), vec4<u32>(0u, 0u, 1u, 1u), vec4<u32>(37749u, 31865u, 4294967295u, 1u), vec4<u32>(21927u, 1u, 20648u, 12660u), vec4<u32>(1u, 0u, 72161u, 0u), vec4<u32>(71514u, 1u, 55918u, 12219u), vec4<u32>(1u, 4294967295u, 7459u, 59002u), vec4<u32>(16844u, 0u, 4294967295u, 39425u), vec4<u32>(0u, 52062u, 17442u, 3899u));

var<private> global1: bool;

var<private> global2: i32;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1() -> vec4<u32> {
    return global0[_wgslsmith_index_u32(u_input.b.x, 10u)];
}

fn func_3(arg_0: vec4<f32>, arg_1: vec4<i32>) -> i32 {
    let var_0 = select(countOneBits(~(~(~vec2<u32>(u_input.b.x, u_input.e)))), vec2<u32>(0u, 1u), select(select(select(vec2<bool>(true, true), vec2<bool>(true, false), all(vec3<bool>(false, false, false))), vec2<bool>(true, true), vec2<bool>(false, true)), !vec2<bool>(true, select(false, false, false)), true));
    var var_1 = Struct_1(213f, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(arg_0.xww)) * _wgslsmith_f_op_vec3_f32(sign(arg_0.zxy)))))), select(min(vec3<i32>(~arg_1.x, u_input.a.x, u_input.c), vec3<i32>(firstLeadingBit(u_input.c), 24241i ^ u_input.a.x, i32(-1i) * -2147483647i)), _wgslsmith_add_vec3_i32(u_input.a, -(~vec3<i32>(-14740i, -8564i, u_input.c))), true | (var_0.x != 4294967295u)), _wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(-115f - arg_0.x))));
    var var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_1.a))), -444f)) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0.x))))))));
    var var_3 = var_1.c.x;
    var var_4 = !(!all(select(vec2<bool>(true, false), vec2<bool>(false, false), false))) | true;
    return ~(~min(-21573i, arg_1.x ^ firstTrailingBit(2147483647i)));
}

fn func_2(arg_0: i32) -> Struct_1 {
    global2 = func_3(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(-773f, -1233f, -415f, -764f) * vec4<f32>(1000f, -1015f, -930f, -557f)))))), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.c, 1i, ~5477i, ~u_input.a.x), -(vec4<i32>(1i, 33641i, u_input.a.x, 1i) >> (global0[_wgslsmith_index_u32(0u, 10u)] % vec4<u32>(32u))))) << (8315u % 32u);
    var var_0 = func_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(557f, 1000f, 1341f, -149f) - vec4<f32>(-1032f, -964f, -980f, 1208f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(374f, 1573f, 895f, -827f))))), -_wgslsmith_clamp_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(arg_0, 0i, arg_0, 2147483647i), _wgslsmith_mod_vec4_i32(-vec4<i32>(u_input.a.x, -2147483647i, 0i, 2147483647i), countOneBits(vec4<i32>(u_input.a.x, 1i, 0i, -2147483647i))), ~(-vec4<i32>(2147483647i, 2147483647i, arg_0, arg_0))));
    global0 = array<vec4<u32>, 10>();
    let var_1 = Struct_1(-1808f, _wgslsmith_div_vec3_f32(vec3<f32>(-1646f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1295f - 886f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-174f, -644f, -513f), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(402f, -2963f, 714f))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(831f, 611f, 983f))))), firstTrailingBit(u_input.a), _wgslsmith_f_op_f32(-1f));
    global1 = any(!(!select(select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(false, false, true)), vec3<bool>(true, true, true), any(vec2<bool>(true, true)))));
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_1.b.x), _wgslsmith_f_op_f32(floor(136f)))))), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_1.b.x)) - _wgslsmith_f_op_f32(var_1.a + -1091f)), _wgslsmith_f_op_f32(max(-731f, -1378f))), _wgslsmith_f_op_f32(var_1.a + var_1.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.d))), vec3<i32>(~(~14526i), select(0i, func_3(vec4<f32>(var_1.b.x, var_1.d, 805f, var_1.b.x), vec4<i32>(arg_0, var_1.c.x, 27381i, arg_0)) >> (61883u % 32u), 1u <= _wgslsmith_mult_u32(u_input.b.x, u_input.d.x)), _wgslsmith_div_i32(_wgslsmith_mod_i32(1i | arg_0, var_1.c.x ^ -5640i), 7644i)), var_1.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    global0 = array<vec4<u32>, 10>();
    let var_1 = func_2(_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(u_input.a.yz, u_input.a.xy) | vec2<i32>(u_input.c, u_input.c), _wgslsmith_sub_vec2_i32(u_input.a.xx, u_input.a.yx)) >> (func_1().x % 32u));
    global2 = var_1.c.x;
    let var_2 = ~vec2<u32>(0u, u_input.b.x);
    global1 = any(vec3<bool>(false, abs(1u) > var_2.x, any(vec4<bool>(false, any(vec3<bool>(true, false, false)), true, all(vec4<bool>(false, true, false, true))))));
    let var_3 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(~(firstTrailingBit(vec3<u32>(35946u, 13983u, var_2.x)) & var_0.xzz), var_2, -1569f, vec3<u32>(10232u, ~(~var_0.x), ~(_wgslsmith_add_u32(var_2.x, 99008u) & max(42639u, 75973u))), var_3.d);
}

