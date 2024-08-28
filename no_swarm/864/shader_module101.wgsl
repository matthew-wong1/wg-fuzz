struct Struct_1 {
    a: vec3<u32>,
    b: u32,
}

struct Struct_2 {
    a: u32,
    b: bool,
    c: f32,
    d: bool,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: vec3<u32>,
    b: Struct_3,
    c: f32,
    d: vec2<u32>,
}

struct Struct_5 {
    a: Struct_2,
    b: i32,
    c: u32,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec3<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<u32>(0u, 4294967295u, 4294967295u), 29789u);

var<private> global1: Struct_4;

var<private> global2: u32 = 37234u;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> i32 {
    global0 = Struct_1(vec3<u32>(global0.a.x, u_input.a, ~_wgslsmith_mod_u32(u_input.b, 3910u) ^ u_input.b), global0.b);
    var var_0 = Struct_1(~global0.a, _wgslsmith_sub_u32(~77441u, 1u));
    let var_1 = vec3<i32>(-_wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(1i, 1i, 1i, 1i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(0i, 7503i, -30100i, 12270i), vec4<i32>(-1i, 24393i, -40126i, 30806i), vec4<i32>(-16481i, 2147483647i, 37123i, 1i)) ^ vec4<i32>(-4159i, -51100i, 1i, 1i)), _wgslsmith_dot_vec4_i32(vec4<i32>(~_wgslsmith_dot_vec2_i32(vec2<i32>(1i, 15770i), vec2<i32>(16042i, -1i)), ~(~(-14398i)), 2147483647i, 1i), vec4<i32>(countOneBits(_wgslsmith_sub_i32(0i, 1i)), _wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-19974i, -2147483647i, -2147483647i, -4732i), vec4<i32>(-1i, -2147483647i, -2147483647i, 2147483647i)), -36423i, -1i), 1i, ~(-5406i))), _wgslsmith_div_i32(0i, -33254i) ^ (_wgslsmith_sub_i32(countOneBits(-1i), abs(-42697i)) ^ _wgslsmith_dot_vec4_i32(~vec4<i32>(0i, 0i, -4641i, 36308i), _wgslsmith_div_vec4_i32(vec4<i32>(-12432i, -2147483647i, 1i, -2147483647i), vec4<i32>(1i, -1i, 2147483647i, 24339i)))));
    var var_2 = 22186i;
    global1 = Struct_4(_wgslsmith_clamp_vec3_u32(vec3<u32>(global1.b.a, ~(~var_0.b), max(4294967295u, u_input.d.x)), vec3<u32>(abs(_wgslsmith_div_u32(41987u, 13029u)), ~_wgslsmith_div_u32(95631u, u_input.c), u_input.a), countOneBits(~var_0.a)), Struct_3(_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, global0.b, 73342u, global1.b.a), select(vec4<u32>(35569u, 0u, 35824u, global0.a.x), vec4<u32>(global1.b.a, var_0.b, global0.a.x, 0u), vec4<bool>(true, true, false, false))) << (max(4294967295u, var_0.b) % 32u)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global1.c))), select(vec2<u32>(1u, 4294967295u), vec2<u32>(_wgslsmith_mod_u32(78350u, 4294967295u), min(_wgslsmith_add_u32(global1.a.x, 1u), 4294967295u)), vec2<bool>(all(vec3<bool>(false, true, true)), true)));
    return var_1.x;
}

fn func_2() -> Struct_4 {
    global2 = 1u;
    var var_0 = -1i;
    var_0 = _wgslsmith_add_i32((-2147483647i | func_3()) << ((global1.a.x << (1u % 32u)) % 32u), reverseBits(-1i));
    global1 = Struct_4(_wgslsmith_sub_vec3_u32(u_input.e, vec3<u32>(_wgslsmith_dot_vec3_u32(u_input.d, global1.a), ~u_input.c, 30690u)) & countOneBits(u_input.d), global1.b, 304f, vec2<u32>(~firstTrailingBit(10169u) & select(~global1.d.x, ~31962u, true), 23266u | _wgslsmith_div_u32(9287u | global1.a.x, 0u)));
    let var_1 = !(!(!select(vec2<bool>(true, true), vec2<bool>(true, false), false)));
    return Struct_4(~(~vec3<u32>(1u, 29679u, global1.d.x)) << (select(select(~vec3<u32>(global1.a.x, global1.d.x, 4294967295u), select(vec3<u32>(global0.b, 53215u, 1u), global1.a, vec3<bool>(var_1.x, var_1.x, false)), vec3<bool>(var_1.x, var_1.x, var_1.x)), u_input.e, !var_1.x) % vec3<u32>(32u)), Struct_3(global0.a.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global1.c))), _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global1.c)))))), reverseBits((vec2<u32>(u_input.b, 10950u) | vec2<u32>(u_input.b, global0.b)) << (_wgslsmith_div_vec2_u32(vec2<u32>(global1.d.x, global1.b.a), u_input.d.xy) % vec2<u32>(32u))) << (vec2<u32>(~abs(global1.b.a), ~1u ^ _wgslsmith_div_u32(4294967295u, u_input.b)) % vec2<u32>(32u)));
}

fn func_4(arg_0: Struct_3, arg_1: u32, arg_2: Struct_4) -> Struct_4 {
    return Struct_4(arg_2.a, func_2().b, -272f, _wgslsmith_add_vec2_u32(~arg_2.d, vec2<u32>(_wgslsmith_sub_u32(_wgslsmith_div_u32(81291u, arg_2.a.x), _wgslsmith_clamp_u32(1u, 1u, arg_1)), arg_0.a)));
}

fn func_1(arg_0: i32, arg_1: vec2<u32>) -> Struct_1 {
    global0 = Struct_1(vec3<u32>(global0.b, _wgslsmith_mult_u32(~(~0u), countOneBits(0u)), ~(_wgslsmith_add_u32(4294967295u, arg_1.x) << (arg_1.x % 32u))), min(u_input.e.x, 37441u));
    global2 = ~53137u;
    let var_0 = u_input.e;
    global1 = func_4(global1.b, 16766u, func_2());
    let var_1 = ~_wgslsmith_div_vec4_u32(~_wgslsmith_add_vec4_u32(select(vec4<u32>(55407u, 77209u, global1.a.x, u_input.d.x), vec4<u32>(4294967295u, global1.d.x, u_input.e.x, 68996u), vec4<bool>(false, false, true, true)), ~vec4<u32>(38143u, 154358u, global0.b, 42654u)), vec4<u32>(~(~51821u), _wgslsmith_mult_u32(u_input.a, 79654u), _wgslsmith_mult_u32(_wgslsmith_mult_u32(arg_1.x, 31908u), _wgslsmith_div_u32(var_0.x, 4294967295u)), arg_1.x));
    return Struct_1(~_wgslsmith_sub_vec3_u32(vec3<u32>(0u, _wgslsmith_mod_u32(u_input.c, global1.b.a), var_0.x), vec3<u32>(countOneBits(arg_1.x), _wgslsmith_dot_vec3_u32(u_input.d, var_1.xzz), 33832u)), ~_wgslsmith_div_u32(~(~0u), u_input.d.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~_wgslsmith_mod_i32(1i, 28717i));
    global0 = func_1(_wgslsmith_clamp_i32(-2217i, -(~var_0), select(~var_0, var_0, any(vec4<bool>(true, false, false, false))) << (u_input.b % 32u)), ~vec2<u32>(~(~u_input.a), _wgslsmith_mult_u32(_wgslsmith_mult_u32(87294u, 34877u), u_input.b)));
    global0 = func_1(i32(-1i) * -(~(-14054i)), ~func_2().a.yz);
    let var_1 = all(!vec4<bool>(true | any(vec3<bool>(true, false, true)), false, any(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false))), true));
    var var_2 = i32(-1i) * -(~var_0);
    global2 = _wgslsmith_sub_u32(_wgslsmith_add_u32(_wgslsmith_mod_u32(_wgslsmith_mod_u32(4294967295u, global0.b), 1u) << (global0.a.x % 32u), _wgslsmith_add_u32(countOneBits(abs(global1.a.x)), abs(_wgslsmith_clamp_u32(global1.b.a, 39836u, u_input.b)))), 46635u | _wgslsmith_sub_u32(global1.d.x, ~(~93480u)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c, vec4<u32>(58071u, 4294967295u, ~abs(~global1.d.x), 4294967295u));
}

