struct Struct_1 {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec2<u32>,
    d: vec3<bool>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: vec4<u32>, arg_3: i32) -> f32 {
    var var_0 = Struct_2(arg_0.a, select(vec4<bool>(all(select(arg_0.b, arg_0.b, arg_0.b)), any(!vec2<bool>(false, arg_1.x)), arg_0.a.d.x && false, arg_0.b.x), !arg_0.b, vec4<bool>(false, arg_1.x && !arg_0.a.d.x, _wgslsmith_f_op_f32(f32(-1f) * -256f) <= _wgslsmith_f_op_f32(round(-391f)), false)));
    var var_1 = var_0.a;
    global0 = u_input.a;
    var_1 = var_0.a;
    let var_2 = Struct_2(Struct_1(min(_wgslsmith_mod_vec4_i32(~vec4<i32>(10196i, arg_0.a.a.x, 1i, u_input.c), vec4<i32>(u_input.b.x, 1i, u_input.d.x, arg_0.a.a.x)), vec4<i32>(arg_0.a.b.x, -3095i, -15336i, 29545i)), var_1.a.zw >> (_wgslsmith_div_vec2_u32(~vec2<u32>(0u, u_input.a.x), vec2<u32>(global0.x, 1u)) % vec2<u32>(32u)), select(vec2<u32>(~35796u, ~var_1.c.x), vec2<u32>(u_input.a.x, 58226u), var_0.b.yy), arg_1, false), select(select(select(var_0.b, vec4<bool>(var_1.d.x, false, true, false), select(var_0.b, var_0.b, true)), arg_0.b, arg_1.x), vec4<bool>(var_0.b.x, arg_0.a.e, var_0.b.x, !arg_1.x && var_1.d.x), true));
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-412f))))), -104f));
}

fn func_2() -> u32 {
    global0 = vec3<u32>(~u_input.a.x, 4103u, ~(~max(40729u, ~u_input.a.x)));
    let var_0 = _wgslsmith_f_op_f32(-627f - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-403f + -730f), -1635f, all(vec2<bool>(true, true)))))))));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_2(Struct_1(vec4<i32>(u_input.b.x, 2147483647i, 12790i, u_input.d.x), vec2<i32>(u_input.c, -86964i), global0.xx, vec3<bool>(false, true, false), true), vec4<bool>(true, true, false, false)), vec3<bool>(false, false, true), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), -2147483647i)) - var_0))))), 929f);
    let var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, -942f) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-706f, 518f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, 962f)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-937f, -644f) + vec2<f32>(var_1.x, -1377f))))));
    var_1 = var_2;
    return min(~(~max(firstLeadingBit(u_input.a.x), 64506u)), ~firstTrailingBit(~_wgslsmith_dot_vec4_u32(vec4<u32>(global0.x, u_input.a.x, 5213u, 24727u), vec4<u32>(global0.x, u_input.a.x, 51838u, global0.x))));
}

fn func_1(arg_0: bool) -> Struct_1 {
    let var_0 = vec3<u32>(_wgslsmith_dot_vec3_u32(u_input.a, ~u_input.a), ~u_input.a.x, func_2());
    var var_1 = (false & (false & arg_0)) & !(false || arg_0);
    let var_2 = true;
    let var_3 = Struct_1(select(select(firstLeadingBit(_wgslsmith_clamp_vec4_i32(vec4<i32>(9852i, u_input.b.x, -40261i, u_input.d.x), vec4<i32>(u_input.d.x, 1i, -2147483647i, u_input.c), vec4<i32>(u_input.b.x, -2504i, -21908i, u_input.d.x))), vec4<i32>(u_input.b.x, u_input.b.x, -2147483647i, -15712i) ^ vec4<i32>(24754i, 20191i, u_input.c, 0i), true), vec4<i32>(u_input.b.x, u_input.c, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, u_input.c, u_input.d.x), vec4<i32>(1i, -71908i, 0i, u_input.b.x)) ^ 1i, _wgslsmith_add_i32(max(u_input.b.x, 1i), 2147483647i ^ u_input.b.x)), select(true, true, var_2)), countOneBits(u_input.b.xx), u_input.a.yy, !(!(!vec3<bool>(arg_0, var_2, arg_0))), var_0.x == _wgslsmith_sub_u32(_wgslsmith_add_u32(1u, 5776u), _wgslsmith_clamp_u32(var_0.x | 4294967295u, min(0u, 62518u), 8835u << (1u % 32u))));
    var_1 = true;
    return var_3;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = u_input.a;
    var var_0 = func_1(any(vec4<bool>(true, true, true, true)));
    let var_1 = 0u;
    var var_2 = Struct_1(~var_0.a, -max(var_0.b, var_0.a.zy), u_input.a.xy, !var_0.d, false);
    var var_3 = 1f;
    var var_4 = Struct_2(func_1(var_2.e & !select(false, false, var_2.d.x)), select(select(!select(vec4<bool>(var_2.d.x, var_0.d.x, var_0.d.x, false), vec4<bool>(var_0.d.x, var_2.e, true, true), vec4<bool>(var_0.d.x, var_0.d.x, var_2.e, false)), vec4<bool>(func_1(var_2.d.x).e, !var_0.e, !var_0.e, any(var_2.d)), var_0.e), select(vec4<bool>(var_2.e | var_2.e, func_1(true).d.x, all(vec4<bool>(var_2.d.x, true, true, false)), 0u > global0.x), vec4<bool>(-2147483647i > u_input.c, true, var_0.e, all(vec4<bool>(var_0.e, true, true, false))), _wgslsmith_f_op_f32(-2317f * -883f) <= _wgslsmith_f_op_f32(ceil(-1000f))), !vec4<bool>(!var_0.e, false, true, select(true, false, true))));
    var_3 = _wgslsmith_f_op_f32(f32(-1f) * -1562f);
    let var_5 = max(var_4.a.c.x, countOneBits(4294967295u) & ~(min(var_2.c.x, u_input.a.x) & countOneBits(4294967295u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(sign(1037f)), _wgslsmith_f_op_f32(floor(3450f)), _wgslsmith_f_op_f32(-1155f + -430f))) - vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1766f - 1058f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, -1261f) + _wgslsmith_f_op_f32(f32(-1f) * -524f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_2(var_4.a, vec4<bool>(var_4.b.x, true, var_2.e, var_2.d.x)), var_4.a.d, vec4<u32>(0u, var_5, 95390u, 4294967295u), 0i)) * _wgslsmith_f_op_f32(min(-400f, 1858f))))));
}

