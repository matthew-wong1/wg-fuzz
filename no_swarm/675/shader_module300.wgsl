struct Struct_1 {
    a: vec3<bool>,
    b: vec2<i32>,
    c: i32,
    d: vec3<i32>,
    e: f32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: u32,
    d: vec3<bool>,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(-491f, Struct_1(vec3<bool>(true, true, true), vec2<i32>(26956i, 0i), -1i, vec3<i32>(1i, 18116i, i32(-2147483648)), 353f), 1u, vec3<bool>(true, false, true), vec2<i32>(-17229i, -1i));

var<private> global1: vec2<f32> = vec2<f32>(-1000f, 895f);

var<private> global2: Struct_1 = Struct_1(vec3<bool>(false, true, true), vec2<i32>(1i, 0i), i32(-2147483648), vec3<i32>(-1i, 49679i, 24927i), 271f);

var<private> global3: vec4<bool>;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_1(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1, arg_3: u32) -> f32 {
    var var_0 = arg_2.a;
    return _wgslsmith_f_op_f32(f32(-1f) * -745f);
}

fn func_3() -> vec3<i32> {
    var var_0 = Struct_1(!global3.wxw, -max(reverseBits(global0.e), countOneBits(vec2<i32>(global0.b.b.x, global0.e.x))), firstTrailingBit(_wgslsmith_mod_i32(0i, global2.d.x)), global0.b.d, -1000f);
    var var_1 = abs(u_input.a.yz) ^ vec2<u32>(countOneBits(_wgslsmith_sub_u32(u_input.a.x ^ u_input.a.x, ~0u)), countOneBits(firstLeadingBit(1u)));
    var var_2 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(161f)) - 1625f), global0.b, _wgslsmith_dot_vec2_u32(vec2<u32>(~(var_1.x >> (38079u % 32u)), global0.c), vec2<u32>(global0.c, u_input.a.x) << (_wgslsmith_mult_vec2_u32(~u_input.a.zx, max(u_input.a.yx, vec2<u32>(68256u, 31581u))) % vec2<u32>(32u))), select(select(!select(global3.xww, vec3<bool>(false, false, false), true), vec3<bool>(var_0.a.x, global2.a.x, all(global3.zy)), !(!global3.wzy)), vec3<bool>(all(vec2<bool>(global0.b.a.x, global0.d.x)), global3.x, all(!global0.d)), any(select(vec3<bool>(var_0.a.x, global0.d.x, var_0.a.x), vec3<bool>(false, true, false), false)) & !(-1516f != global0.a)), u_input.c >> (~reverseBits(vec2<u32>(4294967295u, 4294967295u) >> (vec2<u32>(1u, 1u) % vec2<u32>(32u))) % vec2<u32>(32u)));
    var_1 = u_input.a.zz;
    global0 = Struct_2(-526f, Struct_1(!var_0.a, _wgslsmith_mod_vec2_i32(-firstTrailingBit(vec2<i32>(global0.b.b.x, 17931i)), vec2<i32>(-6766i, max(var_0.c, global2.d.x))), abs(global2.d.x), u_input.b, _wgslsmith_f_op_f32(-global1.x)), _wgslsmith_clamp_u32(26067u, ~(~_wgslsmith_mod_u32(var_2.c, global0.c)), min(min(u_input.a.x, reverseBits(1u)), 78813u)), var_2.b.a, u_input.b.zz);
    return -_wgslsmith_clamp_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.d, -22842i, global0.e.x), (global0.b.d >> (u_input.a % vec3<u32>(32u))) ^ ~u_input.b), u_input.b, -firstTrailingBit(_wgslsmith_mod_vec3_i32(global0.b.d, global2.d)));
}

fn func_2(arg_0: u32, arg_1: vec4<bool>, arg_2: vec3<bool>, arg_3: vec2<f32>) -> f32 {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1518f, arg_3.x) * -417f))), Struct_1(vec3<bool>(_wgslsmith_f_op_f32(exp2(global0.b.e)) == global1.x, arg_2.x, (global2.b.x ^ -305i) >= max(u_input.b.x, -12172i)), vec2<i32>(-global2.c, 2147483647i), min(-21912i, _wgslsmith_div_i32(global0.e.x, global2.d.x ^ -2147483647i)), -func_3(), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) + -933f)))), abs(~(~_wgslsmith_add_u32(u_input.a.x, global0.c))), vec3<bool>(!((arg_1.x | false) & any(arg_2.zy)), select(true, !arg_2.x, true), true), func_3().xx);
    global1 = vec2<f32>(_wgslsmith_f_op_f32(step(global0.b.e, arg_3.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_0.b.e - var_0.b.e), global0.b.e, any(global2.a.xy))))) + global1.x));
    global1 = arg_3;
    var_0 = Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -681f), _wgslsmith_f_op_f32(-global2.e)), Struct_1(vec3<bool>(true, true, true), vec2<i32>(-var_0.e.x, abs(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.e.x, -1i, global0.e.x), global2.d))), firstLeadingBit(1i), countOneBits(~u_input.b) | var_0.b.d, _wgslsmith_f_op_f32(abs(var_0.a))), ~min(firstLeadingBit(0u), ~1u), select(var_0.d, vec3<bool>(global2.a.x, any(!vec3<bool>(false, global0.b.a.x, global3.x)), true), !(_wgslsmith_f_op_f32(exp2(global1.x)) <= -284f)), _wgslsmith_add_vec2_i32(_wgslsmith_div_vec2_i32(~vec2<i32>(-9394i, u_input.d), select(var_0.e, countOneBits(var_0.b.d.zx), true)), firstTrailingBit(reverseBits(var_0.e) & -vec2<i32>(var_0.e.x, 0i))));
    var var_1 = all(select(select(vec2<bool>(true, global3.x), var_0.d.xx, vec2<bool>(var_0.b.a.x == false, true)), arg_1.zy, true));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global1.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a.x;
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -258f), _wgslsmith_f_op_f32(trunc(-1444f)), global0.d.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.e * global1.x))))));
    let var_2 = ~vec3<i32>(0i, u_input.c.x, -(-26826i | (global2.c & global0.e.x)));
    var var_3 = Struct_1(vec3<bool>(true, any(global2.a.yz), true), -firstTrailingBit(countOneBits(vec2<i32>(u_input.d, global0.e.x))), var_2.x, -vec3<i32>(_wgslsmith_clamp_i32(7837i, ~(-17008i), var_2.x), -1i, firstLeadingBit(abs(global2.b.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(-1000f, -229f)), _wgslsmith_f_op_f32(func_1(global2.e, global0.b, Struct_1(global2.a, vec2<i32>(-2147483647i, global2.b.x), -49755i, global0.b.d, -1733f), 1u)))))) + _wgslsmith_f_op_f32(func_2(19522u, !(!vec4<bool>(true, false, true, global3.x)), global3.zyy, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(var_1.x, global2.e), vec2<f32>(-958f, -689f)))))));
    let var_4 = global3.x;
    var_3 = Struct_1(global0.b.a, global2.d.zy, global2.c, vec3<i32>(~(-abs(0i)), func_3().x, global2.d.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-333f)), var_3.e)))));
    var_0 = global0.c;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(~vec4<u32>(u_input.a.x, global0.c, 57599u, 30822u), _wgslsmith_add_vec4_u32(vec4<u32>(25918u, global0.c, 19702u, 0u), vec4<u32>(94545u, 24642u, 1u, 2457u))), abs(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, 36049u, 43771u, 15192u), vec4<u32>(u_input.a.x, global0.c, u_input.a.x, global0.c)))), var_3.b.x);
}

