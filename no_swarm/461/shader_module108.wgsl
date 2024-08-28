struct Struct_1 {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: bool,
    c: vec3<u32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: f32,
    b: Struct_1,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: f32,
    d: vec2<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: f32;

var<private> global2: array<vec4<u32>, 14>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3() -> u32 {
    let var_0 = vec3<i32>(-21290i, -1i, 14615i);
    let var_1 = Struct_3(Struct_2(vec4<u32>(_wgslsmith_mult_u32(0u, 4294967295u), ~u_input.c.x, abs(13756u), ~67760u) << (global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(~u_input.d, ~u_input.d), 14u)] % vec4<u32>(32u)), global0.x & false, firstLeadingBit(u_input.c)));
    global2 = array<vec4<u32>, 14>();
    var var_2 = Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-1788f, 1149f)))), Struct_1(var_1.a.a.yw, vec3<i32>(~2147483647i, ~var_0.x | -5909i, _wgslsmith_div_i32(var_0.x & 40738i, abs(var_0.x))), vec3<u32>(var_1.a.c.x, ~u_input.c.x, ~(var_1.a.a.x >> (var_1.a.a.x % 32u)))), (min(var_0.x, firstTrailingBit(u_input.a)) ^ u_input.a) & 24368i);
    let var_3 = var_2.a;
    return abs(~1u);
}

fn func_2(arg_0: bool) -> Struct_3 {
    var var_0 = global0.x;
    global0 = !vec2<bool>(global0.x, any(vec2<bool>(global0.x, all(vec4<bool>(global0.x, true, true, arg_0)))));
    global2 = array<vec4<u32>, 14>();
    global0 = vec2<bool>(false, any(vec3<bool>(true, arg_0, arg_0)));
    global0 = vec2<bool>(true, false);
    return Struct_3(Struct_2(firstTrailingBit(global2[_wgslsmith_index_u32(u_input.c.x, 14u)]), !arg_0, vec3<u32>(27421u, countOneBits(func_3()), 4294967295u)));
}

fn func_4(arg_0: f32, arg_1: Struct_3, arg_2: u32, arg_3: vec4<i32>) -> Struct_2 {
    global2 = array<vec4<u32>, 14>();
    global2 = array<vec4<u32>, 14>();
    var var_0 = Struct_1(u_input.b, vec3<i32>(_wgslsmith_dot_vec4_i32(arg_3, ~arg_3) ^ -(arg_3.x | 2147483647i), _wgslsmith_mod_i32(39880i, -1i), u_input.a), ~select(~vec3<u32>(arg_2, u_input.d, arg_1.a.a.x), arg_1.a.c, !(!vec3<bool>(global0.x, true, true))));
    let var_1 = 32178u;
    var var_2 = var_0.b.x;
    return arg_1.a;
}

fn func_1(arg_0: vec3<i32>) -> vec3<u32> {
    let var_0 = Struct_3(func_4(_wgslsmith_f_op_f32(308f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(515f * -679f))), func_2(!(78154u >= u_input.b.x)), u_input.d, firstLeadingBit(_wgslsmith_div_vec4_i32(countOneBits(vec4<i32>(arg_0.x, 2147483647i, -2147483647i, -17409i)), countOneBits(vec4<i32>(-1i, -1i, arg_0.x, arg_0.x))))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(913f - -768f)))))) - _wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-223f, 739f)) + -321f)))));
    var var_2 = i32(-1i) * -_wgslsmith_dot_vec2_i32(arg_0.xz, arg_0.xx);
    var var_3 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -812f), _wgslsmith_div_f32(1521f, 1000f))) - -453f) - -1635f)));
    var_3 = 604f;
    return vec3<u32>(_wgslsmith_add_u32(~(~u_input.b.x | var_0.a.a.x), ~(0u << (_wgslsmith_clamp_u32(28078u, var_0.a.c.x, 58943u) % 32u))), ~0u, u_input.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(_wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(~vec4<u32>(89081u, u_input.d, u_input.b.x, 11821u), vec4<u32>(11171u, 64828u, 55475u, 11453u)), abs(_wgslsmith_add_vec4_u32(firstLeadingBit(global2[_wgslsmith_index_u32(u_input.d, 14u)]), global2[_wgslsmith_index_u32(14345u, 14u)]))), all(vec3<bool>(global0.x, true, 1u != u_input.d)) && global0.x, vec3<u32>(u_input.d, 0u, 49829u));
    var_0 = Struct_2(vec4<u32>(43543u, firstTrailingBit(var_0.c.x), 4294967295u, _wgslsmith_dot_vec2_u32(min(vec2<u32>(u_input.d, var_0.a.x), u_input.c.yz) ^ ~vec2<u32>(12954u, 4294967295u), reverseBits(~u_input.c.zz))), !(any(vec2<bool>(false, true)) & var_0.b), ~select(~func_1(vec3<i32>(u_input.a, -1i, -26795i)), vec3<u32>(abs(var_0.c.x), 22488u, ~61357u), global0.x));
    let var_1 = func_2(true).a;
    global2 = array<vec4<u32>, 14>();
    var_0 = var_1;
    let var_2 = abs(u_input.a << (3855u % 32u));
    var var_3 = func_2(global0.x).a;
    let var_4 = Struct_3(Struct_2(~var_3.a, true, var_1.c));
    let var_5 = var_1.a;
    let x = u_input.a;
    s_output = StorageBuffer(~firstTrailingBit(func_1(vec3<i32>(var_2, 48915i, -12510i) | vec3<i32>(-51299i, var_2, u_input.a)).x), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(505f - 1459f))) + _wgslsmith_div_f32(367f, _wgslsmith_div_f32(-608f, 172f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(504f + -380f) + _wgslsmith_f_op_f32(721f + 684f)))))), _wgslsmith_f_op_f32(max(1223f, -1467f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(trunc(2308f)), -610f) - vec2<f32>(_wgslsmith_f_op_f32(611f - 1465f), _wgslsmith_f_op_f32(ceil(-1413f))))), 15430u);
}

