struct Struct_1 {
    a: i32,
    b: bool,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_2,
    c: vec2<i32>,
    d: u32,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<f32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 13>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_4, arg_2: i32, arg_3: vec4<u32>) -> Struct_1 {
    var var_0 = u_input.a;
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.c.a.x, arg_1.c.a.x, -1020f)));
    let var_2 = vec4<bool>(false, !any(!select(vec4<bool>(true, arg_1.a.b, arg_1.a.b, arg_1.a.b), vec4<bool>(arg_1.a.b, true, arg_1.a.b, arg_1.a.b), false)), u_input.d <= -abs(_wgslsmith_sub_i32(1i, 2147483647i)), all(select(vec3<bool>(u_input.a.x > arg_2, all(vec3<bool>(true, arg_1.a.b, true)), false), select(!vec3<bool>(arg_1.a.b, arg_1.a.b, arg_1.a.b), !vec3<bool>(arg_1.a.b, arg_1.a.b, arg_1.a.b), true), false)));
    var var_3 = 301f;
    let var_4 = 4294967295u;
    return arg_1.a;
}

fn func_3(arg_0: u32) -> i32 {
    let var_0 = ~u_input.c;
    let var_1 = reverseBits(_wgslsmith_sub_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(~u_input.b, ~u_input.b), 12520u), 88409u));
    var var_2 = -u_input.a.wwx;
    let var_3 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(425f, 1396f) + vec2<f32>(107f, 1000f)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1534f, -1128f) - vec2<f32>(402f, 422f))))));
    var var_4 = func_2(((vec2<u32>(4294967295u, 121181u) ^ (vec2<u32>(0u, 0u) << (vec2<u32>(var_1, 4294967295u) % vec2<u32>(32u)))) >> (abs(u_input.b.yy) % vec2<u32>(32u))) << (u_input.b.xz % vec2<u32>(32u)), Struct_4(Struct_1(34170i, true), Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(var_3.a)) + _wgslsmith_f_op_vec2_f32(var_3.a * vec2<f32>(var_3.a.x, 2442f))), Struct_2(var_3.a), select(_wgslsmith_div_vec2_i32(u_input.a.zx, vec2<i32>(-4001i, u_input.a.x)), reverseBits(vec2<i32>(u_input.d, -2147483647i)), select(vec2<bool>(true, false), vec2<bool>(false, true), true)), u_input.c), var_3), 2147483647i, vec4<u32>(u_input.c, ~_wgslsmith_div_u32(~u_input.b.x, select(4294967295u, var_1, true)), countOneBits(u_input.b.x), ~countOneBits(max(21829u, 1u))));
    return ~_wgslsmith_sub_i32(var_2.x, 0i);
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: vec4<f32>, arg_3: i32) -> vec2<f32> {
    let var_0 = _wgslsmith_mod_vec2_i32(u_input.a.yy, -u_input.a.zy);
    global0 = array<vec3<i32>, 13>();
    var var_1 = arg_2;
    var var_2 = i32(-1i) * -1i;
    var var_3 = u_input.b.x;
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_2.zx))))));
}

fn func_1(arg_0: vec4<u32>) -> f32 {
    global0 = array<vec3<i32>, 13>();
    var var_0 = Struct_4(Struct_1(u_input.a.x, true), Struct_3(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(933f, -429f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(526f, 1592f), vec2<f32>(-2550f, -1606f)))))), Struct_2(_wgslsmith_f_op_vec2_f32(func_4(func_2(arg_0.zw, Struct_4(Struct_1(4720i, false), Struct_3(vec2<f32>(1191f, 1120f), Struct_2(vec2<f32>(-1069f, -1000f)), u_input.a.zz, u_input.b.x), Struct_2(vec2<f32>(916f, 711f))), 4436i, u_input.b), any(vec2<bool>(false, false)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-458f, -1750f, -475f, 233f)), func_3(u_input.b.x)))), ~_wgslsmith_mult_vec2_i32(-u_input.a.yy, vec2<i32>(u_input.d, -10834i)), ~4294967295u | _wgslsmith_dot_vec2_u32(arg_0.yz, u_input.b.ww | u_input.b.zw)), Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_4(Struct_1(-11719i, true), true, vec4<f32>(-1000f, 1003f, -1265f, -373f), u_input.a.x)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -727f))))));
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.b.a + vec2<f32>(-1102f, 149f))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(ceil(1455f)), _wgslsmith_f_op_f32(-145f * -542f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b.a.x, -475f))), vec2<bool>(true, true)))));
    global0 = array<vec3<i32>, 13>();
    global0 = array<vec3<i32>, 13>();
    return _wgslsmith_f_op_f32(2560f * var_0.c.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -438f);
    global0 = array<vec3<i32>, 13>();
    global0 = array<vec3<i32>, 13>();
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec4<u32>(~u_input.b.x << (u_input.c % 32u), _wgslsmith_mult_u32(u_input.b.x, 1u) << ((102109u << (0u % 32u)) % 32u), countOneBits(u_input.c), u_input.c))));
    let var_1 = _wgslsmith_sub_i32(6523i, ~u_input.d) | u_input.a.x;
    var var_2 = u_input.b.wyx;
    var var_3 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.xww, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(199f, -1040f)), vec2<f32>(-216f, -473f)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-405f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1269f + -210f)))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-1448f, -1594f) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1004f, 659f)))))));
}

