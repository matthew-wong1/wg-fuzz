struct Struct_1 {
    a: bool,
    b: f32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec2<f32>,
}

struct Struct_3 {
    a: i32,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: i32,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_1) -> vec3<bool> {
    var var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(749f, arg_0.b, -1000f) + vec3<f32>(189f, arg_0.b, arg_0.b)))))), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_0.b, arg_0.b))));
    var var_1 = arg_0;
    let var_2 = Struct_3(u_input.d >> (0u % 32u), -_wgslsmith_add_vec3_i32(min(~vec3<i32>(u_input.d, -2147483647i, u_input.d), reverseBits(vec3<i32>(u_input.c, 15854i, 1i))), abs(vec3<i32>(u_input.c, u_input.d, -1i)) | vec3<i32>(u_input.d, u_input.c, u_input.c)));
    let var_3 = ~(max(~u_input.e & vec2<u32>(u_input.a.x, 50116u), ~vec2<u32>(0u, 26241u)) & _wgslsmith_div_vec2_u32(select(~vec2<u32>(u_input.e.x, 22501u), ~vec2<u32>(31537u, u_input.a.x), true), ~u_input.b.xw));
    let var_4 = vec3<bool>(var_1.a && (true && !arg_0.a), true, true);
    return vec3<bool>(var_1.a, any(var_4), true);
}

fn func_2(arg_0: u32, arg_1: Struct_2, arg_2: vec2<u32>, arg_3: Struct_1) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(arg_3.b, arg_3.b)));
    let var_1 = vec4<i32>(-u_input.c, _wgslsmith_dot_vec3_i32(max(~vec3<i32>(u_input.d, u_input.d, -15751i), _wgslsmith_clamp_vec3_i32(vec3<i32>(1i, 9564i, 22990i), vec3<i32>(-10086i, -3242i, u_input.d), vec3<i32>(u_input.d, 2914i, 0i))), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.d, -68584i, -2147483647i), _wgslsmith_mult_vec3_i32(vec3<i32>(0i, -2147483647i, u_input.c), vec3<i32>(-2147483647i, u_input.c, u_input.d)))) >> (4294967295u % 32u), 0i, ~u_input.c);
    let var_2 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_1.a))) + vec3<f32>(_wgslsmith_f_op_f32(294f - -547f), 197f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_1.a.x * -1075f))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(arg_1.b.x)), -138f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(887f * 1613f))) - _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(689f, arg_3.b, arg_3.b) + arg_1.a)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(min(arg_1.a, vec3<f32>(442f, -224f, arg_1.b.x))), _wgslsmith_f_op_vec3_f32(floor(arg_1.a))))))), vec3<bool>(!arg_3.a, arg_3.a, arg_3.a)));
    var var_3 = arg_1;
    let var_4 = select(vec3<i32>(u_input.c, 1i, var_1.x), vec3<i32>(_wgslsmith_dot_vec4_i32(-(var_1 & var_1), ~vec4<i32>(-34911i, u_input.d, 18402i, 2147483647i)), var_1.x, u_input.c), func_3(arg_3));
    return var_1.x << (~40243u % 32u);
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: vec4<i32>, arg_3: vec4<f32>) -> i32 {
    let var_0 = u_input.a.x;
    var var_1 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(-arg_3.x), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-1390f, _wgslsmith_div_f32(arg_3.x, 652f)), _wgslsmith_div_f32(arg_1.a.x, arg_1.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(arg_3.x, arg_0.x)))))), arg_0.zy);
    let var_2 = -arg_2.zx;
    let var_3 = ~(~countOneBits(vec3<i32>(-1i, u_input.c, func_2(var_0, arg_1, vec2<u32>(38290u, u_input.a.x), Struct_1(false, var_1.a.x)))));
    var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(max(arg_0, var_1.a)), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -316f), var_1.a.x));
    return 2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mult_i32(-3139i, abs(_wgslsmith_dot_vec2_i32(firstLeadingBit(abs(vec2<i32>(-2147483647i, u_input.d))), vec2<i32>(func_1(vec3<f32>(446f, -187f, -1056f), Struct_2(vec3<f32>(236f, 393f, 1088f), vec2<f32>(-668f, 1380f)), vec4<i32>(u_input.c, 42329i, u_input.c, 2147483647i), vec4<f32>(-316f, -1430f, -772f, 637f)), func_2(u_input.a.x, Struct_2(vec3<f32>(-330f, 2190f, -154f), vec2<f32>(-645f, -176f)), u_input.b.yz, Struct_1(true, -213f))))));
    let var_1 = vec4<bool>(!any(vec3<bool>(true, true, true)), true, func_3(Struct_1(func_3(Struct_1(false, -970f)).x, 1397f)).x, all(select(func_3(Struct_1(true, -2037f)).zz, vec2<bool>(true, u_input.e.x >= u_input.b.x), !func_3(Struct_1(true, 1289f)).zy)));
    let var_2 = vec4<u32>(~45220u ^ select(29473u, ~u_input.e.x, true), 57349u, u_input.e.x, abs(select(u_input.b.x, u_input.a.x, var_1.x) | ~u_input.b.x)) ^ firstTrailingBit(u_input.b);
    let var_3 = (true && all(vec2<bool>(false, var_2.x != 29674u))) | true;
    let var_4 = !(!(!select(!var_1, select(vec4<bool>(var_1.x, true, false, true), vec4<bool>(var_1.x, false, var_1.x, var_1.x), vec4<bool>(var_3, false, var_3, false)), !vec4<bool>(var_3, true, var_3, var_1.x))));
    let var_5 = Struct_3(select(-1i >> (~u_input.b.x % 32u), countOneBits(u_input.d | -19280i) ^ var_0, (_wgslsmith_add_u32(u_input.b.x, 19294u) ^ _wgslsmith_mod_u32(u_input.b.x, 23214u)) > ~countOneBits(79184u)), _wgslsmith_div_vec3_i32(firstTrailingBit(max(vec3<i32>(22279i, -22873i, -18807i), vec3<i32>(-1i, -10480i, u_input.d)) ^ ~vec3<i32>(-7073i, u_input.c, 10524i)), vec3<i32>(~firstLeadingBit(u_input.d), var_0, var_0)));
    let var_6 = var_5;
    let var_7 = _wgslsmith_clamp_u32(48683u, 56756u, ~u_input.a.x);
    let var_8 = _wgslsmith_div_vec2_u32(var_2.yy, vec2<u32>(0u, var_2.x));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(-(~vec2<i32>(0i, 1i))), min(abs(~0u) | firstTrailingBit(var_7), reverseBits(abs(~var_2.x))));
}

