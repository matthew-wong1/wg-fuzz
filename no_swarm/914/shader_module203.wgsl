struct Struct_1 {
    a: vec4<bool>,
    b: f32,
    c: u32,
    d: vec3<i32>,
    e: u32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: bool,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec4<u32>,
}

struct Struct_4 {
    a: bool,
    b: Struct_3,
    c: vec2<bool>,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 12> = array<vec3<u32>, 12>(vec3<u32>(32891u, 2280u, 1u), vec3<u32>(1u, 9169u, 79421u), vec3<u32>(52689u, 32467u, 1u), vec3<u32>(72558u, 129644u, 0u), vec3<u32>(4294967295u, 27594u, 33197u), vec3<u32>(0u, 13721u, 4294967295u), vec3<u32>(1u, 1110u, 116435u), vec3<u32>(0u, 4294967295u, 4294967295u), vec3<u32>(0u, 8232u, 1u), vec3<u32>(1u, 1u, 26313u), vec3<u32>(1u, 4294967295u, 71835u), vec3<u32>(0u, 1u, 7358u));

var<private> global1: u32 = 65998u;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: bool) -> vec4<bool> {
    var var_0 = _wgslsmith_mult_u32(4294967295u, 4294967295u & _wgslsmith_mod_u32(~4294967295u, _wgslsmith_mult_u32(u_input.a, 39836u)));
    var var_1 = vec3<i32>(~reverseBits(~(i32(-1i) * -2147483647i)), -(~_wgslsmith_sub_i32(3135i, -14682i)), abs(1i));
    return select(select(vec4<bool>(arg_0 && arg_0, all(!vec2<bool>(false, arg_0)), any(vec3<bool>(false, arg_0, false)), true), !(!vec4<bool>(true, true, arg_0, true)), any(select(!vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(false, arg_0, arg_0), !vec3<bool>(false, arg_0, false)))), select(select(select(vec4<bool>(false, true, false, arg_0), !vec4<bool>(false, true, arg_0, arg_0), !vec4<bool>(arg_0, true, arg_0, arg_0)), !vec4<bool>(true, true, arg_0, true), arg_0), vec4<bool>(arg_0, !all(vec2<bool>(false, arg_0)), true, _wgslsmith_div_u32(u_input.b.x, 38944u) == 1u), arg_0), true);
}

fn func_2(arg_0: bool, arg_1: Struct_4, arg_2: f32) -> i32 {
    let var_0 = vec2<i32>(arg_1.b.a.x, -2147483647i) ^ (vec2<i32>(-1i) * -reverseBits(vec2<i32>(arg_1.b.a.x, arg_1.b.a.x)));
    let var_1 = any(func_3(any(vec2<bool>(true, true))));
    var var_2 = arg_1;
    var var_3 = var_2.d.a;
    var_3 = vec3<bool>(((true | all(vec4<bool>(false, true, true, true))) && (~0i >= ~var_2.b.a.x)) & false, true, var_2.d.a.x);
    return _wgslsmith_dot_vec2_i32(-vec2<i32>(_wgslsmith_sub_i32(var_0.x, _wgslsmith_div_i32(-56028i, -21350i)), _wgslsmith_mod_i32(_wgslsmith_mult_i32(-32292i, var_2.b.a.x), var_2.b.a.x)), abs(firstTrailingBit(vec2<i32>(arg_1.b.a.x, arg_1.b.a.x))));
}

fn func_1(arg_0: bool) -> vec4<f32> {
    global0 = array<vec3<u32>, 12>();
    let var_0 = _wgslsmith_div_i32(-(max(func_2(true, Struct_4(true, Struct_3(vec3<i32>(0i, 2147483647i, 2994i), vec4<u32>(u_input.b.x, 40688u, u_input.a, 3486u)), vec2<bool>(arg_0, false), Struct_2(vec3<bool>(arg_0, true, arg_0), arg_0)), -1000f), ~23269i) >> (u_input.b.x % 32u)), 27199i);
    global0 = array<vec3<u32>, 12>();
    var var_1 = reverseBits(_wgslsmith_sub_vec4_i32(vec4<i32>(-1i, -func_2(arg_0, Struct_4(true, Struct_3(vec3<i32>(var_0, 2147483647i, -3804i), vec4<u32>(u_input.a, u_input.a, 27957u, 72695u)), vec2<bool>(arg_0, false), Struct_2(vec3<bool>(true, false, arg_0), false)), -669f), _wgslsmith_div_i32(21629i, _wgslsmith_sub_i32(var_0, 71789i)), _wgslsmith_div_i32(~var_0, -var_0)), -(vec4<i32>(-1i) * -vec4<i32>(var_0, var_0, var_0, var_0))));
    var var_2 = reverseBits(max(vec2<i32>(-var_0, -1i), vec2<i32>(_wgslsmith_dot_vec3_i32(var_1.wyx, vec3<i32>(35936i, var_1.x, var_0)), 2147483647i) ^ _wgslsmith_mult_vec2_i32(select(vec2<i32>(var_0, var_1.x), var_1.zy, true), select(var_1.wx, var_1.xx, arg_0))));
    return vec4<f32>(_wgslsmith_f_op_f32(abs(-1477f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-813f * -526f))))), 1f, _wgslsmith_f_op_f32(max(-1711f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(1668f, 2001f)), -571f) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(755f)), _wgslsmith_f_op_f32(floor(745f)))))));
}

fn func_4(arg_0: bool, arg_1: vec4<f32>) -> f32 {
    var var_0 = 35545i;
    var_0 = func_2(arg_0, Struct_4(true, Struct_3(~vec3<i32>(1i, 1i, 1i), ~(~vec4<u32>(u_input.a, 25933u, 30941u, u_input.b.x))), func_3(arg_0).xw, Struct_2(select(func_3(true).zxz, !vec3<bool>(arg_0, arg_0, false), true), !all(vec3<bool>(false, false, true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.x), -2042f))) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(arg_1.x))))));
    var_0 = 2147483647i;
    global1 = ~firstTrailingBit(1u);
    var_0 = 40233i;
    return _wgslsmith_f_op_f32(174f - 375f);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = 1u;
    global1 = u_input.a;
    var var_0 = abs(vec3<i32>(min(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), ~vec4<i32>(-14198i, 0i, -1i, -26384i)), -2147483647i), ~(~(~38693i)), _wgslsmith_div_i32(firstLeadingBit(-1i), 1i) >> (firstTrailingBit(54414u) % 32u)));
    let var_1 = u_input.b;
    global1 = ~(var_1.x & ~select(26585u | var_1.x, 1u, all(vec3<bool>(false, false, true))));
    let x = u_input.a;
    s_output = StorageBuffer(min(~var_0.x, var_0.x), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_4(true, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_1(false))))), _wgslsmith_f_op_f32(sign(221f)))), firstTrailingBit(_wgslsmith_add_vec4_i32(max(vec4<i32>(var_0.x, var_0.x, 10581i, var_0.x), vec4<i32>(-2147483647i, var_0.x, var_0.x, var_0.x)) ^ -vec4<i32>(-1i, var_0.x, var_0.x, var_0.x), vec4<i32>(-1i, _wgslsmith_add_i32(4672i, var_0.x), -var_0.x, -1113i))));
}

