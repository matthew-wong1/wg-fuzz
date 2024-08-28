struct Struct_1 {
    a: vec4<bool>,
    b: f32,
}

struct Struct_2 {
    a: i32,
    b: vec2<bool>,
    c: Struct_1,
    d: vec3<bool>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: f32,
    c: Struct_2,
    d: i32,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<bool>,
    d: bool,
}

struct Struct_5 {
    a: vec3<f32>,
    b: vec3<f32>,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(243i, 2147483647i, 35862i, -45917i);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: vec3<bool>) -> u32 {
    return firstLeadingBit(~abs(1u));
}

fn func_3(arg_0: vec3<f32>, arg_1: f32, arg_2: Struct_4, arg_3: Struct_1) -> vec2<bool> {
    global0 = abs(u_input.a);
    var var_0 = select(any(arg_2.a.a), !(!(-339f != arg_1)), all(arg_2.a.a.ww));
    var_0 = (_wgslsmith_dot_vec3_u32(vec3<u32>(~0u, _wgslsmith_clamp_u32(0u, 0u, 5413u), ~23175u), select(~vec3<u32>(2246u, 15260u, 4294967295u), select(vec3<u32>(4294967295u, 38790u, 4294967295u), vec3<u32>(0u, 42900u, 4294967295u), arg_3.a.wzz), global0.x <= 1i)) >= ~72631u) & !arg_2.a.a.x;
    global0 = u_input.a;
    let var_1 = Struct_5(vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_3.b, arg_1)) + _wgslsmith_f_op_f32(abs(639f))))), _wgslsmith_f_op_f32(arg_3.b - -1125f), arg_1), arg_0, select(vec4<bool>(all(vec4<bool>(arg_2.b.a.x, arg_3.a.x, false, false)) & arg_2.b.a.x, _wgslsmith_f_op_f32(exp2(arg_2.a.b)) == _wgslsmith_f_op_f32(arg_2.b.b * arg_3.b), arg_3.a.x, false), !arg_2.b.a, !select(true, true, false) != !all(vec2<bool>(arg_2.b.a.x, true))));
    return select(select(vec2<bool>(true, var_1.c.x), vec2<bool>(true & var_1.c.x, any(!arg_2.a.a.zzw)), select(!vec2<bool>(arg_2.c.x, true), vec2<bool>(true, true), !var_1.c.x)), !vec2<bool>(arg_3.a.x, true), all(vec4<bool>(arg_2.a.a.x | arg_3.a.x, arg_3.a.x, select(true, arg_3.a.x, arg_2.b.a.x), false)) | (any(var_1.c.xz) & arg_3.a.x));
}

fn func_1() -> f32 {
    var var_0 = vec4<i32>((abs(-24700i) << (func_2(vec3<bool>(false, true, true)) % 32u)) | ~reverseBits(global0.x), u_input.a.x, u_input.b, u_input.d);
    let var_1 = Struct_3(!select(!select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), true), select(vec3<bool>(false, true, true), select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), true), vec3<bool>(false, true, true)), all(select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), false))), -1106f, Struct_2(_wgslsmith_div_i32(-u_input.a.x, _wgslsmith_sub_i32(global0.x, ~global0.x)), select(func_3(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(627f, -976f, -1000f))), 563f, Struct_4(Struct_1(vec4<bool>(true, false, false, false), 1000f), Struct_1(vec4<bool>(true, true, false, false), -805f), vec2<bool>(false, true), true), Struct_1(vec4<bool>(true, true, true, false), -228f)), vec2<bool>(false, true), vec2<bool>(true, any(vec3<bool>(false, false, false)))), Struct_1(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false)), select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, true))), -1855f), vec3<bool>(true, true, true)), ~_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, u_input.b), vec2<i32>(global0.x >> (6677u % 32u), -53682i)));
    global0 = _wgslsmith_add_vec4_i32(u_input.a, ~(-vec4<i32>(var_1.c.a, global0.x, -var_1.d, -2147483647i)));
    var var_2 = vec3<f32>(586f, _wgslsmith_f_op_f32(-var_1.b), var_1.c.c.b);
    let var_3 = vec2<bool>(var_1.a.x, var_1.a.x);
    return 263f;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = select(reverseBits(u_input.a), vec4<i32>(~(~global0.x), -u_input.a.x, u_input.e, max(-2147483647i, -(global0.x & u_input.b))), all(vec3<bool>(true, true, true)));
    global0 = ~firstTrailingBit(_wgslsmith_add_vec4_i32(u_input.a, _wgslsmith_add_vec4_i32(u_input.a << (vec4<u32>(1u, 3808u, 0u, 11947u) % vec4<u32>(32u)), select(vec4<i32>(-1i, global0.x, global0.x, 2147483647i), u_input.a, true))));
    global0 = -u_input.a;
    var var_0 = Struct_2(51453i, vec2<bool>(true, true), Struct_1(!select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, true))), _wgslsmith_f_op_f32(func_1())), !vec3<bool>(any(select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, false), false)), select(all(vec4<bool>(false, false, true, true)), true, true), _wgslsmith_div_i32(-2147483647i, u_input.d) < ~(-46558i)));
    var var_1 = !var_0.b;
    let x = u_input.a;
    s_output = StorageBuffer(1i, vec3<i32>(-(global0.x >> (~29019u % 32u)), u_input.a.x & -var_0.a, u_input.d));
}

