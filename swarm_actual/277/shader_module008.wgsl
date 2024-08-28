struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec3<i32>,
    b: i32,
    c: Struct_1,
    d: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<f32>,
    c: vec3<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: f32;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_2(arg_0: Struct_2, arg_1: i32, arg_2: Struct_2, arg_3: i32) -> i32 {
    global0 = arg_2.c;
    let var_0 = reverseBits(arg_1);
    var var_1 = arg_0;
    let var_2 = !vec4<bool>(true | all(vec3<bool>(false, arg_2.c.a, var_1.c.a)), -734f <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2680f * var_1.d)), !arg_2.c.a || global0.a, _wgslsmith_mult_i32(~arg_2.a.x, -arg_1) <= _wgslsmith_div_i32(abs(arg_2.a.x), arg_0.a.x));
    global1 = _wgslsmith_f_op_f32(f32(-1f) * -1473f);
    return 1i;
}

fn func_3(arg_0: f32, arg_1: f32, arg_2: Struct_1) -> vec4<f32> {
    var var_0 = countOneBits(-u_input.a);
    var var_1 = Struct_2(abs(select(select(abs(var_0.zxx), vec3<i32>(-2147483647i, 46024i, var_0.x) >> (vec3<u32>(39639u, 4294967295u, 4294967295u) % vec3<u32>(32u)), vec3<bool>(false, global0.a, true)), _wgslsmith_mod_vec3_i32(u_input.a.wxx | u_input.a.xzy, _wgslsmith_mult_vec3_i32(u_input.a.xwz, vec3<i32>(var_0.x, var_0.x, u_input.a.x))), vec3<bool>(all(vec2<bool>(false, false)), arg_2.a, select(false, false, arg_2.a)))), 23547i, Struct_1(any(select(vec4<bool>(global0.a, arg_2.a, global0.a, arg_2.a), vec4<bool>(arg_2.a, true, arg_2.a, global0.a), true)) != !global0.a), _wgslsmith_f_op_f32(sign(arg_1)));
    global0 = Struct_1(true);
    var_0 = (max(~(~u_input.a), vec4<i32>(0i << (0u % 32u), -38085i, 2147483647i, -var_0.x)) ^ u_input.a) ^ _wgslsmith_mod_vec4_i32(u_input.a, _wgslsmith_add_vec4_i32(-u_input.a, countOneBits(_wgslsmith_sub_vec4_i32(vec4<i32>(-1i, var_1.a.x, 21595i, var_0.x), vec4<i32>(-1i, u_input.a.x, var_0.x, var_1.a.x)))));
    global0 = Struct_1(var_1.c.a);
    return _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(368f - -655f), _wgslsmith_f_op_f32(f32(-1f) * -1720f), -276f, _wgslsmith_f_op_f32(-1835f * arg_0)))))));
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_2(vec3<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(u_input.a.xz, vec2<i32>(u_input.a.x, u_input.a.x)), -_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), vec2<i32>(u_input.a.x, u_input.a.x), vec2<i32>(-10774i, 16185i))), func_2(Struct_2(~u_input.a.zyx, u_input.a.x, Struct_1(global0.a), _wgslsmith_f_op_f32(113f - -898f)), _wgslsmith_mod_i32(-14538i, ~u_input.a.x), Struct_2(vec3<i32>(u_input.a.x, 2147483647i, -18592i), -1i, Struct_1(global0.a), _wgslsmith_div_f32(1387f, 766f)), ~_wgslsmith_clamp_i32(u_input.a.x, u_input.a.x, u_input.a.x)), -49029i), 0i, Struct_1(_wgslsmith_f_op_f32(sign(-1000f)) < -899f), _wgslsmith_div_f32(394f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -308f))));
    let var_1 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-773f))), _wgslsmith_f_op_f32(var_0.d + var_0.d), Struct_1(true & global0.a)))));
    global0 = var_0.c;
    var var_2 = var_0.d;
    var var_3 = min(~52461u, _wgslsmith_add_u32(~(~0u), ~countOneBits(1u)) ^ ~_wgslsmith_dot_vec4_u32(~vec4<u32>(56258u, 0u, 43448u, 1904u), ~vec4<u32>(35404u, 4294967295u, 43440u, 0u)));
    return var_0.c;
}

fn func_4(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: Struct_2) -> bool {
    let var_0 = _wgslsmith_div_i32(countOneBits(-_wgslsmith_mult_i32(1i, arg_2.b)), max(~(-_wgslsmith_sub_i32(-2147483647i, 1i)), i32(-1i) * -(~u_input.a.x)));
    var var_1 = arg_1.x == _wgslsmith_dot_vec4_u32(vec4<u32>(min(arg_1.x | 24004u, arg_1.x), 46569u, max(1u, arg_1.x), 1u), vec4<u32>(~arg_1.x, 28081u, _wgslsmith_div_u32(firstLeadingBit(arg_1.x), 48730u), arg_1.x));
    global0 = func_1();
    let var_2 = arg_2;
    var var_3 = Struct_1(true);
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(reverseBits(_wgslsmith_sub_i32(u_input.a.x, -u_input.a.x)) >= 7888i);
    global0 = Struct_1(func_4(func_1(), ~firstTrailingBit(max(vec2<u32>(1u, 0u), vec2<u32>(0u, 83779u))), Struct_2(vec3<i32>(0i, ~(-1i), -11973i & u_input.a.x), u_input.a.x, func_1(), 1f)));
    global0 = func_1();
    var var_0 = Struct_2(~_wgslsmith_sub_vec3_i32(u_input.a.xww, u_input.a.yww), 28344i, Struct_1(any(vec3<bool>(global0.a, global0.a, false)) | func_1().a), 474f);
    global0 = Struct_1(true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(832f, _wgslsmith_f_op_f32(abs(var_0.d)), _wgslsmith_f_op_f32(var_0.d + var_0.d))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.d, var_0.d, var_0.d)))), vec2<f32>(_wgslsmith_f_op_f32(ceil(var_0.d)), _wgslsmith_f_op_f32(-var_0.d)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1559f, var_0.d, _wgslsmith_div_f32(var_0.d, -1163f))), -3111i);
}

