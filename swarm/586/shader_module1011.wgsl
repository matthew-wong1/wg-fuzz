struct Struct_1 {
    a: vec4<bool>,
    b: u32,
    c: i32,
    d: vec3<u32>,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec3<u32>,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -63467i;

var<private> global1: array<Struct_1, 24>;

var<private> global2: bool;

var<private> global3: array<vec4<bool>, 14>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: bool) -> vec4<bool> {
    var var_0 = any(!(!vec2<bool>(arg_0, arg_0)));
    var var_1 = vec3<f32>(_wgslsmith_div_f32(416f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1745f - 1055f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(548f)))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(-974f)))), 1f)))), _wgslsmith_f_op_f32(f32(-1f) * -496f));
    var var_2 = global1[_wgslsmith_index_u32(~u_input.e, 24u)];
    let var_3 = max(reverseBits(-min(-vec2<i32>(77732i, -4787i), firstLeadingBit(u_input.b.zy))), firstTrailingBit(u_input.b.xx));
    var var_4 = -_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(~2147483647i, u_input.b.x ^ var_2.c, firstTrailingBit(11620i)), vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, -2147483647i, var_3.x, u_input.a), vec4<i32>(var_2.c, 0i, var_3.x, var_2.c)), _wgslsmith_clamp_i32(u_input.b.x, -40834i, var_3.x), firstTrailingBit(-1i))), -40541i);
    return !vec4<bool>(false, !arg_0, all(select(var_2.a.wx, select(var_2.a.zy, vec2<bool>(true, var_2.a.x), arg_0), !vec2<bool>(arg_0, true))), !var_2.e.x);
}

fn func_2() -> vec4<f32> {
    let var_0 = !(!select(vec3<bool>(true, true, false), vec3<bool>(true, all(global3[_wgslsmith_index_u32(u_input.e, 14u)]), u_input.c.x < u_input.d.x), vec3<bool>(true, true, true)));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1524f));
    let var_2 = Struct_1(func_3(var_0.x), ~90113u, ~(i32(-1i) * -1i), min(~u_input.c, u_input.c), !select(var_0, !var_0, 4294967295u <= (37399u & u_input.c.x)));
    var var_3 = var_2;
    var var_4 = Struct_1(func_3(all(vec3<bool>(true, true, true))), 23916u, 2147483647i, var_3.d, func_3(var_3.a.x).xwx);
    return _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(1089f)), _wgslsmith_f_op_f32(f32(-1f) * -1209f)), 1f)), _wgslsmith_f_op_f32(354f + -583f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-345f - _wgslsmith_div_f32(-943f, -1476f)) - _wgslsmith_f_op_f32(trunc(-1556f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(-315f, -816f)), _wgslsmith_f_op_f32(abs(-947f))))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(1158f, 760f, -401f, -3032f) - vec4<f32>(-1020f, 478f, -589f, -1502f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(547f, 1191f, -471f, -537f) + vec4<f32>(-1190f, -754f, -786f, -387f)))))));
}

fn func_1(arg_0: vec2<u32>) -> bool {
    let var_0 = global1[_wgslsmith_index_u32(u_input.d.x, 24u)];
    global1 = array<Struct_1, 24>();
    let var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_2()), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - -531f)), -829f, 881f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -692f)))))));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(var_1 + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_1.x, var_1.x, var_1.x))))));
    global3 = array<vec4<bool>, 14>();
    return var_0.a.x;
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    return Struct_1(select(func_3(!arg_0.e.x), func_3(false), !select(!global3[_wgslsmith_index_u32(75465u, 14u)], vec4<bool>(true, arg_0.e.x, true, arg_0.a.x), true)), max(46310u, _wgslsmith_mult_u32(12912u, _wgslsmith_mod_u32(arg_0.d.x, 8399u) ^ u_input.c.x)), u_input.b.x, vec3<u32>(u_input.c.x, ((99324u << (u_input.d.x % 32u)) >> (~200u % 32u)) & ~85960u, ~u_input.d.x), select(arg_0.e, !vec3<bool>(false, true, arg_0.e.x), select(select(false, false, arg_0.a.x) != arg_0.a.x, arg_0.a.x, !arg_0.a.x)));
}

fn func_5(arg_0: i32, arg_1: Struct_1) -> Struct_1 {
    global2 = u_input.a <= ~func_4(arg_1).c;
    var var_0 = abs(-arg_0) >= ((_wgslsmith_add_i32(firstLeadingBit(-2147483647i), arg_1.c ^ -10715i) << ((u_input.d.x & u_input.e) % 32u)) | (_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, 1i, arg_1.c), -vec3<i32>(u_input.a, 0i, 28170i)) ^ firstTrailingBit(-2147483647i)));
    var var_1 = 441f;
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1828f * -282f), _wgslsmith_f_op_f32(floor(-436f)))) * -323f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_2()).x)));
    global3 = array<vec4<bool>, 14>();
    return Struct_1(vec4<bool>(true, true, true, false), arg_1.d.x, 1i, u_input.c, select(arg_1.a.wwz, arg_1.e, false));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5((10511i << (~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 98982u, u_input.d.x, 4294967295u), vec4<u32>(36416u, u_input.e, u_input.e, u_input.e)) % 32u)) & _wgslsmith_add_i32(-1i, 14124i), func_4(Struct_1(vec4<bool>(func_1(u_input.c.zx), true, true, any(vec2<bool>(false, false))), 22076u, _wgslsmith_add_i32(-26686i, 1i) & _wgslsmith_mult_i32(19873i, u_input.a), vec3<u32>(82309u, 31001u, u_input.d.x & 4294967295u), select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true)))));
    global3 = array<vec4<bool>, 14>();
    global0 = _wgslsmith_mult_i32(_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(u_input.b & u_input.b, ~u_input.b) ^ reverseBits(var_0.c << (var_0.b % 32u)), _wgslsmith_dot_vec2_i32(u_input.b.yy, u_input.b.xx) & ((u_input.b.x << (76934u % 32u)) & 1i)), var_0.c);
    var var_1 = Struct_1(select(var_0.a, select(!vec4<bool>(false, var_0.e.x, var_0.e.x, var_0.e.x), select(var_0.a, !var_0.a, var_0.a), vec4<bool>(var_0.a.x, !var_0.e.x, true, select(true, true, var_0.a.x))), false), _wgslsmith_add_u32(func_5(~2147483647i, Struct_1(var_0.a, u_input.d.x, u_input.a, vec3<u32>(u_input.d.x, u_input.c.x, 0u), var_0.e)).d.x, ~(~u_input.e)) | 1u, countOneBits(-u_input.b.x) >> (~_wgslsmith_clamp_u32(18126u, _wgslsmith_mult_u32(var_0.b, 96447u), func_5(2377i, Struct_1(vec4<bool>(true, var_0.a.x, var_0.e.x, true), 72967u, u_input.b.x, vec3<u32>(u_input.e, 82007u, u_input.e), var_0.a.wzy)).d.x) % 32u), ~vec3<u32>(_wgslsmith_add_u32(select(u_input.d.x, 24386u, true), ~66938u), var_0.d.x, ~1u), func_4(Struct_1(vec4<bool>(var_0.a.x, !var_0.a.x, true, func_5(-12258i, Struct_1(global3[_wgslsmith_index_u32(936u, 14u)], 67123u, 20923i, var_0.d, var_0.a.wyw)).a.x), countOneBits(func_5(45622i, global1[_wgslsmith_index_u32(9582u, 24u)]).d.x), -3193i, reverseBits(var_0.d | vec3<u32>(u_input.d.x, u_input.c.x, u_input.c.x)), vec3<bool>(true, !var_0.a.x, 4294967295u > u_input.c.x))).e);
    let var_2 = vec2<i32>(0i, u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(select(-u_input.b >> (vec3<u32>(var_0.b ^ var_1.b, func_5(var_0.c, Struct_1(vec4<bool>(false, var_1.a.x, false, var_0.a.x), u_input.d.x, u_input.a, vec3<u32>(41020u, 25503u, 4294967295u), var_1.e)).b, 11496u) % vec3<u32>(32u)), _wgslsmith_clamp_vec3_i32(abs(u_input.b >> (vec3<u32>(var_0.b, 1u, var_0.d.x) % vec3<u32>(32u))), ~vec3<i32>(var_1.c, -2147483647i, var_0.c) & (vec3<i32>(1i, var_0.c, var_0.c) & u_input.b), vec3<i32>(max(var_0.c, var_2.x), ~var_0.c, _wgslsmith_dot_vec3_i32(u_input.b, u_input.b))), vec3<bool>(true, 28069u <= var_1.d.x, false)), 40669u);
}

