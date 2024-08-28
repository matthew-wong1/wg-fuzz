struct Struct_1 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec3<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -7507i;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: i32) -> vec4<u32> {
    let var_0 = Struct_1(!vec4<bool>(arg_1.a.x, all(vec4<bool>(arg_1.a.x, true, true, true)) == true, true, false));
    let var_1 = var_0;
    global0 = arg_2;
    var var_2 = _wgslsmith_mult_u32(~1u, u_input.c.x);
    let var_3 = any(select(var_1.a.wx, arg_1.a.xz, all(select(!var_0.a.yz, select(var_0.a.xy, vec2<bool>(var_1.a.x, true), arg_1.a.x), select(vec2<bool>(arg_1.a.x, var_1.a.x), vec2<bool>(var_1.a.x, arg_1.a.x), vec2<bool>(var_0.a.x, false))))));
    return ~vec4<u32>(u_input.b << (0u % 32u), ~select(~u_input.c.x, firstTrailingBit(0u), select(arg_1.a.x, var_3, false)), 20045u, 1u);
}

fn func_2() -> f32 {
    var var_0 = ~abs(_wgslsmith_sub_vec4_u32(func_3(vec2<f32>(723f, 798f), Struct_1(vec4<bool>(false, false, true, true)), u_input.d.x), ~(~vec4<u32>(22725u, u_input.c.x, 0u, 74240u))));
    var var_1 = Struct_1(vec4<bool>(true, select(false, any(vec3<bool>(true, true, true)), true), true, true));
    global0 = firstLeadingBit(firstLeadingBit(_wgslsmith_mod_i32(u_input.d.x, 1i)) ^ 1i);
    return _wgslsmith_f_op_f32(max(-1961f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(1816f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-217f - 706f), 1460f)))), 251f)));
}

fn func_4(arg_0: vec3<i32>, arg_1: f32, arg_2: Struct_1) -> Struct_1 {
    let var_0 = arg_2.a.x;
    global0 = arg_0.x;
    global0 = arg_0.x;
    let var_1 = Struct_1(select(!select(arg_2.a, vec4<bool>(var_0, false, var_0, false), var_0), select(!(!arg_2.a), !arg_2.a, true), arg_2.a));
    let var_2 = ~(vec4<u32>(abs(u_input.c.x), 1u, _wgslsmith_dot_vec3_u32(~u_input.a, vec3<u32>(u_input.c.x, u_input.a.x, 0u)), u_input.a.x ^ u_input.b) | _wgslsmith_mult_vec4_u32(firstTrailingBit(vec4<u32>(88132u, u_input.a.x, 0u, u_input.c.x)), _wgslsmith_add_vec4_u32(~vec4<u32>(u_input.b, u_input.c.x, u_input.b, u_input.c.x), vec4<u32>(50350u, 5195u, u_input.b, 1u) >> (vec4<u32>(28326u, 1u, u_input.a.x, 3890u) % vec4<u32>(32u)))));
    return Struct_1(select(select(vec4<bool>(true, any(arg_2.a.yw), arg_2.a.x, var_1.a.x), select(select(arg_2.a, vec4<bool>(arg_2.a.x, false, false, false), arg_2.a), vec4<bool>(var_1.a.x, arg_2.a.x, arg_2.a.x, var_1.a.x), vec4<bool>(false, true, false, true)), !arg_2.a.x), !var_1.a, var_1.a.x));
}

fn func_1() -> f32 {
    var var_0 = vec4<bool>(true, false, true, !(_wgslsmith_f_op_f32(select(-1246f, 1000f, true)) <= _wgslsmith_f_op_f32(trunc(-1189f))));
    global0 = _wgslsmith_add_i32(~u_input.d.x, -1i >> (~u_input.c.x % 32u));
    global0 = u_input.d.x;
    let var_1 = func_4(~_wgslsmith_mod_vec3_i32(-u_input.d.wxy, u_input.d.wyy), _wgslsmith_f_op_f32(func_2()), Struct_1(!vec4<bool>(all(vec4<bool>(var_0.x, true, var_0.x, var_0.x)), true, all(var_0.wyw), select(false, var_0.x, var_0.x))));
    let var_2 = ~0u;
    return _wgslsmith_f_op_f32(f32(-1f) * -270f);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = -countOneBits((1i >> (~u_input.c.x % 32u)) << (((39477u << (u_input.a.x % 32u)) & u_input.c.x) % 32u));
    let var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-189f * 1512f), 203f) + _wgslsmith_f_op_f32(func_1()))));
    global0 = u_input.d.x;
    var var_1 = var_0;
    var_1 = var_0;
    global0 = _wgslsmith_mult_i32(~u_input.d.x, _wgslsmith_dot_vec2_i32(~(~u_input.d.wz), u_input.d.zx));
    global0 = 2147483647i;
    global0 = _wgslsmith_sub_i32((i32(-1i) * -abs(u_input.d.x)) & u_input.d.x, -1i);
    var var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(236f - _wgslsmith_f_op_f32(123f - _wgslsmith_f_op_f32(var_0 - _wgslsmith_f_op_f32(1813f + 1131f))))));
    let x = u_input.a;
    s_output = StorageBuffer(~(~reverseBits(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.b, u_input.a.x), vec2<u32>(52600u, 4294967295u)))), ~_wgslsmith_div_u32(_wgslsmith_mult_u32(0u, 0u ^ u_input.c.x), ~2190u), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1876f, 959f, 339f, 221f) + vec4<f32>(922f, var_0, 1437f, var_0)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1000f, -779f, var_0, var_0))), any(vec2<bool>(false, false)))) * _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-905f, var_0, 212f, -608f))))))));
}

