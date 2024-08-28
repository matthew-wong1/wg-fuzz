struct Struct_1 {
    a: vec2<u32>,
    b: f32,
    c: f32,
    d: vec2<bool>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: vec3<i32>,
    e: vec3<f32>,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: vec2<f32>,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 28> = array<u32, 28>(0u, 0u, 4294967295u, 4294967295u, 13149u, 4294967295u, 0u, 38919u, 25927u, 0u, 1u, 76937u, 0u, 24638u, 1u, 0u, 4294967295u, 0u, 4294967295u, 1u, 23013u, 24355u, 21865u, 1471u, 39243u, 4294967295u, 0u, 1u);

var<private> global1: vec2<i32>;

var<private> global2: Struct_3 = Struct_3(vec2<u32>(0u, 0u));

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_1) -> bool {
    var var_0 = arg_0;
    let var_1 = Struct_2(Struct_1(arg_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1542f)), _wgslsmith_div_f32(-309f, -1167f), var_0.d, u_input.b.wxy), arg_0, var_0.b, u_input.b.wzz, vec3<f32>(arg_0.c, _wgslsmith_f_op_f32(round(var_0.b)), _wgslsmith_f_op_f32(arg_0.b + -456f)));
    let var_2 = var_0.a;
    var var_3 = firstTrailingBit(-2147483647i);
    var_3 = -2147483647i;
    return select(!var_0.d.x, any(vec2<bool>(false, arg_0.d.x)), select(!all(vec2<bool>(true, arg_0.d.x)), true, var_0.a.x <= 4997u) | (true & !all(vec3<bool>(arg_0.d.x, arg_0.d.x, false))));
}

fn func_2(arg_0: f32, arg_1: i32, arg_2: u32) -> Struct_3 {
    var var_0 = arg_0;
    let var_1 = select(vec4<bool>(_wgslsmith_f_op_f32(select(-1409f, arg_0, func_3(Struct_1(vec2<u32>(34187u, global2.a.x), arg_0, 802f, vec2<bool>(false, false), vec3<i32>(arg_1, arg_1, global1.x))))) < 306f, func_3(Struct_1(vec2<u32>(1u, arg_2), -428f, _wgslsmith_f_op_f32(f32(-1f) * -619f), vec2<bool>(false, true), vec3<i32>(2147483647i, 1i, -26000i))), false, _wgslsmith_sub_u32(4294967295u, firstTrailingBit(arg_2)) <= _wgslsmith_sub_u32(~105648u, 1u)), select(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), true), !select(select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true), true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true)), all(vec3<bool>(all(vec3<bool>(false, false, false)), true, true))), !vec4<bool>(func_3(Struct_1(vec2<u32>(global2.a.x, arg_2), -285f, arg_0, vec2<bool>(true, true), u_input.b.wxw)) && true, false, !any(vec4<bool>(true, true, false, false)), true));
    let var_2 = Struct_3(firstTrailingBit(countOneBits(vec2<u32>(countOneBits(28898u), ~global0[_wgslsmith_index_u32(global2.a.x, 28u)]))));
    var var_3 = Struct_2(Struct_1(min(~(~vec2<u32>(arg_2, 126696u)), var_2.a), -2905f, 139f, select(select(!vec2<bool>(var_1.x, true), vec2<bool>(true, true), var_1.yw), !select(var_1.zz, vec2<bool>(var_1.x, false), false), select(vec2<bool>(false, var_1.x), vec2<bool>(false, false), !vec2<bool>(var_1.x, false))), ~_wgslsmith_sub_vec3_i32(u_input.b.zwz, _wgslsmith_clamp_vec3_i32(u_input.b.zxx, u_input.b.yzy, u_input.b.xzy))), Struct_1(global2.a, _wgslsmith_f_op_f32(abs(arg_0)), 727f, !(!vec2<bool>(var_1.x, var_1.x)), vec3<i32>(0i, -4373i, 2147483647i)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_0))), -1000f)), u_input.b.xwz, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_0 + 744f), _wgslsmith_f_op_f32(348f + -648f))) - -281f), -179f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_0, _wgslsmith_f_op_f32(select(arg_0, arg_0, var_1.x)), !var_1.x)) * -369f)));
    var var_4 = vec4<bool>((!(true || var_3.a.d.x) && all(var_1)) | ((~global1.x >= _wgslsmith_clamp_i32(-1i, arg_1, arg_1)) || true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(-var_3.e.x))) >= _wgslsmith_f_op_f32(f32(-1f) * -420f), -856f > _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1723f, arg_0)) - arg_0))), true);
    return var_2;
}

fn func_1(arg_0: u32) -> Struct_1 {
    let var_0 = func_2(-222f, _wgslsmith_mult_i32(i32(-1i) * -select(-6579i, global1.x, true), -global1.x), ~abs(arg_0));
    var var_1 = false;
    let var_2 = all(vec3<bool>(true, _wgslsmith_sub_u32(global0[_wgslsmith_index_u32(1u, 28u)] & arg_0, firstLeadingBit(39703u)) <= reverseBits(1u), true));
    global2 = Struct_3(vec2<u32>(~1u, global2.a.x));
    return Struct_1(var_0.a, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(-570f)))), 1000f, vec2<bool>((func_3(Struct_1(vec2<u32>(global0[_wgslsmith_index_u32(var_0.a.x, 28u)], 20011u), 593f, -1729f, vec2<bool>(var_2, var_2), u_input.b.ywz)) && true) | all(vec4<bool>(var_2, true, false, false)), true), vec3<i32>(2147483647i, u_input.a >> ((~4228u ^ min(1u, arg_0)) % 32u), _wgslsmith_mod_i32(0i, _wgslsmith_div_i32(abs(global1.x), 2147483647i))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(38427u);
    global1 = _wgslsmith_sub_vec2_i32(u_input.b.wz, vec2<i32>(_wgslsmith_div_i32(~(-28030i), abs(i32(-1i) * -27976i)), 1i | firstLeadingBit(_wgslsmith_sub_i32(global1.x, global1.x))));
    let var_1 = func_2(174f, 12095i, global0[_wgslsmith_index_u32(~(~_wgslsmith_add_u32(abs(1u), var_0.a.x)), 28u)]);
    let var_2 = Struct_2(Struct_1(vec2<u32>(4294967295u, ~reverseBits(97864u)), var_0.b, var_0.c, !(!var_0.d), vec3<i32>(_wgslsmith_div_i32(firstLeadingBit(-1i), u_input.a & 11445i), -1i, _wgslsmith_sub_i32(countOneBits(u_input.a), 13981i))), Struct_1(vec2<u32>(var_1.a.x, _wgslsmith_div_u32(1u, _wgslsmith_mult_u32(51974u, 1901u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -159f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-618f))), var_0.d, countOneBits(u_input.b.zxx ^ (var_0.e | var_0.e))), _wgslsmith_div_f32(var_0.b, _wgslsmith_f_op_f32(sign(-988f))), u_input.b.yyx, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2149f, 2702f, var_0.b)) - vec3<f32>(var_0.c, var_0.b, var_0.b)))), vec3<f32>(_wgslsmith_f_op_f32(-var_0.b), var_0.b, -124f))));
    var var_3 = var_2.b.d;
    let var_4 = global2.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(func_1(~var_2.a.a.x << (~1u % 32u)).b, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(183f, 653f, true))), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-762f, var_2.a.b)))) * vec2<f32>(-692f, _wgslsmith_f_op_f32(select(var_2.b.c, var_0.b, var_2.a.d.x)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(360f, var_2.b.b) - var_2.e.yz)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(var_2.e.xy, var_2.e.zy, var_0.d)) - _wgslsmith_f_op_vec2_f32(-var_2.e.zx)))), _wgslsmith_dot_vec4_i32(vec4<i32>(global1.x, _wgslsmith_dot_vec3_i32(u_input.b.zzw | var_2.d, ~vec3<i32>(2147483647i, global1.x, -2147483647i)), _wgslsmith_dot_vec4_i32(u_input.b, vec4<i32>(var_2.d.x, u_input.b.x, global1.x, -1i) << (vec4<u32>(43183u, global2.a.x, 23522u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_1.a.x, 28u)], 28u)]) % vec4<u32>(32u))), select(_wgslsmith_clamp_i32(20882i, 60153i, -47909i), _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 36378i, -1i), var_0.e), true)), firstTrailingBit(reverseBits(vec4<i32>(24177i, 46823i, u_input.a, 1i)))), select(1u, ~96626u >> ((~4294967295u << (0u % 32u)) % 32u), all(select(var_0.d, vec2<bool>(true, false), !var_0.d))));
}

