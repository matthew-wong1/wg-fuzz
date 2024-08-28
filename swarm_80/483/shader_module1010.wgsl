struct Struct_1 {
    a: vec2<u32>,
    b: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(false, false);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec3<bool>, arg_1: i32, arg_2: u32) -> vec4<bool> {
    let var_0 = Struct_1(vec2<u32>(12002u, 4294967295u) << ((max(~vec2<u32>(54144u, arg_2), select(vec2<u32>(u_input.c, arg_2), vec2<u32>(u_input.c, 0u), vec2<bool>(true, global0.x))) ^ (vec2<u32>(1u, 10864u) >> (vec2<u32>(u_input.c, arg_2) % vec2<u32>(32u)))) % vec2<u32>(32u)), i32(-1i) * -57860i);
    global0 = vec2<bool>(global0.x, true);
    global0 = select(vec2<bool>(true, true), vec2<bool>(true, true), !(!arg_0.yy));
    let var_1 = select(vec2<bool>(true, !all(!vec4<bool>(false, global0.x, global0.x, global0.x))), arg_0.xy, vec2<bool>(~_wgslsmith_clamp_u32(0u, var_0.a.x, u_input.c) != countOneBits(1u >> (var_0.a.x % 32u)), any(!(!vec2<bool>(global0.x, true)))));
    let var_2 = var_0;
    return !(!select(!select(vec4<bool>(arg_0.x, false, global0.x, arg_0.x), vec4<bool>(arg_0.x, true, true, global0.x), vec4<bool>(var_1.x, var_1.x, var_1.x, global0.x)), vec4<bool>(true, true, false, true), select(select(vec4<bool>(global0.x, false, true, true), vec4<bool>(true, false, var_1.x, arg_0.x), vec4<bool>(var_1.x, var_1.x, var_1.x, arg_0.x)), select(vec4<bool>(true, true, arg_0.x, global0.x), vec4<bool>(true, arg_0.x, arg_0.x, false), false), vec4<bool>(arg_0.x, true, global0.x, false))));
}

fn func_2() -> vec3<u32> {
    let var_0 = false;
    var var_1 = vec3<bool>(global0.x, false, true | var_0);
    var_1 = !vec3<bool>(true, select(any(!vec3<bool>(false, var_1.x, global0.x)), false, any(var_1.xy)), any(func_3(select(vec3<bool>(true, var_1.x, var_1.x), vec3<bool>(var_1.x, false, var_1.x), vec3<bool>(global0.x, true, false)), u_input.d & 1i, 44590u)));
    let var_2 = Struct_1(_wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(firstLeadingBit(vec2<u32>(4294967295u, 43912u)), ~vec2<u32>(u_input.c, u_input.c)) | ~firstTrailingBit(vec2<u32>(0u, 4650u)), firstTrailingBit(abs(abs(vec2<u32>(1u, 1u))))), -17574i);
    var_1 = select(vec3<bool>(false, true, true), select(!vec3<bool>(!var_1.x, var_1.x, all(vec2<bool>(var_1.x, false))), !(!vec3<bool>(var_0, var_1.x, false)), !select(!vec3<bool>(true, var_0, var_0), !vec3<bool>(true, var_0, false), func_3(vec3<bool>(false, var_1.x, false), u_input.b, u_input.c).zwy)), vec3<bool>(true, true, false));
    return vec3<u32>(_wgslsmith_clamp_u32(~var_2.a.x, _wgslsmith_clamp_u32(u_input.c, var_2.a.x << (_wgslsmith_mod_u32(var_2.a.x, var_2.a.x) % 32u), ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, 4294967295u, u_input.c), vec3<u32>(var_2.a.x, u_input.c, var_2.a.x))), ~(83555u >> (1u % 32u)) << (_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.c, 6134u, u_input.c, var_2.a.x), ~vec4<u32>(var_2.a.x, u_input.c, 10327u, 1u)) % 32u)), 1u, 0u);
}

fn func_1(arg_0: vec2<bool>) -> Struct_1 {
    let var_0 = _wgslsmith_add_u32(min(~1u, ~(~u_input.c) ^ u_input.c), _wgslsmith_dot_vec3_u32(abs((vec3<u32>(u_input.c, u_input.c, 5775u) << (vec3<u32>(1u, 1217u, u_input.c) % vec3<u32>(32u))) << (~vec3<u32>(u_input.c, 1u, u_input.c) % vec3<u32>(32u))), _wgslsmith_div_vec3_u32(~vec3<u32>(32565u, u_input.c, u_input.c) | (vec3<u32>(36733u, u_input.c, u_input.c) ^ vec3<u32>(1u, u_input.c, 14242u)), ~func_2())));
    var var_1 = Struct_1(vec2<u32>(_wgslsmith_add_u32(_wgslsmith_sub_u32(abs(u_input.c), ~0u), 1u), u_input.c >> (_wgslsmith_mod_u32(u_input.c, 6812u) % 32u)), reverseBits(u_input.d));
    var var_2 = ~_wgslsmith_add_vec3_i32(vec3<i32>(abs(9829i) << (_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.a.x, u_input.c, u_input.c, 6829u), vec4<u32>(4294967295u, var_1.a.x, var_1.a.x, var_0)) % 32u), ~(-2147483647i), firstTrailingBit(var_1.b) | _wgslsmith_add_i32(34201i, -2147483647i)), ~(~vec3<i32>(-1i, var_1.b, u_input.d)));
    let var_3 = Struct_1(var_1.a, max(49070i, i32(-1i) * -3986i));
    var_2 = max(vec3<i32>(13018i, countOneBits(_wgslsmith_dot_vec2_i32(-var_2.xz, -vec2<i32>(var_2.x, -1i))), -firstTrailingBit(6283i | var_1.b)), vec3<i32>(-25021i, var_1.b ^ 0i, 34890i) >> (vec3<u32>(~abs(0u), _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.a.x, 4294967295u, 0u), vec3<u32>(18645u, 1u, 8468u)), _wgslsmith_add_u32(var_1.a.x, u_input.c)), 1u) % vec3<u32>(32u)));
    return Struct_1(var_1.a, _wgslsmith_mult_i32(abs(-abs(var_3.b)), var_3.b));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(!(!select(vec2<bool>(global0.x, global0.x), vec2<bool>(global0.x, false), global0.x)));
    global0 = !(!select(vec2<bool>(true, any(vec4<bool>(global0.x, global0.x, false, true))), vec2<bool>(global0.x, true), select(select(vec2<bool>(global0.x, global0.x), vec2<bool>(global0.x, global0.x), false), select(vec2<bool>(false, false), vec2<bool>(global0.x, false), vec2<bool>(global0.x, global0.x)), vec2<bool>(true, true))));
    let var_1 = var_0;
    global0 = vec2<bool>(false, !(!global0.x));
    let var_2 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1325f * -1013f))))))));
}

