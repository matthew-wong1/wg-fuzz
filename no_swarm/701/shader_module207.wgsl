struct Struct_1 {
    a: u32,
    b: vec2<f32>,
    c: u32,
    d: f32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: vec4<bool>,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
    d: vec4<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec2<i32>,
    d: vec4<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3() -> vec4<f32> {
    global0 = Struct_1(10031u, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.b), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(844f, global0.d), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.d, 662f)), vec2<bool>(true, true)))), _wgslsmith_div_vec2_f32(vec2<f32>(1727f, _wgslsmith_f_op_f32(max(global0.b.x, 2071f))), _wgslsmith_f_op_vec2_f32(-global0.b)))), ~u_input.a, _wgslsmith_f_op_f32(409f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-419f))))));
    var var_0 = _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global0.d))) + _wgslsmith_f_op_f32(f32(-1f) * -486f)), _wgslsmith_f_op_f32(global0.d * global0.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b.x)), _wgslsmith_f_op_f32(ceil(global0.b.x)))));
    var var_1 = global0.d;
    var var_2 = false;
    var_0 = _wgslsmith_f_op_vec4_f32(max(vec4<f32>(829f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global0.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(449f - _wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -122f), _wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(-global0.b.x))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(-global0.b.x), _wgslsmith_f_op_f32(-global0.d), _wgslsmith_f_op_f32(-global0.b.x), -1409f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_0.x, -735f, var_0.x, 1532f)))))), true))));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_0.x, var_0.x, var_0.x, global0.d))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1000f, global0.d, -1679f, 552f)))), any(select(vec2<bool>(false, true), vec2<bool>(true, true), false)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(-795f)), 1345f, var_0.x, _wgslsmith_f_op_f32(-1373f * -1616f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0.x, var_0.x, 1009f, 141f))) + vec4<f32>(388f, 555f, -140f, global0.d))))));
}

fn func_2(arg_0: u32, arg_1: vec3<i32>) -> Struct_1 {
    let var_0 = arg_1.zx;
    let var_1 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(global0.b.x)), 223f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b.x) * 1f)), _wgslsmith_f_op_vec4_f32(func_3()));
    var var_2 = _wgslsmith_f_op_vec2_f32(global0.b + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(var_1.wz)))));
    let var_3 = _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_1.x))), 709f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_2.x * global0.b.x), var_1.x, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-535f))), global0.d)));
    var var_4 = _wgslsmith_div_f32(global0.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(2429f)))));
    return Struct_1(~4294967295u, global0.b, _wgslsmith_add_u32(21147u, 65524u), -1658f);
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: vec3<f32>) -> Struct_1 {
    global0 = arg_0;
    var var_0 = arg_1;
    let var_1 = reverseBits(arg_2.x) >= 15650i;
    global0 = func_2(reverseBits(28508u), u_input.d.xyw);
    var var_2 = Struct_2(arg_3, arg_0, select(vec4<bool>(!select(false, var_1, var_1), var_1, true, true), select(vec4<bool>(any(vec2<bool>(var_1, true)), 4294967295u < global0.a, var_1 && false, true), select(!vec4<bool>(var_1, true, true, true), vec4<bool>(var_1, var_1, var_1, var_1), !vec4<bool>(var_1, var_1, true, var_1)), !vec4<bool>(var_1, var_1, var_1, var_1)), _wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(max(1000f, arg_0.b.x)))) != 1339f), ~(-arg_2.xyz));
    return var_2.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(reverseBits(-_wgslsmith_add_vec4_i32(abs(u_input.d), -u_input.d)));
    global0 = func_1(Struct_1(abs(~_wgslsmith_mod_u32(u_input.e.x, u_input.e.x)), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1333f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1254f))), 1u & ~max(global0.a, u_input.e.x), 903f), Struct_1(firstLeadingBit(44149u), global0.b, 53721u, -636f), vec4<i32>(var_0.x, 0i, _wgslsmith_div_i32(-2147483647i, var_0.x >> (u_input.b.x % 32u)), i32(-1i) * -2147483647i), vec3<f32>(global0.d, -118f, -187f));
    var var_1 = vec3<bool>(true, (false & ((u_input.c ^ u_input.c) < _wgslsmith_dot_vec2_i32(var_0.xw, u_input.d.zz))) != (all(select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true))) & true), !any(vec4<bool>(true, false, any(vec2<bool>(true, true)), true)));
    let var_2 = global0.b.x;
    var var_3 = func_1(func_2(global0.c, _wgslsmith_mod_vec3_i32(u_input.d.yyz, -_wgslsmith_div_vec3_i32(vec3<i32>(-51714i, 2147483647i, var_0.x), vec3<i32>(-3897i, -2147483647i, u_input.d.x)))), Struct_1(select(~_wgslsmith_dot_vec2_u32(u_input.e.xz, u_input.b), ~func_1(Struct_1(global0.c, global0.b, 4294967295u, global0.d), Struct_1(52638u, vec2<f32>(837f, global0.b.x), u_input.e.x, -1000f), vec4<i32>(-2147483647i, -2147483647i, var_0.x, -1i), vec3<f32>(global0.b.x, global0.d, global0.b.x)).a, (0u > u_input.b.x) && true), _wgslsmith_f_op_vec2_f32(round(func_2(~4294967295u, countOneBits(vec3<i32>(-1i, 39490i, u_input.c))).b)), _wgslsmith_mult_u32(abs(global0.a), 1u) >> (global0.a % 32u), _wgslsmith_f_op_f32(global0.b.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b.x) + global0.b.x))), var_0, vec3<f32>(global0.d, _wgslsmith_f_op_f32(-global0.d), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1961f * _wgslsmith_f_op_f32(-604f * global0.b.x)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1167f, 633f, var_1.x)) * global0.b.x))));
    let x = u_input.a;
    s_output = StorageBuffer(~max(u_input.b, vec2<u32>(global0.a, u_input.a) >> (~u_input.e.zy % vec2<u32>(32u))), abs(_wgslsmith_div_i32(var_0.x, -var_0.x)) & 16894i, u_input.d.yy, _wgslsmith_div_vec4_f32(vec4<f32>(var_3.b.x, -376f, func_1(Struct_1(0u, vec2<f32>(1035f, -606f), var_3.c, var_3.d), Struct_1(27439u, global0.b, global0.c, -308f), var_0, _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.b.x, -1000f, global0.d) * vec3<f32>(1045f, global0.b.x, 175f))).d, _wgslsmith_f_op_f32(exp2(func_2(11642u, u_input.d.yyw).d))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(2044f, -1160f, var_3.d, -464f), _wgslsmith_div_vec4_f32(vec4<f32>(var_3.b.x, var_3.b.x, var_3.d, -1000f), vec4<f32>(var_3.b.x, -997f, global0.d, -901f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.d, global0.d, 1183f, global0.d) * vec4<f32>(-1000f, -363f, -1121f, var_3.d))))), u_input.d.x);
}

