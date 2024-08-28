struct Struct_1 {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec2<bool>,
    d: vec3<f32>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec4<i32>,
    c: bool,
    d: vec3<f32>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 9>;

var<private> global1: array<Struct_1, 32>;

var<private> global2: array<f32, 29> = array<f32, 29>(822f, 1252f, 1456f, 1817f, -530f, -103f, 1453f, 537f, 314f, -192f, 523f, -1274f, 514f, -808f, 529f, -134f, -217f, 781f, -275f, -256f, 964f, 1450f, -841f, -783f, -208f, 1136f, -240f, -945f, -1324f);

var<private> global3: vec3<bool>;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3() -> bool {
    var var_0 = Struct_2(u_input.a << (~(~vec4<u32>(72423u, 57662u, 36359u, 54748u)) % vec4<u32>(32u)), select(~(~u_input.a), -_wgslsmith_mod_vec4_i32(u_input.a, -u_input.a), select(select(vec4<bool>(false, global3.x, global3.x, global3.x), select(vec4<bool>(global3.x, global3.x, false, true), vec4<bool>(global3.x, global3.x, global3.x, true), global3.x), true), vec4<bool>(true, global3.x, global3.x, true), vec4<bool>(global3.x, true, any(vec4<bool>(global3.x, global3.x, false, global3.x)), true))), true && any(vec2<bool>(all(vec3<bool>(global3.x, global3.x, false)), global3.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global2[_wgslsmith_index_u32(37666u, 29u)], 663f, 2413f), vec3<f32>(2613f, 1461f, global2[_wgslsmith_index_u32(0u, 29u)]), global3.x)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(global2[_wgslsmith_index_u32(98228u, 29u)], -104f, 523f) - vec3<f32>(global2[_wgslsmith_index_u32(1u, 29u)], -271f, global2[_wgslsmith_index_u32(4294967295u, 29u)]))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global2[_wgslsmith_index_u32(58732u, 29u)], -174f, global2[_wgslsmith_index_u32(21899u, 29u)]), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(30203u, 29u)], global2[_wgslsmith_index_u32(4294967295u, 29u)], -662f)), !vec3<bool>(false, global3.x, global3.x))))) * _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-922f, _wgslsmith_f_op_f32(select(global2[_wgslsmith_index_u32(36560u, 29u)], global2[_wgslsmith_index_u32(1u, 29u)], true)), -611f)))), Struct_1(select(vec3<u32>(4294967295u, 1u, abs(72848u)), vec3<u32>(1u, 1u, 1u), true), vec4<u32>(1u, 1u, 1u, 1u), global3.xz, vec3<f32>(_wgslsmith_div_f32(-805f, _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(0u, 29u)])), global2[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(63722u, 4294967295u), vec2<u32>(30742u, 4294967295u)), ~4294967295u), 29u)], -1399f), countOneBits(firstTrailingBit(select(vec2<u32>(108455u, 3829u), vec2<u32>(9589u, 4294967295u), global3.x)))));
    let var_1 = Struct_3(Struct_1(select(var_0.e.a, var_0.e.a, vec3<bool>(u_input.b.x > u_input.a.x, !var_0.c, true)), vec4<u32>(4294967295u, min(min(76173u, 11135u), var_0.e.b.x | 44702u), var_0.e.a.x, 2217u), !(!(!global3.yx)), vec3<f32>(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(11895u, 29u)] * _wgslsmith_f_op_f32(round(1502f))), -442f, _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(~6461u, 29u)] - _wgslsmith_f_op_f32(var_0.e.d.x * global2[_wgslsmith_index_u32(var_0.e.e.x, 29u)]))), vec2<u32>(1u, var_0.e.a.x)), var_0.e.b.x, Struct_2(~(-u_input.a), select(firstLeadingBit(_wgslsmith_mod_vec4_i32(var_0.b, var_0.b)), firstTrailingBit(_wgslsmith_add_vec4_i32(vec4<i32>(var_0.a.x, var_0.a.x, -1i, u_input.a.x), var_0.a)), !select(vec4<bool>(var_0.c, false, false, true), vec4<bool>(false, var_0.e.c.x, true, global3.x), false)), true, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-399f, 385f, global2[_wgslsmith_index_u32(var_0.e.e.x, 29u)]))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(var_0.e.d)) + vec3<f32>(204f, 317f, 1179f)))), Struct_1(reverseBits(var_0.e.b.xww) | min(vec3<u32>(var_0.e.e.x, var_0.e.e.x, var_0.e.a.x), var_0.e.b.zyy), vec4<u32>(0u, ~4294967295u, max(21450u, 0u), abs(4294967295u)), global3.yx, _wgslsmith_f_op_vec3_f32(vec3<f32>(-738f, 1396f, global2[_wgslsmith_index_u32(var_0.e.b.x, 29u)]) * vec3<f32>(var_0.e.d.x, global2[_wgslsmith_index_u32(var_0.e.e.x, 29u)], var_0.d.x)), var_0.e.b.xw)));
    let var_2 = _wgslsmith_clamp_i32(var_1.c.b.x, 0i, 8266i);
    var var_3 = var_1.c;
    var var_4 = vec2<u32>(~var_1.a.e.x, 1u);
    return global3.x;
}

fn func_4(arg_0: vec4<bool>, arg_1: f32, arg_2: u32, arg_3: Struct_2) -> vec4<bool> {
    global0 = array<Struct_3, 9>();
    var var_0 = _wgslsmith_f_op_vec3_f32(arg_3.e.d * vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.e.d.x) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(arg_3.e.e.x, 29u)] * global2[_wgslsmith_index_u32(arg_2, 29u)])))), arg_3.e.d.x, 1000f));
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.e.d.x * arg_3.e.d.x) - _wgslsmith_f_op_f32(-arg_1)), arg_3.e.d.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(-1530f))))) + arg_3.d));
    var var_1 = 63612u;
    let var_2 = !select(arg_0.zyy, !arg_0.zww, true);
    return vec4<bool>(arg_0.x, arg_3.a.x == u_input.b.x, true, var_2.x == true);
}

fn func_2() -> vec3<f32> {
    var var_0 = func_4(vec4<bool>(any(vec3<bool>(!global3.x, false, global3.x)), func_3(), any(!(!vec3<bool>(false, global3.x, global3.x))), select(any(global3.yy), any(!vec3<bool>(true, false, global3.x)), global3.x)), 1098f, _wgslsmith_dot_vec3_u32(min(vec3<u32>(1u, 1u, 1u), ~(~vec3<u32>(4294967295u, 41653u, 77314u))), _wgslsmith_add_vec3_u32(_wgslsmith_clamp_vec3_u32(select(vec3<u32>(4294967295u, 1u, 27104u), vec3<u32>(37172u, 4294967295u, 82969u), true), max(vec3<u32>(50507u, 8467u, 1u), vec3<u32>(0u, 4294967295u, 0u)), vec3<u32>(1u, 21058u, 31071u)), vec3<u32>(1u, 1u, 1u))), Struct_2(vec4<i32>(_wgslsmith_sub_i32(-3445i, i32(-1i) * -8258i), ~u_input.a.x >> (~4997u % 32u), 16109i, 1i | _wgslsmith_add_i32(u_input.b.x, 0i)), u_input.a << (abs(countOneBits(vec4<u32>(57297u, 69260u, 1u, 26257u))) % vec4<u32>(32u)), true || all(vec4<bool>(global3.x, global3.x, global3.x, global3.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1620f), _wgslsmith_f_op_f32(trunc(global2[_wgslsmith_index_u32(69716u, 29u)])), -2189f)), Struct_1(vec3<u32>(reverseBits(4294967295u), ~1u, abs(0u)), select(vec4<u32>(0u, 8120u, 78176u, 5242u), ~vec4<u32>(58376u, 3944u, 0u, 0u), false), !select(vec2<bool>(global3.x, false), global3.yx, global3.yx), vec3<f32>(-1499f, global2[_wgslsmith_index_u32(abs(76676u), 29u)], -1432f), _wgslsmith_clamp_vec2_u32(firstTrailingBit(vec2<u32>(0u, 1u)), vec2<u32>(1u, 31556u), max(vec2<u32>(83736u, 4294967295u), vec2<u32>(93586u, 45414u))))));
    var var_1 = -_wgslsmith_sub_vec4_i32(countOneBits(vec4<i32>(u_input.a.x, u_input.a.x, 62273i, u_input.a.x) & vec4<i32>(u_input.b.x, -5499i, -7710i, 2147483647i)) ^ u_input.a, vec4<i32>(countOneBits(~(-1i)), u_input.a.x >> (1u % 32u), ~(-1i), -7773i));
    let var_2 = _wgslsmith_f_op_f32(step(610f, global2[_wgslsmith_index_u32(1u, 29u)]));
    var var_3 = vec4<bool>(_wgslsmith_dot_vec2_i32(u_input.b & countOneBits(var_1.wy), _wgslsmith_div_vec2_i32(select(vec2<i32>(u_input.a.x, 8380i), vec2<i32>(u_input.b.x, -3038i), var_0.zx), abs(u_input.a.yy))) > var_1.x, global3.x || global3.x, any(!func_4(vec4<bool>(false, var_0.x, false, var_0.x), _wgslsmith_f_op_f32(trunc(1807f)), 1u, Struct_2(u_input.a, u_input.a, false, vec3<f32>(-1687f, global2[_wgslsmith_index_u32(90589u, 29u)], -1942f), Struct_1(vec3<u32>(645u, 76977u, 20399u), vec4<u32>(4294967295u, 38603u, 67910u, 3895u), vec2<bool>(false, false), vec3<f32>(-1338f, global2[_wgslsmith_index_u32(1u, 29u)], -1195f), vec2<u32>(21846u, 39243u)))).zx), global3.x);
    let var_4 = true;
    return _wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(global2[_wgslsmith_index_u32(~90926u, 29u)], -190f, _wgslsmith_f_op_f32(var_2 * global2[_wgslsmith_index_u32(40595u, 29u)])), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(103f, var_2, global2[_wgslsmith_index_u32(40110u, 29u)]))))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2, var_2, var_2) * vec3<f32>(-205f, 823f, 243f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(50937u, 29u)], global2[_wgslsmith_index_u32(99804u, 29u)], global2[_wgslsmith_index_u32(76411u, 29u)])), true))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -653f), _wgslsmith_f_op_f32(select(378f, _wgslsmith_f_op_f32(-var_2), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(410f)))))));
}

fn func_1(arg_0: vec3<i32>) -> vec3<f32> {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(abs(4294967295u) | firstTrailingBit(1u), 29u)] - 491f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global2[_wgslsmith_index_u32(firstLeadingBit(4294967295u), 29u)])))));
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1014f, -629f, 298f) + _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_2()))))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -763f), global2[_wgslsmith_index_u32(47214u, 29u)]), _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(0u, 29u)]) + _wgslsmith_f_op_f32(trunc(var_0))))));
}

fn func_5(arg_0: u32, arg_1: vec3<f32>, arg_2: Struct_1) -> bool {
    global1 = array<Struct_1, 32>();
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = any(vec4<bool>(global3.x, select(false, _wgslsmith_add_i32(u_input.a.x, u_input.b.x) > min(u_input.b.x, -49032i), !(global3.x || global3.x)), !(!global3.x), all(select(vec4<bool>(global3.x, false, global3.x, false), !vec4<bool>(global3.x, false, true, global3.x), !vec4<bool>(true, global3.x, false, true)))));
    global3 = select(!(!(!vec3<bool>(true, var_0, true))), vec3<bool>(global3.x, func_5(1u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1(u_input.a.wxw))), Struct_1(max(vec3<u32>(4294967295u, 1u, 1u), vec3<u32>(23435u, 4294967295u, 1u)), ~vec4<u32>(31344u, 18132u, 35085u, 42500u), vec2<bool>(global3.x, false), _wgslsmith_f_op_vec3_f32(vec3<f32>(-487f, -1000f, -401f) * vec3<f32>(504f, 581f, 109f)), vec2<u32>(1u, 1u))), !(_wgslsmith_f_op_f32(step(-1358f, global2[_wgslsmith_index_u32(19867u, 29u)])) != global2[_wgslsmith_index_u32(1u, 29u)])), !(!vec3<bool>(any(vec4<bool>(var_0, global3.x, var_0, global3.x)), 0i <= u_input.b.x, false)));
    let var_1 = max(vec4<i32>(-1i, 1i, _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(u_input.a.x, -2147483647i), u_input.b.x, 2147483647i, u_input.b.x), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.a.x, 78617i, -1i, -2147483647i), vec4<i32>(u_input.a.x, -1i, u_input.b.x, 1i)) & u_input.a), _wgslsmith_clamp_i32(20076i, 2147483647i, _wgslsmith_div_i32(u_input.b.x, _wgslsmith_mult_i32(26190i, -1i)))), u_input.a);
    var var_2 = false;
    var var_3 = vec3<f32>(1285f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(reverseBits(34213u), 29u)] * global2[_wgslsmith_index_u32(4294967295u, 29u)])), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_vec3_f32(func_1(~reverseBits(vec3<i32>(var_1.x, u_input.a.x, var_1.x)))).x, global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u, abs(~8065u)), 29u)])));
    var var_4 = Struct_2(u_input.a, vec4<i32>(var_1.x, 36117i, _wgslsmith_mult_i32(-58994i, _wgslsmith_div_i32(2146i, var_1.x)), 1i) >> (~vec4<u32>(~54786u, 4294967295u, ~37088u, 1u) % vec4<u32>(32u)), true, _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_3.x, -652f, -443f), vec3<f32>(-1974f, 217f, -274f), vec3<bool>(true, true, true)))) - vec3<f32>(_wgslsmith_f_op_f32(step(var_3.x, 1129f)), _wgslsmith_f_op_f32(min(697f, 1140f)), _wgslsmith_f_op_f32(-var_3.x))))), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(select(select(_wgslsmith_mod_vec4_u32(vec4<u32>(0u, 12453u, 38716u, 4294967295u), vec4<u32>(81226u, 15392u, 1u, 356u)), ~vec4<u32>(1u, 4294967295u, 4294967295u, 4294967295u), select(vec4<bool>(true, true, false, true), vec4<bool>(true, var_0, global3.x, false), var_0)), ~select(vec4<u32>(4294967295u, 1u, 0u, 55413u), vec4<u32>(51592u, 0u, 4294967295u, 67872u), vec4<bool>(global3.x, var_0, true, var_0)), all(select(global3.xx, global3.zz, global3.x))), vec4<u32>(~firstTrailingBit(1u), 1u, _wgslsmith_mult_u32(~18300u, 1u), 14792u)), 32u)]);
    var_3 = vec3<f32>(1f, 301f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_3.x)))));
    global3 = vec3<bool>(!var_0, !(!(!var_0)), !any(vec3<bool>(false, false == var_0, false)));
    let x = u_input.a;
    s_output = StorageBuffer(~var_4.e.e.x, -_wgslsmith_div_i32(u_input.a.x, var_4.a.x) & 2147483647i, vec2<i32>(-(countOneBits(var_4.a.x) ^ -2147483647i), i32(-1i) * -var_1.x), _wgslsmith_dot_vec4_u32(vec4<u32>(firstTrailingBit(_wgslsmith_mult_u32(1u, 23609u)), _wgslsmith_clamp_u32(~66406u, abs(8461u), var_4.e.b.x), firstTrailingBit(8135u) | ~0u, _wgslsmith_dot_vec4_u32(select(var_4.e.b, var_4.e.b, vec4<bool>(true, false, var_4.e.c.x, true)), _wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, var_4.e.a.x, 48818u, var_4.e.a.x), var_4.e.b))), select(vec4<u32>(1u, 46903u, var_4.e.a.x, var_4.e.b.x), vec4<u32>(var_4.e.b.x, var_4.e.b.x, var_4.e.b.x, 4294967295u), select(vec4<bool>(var_4.e.c.x, var_0, false, var_4.e.c.x), vec4<bool>(true, global3.x, false, false), vec4<bool>(var_4.c, var_0, global3.x, global3.x))) << ((~var_4.e.b << (~var_4.e.b % vec4<u32>(32u))) % vec4<u32>(32u))), ~(-1i));
}

