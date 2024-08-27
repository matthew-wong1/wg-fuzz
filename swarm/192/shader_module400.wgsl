struct Struct_1 {
    a: vec2<f32>,
    b: vec4<f32>,
    c: f32,
    d: vec3<bool>,
    e: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1) -> vec4<u32> {
    let var_0 = u_input.a.ywz ^ vec3<i32>(-_wgslsmith_dot_vec3_i32(-vec3<i32>(global0.e, 30980i, -2147483647i), vec3<i32>(u_input.a.x, -2147483647i, 39213i)), arg_2.e, countOneBits(_wgslsmith_clamp_i32(arg_2.e >> (0u % 32u), arg_2.e & -2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, global0.e), vec2<i32>(u_input.a.x, arg_0.e)))));
    let var_1 = Struct_1(arg_0.a, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -435f, -179f, -841f))))), _wgslsmith_div_vec4_f32(arg_0.b, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.c, 209f, -957f, arg_2.b.x)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(683f, 456f, -644f, global0.a.x) + vec4<f32>(979f, arg_2.c, 323f, arg_2.a.x)))), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1112f)), select(select(vec3<bool>(arg_2.d.x && true, true, global0.d.x & arg_2.d.x), vec3<bool>(global0.d.x, !arg_2.d.x, !global0.d.x), global0.d.x), !select(select(global0.d, vec3<bool>(true, true, false), vec3<bool>(false, true, arg_2.d.x)), !vec3<bool>(false, arg_0.d.x, false), vec3<bool>(arg_0.d.x, arg_0.d.x, global0.d.x)), arg_0.d), i32(-1i) * -max(arg_2.e, min(1i, -51419i)));
    global0 = arg_0;
    global0 = var_1;
    let var_2 = arg_0;
    return _wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(max(vec4<u32>(4294967295u << (arg_1 % 32u), 1u, ~arg_1, 40773u), _wgslsmith_add_vec4_u32(vec4<u32>(arg_1, 9658u, arg_1, 4294967295u), vec4<u32>(arg_1, 1u, arg_1, arg_1))), abs(~_wgslsmith_mod_vec4_u32(vec4<u32>(arg_1, 4294967295u, 4294967295u, 64128u), vec4<u32>(arg_1, arg_1, 1u, 0u)))), ~firstTrailingBit(vec4<u32>(1u, _wgslsmith_mult_u32(1u, arg_1), arg_1 ^ 20095u, 67511u)));
}

fn func_2(arg_0: vec2<i32>, arg_1: vec4<bool>, arg_2: vec3<f32>) -> i32 {
    global0 = Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.x, global0.b.x) + global0.a), vec4<f32>(-711f, global0.b.x, global0.b.x, 602f), arg_2.x, global0.d, -15562i);
    var var_0 = max(~_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 11170u, 4294967295u, 14024u), vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(0u, 58449u, 1u, 9343u)) >> (func_3(Struct_1(_wgslsmith_f_op_vec2_f32(-arg_2.zx), vec4<f32>(arg_2.x, -3171f, arg_2.x, global0.c), _wgslsmith_f_op_f32(f32(-1f) * -656f), select(global0.d, arg_1.wzz, true), arg_0.x), _wgslsmith_mod_u32(48435u, 32374u), Struct_1(_wgslsmith_div_vec2_f32(arg_2.xz, vec2<f32>(-558f, -264f)), _wgslsmith_f_op_vec4_f32(-global0.b), -562f, arg_1.wxz, arg_0.x)) % vec4<u32>(32u)), ~(~_wgslsmith_clamp_vec4_u32(max(vec4<u32>(1u, 4294967295u, 0u, 4294967295u), vec4<u32>(1u, 19331u, 21362u, 0u)), ~vec4<u32>(8962u, 4294967295u, 16030u, 4294967295u), ~vec4<u32>(46436u, 0u, 4294967295u, 1u))));
    var var_1 = select(u_input.a, max(u_input.a, countOneBits(-(~vec4<i32>(46806i, u_input.a.x, global0.e, global0.e)))), !arg_1);
    var var_2 = ~vec2<u32>(1u, firstLeadingBit((var_0.x >> (var_0.x % 32u)) & _wgslsmith_add_u32(var_0.x, 1u)));
    let var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(350f, 370f) + vec2<f32>(global0.b.x, -1733f)))))), vec4<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(arg_2.x)), _wgslsmith_f_op_f32(-arg_2.x))), _wgslsmith_f_op_f32(-arg_2.x), 1124f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(arg_2.x)))), select(select(global0.d, global0.d, select(global0.d, !vec3<bool>(true, arg_1.x, true), false)), select(arg_1.xyx, !select(arg_1.wxx, vec3<bool>(false, global0.d.x, false), arg_1.x), vec3<bool>(global0.d.x || arg_1.x, true, !global0.d.x)), vec3<bool>(true, true, true)), reverseBits(countOneBits(arg_0.x)));
    return ~(-57808i);
}

fn func_1(arg_0: u32) -> vec3<bool> {
    let var_0 = true;
    var var_1 = ~(~abs(~firstTrailingBit(vec3<u32>(4294967295u, arg_0, 0u))));
    let var_2 = select(vec3<bool>(!(1i >= -u_input.b), all(select(!global0.d, !vec3<bool>(global0.d.x, true, var_0), vec3<bool>(global0.d.x, var_0, var_0))), true), global0.d, !global0.d.x);
    let var_3 = _wgslsmith_mult_i32(min(~(~1i), func_2(~(u_input.a.yz << (vec2<u32>(arg_0, var_1.x) % vec2<u32>(32u))), vec4<bool>(true, 2448i > u_input.a.x, all(vec3<bool>(var_2.x, false, global0.d.x)), global0.d.x), _wgslsmith_f_op_vec3_f32(-global0.b.wxy))), u_input.a.x);
    global0 = Struct_1(global0.a, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(global0.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global0.b - vec4<f32>(global0.b.x, 1095f, global0.b.x, -615f))), global0.d.x)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0.b)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.b.x, global0.c, -230f, global0.a.x), _wgslsmith_f_op_vec4_f32(-global0.b), select(vec4<bool>(var_0, var_0, var_2.x, global0.d.x), vec4<bool>(global0.d.x, true, true, false), vec4<bool>(var_2.x, false, global0.d.x, var_2.x)))), vec4<bool>(!var_2.x, global0.e > global0.e, false, var_0 | global0.d.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1207f + 1325f)), global0.d, select(_wgslsmith_mult_i32(global0.e ^ -72483i, abs(2147483647i)), var_3, var_0) | ~(i32(-1i) * -1i));
    return !var_2;
}

fn func_4(arg_0: vec3<bool>) -> Struct_1 {
    global0 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(global0.b.x * _wgslsmith_f_op_f32(-1471f + 948f)), global0.c), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(124f, 2452f, -278f, -361f) - global0.b))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.c, global0.a.x, 1653f, 371f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.b.x, global0.c))), !vec3<bool>(func_1(_wgslsmith_sub_u32(4294967295u, 30057u)).x, func_1(~90912u).x, true), ~firstTrailingBit(reverseBits(1i)));
    let var_0 = Struct_1(vec2<f32>(-699f, global0.c), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(-global0.a.x), -1000f, 459f, _wgslsmith_div_f32(global0.a.x, -191f))))), global0.c, vec3<bool>(false, select(true, global0.b.x >= _wgslsmith_f_op_f32(select(-490f, global0.b.x, true)), true), false), -2147483647i);
    global0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.b.wy))))), _wgslsmith_f_op_vec4_f32(-var_0.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global0.c)) * -1440f) * -499f), !select(!(!vec3<bool>(false, true, global0.d.x)), var_0.d, global0.d.x), _wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.b, 0i, 2147483647i) >> (max(vec3<u32>(1u, 1u, 1u), vec3<u32>(12949u, 27603u, 43345u)) % vec3<u32>(32u)), u_input.a.zzx));
    global0 = Struct_1(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(max(global0.a, _wgslsmith_f_op_vec2_f32(sign(global0.a)))), vec2<f32>(-721f, _wgslsmith_f_op_f32(655f - global0.a.x)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_0.b * var_0.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x)) * _wgslsmith_div_f32(global0.b.x, _wgslsmith_f_op_f32(-1339f + -1122f))) - 486f), !global0.d, -max(1i, var_0.e));
    let var_1 = var_0;
    return Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1449f, -1297f)) - _wgslsmith_div_f32(global0.a.x, var_1.a.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(global0.c)), _wgslsmith_f_op_f32(f32(-1f) * -164f), !var_0.d.x)))), _wgslsmith_f_op_vec4_f32(var_1.b + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(656f, -1272f, var_1.a.x, global0.a.x) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.a.x, var_1.a.x, global0.b.x, -383f), vec4<f32>(608f, var_1.a.x, 1235f, var_1.a.x), global0.d.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global0.b * vec4<f32>(816f, -339f, global0.a.x, var_0.c)))))), _wgslsmith_f_op_f32(ceil(-124f)), func_1(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(select(vec4<u32>(4294967295u, 1u, 4294967295u, 0u), vec4<u32>(0u, 1u, 4294967295u, 4294967295u), vec4<bool>(false, global0.d.x, true, arg_0.x)), abs(vec4<u32>(44499u, 65797u, 51479u, 1u))), vec4<u32>(func_3(var_1, 0u, var_1).x, _wgslsmith_dot_vec2_u32(vec2<u32>(38551u, 34683u), vec2<u32>(80400u, 1u)), ~4294967295u, _wgslsmith_add_u32(74118u, 0u)))), _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(u_input.a.zyx, u_input.a.zwy), -(~(~var_0.e))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(970f - global0.b.x);
    let var_1 = firstTrailingBit(0u);
    var var_2 = _wgslsmith_f_op_vec3_f32(max(global0.b.wzx, global0.b.xwy));
    var var_3 = vec4<bool>(all(global0.d.zx), !global0.d.x, _wgslsmith_f_op_f32(1595f - -1000f) <= _wgslsmith_f_op_f32(-global0.a.x), select(select(true, !global0.d.x, global0.d.x && true), _wgslsmith_f_op_f32(exp2(var_2.x)) != 114f, any(!vec4<bool>(global0.d.x, global0.d.x, false, true))));
    let var_4 = 1000f;
    var var_5 = func_4(func_1(4294967295u));
    let var_6 = func_4(!var_3.yyz);
    let var_7 = var_1;
    var var_8 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_5.b.x, global0.b.x, -355f, 206f)))), var_6.b, select(select(select(vec4<bool>(true, false, var_3.x, var_5.d.x), vec4<bool>(var_5.d.x, false, false, false), vec4<bool>(var_6.d.x, true, true, true)), select(vec4<bool>(true, var_5.d.x, var_5.d.x, true), vec4<bool>(false, true, false, global0.d.x), vec4<bool>(false, var_5.d.x, true, false)), var_6.d.x), vec4<bool>(var_3.x, all(vec3<bool>(var_6.d.x, var_6.d.x, var_3.x)), global0.d.x, !var_5.d.x), false))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_6.b)));
    let x = u_input.a;
    s_output = StorageBuffer(-1i, var_6.e, ~_wgslsmith_add_vec2_i32(u_input.a.ww, u_input.a.xw) >> (vec2<u32>(abs(~var_1), var_7 | 8394u) % vec2<u32>(32u)), u_input.a.xy);
}

