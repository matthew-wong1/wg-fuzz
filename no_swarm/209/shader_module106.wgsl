struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec2<f32>,
    c: f32,
    d: Struct_1,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 35057u;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec2<i32>, arg_2: Struct_2) -> vec4<f32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(-arg_2.b);
    return _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(1f)), var_0.x, arg_2.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1096f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1518f * arg_2.c) * _wgslsmith_f_op_f32(var_0.x + arg_2.b.x)))), vec4<f32>(-945f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0.x)) * var_0.x)), var_0.x, -1075f));
}

fn func_2(arg_0: bool, arg_1: vec3<i32>) -> bool {
    var var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(706f, -837f, 122f, -1000f)), vec4<f32>(-568f, -1678f, -446f, 465f)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-683f, -1174f, -1602f, 358f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(749f, -660f, 648f, -691f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(func_3(reverseBits(vec3<i32>(arg_1.x, -32999i, -19047i)), arg_1.xx, Struct_2(vec4<bool>(true, arg_0, false, false), vec2<f32>(1156f, -290f), -250f, Struct_1(vec3<f32>(-203f, 344f, 677f)), u_input.c.x))), vec4<f32>(651f, _wgslsmith_f_op_f32(-1000f + 296f), -179f, _wgslsmith_f_op_f32(f32(-1f) * -1040f))))));
    return true;
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: Struct_2, arg_3: bool) -> vec4<bool> {
    let var_0 = arg_2.d;
    let var_1 = false;
    let var_2 = arg_2;
    global0 = ~_wgslsmith_clamp_u32(var_2.e, 4294967295u, arg_2.e ^ _wgslsmith_div_u32(_wgslsmith_clamp_u32(1u, 42215u, 49693u), ~u_input.c.x));
    global0 = firstLeadingBit(var_2.e);
    return select(vec4<bool>(!arg_3, arg_2.a.x, !(!any(vec3<bool>(var_1, false, true))), var_1), vec4<bool>((_wgslsmith_f_op_f32(-571f - 1639f) != _wgslsmith_f_op_f32(select(-1808f, -1717f, true))) && arg_3, !var_2.a.x, all(arg_2.a.zzz), all(vec4<bool>(true, true, var_2.a.x && var_1, func_2(false, vec3<i32>(u_input.a, u_input.b, u_input.a))))), var_2.a.x);
}

fn func_1(arg_0: f32, arg_1: vec4<f32>) -> vec4<bool> {
    global0 = u_input.c.x;
    global0 = u_input.c.x;
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-123f * 250f)), arg_0) + arg_1.wxz));
    let var_1 = func_4(Struct_1(_wgslsmith_f_op_vec3_f32(-var_0.a)), -37000i, Struct_2(vec4<bool>(true, true, _wgslsmith_f_op_f32(-var_0.a.x) < _wgslsmith_f_op_f32(-var_0.a.x), true), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, 1131f)) - vec2<f32>(arg_0, 771f)), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(702f, arg_1.x), vec2<f32>(1947f, 297f), false)), vec2<f32>(arg_1.x, 597f)))), _wgslsmith_f_op_f32(arg_1.x + _wgslsmith_div_f32(1f, arg_1.x)), var_0, ~(~u_input.c.x)), any(select(vec3<bool>(true, func_2(false, vec3<i32>(u_input.b, 1i, u_input.a)), true), vec3<bool>(all(vec4<bool>(false, true, true, true)), true, func_2(false, vec3<i32>(-1165i, u_input.a, 2147483647i))), false)));
    global0 = ~select(~u_input.c.x, 0u | firstTrailingBit(71575u), var_1.x);
    return vec4<bool>(var_1.x != var_1.x, select(true, true, true), true, !var_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -951f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(1380f, -670f)))))) * -682f)));
    let var_1 = Struct_2(!(!func_1(_wgslsmith_f_op_f32(abs(var_0)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(516f, -585f, var_0, var_0)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1058f), _wgslsmith_f_op_f32(sign(var_0))))), _wgslsmith_f_op_f32(var_0 * _wgslsmith_f_op_f32(trunc(var_0))), Struct_1(vec3<f32>(-2072f, var_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0)) - _wgslsmith_f_op_f32(abs(var_0))))), ~min(0u >> ((u_input.c.x | 1u) % 32u), 3820u));
    var var_2 = var_1;
    var var_3 = firstTrailingBit(min(~(abs(34250u) & var_2.e), u_input.c.x));
    let var_4 = min(_wgslsmith_clamp_u32(u_input.c.x, ~28239u, _wgslsmith_mult_u32(~var_2.e, ~var_1.e | u_input.c.x)), var_1.e);
    let var_5 = (vec3<u32>(_wgslsmith_mod_u32(u_input.c.x << (var_1.e % 32u), 18189u), ~_wgslsmith_mod_u32(var_2.e, 3753u), _wgslsmith_mod_u32(var_4 >> (u_input.c.x % 32u), max(0u, var_1.e))) >> (_wgslsmith_sub_vec3_u32(~(~vec3<u32>(var_4, var_2.e, 1u)), reverseBits(_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, u_input.c.x, 4294967295u), vec3<u32>(var_1.e, 15574u, u_input.c.x), vec3<u32>(u_input.c.x, var_2.e, var_2.e)))) % vec3<u32>(32u))) & ~(~min(abs(vec3<u32>(4294967295u, 1u, 12734u)), ~vec3<u32>(var_2.e, 62716u, 1u)));
    let var_6 = ~_wgslsmith_clamp_u32(firstLeadingBit(countOneBits(var_4)), u_input.c.x, 4294967295u) | firstLeadingBit(~var_5.x);
    var_2 = var_1;
    global0 = var_4;
    let x = u_input.a;
    s_output = StorageBuffer(abs(u_input.a), -min(-1956i, ~(-2147483647i)), ~vec2<i32>(countOneBits(u_input.b & 0i), abs(u_input.b)));
}

