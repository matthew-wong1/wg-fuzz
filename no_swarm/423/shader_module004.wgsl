struct Struct_1 {
    a: bool,
    b: vec2<u32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<i32>,
    c: vec2<u32>,
    d: vec3<i32>,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
    c: Struct_2,
    d: Struct_3,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: vec3<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 14>;

var<private> global1: vec4<u32> = vec4<u32>(0u, 4294967295u, 4294967295u, 12609u);

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: u32, arg_1: u32) -> vec4<u32> {
    global0 = array<Struct_3, 14>();
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(583f, -1021f, false)) + _wgslsmith_div_f32(-780f, 318f))) <= -273f, ~global1.xy);
    var var_1 = u_input.a.x;
    var var_2 = _wgslsmith_f_op_f32(min(-265f, 1347f));
    var_0 = Struct_1(true, _wgslsmith_add_vec2_u32(_wgslsmith_mult_vec2_u32(_wgslsmith_mod_vec2_u32(~vec2<u32>(arg_1, 0u), _wgslsmith_add_vec2_u32(var_0.b, vec2<u32>(1u, 33252u))), var_0.b), vec2<u32>(abs(0u), ~54521u)));
    return firstLeadingBit(~vec4<u32>(75217u, countOneBits(29476u), countOneBits(u_input.a.x), countOneBits(var_0.b.x))) << (~(~(~firstTrailingBit(vec4<u32>(10238u, 1u, 4294967295u, u_input.a.x)))) % vec4<u32>(32u));
}

fn func_2(arg_0: vec4<i32>, arg_1: vec3<u32>) -> vec3<u32> {
    global1 = reverseBits(firstTrailingBit(_wgslsmith_mult_vec4_u32(~vec4<u32>(4294967295u, 0u, 75400u, arg_1.x) | (vec4<u32>(49315u, u_input.a.x, global1.x, arg_1.x) & vec4<u32>(u_input.a.x, 0u, 30106u, global1.x)), ~(~vec4<u32>(50925u, 7733u, global1.x, 4294967295u)))));
    global1 = max(firstLeadingBit(vec4<u32>(1u, 18576u, ~31392u, global1.x)), ~vec4<u32>(arg_1.x, arg_1.x, 0u, _wgslsmith_mult_u32(u_input.a.x, 1u)));
    global1 = _wgslsmith_div_vec4_u32(~(vec4<u32>(arg_1.x, 45981u, global1.x, global1.x) << (vec4<u32>(arg_1.x, 4294967295u, 0u, 1u) % vec4<u32>(32u))), ~vec4<u32>(32602u, 12668u, 0u, ~0u)) << (func_3(54960u, max(50326u, u_input.a.x)) % vec4<u32>(32u));
    let var_0 = arg_0.xw;
    var var_1 = min(1i, -35543i);
    return min(~(~global1.xwx), vec3<u32>(~(~4294967295u), func_3(0u, ~84400u).x, global1.x) & firstTrailingBit(_wgslsmith_mod_vec3_u32(arg_1, vec3<u32>(72791u, 40035u, u_input.a.x)) | vec3<u32>(1u, 1u, 1u)));
}

fn func_1(arg_0: bool) -> vec3<i32> {
    var var_0 = (vec3<u32>(11525u, ~(~global1.x), _wgslsmith_dot_vec4_u32(vec4<u32>(21139u, 54364u, 70159u, u_input.a.x), vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, 73895u)) | (u_input.a.x << (u_input.a.x % 32u))) >> (_wgslsmith_mod_vec3_u32(global1.xzy, vec3<u32>(_wgslsmith_mod_u32(24572u, global1.x), 0u & u_input.a.x, ~44416u)) % vec3<u32>(32u))) >> (func_2(vec4<i32>(-1i, _wgslsmith_mod_i32(u_input.b >> (global1.x % 32u), -u_input.b), abs(~u_input.b), -1i), global1.xxy) % vec3<u32>(32u));
    global0 = array<Struct_3, 14>();
    var var_1 = -(~(~_wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b, 0i, u_input.b, u_input.b), vec4<i32>(12547i, u_input.b, 1i, 2147483647i)), abs(vec4<i32>(-70250i, 26930i, -34112i, -3392i)))));
    let var_2 = Struct_1(arg_0, select(global1.yx, ~max(~vec2<u32>(4294967295u, 1u), vec2<u32>(8047u, var_0.x)), !arg_0));
    let var_3 = _wgslsmith_mult_vec3_i32(~((_wgslsmith_div_vec3_i32(vec3<i32>(var_1.x, 2147483647i, u_input.b), vec3<i32>(-1i, -2147483647i, var_1.x)) << (global1.ywx % vec3<u32>(32u))) << (global1.xyz % vec3<u32>(32u))), select(~var_1.xwx, vec3<i32>(-2147483647i, _wgslsmith_div_i32(2147483647i, i32(-1i) * -36957i), ~_wgslsmith_sub_i32(u_input.b, u_input.b)), var_2.a));
    return -var_3;
}

fn func_4(arg_0: f32, arg_1: vec3<u32>, arg_2: i32, arg_3: vec3<i32>) -> Struct_3 {
    global0 = array<Struct_3, 14>();
    var var_0 = ~vec4<u32>(max(global1.x, max(arg_1.x, global1.x)), arg_1.x, arg_1.x, arg_1.x);
    let var_1 = Struct_4(Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, -2375f, -127f, arg_0))), Struct_1(false, vec2<u32>(global1.x, 43014u))), Struct_3(Struct_2(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, 867f, 1088f, 1000f)))), Struct_1(true, ~vec2<u32>(var_0.x, 2698u))), _wgslsmith_sub_vec3_i32(-firstLeadingBit(arg_3), ~arg_3 & vec3<i32>(2147483647i, u_input.b, 1i)), global1.yz, ~arg_3, Struct_1(true, _wgslsmith_div_vec2_u32(~vec2<u32>(u_input.a.x, arg_1.x), global1.zx ^ vec2<u32>(global1.x, global1.x)))), Struct_2(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_0, -1000f, arg_0, _wgslsmith_f_op_f32(-arg_0)))), Struct_1(true, u_input.a)), global0[_wgslsmith_index_u32(~arg_1.x, 14u)], Struct_1(all(vec4<bool>(true, true, true, true)), vec2<u32>(~_wgslsmith_mod_u32(9646u, global1.x), 40467u)));
    let var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(var_1.a.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-183f, 1420f, -120f, arg_0))) * _wgslsmith_f_op_vec4_f32(-var_1.c.a))))), Struct_1(true, _wgslsmith_clamp_vec2_u32(~abs(vec2<u32>(22110u, 1u)), func_2(firstLeadingBit(vec4<i32>(arg_2, arg_3.x, 0i, 1i)), arg_1).yy, ~(~vec2<u32>(arg_1.x, var_1.b.e.b.x)))));
    let var_3 = var_1;
    return global0[_wgslsmith_index_u32(abs(14825u), 14u)];
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_3, 14>();
    global0 = array<Struct_3, 14>();
    var var_0 = func_4(-118f, ~global1.wzx >> (~(~vec3<u32>(global1.x, 1u, 26708u)) % vec3<u32>(32u)), u_input.b, ~abs(_wgslsmith_sub_vec3_i32(reverseBits(vec3<i32>(2147483647i, -1i, u_input.b)), func_1(true))));
    var var_1 = func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.a.a.x, -495f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.a.x) + _wgslsmith_f_op_f32(-1141f + var_0.a.a.x)), true))), ~global1.wxz, -u_input.b, ~min(var_0.d, ~(-var_0.b)));
    var var_2 = !(var_0.a.b.a != any(vec3<bool>(any(vec4<bool>(false, true, true, false)), false, var_1.e.a)));
    var var_3 = select(!vec3<bool>(!var_1.a.b.a, var_1.e.a & all(vec2<bool>(false, false)), func_4(_wgslsmith_f_op_f32(-1397f - var_0.a.a.x), global1.wzx, var_0.d.x, var_1.b).a.b.a), vec3<bool>(all(select(select(vec3<bool>(var_1.e.a, var_1.a.b.a, var_1.a.b.a), vec3<bool>(var_0.a.b.a, var_1.a.b.a, var_0.e.a), var_0.e.a), !vec3<bool>(var_0.a.b.a, var_1.e.a, true), vec3<bool>(false, true, true))), true && (false & var_0.a.b.a), all(!(!vec4<bool>(var_1.a.b.a, var_0.e.a, false, var_1.e.a)))), select(!vec3<bool>(var_1.e.a && false, var_1.e.b.x >= 4294967295u, !var_0.a.b.a), !(!(!vec3<bool>(var_0.e.a, var_0.a.b.a, false))), (_wgslsmith_add_i32(-1i, var_1.b.x) > (i32(-1i) * -2147483647i)) & !(!var_0.a.b.a)));
    var var_4 = var_1.a.a;
    let var_5 = _wgslsmith_mod_u32(func_2(_wgslsmith_add_vec4_i32(_wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b, 1632i, var_1.b.x, 13412i), vec4<i32>(u_input.b, u_input.b, 2147483647i, var_1.d.x)), countOneBits(vec4<i32>(u_input.b, -1i, -2147483647i, -1i))), vec4<i32>(min(var_1.d.x, u_input.b), var_1.b.x, -43437i, -10283i)), _wgslsmith_sub_vec3_u32(reverseBits(~global1.wzw), global1.yzx)).x, countOneBits(func_3(func_3(0u, global1.x).x, 1u).x << (abs(_wgslsmith_sub_u32(61153u, global1.x)) % 32u)));
    var var_6 = var_0.a;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(~(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, -8842i, -49578i, u_input.b), vec4<i32>(u_input.b, 1i, u_input.b, var_1.d.x)) >> ((u_input.a.x ^ 25098u) % 32u)), 1i), var_4.x, _wgslsmith_clamp_vec3_i32(var_1.d, var_1.d, _wgslsmith_mod_vec3_i32(var_0.b, _wgslsmith_mult_vec3_i32(~vec3<i32>(var_1.b.x, -44057i, 1i), var_0.d))), 1u);
}

