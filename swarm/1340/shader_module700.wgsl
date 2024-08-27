struct Struct_1 {
    a: vec4<f32>,
    b: f32,
}

struct Struct_2 {
    a: u32,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec4<i32>,
    d: f32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 20> = array<i32, 20>(-30248i, 1i, -58521i, -6945i, 8238i, -36037i, 0i, -75648i, 7699i, 1i, 9564i, 15205i, 55731i, -1i, -10392i, 51009i, 1i, i32(-2147483648), -4249i, 27267i);

var<private> global1: bool = true;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_2) -> u32 {
    global0 = array<i32, 20>();
    let var_0 = any(vec3<bool>(!all(select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false))), !(~arg_1.a != 9993u), true));
    global1 = var_0;
    global1 = !any(!select(select(vec4<bool>(var_0, var_0, var_0, true), vec4<bool>(true, var_0, var_0, var_0), vec4<bool>(var_0, false, false, var_0)), select(vec4<bool>(false, var_0, false, var_0), vec4<bool>(var_0, var_0, true, var_0), false), true == var_0));
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-arg_1.b), arg_1.b.x);
    return ~31118u;
}

fn func_2(arg_0: Struct_2) -> u32 {
    var var_0 = _wgslsmith_div_vec2_u32(vec2<u32>(0u, func_3(arg_0.b.wy, arg_0) >> (4294967295u % 32u)), select(max(~vec2<u32>(u_input.a, u_input.a), min(vec2<u32>(4294967295u, 105132u), vec2<u32>(u_input.a, 4294967295u))), abs(vec2<u32>(arg_0.a, 1u)), !select(vec2<bool>(true, true), vec2<bool>(false, false), true))) | ~(~vec2<u32>(_wgslsmith_sub_u32(arg_0.a, arg_0.a), firstLeadingBit(u_input.a)));
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0.b.x, -1743f, arg_0.b.x, arg_0.b.x), arg_0.b, false))), arg_0.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b.x) * arg_0.b.x) + -1382f)));
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(arg_0.b)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(arg_0.b, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-949f, 542f, arg_0.b.x, 1598f))))), var_1.b);
    global1 = (!(_wgslsmith_f_op_f32(-var_2.b) >= -213f) & !(!any(vec2<bool>(false, false)))) | true;
    var_0 = _wgslsmith_mod_vec2_u32(~vec2<u32>(var_0.x >> (16180u % 32u), _wgslsmith_clamp_u32(u_input.a, var_0.x, reverseBits(u_input.a))), firstLeadingBit(select(~firstLeadingBit(vec2<u32>(2755u, arg_0.a)), ~(vec2<u32>(69794u, 22297u) | vec2<u32>(u_input.a, arg_0.a)), vec2<bool>(true, true))));
    return arg_0.a;
}

fn func_1() -> vec3<i32> {
    global0 = array<i32, 20>();
    let var_0 = -202f;
    var var_1 = vec2<u32>(func_2(Struct_2(min(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.a, u_input.a), vec3<u32>(1u, u_input.a, 4891u)), ~u_input.a), vec4<f32>(_wgslsmith_div_f32(-400f, 340f), _wgslsmith_f_op_f32(var_0 - var_0), var_0, 1070f))), 4294967295u);
    global1 = all(select(select(!select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), false), vec3<bool>(true, true, true), (59324u ^ u_input.a) >= (var_1.x | u_input.a)), vec3<bool>(true, true, true), true));
    let var_2 = vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(33827i, min(15460i, ~global0[_wgslsmith_index_u32(0u, 20u)])), firstLeadingBit(select(vec2<i32>(2147483647i, -22793i), vec2<i32>(global0[_wgslsmith_index_u32(13330u, 20u)], -2147483647i), vec2<bool>(false, false)) | vec2<i32>(global0[_wgslsmith_index_u32(47127u, 20u)], 1i))), _wgslsmith_div_i32(~(2147483647i << (u_input.a % 32u)), -_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, global0[_wgslsmith_index_u32(104329u, 20u)]), vec2<i32>(global0[_wgslsmith_index_u32(u_input.a, 20u)], 30276i)), 1i)), _wgslsmith_dot_vec2_i32(~abs(vec2<i32>(2147483647i, global0[_wgslsmith_index_u32(15446u, 20u)]) | vec2<i32>(10297i, global0[_wgslsmith_index_u32(u_input.a, 20u)])), vec2<i32>(1i, 1i)), 18880i);
    return vec3<i32>(~(-5565i), -_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(firstTrailingBit(var_2.wy), var_2.xz ^ var_2.wx), _wgslsmith_mult_vec2_i32(select(vec2<i32>(global0[_wgslsmith_index_u32(var_1.x, 20u)], -16373i), vec2<i32>(global0[_wgslsmith_index_u32(u_input.a, 20u)], 18253i), false), reverseBits(vec2<i32>(var_2.x, var_2.x)))), -2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    global0 = array<i32, 20>();
    var var_1 = Struct_2(19223u, vec4<f32>(_wgslsmith_f_op_f32(floor(508f)), -1041f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -390f), 1f))), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(449f, _wgslsmith_f_op_f32(min(-1510f, 1737f)))))));
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-978f, -210f, var_1.b.x, 1536f) + vec4<f32>(-1000f, var_1.b.x, 442f, var_1.b.x)) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(var_1.b)), var_1.b, true)))), 127f);
    let var_3 = var_1.a;
    var_1 = Struct_2(4294967295u, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(var_2.a, vec4<f32>(-1332f, var_2.b, var_1.b.x, var_1.b.x), true)) - _wgslsmith_f_op_vec4_f32(select(var_2.a, vec4<f32>(var_2.a.x, var_1.b.x, var_1.b.x, 562f), vec4<bool>(false, true, true, false)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, var_2.b, 446f, var_1.b.x))), true)) + var_1.b));
    let x = u_input.a;
    s_output = StorageBuffer(650f, 62342u, firstTrailingBit(reverseBits(vec4<i32>(0i, global0[_wgslsmith_index_u32(~u_input.a, 20u)], global0[_wgslsmith_index_u32(13817u, 20u)] ^ var_0.x, -17490i))), _wgslsmith_f_op_f32(-1204f - var_1.b.x), vec2<u32>(var_1.a ^ max(var_1.a ^ 0u, 36426u), u_input.a));
}

