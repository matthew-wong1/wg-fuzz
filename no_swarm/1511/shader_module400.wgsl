struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: vec3<i32>,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: u32,
}

struct Struct_4 {
    a: i32,
    b: u32,
    c: Struct_1,
    d: vec2<bool>,
    e: u32,
}

struct Struct_5 {
    a: bool,
    b: bool,
    c: Struct_1,
    d: vec3<bool>,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec2<i32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 25>;

var<private> global1: vec2<u32> = vec2<u32>(0u, 4294967295u);

var<private> global2: f32;

var<private> global3: array<vec2<f32>, 32>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> vec2<u32> {
    global0 = array<f32, 25>();
    let var_0 = vec4<u32>(9328u, ~reverseBits(~57009u), u_input.b.x, 30927u);
    let var_1 = vec3<bool>((((0u & var_0.x) != 12291u) || true) || true, -581f != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-926f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-474f - global0[_wgslsmith_index_u32(var_0.x, 25u)]) - -864f)), all(vec2<bool>(all(select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), false)), false)));
    global1 = u_input.b;
    var var_2 = Struct_4(reverseBits(u_input.e), reverseBits(countOneBits(global1.x)), Struct_1(~vec2<u32>(global1.x >> (var_0.x % 32u), 1u)), !var_1.zx, ~(~_wgslsmith_mod_u32(~u_input.b.x, var_0.x)));
    return select(u_input.b & vec2<u32>(1u, 18570u), u_input.b, true);
}

fn func_2(arg_0: u32) -> vec4<u32> {
    let var_0 = Struct_3(0u, Struct_2(~abs(vec4<u32>(arg_0, global1.x, global1.x, 1u)), Struct_1((vec2<u32>(global1.x, 1u) << (vec2<u32>(u_input.b.x, arg_0) % vec2<u32>(32u))) | func_3()), -(~abs(vec3<i32>(-1i, 1i, u_input.e)))), 0u);
    global3 = array<vec2<f32>, 32>();
    let var_1 = var_0;
    global0 = array<f32, 25>();
    var var_2 = vec3<bool>(true, true, true);
    return ~_wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 72292u, firstTrailingBit(11984u), 57401u), vec4<u32>(firstTrailingBit(4294967295u), var_1.c >> (global1.x % 32u), ~64633u, reverseBits(4294967295u)), var_1.b.a), vec4<u32>(_wgslsmith_add_u32(max(37269u, var_1.b.a.x), _wgslsmith_dot_vec3_u32(vec3<u32>(13485u, var_0.c, u_input.b.x), var_1.b.a.zzx)), _wgslsmith_clamp_u32(~var_1.b.b.a.x, 0u, var_1.c), ~global1.x, u_input.b.x));
}

fn func_4(arg_0: u32, arg_1: u32, arg_2: vec4<u32>) -> u32 {
    let var_0 = vec2<bool>(arg_0 > arg_2.x, !(!((u_input.d & u_input.c.x) < _wgslsmith_dot_vec2_i32(u_input.a, vec2<i32>(-2147483647i, u_input.d)))));
    let var_1 = Struct_4(~countOneBits(min(_wgslsmith_mult_i32(u_input.c.x, u_input.d), 1i)), ~(~(~4294967295u)), Struct_1(vec2<u32>(func_3().x, arg_0) ^ ~firstTrailingBit(arg_2.zy)), select(!var_0, vec2<bool>(var_0.x, all(!vec4<bool>(var_0.x, true, false, var_0.x))), select(vec2<bool>(true, true), var_0, vec2<bool>(any(vec2<bool>(true, true)), var_0.x))), ~((arg_1 | arg_1) & _wgslsmith_div_u32(1u, 54507u)) << (u_input.b.x % 32u));
    let var_2 = 1u >> (((~(~4294967295u) << (global1.x % 32u)) ^ ~(arg_0 & ~global1.x)) % 32u);
    var var_3 = Struct_3(func_3().x, Struct_2(firstTrailingBit(vec4<u32>(0u, arg_2.x, abs(var_1.e), ~u_input.b.x)), Struct_1(func_3()), min(select(vec3<i32>(var_1.a, u_input.c.x, -33976i), vec3<i32>(3309i, 0i, -27226i) | vec3<i32>(u_input.c.x, var_1.a, u_input.c.x), !vec3<bool>(true, var_0.x, true)), vec3<i32>(abs(18464i), min(u_input.d, u_input.a.x), max(-2147483647i, var_1.a)))), abs(var_1.b));
    var var_4 = 28839u;
    return var_3.b.a.x;
}

fn func_1(arg_0: vec2<u32>, arg_1: vec3<u32>) -> vec2<bool> {
    global0 = array<f32, 25>();
    var var_0 = func_4(arg_0.x, ~countOneBits(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 0u, arg_1.x, u_input.b.x), vec4<u32>(6966u, arg_1.x, 26142u, global1.x)), min(u_input.b.x, arg_0.x))), select(~reverseBits(~vec4<u32>(65399u, global1.x, 55314u, 4294967295u)), func_2(1u), true || all(select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true)))));
    var var_1 = _wgslsmith_mult_u32(0u, 9157u ^ (_wgslsmith_sub_u32(u_input.b.x, 35455u) ^ u_input.b.x));
    var var_2 = Struct_1(arg_1.yz);
    var var_3 = Struct_2(vec4<u32>(18939u | arg_0.x, arg_1.x, 4294967295u, ~(~arg_1.x)), Struct_1(~_wgslsmith_clamp_vec2_u32(vec2<u32>(arg_1.x, var_2.a.x), var_2.a & vec2<u32>(global1.x, var_2.a.x), _wgslsmith_sub_vec2_u32(vec2<u32>(17219u, arg_0.x), arg_1.zx))), vec3<i32>(u_input.e, 1i, _wgslsmith_mod_i32(_wgslsmith_add_i32(~2147483647i, u_input.a.x << (u_input.b.x % 32u)), firstLeadingBit(u_input.d))));
    return select(vec2<bool>(true, any(!select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true), false))), !vec2<bool>(false == all(vec3<bool>(false, false, false)), false), true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mod_vec4_u32(vec4<u32>(global1.x, ~1u, _wgslsmith_div_u32(6836u, u_input.b.x ^ 1u), u_input.b.x), ~(~select(~vec4<u32>(96629u, u_input.b.x, 4294967295u, global1.x), vec4<u32>(14322u, 42355u, 0u, 1u), vec4<bool>(false, false, true, true))));
    var var_1 = Struct_4(u_input.e, 63217u, Struct_1(var_0.zy), !(!(!func_1(u_input.b, var_0.yww))), 30462u);
    var var_2 = Struct_2(countOneBits(~(~max(vec4<u32>(0u, global1.x, var_1.b, var_0.x), vec4<u32>(var_0.x, var_0.x, var_0.x, 23471u)))), Struct_1(var_0.xw), vec3<i32>(var_1.a, _wgslsmith_dot_vec3_i32(~abs(vec3<i32>(u_input.c.x, var_1.a, -23870i)), firstLeadingBit(_wgslsmith_sub_vec3_i32(vec3<i32>(59463i, u_input.e, 52073i), vec3<i32>(-24137i, 0i, 2147483647i)))), _wgslsmith_sub_i32(u_input.c.x, var_1.a & _wgslsmith_dot_vec2_i32(u_input.c, vec2<i32>(u_input.d, var_1.a)))));
    var var_3 = Struct_3(2714u, Struct_2(_wgslsmith_clamp_vec4_u32(vec4<u32>(reverseBits(var_1.e), global1.x ^ 0u, 0u, ~var_1.c.a.x), var_2.a, ~vec4<u32>(global1.x, var_1.c.a.x, 0u, 1u) & (var_2.a | vec4<u32>(3901u, 10474u, 22733u, 58532u))), Struct_1(_wgslsmith_mod_vec2_u32(u_input.b, var_0.wz) << (_wgslsmith_div_vec2_u32(vec2<u32>(var_1.c.a.x, var_2.b.a.x), u_input.b) % vec2<u32>(32u))), var_2.c), _wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(4294967295u, u_input.b.x | u_input.b.x)), firstTrailingBit(~vec2<u32>(var_0.x, 0u))));
    global0 = array<f32, 25>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.x);
}

