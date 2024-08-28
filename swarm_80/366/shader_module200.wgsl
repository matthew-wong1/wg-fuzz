struct Struct_1 {
    a: vec2<bool>,
    b: vec4<i32>,
    c: vec3<bool>,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec4<i32>,
    d: f32,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_1(arg_0: vec4<bool>, arg_1: bool) -> i32 {
    return -u_input.a;
}

fn func_3(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: vec4<f32>) -> bool {
    global0 = true;
    let var_0 = arg_0.a.c.x;
    let var_1 = arg_0.e;
    var var_2 = var_1;
    var var_3 = Struct_2(Struct_1(select(select(select(arg_1.wz, arg_0.a.c.zz, arg_1.wx), !vec2<bool>(false, var_0), vec2<bool>(var_0, false)), !arg_0.a.c.xy, _wgslsmith_dot_vec3_i32(vec3<i32>(0i, u_input.a, var_1.d), arg_0.e.b.xww) >= -var_2.d), vec4<i32>(_wgslsmith_add_i32(_wgslsmith_mult_i32(-6883i, 0i), firstLeadingBit(arg_0.c.x)), func_1(!arg_1, all(vec4<bool>(true, true, var_2.c.x, false))), max(21792i, 0i) >> (u_input.b.x % 32u), ~func_1(arg_1, true)), !(!vec3<bool>(arg_0.a.a.x, var_1.a.x, false)), _wgslsmith_div_i32(_wgslsmith_mod_i32(var_2.d << (35813u % 32u), _wgslsmith_sub_i32(u_input.a, -374i)), u_input.a)), 3414u, reverseBits(min(_wgslsmith_div_vec4_i32(-vec4<i32>(var_2.b.x, 11871i, -1i, var_1.d), vec4<i32>(1i, -66706i, 7101i, 24313i) | vec4<i32>(u_input.a, -1i, 74393i, arg_0.a.b.x)), countOneBits(abs(vec4<i32>(arg_0.a.d, arg_0.c.x, u_input.a, 15321i))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.d), _wgslsmith_f_op_f32(arg_0.d + 1312f)), -1584f))), arg_0.a);
    return false;
}

fn func_2(arg_0: Struct_1) -> i32 {
    global0 = 7356u < u_input.b.x;
    global0 = !(!func_3(Struct_2(Struct_1(vec2<bool>(arg_0.a.x, arg_0.a.x), arg_0.b, vec3<bool>(false, false, arg_0.a.x), u_input.a), 1u, ~arg_0.b, _wgslsmith_f_op_f32(sign(-717f)), Struct_1(arg_0.a, vec4<i32>(arg_0.d, u_input.a, 1i, 1i), arg_0.c, 1i)), select(select(vec4<bool>(arg_0.a.x, arg_0.c.x, arg_0.a.x, true), vec4<bool>(true, false, false, arg_0.c.x), vec4<bool>(true, arg_0.a.x, arg_0.a.x, arg_0.a.x)), !vec4<bool>(false, arg_0.c.x, arg_0.a.x, true), vec4<bool>(arg_0.a.x, arg_0.a.x, false, true)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-408f, -387f, 973f, -691f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1113f, 785f, 1000f, -445f) - vec4<f32>(1168f, -748f, 880f, 555f)))));
    let var_0 = ~(~(~vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 44506u, u_input.b.x), vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x)), u_input.b.x | u_input.b.x, u_input.b.x | u_input.b.x, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.b.x, 0u), vec3<u32>(1u, 1u, u_input.b.x)))));
    var var_1 = Struct_2(arg_0, u_input.b.x, vec4<i32>(arg_0.b.x, -1i, abs(arg_0.b.x), ~2147483647i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1009f + -937f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-585f)))) - -671f), arg_0);
    var var_2 = Struct_2(Struct_1(vec2<bool>(true || arg_0.c.x, false), _wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(-vec4<i32>(24968i, arg_0.d, 2147483647i, var_1.a.b.x), var_1.a.b), _wgslsmith_sub_vec4_i32(var_1.c, firstLeadingBit(vec4<i32>(u_input.a, var_1.a.d, var_1.a.b.x, -34336i)))), vec3<bool>(false, var_1.a.b.x != arg_0.d, all(select(arg_0.c, var_1.a.c, var_1.e.c))), ~0i), 97593u, var_1.c, _wgslsmith_f_op_f32(-var_1.d), arg_0);
    return ~(-1i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(Struct_1(vec2<bool>(true, true), -vec4<i32>(func_1(vec4<bool>(true, true, true, false), false), firstTrailingBit(50239i), -u_input.a, -30679i), vec3<bool>(any(select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, true), true)), true, true), u_input.a), ~u_input.b.x, vec4<i32>(2147483647i, -_wgslsmith_clamp_i32(u_input.a, _wgslsmith_clamp_i32(-2147483647i, 1i, u_input.a), func_2(Struct_1(vec2<bool>(false, true), vec4<i32>(u_input.a, u_input.a, 0i, 1i), vec3<bool>(true, true, false), u_input.a))), u_input.a, _wgslsmith_sub_i32(_wgslsmith_div_i32(u_input.a, 18815i) >> (_wgslsmith_mod_u32(u_input.b.x, u_input.b.x) % 32u), u_input.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(103f - 168f))))), Struct_1(vec2<bool>(all(vec3<bool>(true, true, true)), !any(vec2<bool>(false, true))), -vec4<i32>(_wgslsmith_div_i32(u_input.a, -1i), -29086i, -u_input.a, -1i), select(vec3<bool>(any(vec3<bool>(true, true, false)), true, all(vec3<bool>(true, true, true))), select(vec3<bool>(true, true, false), select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(true, false, false)), select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true))), all(vec2<bool>(true, true))), firstTrailingBit(-_wgslsmith_mod_i32(u_input.a, u_input.a))));
    let var_1 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.d - -1002f) - _wgslsmith_div_f32(-374f, 371f))))), abs(u_input.b.x), ~(var_1.c.zyw | var_0.a.b.zzz));
}

