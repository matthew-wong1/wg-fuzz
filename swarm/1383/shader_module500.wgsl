struct Struct_1 {
    a: vec3<u32>,
    b: u32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: i32,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct Struct_4 {
    a: Struct_3,
    b: u32,
    c: Struct_3,
    d: f32,
    e: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec3<i32>,
    d: vec3<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
    d: vec2<i32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: u32, arg_1: bool) -> vec2<u32> {
    var var_0 = u_input.e.xz;
    global0 = Struct_3(global0.a);
    let var_1 = Struct_3(!select(vec3<bool>(select(arg_1, false, arg_1), true, true), !select(vec3<bool>(global0.a.x, false, false), global0.a, global0.a.x), false | any(vec4<bool>(arg_1, global0.a.x, global0.a.x, true))));
    var var_2 = abs(_wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(~vec4<i32>(2147483647i, 2147483647i, -14253i, u_input.c.x), _wgslsmith_div_vec4_i32(vec4<i32>(0i, -31914i, u_input.b.x, u_input.b.x), vec4<i32>(u_input.b.x, 1i, 19772i, u_input.c.x))) << (countOneBits(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, arg_0, u_input.d.x, arg_0), vec4<u32>(4294967295u, 1u, arg_0, var_0.x))) % vec4<u32>(32u)), -_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b.x, 25757i, -2147483647i, u_input.c.x), vec4<i32>(2242i, 1i, 2147483647i, -44998i), vec4<i32>(u_input.c.x, -1i, -24038i, 0i) << (u_input.e % vec4<u32>(32u)))));
    let var_3 = u_input.e;
    return select(u_input.d.xy, ~var_3.wy, var_1.a.zz);
}

fn func_2(arg_0: Struct_3, arg_1: vec2<i32>) -> Struct_3 {
    let var_0 = arg_0.a.x & (_wgslsmith_sub_u32(1u, _wgslsmith_dot_vec2_u32(func_3(15331u, false), vec2<u32>(0u, u_input.d.x))) >= u_input.a);
    let var_1 = 127f;
    global0 = Struct_3(vec3<bool>(true, !(true || !arg_0.a.x), all(select(select(vec4<bool>(var_0, arg_0.a.x, false, global0.a.x), vec4<bool>(true, arg_0.a.x, var_0, var_0), vec4<bool>(var_0, global0.a.x, false, arg_0.a.x)), select(vec4<bool>(true, true, global0.a.x, arg_0.a.x), vec4<bool>(false, global0.a.x, true, true), vec4<bool>(global0.a.x, true, false, arg_0.a.x)), vec4<bool>(false, global0.a.x, var_0, true)))));
    let var_2 = Struct_2(u_input.e.wz, u_input.b.x);
    global0 = arg_0;
    return arg_0;
}

fn func_1(arg_0: vec2<i32>, arg_1: vec3<i32>) -> bool {
    global0 = func_2(Struct_3(select(!vec3<bool>(global0.a.x, false, global0.a.x), vec3<bool>(true, any(vec3<bool>(false, true, false)), all(vec2<bool>(global0.a.x, true))), global0.a.x | !global0.a.x)), -_wgslsmith_mod_vec2_i32(reverseBits(arg_1.zx) >> (_wgslsmith_sub_vec2_u32(u_input.e.zy, vec2<u32>(0u, 4294967295u)) % vec2<u32>(32u)), vec2<i32>(select(1i, -23708i, true), 0i)));
    let var_0 = _wgslsmith_mult_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, u_input.e.x), u_input.e.zx), vec2<u32>(u_input.e.x, _wgslsmith_mod_u32(_wgslsmith_sub_u32(u_input.a, u_input.a), countOneBits(u_input.a))));
    global0 = Struct_3(vec3<bool>(any(!select(vec2<bool>(global0.a.x, true), global0.a.yz, global0.a.x)), true, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(-1223f)))) >= 1f));
    global0 = Struct_3(vec3<bool>(false, true && global0.a.x, !all(vec4<bool>(global0.a.x, global0.a.x, true, global0.a.x))));
    let var_1 = ~(~firstTrailingBit(max(-38551i, u_input.c.x) ^ max(arg_1.x, arg_1.x)));
    return true;
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_3, arg_2: Struct_2) -> StorageBuffer {
    var var_0 = arg_0.x;
    var_0 = true;
    var_0 = !all(vec2<bool>(all(select(vec4<bool>(arg_0.x, arg_0.x, arg_1.a.x, true), vec4<bool>(false, false, arg_1.a.x, global0.a.x), arg_1.a.x)), true));
    global0 = Struct_3(arg_1.a);
    var var_1 = ~u_input.d;
    return StorageBuffer(firstLeadingBit(_wgslsmith_dot_vec2_u32(~_wgslsmith_div_vec2_u32(var_1.xx, arg_2.a), max(arg_2.a, max(arg_2.a, var_1.zy)))), ~(-51558i), select(~(~vec3<u32>(var_1.x, 0u, 58322u) ^ u_input.d), ~vec3<u32>(~1u, arg_2.a.x, ~1u), select(global0.a, arg_1.a, !select(arg_1.a, vec3<bool>(arg_0.x, true, global0.a.x), arg_0.x))), ~u_input.c.xz, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -692f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1000f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1713f + -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - -903f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(select(!vec4<bool>(func_1(vec2<i32>(u_input.b.x, u_input.b.x), u_input.c), global0.a.x, global0.a.x, global0.a.x), select(select(select(vec4<bool>(true, global0.a.x, false, false), vec4<bool>(global0.a.x, false, global0.a.x, global0.a.x), true), vec4<bool>(false, global0.a.x, false, false), !vec4<bool>(true, global0.a.x, global0.a.x, global0.a.x)), !select(vec4<bool>(global0.a.x, true, global0.a.x, true), vec4<bool>(true, global0.a.x, false, global0.a.x), global0.a.x), select(!vec4<bool>(global0.a.x, true, false, global0.a.x), !vec4<bool>(false, false, global0.a.x, global0.a.x), !vec4<bool>(global0.a.x, true, true, false))), select(vec4<bool>(global0.a.x, all(vec3<bool>(global0.a.x, false, true)), global0.a.x, true), !(!vec4<bool>(true, false, false, global0.a.x)), select(select(vec4<bool>(false, false, true, global0.a.x), vec4<bool>(false, global0.a.x, global0.a.x, true), false), !vec4<bool>(false, false, global0.a.x, global0.a.x), select(vec4<bool>(false, true, false, global0.a.x), vec4<bool>(global0.a.x, false, global0.a.x, false), vec4<bool>(global0.a.x, global0.a.x, true, false))))), func_2(func_2(Struct_3(!global0.a), vec2<i32>(u_input.b.x, i32(-1i) * -7507i)), vec2<i32>(abs(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, 31394i, u_input.b.x, -104258i), vec4<i32>(2429i, 61941i, u_input.b.x, 6344i))), u_input.b.x)), Struct_2(~u_input.d.xz, u_input.c.x));
}

