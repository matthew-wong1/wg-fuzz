struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: bool,
    d: Struct_1,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: vec3<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 11>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: Struct_1, arg_3: vec3<i32>) -> vec3<bool> {
    var var_0 = ~(_wgslsmith_mult_vec4_u32(min(~vec4<u32>(u_input.b, u_input.b, 4294967295u, u_input.b), firstTrailingBit(vec4<u32>(25113u, 3918u, 49602u, u_input.b))), ~(~vec4<u32>(13032u, 42474u, 78910u, u_input.b))) >> (~(~vec4<u32>(u_input.b, 75408u, 1u, u_input.b) << (vec4<u32>(0u, 1u, 1u, u_input.b) % vec4<u32>(32u))) % vec4<u32>(32u)));
    let var_1 = _wgslsmith_f_op_f32(-407f - -424f);
    return arg_2.a.ywy;
}

fn func_2(arg_0: u32, arg_1: f32) -> vec2<f32> {
    let var_0 = Struct_3(Struct_2(Struct_1(vec4<bool>(true, true, true, true)), 0i, Struct_1(!select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, false), false))), _wgslsmith_f_op_f32(-arg_1), 2147483647i < u_input.c.x, Struct_1(vec4<bool>(!any(vec3<bool>(true, false, false)), arg_1 > arg_1, true, any(func_3(vec2<bool>(true, false), Struct_2(Struct_1(vec4<bool>(true, true, false, false)), 2066i, Struct_1(vec4<bool>(true, false, true, true))), Struct_1(vec4<bool>(false, false, false, true)), u_input.c.xyw)))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(sign(-1236f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_1 + arg_1), _wgslsmith_div_f32(arg_1, 359f))), arg_1, 409f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(max(arg_1, arg_1)), _wgslsmith_f_op_f32(-arg_1))), !(countOneBits(-2147483647i) > _wgslsmith_sub_i32(-2147483647i, u_input.c.x)))));
    global0 = array<vec3<f32>, 11>();
    var var_1 = arg_0;
    global0 = array<vec3<f32>, 11>();
    var var_2 = Struct_1(select(!select(var_0.d.a, var_0.d.a, 61319u <= u_input.b), vec4<bool>(var_0.d.a.x, all(var_0.d.a) || all(var_0.a.a.a.xy), var_0.c, true), vec4<bool>(!any(vec2<bool>(var_0.c, var_0.d.a.x)), select(true, !var_0.d.a.x, true), var_0.d.a.x, !(!var_0.c))));
    return _wgslsmith_f_op_vec2_f32(ceil(var_0.e.zz));
}

fn func_4(arg_0: i32, arg_1: vec2<f32>, arg_2: Struct_3) -> bool {
    var var_0 = firstTrailingBit(0i);
    let var_1 = _wgslsmith_f_op_f32(step(-869f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(-720f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.x, arg_2.b))))))));
    let var_2 = Struct_3(arg_2.a, 1028f, arg_2.d.a.x, Struct_1(vec4<bool>(any(vec2<bool>(true, true)), all(vec4<bool>(false, arg_2.d.a.x, true, arg_2.c)), true, _wgslsmith_div_f32(arg_2.e.x, 1000f) != _wgslsmith_f_op_f32(min(-1000f, var_1)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(arg_2.e, vec4<f32>(-1000f, 224f, arg_2.b, 952f)))))));
    var var_3 = var_2.a.a;
    let var_4 = max(select(u_input.c.zz, u_input.c.xx, var_2.a.c.a.ww) ^ max(-u_input.c.wz, firstLeadingBit(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.c.x, arg_0), u_input.c.xz))), _wgslsmith_mult_vec2_i32(u_input.a, vec2<i32>(31190i, -_wgslsmith_sub_i32(2147483647i, arg_0))));
    return false;
}

fn func_1(arg_0: Struct_3, arg_1: Struct_3) -> Struct_3 {
    global0 = array<vec3<f32>, 11>();
    var var_0 = arg_1.d.a.x && func_4(abs(arg_1.a.b), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_2(u_input.b, 211f)) * arg_0.e.zy))), Struct_3(Struct_2(arg_0.a.c, _wgslsmith_mod_i32(arg_1.a.b, -2147483647i), arg_1.a.a), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-1005f, 1725f))), true, Struct_1(select(arg_0.d.a, vec4<bool>(false, arg_0.a.c.a.x, arg_0.c, arg_0.a.c.a.x), arg_1.a.c.a)), arg_1.e));
    var var_1 = 24953i;
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1484f, 539f), vec2<f32>(arg_1.b, 1075f))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.e.x, arg_0.b)))))) + arg_1.e.yy);
    var_0 = any(arg_0.d.a.zy);
    return Struct_3(Struct_2(Struct_1(select(vec4<bool>(arg_1.c, arg_1.d.a.x, arg_0.d.a.x, false), vec4<bool>(arg_0.a.a.a.x, true, arg_1.a.c.a.x, arg_0.a.a.a.x), 2147483647i < arg_0.a.b)), ~_wgslsmith_add_i32(_wgslsmith_sub_i32(55712i, 13343i), u_input.a.x), Struct_1(vec4<bool>(false, false, arg_0.d.a.x & false, true && arg_0.d.a.x))), _wgslsmith_f_op_f32(min(arg_1.e.x, _wgslsmith_div_f32(1381f, _wgslsmith_f_op_f32(f32(-1f) * -199f)))), arg_1.a.c.a.x, arg_0.a.a, vec4<f32>(_wgslsmith_f_op_f32(758f * 1f), -442f, -416f, -372f));
}

fn func_5(arg_0: Struct_3) -> u32 {
    global0 = array<vec3<f32>, 11>();
    var var_0 = u_input.b;
    var var_1 = func_1(func_1(arg_0, arg_0), Struct_3(func_1(arg_0, func_1(arg_0, func_1(arg_0, arg_0))).a, -743f, arg_0.c, Struct_1(vec4<bool>(!arg_0.c, !arg_0.c, !arg_0.a.c.a.x, true)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(arg_0.e))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(461f, 504f, arg_0.b, -1097f))))))).a;
    global0 = array<vec3<f32>, 11>();
    var var_2 = -1i;
    return ~6585u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(~(~func_5(func_1(Struct_3(Struct_2(Struct_1(vec4<bool>(false, false, true, true)), u_input.a.x, Struct_1(vec4<bool>(false, true, false, false))), -1000f, false, Struct_1(vec4<bool>(false, true, false, true)), vec4<f32>(-1264f, 202f, -1246f, -2236f)), Struct_3(Struct_2(Struct_1(vec4<bool>(true, false, false, true)), 26896i, Struct_1(vec4<bool>(false, false, true, false))), -672f, true, Struct_1(vec4<bool>(false, true, false, true)), vec4<f32>(-398f, -489f, -703f, 281f))))));
    var var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_vec2_f32(func_2(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(u_input.b, u_input.b), ~u_input.b), _wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, 0u) & vec2<u32>(u_input.b, u_input.b), ~vec2<u32>(u_input.b, 29061u))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1424f + -216f) + _wgslsmith_f_op_f32(max(221f, -427f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-740f - -1000f)))))).x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2107f * 288f) - -1002f) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(552f, -1000f))))) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_vec2_f32(func_2(u_input.b, _wgslsmith_f_op_f32(-994f + 913f))).x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1025f + -2941f)))))));
    var_1 = _wgslsmith_f_op_f32(sign(368f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-1f), vec3<i32>(func_1(func_1(Struct_3(Struct_2(Struct_1(vec4<bool>(false, true, false, false)), 0i, Struct_1(vec4<bool>(false, true, true, false))), 615f, false, Struct_1(vec4<bool>(true, true, true, true)), vec4<f32>(1496f, -1427f, -2069f, -865f)), Struct_3(Struct_2(Struct_1(vec4<bool>(true, false, true, false)), 39292i, Struct_1(vec4<bool>(true, false, true, true))), 1781f, false, Struct_1(vec4<bool>(false, false, false, false)), vec4<f32>(-1081f, 1922f, -1098f, -808f))), Struct_3(Struct_2(Struct_1(vec4<bool>(false, false, true, false)), 31992i, Struct_1(vec4<bool>(false, false, false, false))), 561f, true, Struct_1(vec4<bool>(true, false, false, true)), vec4<f32>(708f, -498f, -1000f, -2179f))).a.b & u_input.c.x, ~(~29515i), firstTrailingBit(u_input.c.x)), firstTrailingBit(vec3<u32>(_wgslsmith_mod_u32(u_input.b, u_input.b) >> (28429u % 32u), 82538u, ~42431u ^ _wgslsmith_clamp_u32(18501u, u_input.b, 4294967295u))), u_input.a.x);
}

