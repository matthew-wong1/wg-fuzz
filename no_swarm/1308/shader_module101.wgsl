struct Struct_1 {
    a: u32,
    b: f32,
    c: vec4<i32>,
    d: vec4<u32>,
    e: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 13> = array<u32, 13>(15559u, 1u, 59599u, 72523u, 15685u, 0u, 108686u, 4294967295u, 8158u, 32497u, 41389u, 78907u, 41241u);

var<private> global1: array<vec3<i32>, 27>;

var<private> global2: u32 = 7454u;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: bool) -> bool {
    let var_0 = Struct_1((firstLeadingBit(~global0[_wgslsmith_index_u32(0u, 13u)]) << (global0[_wgslsmith_index_u32(1u, 13u)] % 32u)) >> ((countOneBits(~4294967295u) & countOneBits(u_input.a.x)) % 32u), -1106f, abs(select(min(_wgslsmith_clamp_vec4_i32(vec4<i32>(0i, u_input.c, u_input.b.x, -1352i), vec4<i32>(u_input.b.x, u_input.c, 0i, u_input.c), vec4<i32>(u_input.b.x, u_input.b.x, 1i, -2147483647i)), vec4<i32>(u_input.b.x, 29445i, u_input.b.x, u_input.c) >> (vec4<u32>(u_input.a.x, 20456u, u_input.a.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(5449u, 13u)], 13u)]) % vec4<u32>(32u))), _wgslsmith_clamp_vec4_i32(select(vec4<i32>(u_input.c, 1i, 1i, 2147483647i), vec4<i32>(42196i, 63989i, u_input.b.x, 15608i), false), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b.x, u_input.c, -34400i, u_input.c), vec4<i32>(-1i, u_input.c, u_input.c, -1893i), vec4<i32>(-6891i, -2147483647i, u_input.b.x, -3756i)), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.c), vec4<i32>(-33820i, 0i, u_input.c, u_input.c))), !vec4<bool>(true, true, arg_0, arg_0))), ~vec4<u32>(0u, min(max(u_input.a.x, 27579u), _wgslsmith_dot_vec2_u32(u_input.a.xy, vec2<u32>(u_input.a.x, 15540u))), _wgslsmith_dot_vec2_u32(vec2<u32>(49515u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(34227u, 13u)], 13u)], 13u)]), vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(15514u, 13u)], 13u)], 1u)) ^ u_input.a.x, ~u_input.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-171f + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1329f * 428f)))) - -166f));
    let var_1 = abs(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, select(1u, 76620u >> (var_0.a % 32u), !arg_0), 4294967295u, 1u), ~var_0.d));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 3390f, 2027f, var_0.b)) - _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.e, 316f, 320f, var_0.e), vec4<f32>(var_0.b, var_0.b, var_0.b, 2408f)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, var_0.b, var_0.e, 178f)) - vec4<f32>(363f, -489f, var_0.e, 603f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b, 1020f, var_0.e, _wgslsmith_f_op_f32(trunc(-332f))))));
    global0 = array<u32, 13>();
    var var_3 = _wgslsmith_add_i32(-_wgslsmith_mod_i32(var_0.c.x, reverseBits(u_input.c)) >> (1u % 32u), _wgslsmith_dot_vec2_i32(u_input.b, vec2<i32>(_wgslsmith_add_i32(-18086i, 2147483647i) >> (abs(var_1.x) % 32u), ~min(u_input.b.x, -1i))));
    return true;
}

fn func_4(arg_0: bool) -> vec4<bool> {
    var var_0 = Struct_1(_wgslsmith_clamp_u32(u_input.a.x, 0u, u_input.a.x) ^ ~abs(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4150u, 13u)], 13u)]), _wgslsmith_f_op_f32(abs(-821f)), select(vec4<i32>((52484i | u_input.c) ^ -u_input.c, abs(max(-29334i, 2147483647i)), 2147483647i, -46286i), _wgslsmith_sub_vec4_i32(abs(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b.x, -5457i, -2147483647i, -1i), vec4<i32>(u_input.c, u_input.b.x, u_input.c, u_input.c))), abs(reverseBits(vec4<i32>(u_input.c, u_input.b.x, 25268i, 1i)))), true && (u_input.a.x <= (19369u << (u_input.a.x % 32u)))), ~vec4<u32>(firstTrailingBit(u_input.a.x), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.a.x, global0[_wgslsmith_index_u32(12240u, 13u)], 4294967295u) >> (vec4<u32>(u_input.a.x, 6450u, 48479u, 4294967295u) % vec4<u32>(32u)), firstTrailingBit(vec4<u32>(u_input.a.x, 28848u, 4294967295u, 25505u))), ~58234u >> (1u % 32u), firstTrailingBit(u_input.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-916f, -127f))))));
    var var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(1142f + 528f), _wgslsmith_f_op_f32(f32(-1f) * -1219f), 670f)), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b, var_0.e, _wgslsmith_div_f32(1000f, var_0.b))))), arg_0));
    global1 = array<vec3<i32>, 27>();
    var var_2 = arg_0;
    let var_3 = Struct_1(var_0.d.x, var_1.x, var_0.c | vec4<i32>(_wgslsmith_dot_vec2_i32(~vec2<i32>(0i, var_0.c.x), select(vec2<i32>(4334i, var_0.c.x), vec2<i32>(u_input.b.x, var_0.c.x), vec2<bool>(arg_0, arg_0))), _wgslsmith_dot_vec3_i32(-global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 13u)], 27u)], vec3<i32>(-1i, -2147483647i, 2461i)), _wgslsmith_clamp_i32(u_input.c, var_0.c.x, u_input.b.x) << (reverseBits(global0[_wgslsmith_index_u32(var_0.d.x, 13u)]) % 32u), -2147483647i), firstLeadingBit(abs(var_0.d)), 1257f);
    return !select(vec4<bool>(!any(vec3<bool>(arg_0, arg_0, false)), true, select(arg_0, !arg_0, var_1.x > -744f), !(!arg_0)), !(!(!vec4<bool>(false, arg_0, arg_0, arg_0))), select(select(!vec4<bool>(arg_0, arg_0, arg_0, arg_0), !vec4<bool>(false, true, true, arg_0), func_3(arg_0)), !select(vec4<bool>(true, true, arg_0, arg_0), vec4<bool>(true, arg_0, true, true), vec4<bool>(arg_0, arg_0, true, arg_0)), !vec4<bool>(arg_0, arg_0, arg_0, true)));
}

fn func_2() -> bool {
    var var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -589f), 659f) - _wgslsmith_f_op_f32(196f * _wgslsmith_div_f32(-860f, -1026f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1543f, 831f))))));
    var var_1 = !vec4<bool>(true, select(false, true, true), all(vec4<bool>(true, true, any(vec4<bool>(false, true, false, false)), global0[_wgslsmith_index_u32(u_input.a.x, 13u)] > global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 13u)], 13u)])), true);
    global0 = array<u32, 13>();
    let var_2 = (var_1.x || var_1.x) & all(vec4<bool>(true, var_1.x, true, any(var_1.xx)));
    var_1 = select(func_4(all(var_1.yz) || func_3(false | var_2)), select(!vec4<bool>(true, func_4(true).x, var_2 | false, var_2 | var_2), func_4(_wgslsmith_sub_i32(u_input.c, 1i) == min(22980i, 7356i)), true), select(!(!vec4<bool>(var_2, var_1.x, true, false)), !(!select(vec4<bool>(true, var_2, var_2, var_2), vec4<bool>(var_1.x, false, var_1.x, false), var_2)), true));
    return true;
}

fn func_1(arg_0: vec3<i32>) -> f32 {
    var var_0 = -1939f;
    var var_1 = vec3<bool>(!func_2(), reverseBits(_wgslsmith_dot_vec4_u32(min(vec4<u32>(0u, u_input.a.x, u_input.a.x, global0[_wgslsmith_index_u32(0u, 13u)]), vec4<u32>(48621u, 3251u, u_input.a.x, u_input.a.x)), vec4<u32>(1u, u_input.a.x, 0u, 6290u) | vec4<u32>(4294967295u, u_input.a.x, 0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 13u)], 13u)]))) >= max(countOneBits(u_input.a.x), _wgslsmith_dot_vec4_u32(select(vec4<u32>(u_input.a.x, global0[_wgslsmith_index_u32(u_input.a.x, 13u)], u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, 71860u, global0[_wgslsmith_index_u32(4294967295u, 13u)], global0[_wgslsmith_index_u32(44665u, 13u)]), vec4<bool>(false, false, false, false)), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, global0[_wgslsmith_index_u32(59171u, 13u)], 47458u, 0u), vec4<u32>(104897u, u_input.a.x, u_input.a.x, 4294967295u)))), false);
    global1 = array<vec3<i32>, 27>();
    return _wgslsmith_f_op_f32(ceil(-213f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1642f, _wgslsmith_f_op_f32(f32(-1f) * -412f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(-(~vec3<i32>(u_input.c, 1i, u_input.c)))) - _wgslsmith_f_op_f32(floor(-149f))));
    global1 = array<vec3<i32>, 27>();
    var var_1 = _wgslsmith_sub_u32(abs(~(~global0[_wgslsmith_index_u32(~u_input.a.x, 13u)])), _wgslsmith_dot_vec3_u32(select(~vec3<u32>(54771u, global0[_wgslsmith_index_u32(4294967295u, 13u)], 88706u) & select(vec3<u32>(u_input.a.x, u_input.a.x, global0[_wgslsmith_index_u32(u_input.a.x, 13u)]), vec3<u32>(global0[_wgslsmith_index_u32(u_input.a.x, 13u)], u_input.a.x, 4294967295u), true), firstLeadingBit(vec3<u32>(1u, 29573u, global0[_wgslsmith_index_u32(u_input.a.x, 13u)])), true), ~abs(countOneBits(vec3<u32>(global0[_wgslsmith_index_u32(u_input.a.x, 13u)], 55021u, global0[_wgslsmith_index_u32(u_input.a.x, 13u)])))));
    let var_2 = true;
    let var_3 = !var_2;
    var var_4 = Struct_1(~global0[_wgslsmith_index_u32(37479u, 13u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-2142f)), _wgslsmith_f_op_f32(-var_0)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(803f - -1832f) - _wgslsmith_f_op_f32(-var_0))) + var_0), reverseBits(~abs(vec4<i32>(u_input.b.x, -2246i, u_input.c, -2147483647i)) >> ((~vec4<u32>(0u, u_input.a.x, u_input.a.x, u_input.a.x) & min(vec4<u32>(1494u, 4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 13u)], 13u)], 13u)], 31607u), vec4<u32>(66961u, 4294967295u, 9895u, 0u))) % vec4<u32>(32u))), vec4<u32>(global0[_wgslsmith_index_u32(~(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.a.x, u_input.a.x), u_input.a) << (27285u % 32u)), 13u)], 1u, 4294967295u, _wgslsmith_div_u32(~1u & _wgslsmith_dot_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(u_input.a.x, 13u)], 0u, 60446u), vec3<u32>(u_input.a.x, global0[_wgslsmith_index_u32(u_input.a.x, 13u)], u_input.a.x)), _wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(8787u, global0[_wgslsmith_index_u32(u_input.a.x, 13u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 13u)], 13u)]), u_input.a), 13u)], global0[_wgslsmith_index_u32(u_input.a.x, 13u)], ~1u))), 1f);
    let var_5 = Struct_1(~max(~0u, 0u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_4.b - 535f) * var_4.e), var_4.c, ~var_4.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -530f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-765f * -537f) - var_4.e)));
    var_4 = Struct_1(1u, _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_5.e, 1349f))), var_5.c, ~(~_wgslsmith_mult_vec4_u32(vec4<u32>(18741u, var_4.d.x, 4294967295u, var_5.d.x) | var_4.d, var_5.d)), 735f);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(firstTrailingBit(select(u_input.a.x, 0u, var_3) ^ (global0[_wgslsmith_index_u32(44358u, 13u)] ^ 43638u)), _wgslsmith_clamp_u32(var_5.d.x, _wgslsmith_sub_u32(u_input.a.x, 0u), countOneBits(~u_input.a.x)), _wgslsmith_sub_u32(u_input.a.x, _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(0u, 27360u), vec2<u32>(var_4.a, global0[_wgslsmith_index_u32(23544u, 13u)])), firstTrailingBit(vec2<u32>(1u, u_input.a.x)))), global0[_wgslsmith_index_u32(var_4.a, 13u)]), 0u);
}

