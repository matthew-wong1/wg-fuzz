struct Struct_1 {
    a: vec2<bool>,
    b: vec4<i32>,
    c: vec4<f32>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct Struct_3 {
    a: f32,
    b: bool,
    c: i32,
    d: bool,
}

struct Struct_4 {
    a: vec3<bool>,
    b: Struct_1,
    c: vec3<u32>,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: u32,
    d: f32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: u32 = 0u;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: bool) -> vec3<bool> {
    let var_0 = Struct_4(select(vec3<bool>(arg_0, all(select(vec2<bool>(false, arg_0), vec2<bool>(true, arg_0), arg_0)), all(!vec4<bool>(true, true, arg_0, true))), vec3<bool>(!any(vec4<bool>(true, false, false, arg_0)), !arg_0, arg_0), vec3<bool>(all(select(vec2<bool>(arg_0, false), vec2<bool>(false, arg_0), true)), arg_0, true)), Struct_1(vec2<bool>(true, true), abs(countOneBits(~vec4<i32>(global0.x, -23485i, global0.x, u_input.a))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(136f, 914f, -259f, 955f) * vec4<f32>(2352f, -569f, -636f, -1000f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(-872f, -1322f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -324f), _wgslsmith_f_op_f32(step(144f, -1594f)))))), vec3<u32>(1u, 1u, 1u) << ((~vec3<u32>(28740u, 4294967295u, 20752u) ^ (select(vec3<u32>(35965u, 5841u, 4294967295u), vec3<u32>(68524u, 42427u, 55971u), vec3<bool>(false, false, true)) | vec3<u32>(1u, 1u, 1u))) % vec3<u32>(32u)), select(!(!(!vec3<bool>(true, arg_0, false))), !vec3<bool>(true, any(vec3<bool>(true, false, true)), all(vec3<bool>(arg_0, true, false))), !vec3<bool>(false, arg_0 & arg_0, false)));
    global1 = _wgslsmith_div_u32(~(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.c.x, 28377u, var_0.c.x, var_0.c.x), vec4<u32>(var_0.c.x, 42400u, 1u, 4294967295u)) | (0u >> (0u % 32u))) & ~var_0.c.x, var_0.c.x);
    global1 = var_0.c.x;
    global0 = firstTrailingBit(max(var_0.b.b.yx, vec2<i32>(_wgslsmith_mult_i32(1i, ~global0.x), reverseBits(42342i))));
    var var_1 = var_0.b.c.yw;
    return !vec3<bool>(any(select(vec4<bool>(false, false, var_0.d.x, false), vec4<bool>(false, false, false, var_0.d.x), true)), arg_0 && (_wgslsmith_f_op_f32(-var_1.x) == _wgslsmith_f_op_f32(-var_1.x)), !(arg_0 | true));
}

fn func_2(arg_0: Struct_1) -> vec2<bool> {
    let var_0 = firstLeadingBit(~arg_0.b.wx);
    let var_1 = _wgslsmith_f_op_f32(300f - _wgslsmith_f_op_f32(f32(-1f) * -1128f));
    var var_2 = Struct_4(vec3<bool>(true, true, arg_0.a.x), arg_0, ~(~vec3<u32>(1u, 1u, 1u)), !select(select(vec3<bool>(true, true, true), vec3<bool>(arg_0.a.x, false, true), true), !(!vec3<bool>(arg_0.a.x, arg_0.a.x, arg_0.a.x)), !arg_0.a.x && true));
    let var_3 = arg_0.a.x;
    var_2 = Struct_4(select(var_2.a, var_2.a, arg_0.c.x >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * var_2.b.c.x)), arg_0, var_2.c, select(!func_3(false), !(!(!vec3<bool>(var_2.b.a.x, var_3, var_3))), vec3<bool>(any(select(var_2.d, vec3<bool>(var_3, false, true), var_2.b.a.x)), ~var_2.c.x != 18474u, arg_0.a.x)));
    return vec2<bool>(true, !(!(!all(vec4<bool>(var_2.b.a.x, true, var_2.b.a.x, false)))));
}

fn func_1() -> bool {
    let var_0 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1f, 1f, 1f))) * vec3<f32>(-957f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1115f)) + _wgslsmith_f_op_f32(trunc(-1288f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1252f))))));
    var var_1 = countOneBits(firstLeadingBit(~vec3<u32>(firstTrailingBit(1u), 4294967295u, ~37905u)));
    let var_2 = Struct_2(Struct_1(select(select(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false)), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false)), select(vec2<bool>(false, false), vec2<bool>(true, true), true)), vec2<bool>(true, true), func_2(Struct_1(vec2<bool>(false, false), vec4<i32>(global0.x, global0.x, -50084i, -1i), vec4<f32>(1023f, 293f, -330f, var_0.x), var_0.x))), firstLeadingBit(countOneBits(vec4<i32>(global0.x, -14560i, u_input.a, u_input.a))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, 105f, var_0.x)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, 279f, var_0.x) * vec4<f32>(1426f, 123f, 831f, -1298f)))), var_0.x), false);
    return any(var_2.a.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<bool>(func_1(), false, true, all(vec2<bool>(true, false)) && true);
    var var_1 = max(vec2<u32>(~countOneBits(6861u), 0u), vec2<u32>(1u, 1u));
    var var_2 = Struct_3(1000f, _wgslsmith_f_op_f32(220f + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1602f), _wgslsmith_f_op_f32(403f - -470f), select(var_0.x, var_0.x, var_0.x)))) != 279f, -u_input.a, false);
    var_1 = _wgslsmith_div_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(0u, firstLeadingBit(22988u)), _wgslsmith_add_u32(57354u, var_1.x)), countOneBits(abs(~(~vec2<u32>(var_1.x, var_1.x)))));
    var_1 = firstLeadingBit(_wgslsmith_mult_vec2_u32(firstTrailingBit(vec2<u32>(var_1.x, 89009u)) << (reverseBits(vec2<u32>(4294967295u, 0u)) % vec2<u32>(32u)), ~select(vec2<u32>(67121u, 49845u), vec2<u32>(var_1.x, 69472u), var_0.wy))) << (~firstLeadingBit(abs(countOneBits(vec2<u32>(50152u, 4294967295u)))) % vec2<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(-_wgslsmith_dot_vec2_i32(~vec2<i32>(-29668i, -44345i), max(vec2<i32>(global0.x, -1i), vec2<i32>(var_2.c, -1671i))), abs(-2147483647i), -abs(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, -44007i, -20798i, global0.x), vec4<i32>(u_input.a, -1i, -53534i, var_2.c)))), _wgslsmith_f_op_f32(ceil(var_2.a)), 19603u, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_2.a)) - var_2.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_2.a, var_2.a) + -1030f))), vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(var_2.a, 1152f)), var_2.a)), var_2.a)), var_2.a, var_2.a));
}

