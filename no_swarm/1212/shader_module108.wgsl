struct Struct_1 {
    a: vec2<u32>,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: bool = true;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_2(arg_0: bool) -> Struct_1 {
    let var_0 = -(i32(-1i) * -66654i);
    return Struct_1(select(~(~abs(vec2<u32>(4294967295u, u_input.a.x))), firstLeadingBit(_wgslsmith_mod_vec2_u32(u_input.a.zy, vec2<u32>(u_input.a.x, u_input.a.x))), true), false);
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec3<f32>) -> vec2<u32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-353f, -131f, arg_3.x, 514f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3.x, arg_3.x, arg_3.x, 661f) * vec4<f32>(968f, arg_3.x, -993f, -1000f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1150f, -745f, arg_3.x, arg_3.x))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_3.x, -1202f, -1640f, arg_3.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3.x, arg_3.x, arg_3.x, arg_3.x) * vec4<f32>(arg_3.x, arg_3.x, arg_3.x, arg_3.x)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.x, arg_3.x, arg_3.x, -1386f)))))));
    global0 = vec4<i32>(_wgslsmith_clamp_i32(min(~arg_0.x, -39469i) ^ ((global0.x >> (1u % 32u)) << ((arg_1.a.x | arg_2.a.x) % 32u)), abs(global0.x), u_input.b), abs(~global0.x) & u_input.b, _wgslsmith_clamp_i32(6476i, u_input.b, ~global0.x), -29118i);
    let var_1 = ~firstTrailingBit(vec4<i32>(arg_0.x, _wgslsmith_dot_vec2_i32(arg_0.yz, vec2<i32>(30659i, 1i)) | 14425i, countOneBits(-3329i), -21168i));
    global0 = var_1;
    let var_2 = arg_2.b;
    return u_input.a.yy;
}

fn func_1() -> vec4<bool> {
    var var_0 = Struct_1(func_3(global0.wxx, func_2(true), func_2(any(select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(true, false, true)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1596f, _wgslsmith_f_op_f32(-1182f - 1311f), _wgslsmith_f_op_f32(floor(340f))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-2108f, 1435f, 773f) - _wgslsmith_f_op_vec3_f32(vec3<f32>(832f, -101f, 334f) * vec3<f32>(-1853f, -659f, -1086f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-541f)) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-305f, -1617f))) != _wgslsmith_f_op_f32(sign(-1267f)));
    let var_1 = Struct_2(func_2(!var_0.b), true);
    global0 = _wgslsmith_sub_vec4_i32(vec4<i32>(global0.x, _wgslsmith_clamp_i32(~(-1i) ^ select(global0.x, -20608i, var_0.b), _wgslsmith_div_i32(-global0.x, u_input.b), max(~global0.x, 2147483647i & u_input.b)), reverseBits(-23055i), ~reverseBits(_wgslsmith_div_i32(u_input.b, u_input.b))), vec4<i32>(-1i) * -(~(~vec4<i32>(-20786i, u_input.b, u_input.b, -2147483647i))));
    global0 = countOneBits(_wgslsmith_sub_vec4_i32(vec4<i32>(1i >> (var_1.a.a.x % 32u), global0.x, -9794i, _wgslsmith_div_i32(8538i, u_input.b) ^ ~global0.x), abs(vec4<i32>(1i, u_input.b, -1i, -global0.x))));
    var var_2 = Struct_1(~var_1.a.a, false);
    return select(vec4<bool>(var_1.a.b, var_2.b, var_2.b != all(vec3<bool>(var_1.a.b, var_1.b, var_2.b)), false), !(!(!vec4<bool>(var_2.b, var_1.a.b, false, false))), vec4<bool>(var_0.b, true, var_1.b, true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !select(select(select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false), true), func_1(), vec4<bool>(true, true, true, true)), !func_1(), vec4<bool>(true, true, func_2(any(vec4<bool>(true, true, true, true))).b, true));
    let var_1 = vec2<i32>(_wgslsmith_mod_i32(_wgslsmith_div_i32(~(~(-9883i)), u_input.b >> (u_input.a.x % 32u)), -3538i), ~firstLeadingBit(0i));
    let var_2 = ~1u;
    let var_3 = Struct_2(Struct_1(_wgslsmith_mult_vec2_u32(max(~vec2<u32>(u_input.a.x, var_2), u_input.a.zy | vec2<u32>(u_input.a.x, 41131u)), func_2(true).a), select(var_0.x, true, u_input.a.x == _wgslsmith_dot_vec4_u32(vec4<u32>(var_2, 4294967295u, u_input.a.x, var_2), vec4<u32>(var_2, 4294967295u, u_input.a.x, 0u)))), all(vec4<bool>(!(-29494i >= u_input.b), true, true, 25557i > (8927i ^ var_1.x))));
    var var_4 = var_3.a.a.x;
    let var_5 = _wgslsmith_dot_vec4_i32(vec4<i32>(~(-21413i), 1i, i32(-1i) * -var_1.x, -_wgslsmith_add_i32(countOneBits(var_1.x), var_1.x)), ~(-countOneBits(vec4<i32>(-2147483647i, var_1.x, var_1.x, 2147483647i))));
    var var_6 = ~817i >> (u_input.a.x % 32u);
    var_0 = func_1();
    var_6 = var_5;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_u32(~var_3.a.a.x, var_2));
}

