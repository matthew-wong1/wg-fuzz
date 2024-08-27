struct Struct_1 {
    a: u32,
    b: u32,
    c: f32,
}

struct Struct_2 {
    a: bool,
    b: vec2<i32>,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: Struct_2,
    b: bool,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2() -> bool {
    return false;
}

fn func_3(arg_0: bool, arg_1: vec2<i32>, arg_2: Struct_3, arg_3: f32) -> f32 {
    var var_0 = select(~(-9726i), (43212i >> (~(~u_input.b.x) % 32u)) & arg_1.x, any(vec4<bool>(all(vec4<bool>(true, true, true, true)), -438f <= arg_2.a, true, any(select(vec4<bool>(true, arg_0, false, arg_0), vec4<bool>(true, arg_0, false, arg_0), vec4<bool>(true, false, true, true))))));
    var_0 = abs(_wgslsmith_mod_i32(reverseBits(arg_1.x), _wgslsmith_mult_i32(-42092i, -1i)));
    var_0 = _wgslsmith_div_i32(~0i, arg_1.x);
    var_0 = ~arg_1.x;
    var_0 = 2147483647i;
    return arg_2.a;
}

fn func_1(arg_0: bool, arg_1: vec2<bool>, arg_2: f32) -> vec3<bool> {
    let var_0 = Struct_1(11146u, u_input.b.x, _wgslsmith_f_op_f32(-693f * arg_2));
    let var_1 = _wgslsmith_f_op_f32(func_3(func_2(), ~vec2<i32>(1i, 1i) | (-vec2<i32>(-64487i, -1i) & select(select(vec2<i32>(2147483647i, 2147483647i), vec2<i32>(1i, -34919i), arg_1), vec2<i32>(1i, 1i), !arg_1)), Struct_3(-1617f), _wgslsmith_f_op_f32(-arg_2)));
    var var_2 = !vec4<bool>(arg_1.x | any(vec3<bool>(false, true, arg_0)), arg_1.x, arg_1.x, !arg_1.x);
    let var_3 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(var_0.c * var_1)), -800f))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, arg_2))), vec2<f32>(_wgslsmith_f_op_f32(min(789f, 963f)), _wgslsmith_f_op_f32(func_3(var_1 < arg_2, -vec2<i32>(44914i, 2147483647i), Struct_3(var_1), -676f)))));
    let var_4 = Struct_4(Struct_2(var_2.x, vec2<i32>(-46618i, i32(-1i) * -41635i)), all(!var_2.yw), select(func_2(), all(vec4<bool>(false, any(var_2.xz), true, true)), false));
    return var_2.yww;
}

fn func_4(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: Struct_3) -> u32 {
    let var_0 = vec2<u32>(abs(u_input.b.x), u_input.a);
    let var_1 = arg_1.x;
    return 22035u;
}

fn func_5(arg_0: Struct_1) -> vec2<f32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.c, -904f, _wgslsmith_f_op_f32(-arg_0.c), -552f));
    var var_1 = Struct_3(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-557f)))))));
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(min(var_0.wy, var_0.zw)), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_0.x, 847f), vec2<f32>(-275f, 1269f))))))) - _wgslsmith_f_op_vec2_f32(-var_0.xw)) * _wgslsmith_f_op_vec2_f32(-var_0.wz));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(276f))))))));
    var var_1 = reverseBits(~abs(u_input.b.x));
    let var_2 = _wgslsmith_f_op_vec2_f32(func_5(Struct_1(43199u, func_4(Struct_2(false, ~vec2<i32>(351i, -1902i)), !func_1(true, vec2<bool>(true, true), 462f), Struct_3(_wgslsmith_f_op_f32(-var_0))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_0)) + var_0))));
    var var_3 = Struct_2(true, vec2<i32>(1i, 1i));
    var_3 = Struct_2(true, _wgslsmith_mult_vec2_i32(vec2<i32>(~(-42318i), var_3.b.x), countOneBits(vec2<i32>(_wgslsmith_div_i32(52758i, var_3.b.x), firstLeadingBit(var_3.b.x)))));
    var var_4 = _wgslsmith_sub_u32(~u_input.a | firstLeadingBit(u_input.a | u_input.a), max(max(_wgslsmith_clamp_u32(u_input.a, 53887u, u_input.b.x), u_input.a), u_input.a)) <= u_input.a;
    let var_5 = reverseBits(countOneBits(firstTrailingBit(-vec4<i32>(var_3.b.x, 0i, 0i, 1i))));
    var_3 = Struct_2((_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)) <= _wgslsmith_div_f32(var_0, var_0)) | (var_3.a | all(!vec3<bool>(var_3.a, var_3.a, true))), _wgslsmith_div_vec2_i32(-select(-vec2<i32>(var_5.x, var_5.x), vec2<i32>(-1i, var_5.x), vec2<bool>(true, var_3.a)), abs(var_3.b)));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_add_vec4_u32(u_input.b, ~(~vec4<u32>(36890u, 1u, 1u, 0u))), min(u_input.b.x, 4294967295u << (u_input.b.x % 32u)) & u_input.b.x, _wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(6317u << (1u % 32u), func_4(Struct_2(var_3.a, var_5.zz), vec3<bool>(true, var_3.a, true), Struct_3(1406f)), u_input.b.x, max(~u_input.a, u_input.b.x))), -75680i, func_4(Struct_2(var_3.a, var_5.ww), select(func_1(false, vec2<bool>(var_3.a, true), -738f), select(vec3<bool>(true, true, true), vec3<bool>(false, true, var_3.a), vec3<bool>(true, var_3.a, false)), !vec3<bool>(var_3.a, var_3.a, false)), Struct_3(-469f)) >> (1u % 32u));
}

