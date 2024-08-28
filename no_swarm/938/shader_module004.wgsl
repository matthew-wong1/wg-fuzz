struct Struct_1 {
    a: u32,
    b: vec2<bool>,
    c: vec3<bool>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec4<f32>,
    c: bool,
    d: f32,
    e: u32,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> vec4<f32> {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1245f);
    var var_1 = firstTrailingBit(vec3<i32>(i32(-1i) * -_wgslsmith_mult_i32(u_input.a.x, u_input.a.x), 4515i, -select(u_input.a.x & 1i, i32(-1i) * -3115i, true)));
    let var_2 = Struct_1(~countOneBits(~abs(u_input.b.x)), !(!select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false))), vec3<bool>(false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global0.x, global0.x)) - _wgslsmith_div_f32(-1397f, global0.x)) > 1000f, any(select(vec2<bool>(false, true), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true)), select(false, false, true)))), u_input.b.xxw);
    let var_3 = Struct_4(var_1.x, any(!var_2.b));
    let var_4 = var_3;
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1766f, -920f, 529f, var_0)))) * vec4<f32>(_wgslsmith_f_op_f32(var_0 - 945f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0))), 163f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 * global0.x)))));
}

fn func_2() -> Struct_2 {
    var var_0 = select(vec2<u32>(32705u, select(_wgslsmith_mod_u32(u_input.b.x, 13540u), ~_wgslsmith_add_u32(u_input.b.x, u_input.b.x), true)), ~(~vec2<u32>(u_input.b.x, 13268u) & u_input.b.yx) ^ ~vec2<u32>(18818u, u_input.b.x), true);
    var_0 = vec2<u32>(1u, max(~(~_wgslsmith_mod_u32(28683u, var_0.x)), var_0.x));
    let var_1 = Struct_3(Struct_2(vec3<bool>(all(select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false))), !any(vec4<bool>(true, true, true, false)), true), _wgslsmith_f_op_vec4_f32(func_3()), !all(vec2<bool>(true, true)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), global0.x), ~(u_input.b.x << (53739u % 32u))));
    var_0 = vec2<u32>(_wgslsmith_mult_u32(max(var_0.x, abs(~105955u)), var_0.x), firstLeadingBit(~1u));
    var var_2 = Struct_4(u_input.a.x, false);
    return var_1.a;
}

fn func_4(arg_0: Struct_2, arg_1: u32) -> Struct_1 {
    var var_0 = -(~u_input.a.x);
    var_0 = u_input.a.x;
    var_0 = 1i;
    let var_1 = global0.x;
    var var_2 = _wgslsmith_f_op_vec3_f32(arg_0.b.zwx - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(588f, global0.x), _wgslsmith_f_op_f32(arg_0.d + arg_0.d), 1f)));
    return Struct_1(min(51620u, (0u ^ _wgslsmith_clamp_u32(u_input.b.x, arg_0.e, 4521u)) >> (~0u % 32u)), vec2<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -484f)) < _wgslsmith_f_op_f32(trunc(global0.x)), arg_0.c), arg_0.a, abs(vec3<u32>(~4294967295u, 58230u, u_input.b.x) >> (~vec3<u32>(18880u, arg_1, 1u) % vec3<u32>(32u))));
}

fn func_1(arg_0: f32, arg_1: f32, arg_2: i32) -> Struct_1 {
    global0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-723f, -161f), vec2<f32>(global0.x, -241f))), vec2<f32>(arg_0, -1529f))))), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(247f * -1608f)))))));
    return func_4(func_2(), firstTrailingBit(_wgslsmith_add_u32(u_input.b.x, ~0u) ^ _wgslsmith_div_u32(21619u, u_input.b.x)));
}

fn func_5(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: vec2<u32>, arg_3: Struct_3) -> f32 {
    global0 = _wgslsmith_f_op_vec2_f32(-arg_3.a.b.zy);
    var var_0 = Struct_4(~_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.a.x, 3850i, 1i), firstLeadingBit(vec3<i32>(arg_1.x, 2147483647i, arg_1.x))), _wgslsmith_mult_i32(select(1i, 2147483647i, true), -18980i)), firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 33617u, 1u, u_input.b.x), ~u_input.b)) <= firstTrailingBit(0u));
    let var_1 = any(vec4<bool>(all(vec4<bool>(false, !arg_0.c.x, true, arg_0.b.x)), any(arg_0.c.zy), arg_0.b.x, true));
    var var_2 = arg_3.a;
    var_2 = Struct_2(arg_3.a.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(vec4<f32>(1436f, 1074f, 1000f, var_2.b.x), var_2.b), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-781f, global0.x, 982f, global0.x)))))), func_4(arg_3.a, ~((arg_3.a.e & arg_3.a.e) ^ ~var_2.e)).c.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_3.a.d, arg_3.a.d)))), u_input.b.x);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_div_f32(542f, var_2.b.x) + arg_3.a.b.x))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -338f))) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(var_2.d, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(1387f, -1153f))), all(var_2.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_3()).x) - var_2.d), !all(select(arg_3.a.a.zy, vec2<bool>(var_0.b, var_2.c), var_0.b)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<bool>(true, true, true, true);
    var var_1 = Struct_3(Struct_2(!select(!vec3<bool>(var_0.x, var_0.x, true), vec3<bool>(var_0.x, true, var_0.x), var_0.zyx), vec4<f32>(895f, 1773f, -1000f, _wgslsmith_f_op_f32(func_5(func_1(-876f, 359f, u_input.a.x), abs(u_input.a.zx), vec2<u32>(u_input.b.x, u_input.b.x), Struct_3(Struct_2(vec3<bool>(true, var_0.x, false), vec4<f32>(global0.x, -1679f, -1000f, global0.x), var_0.x, -356f, u_input.b.x))))), func_1(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(round(global0.x)), -26625i).b.x | ((u_input.b.x != 13199u) != func_1(523f, -1000f, u_input.a.x).b.x), global0.x, 15419u));
    var_1 = Struct_3(var_1.a);
    var var_2 = _wgslsmith_f_op_f32(-global0.x);
    var var_3 = !all(select(!select(vec4<bool>(true, true, true, false), var_0, var_0.x), !select(vec4<bool>(var_1.a.a.x, var_0.x, var_0.x, var_0.x), vec4<bool>(true, var_0.x, true, false), var_0), select(vec4<bool>(var_0.x, var_1.a.a.x, var_1.a.c, var_0.x), var_0, vec4<bool>(var_0.x, false, false, var_1.a.c))));
    var_2 = var_1.a.b.x;
    global0 = _wgslsmith_f_op_vec2_f32(-var_1.a.b.ww);
    let var_4 = _wgslsmith_div_vec3_i32(u_input.a, vec3<i32>(~u_input.a.x, min(~u_input.a.x, u_input.a.x >> (11203u % 32u)), _wgslsmith_add_i32(-19380i, u_input.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1001f, -1476f, 1022f)), vec3<f32>(-624f, var_1.a.d, -302f)) + var_1.a.b.xxy) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, _wgslsmith_f_op_f32(var_1.a.b.x + global0.x), var_1.a.b.x))));
}

