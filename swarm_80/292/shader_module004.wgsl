struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_1,
    c: Struct_2,
    d: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: bool,
    c: Struct_3,
    d: vec2<i32>,
    e: vec3<i32>,
}

struct Struct_5 {
    a: vec3<bool>,
    b: vec4<bool>,
    c: u32,
    d: Struct_1,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: Struct_2) -> f32 {
    let var_0 = Struct_4(_wgslsmith_f_op_f32(-901f + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-121f * -1301f), 1f))))), true, Struct_3(select(vec3<bool>(true, true, true), vec3<bool>(select(true, true, true), any(vec2<bool>(false, true)), select(true, true, false)), !all(vec4<bool>(true, false, false, false))), arg_0.a, Struct_2(Struct_1(~arg_0.a.a)), arg_0), vec2<i32>(firstLeadingBit(max(-2147483647i, reverseBits(u_input.c))), u_input.c >> (abs(4294967295u) % 32u)), countOneBits(u_input.e));
    var var_1 = true;
    var_1 = _wgslsmith_clamp_i32(0i, var_0.d.x, 31476i) >= var_0.d.x;
    let var_2 = _wgslsmith_mult_vec3_i32(vec3<i32>(_wgslsmith_mod_i32(~(~0i), -_wgslsmith_mult_i32(u_input.e.x, u_input.e.x)), var_0.e.x, _wgslsmith_sub_i32(24103i, -21004i)), u_input.e);
    var var_3 = Struct_1(~u_input.b.yx);
    return _wgslsmith_f_op_f32(floor(var_0.a));
}

fn func_2() -> vec2<f32> {
    var var_0 = _wgslsmith_dot_vec2_i32(u_input.e.xx, _wgslsmith_sub_vec2_i32(vec2<i32>(-1i, u_input.e.x) | -(u_input.e.zy << (vec2<u32>(u_input.d, 41367u) % vec2<u32>(32u))), u_input.e.yy));
    var var_1 = Struct_2(Struct_1(vec2<u32>(u_input.d << (u_input.b.x % 32u), u_input.d & _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d, 4294967295u, 686u), vec3<u32>(15714u, 1828u, u_input.a)))));
    var var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(277f * -627f), -350f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-165f, 947f)), _wgslsmith_div_f32(154f, -1245f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-485f, 1337f, false)) + _wgslsmith_div_f32(1130f, 249f)))))));
    var var_3 = vec4<u32>(var_1.a.a.x, select(u_input.a, 1u, all(select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, false), true))), 4294967295u, countOneBits(~1u));
    var var_4 = -2147483647i;
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-464f * 739f) - -1000f), _wgslsmith_f_op_f32(func_3(Struct_2(var_1.a)))))));
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_1) -> f32 {
    let var_0 = Struct_5(vec3<bool>(true, any(vec3<bool>(true, true, true)), false), !vec4<bool>(false, true, false, u_input.c < u_input.e.x), _wgslsmith_mod_u32(0u, arg_1.a.x), arg_1, Struct_2(Struct_1(abs(~u_input.b.zz))));
    let var_1 = _wgslsmith_mult_i32(18364i, -1i);
    var var_2 = _wgslsmith_f_op_f32(trunc(arg_0.x));
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_0.x, -1477f, arg_0.x, 621f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1239f, arg_0.x, arg_0.x, arg_0.x) * vec4<f32>(arg_0.x, arg_0.x, -1000f, 560f))) - _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(327f, arg_0.x, arg_0.x, -1083f)))), _wgslsmith_div_vec4_f32(vec4<f32>(-1000f, arg_0.x, _wgslsmith_f_op_f32(select(arg_0.x, 841f, var_0.b.x)), arg_0.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1340f, -1186f, 157f, arg_0.x))) + vec4<f32>(arg_0.x, -1000f, -155f, -1084f)))));
    let var_4 = u_input.b.x >> (~(~u_input.d) % 32u);
    return _wgslsmith_f_op_f32(-arg_0.x);
}

fn func_1(arg_0: vec4<i32>, arg_1: i32) -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec2_f32(func_2()), Struct_1(_wgslsmith_clamp_vec2_u32(u_input.b.yy ^ u_input.b.zy, vec2<u32>(8858u, 104905u), ~vec2<u32>(4294967295u, u_input.d)) >> ((vec2<u32>(4294967295u, 1u) >> (~vec2<u32>(u_input.a, 18005u) % vec2<u32>(32u))) % vec2<u32>(32u)))));
    return !(!select(!select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), true), vec3<bool>(true, true, true), true || (u_input.a <= u_input.a)));
}

fn func_5(arg_0: bool, arg_1: Struct_5, arg_2: i32, arg_3: Struct_5) -> StorageBuffer {
    let var_0 = Struct_3(select(arg_3.b.xyx, !(!vec3<bool>(false, false, arg_1.a.x)), vec3<bool>(any(!vec2<bool>(false, arg_0)), true, select(true, arg_0, true))), arg_1.e.a, Struct_2(arg_1.d), arg_3.e);
    let var_1 = 0u;
    let var_2 = _wgslsmith_mult_vec3_u32(u_input.b, u_input.b);
    var var_3 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1636f, -433f)) + 1f))))));
    var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_vec2_f32(func_2()).x * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -505f))))));
    return StorageBuffer(vec3<i32>(countOneBits(reverseBits(max(u_input.c, 1034i))), arg_2, countOneBits(-4002i)), 154f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.c;
    let var_1 = ~u_input.d;
    let x = u_input.a;
    s_output = func_5(true, Struct_5(select(!func_1(vec4<i32>(u_input.e.x, var_0, 56323i, var_0), u_input.e.x), vec3<bool>(true, true, true), true), select(select(select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, false), true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true)), select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true))), true), var_1, Struct_1(firstTrailingBit(~vec2<u32>(var_1, var_1))), Struct_2(Struct_1(vec2<u32>(4294967295u, 9452u)))), ~u_input.e.x, Struct_5(select(select(vec3<bool>(true, true, true), func_1(vec4<i32>(-2147483647i, u_input.e.x, -8863i, -19973i), var_0), vec3<bool>(false, true, false)), vec3<bool>(true, true, true), any(vec2<bool>(false, true))), select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false)), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false), true), all(vec4<bool>(true, true, true, false))), select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), true)), 33945u, Struct_1(reverseBits(~u_input.b.yy)), Struct_2(Struct_1(vec2<u32>(4294967295u, 72722u)))));
}

