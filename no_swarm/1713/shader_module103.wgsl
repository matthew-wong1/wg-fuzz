struct Struct_1 {
    a: vec3<u32>,
    b: i32,
    c: u32,
    d: vec3<u32>,
    e: vec2<i32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: Struct_1,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: array<Struct_2, 21>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: bool, arg_1: vec2<u32>, arg_2: Struct_2) -> u32 {
    global0 = vec2<bool>(arg_0, false);
    global0 = !vec2<bool>(any(!(!vec3<bool>(true, false, arg_2.d.x))), true);
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(213f, -1207f)) + _wgslsmith_f_op_f32(-1000f + 1310f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-871f * 171f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-2066f * _wgslsmith_f_op_f32(min(-1552f, -270f))))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(520f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(562f)))))));
    var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -2025f), -385f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), var_0.x, true)), var_0.x));
    var var_1 = Struct_2(arg_2.a, Struct_1(_wgslsmith_mult_vec3_u32(firstTrailingBit(_wgslsmith_clamp_vec3_u32(arg_2.b.a, arg_2.b.d, arg_2.c.d)), ~(~vec3<u32>(arg_1.x, 1856u, u_input.a))), ~arg_2.b.e.x, 45569u, vec3<u32>(u_input.a, 0u, 5342u), countOneBits(abs(vec2<i32>(2147483647i, arg_2.a.x) | vec2<i32>(0i, arg_2.a.x)))), Struct_1(min(firstTrailingBit(arg_2.b.a), _wgslsmith_mult_vec3_u32(~vec3<u32>(1u, 60837u, 1u), countOneBits(arg_2.b.a))), arg_2.c.b, 25048u & (_wgslsmith_div_u32(arg_2.c.d.x, u_input.a) | select(1u, arg_2.c.d.x, true)), ~(~select(vec3<u32>(arg_2.c.d.x, arg_2.c.c, 130722u), arg_2.c.d, vec3<bool>(arg_0, false, false))), vec2<i32>(~(~u_input.b.x), 47092i)), vec2<bool>(global0.x, true));
    return min(u_input.a | arg_2.b.a.x, 1u) | arg_2.c.a.x;
}

fn func_2(arg_0: u32, arg_1: bool, arg_2: f32) -> Struct_1 {
    var var_0 = global1[_wgslsmith_index_u32(~u_input.a, 21u)];
    let var_1 = Struct_1(vec3<u32>(0u | u_input.a, _wgslsmith_mod_u32(func_3(global0.x, vec2<u32>(var_0.c.d.x, u_input.a), Struct_2(var_0.a, Struct_1(vec3<u32>(4294967295u, arg_0, u_input.a), var_0.c.b, u_input.a, var_0.b.d, u_input.b.xy), Struct_1(vec3<u32>(arg_0, var_0.b.c, arg_0), u_input.b.x, 0u, var_0.c.d, vec2<i32>(u_input.b.x, -1i)), vec2<bool>(false, global0.x))), countOneBits(4294967295u)) & _wgslsmith_clamp_u32(var_0.b.c, 0u, arg_0), _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(var_0.b.a.xx, vec2<u32>(arg_0, u_input.a), ~vec2<u32>(4294967295u, arg_0)), var_0.b.d.yy)), _wgslsmith_div_i32(-2147483647i, (_wgslsmith_sub_i32(var_0.c.e.x, 1i) << (arg_0 % 32u)) << (0u % 32u)), ~select(arg_0, 4294967295u, true), vec3<u32>(var_0.c.a.x, abs(_wgslsmith_sub_u32(arg_0, u_input.a) << (1u % 32u)), ~arg_0), firstTrailingBit(firstTrailingBit(-_wgslsmith_clamp_vec2_i32(vec2<i32>(var_0.c.b, var_0.c.e.x), u_input.b.yy, u_input.b.zy))));
    var var_2 = 594f;
    var var_3 = arg_1;
    let var_4 = Struct_2(_wgslsmith_mult_vec4_i32(select(var_0.a, var_0.a, select(false, 37537i >= u_input.b.x, false)), max(~firstLeadingBit(var_0.a), reverseBits(_wgslsmith_mod_vec4_i32(var_0.a, var_0.a)))), var_1, Struct_1(vec3<u32>(u_input.a, ~(60853u >> (u_input.a % 32u)), 112006u), _wgslsmith_dot_vec3_i32(u_input.b, vec3<i32>(-89107i, 1i, -1i)), _wgslsmith_mod_u32(arg_0 | u_input.a, 0u) | reverseBits(u_input.a ^ 12572u), var_0.b.d, -_wgslsmith_mod_vec2_i32(~u_input.b.yx, ~u_input.b.xy)), !vec2<bool>(true, var_0.d.x));
    return var_0.c;
}

fn func_4(arg_0: i32, arg_1: i32, arg_2: Struct_1) -> vec4<f32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 299f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1120f, -2428f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(546f, -2371f))))));
    global0 = !select(!select(vec2<bool>(true, global0.x), vec2<bool>(global0.x, global0.x), select(vec2<bool>(global0.x, false), vec2<bool>(global0.x, false), vec2<bool>(true, global0.x))), select(select(vec2<bool>(true, true), vec2<bool>(false, global0.x), select(vec2<bool>(false, false), vec2<bool>(global0.x, global0.x), vec2<bool>(global0.x, false))), !vec2<bool>(global0.x, global0.x), select(select(vec2<bool>(global0.x, false), vec2<bool>(global0.x, true), vec2<bool>(false, global0.x)), vec2<bool>(global0.x, true), !vec2<bool>(true, global0.x))), !(!select(vec2<bool>(false, false), vec2<bool>(false, global0.x), true)));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1380f, var_0.x, 760f, var_0.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-986f, var_0.x, 1367f, 478f)))))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-136f, _wgslsmith_f_op_f32(trunc(824f)), _wgslsmith_f_op_f32(var_0.x + 452f), _wgslsmith_f_op_f32(exp2(var_0.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x) - vec4<f32>(791f, -437f, var_0.x, var_0.x))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(203f, 531f, var_0.x, var_0.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 1643f, var_0.x, -1100f)), vec4<bool>(false, true, global0.x, false)))), true)));
}

fn func_1(arg_0: vec2<f32>, arg_1: bool, arg_2: Struct_1) -> f32 {
    global0 = !(!(!vec2<bool>(668f <= arg_0.x, arg_1)));
    global1 = array<Struct_2, 21>();
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(124f, _wgslsmith_f_op_f32(-arg_0.x), -1365f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(726f + arg_0.x) + _wgslsmith_f_op_f32(-arg_0.x))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(100f, arg_0.x, -1238f, arg_0.x), vec4<f32>(-1130f, arg_0.x, 112f, -495f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x))) + _wgslsmith_f_op_vec4_f32(func_4(u_input.b.x ^ arg_2.e.x, ~u_input.b.x, func_2(u_input.a, arg_1, arg_0.x))))));
    var var_1 = false;
    var_1 = global0.x;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(-arg_0.x)) * _wgslsmith_f_op_f32(f32(-1f) * -394f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(min(692f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_1(vec2<f32>(-236f, 1933f), global0.x, Struct_1(vec3<u32>(76305u, 1u, u_input.a), -2147483647i, u_input.a, vec3<u32>(u_input.a, u_input.a, 0u), vec2<i32>(u_input.b.x, -1i)))))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(799f + -472f) + 446f)) + _wgslsmith_f_op_f32(ceil(-474f)))));
    let var_1 = select(!select(vec2<bool>(!global0.x, !global0.x), vec2<bool>(0u == u_input.a, any(vec4<bool>(global0.x, true, true, false))), true), vec2<bool>(global0.x, false), select(vec2<bool>(_wgslsmith_f_op_f32(var_0 * var_0) == var_0, any(select(vec3<bool>(true, global0.x, global0.x), vec3<bool>(global0.x, false, false), false))), select(vec2<bool>(false, global0.x && global0.x), select(select(vec2<bool>(global0.x, global0.x), vec2<bool>(global0.x, false), vec2<bool>(global0.x, global0.x)), !vec2<bool>(global0.x, global0.x), vec2<bool>(true, true)), !all(vec4<bool>(false, false, false, true))), global0.x));
    var var_2 = Struct_1(vec3<u32>(_wgslsmith_mod_u32(0u, u_input.a), reverseBits(~u_input.a), ~u_input.a), u_input.b.x, abs(4294967295u), _wgslsmith_clamp_vec3_u32(~abs(abs(vec3<u32>(1u, 4294967295u, 0u))), _wgslsmith_clamp_vec3_u32(~vec3<u32>(14834u, u_input.a, u_input.a), vec3<u32>(u_input.a, 4294967295u, u_input.a) << (vec3<u32>(31168u, 56183u, u_input.a) % vec3<u32>(32u)), vec3<u32>(10353u, u_input.a, 32058u) >> (vec3<u32>(u_input.a, u_input.a, 0u) % vec3<u32>(32u))) & _wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, 74671u, u_input.a), vec3<u32>(110297u, 20147u, u_input.a)), vec3<u32>(1u, 0u, u_input.a)), ~_wgslsmith_mod_vec3_u32(vec3<u32>(20269u, 56734u, 1u), ~vec3<u32>(u_input.a, 41539u, u_input.a))), vec2<i32>(countOneBits(min(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, u_input.b.x, 11751i), u_input.b), _wgslsmith_sub_i32(u_input.b.x, 720i))), -1i));
    var var_3 = ~var_2.b;
    var var_4 = !var_1.x;
    var var_5 = Struct_2(-(~(vec4<i32>(-1i, var_2.e.x, -81941i, 5824i) ^ -vec4<i32>(-1i, 59675i, 0i, var_2.e.x))), Struct_1(firstTrailingBit(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(15952u, u_input.a, u_input.a, u_input.a), vec4<u32>(var_2.a.x, u_input.a, 39313u, 75204u)), _wgslsmith_div_u32(u_input.a, 4294967295u), _wgslsmith_clamp_u32(1u, var_2.c, 33416u))), _wgslsmith_div_i32(0i, var_2.e.x), ~abs(16894u), vec3<u32>(_wgslsmith_mult_u32(var_2.d.x & 1u, var_2.a.x), _wgslsmith_mod_u32(u_input.a, 83096u) | ~87706u, countOneBits(0u)), vec2<i32>(min(u_input.b.x, u_input.b.x & var_2.e.x), min(20157i, var_2.e.x) >> (~4294967295u % 32u))), func_2(u_input.a, var_1.x, _wgslsmith_f_op_vec4_f32(func_4(10373i, ~_wgslsmith_mod_i32(var_2.b, -5885i), Struct_1(vec3<u32>(39750u, 4294967295u, var_2.d.x), -23818i, _wgslsmith_mult_u32(1u, u_input.a), _wgslsmith_mod_vec3_u32(vec3<u32>(var_2.d.x, 4294967295u, 29665u), vec3<u32>(4294967295u, 4294967295u, var_2.a.x)), -u_input.b.yy))).x), vec2<bool>(_wgslsmith_sub_u32(u_input.a << (0u % 32u), 11585u) <= ~var_2.a.x, all(vec2<bool>(global0.x, false))));
    let var_6 = false;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(var_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 + 1000f) * _wgslsmith_f_op_f32(var_0 - 1000f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(494f, var_0))))), 632f);
}

