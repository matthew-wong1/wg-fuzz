struct Struct_1 {
    a: vec3<u32>,
    b: i32,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1) -> vec4<u32> {
    let var_0 = select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, arg_0.c.x < -arg_0.b), !(!select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), true)), true), all(!select(select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false), false), vec4<bool>(false, true, false, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, true)))));
    var var_1 = _wgslsmith_f_op_f32(trunc(-138f));
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-144f)) * 825f) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -484f))))));
    var var_2 = -11214i;
    var_2 = arg_0.b >> (54131u % 32u);
    return ~_wgslsmith_add_vec4_u32(max(_wgslsmith_clamp_vec4_u32(abs(vec4<u32>(global0.x, global0.x, 27928u, 0u)), ~vec4<u32>(arg_0.a.x, global0.x, 25277u, 0u), vec4<u32>(1u, global0.x, u_input.b.x, global0.x)), _wgslsmith_div_vec4_u32(~vec4<u32>(arg_0.a.x, 42801u, 1u, arg_0.a.x), min(vec4<u32>(u_input.b.x, 56640u, global0.x, 1u), vec4<u32>(1u, 1u, arg_0.a.x, u_input.b.x)))), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.b.x, 10650u, 82141u >> (global0.x % 32u), ~4294967295u), _wgslsmith_clamp_vec4_u32(vec4<u32>(0u, global0.x, 0u, 0u), abs(vec4<u32>(global0.x, 10667u, global0.x, arg_0.a.x)), vec4<u32>(23738u, arg_0.a.x, 1u, arg_0.a.x) << (vec4<u32>(arg_0.a.x, arg_0.a.x, global0.x, 19747u) % vec4<u32>(32u)))));
}

fn func_2(arg_0: i32, arg_1: vec3<u32>, arg_2: Struct_1) -> f32 {
    global0 = vec4<u32>(1u, 4294967295u, abs(36611u), _wgslsmith_div_u32(~arg_2.a.x, ~(~arg_1.x)));
    var var_0 = Struct_1(reverseBits(countOneBits(global0.yyy)), 2147483647i, arg_2.c);
    global0 = _wgslsmith_mod_vec4_u32(func_3(Struct_1(~(var_0.a >> (vec3<u32>(1u, 1u, u_input.b.x) % vec3<u32>(32u))), min(_wgslsmith_sub_i32(1i, u_input.c.x), _wgslsmith_dot_vec4_i32(arg_2.c, arg_2.c)), max(-arg_2.c, vec4<i32>(u_input.d, -23445i, var_0.c.x, -27659i)))), vec4<u32>(~1u, _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_2.a.x, 0u), ~vec2<u32>(arg_1.x, u_input.b.x)), var_0.a.x), var_0.a.x, ~max(~0u, ~arg_1.x)));
    var_0 = Struct_1(_wgslsmith_sub_vec3_u32(vec3<u32>(24311u, global0.x, ~arg_1.x | 1u), vec3<u32>(select(_wgslsmith_mod_u32(0u, global0.x), _wgslsmith_clamp_u32(0u, 0u, 23402u), true), firstLeadingBit(123569u), arg_2.a.x)), u_input.a, arg_2.c);
    var_0 = arg_2;
    return 435f;
}

fn func_1(arg_0: Struct_1) -> f32 {
    let var_0 = ~u_input.b;
    var var_1 = vec4<bool>(true, false, true, select(all(vec3<bool>(true, true, true)), true, !select(true, true, all(vec4<bool>(false, true, true, false)))));
    let var_2 = !select(var_1.wz, vec2<bool>(true, !var_1.x), true);
    var var_3 = global0.x;
    var var_4 = Struct_1(arg_0.a, abs(-19576i), abs((arg_0.c << (vec4<u32>(29938u, 46292u, 91756u, arg_0.a.x) % vec4<u32>(32u))) << (vec4<u32>(~var_0.x, arg_0.a.x, _wgslsmith_dot_vec3_u32(global0.xyw, arg_0.a), u_input.b.x) % vec4<u32>(32u))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(var_4.b, vec3<u32>(arg_0.a.x, global0.x, var_4.a.x), Struct_1(var_4.a, u_input.c.x, vec4<i32>(-2147483647i, arg_0.c.x, arg_0.c.x, 0i)))) * -1195f)) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(-760f, -1695f)), _wgslsmith_f_op_f32(step(448f, 1000f))))))));
}

fn func_4(arg_0: bool, arg_1: vec2<f32>, arg_2: vec4<bool>, arg_3: vec4<f32>) -> f32 {
    let var_0 = Struct_1(global0.ywx, u_input.c.x, countOneBits(~abs(vec4<i32>(u_input.c.x, -2147483647i, u_input.c.x, u_input.a))) | ~select(vec4<i32>(u_input.a, 1i, u_input.d, u_input.c.x), vec4<i32>(-55644i, u_input.d, 6617i, u_input.a), all(arg_2.ww)));
    global0 = ~(~_wgslsmith_sub_vec4_u32(~vec4<u32>(57538u, 6559u, global0.x, u_input.b.x), func_3(Struct_1(var_0.a, -3627i, var_0.c)) | select(vec4<u32>(var_0.a.x, 1931u, 9287u, var_0.a.x), vec4<u32>(1u, 4294967295u, u_input.b.x, var_0.a.x), vec4<bool>(arg_2.x, arg_2.x, arg_2.x, false))));
    let var_1 = -588f;
    var var_2 = arg_2.xzz;
    let var_3 = vec3<i32>(-36019i, _wgslsmith_mod_i32(u_input.c.x, abs(i32(-1i) * -46435i)) >> (52755u % 32u), u_input.c.x);
    return -180f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!(!vec3<bool>(u_input.c.x == 2147483647i, all(vec4<bool>(false, true, false, false)), true)));
    let var_1 = ~global0.x;
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(func_4(!var_0.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(202f, -834f), vec2<f32>(-942f, 1257f)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(269f, -360f)))), vec4<bool>(global0.x == 33774u, !var_0.x, false, false), vec4<f32>(593f, _wgslsmith_f_op_f32(1161f + _wgslsmith_f_op_f32(abs(1175f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_1(vec3<u32>(2599u, 8821u, 41844u), u_input.a, vec4<i32>(u_input.a, 9112i, u_input.c.x, 1i))))), -187f))), 427f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-552f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1024f, -846f)))) - -322f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-942f))));
    let var_3 = vec4<u32>(1u, 4294967295u, ~45657u, ~(global0.x ^ reverseBits(global0.x))) << (~(~(~vec4<u32>(global0.x, 4294967295u, var_1, 48314u) ^ vec4<u32>(95897u, var_1, u_input.b.x, 1u))) % vec4<u32>(32u));
    var_0 = select(vec3<bool>(true, true, !any(var_0.yz)), !select(vec3<bool>(true, all(vec4<bool>(var_0.x, false, var_0.x, true)), any(var_0.xy)), vec3<bool>(var_0.x, u_input.b.x < 83498u, var_0.x), !(!vec3<bool>(true, true, var_0.x))), var_0.x);
    var var_4 = ~0i;
    let var_5 = -1i;
    let x = u_input.a;
    s_output = StorageBuffer(2147483647i, -firstLeadingBit(2147483647i), _wgslsmith_f_op_f32(func_2(-(25667i << (global0.x % 32u)) & firstTrailingBit(_wgslsmith_div_i32(u_input.c.x, u_input.d)), vec3<u32>(~firstTrailingBit(0u), ~(~31076u), 78738u), Struct_1(max(global0.zxx, func_3(Struct_1(var_3.yww, var_5, vec4<i32>(u_input.c.x, u_input.a, u_input.a, var_5))).yyy), ~(-79175i), ~firstLeadingBit(vec4<i32>(u_input.d, u_input.d, u_input.a, -2147483647i))))), 0u);
}

