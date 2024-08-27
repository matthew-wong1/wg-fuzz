struct Struct_1 {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: u32,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: f32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<i32>(50644i, 28873i), 32944i, 38859u, 4294967295u, 654f);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
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

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec2<f32> {
    global0 = Struct_1(vec2<i32>(~global0.b, -1i), 2147483647i, 87219u, _wgslsmith_mod_u32(0u, u_input.e), -918f);
    global0 = Struct_1(vec2<i32>(global0.a.x, u_input.c), -(~(global0.b | 0i)), firstLeadingBit(~_wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 54168u, global0.c), select(vec3<u32>(u_input.a, global0.d, u_input.a), vec3<u32>(global0.d, 22531u, 35365u), false))), global0.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global0.e)))));
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.e - -756f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-841f + -1000f)) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(-1939f))))))));
    var_0 = global0.e;
    var var_1 = !(any(vec3<bool>(true, true, true)) && true);
    return _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(global0.e, global0.e), vec2<f32>(-329f, global0.e))) - vec2<f32>(861f, _wgslsmith_f_op_f32(sign(global0.e)))), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-231f, _wgslsmith_f_op_f32(abs(global0.e)))))))));
}

fn func_2(arg_0: bool) -> u32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global0.e, global0.e))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.e, 673f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(func_3()), _wgslsmith_f_op_vec2_f32(vec2<f32>(-300f, global0.e) * vec2<f32>(242f, -665f)))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.e, global0.e) - vec2<f32>(740f, -346f)))) * _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-201f, global0.e)))))));
    let var_1 = Struct_1(global0.a, global0.a.x, firstTrailingBit(select(0u, _wgslsmith_sub_u32(0u, ~u_input.e), true)), 1u, _wgslsmith_f_op_f32(trunc(-410f)));
    let var_2 = !all(!vec3<bool>(true, arg_0, all(vec2<bool>(false, arg_0))));
    global0 = Struct_1(var_1.a, u_input.b.x | _wgslsmith_dot_vec4_i32(select(-vec4<i32>(var_1.b, u_input.c, var_1.a.x, 2147483647i), select(vec4<i32>(33547i, u_input.c, -46020i, u_input.b.x), vec4<i32>(-295i, 1i, 1i, u_input.c), var_2), false), ~_wgslsmith_mult_vec4_i32(vec4<i32>(global0.a.x, var_1.a.x, 16127i, 1i), vec4<i32>(-16717i, u_input.d, 0i, -30525i))), 1u, 4294967295u, var_0.x);
    var var_3 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-250f, var_1.e)))));
    return ~firstTrailingBit(abs(firstLeadingBit(u_input.a)) << (_wgslsmith_dot_vec4_u32(vec4<u32>(0u, var_1.c, global0.c, var_1.c), firstLeadingBit(vec4<u32>(3493u, global0.d, var_1.d, 22877u))) % 32u));
}

fn func_1() -> f32 {
    let var_0 = u_input.b.x;
    let var_1 = -2147483647i;
    var var_2 = Struct_1(u_input.b.xx, ~var_1, ~u_input.a, _wgslsmith_add_u32(select(~0u, global0.d, 1073f < _wgslsmith_f_op_f32(-global0.e)), ~select(func_2(true), global0.c, true)), -220f);
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(902f, -739f, _wgslsmith_f_op_f32(round(1f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(-763f, global0.e))))), vec4<f32>(_wgslsmith_f_op_f32(floor(global0.e)), var_2.e, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(299f)), _wgslsmith_f_op_f32(f32(-1f) * -802f))), _wgslsmith_f_op_f32(step(-382f, _wgslsmith_f_op_f32(abs(1914f))))))) - _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1879f, -415f, global0.e, var_2.e) * _wgslsmith_f_op_vec4_f32(min(vec4<f32>(857f, global0.e, -1397f, global0.e), vec4<f32>(963f, -548f, global0.e, var_2.e))))))));
    var var_4 = true;
    return -323f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(global0.e, _wgslsmith_f_op_f32(-1247f + global0.e))), _wgslsmith_f_op_f32(func_1()), global0.e) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(547f, 1257f, _wgslsmith_f_op_f32(-global0.e)), vec3<f32>(global0.e, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-184f + 157f) - _wgslsmith_f_op_f32(exp2(global0.e))), global0.e), select(vec3<bool>(true, u_input.d != 34031i, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)))));
    var var_1 = false;
    var var_2 = vec2<i32>(global0.a.x, 6505i);
    var var_3 = ~4294967295u;
    global0 = Struct_1(global0.a, 73980i, ~_wgslsmith_div_u32(~u_input.e, _wgslsmith_div_u32(65509u, ~35786u)), global0.d, global0.e);
    let var_4 = _wgslsmith_div_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, countOneBits(u_input.c), global0.b, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, var_2.x), u_input.b.zy)), _wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b.x, 2147483647i, -2147483647i, 32141i), vec4<i32>(u_input.b.x, global0.b, var_2.x, 1i)), ~vec4<i32>(u_input.c, u_input.c, -27524i, u_input.c)), _wgslsmith_mult_vec4_i32(-vec4<i32>(u_input.c, 1i, -3556i, 18363i), vec4<i32>(global0.b, u_input.b.x, var_2.x, u_input.b.x))), -min(vec4<i32>(12702i, -1i, 4970i, global0.b), vec4<i32>(u_input.c, 20780i, global0.b, global0.a.x)) & (abs(vec4<i32>(u_input.b.x, u_input.b.x, var_2.x, -3575i)) ^ vec4<i32>(-11984i, var_2.x, u_input.b.x, u_input.c))) ^ abs(_wgslsmith_add_vec4_i32(select(vec4<i32>(var_2.x, 13536i, 12806i, 34149i), vec4<i32>(var_2.x, -1i, -1i, 1i), true), vec4<i32>(0i, -2147483647i, 2147483647i, -1i) & vec4<i32>(-14651i, u_input.b.x, -38361i, -2147483647i)) | vec4<i32>(firstTrailingBit(0i), global0.a.x, -1i ^ global0.b, ~global0.b));
    let var_5 = 4360u;
    var var_6 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.e) + var_0.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(u_input.e, ~(~abs(u_input.a)), select(~global0.d, ~46293u, true)), ~firstTrailingBit(8919u), _wgslsmith_f_op_f32(step(-815f, var_0.x)), _wgslsmith_f_op_vec2_f32(ceil(var_0.yy)));
}

