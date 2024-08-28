struct Struct_1 {
    a: bool,
    b: i32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: vec3<bool>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_2,
    c: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: Struct_1,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: vec4<i32>,
    d: u32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: Struct_1;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2() -> i32 {
    global1 = Struct_1(any(vec3<bool>(!(global1.a | true), select(!global1.a, true, true), true)), global1.b);
    global0 = -20710i;
    global0 = -10986i;
    global1 = Struct_1(true, countOneBits(~min(-21010i, global1.b << (4294967295u % 32u))));
    var var_0 = 1i;
    return -1i;
}

fn func_3(arg_0: Struct_4, arg_1: Struct_4, arg_2: i32) -> vec2<bool> {
    var var_0 = _wgslsmith_dot_vec4_u32(~firstTrailingBit(~(~vec4<u32>(0u, 4294967295u, 102288u, 7799u))), ~vec4<u32>(~(~12365u), ~(~75152u), 4294967295u, ~16279u));
    global1 = Struct_1(false, _wgslsmith_add_i32(~2147483647i, arg_0.b.b));
    global0 = _wgslsmith_dot_vec3_i32(min(~(~firstTrailingBit(vec3<i32>(-28355i, -59623i, u_input.b))), ~firstLeadingBit(~vec3<i32>(u_input.b, arg_0.a, arg_2))), _wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(firstLeadingBit(vec3<i32>(arg_0.a, 2147483647i, 36299i)), ~vec3<i32>(1i, 2223i, 0i)) ^ ~vec3<i32>(global1.b, global1.b, 44560i), min(vec3<i32>(2147483647i, arg_2, -1i), _wgslsmith_sub_vec3_i32(~vec3<i32>(-63014i, u_input.b, u_input.a), vec3<i32>(-1i, arg_1.b.b, 0i)))));
    global1 = arg_0.b;
    let var_1 = Struct_2(firstLeadingBit(_wgslsmith_mult_vec3_i32(vec3<i32>(-10564i, select(arg_2, 31022i, arg_1.b.a), global1.b), vec3<i32>(arg_1.a >> (27336u % 32u), abs(-2147483647i), ~arg_1.b.b))), arg_0.b, vec3<bool>(arg_0.b.a, all(select(!vec4<bool>(global1.a, false, global1.a, arg_0.b.a), vec4<bool>(true, arg_1.b.a, arg_1.c.x, true), vec4<bool>(arg_0.c.x, false, true, false))), true), arg_0.b, arg_1.b);
    return select(select(arg_1.c.zx, vec2<bool>(true, true), vec2<bool>(!all(var_1.c.yz), true)), var_1.c.zy, select(select(select(!arg_1.c.zx, arg_1.c.yx, select(arg_1.c.xz, arg_0.c.yz, false)), vec2<bool>(true, true), !(!arg_0.c.yz)), vec2<bool>(true, true), var_1.b.a));
}

fn func_1() -> vec2<bool> {
    global0 = 7151i;
    var var_0 = func_2();
    let var_1 = Struct_1(!all(!(!vec3<bool>(false, true, global1.a))), -2147483647i);
    var var_2 = vec4<bool>(false, !any(func_3(Struct_4(-33998i, Struct_1(true, u_input.a), vec3<bool>(global1.a, var_1.a, false)), Struct_4(u_input.b, Struct_1(true, u_input.a), vec3<bool>(false, global1.a, false)), 1i << (1u % 32u))), true, var_1.a);
    var_0 = ~_wgslsmith_clamp_i32(max(_wgslsmith_sub_i32(~(-31535i), -1i), 56800i), -2147483647i, 2147483647i);
    return vec2<bool>((true || any(var_2.xy)) != var_1.a, true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !func_1();
    var_0 = select(func_3(Struct_4(_wgslsmith_sub_i32(global1.b << (1u % 32u), i32(-1i) * -50542i), Struct_1(func_3(Struct_4(0i, Struct_1(false, 29115i), vec3<bool>(global1.a, true, false)), Struct_4(global1.b, Struct_1(var_0.x, u_input.a), vec3<bool>(false, true, var_0.x)), u_input.a).x, -5763i), !(!vec3<bool>(global1.a, global1.a, var_0.x))), Struct_4(select(firstLeadingBit(-1i), 20640i, var_0.x), Struct_1(true, global1.b << (0u % 32u)), select(vec3<bool>(false, global1.a, true), vec3<bool>(var_0.x, var_0.x, global1.a), false || var_0.x)), -reverseBits(~global1.b)), vec2<bool>(var_0.x, true), vec2<bool>(false, true && (_wgslsmith_div_i32(62864i, u_input.a) == 30598i)));
    var var_1 = countOneBits(u_input.a ^ (u_input.a ^ ~firstTrailingBit(38809i)));
    var_1 = global1.b;
    var var_2 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1444f, 1203f, -822f))), vec3<f32>(_wgslsmith_f_op_f32(ceil(-1305f)), _wgslsmith_f_op_f32(-369f - 487f), _wgslsmith_f_op_f32(-1444f * 599f)), true | var_0.x)) + vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(-2346f)))), _wgslsmith_f_op_f32(f32(-1f) * -1520f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-749f)))))));
    let var_3 = Struct_3(firstTrailingBit(_wgslsmith_mod_vec2_i32(vec2<i32>(_wgslsmith_div_i32(1i, global1.b), 0i), _wgslsmith_sub_vec2_i32(countOneBits(vec2<i32>(global1.b, -1i)), _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.b, 2147483647i), vec2<i32>(global1.b, u_input.b))))), Struct_2(-abs(vec3<i32>(-73741i, 2147483647i, -2147483647i) | vec3<i32>(-1i, 43377i, u_input.a)), Struct_1(_wgslsmith_f_op_f32(max(var_2.x, var_2.x)) != 1f, _wgslsmith_sub_i32(0i, u_input.a)), select(vec3<bool>(all(vec3<bool>(var_0.x, false, false)), all(vec3<bool>(false, global1.a, false)), global1.a), select(select(vec3<bool>(false, var_0.x, true), vec3<bool>(false, true, false), true), !vec3<bool>(true, true, global1.a), !var_0.x), var_0.x), Struct_1(!var_0.x & true, _wgslsmith_add_i32(u_input.b, -13594i)), Struct_1(any(select(vec4<bool>(true, global1.a, global1.a, global1.a), vec4<bool>(false, var_0.x, var_0.x, global1.a), global1.a)), ~(-46841i >> (1u % 32u)))), Struct_1(false, 1i));
    var var_4 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.x, -494f)) * vec2<f32>(_wgslsmith_div_f32(-741f, var_2.x), var_2.x))), -1i, abs((vec4<i32>(-1i) * -vec4<i32>(global1.b, u_input.a, 28894i, var_4.a.x)) ^ ((vec4<i32>(-808i, 2147483647i, 31719i, var_4.c.b) ^ vec4<i32>(var_4.c.b, var_3.c.b, -15014i, u_input.b)) & vec4<i32>(-1i, var_3.b.d.b, var_3.b.d.b, global1.b))), countOneBits(_wgslsmith_dot_vec2_u32(abs(vec2<u32>(33948u, 4294967295u)), vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(4246u, 3081u), vec2<u32>(4294967295u, 76898u)), _wgslsmith_div_u32(0u, 9716u)))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, 1072f, var_2.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, var_2.x, var_2.x)))) * vec3<f32>(-1898f, _wgslsmith_f_op_f32(1000f + var_2.x), _wgslsmith_f_op_f32(760f * var_2.x))))));
}

