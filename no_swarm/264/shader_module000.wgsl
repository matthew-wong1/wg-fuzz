struct Struct_1 {
    a: u32,
    b: vec2<i32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec2<i32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec2<bool>(true, true), vec2<i32>(-12690i, 2719i), Struct_1(8732u, vec2<i32>(-1358i, i32(-2147483648))));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_2) -> vec2<bool> {
    var var_0 = max(~_wgslsmith_add_vec3_u32(vec3<u32>(select(arg_1.c.a, global0.c.a, arg_1.a.x), ~120368u, global0.c.a), _wgslsmith_mod_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(arg_1.c.a, arg_1.c.a, global0.c.a), vec3<u32>(arg_1.c.a, 1u, 57579u), vec3<u32>(1u, 35767u, arg_1.c.a)), ~vec3<u32>(4294967295u, u_input.a.x, 1u))), abs(countOneBits(~vec3<u32>(global0.c.a, 4294967295u, 68781u)) | _wgslsmith_add_vec3_u32(vec3<u32>(arg_1.c.a, arg_1.c.a, 68429u), vec3<u32>(119302u, arg_1.c.a, arg_1.c.a))));
    global0 = Struct_2(arg_1.a, vec2<i32>(u_input.b.x | 1i, -61745i), arg_1.c);
    global0 = Struct_2(select(!global0.a, !vec2<bool>(all(vec4<bool>(false, true, false, arg_1.a.x)), arg_1.c.a == arg_1.c.a), !select(vec2<bool>(arg_1.a.x, arg_1.a.x), select(vec2<bool>(false, true), global0.a, arg_1.a.x), global0.c.a < var_0.x)), global0.c.b, Struct_1(11992u, min(global0.b, firstLeadingBit(vec2<i32>(2147483647i, global0.c.b.x)) >> (var_0.xx % vec2<u32>(32u)))));
    var var_1 = -28851i;
    let var_2 = u_input.b.x;
    return vec2<bool>(global0.a.x, all(vec3<bool>(false, false, true)) | true);
}

fn func_2(arg_0: vec2<bool>, arg_1: f32) -> Struct_2 {
    global0 = Struct_2(!vec2<bool>(!(!arg_0.x), any(vec3<bool>(false, global0.a.x, false))), ~(~vec2<i32>(2147483647i, 2147483647i)) & u_input.b, Struct_1(countOneBits(57693u), ~vec2<i32>(reverseBits(u_input.b.x), _wgslsmith_sub_i32(1i, u_input.b.x))));
    var var_0 = !global0.a.x;
    var_0 = true;
    var var_1 = arg_1;
    var_0 = any(!(!vec3<bool>(true, arg_1 >= arg_1, false && arg_0.x)));
    return Struct_2(func_3(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, -899f) + vec2<f32>(-702f, 315f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(573f, -657f))))), Struct_2(vec2<bool>(global0.a.x, true), u_input.b, Struct_1(abs(1u), global0.b))), vec2<i32>(~global0.b.x, _wgslsmith_mult_i32(-15763i, _wgslsmith_mod_i32(u_input.b.x, u_input.b.x))), global0.c);
}

fn func_4(arg_0: f32, arg_1: u32, arg_2: bool, arg_3: Struct_2) -> Struct_1 {
    global0 = Struct_2(!vec2<bool>(true, all(func_3(vec2<f32>(814f, arg_0), Struct_2(arg_3.a, arg_3.c.b, Struct_1(90012u, global0.b))))), global0.b, Struct_1(~_wgslsmith_mult_u32(arg_3.c.a, 17244u), arg_3.c.b));
    global0 = Struct_2(vec2<bool>(global0.a.x, arg_3.a.x), global0.c.b, func_2(!arg_3.a, _wgslsmith_f_op_f32(f32(-1f) * -697f)).c);
    var var_0 = func_2(vec2<bool>(true, arg_2), arg_0).a;
    var_0 = !vec2<bool>(arg_2, !(267f < _wgslsmith_div_f32(-1108f, arg_0)));
    let var_1 = _wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_0))))))));
    return global0.c;
}

fn func_1(arg_0: f32) -> StorageBuffer {
    global0 = Struct_2(global0.a, firstLeadingBit(-countOneBits(firstLeadingBit(vec2<i32>(-1i, global0.b.x)))), func_4(arg_0, min(_wgslsmith_mult_u32(0u, min(117442u, 4294967295u)), ~global0.c.a | abs(24955u)), global0.a.x, func_2(global0.a, 1465f)));
    var var_0 = func_2(global0.a, arg_0);
    let var_1 = (_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.b.x, -1i, var_0.b.x, u_input.b.x), reverseBits(vec4<i32>(u_input.b.x, var_0.c.b.x, u_input.b.x, 30855i))), _wgslsmith_mod_i32(0i, 1i)) ^ global0.c.b.x) >= -(~u_input.b.x);
    var var_2 = _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(737f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1000f + -491f), _wgslsmith_f_op_f32(-arg_0))))))));
    let var_3 = Struct_2(func_2(!vec2<bool>(true, var_0.a.x), var_2.x).a, var_0.b, Struct_1(_wgslsmith_clamp_u32(_wgslsmith_div_u32(global0.c.a, func_4(1120f, 0u, true, Struct_2(vec2<bool>(false, true), vec2<i32>(u_input.b.x, var_0.c.b.x), global0.c)).a), global0.c.a >> (firstTrailingBit(90483u) % 32u), var_0.c.a), vec2<i32>(-(u_input.b.x & global0.b.x), ~_wgslsmith_clamp_i32(var_0.b.x, var_0.b.x, 8709i))));
    return StorageBuffer(vec3<u32>(_wgslsmith_add_u32(1u, _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(39225u, var_0.c.a), u_input.a), _wgslsmith_div_vec2_u32(u_input.a, u_input.a))), 58970u, var_3.c.a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0.a;
    let x = u_input.a;
    s_output = func_1(-1297f);
}

