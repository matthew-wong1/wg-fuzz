struct Struct_1 {
    a: bool,
    b: vec3<i32>,
    c: vec2<u32>,
    d: f32,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<f32>,
    c: vec2<u32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 22> = array<vec3<f32>, 22>(vec3<f32>(-506f, -905f, -1197f), vec3<f32>(-114f, -733f, 150f), vec3<f32>(1345f, -643f, -283f), vec3<f32>(-934f, 1403f, 363f), vec3<f32>(1397f, -773f, -856f), vec3<f32>(1000f, -1796f, -647f), vec3<f32>(-1147f, 639f, -1367f), vec3<f32>(2785f, 392f, -1213f), vec3<f32>(456f, 672f, -243f), vec3<f32>(220f, -297f, -607f), vec3<f32>(-1261f, -1959f, 1737f), vec3<f32>(1000f, -1040f, 262f), vec3<f32>(2616f, -1481f, -310f), vec3<f32>(-792f, -1000f, 1565f), vec3<f32>(1687f, 366f, -1737f), vec3<f32>(295f, 250f, 203f), vec3<f32>(-352f, -917f, -439f), vec3<f32>(-914f, -1014f, 665f), vec3<f32>(2151f, 590f, 1000f), vec3<f32>(-1000f, -529f, -1866f), vec3<f32>(752f, -674f, -301f), vec3<f32>(723f, -399f, -1346f));

var<private> global1: vec3<bool> = vec3<bool>(false, true, false);

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: bool, arg_1: u32) -> vec2<u32> {
    var var_0 = Struct_1(any(!select(select(global1.yy, vec2<bool>(arg_0, false), global1.zx), vec2<bool>(false, false), vec2<bool>(global1.x, arg_0))), vec3<i32>(-1i) * -vec3<i32>(u_input.d.x, -19053i, u_input.d.x), vec2<u32>(1u << (_wgslsmith_div_u32(74945u << (arg_1 % 32u), u_input.c) % 32u), 1u | (countOneBits(arg_1) | _wgslsmith_dot_vec3_u32(u_input.b, u_input.b))), 824f, abs(vec2<u32>(u_input.b.x, ~50453u)));
    let var_1 = Struct_1(40057u > arg_1, vec3<i32>(2147483647i, 35581i, 2147483647i), _wgslsmith_sub_vec2_u32(vec2<u32>(arg_1, u_input.b.x), var_0.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1000f, var_0.d, true)) + _wgslsmith_f_op_f32(-var_0.d)) - var_0.d)), u_input.b.xy);
    var var_2 = var_0.b;
    var var_3 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-global0[_wgslsmith_index_u32(~u_input.c, 22u)])));
    let var_4 = Struct_1(~min(-1781i, -var_0.b.x) < -1757i, countOneBits(firstTrailingBit(firstLeadingBit(vec3<i32>(-3881i, 41609i, -15984i)))), var_0.e, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.d * var_3.x) - _wgslsmith_f_op_f32(f32(-1f) * -785f)), var_0.d) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1686f * _wgslsmith_f_op_f32(f32(-1f) * -121f))))), vec2<u32>(4294967295u, arg_1));
    return vec2<u32>(~_wgslsmith_clamp_u32(0u, _wgslsmith_dot_vec4_u32(~vec4<u32>(1u, arg_1, var_4.e.x, var_1.c.x), vec4<u32>(4294967295u, 725u, 26060u, var_4.e.x)), 1u), arg_1);
}

fn func_2(arg_0: Struct_1, arg_1: u32) -> bool {
    var var_0 = arg_0;
    let var_1 = Struct_1(true, var_0.b, _wgslsmith_sub_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(arg_1, 1u), func_3(true, 28141u)), vec2<u32>(~76257u, 4294967295u)) ^ var_0.c, -965f, (~firstLeadingBit(vec2<u32>(arg_0.e.x, arg_1)) | vec2<u32>(u_input.e & 0u, arg_1)) | vec2<u32>(_wgslsmith_mod_u32(13449u, ~17477u), 29681u));
    var var_2 = !select(vec3<bool>(all(!global1.yy), true, true), select(select(select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), true), select(vec3<bool>(var_0.a, false, var_0.a), vec3<bool>(var_1.a, arg_0.a, var_1.a), var_1.a), any(vec2<bool>(false, var_1.a))), select(select(vec3<bool>(false, var_0.a, false), vec3<bool>(true, var_1.a, var_0.a), true), vec3<bool>(var_0.a, global1.x, arg_0.a), arg_0.a), true || !arg_0.a), select(select(select(vec3<bool>(false, true, global1.x), vec3<bool>(false, global1.x, arg_0.a), var_0.a), select(vec3<bool>(false, var_1.a, true), vec3<bool>(false, true, var_0.a), false), true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true)), all(vec4<bool>(false, false, true, global1.x))));
    var var_3 = ~((_wgslsmith_mod_u32(28060u, var_1.e.x) | ~u_input.e) << (4294967295u % 32u));
    global1 = select(!(!select(select(vec3<bool>(true, false, var_1.a), vec3<bool>(false, var_0.a, arg_0.a), vec3<bool>(var_2.x, true, var_2.x)), select(vec3<bool>(var_2.x, false, false), vec3<bool>(false, true, var_2.x), vec3<bool>(true, var_2.x, false)), vec3<bool>(global1.x, true, true))), vec3<bool>(true, arg_0.a, global1.x), !var_2.x);
    return true;
}

fn func_1(arg_0: vec4<i32>, arg_1: i32, arg_2: vec4<f32>, arg_3: vec4<u32>) -> i32 {
    let var_0 = ~2421i;
    global1 = select(select(!vec3<bool>(global1.x, -1257f >= arg_2.x, !global1.x), !select(vec3<bool>(true, true, global1.x), vec3<bool>(global1.x, false, global1.x), vec3<bool>(global1.x, false, false)), 25631u >= _wgslsmith_sub_u32(arg_3.x, u_input.c | u_input.e)), !select(vec3<bool>(arg_0.x > 55216i, 24754i < arg_0.x, false != global1.x), vec3<bool>(func_2(Struct_1(false, vec3<i32>(arg_1, var_0, arg_0.x), vec2<u32>(86897u, u_input.b.x), arg_2.x, vec2<u32>(51973u, 39251u)), arg_3.x), true, all(vec4<bool>(global1.x, global1.x, global1.x, false))), select(vec3<bool>(global1.x, global1.x, false), select(vec3<bool>(false, global1.x, global1.x), vec3<bool>(global1.x, global1.x, false), vec3<bool>(true, global1.x, false)), arg_2.x > arg_2.x)), _wgslsmith_div_f32(arg_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_2.x)) - _wgslsmith_f_op_f32(arg_2.x - -203f))) != _wgslsmith_f_op_f32(trunc(arg_2.x)));
    let var_1 = arg_0.zzw >> (min(vec3<u32>(~arg_3.x, abs(firstLeadingBit(4294967295u)), arg_3.x), u_input.b) % vec3<u32>(32u));
    return arg_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b;
    let var_1 = true;
    var var_2 = !vec4<bool>(true, select(true, false, ~u_input.a != (u_input.d.x ^ u_input.d.x)), global1.x, any(global1.zx));
    let var_3 = (vec2<u32>(u_input.e, var_0.x) >> ((_wgslsmith_div_vec2_u32(vec2<u32>(0u, 16294u), ~vec2<u32>(u_input.e, 4294967295u)) << (~(vec2<u32>(var_0.x, u_input.e) >> (vec2<u32>(0u, u_input.b.x) % vec2<u32>(32u))) % vec2<u32>(32u))) % vec2<u32>(32u))) << ((var_0.yz << (vec2<u32>(var_0.x, ~1804u) % vec2<u32>(32u))) % vec2<u32>(32u));
    var var_4 = Struct_1(!(!all(global1.xy)) && var_1, _wgslsmith_div_vec3_i32(_wgslsmith_mult_vec3_i32((vec3<i32>(u_input.a, u_input.a, u_input.d.x) ^ vec3<i32>(-1i, u_input.a, 2147483647i)) << (countOneBits(vec3<u32>(u_input.e, var_0.x, 0u)) % vec3<u32>(32u)), _wgslsmith_div_vec3_i32(vec3<i32>(-41480i, 2147483647i, -1i) >> (u_input.b % vec3<u32>(32u)), -vec3<i32>(-15064i, u_input.d.x, u_input.d.x))), vec3<i32>(-u_input.d.x, func_1(vec4<i32>(1i, u_input.a, u_input.a, -16180i), countOneBits(-1i), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1235f, 1113f, -1773f, -1677f)), _wgslsmith_mult_vec4_u32(vec4<u32>(var_3.x, 0u, u_input.c, 4294967295u), vec4<u32>(4294967295u, var_0.x, 7375u, var_0.x))), _wgslsmith_mod_i32(_wgslsmith_clamp_i32(2147483647i, u_input.d.x, -2147483647i), -32601i))), vec2<u32>(86257u, ~var_3.x) ^ ~vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1545u, 4294967295u, var_0.x, 28341u), vec4<u32>(4294967295u, 64816u, 1u, 53920u)), var_0.x), _wgslsmith_f_op_f32(f32(-1f) * -341f), vec2<u32>(min(_wgslsmith_add_u32(1u, u_input.e), var_0.x & 1u), ~(~u_input.e)) & vec2<u32>(var_3.x << (31768u % 32u), ~(var_3.x | 4294967295u)));
    var var_5 = ~_wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.e), var_0.yz), ~u_input.c, 1u, var_0.x ^ var_3.x) << (_wgslsmith_div_vec4_u32(vec4<u32>(38376u, 4294967295u, 18634u, var_4.c.x), vec4<u32>(u_input.e, 17115u, 4294967295u, u_input.e)) % vec4<u32>(32u)), (select(vec4<u32>(var_0.x, 4294967295u, var_3.x, var_4.c.x), vec4<u32>(4294967295u, var_4.e.x, 4294967295u, var_4.e.x), var_2.x) << (vec4<u32>(var_4.e.x, var_0.x, u_input.e, u_input.b.x) % vec4<u32>(32u))) | _wgslsmith_add_vec4_u32(vec4<u32>(var_3.x, var_4.c.x, 0u, u_input.b.x) ^ vec4<u32>(1u, var_0.x, u_input.c, 20661u), vec4<u32>(4294967295u, 34979u, var_0.x, var_0.x)), vec4<u32>(1u, countOneBits(~0u), ~0u, 0u));
    let var_6 = vec3<i32>(0i, 0i, u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(_wgslsmith_div_vec3_i32(var_4.b, -var_4.b)), vec2<f32>(var_4.d, var_4.d), vec2<u32>(~reverseBits(var_4.c.x << (0u % 32u)), 0u), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(var_4.d)), _wgslsmith_f_op_f32(step(725f, var_4.d))), var_4.d, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(var_4.d)), _wgslsmith_f_op_f32(trunc(-1000f)))))));
}

