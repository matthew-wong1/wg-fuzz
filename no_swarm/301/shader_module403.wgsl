struct Struct_1 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_1) -> vec4<i32> {
    var var_0 = arg_0;
    var var_1 = _wgslsmith_sub_vec4_i32(vec4<i32>(1i, u_input.b.x, _wgslsmith_sub_i32(_wgslsmith_add_i32(1i, ~u_input.b.x), u_input.b.x), u_input.b.x), vec4<i32>(~abs(select(1i, u_input.a.x, false)), -abs(~u_input.b.x), ~(~u_input.a.x), -11908i));
    let var_2 = u_input.b;
    var var_3 = Struct_1(~(~reverseBits(firstTrailingBit(var_0.a))));
    let var_4 = ~u_input.c.x;
    return firstLeadingBit(~_wgslsmith_sub_vec4_i32(~(~vec4<i32>(-8666i, var_1.x, var_2.x, u_input.a.x)), reverseBits(~vec4<i32>(var_1.x, 29934i, u_input.b.x, var_2.x))));
}

fn func_2(arg_0: bool, arg_1: vec4<f32>, arg_2: vec4<f32>, arg_3: f32) -> u32 {
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(floor(arg_1.zxw))))) - _wgslsmith_f_op_vec3_f32(arg_1.yzw + vec3<f32>(arg_1.x, _wgslsmith_f_op_f32(-380f - global0.x), -467f)));
    global0 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3, arg_3, 753f)))))));
    var var_0 = _wgslsmith_div_i32(u_input.b.x, -u_input.b.x);
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3, 1086f, _wgslsmith_f_op_f32(-arg_3))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_2.zyx + arg_2.wzx) * arg_1.yzy) + arg_2.zxw)));
    let var_1 = _wgslsmith_mod_vec4_i32(-func_3(Struct_1(abs(u_input.c.xzx))), ~(_wgslsmith_mod_vec4_i32(-vec4<i32>(u_input.b.x, -2147483647i, u_input.b.x, 0i), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.b.x, -2147483647i, u_input.b.x, u_input.b.x), vec4<i32>(u_input.a.x, -2147483647i, u_input.b.x, -2147483647i))) ^ -(vec4<i32>(20601i, u_input.a.x, u_input.a.x, u_input.a.x) << (u_input.c % vec4<u32>(32u)))));
    return min(_wgslsmith_mult_u32(4294967295u, ~u_input.c.x), 31672u);
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32, arg_3: vec4<bool>) -> vec3<bool> {
    global0 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_2))), arg_2, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(-1058f, global0.x), _wgslsmith_f_op_f32(-1125f * -888f)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, arg_2, 490f) - vec3<f32>(arg_2, 728f, arg_2))), _wgslsmith_f_op_vec3_f32(vec3<f32>(1149f, arg_2, -637f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, -957f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, arg_2, arg_2) - vec3<f32>(arg_2, global0.x, global0.x)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(922f, global0.x, global0.x), vec3<f32>(-361f, arg_2, arg_2))), !arg_3.x)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, global0.x, 1042f)))), !(4294967295u != func_2(false, vec4<f32>(global0.x, -1000f, -247f, global0.x), vec4<f32>(-3735f, global0.x, 1898f, arg_2), 402f)))), select(arg_3.x, false, select(arg_3.x, select(arg_3.x, any(vec2<bool>(arg_3.x, arg_3.x)), arg_3.x), any(select(vec2<bool>(arg_3.x, arg_3.x), arg_3.yy, false))))));
    var var_0 = arg_3.yzx;
    let var_1 = true;
    var_0 = !select(!vec3<bool>(any(arg_3.wwx), any(arg_3), true), vec3<bool>(false, true, all(select(arg_3.xw, arg_3.wy, arg_3.yz))), arg_3.xxy);
    var var_2 = ~_wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_div_u32(min(1u, arg_0.a.x), ~13292u), 4294967295u, 55793u), ~vec3<u32>(0u, _wgslsmith_dot_vec3_u32(arg_0.a, arg_0.a), _wgslsmith_div_u32(54867u, arg_1.a.x)));
    return !(!(!(!arg_3.yxw)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.c.x < ~_wgslsmith_dot_vec4_u32(~(~vec4<u32>(0u, 4294967295u, u_input.c.x, 90447u)), u_input.c);
    var_0 = any(select(!select(func_1(Struct_1(u_input.c.wxy), Struct_1(vec3<u32>(26036u, 16255u, 6938u)), global0.x, vec4<bool>(false, false, true, false)), select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(false, true, true)), true), vec3<bool>(true, true, true), true));
    let var_1 = Struct_1(u_input.c.zyw);
    let var_2 = _wgslsmith_dot_vec2_u32(~abs(select(var_1.a.zx, select(u_input.c.xw, vec2<u32>(u_input.c.x, var_1.a.x), false), false)), abs(~select(firstTrailingBit(u_input.c.yw), u_input.c.xz, all(vec2<bool>(true, true)))));
    var var_3 = var_1;
    var var_4 = var_1;
    var var_5 = _wgslsmith_dot_vec4_i32(countOneBits(func_3(Struct_1(vec3<u32>(4294967295u, 1u, 27625u)))), func_3(var_1)) >> ((var_1.a.x & _wgslsmith_dot_vec3_u32(vec3<u32>(1u, reverseBits(var_2), var_2), _wgslsmith_sub_vec3_u32(u_input.c.zxx, abs(u_input.c.xyx)))) % 32u);
    var var_6 = Struct_1(~select(_wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(67932u, u_input.c.x, 0u), var_1.a), var_1.a), ~vec3<u32>(35197u, var_2, 0u) << (abs(vec3<u32>(0u, 2444u, 0u)) % vec3<u32>(32u)), all(select(vec2<bool>(false, true), vec2<bool>(false, false), false))));
    global0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1238f), _wgslsmith_f_op_f32(exp2(global0.x)), _wgslsmith_f_op_f32(abs(global0.x))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-954f, global0.x, global0.x)), vec3<f32>(global0.x, global0.x, global0.x)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(1000f * global0.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global0.x))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(381f, global0.x))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(907f, 1139f, -1401f), vec3<f32>(144f, global0.x, global0.x), vec3<bool>(true, false, true)))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(753f, -284f, 188f), vec3<f32>(546f, -1369f, global0.x), vec3<bool>(false, false, true))), _wgslsmith_div_vec3_f32(vec3<f32>(-1801f, 977f, global0.x), vec3<f32>(global0.x, global0.x, -542f)))), func_1(var_1, Struct_1(var_1.a), _wgslsmith_f_op_f32(f32(-1f) * -300f), vec4<bool>(true, true, true, true))))), any(vec2<bool>(true, true))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, vec4<i32>(_wgslsmith_add_i32(-13877i, -1i >> (~var_2 % 32u)), -1i, ~(~(~(-1i))), _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(-vec3<i32>(-17426i, u_input.a.x, 1i), ~vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), ~vec3<i32>(-2147483647i, -1838i, u_input.b.x)), _wgslsmith_div_vec3_i32(select(vec3<i32>(u_input.b.x, 27166i, u_input.a.x), vec3<i32>(u_input.a.x, -1i, 0i), false), vec3<i32>(u_input.b.x, u_input.a.x, u_input.a.x)))), _wgslsmith_f_op_f32(f32(-1f) * -1000f), u_input.b.x);
}

