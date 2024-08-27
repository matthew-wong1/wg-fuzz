struct Struct_1 {
    a: bool,
    b: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: Struct_1 = Struct_1(false, 15697i);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: bool, arg_1: vec3<i32>) -> i32 {
    global0 = !vec3<bool>(!((true & global1.a) & (-2147483647i < global1.b)), true, true);
    let var_0 = _wgslsmith_sub_vec4_u32(~_wgslsmith_mult_vec4_u32(vec4<u32>(abs(u_input.b.x), ~30174u, 4294967295u, u_input.b.x << (6144u % 32u)), ~min(u_input.b, vec4<u32>(6907u, u_input.b.x, 4294967295u, 31731u))), select(countOneBits(_wgslsmith_mult_vec4_u32(u_input.b, u_input.b)), u_input.b, vec4<bool>(all(!global0.xz), arg_0, false, !global0.x)));
    global1 = Struct_1(any(global0.yy), min(_wgslsmith_add_i32(u_input.a.x, abs(max(-64339i, global1.b))), u_input.a.x));
    global0 = !(!select(select(!vec3<bool>(arg_0, true, false), !vec3<bool>(global1.a, true, global0.x), select(vec3<bool>(arg_0, true, false), vec3<bool>(false, true, true), true)), select(!vec3<bool>(arg_0, true, true), !vec3<bool>(arg_0, false, global1.a), true), true));
    let var_1 = 2147483647i;
    return -2147483647i;
}

fn func_2(arg_0: bool, arg_1: bool, arg_2: Struct_1, arg_3: Struct_1) -> u32 {
    var var_0 = arg_2;
    let var_1 = vec4<i32>(i32(-1i) * -2147483647i, -36676i, func_3(~4294967295u < u_input.b.x, _wgslsmith_add_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(arg_3.b, 2147483647i, var_0.b), vec3<i32>(-621i, -25986i, -2147483647i), vec3<i32>(-1i, -1i, 11105i)), select(vec3<i32>(44599i, 2079i, 39628i), vec3<i32>(global1.b, global1.b, -17705i), vec3<bool>(false, global1.a, arg_1)))), 1i) ^ _wgslsmith_mult_vec4_i32(~(-abs(vec4<i32>(arg_3.b, 0i, -26916i, var_0.b))), firstLeadingBit(reverseBits(-vec4<i32>(global1.b, 0i, -1i, var_0.b))));
    var var_2 = vec4<u32>(u_input.b.x, firstTrailingBit(~1u), u_input.b.x, ~u_input.b.x);
    let var_3 = Struct_1(global0.x, firstTrailingBit(2147483647i));
    return _wgslsmith_dot_vec3_u32(abs(select(_wgslsmith_add_vec3_u32(vec3<u32>(0u, 4294967295u, 41902u), ~var_2.wxz), u_input.b.wyx & _wgslsmith_div_vec3_u32(u_input.b.wwy, var_2.zwy), select(vec3<bool>(false, true, false), select(vec3<bool>(true, var_0.a, global1.a), vec3<bool>(true, arg_1, global0.x), vec3<bool>(true, arg_2.a, false)), true))), _wgslsmith_add_vec3_u32(min(~vec3<u32>(var_2.x, u_input.b.x, u_input.b.x), max(_wgslsmith_mod_vec3_u32(vec3<u32>(1639u, u_input.b.x, var_2.x), u_input.b.wxx), abs(u_input.b.zwy))), ~(_wgslsmith_sub_vec3_u32(vec3<u32>(15840u, var_2.x, var_2.x), vec3<u32>(u_input.b.x, 1u, 23283u)) ^ vec3<u32>(0u, 0u, u_input.b.x))));
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: i32) -> Struct_1 {
    let var_0 = u_input.a;
    let var_1 = arg_0;
    var var_2 = Struct_1(!any(!vec3<bool>(global1.a, false, global0.x)), ~countOneBits(~(~(-32103i))));
    var var_3 = var_1;
    let var_4 = select(vec4<u32>(u_input.b.x, min(~u_input.b.x, ~(~u_input.b.x)), min(4294967295u, max(u_input.b.x, 1u) ^ u_input.b.x), ~(~1u)), ~(~(select(u_input.b, u_input.b, false) >> (vec4<u32>(10625u, u_input.b.x, u_input.b.x, u_input.b.x) % vec4<u32>(32u)))), vec4<bool>(all(vec4<bool>(138525u > u_input.b.x, any(vec3<bool>(true, global1.a, global0.x)), all(vec3<bool>(false, arg_0.a, arg_0.a)), true)), !(true | all(vec4<bool>(var_2.a, false, true, true))), true, var_2.a));
    return var_1;
}

fn func_5(arg_0: vec4<bool>, arg_1: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-458f, _wgslsmith_f_op_f32(ceil(686f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-352f, -758f))))));
    var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_0.x, -1475f, 1127f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-2705f, -996f, var_0.x)), all(global0.yx))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_0.x, var_0.x, -661f))) + _wgslsmith_div_vec3_f32(vec3<f32>(var_0.x, 1277f, var_0.x), vec3<f32>(-1309f, var_0.x, var_0.x))) + _wgslsmith_div_vec3_f32(vec3<f32>(var_0.x, var_0.x, 1000f), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.x, var_0.x, 386f), vec3<f32>(var_0.x, -314f, -1526f), arg_0.yyy))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_0.x, var_0.x) - vec3<f32>(var_0.x, 227f, 110f)), vec3<f32>(var_0.x, 1308f, 762f))), vec3<f32>(_wgslsmith_f_op_f32(trunc(var_0.x)), -834f, -1967f)))), arg_0.ywy));
    var_0 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-268f, -1609f, var_0.x))))) - _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1041f, -541f, -870f)))))));
    var var_1 = Struct_1(!(_wgslsmith_f_op_f32(trunc(var_0.x)) == _wgslsmith_f_op_f32(1f - var_0.x)), _wgslsmith_sub_i32(2147483647i, firstTrailingBit(firstLeadingBit(7610i)) | arg_1.b));
    let var_2 = -1044f;
    return arg_1;
}

fn func_1(arg_0: bool) -> Struct_1 {
    var var_0 = -33480i;
    var var_1 = ~abs(_wgslsmith_sub_vec2_u32(_wgslsmith_sub_vec2_u32(~vec2<u32>(1u, u_input.b.x), vec2<u32>(u_input.b.x, 2382u)), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.b.x, 4294967295u), ~vec2<u32>(u_input.b.x, u_input.b.x))));
    return func_5(!vec4<bool>(true, arg_0, global0.x, !global0.x), func_4(Struct_1(!(global1.b > 2147483647i), global1.b), -(0i << (func_2(arg_0, true, Struct_1(false, global1.b), Struct_1(false, u_input.a.x)) % 32u)), 36086i));
}

fn func_6(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec4<bool>) -> Struct_1 {
    global0 = vec3<bool>(global1.a, -max(_wgslsmith_div_i32(global1.b, 2147483647i), u_input.a.x ^ global1.b) < _wgslsmith_sub_i32(_wgslsmith_add_i32(~arg_2.b, global1.b), func_3(true, reverseBits(vec3<i32>(arg_1.b, arg_1.b, global1.b)))), any(vec4<bool>(!(-1i > arg_2.b), 21217i > arg_2.b, arg_1.a, arg_1.a)));
    var var_0 = Struct_1(!arg_1.a, ~(-(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, arg_2.b), u_input.a) << (u_input.b.x % 32u))));
    let var_1 = _wgslsmith_f_op_f32(sign(1499f));
    var var_2 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1f, 1f)))));
    var var_3 = func_5(select(vec4<bool>(!select(var_0.a, true, arg_1.a), all(!arg_3), true, !global0.x || (u_input.b.x > u_input.b.x)), vec4<bool>(any(select(global0.yx, vec2<bool>(true, global1.a), vec2<bool>(arg_1.a, false))), _wgslsmith_add_i32(-65551i, arg_1.b) > (var_0.b | 2147483647i), all(!arg_3.zxy), arg_2.a), !select(vec4<bool>(arg_2.a, true, arg_2.a, true), !arg_3, true)), arg_1);
    return Struct_1(arg_2.a, -(~(~(~global1.b))));
}

fn func_7(arg_0: u32, arg_1: Struct_1) -> vec3<u32> {
    global1 = arg_1;
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1841f))), _wgslsmith_f_op_f32(max(-435f, 543f))))));
    let var_1 = Struct_1(arg_1.a, global1.b);
    global0 = !vec3<bool>(false, global1.b > -(u_input.a.x & 29507i), !(select(false, false, global1.a) != func_6(vec2<f32>(1638f, 999f), arg_1, Struct_1(arg_1.a, -1i), vec4<bool>(var_1.a, true, true, false)).a));
    return ~u_input.b.zww;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_7(min(_wgslsmith_mult_u32(~44571u, ~u_input.b.x), abs(18037u) | u_input.b.x) << (u_input.b.x % 32u), func_6(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-855f, _wgslsmith_f_op_f32(min(2111f, 457f)))), func_1(true), Struct_1(all(!vec2<bool>(global0.x, global0.x)), ~_wgslsmith_dot_vec2_i32(u_input.a, u_input.a)), !(!vec4<bool>(global0.x, global0.x, global0.x, global1.a))));
    global0 = vec3<bool>(false, false, func_6(vec2<f32>(_wgslsmith_f_op_f32(round(-1788f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-877f, -502f, false)), _wgslsmith_f_op_f32(-938f - -1767f))), func_1(true), Struct_1(true | any(vec4<bool>(global1.a, true, global1.a, global0.x)), global1.b), !vec4<bool>(all(vec3<bool>(false, true, global1.a)), false && global0.x, global0.x, global1.a)).a);
    var var_1 = ~abs(vec2<u32>(1u, 1u)) ^ ~(~abs(_wgslsmith_div_vec2_u32(vec2<u32>(var_0.x, 1u), var_0.yx)));
    var var_2 = vec3<bool>(~81093u <= ~firstLeadingBit(~var_0.x), global0.x, true);
    let var_3 = Struct_1(true, u_input.a.x);
    let var_4 = global1.b;
    let var_5 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(~(~vec3<u32>(20610u, ~0u, ~var_0.x)), _wgslsmith_sub_u32(_wgslsmith_mult_u32(var_1.x, firstTrailingBit(func_7(10361u, Struct_1(global1.a, -18684i)).x)), 1u), u_input.a.x, ~_wgslsmith_mult_i32(_wgslsmith_add_i32(-4502i, global1.b), u_input.a.x) << (~var_0.x % 32u));
}

