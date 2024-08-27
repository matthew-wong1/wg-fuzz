struct Struct_1 {
    a: i32,
    b: i32,
    c: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 5> = array<i32, 5>(8071i, 0i, 1i, i32(-2147483648), 50162i);

var<private> global1: array<f32, 8>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> f32 {
    global0 = array<i32, 5>();
    global1 = array<f32, 8>();
    let var_0 = vec3<u32>(_wgslsmith_sub_u32(abs(_wgslsmith_add_u32(u_input.a.x, u_input.a.x)), 1u) >> (u_input.b.x % 32u), _wgslsmith_mod_u32(((u_input.b.x | 0u) >> (1101u % 32u)) >> (12004u % 32u), ~_wgslsmith_clamp_u32(1u, 19497u, ~55612u)), 20062u);
    var var_1 = ~global0[_wgslsmith_index_u32(u_input.b.x, 5u)];
    global0 = array<i32, 5>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1026f * -287f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-2479f * -1000f), global1[_wgslsmith_index_u32(min(1u, u_input.b.x), 8u)]))));
}

fn func_2(arg_0: vec4<bool>, arg_1: Struct_1) -> i32 {
    var var_0 = arg_1;
    var_0 = arg_1;
    global1 = array<f32, 8>();
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global1[_wgslsmith_index_u32(74372u, 8u)], global1[_wgslsmith_index_u32(9116u, 8u)]), vec2<f32>(global1[_wgslsmith_index_u32(u_input.a.x, 8u)], -832f), arg_0.wy))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-526f, global1[_wgslsmith_index_u32(u_input.b.x, 8u)]) - vec2<f32>(320f, global1[_wgslsmith_index_u32(4294967295u, 8u)])))), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -130f), -645f)))) * vec2<f32>(global1[_wgslsmith_index_u32(~(~_wgslsmith_sub_u32(u_input.a.x, u_input.a.x)), 8u)], -1000f));
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(func_3()), 676f, 687f);
    return _wgslsmith_div_i32(countOneBits(i32(-1i) * -30034i), _wgslsmith_mod_i32(-1i, _wgslsmith_dot_vec2_i32(u_input.c.wy | u_input.c.xy, firstLeadingBit(vec2<i32>(4258i, 2147483647i)))));
}

fn func_1(arg_0: bool) -> f32 {
    global0 = array<i32, 5>();
    let var_0 = true;
    let var_1 = Struct_1(u_input.c.x, _wgslsmith_mult_i32(func_2(!select(vec4<bool>(arg_0, var_0, false, false), vec4<bool>(var_0, var_0, true, true), arg_0), Struct_1(firstTrailingBit(1i), u_input.c.x | global0[_wgslsmith_index_u32(u_input.b.x, 5u)], true)), 1i), false);
    let var_2 = !vec4<bool>(true, var_1.c, any(vec2<bool>(var_0, var_0)) | all(select(vec2<bool>(true, true), vec2<bool>(var_1.c, var_0), var_0)), all(select(select(vec2<bool>(true, false), vec2<bool>(false, false), arg_0), select(vec2<bool>(var_1.c, var_1.c), vec2<bool>(false, false), var_0), vec2<bool>(var_1.c, false))));
    var var_3 = -172f;
    return _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(0u, 8u)] + _wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(firstTrailingBit(u_input.a.x), 8u)], _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.b.x, 8u)] + global1[_wgslsmith_index_u32(52016u, 8u)]), -1548f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_1(true))));
    global1 = array<f32, 8>();
    var var_1 = Struct_1(29413i, firstLeadingBit(-_wgslsmith_sub_i32(reverseBits(u_input.c.x), _wgslsmith_mod_i32(2147483647i, u_input.c.x))), false);
    let var_2 = -(~u_input.c.x);
    global1 = array<f32, 8>();
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(~u_input.a), (-var_2 | 1i) ^ _wgslsmith_mod_i32(global0[_wgslsmith_index_u32(u_input.b.x, 5u)], abs(-21418i)), ~_wgslsmith_div_i32(-_wgslsmith_clamp_i32(-1i, -75590i, global0[_wgslsmith_index_u32(u_input.b.x, 5u)]), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.b.zz, _wgslsmith_clamp_vec2_u32(vec2<u32>(75127u, 4294967295u), vec2<u32>(u_input.b.x, 4294967295u), u_input.b.zy)), 5u)]));
}

