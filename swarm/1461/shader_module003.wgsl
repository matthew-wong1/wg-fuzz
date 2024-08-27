struct Struct_1 {
    a: vec2<bool>,
    b: vec2<bool>,
    c: i32,
}

struct Struct_2 {
    a: i32,
    b: vec4<f32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: bool,
    d: Struct_1,
    e: bool,
}

struct Struct_4 {
    a: vec4<u32>,
    b: vec4<bool>,
}

struct Struct_5 {
    a: vec4<f32>,
    b: Struct_4,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: vec2<f32>,
    d: vec3<i32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_5, arg_1: vec3<bool>) -> f32 {
    global0 = Struct_3(global0.b.c < ~(~30119i), Struct_1(global0.d.a, arg_0.b.b.ww, global0.b.c), arg_0.b.b.x, Struct_1(select(!(!arg_0.b.b.wy), select(vec2<bool>(arg_0.b.b.x, arg_0.c.x), vec2<bool>(true, true), true), true), select(!vec2<bool>(arg_1.x, global0.b.b.x), select(vec2<bool>(true, true), vec2<bool>(true, true), all(vec2<bool>(false, true))), true), _wgslsmith_clamp_i32(-1i, global0.d.c & 22719i, -global0.d.c)), arg_0.c.x);
    global0 = Struct_3(~1u == _wgslsmith_clamp_u32(~abs(72504u), arg_0.b.a.x, ~_wgslsmith_sub_u32(u_input.a, arg_0.b.a.x)), global0.b, false, Struct_1(select(vec2<bool>(false != arg_1.x, global0.c), arg_1.zy, all(arg_0.b.b)), vec2<bool>(true, true), 1i), false);
    global0 = Struct_3(select(true, true, false), Struct_1(!(!select(vec2<bool>(arg_1.x, arg_0.b.b.x), global0.d.b, arg_1.x)), vec2<bool>(!select(true, arg_1.x, false), arg_1.x), 1i), select(any(!arg_0.b.b.xw) && (any(arg_0.b.b) & arg_0.b.b.x), any(select(!vec2<bool>(global0.b.a.x, true), vec2<bool>(arg_0.c.x, false), global0.b.b)), !all(vec3<bool>(true, false, arg_1.x))), Struct_1(arg_1.zy, global0.b.b, ~global0.d.c), (arg_0.c.x | true) & all(vec4<bool>(true, true, global0.b.b.x & true, !arg_0.b.b.x)));
    global0 = Struct_3(false, global0.d, arg_1.x, global0.d, all(!select(arg_0.b.b, vec4<bool>(global0.e, false, false, true), any(arg_0.b.b.wwx))));
    return _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(802f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -137f) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_0.a.x)))))));
}

fn func_2(arg_0: vec4<i32>) -> Struct_3 {
    global0 = Struct_3(_wgslsmith_f_op_f32(1256f * _wgslsmith_f_op_f32(106f + -1000f)) != _wgslsmith_f_op_f32(func_3(Struct_5(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1012f, -1193f, 542f, 680f)), Struct_4(vec4<u32>(0u, u_input.b, u_input.b, u_input.a), vec4<bool>(false, global0.e, true, false)), global0.b.a), vec3<bool>(all(vec2<bool>(true, false)), true, u_input.a != 18553u))), Struct_1(!select(vec2<bool>(global0.b.a.x, global0.d.a.x), vec2<bool>(global0.c, true), global0.d.a), global0.d.b, global0.d.c & max(68537i, -8868i)), true, Struct_1(vec2<bool>(global0.e, true), vec2<bool>(true, false | global0.b.a.x), _wgslsmith_dot_vec2_i32(arg_0.zy, -(~arg_0.zy))), global0.a);
    global0 = Struct_3(!global0.d.a.x, global0.d, false, Struct_1(!(!global0.d.a), vec2<bool>(true, any(select(vec4<bool>(false, global0.d.b.x, true, global0.e), vec4<bool>(global0.a, false, false, true), global0.c))), global0.b.c), any(!global0.d.a));
    let var_0 = Struct_3(!any(!select(vec3<bool>(global0.c, global0.c, false), vec3<bool>(true, global0.d.b.x, false), global0.c)), Struct_1(global0.d.a, !global0.d.a, 2147483647i), !global0.c, global0.b, !global0.c);
    var var_1 = _wgslsmith_f_op_f32(-1011f * _wgslsmith_f_op_f32(-608f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -547f))));
    var var_2 = var_0;
    return var_0;
}

fn func_1(arg_0: vec3<i32>, arg_1: i32) -> f32 {
    global0 = func_2(vec4<i32>(arg_1, _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.x, global0.d.c), arg_0.yy), ~(~(-29832i))), ~_wgslsmith_div_i32(~arg_1, _wgslsmith_mult_i32(arg_0.x, 0i)), select(-13111i, -_wgslsmith_div_i32(arg_0.x, global0.d.c), true)));
    var var_0 = _wgslsmith_f_op_f32(-750f * -1017f);
    var var_1 = _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(max(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b, 4294967295u, u_input.b, u_input.b), vec4<u32>(24294u, 1u, u_input.b, u_input.b)), max(vec4<u32>(61544u, u_input.a, u_input.b, 1u), vec4<u32>(4294967295u, u_input.a, 27564u, 51544u))), vec4<u32>(_wgslsmith_mod_u32(1u, 88022u), max(0u, u_input.b), u_input.a, 55335u)), 7936u) | countOneBits(select(20264u, u_input.a, global0.b.b.x));
    var var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-424f, _wgslsmith_f_op_f32(ceil(-1269f)))) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(136f - -532f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-452f * 1339f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -475f) + _wgslsmith_f_op_f32(f32(-1f) * -334f)))) - 1f)));
    let var_3 = _wgslsmith_clamp_i32(-13247i, 2147483647i, global0.b.c);
    return _wgslsmith_f_op_f32(ceil(-744f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 692f;
    var_0 = _wgslsmith_f_op_f32(func_1(_wgslsmith_add_vec3_i32(_wgslsmith_add_vec3_i32(~min(vec3<i32>(global0.d.c, global0.d.c, global0.d.c), vec3<i32>(global0.d.c, global0.b.c, 54349i)), select(~vec3<i32>(global0.d.c, global0.b.c, -2147483647i), -vec3<i32>(-11942i, 0i, 13492i), vec3<bool>(global0.c, global0.c, global0.e))), vec3<i32>(global0.b.c, max(-47861i, -31951i), global0.b.c) | _wgslsmith_add_vec3_i32(vec3<i32>(global0.b.c, 33509i, 0i) >> (vec3<u32>(u_input.b, u_input.a, u_input.b) % vec3<u32>(32u)), vec3<i32>(global0.d.c, global0.d.c, global0.b.c) << (vec3<u32>(32282u, u_input.b, 121202u) % vec3<u32>(32u)))), countOneBits(global0.d.c)));
    let var_1 = Struct_1(global0.b.b, global0.b.a, -1905i);
    global0 = func_2(-vec4<i32>(1i, -_wgslsmith_mod_i32(2147483647i, -11496i), max(3158i, global0.b.c), _wgslsmith_add_i32(-2147483647i, var_1.c)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1214f, -1117f, 986f, 1000f))) * _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-169f, -321f, -570f, 660f), vec4<f32>(-1879f, -741f, 473f, 1644f)))))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(641f, _wgslsmith_f_op_f32(floor(-1182f)), _wgslsmith_f_op_f32(1000f + 231f), _wgslsmith_f_op_f32(ceil(-525f))), vec4<f32>(1f, _wgslsmith_div_f32(-168f, -1667f), 344f, 857f))))), 1000f, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(774f + 357f), _wgslsmith_f_op_f32(-1875f - -2277f)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1295f, -519f) * vec2<f32>(1000f, 200f)) + _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(267f, 115f))))) - _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-958f, 126f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(462f, -370f)), !var_1.a))))), select(_wgslsmith_sub_vec3_i32(firstTrailingBit(vec3<i32>(20207i, var_1.c, 41118i)), -vec3<i32>(var_1.c, 1i, -1i)) << ((vec3<u32>(u_input.a, 9559u, 56138u) | ~vec3<u32>(u_input.a, u_input.b, 35284u)) % vec3<u32>(32u)), _wgslsmith_mod_vec3_i32(~vec3<i32>(global0.d.c, var_1.c, -2147483647i) ^ (vec3<i32>(var_1.c, -50389i, var_1.c) << (vec3<u32>(0u, u_input.b, 4294967295u) % vec3<u32>(32u))), reverseBits(vec3<i32>(var_1.c, global0.d.c, 2147483647i)) >> (~vec3<u32>(1u, 0u, u_input.a) % vec3<u32>(32u))), select(select(vec3<bool>(true, false, var_1.b.x), !vec3<bool>(false, global0.c, global0.b.b.x), any(vec2<bool>(false, true))), !select(vec3<bool>(global0.b.b.x, var_1.a.x, var_1.b.x), vec3<bool>(false, true, true), true), select(!vec3<bool>(global0.c, var_1.a.x, false), vec3<bool>(true, true, var_1.b.x), var_1.b.x))), vec3<u32>(12574u, 4294967295u, ~abs(1u)) ^ abs(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, u_input.b, 142925u) >> (vec3<u32>(1u, 43854u, u_input.b) % vec3<u32>(32u)), firstLeadingBit(vec3<u32>(u_input.b, 77921u, 1u)))));
}

