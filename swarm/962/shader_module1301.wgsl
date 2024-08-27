struct Struct_1 {
    a: f32,
    b: f32,
    c: vec2<u32>,
    d: vec4<bool>,
    e: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: i32,
    d: i32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec3<u32>,
    c: vec2<u32>,
    d: f32,
    e: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: Struct_1,
    c: vec4<bool>,
    d: vec2<i32>,
}

struct Struct_5 {
    a: i32,
    b: Struct_2,
    c: f32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 4>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> u32 {
    var var_0 = u_input.a.x;
    var_0 = 11765u;
    let var_1 = !select(!vec2<bool>(true, all(vec4<bool>(false, true, true, false))), select(select(vec2<bool>(true, true), vec2<bool>(true, true), false), vec2<bool>(true, true), true), all(vec3<bool>(all(vec3<bool>(true, false, false)), all(vec3<bool>(true, false, true)), all(vec4<bool>(true, true, false, true)))));
    let var_2 = 15809i;
    var_0 = (_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.a.x, 9275u, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, u_input.a.x)), ~_wgslsmith_div_u32(20096u, 1u)) << (abs(~(~u_input.a.x)) % 32u)) ^ u_input.a.x;
    return ~(~_wgslsmith_sub_u32(~1u, ~u_input.a.x));
}

fn func_2(arg_0: Struct_2, arg_1: i32) -> Struct_2 {
    let var_0 = false;
    var var_1 = Struct_4(any(vec2<bool>(true, arg_0.a.d.x)), arg_0.a, !arg_0.a.d, vec2<i32>(arg_0.d, _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(arg_0.d, arg_0.c), vec2<i32>(1i, -2147483647i)), -vec2<i32>(-29442i, -1i)), _wgslsmith_mod_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(arg_1, arg_1)) << (~arg_0.b.yx % vec2<u32>(32u)))));
    var var_2 = vec2<u32>(func_3(), max(14120u, 1u & u_input.a.x));
    return Struct_2(Struct_1(_wgslsmith_f_op_f32(step(-280f, _wgslsmith_f_op_f32(-1f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1253f) + _wgslsmith_f_op_f32(arg_0.a.b + _wgslsmith_f_op_f32(floor(var_1.b.b)))), max(~var_1.b.c, firstLeadingBit(arg_0.b.xz)) | ~arg_0.b.xx, var_1.b.d, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_0.a.a, 1529f, true)) - _wgslsmith_f_op_f32(arg_0.a.e.x * 181f)), arg_0.a.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.e.x)), var_1.b.a)), max(arg_0.b, min(abs(vec3<u32>(u_input.a.x, 0u, u_input.a.x)), vec3<u32>(4278u, arg_0.a.c.x, 1u))), var_1.d.x, reverseBits(arg_0.c) & reverseBits(arg_1));
}

fn func_1(arg_0: bool) -> Struct_3 {
    var var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, -1000f, _wgslsmith_f_op_f32(3991f * 1000f), _wgslsmith_f_op_f32(trunc(652f)))))), global0[_wgslsmith_index_u32(u_input.a.x, 4u)]);
    return Struct_3(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0.x, var_0.x)) + _wgslsmith_f_op_f32(var_0.x + var_0.x))))), _wgslsmith_add_vec3_u32(vec3<u32>(firstTrailingBit(~38970u), u_input.a.x << (~u_input.a.x % 32u), ~(~31423u)), u_input.a.xyz), u_input.a.zy, 571f, func_2(Struct_2(Struct_1(var_0.x, _wgslsmith_f_op_f32(ceil(176f)), ~vec2<u32>(u_input.a.x, 24256u), select(vec4<bool>(true, false, arg_0, arg_0), vec4<bool>(arg_0, true, arg_0, arg_0), vec4<bool>(arg_0, arg_0, arg_0, true)), _wgslsmith_f_op_vec4_f32(-global0[_wgslsmith_index_u32(u_input.a.x, 4u)])), max(vec3<u32>(u_input.a.x, 46421u, u_input.a.x), u_input.a.zyw), _wgslsmith_sub_i32(0i >> (u_input.a.x % 32u), 17029i), countOneBits(1i)), -14620i));
}

fn func_4(arg_0: Struct_3, arg_1: vec2<bool>, arg_2: vec2<u32>, arg_3: u32) -> vec2<i32> {
    var var_0 = u_input.a.x;
    let var_1 = 44571u;
    var var_2 = abs(_wgslsmith_sub_i32(~arg_0.e.c & firstLeadingBit(arg_0.e.c << (1u % 32u)), ~(-789i)));
    let var_3 = Struct_4(true, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-584f, 630f)), arg_0.d, vec2<u32>(_wgslsmith_div_u32(~4294967295u, max(1u, 4294967295u)), ~1u), select(!func_1(false).e.a.d, vec4<bool>(true, true, true, false), true | arg_0.e.a.d.x), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_0.e.a.e) + _wgslsmith_f_op_vec4_f32(abs(arg_0.e.a.e))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1874f, -1678f, arg_0.e.a.b, arg_0.d) - _wgslsmith_f_op_vec4_f32(floor(arg_0.e.a.e))))), vec4<bool>(arg_1.x, arg_1.x, arg_0.e.a.d.x, true), -(abs(vec2<i32>(-1i, arg_0.e.d)) ^ ~(vec2<i32>(arg_0.e.d, arg_0.e.d) << (arg_2 % vec2<u32>(32u)))));
    var var_4 = func_1(!(~arg_3 <= 0u)).e.a;
    return countOneBits(vec2<i32>(8804i, -(-18540i | arg_0.e.d)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<f32>, 4>();
    let x = u_input.a;
    s_output = StorageBuffer(func_4(func_1(true), !select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false)), u_input.a.wx, ~(~_wgslsmith_sub_u32(u_input.a.x, 0u))), min(vec4<i32>(-1i) * -firstTrailingBit(vec4<i32>(-1i, -29473i, 8129i, 2147483647i)), ~(~vec4<i32>(-33711i, 27207i, -12500i, 62609i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-1281f, 683f))))), _wgslsmith_mult_u32(~_wgslsmith_mod_u32(abs(1u), 9332u), 0u));
}

