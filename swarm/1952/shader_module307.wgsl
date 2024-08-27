struct Struct_1 {
    a: u32,
    b: vec4<u32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec2<f32>,
    c: vec2<bool>,
    d: f32,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 10>;

var<private> global1: array<Struct_1, 8>;

var<private> global2: Struct_2;

var<private> global3: vec4<i32>;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: i32) -> vec2<u32> {
    let var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-global2.a)))))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - global2.d)), 665f), select(global2.c, global2.c, all(global2.c)), 207f, 15307u);
    var var_1 = global3.x;
    let var_2 = Struct_1(~(~global2.e), abs(_wgslsmith_sub_vec4_u32(u_input.b, u_input.b) << ((u_input.b & ~global0[_wgslsmith_index_u32(27088u, 10u)]) % vec4<u32>(32u))));
    let var_3 = var_2;
    var var_4 = 40339u;
    return vec2<u32>(~(~20160u), ~47603u);
}

fn func_2(arg_0: vec2<bool>, arg_1: i32, arg_2: vec2<u32>, arg_3: vec2<f32>) -> u32 {
    global0 = array<vec4<u32>, 10>();
    let var_0 = func_3(-25374i);
    let var_1 = Struct_1(firstLeadingBit(0u), vec4<u32>((countOneBits(77960u) ^ _wgslsmith_div_u32(arg_2.x, var_0.x)) << (39015u % 32u), ~select(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, arg_2.x, global2.e, var_0.x), vec4<u32>(global2.e, arg_2.x, var_0.x, 46327u)), ~u_input.a, arg_0.x), min(global2.e, 44818u) | 0u, ~(~(~22175u))));
    var var_2 = any(vec3<bool>(var_1.b.x <= _wgslsmith_mult_u32(var_0.x, 22339u), global2.c.x, true)) && arg_0.x;
    var var_3 = Struct_1(~countOneBits(var_1.a), vec4<u32>(37827u, ~reverseBits(var_1.b.x) >> (abs(~var_1.a) % 32u), ~_wgslsmith_dot_vec4_u32(vec4<u32>(45356u, 35778u, 3210u, arg_2.x), vec4<u32>(var_0.x, u_input.d, var_0.x, 6735u)) << (u_input.d % 32u), 13494u));
    return abs(select(_wgslsmith_add_u32(1u, var_1.a), _wgslsmith_mult_u32(var_0.x, _wgslsmith_clamp_u32(~1u, var_3.a, ~0u)), arg_0.x));
}

fn func_1() -> vec2<f32> {
    let var_0 = 97999u != _wgslsmith_sub_u32(global2.e, u_input.d);
    var var_1 = (~(~vec3<u32>(u_input.b.x, 4294967295u, u_input.d)) ^ vec3<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(global2.e, 42130u, 0u), ~vec3<u32>(u_input.d, 4294967295u, u_input.a)), max(~u_input.b.x, func_2(vec2<bool>(false, var_0), global3.x, u_input.b.yw, global2.b)), global2.e)) & (u_input.b.wyx >> (_wgslsmith_mult_vec3_u32(~(vec3<u32>(u_input.a, 4294967295u, u_input.a) >> (u_input.b.zyw % vec3<u32>(32u))), min(abs(u_input.b.wzz), ~u_input.b.xwy)) % vec3<u32>(32u)));
    let var_2 = true;
    global2 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global2.a) + _wgslsmith_f_op_vec4_f32(min(global2.a, vec4<f32>(_wgslsmith_f_op_f32(-global2.b.x), 1253f, _wgslsmith_f_op_f32(trunc(global2.d)), global2.d)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(171f, global2.a.x))) + global2.a.yy), global2.c, -435f, u_input.a);
    let var_3 = abs(~vec2<u32>(_wgslsmith_mod_u32(30341u, var_1.x), 32302u)) & vec2<u32>(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(u_input.d, global2.e)), abs(vec2<u32>(var_1.x, var_1.x))), ~(~var_1.x)), u_input.d);
    return _wgslsmith_div_vec2_f32(global2.a.wz, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-214f, global2.a.x)) - _wgslsmith_div_vec2_f32(vec2<f32>(-1131f, 120f), vec2<f32>(-1414f, 408f))) * vec2<f32>(global2.d, 985f)), global2.b)));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = min(_wgslsmith_clamp_vec4_i32(reverseBits(vec4<i32>(u_input.c, -2147483647i, u_input.c, u_input.c)), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c, -32313i, global3.x, u_input.c), vec4<i32>(u_input.c, global3.x, 52380i, global3.x)), max(select(vec4<i32>(42254i, u_input.c, global3.x, u_input.c), vec4<i32>(-26647i, 8371i, u_input.c, 51269i), global2.c.x), vec4<i32>(14100i, u_input.c, global3.x, u_input.c))), ~vec4<i32>(325i, _wgslsmith_dot_vec4_i32(vec4<i32>(global3.x, -13806i, 13506i, -2147483647i), vec4<i32>(-22062i, u_input.c, u_input.c, -1i)), global3.x, _wgslsmith_mod_i32(2147483647i, -25516i))) >> (vec4<u32>(0u, countOneBits(~u_input.a), firstTrailingBit(global2.e), ~_wgslsmith_sub_u32(9020u, 1u)) % vec4<u32>(32u));
    var var_0 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_1()) + global2.b)));
    var var_1 = global2.e ^ (1u & ~_wgslsmith_sub_u32(48022u, u_input.b.x));
    global0 = array<vec4<u32>, 10>();
    var var_2 = Struct_2(global2.a, _wgslsmith_f_op_vec2_f32(exp2(global2.b)), !select(global2.c, !select(vec2<bool>(global2.c.x, false), vec2<bool>(global2.c.x, false), vec2<bool>(true, false)), global2.e <= _wgslsmith_mod_u32(4294967295u, 17346u)), _wgslsmith_f_op_f32(769f * _wgslsmith_f_op_f32(min(global2.b.x, _wgslsmith_div_f32(-1267f, -375f)))), _wgslsmith_add_u32(u_input.b.x, 4294967295u) << (u_input.a % 32u));
    let var_3 = var_2.b.x;
    let var_4 = global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(firstTrailingBit(~var_2.e), abs(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d, u_input.a, u_input.d), u_input.b.wyy)) << (~1u % 32u)), 8u)];
    var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(var_2.a + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(global2.a, vec4<f32>(global2.a.x, 275f, 149f, -339f), vec4<bool>(true, var_2.c.x, var_2.c.x, true))) - vec4<f32>(var_0.x, var_2.b.x, -782f, -194f)))), vec2<f32>(var_0.x, global2.d), global2.c, -1310f, 14826u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(-998f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global2.a.x)))), ~_wgslsmith_clamp_vec4_i32(~vec4<i32>(u_input.c, -8994i, -1i, 0i) >> (~u_input.b % vec4<u32>(32u)), _wgslsmith_add_vec4_i32(countOneBits(vec4<i32>(-20767i, 2147483647i, global3.x, u_input.c)), ~vec4<i32>(1i, 2147483647i, -78952i, u_input.c)), abs(vec4<i32>(global3.x, 1i, u_input.c, u_input.c))), u_input.b);
}

