struct Struct_1 {
    a: vec4<bool>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: f32,
    c: f32,
}

struct Struct_4 {
    a: Struct_1,
    b: bool,
    c: Struct_2,
}

struct Struct_5 {
    a: vec4<bool>,
    b: vec3<f32>,
    c: u32,
    d: Struct_2,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: u32,
    d: u32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: vec3<f32> = vec3<f32>(345f, 773f, 674f);

var<private> global2: f32;

var<private> global3: u32 = 6288u;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: i32) -> vec4<bool> {
    var var_0 = Struct_1(select(select(vec4<bool>(any(vec4<bool>(true, true, false, true)), global0.x >= -3392i, true, select(true, false, true)), vec4<bool>(false, all(vec4<bool>(false, false, true, false)), arg_2 < u_input.c.x, true), any(vec4<bool>(true, true, true, true))), select(vec4<bool>(true, true, all(vec3<bool>(true, true, false)), true), vec4<bool>(all(vec2<bool>(false, true)), all(vec3<bool>(false, true, true)), any(vec4<bool>(true, false, false, true)), false), true), vec4<bool>(any(select(vec2<bool>(true, true), vec2<bool>(true, false), true)), true, true, true)), ~(~abs(vec2<u32>(4294967295u, 10757u)) | arg_0.a.xz));
    let var_1 = 1f == _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(global1.x))));
    var var_2 = Struct_3(!var_0.a.xzy, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -457f), _wgslsmith_f_op_f32(502f * arg_1.x))), 209f)), 798f);
    var var_3 = Struct_5(vec4<bool>(true, all(vec2<bool>(any(var_2.a.zy), var_0.a.x)), all(var_0.a), all(var_2.a.yy)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(154f, 320f, arg_1.x))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1147f)), _wgslsmith_f_op_f32(max(-420f, _wgslsmith_f_op_f32(round(878f)))), global1.x)), var_0.b.x, arg_0, !(_wgslsmith_f_op_f32(-global1.x) == _wgslsmith_f_op_f32(sign(859f))));
    let var_4 = var_3.b.xz;
    return var_0.a;
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_2) -> Struct_1 {
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-353f)))))) - -1312f);
    var var_0 = arg_1;
    var var_1 = abs(arg_1.a);
    var var_2 = Struct_4(Struct_1(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, all(vec4<bool>(false, false, false, false)), true), func_3(Struct_2(vec3<u32>(4294967295u, arg_1.a.x, 0u)), vec3<f32>(global1.x, global1.x, global1.x), 46161i)), arg_1.a.yy), !(!select(false, false, false) && true), Struct_2(~(~_wgslsmith_clamp_vec3_u32(var_0.a, vec3<u32>(arg_1.a.x, arg_0.x, arg_1.a.x), vec3<u32>(0u, var_1.x, arg_1.a.x)))));
    let var_3 = Struct_1(var_2.a.a, vec2<u32>(select(_wgslsmith_clamp_u32(_wgslsmith_div_u32(50637u, arg_1.a.x), var_1.x, 15281u), ~u_input.b, !var_2.a.a.x), reverseBits(u_input.a)));
    return Struct_1(vec4<bool>(true, var_3.a.x, true, var_2.b), vec2<u32>(_wgslsmith_dot_vec4_u32(countOneBits(~arg_0), vec4<u32>(u_input.d, 8349u, _wgslsmith_div_u32(1u, 15885u), var_1.x)), ~_wgslsmith_sub_u32(reverseBits(21488u), ~u_input.d)));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3) -> Struct_3 {
    var var_0 = Struct_4(Struct_1(select(select(arg_0.a, func_3(Struct_2(vec3<u32>(u_input.d, arg_0.b.x, 0u)), vec3<f32>(-1202f, arg_1.c, -142f), global0.x), vec4<bool>(true, true, arg_0.a.x, arg_1.a.x)), arg_0.a, all(arg_1.a)), ~abs(~vec2<u32>(u_input.d, arg_0.b.x))), true, Struct_2(min(abs(vec3<u32>(arg_0.b.x, u_input.b, arg_0.b.x)), _wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, 0u, u_input.d), ~vec3<u32>(22689u, 4294967295u, arg_0.b.x), vec3<u32>(u_input.b, 0u, arg_0.b.x)))));
    var var_1 = _wgslsmith_clamp_vec3_i32(reverseBits(select(-u_input.c ^ vec3<i32>(0i, -1i, 2147483647i), select(u_input.c, ~u_input.c, var_0.c.a.x > 31589u), false)), ~abs(select(-vec3<i32>(u_input.c.x, 2147483647i, global0.x), _wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i, global0.x, u_input.c.x), u_input.c), arg_1.a)), vec3<i32>(_wgslsmith_sub_i32(min(u_input.c.x, -global0.x), _wgslsmith_dot_vec2_i32(select(u_input.c.zy, vec2<i32>(global0.x, 0i), arg_1.a.xz), vec2<i32>(2147483647i, global0.x))), u_input.c.x & _wgslsmith_sub_i32(-1i, -1i), global0.x));
    let var_2 = arg_1;
    var var_3 = min(var_0.c.a, vec3<u32>(_wgslsmith_add_u32(reverseBits(_wgslsmith_sub_u32(var_0.a.b.x, var_0.c.a.x)), 1u), _wgslsmith_div_u32(1u, firstLeadingBit(min(u_input.a, 0u))), abs(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, var_0.a.b.x, 0u, u_input.d), vec4<u32>(0u, 4294967295u, u_input.a, 1283u)))));
    global1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(-725f)), _wgslsmith_f_op_f32(f32(-1f) * -940f), var_2.b)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-152f, global1.x, 178f))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-1416f, arg_1.c, global1.x) + vec3<f32>(-1140f, arg_1.b, -1019f)))), vec3<bool>(false, var_0.a.a.x, var_2.a.x))));
    return var_2;
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: i32) -> f32 {
    var var_0 = countOneBits(global0.x) ^ ~_wgslsmith_clamp_i32(-1i, ~14719i, firstTrailingBit(global0.x << (arg_1.b.x % 32u)));
    let var_1 = _wgslsmith_mult_vec2_u32(_wgslsmith_add_vec2_u32(abs(~arg_1.b), max(~(arg_1.b & arg_1.b), _wgslsmith_add_vec2_u32(~vec2<u32>(u_input.a, u_input.b), reverseBits(vec2<u32>(0u, arg_1.b.x))))), vec2<u32>(0u, 0u));
    var var_2 = reverseBits(vec3<i32>(abs(-43372i), global0.x, -(i32(-1i) * -arg_2)));
    var_2 = firstLeadingBit(u_input.c);
    var var_3 = func_4(func_2(_wgslsmith_add_vec4_u32(~vec4<u32>(0u, u_input.a, u_input.b, var_1.x), select(~vec4<u32>(var_1.x, 1u, 1u, 45741u), ~vec4<u32>(11536u, arg_1.b.x, u_input.d, var_1.x), select(vec4<bool>(true, false, false, true), arg_1.a, arg_1.a.x))), Struct_2(_wgslsmith_sub_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(0u, 11710u, arg_1.b.x), vec3<u32>(72449u, 57984u, 52174u)), ~vec3<u32>(arg_1.b.x, 12523u, 21593u)))), Struct_3(vec3<bool>(all(func_3(Struct_2(vec3<u32>(4294967295u, u_input.b, arg_1.b.x)), vec3<f32>(global1.x, global1.x, global1.x), u_input.c.x).zwy), _wgslsmith_f_op_f32(-global1.x) < _wgslsmith_f_op_f32(sign(global1.x)), (arg_1.a.x != true) != (global1.x > 369f)), global1.x, -290f));
    return global1.x;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = u_input.a;
    global2 = -1280f;
    global3 = u_input.b;
    let var_0 = _wgslsmith_div_f32(-239f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec2<bool>(true, false), Struct_1(vec4<bool>(true, true, true, true), vec2<u32>(55864u, 10512u)), global0.x)))))));
    global1 = vec3<f32>(121f, -1784f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) + -350f))));
    let x = u_input.a;
    s_output = StorageBuffer(118582u, 375f, u_input.a ^ u_input.a, 74553u, _wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(~abs(vec4<u32>(44975u, u_input.b, u_input.b, 18522u)), countOneBits(~vec4<u32>(48599u, u_input.a, u_input.d, 64038u))), vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(0u, u_input.a, u_input.d), _wgslsmith_div_u32(38035u, u_input.a)), ~u_input.b ^ _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 124698u, 21878u), vec3<u32>(4294967295u, u_input.b, 30256u)), ~1u, _wgslsmith_sub_u32(1u, 0u))));
}

