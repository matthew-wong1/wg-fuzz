struct Struct_1 {
    a: vec3<u32>,
    b: u32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: bool,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: Struct_1;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec3<u32> {
    global1 = Struct_1(vec3<u32>(firstLeadingBit(40025u), _wgslsmith_dot_vec2_u32(firstLeadingBit(u_input.d), (global1.a.xy & u_input.d) >> (select(u_input.d, vec2<u32>(4034u, 0u), vec2<bool>(true, false)) % vec2<u32>(32u))), global1.a.x), ~1u);
    let var_0 = _wgslsmith_div_u32(global1.b, u_input.d.x);
    var var_1 = global0.xz;
    let var_2 = vec4<u32>(countOneBits(1u | reverseBits(u_input.a)), 234u, var_0, countOneBits(~(~firstTrailingBit(28979u))));
    let var_3 = var_2.x;
    return ~(_wgslsmith_add_vec3_u32(countOneBits(_wgslsmith_clamp_vec3_u32(global1.a, vec3<u32>(var_3, u_input.c, var_3), global1.a)), vec3<u32>(4294967295u, _wgslsmith_sub_u32(15664u, var_3), 1u)) ^ ~global1.a);
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(max(func_3(), ~select(global1.a & global1.a, vec3<u32>(global1.b, global1.a.x, 0u), true)), firstTrailingBit(abs(~27116u)) | 1u);
    let var_1 = firstLeadingBit(vec4<u32>(var_0.b, _wgslsmith_sub_u32(~(~40099u), _wgslsmith_mod_u32(u_input.c ^ 23466u, 4294967295u)), 1u, _wgslsmith_div_u32(_wgslsmith_div_u32(u_input.d.x, ~u_input.a), ~var_0.a.x)));
    var var_2 = countOneBits(~vec2<i32>(~(-71905i), u_input.b) << ((global1.a.yy | _wgslsmith_clamp_vec2_u32(~var_0.a.zy, min(vec2<u32>(0u, 67881u), var_1.xx), u_input.d)) % vec2<u32>(32u)));
    var var_3 = reverseBits(_wgslsmith_sub_vec4_u32(abs(var_1), vec4<u32>(_wgslsmith_sub_u32(3138u, var_0.b), u_input.a, firstTrailingBit(var_1.x), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 4294967295u, 18811u), vec3<u32>(var_0.a.x, var_1.x, global1.b))) | _wgslsmith_mod_vec4_u32(var_1, vec4<u32>(global1.a.x, var_1.x, u_input.c, global1.b))));
    global0 = min(select(vec4<i32>(var_2.x, 2147483647i, global0.x, var_2.x), vec4<i32>(u_input.b, 0i, -8325i, u_input.b), true) ^ reverseBits(vec4<i32>(0i, 0i, var_2.x, -2147483647i)), _wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, -55320i, var_2.x, -2033i), firstTrailingBit(vec4<i32>(var_2.x, 2147483647i, -60142i, var_2.x))) << (vec4<u32>(~35467u, var_3.x, var_1.x, _wgslsmith_dot_vec3_u32(vec3<u32>(var_3.x, 15115u, 1u), global1.a)) % vec4<u32>(32u))) & countOneBits(_wgslsmith_clamp_vec4_i32(~vec4<i32>(-21993i, global0.x, u_input.b, 30935i), _wgslsmith_mod_vec4_i32(vec4<i32>(var_2.x, 10335i, 16911i, -1804i), vec4<i32>(global0.x, 608i, -1i, u_input.b)), -_wgslsmith_mult_vec4_i32(vec4<i32>(1i, -2147483647i, u_input.b, 21266i), vec4<i32>(-1i, 2147483647i, -7489i, var_2.x))));
    return Struct_1(var_3.zzz >> ((var_0.a | ~_wgslsmith_add_vec3_u32(vec3<u32>(var_3.x, u_input.d.x, var_0.a.x), var_3.yzx)) % vec3<u32>(32u)), u_input.c);
}

fn func_1(arg_0: vec3<i32>, arg_1: vec3<u32>, arg_2: f32, arg_3: vec4<i32>) -> vec3<u32> {
    global1 = func_2();
    global0 = arg_3;
    var var_0 = vec3<i32>(~(-u_input.b), global0.x, reverseBits(arg_0.x));
    let var_1 = Struct_2(u_input.b, func_2(), any(vec3<bool>(all(select(vec2<bool>(true, false), vec2<bool>(false, false), true)), !select(true, true, false), false)), select(vec4<bool>(true, 4294967295u == ~u_input.c, true, any(vec3<bool>(false, false, false))), !(!select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false))), select(vec4<bool>(any(vec3<bool>(false, true, false)), any(vec4<bool>(true, false, false, false)), true, true), vec4<bool>(true, true, true, true), vec4<bool>(arg_0.x <= 2147483647i, true, true, arg_0.x > arg_3.x))));
    let var_2 = max(-1i, arg_0.x);
    return ~arg_1;
}

fn func_4(arg_0: i32, arg_1: bool, arg_2: Struct_2) -> Struct_1 {
    let var_0 = !all(arg_2.d.zxy);
    var var_1 = Struct_2(max(arg_2.a, arg_2.a), Struct_1(~(~vec3<u32>(global1.b, 55503u, 38645u)), _wgslsmith_dot_vec4_u32(select(min(vec4<u32>(4294967295u, 4294967295u, global1.b, 108702u), vec4<u32>(4294967295u, 4294967295u, arg_2.b.b, 0u)), countOneBits(vec4<u32>(u_input.c, global1.b, 35378u, u_input.c)), !var_0), ~max(vec4<u32>(arg_2.b.b, arg_2.b.b, u_input.d.x, 0u), vec4<u32>(u_input.a, 11929u, global1.a.x, arg_2.b.a.x)))), true, select(!(!(!vec4<bool>(false, arg_2.d.x, arg_2.d.x, var_0))), vec4<bool>(true, !all(vec3<bool>(arg_1, arg_1, arg_1)), true, all(select(vec2<bool>(false, false), vec2<bool>(true, true), arg_2.d.wx))), ~(-38173i) == arg_0));
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-822f, -774f)), vec2<f32>(-1914f, _wgslsmith_div_f32(-1637f, 2119f)))))) - vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1190f, _wgslsmith_f_op_f32(round(703f))) + _wgslsmith_f_op_f32(-316f - _wgslsmith_f_op_f32(f32(-1f) * -1547f))), 1314f));
    let var_3 = arg_2;
    let var_4 = _wgslsmith_f_op_f32(ceil(var_2.x));
    return Struct_1(~(~var_1.b.a), 8983u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(36430i >> (u_input.c % 32u), true | any(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true))), Struct_2(_wgslsmith_div_i32(_wgslsmith_sub_i32(-1i, u_input.b), global0.x), Struct_1(func_1(-vec3<i32>(1i, 28783i, 0i), global1.a, 304f, vec4<i32>(-1i, 0i, 16578i, 1i)), global1.a.x), true, vec4<bool>(_wgslsmith_f_op_f32(trunc(279f)) != _wgslsmith_f_op_f32(-110f + 829f), true, true, false)));
    var var_1 = var_0;
    var var_2 = var_1.a;
    let var_3 = any(select(select(vec2<bool>(true, true), vec2<bool>(true, true), false), vec2<bool>(true, true), all(vec3<bool>(true, true, true))));
    var_2 = max(_wgslsmith_add_vec3_u32(vec3<u32>(~max(global1.b, 4294967295u), 19348u, 4294967295u), max(countOneBits(firstTrailingBit(vec3<u32>(var_1.a.x, var_2.x, u_input.c))), _wgslsmith_sub_vec3_u32(vec3<u32>(1u, 10951u, 17127u), select(global1.a, vec3<u32>(40955u, var_2.x, 4294967295u), true)))), select(_wgslsmith_sub_vec3_u32(abs(~vec3<u32>(global1.b, 63314u, 0u)), func_1(global0.yyx, var_0.a, _wgslsmith_div_f32(227f, 284f), _wgslsmith_add_vec4_i32(vec4<i32>(7511i, -1i, global0.x, global0.x), vec4<i32>(u_input.b, -32774i, 758i, 8624i)))), global1.a, select(vec3<bool>(false | var_3, false, true), !select(vec3<bool>(true, true, var_3), vec3<bool>(false, false, false), false), any(select(vec3<bool>(var_3, var_3, false), vec3<bool>(var_3, var_3, var_3), vec3<bool>(false, var_3, var_3))))));
    global0 = _wgslsmith_div_vec4_i32(abs(vec4<i32>(global0.x, -u_input.b, countOneBits(-1i), -_wgslsmith_mod_i32(-4394i, -2147483647i))), vec4<i32>(_wgslsmith_sub_i32(u_input.b, _wgslsmith_div_i32(global0.x, -44452i)), 19103i, _wgslsmith_mult_i32(1i, global0.x), -73662i) << (vec4<u32>(_wgslsmith_mult_u32(select(1u, 1372u, true), 42523u), firstLeadingBit(1u), _wgslsmith_add_u32(u_input.d.x, 4084u), reverseBits(func_4(global0.x, true, Struct_2(2147483647i, Struct_1(var_0.a, 4294967295u), var_3, vec4<bool>(false, var_3, var_3, var_3))).a.x)) % vec4<u32>(32u)));
    global1 = func_4(u_input.b, !(!any(vec2<bool>(true, var_3))), Struct_2(firstTrailingBit(~(-12900i)), var_0, true, select(!(!vec4<bool>(var_3, false, var_3, false)), vec4<bool>(true, var_3, all(vec4<bool>(var_3, var_3, var_3, var_3)), !var_3), vec4<bool>(false, all(vec2<bool>(false, var_3)), !var_3, true))));
    var var_4 = select(false, !(!(!var_3)), !var_3) & false;
    var var_5 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(~var_2.x, _wgslsmith_dot_vec4_u32(reverseBits(~_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c, 4294967295u, u_input.a, var_1.a.x), vec4<u32>(u_input.a, var_1.a.x, var_2.x, var_1.b), vec4<u32>(4294967295u, 0u, 46078u, 0u))), vec4<u32>(~max(4294967295u, var_1.a.x), var_1.a.x, select(u_input.a ^ var_5.b, 1u, !var_3), 0u)), var_1.a.x, abs(u_input.b));
}

