struct Struct_1 {
    a: bool,
    b: vec3<u32>,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 9>;

var<private> global1: bool = true;

var<private> global2: bool = true;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: f32) -> bool {
    let var_0 = false;
    global2 = var_0;
    let var_1 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(147f, -611f, arg_1, -730f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, 1155f, arg_1, arg_1))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(vec4<f32>(-941f, arg_1, 490f, arg_1), vec4<f32>(-539f, arg_1, -634f, arg_1)))))))));
    var var_2 = vec4<i32>(~(-21157i), _wgslsmith_clamp_i32(u_input.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(u_input.a.x, u_input.a.x, 39353i, u_input.a.x), u_input.a), -24673i), countOneBits(min(34271i, u_input.a.x >> (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, arg_0.b.x, 71423u, 11049u), vec4<u32>(arg_0.b.x, u_input.b.x, 61416u, 1u)) % 32u))), i32(-1i) * -1i);
    var var_3 = Struct_1(all(vec3<bool>(any(vec4<bool>(var_0, arg_0.a, var_0, true)), false, arg_0.a | true)) | var_0, select(u_input.b.zzw, _wgslsmith_mult_vec3_u32(u_input.c ^ vec3<u32>(u_input.b.x, 10836u, arg_0.b.x), min(arg_0.b, vec3<u32>(u_input.b.x, 4294967295u, 28558u))), arg_0.a) ^ u_input.b.xwx, vec2<bool>(true, var_0));
    return ((all(select(vec4<bool>(arg_0.c.x, var_0, var_3.a, var_3.c.x), vec4<bool>(var_0, false, arg_0.c.x, arg_0.a), arg_0.c.x)) || all(vec3<bool>(var_0, true, true))) | (countOneBits(select(0u, 1u, true)) >= ~44527u)) || all(var_3.c);
}

fn func_2() -> u32 {
    global2 = true;
    let var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(-207f)), _wgslsmith_f_op_f32(1007f * 293f), func_3(Struct_1(false, u_input.b.xzy, vec2<bool>(false, false)), -604f))))), _wgslsmith_f_op_f32(max(-557f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1092f * 380f), -661f, true)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(-247f)), _wgslsmith_f_op_f32(-171f + 148f)))))) * vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1758f), _wgslsmith_f_op_f32(f32(-1f) * -1000f), false)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1409f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -521f))));
    global0 = array<vec4<i32>, 9>();
    global2 = true;
    global2 = _wgslsmith_f_op_f32(abs(-667f)) < var_0.x;
    return u_input.c.x;
}

fn func_1() -> Struct_1 {
    global2 = -u_input.a.x <= _wgslsmith_add_i32(0i, -1i);
    var var_0 = _wgslsmith_mod_vec3_u32(~vec3<u32>(u_input.c.x ^ func_2(), _wgslsmith_add_u32(~u_input.b.x, 1u), u_input.b.x), select(max(firstLeadingBit(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b.x, 4294967295u, 20975u), vec3<u32>(0u, u_input.b.x, u_input.b.x), vec3<u32>(u_input.b.x, 4294967295u, 43761u))), _wgslsmith_mod_vec3_u32(~u_input.b.xxx, _wgslsmith_mult_vec3_u32(u_input.c, vec3<u32>(60404u, u_input.b.x, 23816u)))), ~_wgslsmith_div_vec3_u32(firstTrailingBit(vec3<u32>(u_input.c.x, u_input.b.x, 86068u)), u_input.b.yxy | vec3<u32>(72798u, 4294967295u, u_input.c.x)), !select(false, true, false) | true));
    global1 = true;
    global1 = true;
    let var_1 = ~u_input.b;
    return Struct_1(select(all(vec3<bool>(true, true, true)), !any(vec2<bool>(true, true)), ~_wgslsmith_div_i32(2825i, u_input.a.x) >= u_input.a.x), u_input.b.www, !(!select(select(vec2<bool>(false, false), vec2<bool>(false, true), false), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true)), true)));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: Struct_1) -> Struct_1 {
    let var_0 = arg_2.c.x;
    var var_1 = arg_2;
    return func_1();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mod_i32(20143i, ~u_input.a.x);
    var var_1 = func_4(func_1(), _wgslsmith_div_vec4_f32(vec4<f32>(-2255f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-608f, -1556f) + -1177f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(-1307f, 2278f)))), 1000f), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(453f * -1131f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(855f)))), -1891f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1736f, 477f)))), Struct_1(!select(true, all(vec4<bool>(true, true, false, true)), all(vec3<bool>(true, true, true))), u_input.b.wwz, !func_1().c));
    var var_2 = select(u_input.b, u_input.b, true);
    global2 = !(all(!func_4(Struct_1(var_1.a, var_1.b, var_1.c), vec4<f32>(504f, 607f, 537f, 1000f), Struct_1(var_1.a, var_1.b, var_1.c)).c) == (func_4(Struct_1(var_1.a, vec3<u32>(0u, 9887u, 1696u), var_1.c), vec4<f32>(-309f, -261f, 619f, 1000f), func_1()).c.x && true));
    let var_3 = Struct_1(var_1.c.x, ~(u_input.b.xzw << (var_2.wyz % vec3<u32>(32u))), vec2<bool>(true, false));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1186f))) - -1546f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(sign(-951f)), true)), _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(-917f - -1884f)));
}

