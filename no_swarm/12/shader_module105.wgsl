struct Struct_1 {
    a: i32,
    b: u32,
    c: u32,
}

struct Struct_2 {
    a: f32,
    b: u32,
    c: f32,
    d: vec3<f32>,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: vec4<bool>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec3<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: Struct_4) -> f32 {
    var var_0 = min(~1u, ~(~global0.b.b.b));
    let var_1 = _wgslsmith_mod_u32(arg_2.b.b.b, _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(u_input.d, u_input.d), u_input.d << (vec3<u32>(20618u, 24440u, 1u) % vec3<u32>(32u))), ~(~vec3<u32>(48400u, global0.b.b.b, 68950u))), arg_0.b));
    var var_2 = _wgslsmith_f_op_f32(-arg_0.a);
    let var_3 = u_input.d;
    let var_4 = !select(vec2<bool>(any(vec3<bool>(true, false, arg_2.b.c.x)), global0.b.c.x), arg_2.b.c.xx, vec2<bool>(false, global0.b.c.x));
    return 1597f;
}

fn func_2() -> i32 {
    global0 = Struct_4(vec4<bool>(global0.b.c.x, !(true && (false | global0.b.c.x)), all(!select(vec2<bool>(false, global0.b.c.x), vec2<bool>(false, true), global0.b.c.x)), false != !(!global0.b.c.x)), global0.b);
    let var_0 = _wgslsmith_f_op_f32(func_3(Struct_2(1226f, u_input.d.x, -786f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(180f, -109f, 1162f))))), ~select(_wgslsmith_sub_vec3_i32(-u_input.a, _wgslsmith_mod_vec3_i32(u_input.c, vec3<i32>(u_input.a.x, u_input.b.x, 6896i))), (vec3<i32>(u_input.c.x, 1i, u_input.a.x) >> (vec3<u32>(27260u, 0u, 0u) % vec3<u32>(32u))) & (vec3<i32>(global0.b.a, global0.b.b.a, 0i) << (vec3<u32>(u_input.d.x, global0.b.b.b, global0.b.b.b) % vec3<u32>(32u))), global0.b.c.x), Struct_4(!select(vec4<bool>(true, global0.a.x, global0.a.x, true), vec4<bool>(global0.a.x, global0.b.c.x, false, global0.b.c.x), global0.a), global0.b)));
    let var_1 = global0.b;
    var var_2 = Struct_4(!select(var_1.c, var_1.c, select(vec4<bool>(true, true, true, true), !vec4<bool>(false, false, var_1.c.x, var_1.c.x), any(vec4<bool>(true, global0.a.x, false, false)))), Struct_3(~(~select(0i, u_input.a.x, true)), var_1.b, vec4<bool>(!(true != global0.b.c.x), true, global0.b.c.x, global0.b.c.x && (global0.a.x || true))));
    return -(~var_2.b.b.a);
}

fn func_1(arg_0: vec4<bool>, arg_1: vec3<bool>) -> f32 {
    let var_0 = Struct_4(vec4<bool>(true, !(~22711u >= u_input.d.x), true, !(func_2() >= global0.b.a)), Struct_3(_wgslsmith_div_i32(~(-5548i), abs(_wgslsmith_dot_vec3_i32(u_input.a, u_input.a))), Struct_1(~_wgslsmith_div_i32(global0.b.b.a, 0i), abs(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d.x, u_input.d.x, global0.b.b.b, global0.b.b.c), vec4<u32>(global0.b.b.b, u_input.d.x, 26197u, u_input.d.x))), global0.b.b.b), global0.b.c));
    var var_1 = global0.b.b;
    let var_2 = _wgslsmith_div_f32(-1017f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(-717f)))) * 803f));
    var var_3 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1494f, -312f))));
    let var_4 = !global0.b.c.x;
    return -426f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(-385f, 10422u, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1128f + -116f) - _wgslsmith_f_op_f32(f32(-1f) * -511f))), -231f)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(127f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -721f), _wgslsmith_f_op_f32(-230f * -261f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-575f - -751f) + _wgslsmith_f_op_f32(f32(-1f) * -1378f))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1701f, 1032f, -265f)), vec3<f32>(-377f, 2334f, _wgslsmith_f_op_f32(func_1(vec4<bool>(global0.a.x, false, global0.b.c.x, global0.a.x), global0.b.c.xzy)))))));
    global0 = Struct_4(vec4<bool>(global0.b.c.x, true, !(~global0.b.a < 16799i), !(!select(false, global0.a.x, true))), Struct_3(_wgslsmith_sub_i32(-16433i, max(-global0.b.a, u_input.b.x & 1i)), global0.b.b, vec4<bool>(!(global0.a.x && global0.a.x), -3855i > _wgslsmith_sub_i32(u_input.b.x, global0.b.b.a), global0.b.c.x & global0.b.c.x, -300f <= _wgslsmith_f_op_f32(-var_0.d.x))));
    var var_1 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-var_0.d.xz)));
    let var_2 = firstLeadingBit(vec2<i32>(countOneBits(~(~global0.b.b.a)), global0.b.b.a));
    let var_3 = global0.a;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(var_0.b, ~19720u, 1u), vec4<u32>(~min(select(var_0.b, 4294967295u, var_3.x), _wgslsmith_dot_vec3_u32(u_input.d, vec3<u32>(global0.b.b.c, global0.b.b.c, global0.b.b.c))), _wgslsmith_dot_vec4_u32(~vec4<u32>(0u, 4294967295u, 4349u, u_input.d.x) ^ ~vec4<u32>(var_0.b, 46535u, global0.b.b.c, 36460u), _wgslsmith_mult_vec4_u32(abs(vec4<u32>(var_0.b, u_input.d.x, global0.b.b.b, 19996u)), _wgslsmith_div_vec4_u32(vec4<u32>(0u, global0.b.b.b, u_input.d.x, 1u), vec4<u32>(29822u, 4294967295u, 4294967295u, global0.b.b.c)))), ~_wgslsmith_mult_u32(abs(4294967295u), u_input.d.x), ~(select(u_input.d.x, u_input.d.x, global0.a.x) >> (_wgslsmith_clamp_u32(0u, u_input.d.x, 4481u) % 32u))));
}

