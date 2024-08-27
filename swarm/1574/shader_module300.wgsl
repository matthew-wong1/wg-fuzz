struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: i32,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec3<i32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: Struct_2 = Struct_2(Struct_1(vec3<u32>(1u, 4294967295u, 1u)), false, Struct_1(vec3<u32>(0u, 18497u, 0u)), 2147483647i, vec4<u32>(77106u, 16411u, 19663u, 11079u));

var<private> global2: f32 = -402f;

var<private> global3: f32;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: Struct_2) -> vec3<u32> {
    global0 = !any(vec2<bool>(true, true)) && true;
    var var_0 = vec4<i32>(-1i, global1.d, -37437i, u_input.c);
    return ~_wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(global1.e.wyz, _wgslsmith_sub_vec3_u32(arg_0.c.a, vec3<u32>(4294967295u, 51170u, 4294967295u))), arg_0.a.a);
}

fn func_4(arg_0: Struct_2, arg_1: u32, arg_2: vec3<u32>) -> f32 {
    global3 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -392f)) - _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(805f, -1143f), _wgslsmith_f_op_f32(853f - -338f), global1.b)))), _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(1355f, -809f)))) + 357f))));
    var var_0 = arg_0.a;
    global0 = false;
    var var_1 = _wgslsmith_div_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f), vec4<f32>(_wgslsmith_div_f32(1417f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1266f * 668f) * _wgslsmith_f_op_f32(select(1000f, 111f, global1.b)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(-838f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(441f)), _wgslsmith_f_op_f32(round(1163f)))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-316f + -721f), _wgslsmith_f_op_f32(select(339f, 1763f, arg_0.b)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-792f, _wgslsmith_f_op_f32(select(1200f, -496f, false))))));
    var var_2 = select(!select(vec2<bool>(true, true), select(!vec2<bool>(arg_0.b, false), vec2<bool>(true, arg_0.b), global1.b), true), !select(vec2<bool>(true, true), !select(vec2<bool>(true, false), vec2<bool>(arg_0.b, true), global1.b), true), select(select(!select(vec2<bool>(true, true), vec2<bool>(global1.b, arg_0.b), vec2<bool>(global1.b, arg_0.b)), !select(vec2<bool>(arg_0.b, false), vec2<bool>(false, false), vec2<bool>(true, global1.b)), global1.b), !(!select(vec2<bool>(arg_0.b, false), vec2<bool>(arg_0.b, true), true)), !all(!vec3<bool>(true, false, arg_0.b))));
    return -285f;
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(func_4(Struct_2(Struct_1(~vec3<u32>(u_input.a, global1.c.a.x, global1.e.x)), all(!vec4<bool>(false, false, true, global1.b)), global1.c, ~1i, _wgslsmith_sub_vec4_u32(global1.e, ~global1.e)), _wgslsmith_dot_vec3_u32(func_3(Struct_2(Struct_1(global1.c.a), true, Struct_1(vec3<u32>(35041u, global1.c.a.x, global1.e.x)), -1073i, ~vec4<u32>(47741u, 4294967295u, global1.c.a.x, 1u))), vec3<u32>(_wgslsmith_mod_u32(~4294967295u, global1.e.x), _wgslsmith_mod_u32(reverseBits(global1.e.x), 1u), u_input.a)), ~((vec3<u32>(71108u, 22562u, 18913u) & ~vec3<u32>(global1.c.a.x, 36131u, 17802u)) << (min(vec3<u32>(4294967295u, global1.c.a.x, u_input.a) & vec3<u32>(4294967295u, 90923u, u_input.a), _wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, 7508u, u_input.a), global1.c.a)) % vec3<u32>(32u)))));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(-1698f, -206f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(2047f, 2024f)))));
    let var_1 = min((abs(vec4<i32>(-1i, u_input.c, global1.d, 57710i)) >> (vec4<u32>(global1.a.a.x, 0u, 4294967295u, 1u) % vec4<u32>(32u))) | _wgslsmith_add_vec4_i32(vec4<i32>(global1.d, 37808i, -47617i, 242i) ^ vec4<i32>(u_input.b, u_input.d, -1i, -1i), firstTrailingBit(vec4<i32>(u_input.d, 47633i, u_input.c, -10065i))), select(firstTrailingBit(vec4<i32>(global1.d, 1i, u_input.d, global1.d) << (vec4<u32>(1u, 0u, global1.a.a.x, global1.e.x) % vec4<u32>(32u))), vec4<i32>(-global1.d, i32(-1i) * -1i, u_input.c, _wgslsmith_sub_i32(0i, 2147483647i)), select(vec4<bool>(false, false, true, true), !vec4<bool>(true, true, global1.b, true), global1.b))) >> (vec4<u32>(select(global1.e.x | max(0u, u_input.a), ~firstTrailingBit(global1.c.a.x), u_input.a > ~u_input.a), _wgslsmith_dot_vec2_u32(~global1.a.a.yz, _wgslsmith_div_vec2_u32(~vec2<u32>(global1.a.a.x, 4294967295u), vec2<u32>(1u, u_input.a))), ~_wgslsmith_sub_u32(min(0u, global1.c.a.x), _wgslsmith_add_u32(u_input.a, u_input.a)), ~_wgslsmith_clamp_u32(0u, 132003u, global1.a.a.x) >> (_wgslsmith_add_u32(~global1.c.a.x, 47584u >> (u_input.a % 32u)) % 32u)) % vec4<u32>(32u));
    let var_2 = Struct_1(vec3<u32>(1u, 44299u, 1u));
    global2 = 1000f;
    return Struct_1(_wgslsmith_div_vec3_u32(vec3<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, global1.a.a.x, var_2.a.x, 45599u), vec4<u32>(4294967295u, global1.a.a.x, 32549u, 8469u)), var_2.a.x, u_input.a), ~firstLeadingBit(vec3<u32>(5763u, u_input.a, var_2.a.x))));
}

fn func_1(arg_0: i32) -> f32 {
    let var_0 = global1.a;
    var var_1 = Struct_2(global1.a, !(!all(select(vec4<bool>(false, global1.b, global1.b, false), vec4<bool>(global1.b, global1.b, global1.b, true), false))), global1.c, 27239i, _wgslsmith_mult_vec4_u32(vec4<u32>(firstTrailingBit(93543u), ~global1.e.x, _wgslsmith_sub_u32(var_0.a.x, 24049u), 86525u) ^ ~global1.e, global1.e));
    global2 = 528f;
    let var_2 = _wgslsmith_div_f32(-117f, 386f);
    var var_3 = func_2();
    return 1009f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(global1.a, (global1.e.x | ~_wgslsmith_mod_u32(u_input.a, u_input.a)) > u_input.a, global1.a, global1.d, global1.e);
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(func_1(var_0.d)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-1848f, -577f)), _wgslsmith_f_op_f32(ceil(1017f))) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -752f))))));
    let var_2 = Struct_2(Struct_1(vec3<u32>(max(0u, 49954u) ^ ~u_input.a, u_input.a, ~select(1u, 19939u, var_0.b))), any(vec3<bool>(true, true, var_0.b)), func_2(), _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(select(reverseBits(vec4<i32>(0i, 1i, global1.d, global1.d)), _wgslsmith_div_vec4_i32(vec4<i32>(var_0.d, u_input.c, global1.d, global1.d), vec4<i32>(u_input.d, global1.d, var_0.d, u_input.c)), !vec4<bool>(false, true, true, global1.b)), _wgslsmith_mult_vec4_i32(-vec4<i32>(global1.d, global1.d, global1.d, u_input.b), _wgslsmith_add_vec4_i32(vec4<i32>(-72668i, global1.d, global1.d, -2147483647i), vec4<i32>(global1.d, global1.d, -2147483647i, -10804i)))), -1i), _wgslsmith_mult_vec4_u32(~_wgslsmith_div_vec4_u32(var_0.e, min(global1.e, var_0.e)), _wgslsmith_add_vec4_u32(global1.e, ~vec4<u32>(u_input.a, u_input.a, 1u, u_input.a))));
    let var_3 = -512f;
    var var_4 = firstLeadingBit(~(~global1.e) & _wgslsmith_add_vec4_u32(~abs(var_0.e), countOneBits(vec4<u32>(u_input.a, 0u, global1.c.a.x, global1.a.a.x)) | var_2.e));
    var var_5 = !select(!(!vec3<bool>(false, var_2.b, global1.b)), select(!vec3<bool>(false, false, var_2.b), vec3<bool>(!var_0.b, false, var_0.b), any(!vec2<bool>(global1.b, var_2.b))), !(!select(vec3<bool>(var_0.b, true, true), vec3<bool>(global1.b, false, var_2.b), true)));
    let var_6 = vec4<bool>(!global1.b, var_2.b, !(!(_wgslsmith_f_op_f32(101f - var_3) != _wgslsmith_f_op_f32(abs(var_3)))), !select(var_5.x, var_2.b, !(!global1.b)));
    var var_7 = vec3<f32>(var_3, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_1.x))) * 1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2069f)), ~(-33987i) >= ~global1.d)), var_1.x);
    var_1 = _wgslsmith_f_op_vec2_f32(max(var_7.xz, _wgslsmith_f_op_vec2_f32(select(var_7.yz, var_7.yy, vec2<bool>(any(select(vec2<bool>(true, global1.b), vec2<bool>(var_5.x, true), false)), true)))));
    let x = u_input.a;
    s_output = StorageBuffer(max(-var_2.d, u_input.d), _wgslsmith_clamp_vec3_i32(_wgslsmith_add_vec3_i32((vec3<i32>(-2147483647i, var_2.d, var_2.d) ^ vec3<i32>(1i, var_0.d, -1i)) ^ (vec3<i32>(var_0.d, u_input.d, global1.d) ^ vec3<i32>(var_0.d, u_input.c, 2179i)), min(~vec3<i32>(u_input.d, global1.d, var_0.d), firstTrailingBit(vec3<i32>(1i, -2147483647i, var_0.d)))), countOneBits(reverseBits(vec3<i32>(0i, var_0.d, var_2.d)) >> (vec3<u32>(var_2.e.x, 11566u, 37658u) % vec3<u32>(32u))), vec3<i32>(57689i, 17208i, var_0.d)), vec3<i32>(global1.d, 0i, ~var_0.d), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1960f, -1078f, -1000f, var_1.x) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_7.x, -302f, var_3)))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(var_1.x * 143f), var_3, _wgslsmith_f_op_f32(abs(-1398f)), _wgslsmith_f_op_f32(var_3 + var_7.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(277f, var_3, var_3, var_1.x), vec4<f32>(-873f, var_1.x, 1609f, 802f)))), vec4<bool>(any(var_5.yx), !global1.b, false != var_6.x, true))))));
}

