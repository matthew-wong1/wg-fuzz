struct Struct_1 {
    a: i32,
    b: vec3<f32>,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<f32>,
}

struct Struct_4 {
    a: vec2<f32>,
}

struct Struct_5 {
    a: Struct_2,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_5) -> u32 {
    let var_0 = Struct_4(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_0.a.a.c, arg_1.a.a.b.x))));
    global0 = arg_0.a.a;
    global0 = Struct_1(firstTrailingBit(~firstLeadingBit(~arg_0.a.a.a)), vec3<f32>(_wgslsmith_f_op_f32(sign(global0.c)), _wgslsmith_f_op_f32(arg_1.a.a.c + _wgslsmith_f_op_f32(max(arg_0.a.a.c, _wgslsmith_f_op_f32(trunc(arg_0.a.a.c))))), arg_0.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-277f, -597f) * _wgslsmith_f_op_f32(f32(-1f) * -2082f))))));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(global0.b.x * arg_0.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_0.a.a.c, _wgslsmith_f_op_f32(arg_1.a.a.c * _wgslsmith_f_op_f32(floor(global0.c)))))), 1823f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-2248f)) + _wgslsmith_f_op_f32(f32(-1f) * -1262f)))));
    global0 = arg_1.a.a;
    return _wgslsmith_sub_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.b.x, abs(4294967295u)), vec2<u32>(max(48682u, 13036u), countOneBits(1u))), arg_1.b.x), ~(~select(13587u, arg_1.b.x, false) | 1u));
}

fn func_2(arg_0: vec2<bool>, arg_1: f32) -> Struct_1 {
    let var_0 = vec4<u32>(4631u, ~_wgslsmith_mod_u32(func_3(Struct_3(Struct_2(Struct_1(global0.a, global0.b, global0.c), vec4<i32>(global0.a, -27693i, -3395i, global0.a)), vec4<f32>(global0.c, arg_1, global0.c, 1786f)), Struct_5(Struct_2(Struct_1(2147483647i, global0.b, arg_1), vec4<i32>(15955i, global0.a, 30554i, global0.a)), vec2<u32>(4294967295u, 0u))), firstTrailingBit(48651u)) & _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 23089u, 1u), vec3<u32>(4294967295u, 2358u, 24972u), ~vec3<u32>(4294967295u, 0u, 15274u)), _wgslsmith_sub_vec3_u32(select(vec3<u32>(15473u, 0u, 0u), vec3<u32>(1u, 4294967295u, 1u), arg_0.x), vec3<u32>(1u, 1u, 1u))), ~_wgslsmith_mult_u32(_wgslsmith_mult_u32(~1u, ~4294967295u), ~(~4294967295u)), abs(firstLeadingBit(4294967295u)));
    var var_1 = ~countOneBits(abs(vec4<u32>(var_0.x, ~4294967295u, ~95198u, 0u)));
    var var_2 = 636f;
    let var_3 = Struct_5(Struct_2(Struct_1(_wgslsmith_clamp_i32(firstLeadingBit(u_input.b.x), countOneBits(u_input.a.x), _wgslsmith_div_i32(u_input.b.x, 7948i)), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(global0.b * vec3<f32>(global0.b.x, -767f, arg_1)))), _wgslsmith_f_op_f32(f32(-1f) * -912f)), select(~vec4<i32>(6239i, global0.a, u_input.a.x, -70064i) >> (~vec4<u32>(8652u, var_0.x, 1u, var_0.x) % vec4<u32>(32u)), vec4<i32>(global0.a, 2147483647i, global0.a, ~u_input.b.x), arg_0.x != arg_0.x)), var_0.wz);
    global0 = Struct_1(~global0.a, vec3<f32>(var_3.a.a.c, -126f, arg_1), _wgslsmith_f_op_f32(step(global0.c, _wgslsmith_f_op_f32(var_3.a.a.b.x + _wgslsmith_div_f32(956f, _wgslsmith_f_op_f32(trunc(arg_1)))))));
    return Struct_1(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, -abs(u_input.a.x), ~1i, ~1i), var_3.a.b), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, -847f, -395f) + _wgslsmith_f_op_vec3_f32(select(global0.b, vec3<f32>(-104f, -1000f, -813f), true)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + arg_1)));
}

fn func_1(arg_0: vec2<u32>) -> Struct_1 {
    global0 = func_2(!vec2<bool>(arg_0.x >= (arg_0.x ^ 0u), true), _wgslsmith_f_op_f32(-global0.b.x));
    global0 = func_2(!select(vec2<bool>(true, arg_0.x <= 4294967295u), vec2<bool>(false, false), vec2<bool>(true, true)), _wgslsmith_f_op_f32(-global0.c));
    let var_0 = -u_input.b.x;
    global0 = func_2(!select(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true)), select(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false)), vec2<bool>(false, true), true), any(vec2<bool>(true, true))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(global0.b.x, 1017f)))));
    global0 = Struct_1(2147483647i, vec3<f32>(_wgslsmith_f_op_f32(-global0.b.x), global0.c, _wgslsmith_f_op_f32(global0.b.x - global0.c)), _wgslsmith_f_op_f32(-822f * -447f));
    return Struct_1(~u_input.a.x, global0.b, -1291f);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1(~firstTrailingBit(~abs(vec2<u32>(34290u, 0u))));
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1100f, _wgslsmith_f_op_f32(1407f - global0.c))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1000f, global0.c))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.c, global0.b.x))))));
    global0 = func_2(!vec2<bool>(any(vec3<bool>(false, false, true)) & true, true), 1087f);
    var var_1 = vec4<bool>(true, !any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false), true), vec4<bool>(true, true, true, true))), false, true);
    var var_2 = firstTrailingBit(1i);
    var var_3 = var_1.x;
    global0 = Struct_1(max(global0.a, func_2(vec2<bool>(!var_1.x, var_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1873f, -1735f)))).a), _wgslsmith_div_vec3_f32(global0.b, vec3<f32>(765f, global0.c, -164f)), -1409f);
    var var_4 = ~(~firstTrailingBit(select(_wgslsmith_div_u32(58270u, 112433u), max(1u, 4294967295u), false)));
    let x = u_input.a;
    s_output = StorageBuffer(global0.a, global0.b, _wgslsmith_mult_vec3_u32(~vec3<u32>(7191u, func_3(Struct_3(Struct_2(Struct_1(u_input.b.x, global0.b, global0.b.x), vec4<i32>(u_input.b.x, global0.a, 0i, 1i)), vec4<f32>(486f, var_0.x, global0.b.x, 1000f)), Struct_5(Struct_2(Struct_1(u_input.b.x, vec3<f32>(-931f, -1137f, 1669f), var_0.x), vec4<i32>(-17213i, global0.a, global0.a, -1i)), vec2<u32>(41857u, 40395u))), 19470u), _wgslsmith_add_vec3_u32(vec3<u32>(~45588u, ~32954u, select(1794u, 4294967295u, true)), vec3<u32>(~4294967295u, 37153u, 15628u))));
}

