struct Struct_1 {
    a: vec3<u32>,
    b: u32,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: vec2<f32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(-578f, -156f, 1063f, 358f);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: Struct_2) -> f32 {
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, global0.x, -1317f, global0.x))), vec4<f32>(-1560f, _wgslsmith_f_op_f32(636f * -597f), -175f, 205f), vec4<bool>(true, true, all(vec3<bool>(false, true, false)), true))))));
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(global0.x, global0.x)), _wgslsmith_f_op_f32(max(590f, global0.x)), global0.x, _wgslsmith_f_op_f32(select(731f, global0.x, true))), vec4<f32>(global0.x, global0.x, _wgslsmith_f_op_f32(max(global0.x, -686f)), _wgslsmith_f_op_f32(1060f - global0.x)))));
    var var_0 = arg_0.a.x;
    let var_1 = vec4<i32>(_wgslsmith_mod_i32(u_input.b, ~countOneBits(u_input.b) << (max(~25490u, 1u) % 32u)), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, -39088i, _wgslsmith_add_i32(countOneBits(u_input.b), _wgslsmith_mult_i32(-594i, u_input.b)), u_input.b), ~(vec4<i32>(-1i) * -vec4<i32>(u_input.b, 34688i, u_input.b, u_input.b))), 1i, 1i);
    let var_2 = u_input.c;
    return global0.x;
}

fn func_2(arg_0: u32, arg_1: vec4<f32>) -> bool {
    let var_0 = Struct_1(u_input.a.xwz, _wgslsmith_dot_vec3_u32(select(~vec3<u32>(35802u, 1u, 1u) & (u_input.a.wzy >> (u_input.a.xwy % vec3<u32>(32u))), u_input.a.zyy, select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), ~u_input.a.zyw));
    let var_1 = Struct_3(Struct_2(select(_wgslsmith_mult_vec2_u32(_wgslsmith_add_vec2_u32(u_input.a.wz, var_0.a.zz), u_input.c), vec2<u32>(1u, u_input.a.x >> (4423u % 32u)), vec2<bool>(true, true))), -(~_wgslsmith_dot_vec3_i32(vec3<i32>(-18048i, u_input.b, u_input.b), firstLeadingBit(vec3<i32>(66503i, -1i, -1i)))), vec2<f32>(_wgslsmith_f_op_f32(func_3(Struct_2(_wgslsmith_clamp_vec2_u32(u_input.a.ww, vec2<u32>(6713u, 82835u), vec2<u32>(var_0.b, 22539u))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(901f)) * -452f)), Struct_2(_wgslsmith_div_vec2_u32(u_input.c, vec2<u32>(4294967295u, arg_0))));
    var var_2 = abs(2147483647i);
    let var_3 = select(!any(select(vec2<bool>(true, true), vec2<bool>(true, false), all(vec2<bool>(false, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(983f, -348f, var_1.a.a.x == var_0.b))) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_1.c.x)) * -199f) + _wgslsmith_f_op_f32(arg_1.x - _wgslsmith_f_op_f32(-293f - arg_1.x))), any(vec2<bool>(true, true)));
    var var_4 = ~(~(~((u_input.c.x << (u_input.c.x % 32u)) & (4294967295u >> (var_1.a.a.x % 32u)))));
    return any(!vec2<bool>(any(vec3<bool>(var_3, var_3, var_3)) | true, u_input.c.x != ~u_input.a.x));
}

fn func_4(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: vec3<bool>, arg_3: Struct_2) -> f32 {
    var var_0 = select(arg_2, !(!(!vec3<bool>(arg_2.x, true, true))), vec3<bool>(all(!vec3<bool>(false, true, arg_2.x)), !(!(arg_2.x && false)), all(arg_2.zx)));
    var_0 = !(!arg_2);
    let var_1 = Struct_1(u_input.a.wxw, 71590u);
    var_0 = vec3<bool>((_wgslsmith_sub_u32(0u, var_1.b) << (22367u % 32u)) != arg_3.a.x, all(arg_2.zz), true);
    var var_2 = !var_0.x;
    return _wgslsmith_f_op_f32(-1140f * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_3(arg_0)), _wgslsmith_f_op_f32(func_3(arg_0)))));
}

fn func_1() -> bool {
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global0.x, -912f, -1486f, global0.x))), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global0.x, global0.x, -527f, global0.x))), true))) + _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, global0.x, global0.x, global0.x) - vec4<f32>(-257f, global0.x, -1058f, -1045f))))))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global0.x)) * _wgslsmith_f_op_f32(f32(-1f) * -865f)), global0.x, 164f)));
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(Struct_2(u_input.a.ww), ~countOneBits(~vec4<i32>(2147483647i, 1i, 1i, -1i)), vec3<bool>(true, func_2(u_input.a.x ^ u_input.a.x, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-148f, 958f, global0.x, 101f))), true), Struct_2(vec2<u32>(~38567u, u_input.c.x)))));
    var_0 = 1608f;
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(global0.x - global0.x), _wgslsmith_f_op_f32(abs(-1167f)), -721f, 157f), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(917f, global0.x, global0.x, global0.x), vec4<f32>(-840f, global0.x, global0.x, global0.x), vec4<bool>(true, true, true, false)))))))) + _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(-1000f, 2885f, false)), 681f, _wgslsmith_div_f32(-576f, global0.x), _wgslsmith_f_op_f32(-global0.x))))));
    var var_1 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x + 211f)), -1628f, global0.x), vec4<f32>(-468f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(367f + global0.x), _wgslsmith_f_op_f32(-global0.x)), global0.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1092f * -845f), _wgslsmith_f_op_f32(-global0.x), func_2(4294967295u, vec4<f32>(1000f, global0.x, -2867f, global0.x))))), select(vec4<bool>(all(vec4<bool>(true, true, true, false)), false, all(vec2<bool>(false, false)), true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), any(vec4<bool>(true, true, true, true))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(1173f * _wgslsmith_f_op_f32(min(global0.x, 1000f))), -988f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-624f * global0.x) - _wgslsmith_f_op_f32(global0.x * global0.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global0.x + -326f), 269f, any(vec3<bool>(false, true, true))))))));
    return !(~_wgslsmith_sub_i32(0i, u_input.b | u_input.b) < u_input.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.x, -188f));
    global0 = vec4<f32>(global0.x, _wgslsmith_f_op_f32(global0.x - 535f), _wgslsmith_f_op_f32(f32(-1f) * -707f), -323f);
    let var_1 = 0i;
    var var_2 = false;
    let var_3 = _wgslsmith_mod_vec2_u32(firstTrailingBit(u_input.a.yx), u_input.c);
    let var_4 = select(vec4<bool>(all(vec4<bool>(any(vec4<bool>(true, false, false, false)), true, false, false)), true || func_1(), true, all(select(vec3<bool>(false, false, true), select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false)), true))), !vec4<bool>(abs(var_3.x) < var_3.x, true, ~var_1 < abs(-36242i), func_2(reverseBits(0u), _wgslsmith_f_op_vec4_f32(vec4<f32>(286f, 188f, var_0, var_0) - vec4<f32>(global0.x, 1900f, -801f, -949f)))), true);
    var_2 = true;
    var_2 = !(!(global0.x >= global0.x)) || false;
    let x = u_input.a;
    s_output = StorageBuffer(global0.xz, _wgslsmith_f_op_f32(1000f * var_0));
}

