struct Struct_1 {
    a: f32,
    b: bool,
    c: vec4<bool>,
    d: u32,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec2<u32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(1168f, true, vec4<bool>(true, false, false, true), 68196u);

var<private> global1: vec4<bool> = vec4<bool>(false, false, true, false);

var<private> global2: array<Struct_2, 23>;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec4<i32>, arg_1: bool, arg_2: vec2<f32>) -> vec4<f32> {
    let var_0 = -arg_0;
    let var_1 = !(!global1.zxz);
    let var_2 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(arg_2.x, 666f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(arg_2)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1201f, 445f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(arg_2 + arg_2))), arg_2)), global0.c.x));
    let var_3 = Struct_2(arg_0.zxx | ~_wgslsmith_clamp_vec3_i32(abs(u_input.a.ywx), u_input.a.xzy, firstTrailingBit(var_0.yzx)));
    let var_4 = _wgslsmith_dot_vec3_u32(vec3<u32>(~u_input.c.x, ~(~0u), global0.d), vec3<u32>(0u, ~u_input.b.x, 22581u));
    return vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1578f - 2448f))))) + 928f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global0.a - global0.a), _wgslsmith_f_op_f32(select(-281f, arg_2.x, global0.b)), var_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -610f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.x + 1529f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a))));
}

fn func_2(arg_0: vec3<f32>) -> Struct_1 {
    let var_0 = vec3<bool>(true, !(!(!global0.c.x)), false);
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_clamp_vec4_i32(vec4<i32>(-6706i, u_input.a.x, 23808i, 2147483647i), (vec4<i32>(u_input.e, u_input.a.x, u_input.a.x, 14910i) | vec4<i32>(-1i, u_input.d, -1i, -2147483647i)) << (max(u_input.b, u_input.b) % vec4<u32>(32u)), vec4<i32>(abs(-2789i), select(-8402i, 2147483647i, var_0.x), -17495i, -9402i)), global1.x, _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.x, _wgslsmith_f_op_f32(836f - arg_0.x))))) + vec4<f32>(_wgslsmith_f_op_f32(-global0.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x * -1000f))), _wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_div_vec4_i32(select(vec4<i32>(u_input.e, 3085i, u_input.e, u_input.d), vec4<i32>(56395i, u_input.d, u_input.a.x, -2147483647i), true), vec4<i32>(u_input.e, u_input.e, u_input.e, 15244i)), !var_0.x, _wgslsmith_div_vec2_f32(vec2<f32>(arg_0.x, global0.a), _wgslsmith_f_op_vec2_f32(arg_0.xx + vec2<f32>(global0.a, arg_0.x))))).x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1331f * arg_0.x))))));
    var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-2389f, -1747f, var_1.x, var_1.x) + vec4<f32>(266f, 1713f, var_1.x, -647f)) * _wgslsmith_f_op_vec4_f32(min(vec4<f32>(global0.a, arg_0.x, -407f, var_1.x), vec4<f32>(var_1.x, -768f, var_1.x, 1915f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_1.x, var_1.x, var_1.x, global0.a))))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(353f, 296f, global0.a, var_1.x))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(var_1.x, var_1.x, var_1.x, -419f), vec4<f32>(arg_0.x, -999f, 643f, var_1.x)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_0.x, 739f, global0.a, -1086f), vec4<f32>(arg_0.x, arg_0.x, global0.a, 355f))), select(vec4<bool>(true, false, global0.b, global0.c.x), global0.c, true))))), vec4<f32>(arg_0.x, global0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -335f)), _wgslsmith_f_op_f32(step(511f, _wgslsmith_div_f32(-591f, _wgslsmith_div_f32(-464f, 2015f))))));
    let var_2 = _wgslsmith_mod_vec3_u32(u_input.b.zwx, vec3<u32>(u_input.b.x, _wgslsmith_div_u32(31602u, 1u), ~_wgslsmith_mod_u32(global0.d, _wgslsmith_mult_u32(u_input.b.x, 0u))));
    global2 = array<Struct_2, 23>();
    return Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_0.x + var_1.x))))), _wgslsmith_f_op_f32(605f + _wgslsmith_f_op_f32(f32(-1f) * -356f)), global0.b)), any(global1.zx), global0.c, 0u);
}

fn func_1(arg_0: vec2<f32>) -> bool {
    let var_0 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(1036f + _wgslsmith_f_op_f32(trunc(global0.a))), _wgslsmith_f_op_f32(-arg_0.x), arg_0.x))));
    global0 = func_2(_wgslsmith_f_op_vec3_f32(-var_0));
    global1 = !(!vec4<bool>(select(1i > u_input.d, all(vec4<bool>(global1.x, global0.c.x, global1.x, global1.x)), global1.x), _wgslsmith_f_op_f32(sign(1197f)) >= global0.a, !(-1769f > arg_0.x), global0.b || (27637i != u_input.a.x)));
    let var_1 = global2[_wgslsmith_index_u32(~func_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a, var_0.x, arg_0.x))))).d, 23u)];
    global2 = array<Struct_2, 23>();
    return func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(arg_0.x)), _wgslsmith_f_op_f32(1749f * 254f), _wgslsmith_f_op_f32(min(231f, 766f))), var_0))).b;
}

fn func_4(arg_0: vec2<bool>, arg_1: f32, arg_2: Struct_2) -> vec2<f32> {
    global2 = array<Struct_2, 23>();
    global2 = array<Struct_2, 23>();
    var var_0 = reverseBits(20598i);
    var_0 = ~reverseBits(-2147483647i);
    var var_1 = Struct_2(max(vec3<i32>(_wgslsmith_clamp_i32(u_input.e, arg_2.a.x, 1i), u_input.d << (13985u % 32u), ~0i), arg_2.a) | -((vec3<i32>(u_input.e, arg_2.a.x, u_input.a.x) ^ u_input.a.yww) << (select(u_input.b.xxz, vec3<u32>(global0.d, 4294967295u, 4294967295u), global1.x) % vec3<u32>(32u))));
    return _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-global0.a), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(2067f * global0.a), _wgslsmith_f_op_f32(round(1808f))))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(global0.a, -175f))), vec2<f32>(-792f, global0.a))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.a, -874f) - vec2<f32>(-595f, 727f)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1577f, global0.a) * vec2<f32>(global0.a, -1407f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_4(vec2<bool>(true, func_1(vec2<f32>(global0.a, -1893f))), global0.a, Struct_2(u_input.a.wzz)))));
    let var_1 = u_input.b.yy;
    global0 = Struct_1(556f, func_2(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(1369f, 775f, global0.a))))))).b, !global0.c, 1u);
    var var_2 = Struct_2(-(~u_input.a.zyw));
    let var_3 = _wgslsmith_mod_u32(var_1.x, ~_wgslsmith_mod_u32(global0.d, ~u_input.c.x));
    let x = u_input.a;
    s_output = StorageBuffer(var_1, firstTrailingBit(u_input.b.wzy));
}

