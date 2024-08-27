struct Struct_1 {
    a: vec3<bool>,
    b: f32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec2<u32>,
    c: Struct_1,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec2<i32>,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<vec2<u32>, 8>;

var<private> global2: vec4<u32>;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec2<u32>, arg_1: vec4<i32>) -> f32 {
    var var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1222f, 1457f, -630f) + vec3<f32>(_wgslsmith_f_op_f32(abs(-1806f)), _wgslsmith_f_op_f32(ceil(-416f)), _wgslsmith_f_op_f32(f32(-1f) * -503f)))), ~firstLeadingBit(vec2<u32>(global2.x, abs(u_input.e.x))), Struct_1(vec3<bool>(u_input.a >= _wgslsmith_mult_u32(arg_0.x, arg_0.x), false, false), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1146f + 278f))))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-729f, 822f) - vec2<f32>(-1364f, -426f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-869f, 386f) + vec2<f32>(-1071f, -1455f))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(274f, -1346f)) + _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1316f, -1169f))))))));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-989f))), -549f, var_0.c.b, 463f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(363f, var_0.c.b, 1000f, var_0.c.b) - _wgslsmith_f_op_vec4_f32(round(vec4<f32>(719f, var_0.a.x, 1125f, -263f))))))));
    global0 = ~arg_1.x;
    let var_2 = Struct_1(select(!vec3<bool>(false, true, var_0.c.a.x), var_0.c.a, true), var_1.x);
    global0 = _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(-arg_1.xw, vec2<i32>(33611i, u_input.c.x) >> (vec2<u32>(arg_0.x, 0u) % vec2<u32>(32u))) ^ vec2<i32>(-16780i, -(~u_input.d)), arg_1.zy);
    return var_2.b;
}

fn func_2(arg_0: u32, arg_1: u32) -> vec3<i32> {
    var var_0 = !vec4<bool>(true, true, all(!select(vec2<bool>(true, false), vec2<bool>(false, false), false)), true);
    var var_1 = vec2<f32>(-1240f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(369f)), -1346f)));
    global0 = ~_wgslsmith_mod_i32(-2147483647i, u_input.b.x) & 20579i;
    let var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1.x, var_1.x, -1000f), vec3<f32>(var_1.x, var_1.x, var_1.x), var_0.wwy))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, 715f, -223f) - _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(784f, var_1.x, 259f))))) + vec3<f32>(_wgslsmith_f_op_f32(func_3(global2.zx, _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x), vec4<i32>(u_input.d, u_input.d, -65264i, 27985i)))), _wgslsmith_f_op_f32(min(var_1.x, _wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_1.x))))), _wgslsmith_sub_vec2_u32(vec2<u32>(~global2.x & _wgslsmith_mult_u32(0u, arg_0), global2.x), u_input.e.wx), Struct_1(select(select(var_0.zzx, select(var_0.wyx, vec3<bool>(var_0.x, var_0.x, false), var_0.zyz), var_0.ywy), var_0.zzy, vec3<bool>(var_0.x, var_0.x, var_0.x)), var_1.x), vec2<f32>(_wgslsmith_f_op_f32(select(-1307f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), firstLeadingBit(49390i) <= ~u_input.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(2110f + -508f)) + var_1.x)));
    global2 = u_input.e;
    return -(_wgslsmith_sub_vec3_i32(vec3<i32>(_wgslsmith_dot_vec2_i32(u_input.c, vec2<i32>(-1i, 12538i)), u_input.d, u_input.d), vec3<i32>(~0i, min(u_input.d, u_input.d), -14210i)) ^ u_input.b);
}

fn func_4(arg_0: vec3<i32>, arg_1: vec4<u32>, arg_2: vec4<f32>) -> Struct_2 {
    var var_0 = !select(select(vec2<bool>(true, any(vec3<bool>(false, false, false))), vec2<bool>(all(vec4<bool>(true, false, true, false)), select(true, false, false)), all(vec2<bool>(false, false))), vec2<bool>(true, true), any(vec3<bool>(true, all(vec3<bool>(true, false, false)), select(true, true, true))));
    global2 = ~u_input.e;
    global2 = ~(~vec4<u32>(_wgslsmith_sub_u32(global2.x, arg_1.x), u_input.e.x, _wgslsmith_mult_u32(global2.x, u_input.e.x), max(7494u, arg_1.x)) ^ firstLeadingBit(u_input.e));
    let var_1 = _wgslsmith_f_op_f32(ceil(-1000f));
    let var_2 = var_1;
    return Struct_2(vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x)))), 586f, _wgslsmith_f_op_f32(f32(-1f) * -2278f)), vec2<u32>(_wgslsmith_div_u32(~(~0u), _wgslsmith_div_u32(_wgslsmith_add_u32(13680u, u_input.a), max(64823u, 4294967295u))), _wgslsmith_mod_u32(0u, _wgslsmith_sub_u32(~u_input.e.x, global2.x))), Struct_1(vec3<bool>(all(vec4<bool>(var_0.x, var_0.x, true, false)), true, var_0.x | all(vec3<bool>(var_0.x, var_0.x, false))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2) - var_1)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(arg_2.x + var_1), var_1) + vec2<f32>(_wgslsmith_f_op_f32(var_2 * 683f), _wgslsmith_f_op_f32(abs(var_1))))));
}

fn func_5(arg_0: Struct_2, arg_1: vec3<i32>) -> u32 {
    let var_0 = ~(u_input.c.x & u_input.b.x);
    return ~firstTrailingBit(14434u);
}

fn func_1() -> Struct_1 {
    let var_0 = firstTrailingBit(func_5(func_4(func_2(u_input.e.x, _wgslsmith_clamp_u32(49664u, u_input.a, 4294967295u)), vec4<u32>(93629u, abs(u_input.e.x), u_input.e.x & u_input.e.x, 81891u), vec4<f32>(-992f, _wgslsmith_f_op_f32(-1176f * 166f), _wgslsmith_div_f32(-1412f, 959f), _wgslsmith_f_op_f32(trunc(183f)))), _wgslsmith_clamp_vec3_i32(-(u_input.b >> (global2.xzz % vec3<u32>(32u))), firstTrailingBit(-vec3<i32>(27773i, 0i, 7503i)), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.c.x, 1i, 0i) ^ u_input.b, _wgslsmith_div_vec3_i32(u_input.b, vec3<i32>(2147483647i, u_input.b.x, u_input.d))))));
    var var_1 = false;
    global0 = _wgslsmith_mult_i32(u_input.c.x, 27100i & u_input.c.x);
    var var_2 = vec3<bool>(true, 1i < _wgslsmith_div_i32(_wgslsmith_sub_i32(0i, _wgslsmith_dot_vec3_i32(u_input.b, vec3<i32>(0i, u_input.d, 42786i))), _wgslsmith_div_i32(u_input.c.x, u_input.b.x)), u_input.b.x >= -45346i);
    var var_3 = ~u_input.a;
    return Struct_1(select(!select(select(vec3<bool>(false, var_2.x, var_2.x), vec3<bool>(var_2.x, var_2.x, false), var_2.x), vec3<bool>(var_2.x, false, var_2.x), all(vec3<bool>(var_2.x, true, false))), vec3<bool>(any(!vec4<bool>(var_2.x, var_2.x, var_2.x, var_2.x)), select(true, false, !var_2.x), all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, var_2.x, true, var_2.x), false))), var_2.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(391f, -192f))) - _wgslsmith_f_op_f32(max(-2161f, -1000f))));
}

fn func_6(arg_0: Struct_2, arg_1: vec2<u32>, arg_2: f32) -> Struct_1 {
    global1 = array<vec2<u32>, 8>();
    global2 = u_input.e;
    var var_0 = min(4294967295u, 4294967295u);
    global1 = array<vec2<u32>, 8>();
    let var_1 = arg_0.c;
    return var_1;
}

fn func_7(arg_0: Struct_2, arg_1: i32, arg_2: bool) -> StorageBuffer {
    let var_0 = vec2<i32>(func_2(arg_0.b.x, global2.x).x, arg_1);
    global2 = ~_wgslsmith_div_vec4_u32(vec4<u32>(0u, 0u, global2.x | u_input.a, global2.x), ~min(vec4<u32>(26829u, 4294967295u, 14756u, arg_0.b.x), u_input.e)) >> (countOneBits(vec4<u32>(global2.x, 20815u, global2.x, _wgslsmith_sub_u32(4294967295u ^ u_input.e.x, ~30241u))) % vec4<u32>(32u));
    global2 = u_input.e;
    var var_1 = !(!func_4(u_input.b, u_input.e >> (~vec4<u32>(global2.x, 22367u, 32121u, arg_0.b.x) % vec4<u32>(32u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_0.c.b, arg_0.d.x, -1829f, -1593f))))).c.a.zy);
    var var_2 = false;
    return StorageBuffer(-1736f, 19824i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.c;
    let var_1 = !((_wgslsmith_add_i32(i32(-1i) * -7162i, -1136i) << (_wgslsmith_mult_u32(min(global2.x, u_input.e.x), ~0u) % 32u)) > ~10303i);
    var var_2 = ~1i;
    let var_3 = ~(~_wgslsmith_add_vec4_u32(~vec4<u32>(global2.x, global2.x, 15373u, 4294967295u), ~vec4<u32>(0u, u_input.a, 0u, global2.x))) | _wgslsmith_mult_vec4_u32(reverseBits(select(_wgslsmith_mult_vec4_u32(vec4<u32>(global2.x, 41218u, 71757u, 4294967295u), vec4<u32>(62280u, u_input.a, 413u, u_input.a)), u_input.e, !vec4<bool>(false, false, var_1, var_1))), ~(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.e.x, u_input.e.x, 57123u, u_input.e.x), vec4<u32>(1u, u_input.e.x, 1u, 32135u), u_input.e) << (u_input.e % vec4<u32>(32u))));
    let var_4 = ~max(global2.wzy, global2.www);
    let var_5 = select(!select(vec2<bool>(var_1, any(vec4<bool>(true, false, false, var_1))), select(vec2<bool>(var_1, var_1), vec2<bool>(false, var_1), vec2<bool>(false, false)), !(!vec2<bool>(var_1, var_1))), !vec2<bool>(var_1, var_1), var_1);
    let x = u_input.a;
    s_output = func_7(Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -928f), _wgslsmith_div_f32(-1049f, -975f), _wgslsmith_f_op_f32(1000f - -1000f))), var_3.xw, func_6(Struct_2(vec3<f32>(783f, -1464f, 122f), select(global2.yy, var_3.zw, var_5.x), func_1(), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1685f, 135f)))), global2.yz, -2123f), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(func_3(vec2<u32>(4294967295u, var_4.x), vec4<i32>(var_0.x, var_0.x, 44726i, 0i))), _wgslsmith_f_op_f32(-2715f - 1716f)), vec2<f32>(_wgslsmith_f_op_f32(186f + 498f), _wgslsmith_f_op_f32(198f * 1000f)), func_6(func_4(vec3<i32>(16431i, -1i, -30823i), var_3, vec4<f32>(814f, 318f, 892f, -829f)), _wgslsmith_mod_vec2_u32(global2.zy, vec2<u32>(var_4.x, var_3.x)), _wgslsmith_f_op_f32(f32(-1f) * -526f)).a.yz))), var_0.x, true);
}

