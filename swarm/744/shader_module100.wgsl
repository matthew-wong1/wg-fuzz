struct Struct_1 {
    a: vec4<i32>,
    b: vec2<i32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: Struct_1,
    d: i32,
    e: vec2<u32>,
}

struct Struct_3 {
    a: vec2<bool>,
}

struct Struct_4 {
    a: i32,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec3<i32>,
    d: f32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 16822u;

var<private> global1: Struct_4;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32) -> i32 {
    var var_0 = reverseBits(u_input.a.x << (~0u % 32u));
    let var_1 = Struct_1(vec4<i32>(36464i, 1i, global1.a, -2147483647i), ~vec2<i32>(-29878i, 1i));
    var_0 = 0u;
    global1 = Struct_4(1i, _wgslsmith_f_op_vec3_f32(round(global1.b)));
    var var_2 = _wgslsmith_dot_vec4_u32(~abs(~min(vec4<u32>(4294967295u, 25957u, 30608u, u_input.a.x), vec4<u32>(0u, u_input.a.x, u_input.a.x, u_input.a.x))), ~select(~(~vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 1u)), vec4<u32>(u_input.a.x, u_input.a.x, 23276u, 0u) & (vec4<u32>(u_input.a.x, 10746u, 1u, 1u) << (vec4<u32>(1u, u_input.a.x, 40974u, u_input.a.x) % vec4<u32>(32u))), any(vec2<bool>(true, true))));
    return arg_0;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: u32) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2150f * _wgslsmith_f_op_f32(exp2(global1.b.x))));
    global1 = Struct_4(global1.a, vec3<f32>(_wgslsmith_f_op_f32(ceil(var_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(global1.b.x))))), arg_1.a.x));
    var var_1 = true;
    var var_2 = Struct_3(select(vec2<bool>((-510f > arg_1.a.x) | true, !(arg_1.e.x < arg_2)), vec2<bool>(all(select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true))), all(vec2<bool>(true, false))), !vec2<bool>(false, all(vec2<bool>(true, false)))));
    var_1 = all(vec3<bool>(any(!select(var_2.a, var_2.a, var_2.a.x)), false, var_2.a.x));
    return u_input.b;
}

fn func_2(arg_0: i32, arg_1: vec3<u32>, arg_2: Struct_2, arg_3: vec4<i32>) -> i32 {
    var var_0 = abs(0u);
    global1 = Struct_4(~u_input.b, global1.b);
    let var_1 = -878f;
    let var_2 = arg_2.b;
    var var_3 = ~vec4<u32>(1u, arg_2.e.x, 1u, ~arg_2.e.x);
    return countOneBits(func_4(Struct_1(vec4<i32>(func_3(arg_0), 36136i, max(-23006i, -47862i), ~arg_0), abs(arg_3.zy)), arg_2, _wgslsmith_mod_u32(_wgslsmith_sub_u32(80302u, var_3.x), _wgslsmith_dot_vec3_u32(arg_1, var_3.xwx)) & 3032u));
}

fn func_1(arg_0: u32) -> Struct_1 {
    let var_0 = vec2<bool>(true, true);
    global1 = Struct_4(_wgslsmith_mod_i32(abs(func_2(-2147483647i, vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), Struct_2(vec2<f32>(global1.b.x, -818f), Struct_1(vec4<i32>(16734i, -11794i, 1i, -17515i), vec2<i32>(u_input.b, global1.a)), Struct_1(vec4<i32>(2147483647i, global1.a, 24093i, u_input.b), vec2<i32>(u_input.b, u_input.b)), 1i, u_input.a), vec4<i32>(u_input.b, u_input.b, global1.a, 2920i) << (vec4<u32>(arg_0, u_input.a.x, 1u, 4294967295u) % vec4<u32>(32u)))), -(~u_input.b)), global1.b);
    var var_1 = var_0;
    let var_2 = Struct_3(select(vec2<bool>(all(vec4<bool>(true, var_1.x, var_0.x, true)), select(select(true, false, var_1.x), true, true)), !(!vec2<bool>(var_0.x, false)), var_1.x));
    let var_3 = Struct_2(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(-global1.b.x), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global1.b.x + global1.b.x)))))), Struct_1(-(vec4<i32>(-1i) * -vec4<i32>(-1i, 0i, 35650i, u_input.b)), _wgslsmith_clamp_vec2_i32(reverseBits(vec2<i32>(u_input.b, global1.a)), ~vec2<i32>(1i, -14451i), vec2<i32>(global1.a, -7161i) ^ vec2<i32>(-2147483647i, -1i)) >> (_wgslsmith_add_vec2_u32(u_input.a, vec2<u32>(u_input.a.x, arg_0) ^ vec2<u32>(u_input.a.x, 0u)) % vec2<u32>(32u))), Struct_1(vec4<i32>(abs(u_input.b), ~global1.a, u_input.b, 1i), vec2<i32>(-1i) * -(vec2<i32>(0i, -31432i) << (vec2<u32>(arg_0, 1u) % vec2<u32>(32u)))), firstLeadingBit(select(~func_3(global1.a), -1i, !(!var_0.x))), abs(~vec2<u32>(arg_0 << (33960u % 32u), _wgslsmith_add_u32(5175u, 64183u))));
    return Struct_1(-(~var_3.c.a), var_3.c.b ^ var_3.b.a.zy);
}

fn func_5(arg_0: Struct_1) -> vec3<i32> {
    global0 = abs(max(max(1u, u_input.a.x), reverseBits(29521u)));
    var var_0 = !(!vec3<bool>(!(u_input.a.x < u_input.a.x), u_input.a.x <= ~u_input.a.x, any(select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, false)))));
    let var_1 = vec4<u32>(u_input.a.x, 0u, ~_wgslsmith_clamp_u32(u_input.a.x, ~u_input.a.x, abs(~u_input.a.x)), ~_wgslsmith_dot_vec3_u32(vec3<u32>(firstTrailingBit(4294967295u), u_input.a.x ^ u_input.a.x, 1u), vec3<u32>(68859u, ~4294967295u, 1u)));
    var var_2 = select(!select(!(!var_0.xz), !var_0.xx, var_0.zz), vec2<bool>(var_0.x, false), var_0.yx);
    global0 = ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 4294967295u, abs(abs(u_input.a.x)), u_input.a.x), ~_wgslsmith_mod_vec4_u32(reverseBits(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, var_1.x)), vec4<u32>(u_input.a.x, 37280u, 1u, 3178u)));
    return vec3<i32>(u_input.b, firstLeadingBit(func_1(1u).a.x), func_3(arg_0.b.x) << ((~(var_1.x & var_1.x) ^ 1u) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_4(~(~_wgslsmith_div_i32(u_input.b >> (0u % 32u), _wgslsmith_add_i32(global1.a, 49341i))), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.b.x), -678f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global1.b.x))))), global1.b.x));
    global0 = firstLeadingBit(u_input.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.a.x, vec2<i32>(-2147483647i ^ _wgslsmith_sub_i32(global1.a, -7065i), u_input.b), select(vec3<i32>(firstLeadingBit(~global1.a), _wgslsmith_mod_i32(global1.a, 2147483647i), global1.a), _wgslsmith_clamp_vec3_i32(func_5(func_1(1u)), vec3<i32>(u_input.b, 2147483647i, 0i), -vec3<i32>(u_input.b, global1.a, 30230i)), !select(select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), true), vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false)))), -384f, u_input.a);
}

