struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 12>;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec2<i32>) -> vec4<bool> {
    global0 = array<vec2<u32>, 12>();
    let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(2641f * -1000f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1060f + 1366f) * _wgslsmith_div_f32(476f, -1976f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-516f))), 1f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-506f))), _wgslsmith_f_op_f32(1f + 552f)))));
    global0 = array<vec2<u32>, 12>();
    var var_1 = !select(select(vec4<bool>(true, all(vec4<bool>(true, false, false, false)), select(true, false, false), all(vec4<bool>(false, true, true, false))), vec4<bool>(all(vec3<bool>(true, false, false)), true, false, true), all(vec3<bool>(true, true, true))), vec4<bool>(true, true, true, true), select(true, true, true));
    let var_2 = Struct_1(_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(firstLeadingBit(vec3<i32>(-43905i, arg_0.x, -5479i) ^ vec3<i32>(0i, -25962i, -31710i)), _wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(arg_0.x, u_input.a, u_input.a), vec3<i32>(2147483647i, arg_0.x, arg_0.x)), _wgslsmith_sub_vec3_i32(vec3<i32>(arg_0.x, -2147483647i, u_input.a), vec3<i32>(u_input.a, -1i, u_input.a)))), vec3<i32>(1i, max(-7524i, u_input.a), ~(-1i)) & (abs(vec3<i32>(arg_0.x, 24023i, arg_0.x)) << ((u_input.b << (vec3<u32>(4294967295u, 4294967295u, 1u) % vec3<u32>(32u))) % vec3<u32>(32u)))));
    return !(!select(select(vec4<bool>(false, false, false, var_1.x), !vec4<bool>(false, var_1.x, false, var_1.x), any(vec4<bool>(var_1.x, true, true, var_1.x))), !(!vec4<bool>(var_1.x, var_1.x, var_1.x, true)), any(!vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x))));
}

fn func_2(arg_0: f32, arg_1: vec3<i32>) -> f32 {
    global0 = array<vec2<u32>, 12>();
    global0 = array<vec2<u32>, 12>();
    var var_0 = Struct_1(-2147483647i);
    let var_1 = Struct_1(~2147483647i);
    var var_2 = ~select(~global0[_wgslsmith_index_u32(4294967295u, 12u)], min(u_input.b.xz, vec2<u32>(40713u, 4294967295u)), vec2<bool>(any(func_3(arg_1.xz)), !(894f <= arg_0)));
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(-1741f))));
}

fn func_1(arg_0: u32) -> Struct_1 {
    global0 = array<vec2<u32>, 12>();
    global0 = array<vec2<u32>, 12>();
    global0 = array<vec2<u32>, 12>();
    var var_0 = global0[_wgslsmith_index_u32(~arg_0, 12u)];
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_2(1165f, vec3<i32>(-1i, u_input.a, -1i))))))), -190f) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(-367f, 771f)), _wgslsmith_div_f32(1721f, 503f))), _wgslsmith_f_op_f32(abs(-1000f)))))));
    return Struct_1(countOneBits(i32(-1i) * -_wgslsmith_mod_i32(u_input.a, -18893i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(~(~reverseBits(_wgslsmith_add_u32(36687u, u_input.c))));
    var var_1 = _wgslsmith_mult_vec4_i32(~(-(_wgslsmith_div_vec4_i32(vec4<i32>(-26934i, 74612i, 28270i, var_0.a), vec4<i32>(1188i, u_input.a, 26507i, u_input.a)) ^ ~vec4<i32>(var_0.a, var_0.a, 0i, 1i))), firstTrailingBit(-(~(~vec4<i32>(0i, var_0.a, -1i, 0i)))));
    var_1 = (-((vec4<i32>(2147483647i, u_input.a, -1i, var_1.x) | vec4<i32>(-1i, u_input.a, var_0.a, 0i)) | _wgslsmith_mod_vec4_i32(vec4<i32>(var_0.a, u_input.a, var_1.x, 43348i), vec4<i32>(-42031i, var_0.a, 12142i, 0i))) | -_wgslsmith_clamp_vec4_i32(vec4<i32>(26220i, 44982i, var_1.x, 2147483647i), vec4<i32>(0i, 2147483647i, u_input.a, 2147483647i), vec4<i32>(var_0.a, u_input.a, 0i, u_input.a) & vec4<i32>(var_1.x, var_0.a, var_0.a, 59065i))) << (~_wgslsmith_div_vec4_u32(vec4<u32>(~4294967295u, ~1u, 12367u, _wgslsmith_mult_u32(u_input.c, 0u)), abs(~vec4<u32>(1u, 2449u, 8135u, u_input.d))) % vec4<u32>(32u));
    let var_2 = -(~u_input.a);
    var_1 = abs(abs(reverseBits(_wgslsmith_mod_vec4_i32(vec4<i32>(1i, -57751i, var_2, var_1.x), vec4<i32>(-9751i, var_1.x, -17865i, var_0.a)))) >> (~vec4<u32>(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 20058u), u_input.b.xz), u_input.b.x, ~1u) % vec4<u32>(32u)));
    global0 = array<vec2<u32>, 12>();
    global0 = array<vec2<u32>, 12>();
    let x = u_input.a;
    s_output = StorageBuffer(39526i, _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(231f, _wgslsmith_f_op_f32(-1f)))), ~firstLeadingBit(var_0.a));
}

