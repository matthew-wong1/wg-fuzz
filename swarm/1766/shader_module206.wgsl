struct Struct_1 {
    a: vec2<bool>,
    b: u32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<i32>,
    c: vec2<f32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: i32) -> Struct_3 {
    var var_0 = Struct_2(-arg_0);
    var var_1 = Struct_4(Struct_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-762f, 407f, 944f), vec3<f32>(-1167f, 720f, 599f), vec3<bool>(false, true, false))))), Struct_2(_wgslsmith_sub_i32(u_input.b, -26047i) << (21022u % 32u))));
    var_1 = Struct_4(Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_1.a.a * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1572f, 480f, var_1.a.a.x)))), Struct_2(select(arg_0, _wgslsmith_sub_i32(-43447i, var_0.a), true))));
    let var_2 = true;
    var_0 = var_1.a.b;
    return var_1.a;
}

fn func_3(arg_0: f32, arg_1: Struct_3) -> bool {
    let var_0 = 47931u;
    var var_1 = false;
    var var_2 = select(max(~vec2<u32>(4294967295u, ~4294967295u), select(~vec2<u32>(14291u, 0u), ~vec2<u32>(1u, var_0), (var_0 ^ var_0) > ~var_0)), _wgslsmith_add_vec2_u32(vec2<u32>(7694u, var_0 << (var_0 % 32u)), min(reverseBits(vec2<u32>(var_0, var_0)), max(vec2<u32>(var_0, var_0), vec2<u32>(1u, var_0)))) | vec2<u32>(reverseBits(var_0), 9385u), !(!select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false))));
    var var_3 = Struct_1(!vec2<bool>(true, true | (arg_1.b.a >= 2147483647i)), 77043u);
    var var_4 = arg_1;
    return true;
}

fn func_4(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: vec2<u32>, arg_3: Struct_1) -> Struct_2 {
    var var_0 = countOneBits(u_input.a >> (~arg_2.x % 32u));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-401f + 1698f) + _wgslsmith_f_op_f32(-279f + -939f)) + _wgslsmith_f_op_f32(trunc(-2202f)))));
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, 678f, var_1)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1942f, var_1, var_1)))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-193f, 1657f, -2194f)))));
    var_0 = -63147i;
    var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_2.x, var_1, var_2.x), vec3<f32>(var_1, var_2.x, 1000f))) * _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(870f, var_2.x, 1922f))))))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, var_1, 201f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-144f, -1388f, -654f) + vec3<f32>(1335f, 848f, -230f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1, 2081f, -429f) * vec3<f32>(1322f, 928f, var_2.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, var_1, -463f)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_1, var_2.x, 477f), vec3<f32>(-1913f, 184f, var_2.x))) - _wgslsmith_div_vec3_f32(vec3<f32>(var_1, var_2.x, 2584f), vec3<f32>(var_2.x, -208f, var_2.x)))))));
    return Struct_2(u_input.a);
}

fn func_1(arg_0: u32, arg_1: f32) -> Struct_2 {
    var var_0 = Struct_2(_wgslsmith_div_i32(_wgslsmith_mod_i32(abs(u_input.a & 38147i), 2147483647i), -1i));
    var var_1 = func_2(-2147483647i);
    var_0 = func_4(Struct_1(vec2<bool>(func_3(_wgslsmith_f_op_f32(sign(538f)), Struct_3(var_1.a, var_1.b)), all(vec4<bool>(true, true, true, true))), select(~1u, arg_0, false)), _wgslsmith_mod_vec3_u32(vec3<u32>(arg_0, _wgslsmith_mult_u32(~1u, firstLeadingBit(arg_0)), arg_0), ~abs(vec3<u32>(arg_0, 95519u, 4294967295u) & vec3<u32>(14995u, arg_0, 4294967295u))), _wgslsmith_sub_vec2_u32(firstLeadingBit(vec2<u32>(15659u, reverseBits(arg_0))), vec2<u32>(4294967295u, _wgslsmith_add_u32(~arg_0, 43124u))), Struct_1(vec2<bool>(all(vec4<bool>(true, true, true, true)), true), max(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0, 3548u, 1u), select(vec3<u32>(1u, arg_0, 4294967295u), vec3<u32>(arg_0, arg_0, arg_0), false)), arg_0)));
    let var_2 = arg_0;
    var var_3 = select(select(!select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, false), true), vec4<bool>(true, any(vec4<bool>(true, true, true, true)), func_2(-1i).a.x == _wgslsmith_div_f32(var_1.a.x, 829f), false), vec4<bool>(false, true, false, any(vec3<bool>(false, false, false)))), vec4<bool>(true, true, all(vec4<bool>(true, true, true, true)), true), select(vec4<bool>(var_0.a < var_0.a, true, all(select(vec2<bool>(true, true), vec2<bool>(true, true), false)), false), vec4<bool>(-125f >= arg_1, true, any(vec3<bool>(false, false, false)), any(select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), true))), vec4<bool>(select(true, all(vec4<bool>(true, false, true, true)), select(true, true, false)), !(arg_0 > var_2), true, ~var_1.b.a > countOneBits(2147483647i))));
    return Struct_2(u_input.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(_wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, 54238u, 1u) >> (select(vec3<u32>(9372u, 0u, 1u), vec3<u32>(94762u, 1u, 18415u), true) % vec3<u32>(32u)), vec3<u32>(~8136u, 4294967295u, _wgslsmith_mod_u32(1u, 50006u))) << (~(abs(4294967295u) ^ _wgslsmith_dot_vec3_u32(vec3<u32>(25751u, 4294967295u, 0u), vec3<u32>(1u, 0u, 0u))) % 32u), _wgslsmith_f_op_f32(step(-352f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1000f)) - _wgslsmith_f_op_f32(1167f + 1167f)))))));
    let var_1 = !vec2<bool>(true, func_3(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1340f + 456f))), Struct_3(vec3<f32>(1f, 1f, 1f), var_0)));
    let var_2 = Struct_4(func_2(abs(_wgslsmith_dot_vec3_i32(vec3<i32>(-19241i, var_0.a, u_input.a) >> (vec3<u32>(8928u, 0u, 63077u) % vec3<u32>(32u)), vec3<i32>(u_input.a, 33077i, 1i)))));
    var var_3 = _wgslsmith_add_vec3_i32(~firstTrailingBit(vec3<i32>(var_2.a.b.a, -11353i, -var_0.a)), select(reverseBits(-(vec3<i32>(-2147483647i, var_0.a, u_input.b) ^ vec3<i32>(u_input.b, var_2.a.b.a, u_input.a))), -(~(-vec3<i32>(1i, 1874i, u_input.a))), select(vec3<bool>(!var_1.x, any(vec3<bool>(var_1.x, var_1.x, var_1.x)), true), select(select(vec3<bool>(true, false, true), vec3<bool>(false, var_1.x, var_1.x), vec3<bool>(var_1.x, true, var_1.x)), select(vec3<bool>(var_1.x, var_1.x, var_1.x), vec3<bool>(var_1.x, var_1.x, var_1.x), var_1.x), all(vec3<bool>(var_1.x, false, var_1.x))), select(!vec3<bool>(var_1.x, var_1.x, true), vec3<bool>(true, false, var_1.x), vec3<bool>(true, var_1.x, true)))));
    let var_4 = !(!select(select(!vec4<bool>(var_1.x, var_1.x, false, var_1.x), vec4<bool>(true, var_1.x, var_1.x, var_1.x), select(vec4<bool>(false, true, true, false), vec4<bool>(var_1.x, true, var_1.x, var_1.x), true)), select(select(vec4<bool>(true, var_1.x, var_1.x, var_1.x), vec4<bool>(true, var_1.x, var_1.x, var_1.x), true), !vec4<bool>(true, var_1.x, true, var_1.x), !vec4<bool>(true, var_1.x, false, var_1.x)), !(!vec4<bool>(false, var_1.x, false, var_1.x))));
    let var_5 = 21700u;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a.a.xz, select(-(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, u_input.b, 2147483647i, u_input.a), vec4<i32>(52704i, 39830i, -12749i, u_input.a)) & vec4<i32>(u_input.b, -1i, -32437i, var_2.a.b.a)), vec4<i32>(var_3.x << (~var_5 % 32u), -1i, _wgslsmith_div_i32(0i, -14141i), 0i), var_4), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-586f, var_2.a.a.x)) + var_2.a.a.x), var_2.a.a.x), _wgslsmith_f_op_vec3_f32(-var_2.a.a));
}

