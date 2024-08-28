struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: vec4<u32>,
    d: bool,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_2,
    c: i32,
    d: vec2<f32>,
    e: vec2<i32>,
}

struct Struct_4 {
    a: f32,
    b: vec4<f32>,
    c: Struct_1,
    d: Struct_3,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: u32, arg_1: u32) -> vec2<f32> {
    let var_0 = 1i;
    var var_1 = u_input.b;
    var var_2 = Struct_2(true);
    let var_3 = Struct_1(vec4<i32>(-55616i, ~(-_wgslsmith_clamp_i32(-2147483647i, 2342i, -3836i)), -2147483647i, 2147483647i), ~(i32(-1i) * -var_0) ^ _wgslsmith_dot_vec3_i32(~(var_1.wyz | vec3<i32>(var_0, var_1.x, 1i)), -_wgslsmith_sub_vec3_i32(u_input.b.zww, u_input.b.zyx)), ~max(~(vec4<u32>(0u, arg_1, 4294967295u, 0u) << (vec4<u32>(4294967295u, arg_0, 4294967295u, u_input.a) % vec4<u32>(32u))), vec4<u32>(0u, 40036u, firstLeadingBit(58127u), 1u)), false);
    let var_4 = u_input.e;
    return vec2<f32>(-2589f, _wgslsmith_f_op_f32(floor(991f)));
}

fn func_2(arg_0: i32, arg_1: Struct_2) -> i32 {
    let var_0 = arg_1;
    let var_1 = Struct_3(!(!select(vec3<bool>(true, arg_1.a, var_0.a), !vec3<bool>(true, var_0.a, arg_1.a), arg_1.a || false)), Struct_2(true), _wgslsmith_div_i32(u_input.b.x, u_input.d), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(u_input.e.x, u_input.e.x))) - vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -569f), -521f))), vec2<i32>(u_input.d << (43209u % 32u), _wgslsmith_mod_i32(-arg_0, arg_0)) & _wgslsmith_div_vec2_i32(-_wgslsmith_mod_vec2_i32(u_input.b.yx, u_input.b.yw), -vec2<i32>(-74275i, arg_0)));
    var var_2 = -492f;
    var var_3 = ~var_1.e.x;
    let var_4 = ~u_input.d;
    return arg_0;
}

fn func_1(arg_0: Struct_3, arg_1: i32) -> vec2<u32> {
    let var_0 = -513f;
    let var_1 = u_input.b.zy;
    var var_2 = Struct_3(!(!arg_0.a), Struct_2(all(vec2<bool>(true, !arg_0.a.x))), func_2(~var_1.x >> (_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(43313u, 20777u, u_input.a), vec3<u32>(u_input.c, u_input.e.x, 1u)), ~vec3<u32>(112491u, 1u, 1u)) % 32u), Struct_2(arg_0.a.x)), vec2<f32>(arg_0.d.x, -102f), _wgslsmith_mod_vec2_i32(vec2<i32>(-16211i, _wgslsmith_mod_i32(u_input.b.x >> (0u % 32u), firstLeadingBit(arg_0.e.x))), arg_0.e));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-929f + arg_0.d.x)) * -660f)));
    var var_4 = select(!select(!vec2<bool>(var_2.b.a, true), vec2<bool>(u_input.e.x < u_input.a, u_input.e.x == u_input.a), !(var_2.a.x == true)), select(!select(var_2.a.xx, !arg_0.a.yy, select(arg_0.b.a, false, arg_0.a.x)), !vec2<bool>(arg_0.a.x, arg_0.a.x), arg_0.a.zy), select(vec2<bool>(_wgslsmith_f_op_f32(floor(-1000f)) <= _wgslsmith_f_op_f32(-614f * -252f), true), !(!(!var_2.a.zz)), select(vec2<bool>(any(vec2<bool>(false, var_2.a.x)), true), arg_0.a.zx, false)));
    return reverseBits(u_input.e);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = max(u_input.e | ~_wgslsmith_mod_vec2_u32(u_input.e, ~vec2<u32>(u_input.e.x, 4294967295u)), min(_wgslsmith_add_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(4294967295u, u_input.a), select(u_input.a, 4294967295u, true)), ~func_1(Struct_3(vec3<bool>(true, true, false), Struct_2(true), 2147483647i, vec2<f32>(-334f, -623f), vec2<i32>(2147483647i, u_input.b.x)), u_input.d)), func_1(Struct_3(select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(false, true, false)), Struct_2(false), _wgslsmith_div_i32(0i, -1i), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1399f, -960f), vec2<f32>(-299f, -205f), true)), -u_input.b.wx), u_input.b.x)));
    let var_1 = func_1(Struct_3(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true)), Struct_2(true), -60261i, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-643f, 1102f) - vec2<f32>(158f, 1292f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-904f, 687f) - vec2<f32>(-129f, -340f))), ~_wgslsmith_div_vec2_i32(vec2<i32>(u_input.b.x, 0i), vec2<i32>(-2147483647i, -2147483647i))), 0i << (~4294967295u % 32u)).x >> (_wgslsmith_clamp_u32(min(~0u, ~u_input.a) & 44369u, 0u >> (u_input.a % 32u), 33881u) % 32u);
    var var_2 = Struct_3(select(!select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false)), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), !(!select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), false)), vec3<bool>(true, true, !all(vec2<bool>(false, true)))), Struct_2(!(!(1i >= u_input.d))), ~(-u_input.b.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-119f, 205f) + vec2<f32>(-1758f, -363f)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-2630f, -915f), vec2<f32>(1037f, 520f), vec2<bool>(true, true))), vec2<bool>(true, true))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(-840f, -1031f) + vec2<f32>(-1019f, -253f)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(183f, -1362f), vec2<f32>(1880f, 973f), vec2<bool>(false, false))))))) + _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1468f, 1867f)))), ~(~(~_wgslsmith_add_vec2_i32(u_input.b.xy, u_input.b.zy))));
    var_2 = Struct_3(var_2.a, var_2.b, -(var_2.c | _wgslsmith_dot_vec2_i32(vec2<i32>(40515i, u_input.b.x), var_2.e)), var_2.d, vec2<i32>(~var_2.e.x, u_input.b.x));
    var var_3 = ~(~_wgslsmith_add_vec4_i32(~u_input.b, reverseBits(vec4<i32>(1i, -26246i, u_input.d, 2147483647i))));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.x, _wgslsmith_mod_u32(~(~(~62036u)), _wgslsmith_sub_u32(0u, ~var_1)));
}

