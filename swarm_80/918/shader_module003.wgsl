struct Struct_1 {
    a: vec3<u32>,
    b: i32,
    c: vec4<f32>,
    d: i32,
    e: vec4<f32>,
}

struct Struct_2 {
    a: i32,
    b: i32,
}

struct Struct_3 {
    a: u32,
    b: u32,
    c: vec2<i32>,
    d: Struct_1,
    e: u32,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: f32,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<i32>,
    c: i32,
    d: vec3<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 20> = array<vec2<u32>, 20>(vec2<u32>(4294967295u, 6897u), vec2<u32>(18363u, 1u), vec2<u32>(85975u, 20118u), vec2<u32>(1u, 15846u), vec2<u32>(1u, 24488u), vec2<u32>(4294967295u, 35460u), vec2<u32>(4294967295u, 60228u), vec2<u32>(4294967295u, 0u), vec2<u32>(30894u, 1u), vec2<u32>(4294967295u, 66392u), vec2<u32>(4294967295u, 0u), vec2<u32>(1u, 1u), vec2<u32>(1u, 0u), vec2<u32>(0u, 1u), vec2<u32>(59096u, 13756u), vec2<u32>(0u, 0u), vec2<u32>(4294967295u, 15449u), vec2<u32>(34353u, 0u), vec2<u32>(4294967295u, 46430u), vec2<u32>(1u, 1u));

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec3<i32>, arg_1: f32, arg_2: f32) -> u32 {
    return ~4294967295u;
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: u32) -> f32 {
    let var_0 = min(countOneBits(abs(~func_3(vec3<i32>(u_input.d, u_input.b.x, -16030i), -1283f, arg_0.x))), _wgslsmith_add_u32(1u, arg_2));
    let var_1 = ~vec4<u32>(var_0, _wgslsmith_sub_u32(~(u_input.a << (u_input.a % 32u)), arg_2), 0u | _wgslsmith_clamp_u32(abs(0u), _wgslsmith_dot_vec2_u32(vec2<u32>(27592u, 18679u), vec2<u32>(var_0, 10604u)), ~9069u), (abs(arg_2) | 4294967295u) & max(~u_input.c.x, arg_2));
    global0 = array<vec2<u32>, 20>();
    var var_2 = Struct_4(Struct_3(select(8384u, ~u_input.a, true), 23578u, firstLeadingBit(u_input.b.xx), Struct_1(vec3<u32>(14400u, 44971u, 0u), u_input.d ^ arg_1.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1894f, arg_0.x, arg_0.x, arg_0.x))) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(262f, 120f, -1397f, -986f), vec4<f32>(arg_0.x, -818f, 1769f, arg_0.x), vec4<bool>(true, true, true, true)))), ~_wgslsmith_mult_i32(0i, u_input.b.x), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_0.x, arg_0.x, arg_0.x, -571f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, arg_0.x, -1736f, -434f))))), _wgslsmith_dot_vec4_u32(vec4<u32>(~var_0, var_0, firstLeadingBit(1940u), 4294967295u), _wgslsmith_mod_vec4_u32(var_1, var_1))));
    let var_3 = _wgslsmith_f_op_f32(-var_2.a.d.c.x);
    return 2123f;
}

fn func_4(arg_0: vec3<f32>, arg_1: vec4<f32>) -> Struct_3 {
    global0 = array<vec2<u32>, 20>();
    let var_0 = Struct_1(~u_input.c, -2147483647i, arg_1, u_input.d, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-903f, arg_0.x, -1753f, arg_0.x), arg_1))))), vec4<f32>(arg_1.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(arg_0.x)), _wgslsmith_f_op_f32(969f + -994f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(arg_1.x)), 1411f)), -493f))));
    global0 = array<vec2<u32>, 20>();
    global0 = array<vec2<u32>, 20>();
    var var_1 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_1.x, _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0.yz * arg_0.xx) + _wgslsmith_f_op_vec2_f32(floor(var_0.e.zx))), Struct_2(~3118i, -14545i), select(u_input.a, firstTrailingBit(var_0.a.x), true))), _wgslsmith_div_f32(-211f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-299f, -1000f))))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_0 - arg_0))))), vec3<bool>(any(select(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true), arg_1.x <= 282f)), any(vec2<bool>(true, true)), any(!select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false), true)))));
    return Struct_3(_wgslsmith_sub_u32(4294967295u, _wgslsmith_sub_u32(4388u, ~u_input.c.x)), countOneBits(u_input.c.x), vec2<i32>(~_wgslsmith_div_i32(~u_input.b.x, -2147483647i), _wgslsmith_add_i32(0i, -26058i) << (var_0.a.x % 32u)), var_0, u_input.a);
}

fn func_1(arg_0: i32, arg_1: bool, arg_2: vec3<bool>, arg_3: vec2<i32>) -> bool {
    var var_0 = func_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -194f), _wgslsmith_f_op_f32(abs(-136f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1465f))))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_2(vec2<f32>(1000f, 1268f), Struct_2(0i, 1i), 4294967295u)))) + 1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(209f, -987f)))) + -245f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1547f, 1331f) + _wgslsmith_f_op_f32(ceil(-479f))), _wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(-602f + _wgslsmith_f_op_f32(f32(-1f) * -146f))));
    let var_1 = !arg_1;
    let var_2 = all(arg_2.xz);
    var var_3 = u_input.a;
    let var_4 = max(_wgslsmith_sub_vec2_u32(func_4(var_0.d.c.wzw, _wgslsmith_f_op_vec4_f32(var_0.d.e + vec4<f32>(var_0.d.e.x, 1000f, 728f, -1248f))).d.a.zz, ~abs(u_input.c.yx)) | vec2<u32>(51961u, ~(var_0.b << (33099u % 32u))), countOneBits(vec2<u32>(_wgslsmith_sub_u32(4294967295u, ~var_0.d.a.x), u_input.c.x)));
    return all(!arg_2.xx);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<bool>(!func_1(min(u_input.d, -2147483647i), _wgslsmith_mod_u32(0u, 4294967295u) <= _wgslsmith_div_u32(u_input.a, 33292u), vec3<bool>(true, false, true), abs(~vec2<i32>(31795i, u_input.b.x))), false, func_1(u_input.b.x, !((u_input.d >= u_input.d) | true), select(vec3<bool>(true, true, true), vec3<bool>(false, select(true, false, true), true), false), _wgslsmith_div_vec2_i32(-vec2<i32>(42684i, 7007i), func_4(_wgslsmith_f_op_vec3_f32(vec3<f32>(-702f, -153f, 238f) + vec3<f32>(-522f, -1021f, -930f)), func_4(vec3<f32>(-1182f, -400f, -164f), vec4<f32>(-185f, -123f, 903f, 159f)).d.c).c)));
    var var_1 = u_input.d;
    global0 = array<vec2<u32>, 20>();
    var_1 = -2147483647i;
    var_0 = select(vec3<bool>(!any(!vec3<bool>(var_0.x, var_0.x, true)), (-u_input.b.x <= -63123i) && !(true && var_0.x), var_0.x), !(!(!select(vec3<bool>(false, var_0.x, var_0.x), vec3<bool>(true, false, var_0.x), var_0.x))), !var_0.x);
    var_1 = 19354i;
    var var_2 = select(!select(select(vec3<bool>(false, var_0.x, var_0.x), select(vec3<bool>(var_0.x, false, var_0.x), vec3<bool>(var_0.x, false, false), false), !var_0.x), select(select(vec3<bool>(var_0.x, true, false), vec3<bool>(var_0.x, var_0.x, true), var_0.x), !vec3<bool>(false, var_0.x, true), true), true), !vec3<bool>(any(vec3<bool>(true, var_0.x, false)), func_3(u_input.b.wxw, -329f, -231f) != func_3(u_input.b.yzy, 806f, -468f), var_0.x), !vec3<bool>(var_0.x, false, any(select(vec3<bool>(var_0.x, false, var_0.x), vec3<bool>(true, false, var_0.x), vec3<bool>(false, false, var_0.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(sign(-438f)), _wgslsmith_f_op_f32(abs(139f)), _wgslsmith_f_op_f32(f32(-1f) * -872f))), vec2<i32>(45019i, -2147483647i), u_input.d, _wgslsmith_add_vec3_u32(u_input.c, _wgslsmith_sub_vec3_u32(select(vec3<u32>(58565u, 4294967295u, u_input.c.x), u_input.c, vec3<bool>(var_2.x, var_0.x, true)), ~u_input.c)) & ~_wgslsmith_mod_vec3_u32(u_input.c, select(vec3<u32>(u_input.c.x, u_input.a, u_input.c.x), vec3<u32>(25951u, u_input.a, 1u), vec3<bool>(var_0.x, var_0.x, false))), _wgslsmith_dot_vec3_u32(~func_4(_wgslsmith_f_op_vec3_f32(vec3<f32>(625f, -305f, -206f) * vec3<f32>(-655f, -1477f, -446f)), vec4<f32>(1000f, -1000f, -1511f, 453f)).d.a, u_input.c));
}

