struct Struct_1 {
    a: bool,
    b: u32,
    c: vec2<u32>,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> u32 {
    global0 = arg_2;
    var var_0 = 4294967295u;
    let var_1 = arg_3;
    var_0 = arg_2.c.x;
    global0 = arg_3;
    return 0u;
}

fn func_3(arg_0: u32) -> vec3<bool> {
    global0 = Struct_1(true == !global0.a, abs(55303u), vec2<u32>(global0.c.x, reverseBits(~_wgslsmith_mod_u32(global0.c.x, 0u))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-global0.d.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(598f - 146f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2089f - 1368f)))));
    var var_0 = select(vec3<u32>(0u, 15397u, max(_wgslsmith_dot_vec3_u32(vec3<u32>(global0.b, 45206u, 1u), vec3<u32>(0u, arg_0, global0.b)), 4294967295u) << (global0.c.x % 32u)), ~_wgslsmith_clamp_vec3_u32(~vec3<u32>(63497u, 45170u, 18644u), vec3<u32>(38716u << (arg_0 % 32u), ~arg_0, max(36021u, arg_0)), vec3<u32>(18816u, 23739u, global0.c.x) << (~vec3<u32>(global0.c.x, arg_0, 2395u) % vec3<u32>(32u))), select(!global0.a && true, global0.a, global0.a));
    let var_1 = !vec2<bool>(true, !(all(vec4<bool>(global0.a, global0.a, global0.a, true)) || false));
    let var_2 = ~(i32(-1i) * -1i);
    global0 = Struct_1(var_1.x, var_0.x, global0.c, global0.d);
    return select(vec3<bool>(all(!select(vec4<bool>(global0.a, var_1.x, global0.a, global0.a), vec4<bool>(global0.a, true, var_1.x, var_1.x), vec4<bool>(var_1.x, global0.a, global0.a, false))), false, !any(vec2<bool>(false, var_1.x))), !select(select(select(vec3<bool>(global0.a, true, var_1.x), vec3<bool>(var_1.x, false, true), true), vec3<bool>(true, true, true), any(var_1)), !(!vec3<bool>(global0.a, global0.a, false)), true), global0.a);
}

fn func_4(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: vec3<bool>, arg_3: i32) -> vec3<i32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.d.x, global0.d.x, arg_0.d.x, arg_0.d.x))))) + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1000f, global0.d.x, -1087f, 1244f))), vec4<f32>(arg_0.d.x, 628f, global0.d.x, -216f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0.d.x, 279f, -1000f, 695f), vec4<f32>(309f, global0.d.x, global0.d.x, 423f), false)))))));
    let var_1 = select((~5135u | select(arg_0.b & arg_1.x, arg_1.x, global0.a)) & _wgslsmith_add_u32(arg_0.c.x, global0.c.x), abs(arg_1.x), false);
    var_0 = _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-991f, -482f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.d.x - global0.d.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-507f, arg_0.d.x)))));
    var var_2 = vec3<bool>(any(vec4<bool>(all(vec4<bool>(false, global0.a, arg_2.x, arg_2.x)), !(!arg_2.x), true, false)), arg_0.a, arg_0.a);
    var var_3 = -max(-(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a.x, arg_3, arg_3, u_input.a.x), vec4<i32>(-28342i, arg_3, arg_3, -2147483647i)) ^ vec4<i32>(arg_3, u_input.a.x, -44162i, u_input.a.x)), -(-vec4<i32>(arg_3, 2147483647i, 0i, u_input.a.x) & reverseBits(vec4<i32>(u_input.a.x, -10414i, 1i, -2147483647i))));
    return -vec3<i32>(~u_input.a.x, -_wgslsmith_dot_vec2_i32(vec2<i32>(87965i, var_3.x) << (global0.c % vec2<u32>(32u)), var_3.xx), var_3.x);
}

fn func_1(arg_0: u32, arg_1: vec2<bool>, arg_2: vec3<u32>, arg_3: vec2<u32>) -> u32 {
    var var_0 = _wgslsmith_sub_i32(u_input.a.x, reverseBits(u_input.a.x));
    var_0 = u_input.a.x;
    var var_1 = _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(~(~vec4<u32>(68989u, global0.b, global0.b, global0.b)), ~vec4<u32>(~0u, firstTrailingBit(arg_0), max(global0.c.x, 0u), ~global0.c.x)), (~_wgslsmith_mult_vec4_u32(vec4<u32>(arg_3.x, 40486u, arg_3.x, 0u), vec4<u32>(arg_2.x, global0.c.x, arg_0, arg_3.x)) & ~_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_0, 90599u, global0.c.x, global0.c.x), vec4<u32>(48012u, arg_2.x, 10315u, global0.b), vec4<u32>(43525u, arg_0, 4294967295u, arg_2.x))) >> (_wgslsmith_mod_vec4_u32(select(vec4<u32>(108301u, arg_2.x, global0.c.x, 55058u), ~vec4<u32>(arg_3.x, arg_2.x, 4294967295u, arg_3.x), !vec4<bool>(arg_1.x, false, global0.a, arg_1.x)), vec4<u32>(_wgslsmith_mult_u32(arg_3.x, 69675u), _wgslsmith_dot_vec4_u32(vec4<u32>(7618u, arg_0, arg_2.x, 0u), vec4<u32>(0u, arg_0, global0.c.x, 31181u)), func_2(Struct_1(global0.a, global0.c.x, vec2<u32>(arg_3.x, arg_0), global0.d), Struct_1(false, 0u, vec2<u32>(4294967295u, global0.c.x), vec3<f32>(-248f, 715f, global0.d.x)), Struct_1(false, arg_3.x, vec2<u32>(arg_0, arg_2.x), vec3<f32>(171f, 971f, -1403f)), Struct_1(arg_1.x, 4294967295u, vec2<u32>(global0.c.x, 118041u), global0.d)), arg_2.x)) % vec4<u32>(32u)));
    let var_2 = func_4(Struct_1(arg_1.x, abs(arg_2.x ^ global0.b) ^ _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(arg_0, 4294967295u, 0u), vec3<u32>(global0.c.x, arg_2.x, global0.c.x)), ~vec3<u32>(0u, arg_3.x, arg_3.x)), arg_2.zz, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1077f)), _wgslsmith_f_op_f32(global0.d.x - _wgslsmith_f_op_f32(ceil(global0.d.x))), 146f)), ~(firstTrailingBit(~vec4<u32>(arg_3.x, 0u, 0u, 20348u)) ^ _wgslsmith_div_vec4_u32(firstTrailingBit(vec4<u32>(arg_3.x, 8774u, 33571u, arg_2.x)), vec4<u32>(0u, 1u, arg_2.x, 1u))), !select(vec3<bool>(false, global0.a, !arg_1.x), !vec3<bool>(global0.a, false, arg_1.x), func_3(~global0.c.x)), ~u_input.a.x);
    global0 = Struct_1(!(!any(vec3<bool>(false, true, global0.a)) == global0.a), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 1u, ~18299u) << (select(vec4<u32>(0u, arg_3.x, arg_0, global0.b), max(vec4<u32>(arg_2.x, 0u, 1u, 57520u), vec4<u32>(0u, 166639u, 1u, arg_2.x)), false) % vec4<u32>(32u)), vec4<u32>(~arg_0, _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(arg_2, arg_2), select(arg_2, vec3<u32>(arg_3.x, arg_3.x, 1u), global0.a)), _wgslsmith_sub_u32(min(arg_0, arg_2.x), 44165u), global0.c.x)), vec2<u32>(reverseBits(arg_0), arg_0), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.d.x + global0.d.x) + -401f), global0.d.x, 811f));
    return 3068u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(~(~2271u), !vec2<bool>(false, !global0.a), ~(~vec3<u32>(global0.c.x, 65070u, 1u)), vec2<u32>(global0.c.x, global0.c.x)) <= global0.b;
    var var_1 = -18503i;
    var var_2 = Struct_1(global0.a, global0.c.x, global0.c & ~vec2<u32>(global0.b, _wgslsmith_add_u32(11287u, global0.b)), global0.d);
    global0 = Struct_1(var_0, _wgslsmith_sub_u32(var_2.c.x, global0.c.x) | _wgslsmith_mult_u32(~(~0u), countOneBits(var_2.c.x)), ~vec2<u32>(func_2(Struct_1(global0.a, 1u, var_2.c, vec3<f32>(-317f, -1000f, var_2.d.x)), Struct_1(true, 3681u, vec2<u32>(47914u, 1u), vec3<f32>(1756f, global0.d.x, global0.d.x)), Struct_1(false, global0.b, var_2.c, var_2.d), Struct_1(var_2.a, var_2.b, var_2.c, vec3<f32>(var_2.d.x, var_2.d.x, 1000f))), global0.c.x), var_2.d);
    var var_3 = vec2<u32>(~(~0u), ~1u);
    var_1 = -u_input.a.x;
    var_3 = _wgslsmith_div_vec2_u32(_wgslsmith_sub_vec2_u32(~firstTrailingBit(var_2.c), _wgslsmith_add_vec2_u32(vec2<u32>(~10297u, var_3.x), ~(~vec2<u32>(32846u, 15492u)))), ~(~var_2.c ^ global0.c));
    var var_4 = _wgslsmith_sub_vec3_u32(vec3<u32>(var_3.x, 4294967295u & ~(~var_2.c.x), abs(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(65515u, var_2.c.x, 8024u, var_2.c.x), vec4<u32>(27627u, var_3.x, 8679u, var_3.x), vec4<u32>(30709u, 56606u, global0.b, global0.b)), abs(vec4<u32>(0u, 0u, 4294967295u, 68366u))))), ((vec3<u32>(global0.b, 0u, var_2.b) | (vec3<u32>(1u, var_3.x, global0.c.x) | vec3<u32>(var_2.c.x, global0.c.x, 1u))) << (~min(vec3<u32>(global0.b, 0u, 15259u), vec3<u32>(var_2.c.x, 57824u, 4294967295u)) % vec3<u32>(32u))) << (~_wgslsmith_clamp_vec3_u32(~vec3<u32>(0u, var_2.b, 1u), _wgslsmith_add_vec3_u32(vec3<u32>(global0.c.x, var_2.b, global0.b), vec3<u32>(11982u, 27833u, 0u)), ~vec3<u32>(var_3.x, var_2.b, var_2.c.x)) % vec3<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(~(~vec3<u32>(23041u, _wgslsmith_add_u32(var_3.x, 48669u), func_2(Struct_1(false, 0u, var_4.xy, global0.d), Struct_1(false, var_3.x, vec2<u32>(var_3.x, var_3.x), var_2.d), Struct_1(var_2.a, var_4.x, vec2<u32>(4294967295u, 30240u), var_2.d), Struct_1(var_0, global0.c.x, vec2<u32>(var_2.c.x, 4294967295u), vec3<f32>(130f, var_2.d.x, global0.d.x))))), _wgslsmith_mult_vec4_i32((countOneBits(vec4<i32>(u_input.a.x, 45262i, u_input.a.x, 2147483647i)) & select(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -2734i), vec4<i32>(-1398i, 18141i, u_input.a.x, 22803i), var_2.a)) | vec4<i32>(countOneBits(u_input.a.x), u_input.a.x, firstTrailingBit(u_input.a.x), u_input.a.x), ~_wgslsmith_add_vec4_i32(vec4<i32>(-35553i, 2147483647i, 1i, u_input.a.x), vec4<i32>(0i, u_input.a.x, u_input.a.x, u_input.a.x)) << (abs(~vec4<u32>(1u, var_2.c.x, 3388u, 62611u)) % vec4<u32>(32u))), var_2.c.x);
}

