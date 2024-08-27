struct Struct_1 {
    a: vec2<bool>,
    b: u32,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(true, false);

var<private> global1: u32;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_2(arg_0: vec2<i32>, arg_1: u32, arg_2: bool, arg_3: Struct_1) -> i32 {
    global1 = 0u;
    var var_0 = abs(_wgslsmith_mult_vec3_u32(vec3<u32>(0u, 28225u, u_input.b) >> (~vec3<u32>(0u, 16798u, arg_1) % vec3<u32>(32u)), vec3<u32>(61713u, 1u, u_input.b))) | abs(vec3<u32>(arg_3.b, firstTrailingBit(arg_1), 29249u));
    var var_1 = Struct_1(arg_3.c.zx, 0u, select(!select(arg_3.c, !vec3<bool>(true, arg_3.c.x, arg_3.c.x), vec3<bool>(arg_3.c.x, arg_2, arg_3.a.x)), !vec3<bool>(any(arg_3.c), global0.x, global0.x | arg_2), !arg_3.c));
    var var_2 = 53997i | u_input.a;
    var var_3 = arg_3;
    return _wgslsmith_mod_i32(~(-2147483647i), -46142i);
}

fn func_3(arg_0: vec3<bool>) -> vec3<i32> {
    global1 = _wgslsmith_div_u32(~(~52615u), _wgslsmith_sub_u32(min(98627u, 0u), select(7950u, ~(~32002u), global0.x)));
    global0 = select(!arg_0.xz, !select(vec2<bool>(true, u_input.b >= u_input.b), arg_0.yx, select(arg_0.yy, !arg_0.xx, arg_0.zz)), false);
    let var_0 = 7428i;
    let var_1 = Struct_1(arg_0.xy, ~(~u_input.b), arg_0);
    var var_2 = ~vec2<u32>(1u, _wgslsmith_dot_vec2_u32(~(~vec2<u32>(var_1.b, 4294967295u)), _wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 17472u), vec2<u32>(var_1.b, 7692u), vec2<u32>(68168u, 0u)) >> (_wgslsmith_mult_vec2_u32(vec2<u32>(20680u, 4984u), vec2<u32>(var_1.b, var_1.b)) % vec2<u32>(32u))));
    return min(vec3<i32>(-13280i, var_0, ~(-var_0)), abs(vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-11862i, -1i, var_0), vec3<i32>(1382i, var_0, 0i)), u_input.a, 33781i) ^ abs(max(vec3<i32>(var_0, var_0, -1i), vec3<i32>(0i, 1i, -2147483647i)))));
}

fn func_1(arg_0: u32) -> vec2<bool> {
    let var_0 = -abs(_wgslsmith_clamp_vec3_i32(vec3<i32>(func_2(vec2<i32>(u_input.a, 2147483647i), arg_0, false, Struct_1(vec2<bool>(false, false), 68000u, vec3<bool>(false, global0.x, global0.x))), u_input.a, max(u_input.a, -76054i)), func_3(vec3<bool>(global0.x, false, global0.x)) & vec3<i32>(-19753i, 0i, u_input.a), -(vec3<i32>(25464i, u_input.a, u_input.a) >> (vec3<u32>(70139u, 21334u, u_input.b) % vec3<u32>(32u)))));
    global1 = ~(firstTrailingBit(0u) >> (firstLeadingBit(~4294967295u) % 32u)) << (1u % 32u);
    let var_1 = _wgslsmith_mod_vec4_u32(countOneBits(vec4<u32>(abs(1u), ~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 0u, 1u, 0u), vec4<u32>(82769u, 36335u, u_input.b, u_input.c)), u_input.b << (~46664u % 32u), _wgslsmith_div_u32(4294967295u, ~29673u))), select(_wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(5059u, u_input.b, arg_0, arg_0) | vec4<u32>(4294967295u, 12869u, 35451u, arg_0), vec4<u32>(arg_0, 4294967295u, 1u, u_input.c)), vec4<u32>(arg_0, arg_0, u_input.b, u_input.c) | ~vec4<u32>(0u, 14066u, 8550u, 4466u)), vec4<u32>(6167u, ~u_input.c, 75942u, ~_wgslsmith_clamp_u32(0u, arg_0, 9631u)), vec4<bool>(any(!vec3<bool>(global0.x, true, false)), !all(vec3<bool>(global0.x, global0.x, global0.x)), !(!global0.x), !(global0.x && global0.x))));
    global1 = ~(~_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(~var_1.xyx, var_1.xyw), firstLeadingBit(reverseBits(1u))));
    let var_2 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) - vec3<f32>(-1436f, _wgslsmith_f_op_f32(floor(1559f)), _wgslsmith_f_op_f32(min(-734f, -426f)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) + _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-293f, 1000f, 1620f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-916f, 1744f, -509f) - vec3<f32>(962f, 354f, -177f)) * vec3<f32>(1786f, 692f, -781f)))))));
    return !(!(!(!select(vec2<bool>(global0.x, true), vec2<bool>(global0.x, false), vec2<bool>(true, true)))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = ~u_input.b;
    var var_0 = ~(~_wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(u_input.c, 1u)), ~(~vec2<u32>(0u, u_input.c))));
    let var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(695f, -116f, -1000f, -657f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 318f, 1337f, 684f))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-566f + 568f)))), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(760f)), _wgslsmith_f_op_f32(ceil(-290f))), -789f, !select(true, global0.x, global0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1951f - 1f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(453f * 1129f)) + 1f)));
    var var_2 = !(!(!global0.x || ((global0.x | global0.x) | (global0.x && global0.x))));
    var var_3 = Struct_1(!(!vec2<bool>(false, any(vec3<bool>(global0.x, global0.x, global0.x)))), u_input.b, !vec3<bool>(true, false, global0.x));
    let var_4 = Struct_1(select(func_1(_wgslsmith_div_u32(_wgslsmith_mod_u32(u_input.c, var_3.b), abs(0u))), select(select(vec2<bool>(var_3.c.x, var_3.c.x), vec2<bool>(true, global0.x), true), var_3.a, all(!vec4<bool>(var_3.a.x, global0.x, var_3.c.x, var_3.a.x))), var_3.a), ~u_input.b, !select(select(var_3.c, vec3<bool>(false, false, var_3.c.x), select(vec3<bool>(true, true, global0.x), var_3.c, true)), vec3<bool>(global0.x, u_input.a < u_input.a, var_1.x != var_1.x), var_3.c));
    let var_5 = u_input.c;
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, ~(-vec2<i32>(_wgslsmith_mult_i32(u_input.a, u_input.a), u_input.a)), _wgslsmith_div_vec2_u32(_wgslsmith_add_vec2_u32(reverseBits(vec2<u32>(46877u, 38223u)) >> (~vec2<u32>(var_5, var_5) % vec2<u32>(32u)), vec2<u32>(select(4294967295u, 22897u, global0.x), var_4.b)), ~firstLeadingBit(vec2<u32>(78244u, var_4.b))));
}

