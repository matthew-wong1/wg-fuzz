struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: i32,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: vec3<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 25>;

var<private> global1: array<Struct_2, 21>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: f32, arg_1: Struct_2, arg_2: u32) -> i32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(arg_0 - arg_0), 439f))) - _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(407f, -1415f)) + arg_0), -337f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(vec2<f32>(arg_0, 132f), vec2<f32>(arg_0, -243f)))) * vec2<f32>(arg_0, -209f))));
    var var_1 = arg_1;
    var var_2 = Struct_2(70834i);
    var var_3 = -1i;
    global1 = array<Struct_2, 21>();
    return ~(-arg_1.a & arg_1.a);
}

fn func_2(arg_0: i32) -> Struct_1 {
    global1 = array<Struct_2, 21>();
    var var_0 = any(!vec3<bool>(true, u_input.b < 1u, true)) & all(vec2<bool>(all(vec2<bool>(true, true)) & any(vec2<bool>(true, false)), true));
    var var_1 = Struct_1(vec2<i32>(7415i, -countOneBits(39283i)), any(vec2<bool>(true, true)), -1i);
    let var_2 = global1[_wgslsmith_index_u32(u_input.b, 21u)];
    let var_3 = firstTrailingBit(arg_0);
    return Struct_1(vec2<i32>(arg_0 >> (4294967295u % 32u), func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1098f)), Struct_2(_wgslsmith_div_i32(-58662i, arg_0)), 16867u)), all(!vec2<bool>(var_1.b, var_1.b)), ~(-_wgslsmith_div_i32(_wgslsmith_add_i32(-1i, var_1.c), 6332i)));
}

fn func_4(arg_0: f32, arg_1: vec3<f32>, arg_2: Struct_1, arg_3: vec4<f32>) -> Struct_2 {
    let var_0 = vec4<u32>(~_wgslsmith_dot_vec2_u32(~countOneBits(vec2<u32>(4294967295u, 0u)), ~_wgslsmith_add_vec2_u32(vec2<u32>(u_input.b, 22218u), vec2<u32>(0u, u_input.b))), ~u_input.b, u_input.b, 50204u);
    var var_1 = Struct_1(u_input.a.yw, arg_2.b, -(~_wgslsmith_add_i32(28092i | arg_2.a.x, -1i)));
    let var_2 = var_0.x;
    var var_3 = _wgslsmith_div_i32(u_input.a.x, ~u_input.c);
    global1 = array<Struct_2, 21>();
    return Struct_2(arg_2.a.x);
}

fn func_1(arg_0: Struct_2) -> u32 {
    let var_0 = 200f;
    let var_1 = !select(vec3<bool>(true, true, false), !vec3<bool>(-1139f <= var_0, true, true), vec3<bool>(false, true, true));
    var var_2 = _wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_div_u32(reverseBits(u_input.b), _wgslsmith_mod_u32(countOneBits(4294967295u), ~1u)), 3489u, reverseBits(0u), u_input.b), ~(~vec4<u32>(u_input.b, 22692u, 1u, 16801u)));
    let var_3 = func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 - _wgslsmith_f_op_f32(917f * 649f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(var_0 * _wgslsmith_f_op_f32(-var_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1800f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)))), func_2(u_input.c), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, _wgslsmith_f_op_f32(var_0 - var_0), -1292f, _wgslsmith_f_op_f32(var_0 * -808f)))));
    var var_4 = Struct_1(~(-_wgslsmith_add_vec2_i32(-u_input.a.zw, u_input.a.zx)), var_1.x, -28507i);
    return abs(_wgslsmith_div_u32(u_input.b, ~(1u ^ u_input.b))) & 1394u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_dot_vec2_u32(~vec2<u32>(62879u, u_input.b & ~u_input.b), vec2<u32>(~_wgslsmith_clamp_u32(21711u, u_input.b, u_input.b), ~(~60908u)) | vec2<u32>(_wgslsmith_mult_u32(1u, func_1(Struct_2(2147483647i))), select(29473u, 1u, true)));
    let var_1 = 1i >> (0u % 32u);
    var var_2 = reverseBits(_wgslsmith_mult_i32(var_1, -14100i));
    var_2 = min(_wgslsmith_div_i32(abs(var_1), var_1), -11384i & (-11855i ^ (firstTrailingBit(1i) << (_wgslsmith_div_u32(var_0, 0u) % 32u))));
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1311f, -869f, _wgslsmith_f_op_f32(f32(-1f) * -478f), _wgslsmith_f_op_f32(-250f + -1012f)))));
    var_2 = u_input.d;
    var var_4 = func_2(2147483647i);
    let var_5 = var_4.a;
    var_4 = Struct_1(firstTrailingBit(~vec2<i32>(abs(-2147483647i), 2147483647i)), false != (true || all(vec2<bool>(var_4.b, false))), ~(-31204i));
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(var_3.x, var_3.x))))), _wgslsmith_f_op_f32(715f - _wgslsmith_f_op_f32(f32(-1f) * -1534f))), vec3<u32>(_wgslsmith_sub_u32(u_input.b, _wgslsmith_sub_u32(~var_0, 0u)), firstTrailingBit(~1u), _wgslsmith_mult_u32(func_1(func_4(var_3.x, var_3.zxz, Struct_1(vec2<i32>(-1i, var_4.a.x), var_4.b, var_5.x), vec4<f32>(var_3.x, -626f, var_3.x, -266f))), 126832u << (~var_0 % 32u))), u_input.b);
}

