struct Struct_1 {
    a: vec3<f32>,
    b: vec2<i32>,
    c: vec2<f32>,
    d: i32,
    e: vec2<u32>,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: vec3<f32>,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(i32(-2147483648), -58950i, i32(-2147483648), -75210i);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_2() -> vec2<f32> {
    let var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-572f * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1000f, 222f)))))), _wgslsmith_f_op_f32(f32(-1f) * -1492f), !any(vec2<bool>(true, true))));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(1221f, -147f) * vec2<f32>(1365f, -1473f)), vec2<f32>(var_0, var_0))), vec2<f32>(-1054f, _wgslsmith_f_op_f32(552f - 2047f))) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(select(-1000f, var_0, true)), _wgslsmith_f_op_f32(-1000f * var_0)), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-841f, -1537f), vec2<f32>(706f, var_0))), vec2<f32>(var_0, 1063f))), true))));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<i32>) -> i32 {
    var var_0 = vec2<i32>(~26854i >> (arg_0.e.x % 32u), _wgslsmith_dot_vec3_i32(-vec3<i32>(2147483647i, arg_0.d, i32(-1i) * -37458i), arg_1.xwz));
    let var_1 = arg_0.a;
    var_0 = _wgslsmith_clamp_vec2_i32(_wgslsmith_sub_vec2_i32(arg_0.b, u_input.a.zw), vec2<i32>(arg_0.d, -arg_1.x), vec2<i32>(_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(12368i, var_0.x, 0i, global0.x), arg_1), abs(i32(-1i) * -1i)), _wgslsmith_div_i32(abs(-19348i), _wgslsmith_dot_vec2_i32(~vec2<i32>(global0.x, var_0.x), min(arg_1.xw, vec2<i32>(var_0.x, global0.x))))));
    var var_2 = Struct_3(Struct_2(vec4<bool>(true, true, true, true)), arg_0.e.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, var_1.x, var_1.x) * vec3<f32>(var_1.x, var_1.x, 1000f)), arg_0.a, vec3<bool>(true, true, true)))), u_input.a.yyx);
    global0 = u_input.a;
    return arg_1.x;
}

fn func_1(arg_0: vec4<f32>) -> vec3<f32> {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -520f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1386f, arg_0.x)) + _wgslsmith_f_op_f32(-arg_0.x)), arg_0.x)), _wgslsmith_sub_vec2_i32(_wgslsmith_mult_vec2_i32(global0.yx, global0.xy | vec2<i32>(1i, u_input.a.x)), u_input.a.xy), _wgslsmith_f_op_vec2_f32(func_2()), func_3(Struct_1(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0.x, 1087f, 166f), vec3<f32>(arg_0.x, 1290f, -122f), false)), global0.xx << (u_input.c.zy % vec2<u32>(32u)), arg_0.yy, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, global0.x), u_input.a.xz), select(u_input.c.xw, u_input.c.xy, true)), -min(vec4<i32>(1i, 33968i, 1i, -1i), u_input.a)) | global0.x, _wgslsmith_mod_vec2_u32(_wgslsmith_clamp_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.c.x, 4294967295u), vec2<u32>(1u, 22399u)), ~(~u_input.c.wx), u_input.c.zx), vec2<u32>(_wgslsmith_dot_vec3_u32(u_input.c.zzx >> (u_input.c.zyy % vec3<u32>(32u)), vec3<u32>(u_input.c.x, 1u, u_input.c.x)), ~1u)));
    global0 = vec4<i32>(33047i, firstTrailingBit(-1i), i32(-1i) * -7642i, -28611i);
    var var_1 = !(true && (max(var_0.e.x, 445u) == 1u)) | all(vec3<bool>(true, true, true));
    var var_2 = Struct_3(Struct_2(vec4<bool>(true, true, true, true)), ~u_input.c.x, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, _wgslsmith_f_op_f32(step(-1868f, 623f)), _wgslsmith_f_op_f32(var_0.a.x - arg_0.x))))), u_input.a.yxz << (u_input.c.www % vec3<u32>(32u)));
    var var_3 = Struct_3(Struct_2(select(vec4<bool>(false, false || var_2.a.a.x, var_2.a.a.x, var_2.a.a.x || var_2.a.a.x), vec4<bool>(true, false || var_2.a.a.x, !var_2.a.a.x, var_2.a.a.x), true)), _wgslsmith_mod_u32(var_2.b, u_input.c.x), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.a - vec3<f32>(394f, var_2.c.x, var_2.c.x))))), var_2.d);
    return var_2.c;
}

fn func_4(arg_0: Struct_1, arg_1: vec2<f32>) -> Struct_2 {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_vec2_f32(func_2()).x, _wgslsmith_f_op_f32(arg_0.c.x + 1000f));
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_0, arg_1.x, arg_0.a.x))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.x, -475f, 113f))))))), firstTrailingBit(u_input.a.zy), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(arg_0.c.x * 1004f), 436f))), -u_input.a.x, arg_0.e);
    return Struct_2(select(select(vec4<bool>(true, true, true, true), vec4<bool>(var_1.e.x != arg_0.e.x, true, false, true), vec4<bool>(true, true, true, any(vec3<bool>(false, false, false)))), select(vec4<bool>(true, all(vec2<bool>(false, false)), 1u == arg_0.e.x, false), select(select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false), true), select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true)), var_1.e.x != 10174u), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, false), true), vec4<bool>(true, true, true, true))), !vec4<bool>(any(vec4<bool>(false, true, false, false)), true, any(vec3<bool>(false, false, true)), true)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~(-_wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(global0.x, 2147483647i), ~global0.x, -39463i, 1i), _wgslsmith_div_vec4_i32(u_input.a, firstLeadingBit(u_input.a))));
    var var_0 = func_4(Struct_1(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1253f, -149f, 833f, -913f)))))), global0.wz, vec2<f32>(_wgslsmith_div_f32(453f, 1030f), _wgslsmith_f_op_f32(trunc(548f))), ~u_input.a.x, ~abs(vec2<u32>(u_input.b, 1u)) ^ vec2<u32>(abs(1u), _wgslsmith_div_u32(1u, 1u))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1847f, 636f) * vec2<f32>(1676f, -1000f)), vec2<f32>(_wgslsmith_f_op_f32(797f + -764f), _wgslsmith_f_op_vec3_f32(func_1(vec4<f32>(319f, 180f, 1186f, 1455f))).x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(104f, 1692f))), _wgslsmith_div_vec2_f32(vec2<f32>(-2051f, -519f), vec2<f32>(-298f, 841f)), true))))));
    let var_1 = _wgslsmith_mod_u32(43435u, ~(1u << (u_input.c.x % 32u)) ^ firstTrailingBit(max(u_input.b, u_input.c.x))) ^ 12605u;
    global0 = ~vec4<i32>(_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, -17722i, -2147483647i), -vec3<i32>(-54728i, u_input.a.x, global0.x)), ~u_input.a.x), -reverseBits(global0.x) >> (((u_input.c.x | var_1) & var_1) % 32u), -u_input.a.x, firstTrailingBit(u_input.a.x));
    global0 = select(_wgslsmith_mod_vec4_i32(abs(_wgslsmith_mod_vec4_i32(vec4<i32>(1i, 25304i, 5902i, -2147483647i), vec4<i32>(0i, 24256i, global0.x, global0.x))), u_input.a), vec4<i32>(~global0.x, firstTrailingBit(reverseBits(select(-2147483647i, -2147483647i, false))), _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-2798i, u_input.a.x, -2147483647i, u_input.a.x), vec4<i32>(global0.x, u_input.a.x, 0i, -25777i)), ~global0.x, ~u_input.a.x), vec3<i32>(-1i, -1i, global0.x) & _wgslsmith_add_vec3_i32(global0.zxy, vec3<i32>(1665i, global0.x, 1i))), -countOneBits(global0.x)), var_0.a);
    var_0 = func_4(Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(210f + -130f), _wgslsmith_f_op_f32(1350f - 229f), _wgslsmith_f_op_f32(f32(-1f) * -1353f))), vec2<i32>(select(u_input.a.x, global0.x ^ global0.x, true), u_input.a.x), vec2<f32>(1551f, _wgslsmith_f_op_f32(f32(-1f) * -653f)), -firstLeadingBit(~(-49039i)), u_input.c.zy), vec2<f32>(1281f, _wgslsmith_f_op_f32(-870f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-222f + 397f)))));
    let x = u_input.a;
    s_output = StorageBuffer(22035i);
}

