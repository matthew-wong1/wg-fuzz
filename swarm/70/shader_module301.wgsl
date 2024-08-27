struct Struct_1 {
    a: bool,
    b: bool,
    c: u32,
    d: vec2<f32>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_2,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: u32, arg_1: vec3<i32>, arg_2: Struct_3) -> vec2<f32> {
    var var_0 = Struct_1(all(!vec3<bool>(!arg_2.a.a.b, arg_1.x < arg_1.x, false)), !((~arg_1.x < 1i) || false), ~_wgslsmith_dot_vec3_u32(arg_2.d, min(_wgslsmith_add_vec3_u32(vec3<u32>(1u, 1748u, u_input.a.x), arg_2.d), arg_2.d ^ u_input.a.wyx)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-697f, 280f), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.c.a.d.x, arg_2.c.a.d.x) + arg_2.a.a.d))) * arg_2.a.a.d), u_input.a.xy);
    var_0 = Struct_1(true, true, ~arg_0, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, var_0.d.x)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-299f, _wgslsmith_f_op_f32(-606f * -1548f)))), u_input.a.xz);
    let var_1 = Struct_2(Struct_1(select(all(!vec2<bool>(var_0.a, arg_2.a.a.b)), !arg_2.a.a.a, arg_2.a.a.a), true, _wgslsmith_sub_u32(4294967295u, arg_2.a.a.c) << (min(arg_0, arg_2.b.a.c) % 32u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-504f, var_0.d.x), vec2<f32>(1075f, 561f), vec2<bool>(arg_2.b.a.b, arg_2.c.a.a))) * var_0.d)), vec2<u32>(arg_0, _wgslsmith_div_u32(_wgslsmith_mod_u32(arg_0, arg_2.c.a.e.x), var_0.c))));
    let var_2 = arg_1.x;
    var var_3 = _wgslsmith_f_op_vec2_f32(vec2<f32>(-1604f, 682f) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(arg_2.a.a.d, _wgslsmith_f_op_vec2_f32(-var_1.a.d)), arg_2.b.a.d)));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.a.d));
}

fn func_2(arg_0: i32) -> i32 {
    let var_0 = Struct_1(all(vec2<bool>(true, true)) || !(!all(vec2<bool>(true, false))), true, 25074u, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(func_3(u_input.a.x, _wgslsmith_mult_vec3_i32(vec3<i32>(-16977i, arg_0, arg_0), vec3<i32>(78826i, arg_0, 3043i)) & (vec3<i32>(arg_0, 2147483647i, arg_0) << (u_input.a.zyz % vec3<u32>(32u))), Struct_3(Struct_2(Struct_1(true, false, 43889u, vec2<f32>(1000f, -158f), vec2<u32>(1u, 22912u))), Struct_2(Struct_1(true, false, 111195u, vec2<f32>(476f, 1605f), u_input.a.zz)), Struct_2(Struct_1(false, false, u_input.a.x, vec2<f32>(-1009f, -489f), vec2<u32>(u_input.a.x, u_input.a.x))), u_input.a.xwz))))), _wgslsmith_clamp_vec2_u32(~vec2<u32>(u_input.a.x, 68809u) ^ abs(u_input.a.yx), vec2<u32>(_wgslsmith_dot_vec4_u32(u_input.a, u_input.a), _wgslsmith_mod_u32(63814u, 52231u)), select(~u_input.a.yx, u_input.a.yy, true)) << (~u_input.a.xz % vec2<u32>(32u)));
    let var_1 = Struct_2(Struct_1(false, true, _wgslsmith_dot_vec2_u32(vec2<u32>(~var_0.e.x, 1u), select(~vec2<u32>(0u, u_input.a.x), ~vec2<u32>(u_input.a.x, 1u), vec2<bool>(var_0.a, var_0.a))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(var_0.d + vec2<f32>(-1000f, 250f)))))), vec2<u32>(0u, abs(29732u))));
    var var_2 = var_1.a.a;
    let var_3 = arg_0;
    let var_4 = true;
    return select(-2147483647i, arg_0 >> (u_input.a.x % 32u), var_0.a);
}

fn func_1() -> Struct_2 {
    var var_0 = -(~(-vec2<i32>(1i, 1i)));
    let var_1 = var_0.x;
    var_0 = ~(-vec2<i32>(countOneBits(var_0.x), var_0.x >> (u_input.a.x % 32u))) << (_wgslsmith_sub_vec2_u32(firstLeadingBit(u_input.a.zz), ~(~abs(u_input.a.yw))) % vec2<u32>(32u));
    var_0 = vec2<i32>(var_0.x, func_2(4771i));
    var var_2 = max(u_input.a.zy, abs(_wgslsmith_sub_vec2_u32(abs(u_input.a.zx), ~vec2<u32>(18646u, u_input.a.x)) | _wgslsmith_add_vec2_u32(~vec2<u32>(4294967295u, u_input.a.x), u_input.a.zw)));
    return Struct_2(Struct_1(true, any(vec2<bool>(true, true)), var_2.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(442f, -361f) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-523f, -388f) - vec2<f32>(197f, 1428f)))), ~u_input.a.yx));
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: Struct_1) -> Struct_3 {
    var var_0 = 1i >> (u_input.a.x % 32u);
    var_0 = max(i32(-1i) * -32675i, -1i);
    let var_1 = _wgslsmith_sub_vec2_u32(firstTrailingBit(reverseBits(_wgslsmith_mod_vec2_u32(vec2<u32>(19933u, arg_1.a.e.x), vec2<u32>(u_input.a.x, arg_0.x)))) & ~(~vec2<u32>(2742u, 0u) & countOneBits(arg_1.a.e)), ~(~(~abs(vec2<u32>(u_input.a.x, 52232u)))));
    let var_2 = vec4<u32>(_wgslsmith_sub_u32(_wgslsmith_mult_u32(1u, var_1.x | 28325u), arg_0.x), func_1().a.c, ~_wgslsmith_add_u32(~_wgslsmith_mult_u32(1u, arg_0.x), _wgslsmith_dot_vec4_u32(u_input.a | u_input.a, _wgslsmith_mult_vec4_u32(u_input.a, vec4<u32>(var_1.x, 4294967295u, 59456u, 0u)))), arg_2.e.x);
    var_0 = ~(~(_wgslsmith_mult_i32(i32(-1i) * -2147483647i, func_2(-1i)) ^ -2147483647i));
    return Struct_3(func_1(), func_1(), func_1(), vec3<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(~vec4<u32>(33824u, arg_1.a.c, var_1.x, u_input.a.x), u_input.a), var_2), arg_1.a.e.x, 4294967295u));
}

fn func_5(arg_0: Struct_3) -> f32 {
    var var_0 = arg_0.b.a;
    var_0 = func_1().a;
    var var_1 = ~_wgslsmith_dot_vec2_u32(reverseBits(~_wgslsmith_sub_vec2_u32(u_input.a.xw, vec2<u32>(var_0.c, 4294967295u))), (var_0.e & ~vec2<u32>(arg_0.a.a.e.x, 0u)) ^ _wgslsmith_mult_vec2_u32(u_input.a.xw, arg_0.c.a.e ^ u_input.a.xz));
    var var_2 = Struct_2(Struct_1(var_0.a, true, 23205u, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(1445f * 1294f), 801f)), ~vec2<u32>(1u, _wgslsmith_mod_u32(3707u, 1u))));
    var var_3 = 27422i;
    return -1000f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<u32>(~(u_input.a.x ^ 24388u), abs(22997u));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5(func_4(~vec2<u32>(1u, u_input.a.x), func_1(), func_1().a))));
    var var_2 = u_input.a.xzy;
    var_1 = 295f;
    let var_3 = ~_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(~vec2<u32>(u_input.a.x, 1u), ~var_2.zx), select(var_0, vec2<u32>(var_2.x, 4294967295u), select(vec2<bool>(true, false), vec2<bool>(false, false), true))) >> (((func_4(vec2<u32>(var_2.x, u_input.a.x) & vec2<u32>(var_0.x, var_2.x), func_4(var_2.zy, Struct_2(Struct_1(false, false, u_input.a.x, vec2<f32>(-446f, -1000f), vec2<u32>(17157u, 4294967295u))), Struct_1(true, false, var_2.x, vec2<f32>(-2348f, 1757f), u_input.a.yy)).b, func_1().a).b.a.e.x ^ (4294967295u >> (u_input.a.x % 32u))) & max(func_1().a.e.x, _wgslsmith_dot_vec3_u32(vec3<u32>(var_2.x, u_input.a.x, 20u), _wgslsmith_mod_vec3_u32(u_input.a.zyz, u_input.a.zxx)))) % 32u);
    var_1 = -1459f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(-1i ^ _wgslsmith_clamp_i32(-1i, -25844i, 1i), -19576i, _wgslsmith_dot_vec3_i32(max(vec3<i32>(-30584i, 37613i, 60199i), vec3<i32>(0i, 0i, -42814i)), -vec3<i32>(-1i, 15840i, -2291i)), 23881i)));
}

