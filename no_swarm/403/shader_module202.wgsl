struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<i32>,
    c: Struct_1,
    d: vec3<u32>,
}

struct Struct_4 {
    a: Struct_3,
    b: bool,
    c: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(vec3<i32>(18437i, -3869i, 53475i)), vec2<bool>(true, false));

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2(arg_0: Struct_2) -> u32 {
    global0 = Struct_2(Struct_1(_wgslsmith_clamp_vec3_i32(vec3<i32>(-arg_0.a.a.x, firstTrailingBit(u_input.a.x), min(global0.a.a.x, u_input.a.x)), -(~vec3<i32>(u_input.a.x, global0.a.a.x, 76508i)), global0.a.a)), arg_0.b);
    global0 = Struct_2(Struct_1(_wgslsmith_mult_vec3_i32(vec3<i32>(-35191i, 54802i, 2147483647i) | _wgslsmith_mult_vec3_i32(vec3<i32>(20096i, global0.a.a.x, global0.a.a.x), vec3<i32>(global0.a.a.x, u_input.a.x, -1i)), vec3<i32>(_wgslsmith_mod_i32(arg_0.a.a.x, arg_0.a.a.x), global0.a.a.x, ~(-12807i)))), global0.b);
    return u_input.b.x;
}

fn func_1(arg_0: vec4<f32>) -> Struct_2 {
    var var_0 = func_2(Struct_2(global0.a, vec2<bool>((global0.a.a.x < 1i) && (u_input.a.x != u_input.a.x), true)));
    return Struct_2(global0.a, vec2<bool>(false, any(vec3<bool>(true, select(global0.b.x, true, global0.b.x), true))));
}

fn func_3(arg_0: vec2<u32>, arg_1: f32) -> f32 {
    global0 = Struct_2(global0.a, !vec2<bool>(true, all(!vec3<bool>(global0.b.x, true, true))));
    var var_0 = Struct_1(vec3<i32>(func_1(vec4<f32>(_wgslsmith_f_op_f32(min(arg_1, 572f)), _wgslsmith_f_op_f32(401f + arg_1), _wgslsmith_div_f32(arg_1, -282f), _wgslsmith_f_op_f32(arg_1 + arg_1))).a.a.x, firstLeadingBit(~1984i) & func_1(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_1, arg_1, -258f, -2318f)))).a.a.x, abs(global0.a.a.x)));
    var_0 = Struct_1(~(var_0.a >> (~vec3<u32>(7255u, 42758u, 19573u) % vec3<u32>(32u))));
    global0 = Struct_2(func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1472f, 492f, arg_1, arg_1))) - _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_1, arg_1, 276f, arg_1)))))).a, global0.b);
    global0 = func_1(vec4<f32>(_wgslsmith_f_op_f32(select(arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_1))), false)), arg_1, arg_1, _wgslsmith_f_op_f32(1000f * 557f)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(181f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(278f)) - arg_1))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(936f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(-637f, 156f, global0.b.x)))), _wgslsmith_f_op_f32(-1240f - 1046f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1512f)))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -856f, _wgslsmith_f_op_f32(f32(-1f) * -960f), _wgslsmith_f_op_f32(-1419f * -1480f)))));
    let var_0 = Struct_4(Struct_3(Struct_2(global0.a, select(vec2<bool>(global0.b.x, global0.b.x), vec2<bool>(global0.b.x, global0.b.x), true)), ~(global0.a.a | _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a.x, global0.a.a.x, global0.a.a.x), vec3<i32>(2147483647i, -2147483647i, global0.a.a.x))), global0.a, firstTrailingBit(reverseBits(vec3<u32>(54168u, u_input.c, u_input.b.x)))), !(!(!global0.b.x)) | false, _wgslsmith_f_op_f32(func_3(_wgslsmith_sub_vec2_u32(_wgslsmith_mod_vec2_u32(select(vec2<u32>(26742u, 81548u), vec2<u32>(59270u, 4294967295u), false), firstTrailingBit(vec2<u32>(4294967295u, 4294967295u))), firstLeadingBit(u_input.b) << (~u_input.b % vec2<u32>(32u))), 351f)));
    let var_1 = var_0.a;
    global0 = Struct_2(global0.a, select(!func_1(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-239f, var_0.c, var_0.c, 1000f), vec4<f32>(364f, 691f, var_0.c, var_0.c)))).b, !vec2<bool>(select(true, var_0.b, true), true), !(!func_1(vec4<f32>(var_0.c, 294f, 234f, 2033f)).b)));
    let x = u_input.a;
    s_output = StorageBuffer(-20332i, _wgslsmith_dot_vec3_u32(var_1.d, var_0.a.d));
}

