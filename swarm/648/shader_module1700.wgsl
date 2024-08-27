struct Struct_1 {
    a: vec4<i32>,
    b: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: vec2<u32>,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<i32>,
    c: f32,
    d: i32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: vec3<i32> = vec3<i32>(-12731i, 27329i, 0i);

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: u32, arg_1: vec3<f32>, arg_2: vec3<bool>) -> bool {
    global1 = firstLeadingBit(max(vec3<i32>(_wgslsmith_div_i32(~global1.x, _wgslsmith_sub_i32(global1.x, 1i)), reverseBits(abs(-2147483647i)), max(-1i, 29760i)), vec3<i32>(-1i) * -_wgslsmith_mult_vec3_i32(vec3<i32>(-546i, 1i, u_input.a), vec3<i32>(35425i, -67794i, global1.x))));
    global0 = -1i;
    let var_0 = -vec2<i32>(u_input.a, i32(-1i) * -27477i);
    var var_1 = ~arg_0;
    return any(vec4<bool>(arg_2.x, arg_2.x, arg_2.x, true)) || true;
}

fn func_2(arg_0: vec2<u32>) -> vec4<i32> {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(113f)) * -1052f), Struct_1(~(-_wgslsmith_sub_vec4_i32(vec4<i32>(global1.x, global1.x, 33163i, -1i), vec4<i32>(global1.x, global1.x, -1i, 1i))), vec4<bool>(func_3(6986u, vec3<f32>(-405f, -1000f, -893f), vec3<bool>(true, true, true)), true, true, false)), select(_wgslsmith_sub_vec2_u32(vec2<u32>(~arg_0.x, arg_0.x), ~vec2<u32>(57511u, arg_0.x) << (arg_0 % vec2<u32>(32u))), arg_0, select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), false)));
    global1 = (vec3<i32>(20708i, countOneBits(40326i), _wgslsmith_mult_i32(~4936i, 24560i)) ^ -(~_wgslsmith_clamp_vec3_i32(var_0.b.a.wxy, vec3<i32>(-1i, global1.x, -2147483647i), vec3<i32>(global1.x, u_input.a, global1.x)))) ^ min(var_0.b.a.yww, var_0.b.a.zxz);
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a, var_0.a) + vec2<f32>(-945f, -1186f)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a, var_0.a))))));
    global1 = vec3<i32>(firstLeadingBit(-(~u_input.a)), firstTrailingBit(~(~var_0.b.a.x)), _wgslsmith_add_i32(1i, _wgslsmith_dot_vec2_i32(abs(countOneBits(vec2<i32>(global1.x, var_0.b.a.x))), (global1.xy >> (var_0.c % vec2<u32>(32u))) | vec2<i32>(u_input.a, 1i))));
    global1 = var_0.b.a.xxx;
    return ~vec4<i32>(countOneBits(var_0.b.a.x), abs(min(-1i, countOneBits(global1.x))), abs(21471i & u_input.a), abs(var_0.b.a.x));
}

fn func_1() -> f32 {
    let var_0 = Struct_1(~_wgslsmith_mult_vec4_i32(func_2(vec2<u32>(1u, 1u)), vec4<i32>(_wgslsmith_mod_i32(2147483647i, u_input.a), u_input.a, global1.x, _wgslsmith_mod_i32(global1.x, -11981i))), !(!select(select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, true), true), select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true)), vec4<bool>(false, false, true, true))));
    let var_1 = -1i;
    global1 = var_0.a.yxw | vec3<i32>(2147483647i, ~(u_input.a >> (firstTrailingBit(2184u) % 32u)), select(reverseBits(_wgslsmith_add_i32(u_input.a, u_input.a)), -var_0.a.x, !all(vec3<bool>(false, true, false))));
    global1 = var_0.a.wxw;
    let var_2 = 1u;
    return 1657f;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec3<i32>(_wgslsmith_mod_i32(global1.x, ~global1.x), countOneBits(-28385i), -26249i);
    let var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-413f, 242f))) - vec2<f32>(1f, 1438f)) - _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-445f, -342f) - vec2<f32>(-811f, 897f)) + vec2<f32>(1f, 1f))))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-527f, -541f))))));
    global0 = _wgslsmith_dot_vec2_i32(~_wgslsmith_clamp_vec2_i32(abs(vec2<i32>(31929i, u_input.a)), (vec2<i32>(global1.x, global1.x) & vec2<i32>(u_input.a, global1.x)) << (~vec2<u32>(38976u, 4294967295u) % vec2<u32>(32u)), global1.zy), ~global1.xx);
    let var_1 = ~4294967295u;
    global1 = ~((firstLeadingBit(vec3<i32>(u_input.a, -6205i, -2147483647i)) | _wgslsmith_mod_vec3_i32(firstTrailingBit(vec3<i32>(1i, 37893i, 10753i)), vec3<i32>(-11774i, 2147483647i, 54081i) ^ vec3<i32>(-2147483647i, 1459i, u_input.a))) & _wgslsmith_mod_vec3_i32(abs(vec3<i32>(global1.x, -2147483647i, global1.x)), vec3<i32>(abs(u_input.a), firstTrailingBit(u_input.a), ~18734i)));
    var var_2 = _wgslsmith_f_op_f32(round(var_0.x));
    global1 = vec3<i32>(_wgslsmith_div_i32(_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.a, 1i, -12912i, -2147483647i), select(vec4<i32>(-24219i, -2147483647i, -2147483647i, global1.x), vec4<i32>(u_input.a, 1i, global1.x, global1.x), true)), reverseBits(-1i << (var_1 % 32u))), 1i), ~firstTrailingBit(52982i), ~global1.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(round(-1556f)), _wgslsmith_f_op_f32(-var_0.x), -840f), ((global1.zx & global1.xz) & global1.zx) ^ _wgslsmith_sub_vec2_i32(func_2(vec2<u32>(1u, var_1)).yx, ~global1.zx), _wgslsmith_f_op_f32(f32(-1f) * -126f), ~30794i, vec3<u32>(var_1, 0u, 4294967295u));
}

