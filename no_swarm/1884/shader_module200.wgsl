struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: vec4<i32>,
    e: bool,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec2<u32>,
}

struct Struct_4 {
    a: bool,
    b: Struct_1,
}

struct Struct_5 {
    a: Struct_3,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 23>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: bool, arg_1: u32) -> vec2<u32> {
    let var_0 = vec4<bool>(any(vec2<bool>(true, true)) | true, true, !(!(!any(vec4<bool>(true, false, false, true)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(-887f)))) == _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-969f * -256f)))));
    var var_1 = Struct_4(!(min(2147483647i & u_input.a, -2147483647i) > u_input.a), Struct_1(~_wgslsmith_dot_vec4_i32(vec4<i32>(-45756i, u_input.e.x, u_input.e.x, u_input.e.x) & vec4<i32>(u_input.a, -1i, u_input.e.x, u_input.a), vec4<i32>(2147483647i, -1i, 41495i, -18206i))));
    var_1 = Struct_4(select(false, _wgslsmith_f_op_f32(step(-943f, _wgslsmith_f_op_f32(1104f * 1470f))) == _wgslsmith_f_op_f32(f32(-1f) * -357f), var_1.a), var_1.b);
    var var_2 = reverseBits(u_input.b) >> (~4294967295u % 32u);
    let var_3 = Struct_5(Struct_3(_wgslsmith_mult_vec2_u32(vec2<u32>(arg_1, ~1u), ~vec2<u32>(1u, 4294967295u) ^ vec2<u32>(0u, u_input.b)), vec2<u32>(~reverseBits(arg_1), ~(~20320u))), _wgslsmith_mod_u32(arg_1, arg_1));
    return vec2<u32>(0u, ~arg_1 & arg_1);
}

fn func_2(arg_0: vec4<u32>) -> Struct_3 {
    global0 = array<Struct_1, 23>();
    let var_0 = true;
    let var_1 = vec2<bool>(var_0, true);
    global0 = array<Struct_1, 23>();
    let var_2 = _wgslsmith_f_op_vec2_f32(max(vec2<f32>(331f, _wgslsmith_f_op_f32(776f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1200f))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(-384f, _wgslsmith_f_op_f32(-1000f + -1000f)), -830f))));
    return Struct_3(~_wgslsmith_sub_vec2_u32(~func_3(true, 4294967295u), arg_0.xw >> (vec2<u32>(4294967295u, 1u) % vec2<u32>(32u))), arg_0.ww);
}

fn func_4(arg_0: i32, arg_1: f32, arg_2: Struct_5) -> Struct_5 {
    var var_0 = u_input.e;
    let var_1 = abs(u_input.e.x);
    var var_2 = arg_1;
    var_2 = -381f;
    var_0 = vec3<i32>(~min(0i, 32186i), var_0.x, _wgslsmith_mod_i32(var_0.x, firstLeadingBit(i32(-1i) * -1i)));
    return Struct_5(func_2(~vec4<u32>(arg_2.a.a.x | 6394u, 1u & u_input.c, 4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.b, 92383u, u_input.c, 4294967295u), vec4<u32>(u_input.d, arg_2.b, arg_2.a.a.x, 1u)))), 1u);
}

fn func_1() -> Struct_3 {
    let var_0 = func_4(_wgslsmith_dot_vec2_i32(~(vec2<i32>(-1i) * -u_input.e.yy), u_input.e.zz), -1119f, Struct_5(func_2(~(~vec4<u32>(1u, u_input.c, u_input.c, u_input.d))), 59390u));
    global0 = array<Struct_1, 23>();
    var var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(-297f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -726f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(583f, 241f, false))) > _wgslsmith_f_op_f32(-329f + _wgslsmith_f_op_f32(f32(-1f) * -205f))))));
    global0 = array<Struct_1, 23>();
    let var_2 = Struct_4(any(vec2<bool>(any(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false))), true)), Struct_1(-countOneBits(u_input.a)));
    return var_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = select(select(vec3<bool>(firstTrailingBit(-2147483647i) <= u_input.e.x, false, false), !select(vec3<bool>(false, true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), false), all(vec2<bool>(false, true))), all(select(select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), false), select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), false), vec3<bool>(true, true, true)))), select(vec3<bool>(true, false, any(vec4<bool>(true, true, true, true))), select(select(vec3<bool>(true, true, false), select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), false), true), select(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), true), vec3<bool>(false, false, true), vec3<bool>(true, true, true)), true), !vec3<bool>(all(vec4<bool>(true, false, false, false)), false, true)), false);
    var_0 = func_4(u_input.a, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(-702f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(496f + -1030f), _wgslsmith_f_op_f32(f32(-1f) * -423f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1139f - 2471f)))))), func_4(-4415i, -193f, func_4(-35136i, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(304f * 1806f), _wgslsmith_f_op_f32(-756f - 126f))), Struct_5(Struct_3(vec2<u32>(4294967295u, 30986u), var_0.b), var_0.b.x ^ 14191u)))).a;
    let var_2 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(440f, 1633f, 566f, 229f)) - _wgslsmith_div_vec4_f32(vec4<f32>(-1032f, 219f, 141f, 919f), vec4<f32>(1204f, -184f, 118f, -378f)))))));
    var_0 = Struct_3(vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(u_input.d, 54344u), var_0.b.x, 1u), vec3<u32>(func_3(var_1.x, 52498u).x, 1u, 21398u)), select(var_0.a.x, _wgslsmith_add_u32(u_input.c >> (u_input.b % 32u), 4294967295u), any(vec3<bool>(true, true, var_1.x)))), select(var_0.b, ~(~var_0.a), var_1.x));
    var_0 = func_4(_wgslsmith_mult_i32(-48696i, reverseBits(i32(-1i) * -2147483647i)), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) * _wgslsmith_div_f32(var_2.x, -1336f)), -736f))), func_4(0i, var_2.x, func_4(_wgslsmith_sub_i32(u_input.a, -u_input.e.x), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-951f, var_2.x), _wgslsmith_f_op_f32(-var_2.x))), Struct_5(func_4(1i, 1992f, Struct_5(Struct_3(var_0.b, var_0.b), u_input.c)).a, u_input.b)))).a;
    let var_3 = _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(u_input.e, _wgslsmith_sub_vec3_i32(countOneBits(u_input.e), -u_input.e)), select(~2147483647i, min(_wgslsmith_sub_i32(u_input.e.x >> (1u % 32u), u_input.a), 2147483647i | u_input.e.x), false));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(-1472f, var_2.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_2.x)) - _wgslsmith_f_op_f32(min(var_2.x, -741f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-2410f, var_2.x)) - _wgslsmith_f_op_f32(var_2.x - -379f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(200f)) - -478f)) * _wgslsmith_f_op_vec4_f32(-var_2)), var_2.xy);
}

